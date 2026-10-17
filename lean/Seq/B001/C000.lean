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
import Seq.B000.C033
import Seq.B000.C034

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A000038.P13734959004655594922

`2*A000007(n)`
-/

namespace A000038.P13734959004655594922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

end

end A000038.P13734959004655594922

noncomputable section

/-- A000038: Twice A000007.

Offset 0, canonical program `A000038.P13734959004655594922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038 (n : ℕ) : ℤ :=
  A000038.P13734959004655594922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000120.P2816527436160941581

`2*n-A005187(n)`
-/

namespace A000120.P2816527436160941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

end

end A000120.P2816527436160941581

noncomputable section

/-- A000120: Ones-counting sequence: number of 1's in binary expansion of n (or the binary weight of n).

Offset 0, canonical program `A000120.P2816527436160941581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000120 (n : ℕ) : ℤ :=
  A000120.P2816527436160941581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000168.P4170136352937727920

`2*3^n*A000108(n)/(n+2)`
-/

namespace A000168.P4170136352937727920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 3 ^ n : ℤ) * A000108 n : ℚ) / (n + 2 : ℚ)

end

end A000168.P4170136352937727920

noncomputable section

/-- A000168: a(n) = 2*3^n*(2*n)!/(n!*(n+2)!).

Offset 0, canonical program `A000168.P4170136352937727920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000168.P4170136352937727920.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000245.P15461013057778681831

`A000108(n+1)-A000108(n)`
-/

namespace A000245.P15461013057778681831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A000108 n

end

end A000245.P15461013057778681831

noncomputable section

/-- A000245: a(n) = 3*(2*n)!/((n+2)!*(n-1)!).

Offset 0, canonical program `A000245.P15461013057778681831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245 (n : ℕ) : ℤ :=
  A000245.P15461013057778681831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000253.P11295470622941771377

`A000079(n+2)-A005251(n+5)`
-/

namespace A000253.P11295470622941771377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A005251 (n + 5)

end

end A000253.P11295470622941771377

noncomputable section

/-- A000253: a(n) = 2*a(n-1) - a(n-2) + a(n-3) + 2^(n-1).

Offset 0, canonical program `A000253.P11295470622941771377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253 (n : ℕ) : ℤ :=
  A000253.P11295470622941771377.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000346.P13453431485271774812

`A045621(2*n+1)`
-/

namespace A000346.P13453431485271774812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 1)

end

end A000346.P13453431485271774812

noncomputable section

/-- A000346: a(n) = 2^(2*n+1) - binomial(2*n+1, n+1).

Offset 0, canonical program `A000346.P13453431485271774812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000346 (n : ℕ) : ℤ :=
  A000346.P13453431485271774812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000537.P7887993002585723883

`6*A000332(n+2)+A000217(n)`
-/

namespace A000537.P7887993002585723883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000332 (n + 2) + A000217 n

end

end A000537.P7887993002585723883

noncomputable section

/-- A000537: Sum of first n cubes; or n-th triangular number squared.

Offset 0, canonical program `A000537.P7887993002585723883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537 (n : ℕ) : ℤ :=
  A000537.P7887993002585723883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000588.P2240156739823594693

`A000108(n+3)-5*A000108(n+2)+6*A000108(n+1)-A000108(n)`
-/

namespace A000588.P2240156739823594693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) - 5 * A000108 (n + 2) + 6 * A000108 (n + 1) - A000108 n

end

end A000588.P2240156739823594693

noncomputable section

/-- A000588: a(n) = 7*binomial(2n,n-3)/(n+4).

Offset 0, canonical program `A000588.P2240156739823594693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588 (n : ℕ) : ℤ :=
  A000588.P2240156739823594693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000891.P10731481860013471602

`A005408(n)*A000108(n)²`
-/

namespace A000891.P10731481860013471602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A000108 n ^ 2

end

end A000891.P10731481860013471602

noncomputable section

/-- A000891: a(n) = (2*n)!*(2*n+1)! / (n! * (n+1)!)^2.

Offset 0, canonical program `A000891.P10731481860013471602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891 (n : ℕ) : ℤ :=
  A000891.P10731481860013471602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000900.P10035068055957689983

`(A000085(n)-A000898(floor(n/2)))/2`
-/

namespace A000900.P10035068055957689983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n - A000898 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A000900.P10035068055957689983

noncomputable section

/-- A000900: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

Offset 0, canonical program `A000900.P10035068055957689983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000900.P10035068055957689983.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000914.P446365929464198224

`3*A000332(n+3)-A000292(n)`
-/

namespace A000914.P446365929464198224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) - A000292 n

end

end A000914.P446365929464198224

noncomputable section

/-- A000914: Stirling numbers of the first kind: s(n+2, n).

Offset 0, canonical program `A000914.P446365929464198224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914 (n : ℕ) : ℤ :=
  A000914.P446365929464198224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000984.P17393449527703609683

`(n+1)*A000108(n)`
-/

namespace A000984.P17393449527703609683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n

end

end A000984.P17393449527703609683

noncomputable section

/-- A000984: Central binomial coefficients: binomial(2*n,n) = (2*n)!/(n!)^2.

Offset 0, canonical program `A000984.P17393449527703609683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000984 (n : ℕ) : ℤ :=
  A000984.P17393449527703609683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001082.P7989071033920817948

`ceil(n/2)²+A046092(floor(n/2))`
-/

namespace A001082.P7989071033920817948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ 2 + A046092 ⌊(n : ℚ) / 2⌋.toNat

end

end A001082.P7989071033920817948

noncomputable section

/-- A001082: Generalized octagonal numbers: k*(3*k-2), k=0, +- 1, +- 2, +-3, ...

Offset 1, canonical program `A001082.P7989071033920817948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001082 (n : ℕ) : ℤ :=
  A001082.P7989071033920817948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001246.P6480413615949402633

`A000108(n)²`
-/

namespace A001246.P6480413615949402633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2

end

end A001246.P6480413615949402633

noncomputable section

/-- A001246: Squares of Catalan numbers.

Offset 0, canonical program `A001246.P6480413615949402633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246 (n : ℕ) : ℤ :=
  A001246.P6480413615949402633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001249.P11162257440794431982

`A000292(n+1)²`
-/

namespace A001249.P11162257440794431982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ 2

end

end A001249.P11162257440794431982

noncomputable section

/-- A001249: Squares of tetrahedral numbers: a(n) = binomial(n+3,n)^2.

Offset 0, canonical program `A001249.P11162257440794431982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001249 (n : ℕ) : ℤ :=
  A001249.P11162257440794431982.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001478.P6780145189907460181

`-A000027(n+1)`
-/

namespace A001478.P6780145189907460181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000027 (n + 1)

end

end A001478.P6780145189907460181

noncomputable section

/-- A001478: The negative integers.

Offset 1, canonical program `A001478.P6780145189907460181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001478 (n : ℕ) : ℤ :=
  A001478.P6780145189907460181.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001555.P13748076003785863365

`A001554(n)+A001018(n)`
-/

namespace A001555.P13748076003785863365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001554 n + A001018 n

end

end A001555.P13748076003785863365

noncomputable section

/-- A001555: a(n) = 1^n + 2^n + ... + 8^n.

Offset 0, canonical program `A001555.P13748076003785863365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001555 (n : ℕ) : ℤ :=
  A001555.P13748076003785863365.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001558.P12122410934121705503

`A000957(n+4)-A000957(n+3)-A000957(n+2)`
-/

namespace A001558.P12122410934121705503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 4) - A000957 (n + 3) - A000957 (n + 2)

end

end A001558.P12122410934121705503

noncomputable section

/-- A001558: Number of hill-free Dyck paths of semilength n+3 and having length of first descent equal to 1 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A001558.P12122410934121705503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558 (n : ℕ) : ℤ :=
  A001558.P12122410934121705503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001699.P162027264242017118

`A003095(n+1)-A003095(n)`
-/

namespace A001699.P162027264242017118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003095 (n + 1) - A003095 n

end

end A001699.P162027264242017118

noncomputable section

/-- A001699: Number of binary trees of height n; or products (ways to insert parentheses) of height n when multiplication is non-commutative and non-associative.

Offset 0, canonical program `A001699.P162027264242017118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001699 (n : ℕ) : ℤ :=
  A001699.P162027264242017118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001700.P3870841469958150543

`(2*n+1)*A000108(n)`
-/

namespace A001700.P3870841469958150543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n

end

end A001700.P3870841469958150543

noncomputable section

/-- A001700: a(n) = binomial(2*n+1, n+1): number of ways to put n+1 indistinguishable balls into n+1 distinguishable boxes = number of (n+1)-st degree monomials in n+1 variables = number of monotone maps from 1..n+1 to 1..n+1.

Offset 0, canonical program `A001700.P3870841469958150543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001700 (n : ℕ) : ℤ :=
  A001700.P3870841469958150543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001712.P8035794898765851406

`A001711(n)+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001712.P8035794898765851406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001711 n + (n + 4 : ℤ) * a (n - 1)

end

end A001712.P8035794898765851406

noncomputable section

/-- A001712: Generalized Stirling numbers, [n+5,5]_3.

Offset 0, canonical program `A001712.P8035794898765851406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001712 (n : ℕ) : ℤ :=
  A001712.P8035794898765851406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001717.P2537083117907525314

`A001716(n)+(n+5)*a(n-1)` with `a(0)=1`
-/

namespace A001717.P2537083117907525314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001716 n + (n + 5 : ℤ) * a (n - 1)

end

end A001717.P2537083117907525314

noncomputable section

/-- A001717: Generalized Stirling numbers, [n+6,6]_4.

Offset 0, canonical program `A001717.P2537083117907525314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001717 (n : ℕ) : ℤ :=
  A001717.P2537083117907525314.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001761.P10294266062950325525

`n!*A000108(n)`
-/

namespace A001761.P10294266062950325525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000108 n

end

end A001761.P10294266062950325525

noncomputable section

/-- A001761: a(n) = (2*n)!/(n+1)!.

Offset 0, canonical program `A001761.P10294266062950325525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001761 (n : ℕ) : ℤ :=
  A001761.P10294266062950325525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001788.P5561357173935824427

`2*a(n-1)+A001787(n)` with `a(0)=0`
-/

namespace A001788.P5561357173935824427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A001787 n

end

end A001788.P5561357173935824427

noncomputable section

/-- A001788: a(n) = n*(n+1)*2^(n-2).

Offset 0, canonical program `A001788.P5561357173935824427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788 (n : ℕ) : ℤ :=
  A001788.P5561357173935824427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001791.P9713013280951293137

`n*A000108(n)`
-/

namespace A001791.P9713013280951293137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n

end

end A001791.P9713013280951293137

noncomputable section

/-- A001791: a(n) = binomial coefficient C(2n, n-1).

Offset 0, canonical program `A001791.P9713013280951293137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791 (n : ℕ) : ℤ :=
  A001791.P9713013280951293137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001819.P2792134783126764898

`a(n-1)*n²+A001044(n-1)` with `a(0)=0`
-/

namespace A001819.P2792134783126764898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * (n ^ 2 : ℤ) + A001044 (n - 1)

end

end A001819.P2792134783126764898

noncomputable section

/-- A001819: Central factorial numbers: second right-hand column of triangle A008955.

Offset 0, canonical program `A001819.P2792134783126764898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001819 (n : ℕ) : ℤ :=
  A001819.P2792134783126764898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001923.P5884315793935045378

`a(n-1)+A000312(n)` with `a(0)=0`
-/

namespace A001923.P5884315793935045378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000312 n

end

end A001923.P5884315793935045378

noncomputable section

/-- A001923: a(n) = Sum_{k=1..n} k^k.

Offset 0, canonical program `A001923.P5884315793935045378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001923 (n : ℕ) : ℤ :=
  A001923.P5884315793935045378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001951.P16235440681377643956

`A000196(A001105(n))`
-/

namespace A001951.P16235440681377643956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001105 n).toNat

end

end A001951.P16235440681377643956

noncomputable section

/-- A001951: A Beatty sequence: a(n) = floor(n*sqrt(2)).

Offset 0, canonical program `A001951.P16235440681377643956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001951 (n : ℕ) : ℤ :=
  A001951.P16235440681377643956.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001965.P8161936400494253645

`A005206(2*n)`
-/

namespace A001965.P8161936400494253645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n)

end

end A001965.P8161936400494253645

noncomputable section

/-- A001965: u-pile count for the 4-Wythoff game with i=2.

Offset 0, canonical program `A001965.P8161936400494253645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001965 (n : ℕ) : ℤ :=
  A001965.P8161936400494253645.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002026.P17776616079043433200

`A001006(n+1)-A001006(n)`
-/

namespace A002026.P17776616079043433200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - A001006 n

end

end A002026.P17776616079043433200

noncomputable section

/-- A002026: Generalized ballot numbers (first differences of Motzkin numbers).

Offset 0, canonical program `A002026.P17776616079043433200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002026 (n : ℕ) : ℤ :=
  A002026.P17776616079043433200.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002057.P1618163800040007133

`2*(n+1)*A000108(n+2)/(n+4)`
-/

namespace A002057.P1618163800040007133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1 : ℤ) * A000108 (n + 2)) : ℚ) / (n + 4 : ℚ)

end

end A002057.P1618163800040007133

noncomputable section

/-- A002057: Fourth convolution of Catalan numbers: a(n) = 4*binomial(2*n+3,n)/(n+4).

Offset 0, canonical program `A002057.P1618163800040007133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002057.P1618163800040007133.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002299.P16050502060262399824

`A000389(2*n+5)`
-/

namespace A002299.P16050502060262399824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 5)

end

end A002299.P16050502060262399824

noncomputable section

/-- A002299: Binomial coefficients C(2*n+5,5).

Offset 0, canonical program `A002299.P16050502060262399824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002299 (n : ℕ) : ℤ :=
  A002299.P16050502060262399824.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002477.P14719879684330245236

`A000042(n+1)²`
-/

namespace A002477.P14719879684330245236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) ^ 2

end

end A002477.P14719879684330245236

noncomputable section

/-- A002477: Wonderful Demlo numbers: a(n) = ((10^n - 1)/9)^2.

Offset 1, canonical program `A002477.P14719879684330245236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002477 (n : ℕ) : ℤ :=
  A002477.P14719879684330245236.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002662.P6766582320142448846

`a(n-1)+1+A000247(n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A002662.P6766582320142448846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) + (1 + A000247 (n - 1))

end

end A002662.P6766582320142448846

noncomputable section

/-- A002662: a(n) = 2^n - 1 - n*(n+1)/2.

Offset 0, canonical program `A002662.P6766582320142448846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002662 (n : ℕ) : ℤ :=
  A002662.P6766582320142448846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002663.P5367389771272728704

`2^n-A000125(n)`
-/

namespace A002663.P5367389771272728704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000125 n

end

end A002663.P5367389771272728704

noncomputable section

/-- A002663: a(n) = 2^n - C(n,0) - C(n,1) - C(n,2) - C(n,3).

Offset 0, canonical program `A002663.P5367389771272728704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002663 (n : ℕ) : ℤ :=
  A002663.P5367389771272728704.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002720.P9188981106848597072

`A000262(n+1)-n*A000262(n)`
-/

namespace A002720.P9188981106848597072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) - (n : ℤ) * A000262 n

end

end A002720.P9188981106848597072

noncomputable section

/-- A002720: Number of partial permutations of an n-set; number of n X n binary matrices with at most one 1 in each row and column.

Offset 0, canonical program `A002720.P9188981106848597072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002720 (n : ℕ) : ℤ :=
  A002720.P9188981106848597072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002802.P16841612747706247386

`A000911(n)/6`
-/

namespace A002802.P16841612747706247386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000911 n : ℚ) / 6

end

end A002802.P16841612747706247386

noncomputable section

/-- A002802: a(n) = (2*n+3)!/(6*n!*(n+1)!).

Offset 0, canonical program `A002802.P16841612747706247386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002802.P16841612747706247386.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003622.P2433366108041755789

`a(n-1)+1+A001468(n)` with `a(0)=1`
-/

namespace A003622.P2433366108041755789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + A001468 n)

end

end A003622.P2433366108041755789

noncomputable section

/-- A003622: The Wythoff compound sequence AA: a(n) = floor(n*phi^2) - 1, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A003622.P2433366108041755789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622 (n : ℕ) : ℤ :=
  A003622.P2433366108041755789.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003955.P7618811074422816313

`(2*n+4)*A001818(n+1)`
-/

namespace A003955.P7618811074422816313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 4 : ℤ) * A001818 (n + 1)

end

end A003955.P7618811074422816313

noncomputable section

/-- A003955: a(n) = (2*n + 4) * (1*3*5*...*(2*n+1))^2.

Offset 0, canonical program `A003955.P7618811074422816313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003955 (n : ℕ) : ℤ :=
  A003955.P7618811074422816313.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004134.P15858984416175637375

`A005187(n)+n`
-/

namespace A004134.P15858984416175637375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

end

end A004134.P15858984416175637375

noncomputable section

/-- A004134: Denominators in expansion of (1-x)^{-1/4} are 2^a(n).

Offset 0, canonical program `A004134.P15858984416175637375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004134 (n : ℕ) : ℤ :=
  A004134.P15858984416175637375.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004146.P7346826017881566823

`A000032(2*n)-2`
-/

namespace A004146.P7346826017881566823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - 2

end

end A004146.P7346826017881566823

noncomputable section

/-- A004146: Alternate Lucas numbers - 2.

Offset 0, canonical program `A004146.P7346826017881566823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004146 (n : ℕ) : ℤ :=
  A004146.P7346826017881566823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004277.P16255821370285667660

`A000007(n)+A005843(n)`
-/

namespace A004277.P16255821370285667660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A005843 n

end

end A004277.P16255821370285667660

noncomputable section

/-- A004277: 1 together with positive even numbers.

Offset 0, canonical program `A004277.P16255821370285667660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277 (n : ℕ) : ℤ :=
  A004277.P16255821370285667660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004282.P3282073839208396829

`A000217(n+1)*A000292(n)`
-/

namespace A004282.P3282073839208396829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A000292 n

end

end A004282.P3282073839208396829

noncomputable section

/-- A004282: a(n) = n*(n+1)^2*(n+2)^2/12.

Offset 0, canonical program `A004282.P3282073839208396829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004282 (n : ℕ) : ℤ :=
  A004282.P3282073839208396829.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004444.P2674054276110161385

`A004443(A004442(n))`
-/

namespace A004444.P2674054276110161385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004442 n).toNat

end

end A004444.P2674054276110161385

noncomputable section

/-- A004444: Nimsum n + 3.

Offset 0, canonical program `A004444.P2674054276110161385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004444 (n : ℕ) : ℤ :=
  A004444.P2674054276110161385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004736.P10337537277358081527

`A000217(A002024(n+1))-n`
-/

namespace A004736.P10337537277358081527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat - (n : ℤ)

end

end A004736.P10337537277358081527

noncomputable section

/-- A004736: Triangle read by rows: row n lists the first n positive integers in decreasing order.

Offset 1, canonical program `A004736.P10337537277358081527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736 (n : ℕ) : ℤ :=
  A004736.P10337537277358081527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004958.P13138658034996732801

`A004956(2*n)+n`
-/

namespace A004958.P13138658034996732801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (2 * n) + (n : ℤ)

end

end A004958.P13138658034996732801

noncomputable section

/-- A004958: a(n) = ceiling(n*phi^3), where phi is the golden ratio, A001622.

Offset 0, canonical program `A004958.P13138658034996732801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004958 (n : ℕ) : ℤ :=
  A004958.P13138658034996732801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004959.P8440085141902266755

`A004956(3*n)+2*n`
-/

namespace A004959.P8440085141902266755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (3 * n) + (2 * n : ℤ)

end

end A004959.P8440085141902266755

noncomputable section

/-- A004959: a(n) = ceiling(n*phi^4), where phi is the golden ratio, A001622.

Offset 0, canonical program `A004959.P8440085141902266755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004959 (n : ℕ) : ℤ :=
  A004959.P8440085141902266755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005043.P11838040305800302990

`A001006(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A005043.P11838040305800302990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 (n - 1) - a (n - 1)

end

end A005043.P11838040305800302990

noncomputable section

/-- A005043: Riordan numbers: a(n) = (n-1)*(2*a(n-1) + 3*a(n-2))/(n+1).

Offset 0, canonical program `A005043.P11838040305800302990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043 (n : ℕ) : ℤ :=
  A005043.P11838040305800302990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005159.P15125163162454949925

`A000244(n)*A000108(n)`
-/

namespace A005159.P15125163162454949925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000108 n

end

end A005159.P15125163162454949925

noncomputable section

/-- A005159: a(n) = 3^n*Catalan(n).

Offset 0, canonical program `A005159.P15125163162454949925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005159 (n : ℕ) : ℤ :=
  A005159.P15125163162454949925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005204.P1941875715060736425

`2^A000930(n-4)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A005204.P1941875715060736425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  (2 : ℚ) ^ (A000930 (n - 4) : ℤ) * a (n - 1) + a (n - 3)

end

end A005204.P1941875715060736425

noncomputable section

/-- A005204: Coding a recurrence.

Offset 0, canonical program `A005204.P1941875715060736425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005204.P1941875715060736425.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005248.P3255906601217542815

`A000032(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005248.P3255906601217542815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

end

end A005248.P3255906601217542815

noncomputable section

/-- A005248: Bisection of Lucas numbers: a(n) = L(2*n) = A000032(2*n).

Offset 0, canonical program `A005248.P3255906601217542815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005248 (n : ℕ) : ℤ :=
  A005248.P3255906601217542815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005460.P5868538651287863130

`n!*A001296(n+1)`
-/

namespace A005460.P5868538651287863130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001296 (n + 1)

end

end A005460.P5868538651287863130

noncomputable section

/-- A005460: a(n) = (3*n+4)*(n+3)!/24.

Offset 0, canonical program `A005460.P5868538651287863130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005460 (n : ℕ) : ℤ :=
  A005460.P5868538651287863130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005558.P18386753089207024967

`A000108(floor((n+1)/2))*A000108(floor(n/2))*(2*floor(n/2)+1)`
-/

namespace A005558.P18386753089207024967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat * A000108 ⌊(n : ℚ) / 2⌋.toNat * (2 * ⌊(n : ℚ) / 2⌋ + 1)

end

end A005558.P18386753089207024967

noncomputable section

/-- A005558: a(n) is the number of n-step walks on square lattice such that 0 <= y <= x at each step.

Offset 0, canonical program `A005558.P18386753089207024967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558 (n : ℕ) : ℤ :=
  A005558.P18386753089207024967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005568.P12626986940016009255

`A000108(n)*A000108(n+1)`
-/

namespace A005568.P12626986940016009255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000108 (n + 1)

end

end A005568.P12626986940016009255

noncomputable section

/-- A005568: Product of two successive Catalan numbers C(n)*C(n+1).

Offset 0, canonical program `A005568.P12626986940016009255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568 (n : ℕ) : ℤ :=
  A005568.P12626986940016009255.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005573.P16196864534000188363

`6*a(n-1)-A005572(n-1)` with `a(0)=1`
-/

namespace A005573.P16196864534000188363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A005572 (n - 1)

end

end A005573.P16196864534000188363

noncomputable section

/-- A005573: Number of walks on cubic lattice (starting from origin and not going below xy plane).

Offset 0, canonical program `A005573.P16196864534000188363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005573 (n : ℕ) : ℤ :=
  A005573.P16196864534000188363.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005614.P5927283876123815402

`A005206(n+1)-A005206(n)`
-/

namespace A005614.P5927283876123815402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1) - A005206 n

end

end A005614.P5927283876123815402

noncomputable section

/-- A005614: The binary complement of the infinite Fibonacci word A003849. Start with 1, apply 0->1, 1->10, iterate, take limit.

Offset 0, canonical program `A005614.P5927283876123815402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005614 (n : ℕ) : ℤ :=
  A005614.P5927283876123815402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005809.P5005780551759923958

`(2*n+1)*A001764(n)`
-/

namespace A005809.P5005780551759923958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001764 n

end

end A005809.P5005780551759923958

noncomputable section

/-- A005809: a(n) = binomial(3n,n).

Offset 0, canonical program `A005809.P5005780551759923958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005809 (n : ℕ) : ℤ :=
  A005809.P5005780551759923958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006095.P3440848967568071249

`a(n-1)+A000217(A000225(n-1))` with `a(0)=0`
-/

namespace A006095.P3440848967568071249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000217 (A000225 (n - 1)).toNat

end

end A006095.P3440848967568071249

noncomputable section

/-- A006095: Gaussian binomial coefficient [n, 2] for q = 2.

Offset 0, canonical program `A006095.P3440848967568071249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095 (n : ℕ) : ℤ :=
  A006095.P3440848967568071249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006261.P4266430943369696028

`a(n-1)+A000127(n)` with `a(0)=1`
-/

namespace A006261.P4266430943369696028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000127 n

end

end A006261.P4266430943369696028

noncomputable section

/-- A006261: a(n) = Sum_{k=0..5} binomial(n,k).

Offset 0, canonical program `A006261.P4266430943369696028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261 (n : ℕ) : ℤ :=
  A006261.P4266430943369696028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006472.P13638201114310649646

`a(n-1)*A000217(n)` with `a(0)=1`
-/

namespace A006472.P13638201114310649646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000217 n

end

end A006472.P13638201114310649646

noncomputable section

/-- A006472: a(n) = n!*(n-1)!/2^(n-1).

Offset 1, canonical program `A006472.P13638201114310649646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006472 (n : ℕ) : ℤ :=
  A006472.P13638201114310649646.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006646.P8169105596413989403

`2^(n-3)*(A002203(n)-2)`
-/

namespace A006646.P8169105596413989403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (A002203 n - 2 : ℚ)

end

end A006646.P8169105596413989403

noncomputable section

/-- A006646: Exponential self-convolution of Pell numbers.

Offset 0, canonical program `A006646.P8169105596413989403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006646.P8169105596413989403.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006668.P5384466463075513061

`2^(n-4)*(A002203(n)-2)`
-/

namespace A006668.P5384466463075513061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (A002203 n - 2 : ℚ)

end

end A006668.P5384466463075513061

noncomputable section

/-- A006668: Exponential self-convolution of Pell numbers (divided by 2).

Offset 0, canonical program `A006668.P5384466463075513061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006668.P5384466463075513061.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006894.P12103002077536023779

`A000124(a(n-1))` with `a(0)=1`
-/

namespace A006894.P12103002077536023779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000124 (a (n - 1)).toNat

end

end A006894.P12103002077536023779

noncomputable section

/-- A006894: Number of planted 3-trees of height < n.

Offset 1, canonical program `A006894.P12103002077536023779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006894 (n : ℕ) : ℤ :=
  A006894.P12103002077536023779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006999.P3401224636589051846

`A061419(n+1)-1`
-/

namespace A006999.P3401224636589051846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) - 1

end

end A006999.P3401224636589051846

noncomputable section

/-- A006999: Partitioning integers to avoid arithmetic progressions of length 3.

Offset 0, canonical program `A006999.P3401224636589051846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006999 (n : ℕ) : ℤ :=
  A006999.P3401224636589051846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007054.P7178060541691833380

`4*A000108(n)-A000108(n+1)`
-/

namespace A007054.P7178060541691833380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000108 n - A000108 (n + 1)

end

end A007054.P7178060541691833380

noncomputable section

/-- A007054: Super ballot numbers: 6(2n)!/(n!(n+2)!).

Offset 0, canonical program `A007054.P7178060541691833380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054 (n : ℕ) : ℤ :=
  A007054.P7178060541691833380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007123.P7395828226839827993

`(A000108(n)+A001405(n))/2`
-/

namespace A007123.P7395828226839827993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A001405 n : ℚ) / 2

end

end A007123.P7395828226839827993

noncomputable section

/-- A007123: Number of connected unit interval graphs with n nodes; also number of bracelets (turnover necklaces) with n black beads and n-1 white beads.

Offset 1, canonical program `A007123.P7395828226839827993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007123.P7395828226839827993.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007501.P14834799772468796310

`A006893(n+1)+1`
-/

namespace A007501.P14834799772468796310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006893 (n + 1) + 1

end

end A007501.P14834799772468796310

noncomputable section

/-- A007501: a(0) = 2; for n >= 0, a(n+1) = a(n)*(a(n)+1)/2.

Offset 0, canonical program `A007501.P14834799772468796310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007501 (n : ℕ) : ℤ :=
  A007501.P14834799772468796310.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007667.P14906312947735841670

`3*A006061(n+1)+2`
-/

namespace A007667.P14906312947735841670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006061 (n + 1) + 2

end

end A007667.P14906312947735841670

noncomputable section

/-- A007667: The sum of both two and three consecutive squares.

Offset 1, canonical program `A007667.P14906312947735841670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007667 (n : ℕ) : ℤ :=
  A007667.P14906312947735841670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008412.P13878766666542366952

`A005899(n)+A005899(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008412.P13878766666542366952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005899 n + A005899 (n - 1) + a (n - 1)

end

end A008412.P13878766666542366952

noncomputable section

/-- A008412: Coordination sequence for 4-dimensional cubic lattice (points on surface of 4-dimensional cross-polytope).

Offset 0, canonical program `A008412.P13878766666542366952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008412 (n : ℕ) : ℤ :=
  A008412.P13878766666542366952.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008438.P10724248590758397010

`A000203(2*n+1)`
-/

namespace A008438.P10724248590758397010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

end

end A008438.P10724248590758397010

noncomputable section

/-- A008438: Sum of divisors of 2*n + 1.

Offset 0, canonical program `A008438.P10724248590758397010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008438 (n : ℕ) : ℤ :=
  A008438.P10724248590758397010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008778.P5727098079324999072

`A000217(n)+A000292(n+1)`
-/

namespace A008778.P5727098079324999072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000292 (n + 1)

end

end A008778.P5727098079324999072

noncomputable section

/-- A008778: a(n) = (n+1)*(n^2 +8*n +6)/6. Number of n-dimensional partitions of 4. Number of terms in 4th derivative of a function composed with itself n times.

Offset 0, canonical program `A008778.P5727098079324999072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008778 (n : ℕ) : ℤ :=
  A008778.P5727098079324999072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008973.P5055514071689765304

`A000312(A000045(n))`
-/

namespace A008973.P5055514071689765304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000045 n).toNat

end

end A008973.P5055514071689765304

noncomputable section

/-- A008973: Fibonacci number F(n) to power F(n).

Offset 0, canonical program `A008973.P5055514071689765304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008973 (n : ℕ) : ℤ :=
  A008973.P5055514071689765304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009281.P16715583283193038702

`(-1)^n*A000387(n)+1`
-/

namespace A009281.P16715583283193038702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000387 n + 1

end

end A009281.P16715583283193038702

noncomputable section

/-- A009281: Expansion of e.g.f. exp(x)*cosh(log(1+x)).

Offset 0, canonical program `A009281.P16715583283193038702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281 (n : ℕ) : ℤ :=
  A009281.P16715583283193038702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009564.P3909783836343055829

`(-1)^n*A001813(2*n+1)/2`
-/

namespace A009564.P3909783836343055829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A001813 (2 * n + 1) : ℚ) / 2

end

end A009564.P3909783836343055829

noncomputable section

/-- A009564: E.g.f. sin(x^2)/2, coefficients of x^(4*n + 2).

Offset 0, canonical program `A009564.P3909783836343055829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009564.P3909783836343055829.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009759.P5002748756516098113

`A001652(n)-3`
-/

namespace A009759.P5002748756516098113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n - 3

end

end A009759.P5002748756516098113

noncomputable section

/-- A009759: Expansion of (3 - 21*x + 4*x^2)/((x-1)*(x^2 - 6*x + 1)).

Offset 0, canonical program `A009759.P5002748756516098113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009759 (n : ℕ) : ℤ :=
  A009759.P5002748756516098113.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010014.P9318243435609865965

`A005899(n)+A195322(n)`
-/

namespace A010014.P9318243435609865965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + A195322 n

end

end A010014.P9318243435609865965

noncomputable section

/-- A010014: a(0) = 1, a(n) = 24*n^2 + 2 for n>0.

Offset 0, canonical program `A010014.P9318243435609865965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010014 (n : ℕ) : ℤ :=
  A010014.P9318243435609865965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010021.P18321663100364544978

`A008527(2*n)`
-/

namespace A010021.P18321663100364544978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 (2 * n)

end

end A010021.P18321663100364544978

noncomputable section

/-- A010021: a(0) = 1, a(n) = 32*n^2 + 2 for n > 0.

Offset 0, canonical program `A010021.P18321663100364544978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010021 (n : ℕ) : ℤ :=
  A010021.P18321663100364544978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010022.P6815587963491131346

`A008253(4*n)`
-/

namespace A010022.P6815587963491131346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 (4 * n)

end

end A010022.P6815587963491131346

noncomputable section

/-- A010022: a(0) = 1, a(n) = 40*n^2 + 2 for n>0.

Offset 0, canonical program `A010022.P6815587963491131346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010022 (n : ℕ) : ℤ :=
  A010022.P6815587963491131346.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010054.P18347828677204923252

`A005369(2*n)`
-/

namespace A010054.P18347828677204923252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n)

end

end A010054.P18347828677204923252

noncomputable section

/-- A010054: a(n) = 1 if n is a triangular number, otherwise 0.

Offset 0, canonical program `A010054.P18347828677204923252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054 (n : ℕ) : ℤ :=
  A010054.P18347828677204923252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010696.P309287587077170374

`2*A010684(n)`
-/

namespace A010696.P309287587077170374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010684 n

end

end A010696.P309287587077170374

noncomputable section

/-- A010696: Periodic sequence: Repeat 2,6.

Offset 0, canonical program `A010696.P309287587077170374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696 (n : ℕ) : ℤ :=
  A010696.P309287587077170374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010707.P1168736346319049121

`3*A010684(n)`
-/

namespace A010707.P1168736346319049121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A010684 n

end

end A010707.P1168736346319049121

noncomputable section

/-- A010707: Period 2: repeat (3,9).

Offset 0, canonical program `A010707.P1168736346319049121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010707 (n : ℕ) : ℤ :=
  A010707.P1168736346319049121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010751.P13596492722488707234

`(-1)^A002024(n+1)*(A007590(A002024(n+1))-n)`
-/

namespace A010751.P13596492722488707234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002024 (n + 1) : ℤ) * (A007590 (A002024 (n + 1)).toNat - (n : ℤ) : ℚ)

end

end A010751.P13596492722488707234

noncomputable section

/-- A010751: Up once, down twice, up three times, down four times, ...

Offset 0, canonical program `A010751.P13596492722488707234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010751.P13596492722488707234.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010883.P6960251526923042269

`A010873(n)+1`
-/

namespace A010883.P6960251526923042269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n + 1

end

end A010883.P6960251526923042269

noncomputable section

/-- A010883: Simple periodic sequence: repeat 1,2,3,4.

Offset 0, canonical program `A010883.P6960251526923042269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010883 (n : ℕ) : ℤ :=
  A010883.P6960251526923042269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010887.P15804666830051058931

`A010877(n)+1`
-/

namespace A010887.P15804666830051058931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n + 1

end

end A010887.P15804666830051058931

noncomputable section

/-- A010887: Simple periodic sequence: repeat 1,2,3,4,5,6,7,8.

Offset 0, canonical program `A010887.P15804666830051058931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010887 (n : ℕ) : ℤ :=
  A010887.P15804666830051058931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011918.P1398384328682425928

`(A007655(n+3)-3*A007655(n+2)-1)/2`
-/

namespace A011918.P1398384328682425928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007655 (n + 3) - 3 * A007655 (n + 2) - 1 : ℚ) / 2

end

end A011918.P1398384328682425928

noncomputable section

/-- A011918: a(n) = A011916(n) + A011922(n) - 1.

Offset 1, canonical program `A011918.P1398384328682425928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011918 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A011918.P1398384328682425928.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011940.P12919393430422700789

`4*A011795(n)`
-/

namespace A011940.P12919393430422700789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011795 n

end

end A011940.P12919393430422700789

noncomputable section

/-- A011940: a(n) = floor(n*(n-1)*(n-2)*(n-3)/30).

Offset 0, canonical program `A011940.P12919393430422700789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011940 (n : ℕ) : ℤ :=
  A011940.P12919393430422700789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A012814.P11094650536221006162

`A000931(5*n+2)`
-/

namespace A012814.P11094650536221006162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n + 2)

end

end A012814.P11094650536221006162

noncomputable section

/-- A012814: Take every 5th term of Padovan sequence A000931, beginning with the third term.

Offset 0, canonical program `A012814.P11094650536221006162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A012814 (n : ℕ) : ℤ :=
  A012814.P11094650536221006162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A012814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013430.P909445180935276507

`A006228(n+1)-n*A006228(n)`
-/

namespace A013430.P909445180935276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006228 (n + 1) - (n : ℤ) * A006228 n

end

end A013430.P909445180935276507

noncomputable section

/-- A013430: Expansion of e.g.f. exp(arcsin(x)-arctanh(x)).

Offset 0, canonical program `A013430.P909445180935276507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013430 (n : ℕ) : ℤ :=
  A013430.P909445180935276507.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013915.P5526775988631183026

`n+A013655(n)`
-/

namespace A013915.P5526775988631183026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A013655 n

end

end A013915.P5526775988631183026

noncomputable section

/-- A013915: a(n) = F(n) + L(n) + n, where F(n) (A000045) and L(n) (A000204) are Fibonacci and Lucas numbers respectively.

Offset 0, canonical program `A013915.P5526775988631183026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013915 (n : ℕ) : ℤ :=
  A013915.P5526775988631183026.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A013989.P5298881847955433932

`A000085(n)*(n+1)`
-/

namespace A013989.P5298881847955433932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * (n + 1 : ℤ)

end

end A013989.P5298881847955433932

noncomputable section

/-- A013989: a(n) = (n+1)*(a(n-1)/n + a(n-2)), with a(0)=1, a(1)=2.

Offset 0, canonical program `A013989.P5298881847955433932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989 (n : ℕ) : ℤ :=
  A013989.P5298881847955433932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014138.P8012092781455815566

`A014137(n)-1`
-/

namespace A014138.P8012092781455815566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - 1

end

end A014138.P8012092781455815566

noncomputable section

/-- A014138: Partial sums of (Catalan numbers starting 1, 2, 5, ...).

Offset 0, canonical program `A014138.P8012092781455815566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138 (n : ℕ) : ℤ :=
  A014138.P8012092781455815566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014236.P17094772218880202125

`2*A007179(n)`
-/

namespace A014236.P17094772218880202125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007179 n

end

end A014236.P17094772218880202125

noncomputable section

/-- A014236: Expansion of g.f.: 2*x*(1-x)/((1-2*x)*(1-2*x^2)).

Offset 0, canonical program `A014236.P17094772218880202125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014236 (n : ℕ) : ℤ :=
  A014236.P17094772218880202125.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014283.P17219958316013531777

`A000045(n)-A000290(n)`
-/

namespace A014283.P17219958316013531777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000290 n

end

end A014283.P17219958316013531777

noncomputable section

/-- A014283: a(n) = Fibonacci(n) - n^2.

Offset 0, canonical program `A014283.P17219958316013531777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014283 (n : ℕ) : ℤ :=
  A014283.P17219958316013531777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014288.P13511112629114015342

`floor(A003422(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A014288.P13511112629114015342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003422 (n + 1) : ℚ) / 2⌋

end

end A014288.P13511112629114015342

noncomputable section

/-- A014288: a(n) = floor(Sum_{k=0..n} k!/2), or floor( A003422(n+1)/2 ).

Offset 0, canonical program `A014288.P13511112629114015342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014288 (n : ℕ) : ℤ :=
  A014288.P13511112629114015342.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014483.P4777612835017606028

`2^n*A000330(n+1)`
-/

namespace A014483.P4777612835017606028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000330 (n + 1)

end

end A014483.P4777612835017606028

noncomputable section

/-- A014483: Expansion of (1+2*x) / (1-2*x)^4.

Offset 0, canonical program `A014483.P4777612835017606028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014483 (n : ℕ) : ℤ :=
  A014483.P4777612835017606028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014495.P8648755420632744383

`A001405(n)-1`
-/

namespace A014495.P8648755420632744383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - 1

end

end A014495.P8648755420632744383

noncomputable section

/-- A014495: Central binomial coefficient - 1.

Offset 0, canonical program `A014495.P8648755420632744383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495 (n : ℕ) : ℤ :=
  A014495.P8648755420632744383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014616.P13328413878082500687

`A004116(n+1)+1`
-/

namespace A014616.P13328413878082500687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (n + 1) + 1

end

end A014616.P13328413878082500687

noncomputable section

/-- A014616: a(n) = solution to the postage stamp problem with 2 denominations and n stamps.

Offset 1, canonical program `A014616.P13328413878082500687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014616 (n : ℕ) : ℤ :=
  A014616.P13328413878082500687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014728.P2908315296679547555

`A014437(n)²`
-/

namespace A014728.P2908315296679547555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n ^ 2

end

end A014728.P2908315296679547555

noncomputable section

/-- A014728: Squares of odd Fibonacci numbers.

Offset 0, canonical program `A014728.P2908315296679547555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014728 (n : ℕ) : ℤ :=
  A014728.P2908315296679547555.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014729.P12363565627862594585

`A014445(n)²`
-/

namespace A014729.P12363565627862594585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n ^ 2

end

end A014729.P12363565627862594585

noncomputable section

/-- A014729: Squares of even Fibonacci numbers.

Offset 0, canonical program `A014729.P12363565627862594585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014729 (n : ℕ) : ℤ :=
  A014729.P12363565627862594585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014736.P16265389494604714146

`A014493(n+1)²`
-/

namespace A014736.P16265389494604714146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) ^ 2

end

end A014736.P16265389494604714146

noncomputable section

/-- A014736: Squares of odd triangular numbers.

Offset 0, canonical program `A014736.P16265389494604714146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014736 (n : ℕ) : ℤ :=
  A014736.P16265389494604714146.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014738.P8106903443389737204

`A014494(n+1)²`
-/

namespace A014738.P8106903443389737204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (n + 1) ^ 2

end

end A014738.P8106903443389737204

noncomputable section

/-- A014738: Squares of even triangular numbers.

Offset 0, canonical program `A014738.P8106903443389737204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014738 (n : ℕ) : ℤ :=
  A014738.P8106903443389737204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014769.P15242849491866263109

`A014632(n)²`
-/

namespace A014769.P15242849491866263109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n ^ 2

end

end A014769.P15242849491866263109

noncomputable section

/-- A014769: Squares of odd pentagonal numbers.

Offset 0, canonical program `A014769.P15242849491866263109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014769 (n : ℕ) : ℤ :=
  A014769.P15242849491866263109.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014770.P1747506718973092349

`A014633(n)²`
-/

namespace A014770.P1747506718973092349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014633 n ^ 2

end

end A014770.P1747506718973092349

noncomputable section

/-- A014770: Squares of even pentagonal numbers.

Offset 0, canonical program `A014770.P1747506718973092349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014770 (n : ℕ) : ℤ :=
  A014770.P1747506718973092349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A016031.P14727423077537202512

`2^A000295(n)`
-/

namespace A016031.P14727423077537202512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000295 n : ℤ)

end

end A016031.P14727423077537202512

noncomputable section

/-- A016031: De Bruijn's sequence: 2^(2^(n-1) - n): number of ways of arranging 2^n bits in circle so all 2^n consecutive strings of length n are distinct.

Offset 1, canonical program `A016031.P14727423077537202512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A016031.P14727423077537202512.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017928.P9559625745466745229

`A017910(3*n)`
-/

namespace A017928.P9559625745466745229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (3 * n)

end

end A017928.P9559625745466745229

noncomputable section

/-- A017928: Powers of sqrt(8) rounded down.

Offset 0, canonical program `A017928.P9559625745466745229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017928 (n : ℕ) : ℤ :=
  A017928.P9559625745466745229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017930.P16700928631467315289

`A017912(3*n)`
-/

namespace A017930.P16700928631467315289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (3 * n)

end

end A017930.P16700928631467315289

noncomputable section

/-- A017930: Powers of sqrt(8) rounded up.

Offset 0, canonical program `A017930.P16700928631467315289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017930 (n : ℕ) : ℤ :=
  A017930.P16700928631467315289.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019515.P7237518338830127336

`A000178(n)+1`
-/

namespace A019515.P7237518338830127336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n + 1

end

end A019515.P7237518338830127336

noncomputable section

/-- A019515: a(n) = 1 + 0!*1!*2!*...*n!.

Offset 0, canonical program `A019515.P7237518338830127336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019515 (n : ℕ) : ℤ :=
  A019515.P7237518338830127336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020706.P17542088062975438782

`A000045(n+4)+1`
-/

namespace A020706.P17542088062975438782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + 1

end

end A020706.P17542088062975438782

noncomputable section

/-- A020706: Pisot sequences L(4,6), E(4,6).

Offset 0, canonical program `A020706.P17542088062975438782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706 (n : ℕ) : ℤ :=
  A020706.P17542088062975438782.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020721.P2221786006227013851

`A020711(n+1)`
-/

namespace A020721.P2221786006227013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1)

end

end A020721.P2221786006227013851

noncomputable section

/-- A020721: Pisot sequences E(7,10), P(7,10).

Offset 0, canonical program `A020721.P2221786006227013851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020721 (n : ℕ) : ℤ :=
  A020721.P2221786006227013851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020743.P12649817717778317435

`A018910(n+2)`
-/

namespace A020743.P12649817717778317435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (n + 2)

end

end A020743.P12649817717778317435

noncomputable section

/-- A020743: Pisot sequence L(7,10).

Offset 0, canonical program `A020743.P12649817717778317435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020743 (n : ℕ) : ℤ :=
  A020743.P12649817717778317435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020878.P2717610554730428774

`A001350(n)+2`
-/

namespace A020878.P2717610554730428774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n + 2

end

end A020878.P2717610554730428774

noncomputable section

/-- A020878: Number of maximum matchings in the n-Moebius ladder M_n.

Offset 0, canonical program `A020878.P2717610554730428774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020878 (n : ℕ) : ℤ :=
  A020878.P2717610554730428774.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022086.P12032342305681498850

`A187893(n)-1`
-/

namespace A022086.P12032342305681498850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n - 1

end

end A022086.P12032342305681498850

noncomputable section

/-- A022086: Fibonacci sequence beginning 0, 3.

Offset 0, canonical program `A022086.P12032342305681498850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022086 (n : ℕ) : ℤ :=
  A022086.P12032342305681498850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022088.P13238787405379109622

`5*A000045(n)`
-/

namespace A022088.P13238787405379109622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n

end

end A022088.P13238787405379109622

noncomputable section

/-- A022088: Fibonacci sequence beginning 0, 5.

Offset 0, canonical program `A022088.P13238787405379109622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022088 (n : ℕ) : ℤ :=
  A022088.P13238787405379109622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022089.P2526634343507700002

`6*A000045(n)`
-/

namespace A022089.P2526634343507700002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 n

end

end A022089.P2526634343507700002

noncomputable section

/-- A022089: Fibonacci sequence beginning 0, 6.

Offset 0, canonical program `A022089.P2526634343507700002`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022089 (n : ℕ) : ℤ :=
  A022089.P2526634343507700002.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022342.P15925885883679049417

`a(n-1)+A001468(n)` with `a(0)=0`
-/

namespace A022342.P15925885883679049417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001468 n

end

end A022342.P15925885883679049417

noncomputable section

/-- A022342: Integers with "even" Zeckendorf expansions (do not end with ... + F_2 = ... + 1) (the Fibonacci-even numbers); also, apart from first term, a(n) = Fibonacci successor to n-1.

Offset 1, canonical program `A022342.P15925885883679049417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342 (n : ℕ) : ℤ :=
  A022342.P15925885883679049417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022348.P5230939691613285964

`14*A000045(n)`
-/

namespace A022348.P5230939691613285964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A000045 n

end

end A022348.P5230939691613285964

noncomputable section

/-- A022348: Fibonacci sequence beginning 0, 14.

Offset 0, canonical program `A022348.P5230939691613285964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022348 (n : ℕ) : ℤ :=
  A022348.P5230939691613285964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022349.P10870212278406772653

`15*A000045(n)`
-/

namespace A022349.P10870212278406772653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000045 n

end

end A022349.P10870212278406772653

noncomputable section

/-- A022349: Fibonacci sequence beginning 0, 15.

Offset 0, canonical program `A022349.P10870212278406772653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022349 (n : ℕ) : ℤ :=
  A022349.P10870212278406772653.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022350.P3992686559429308744

`16*A000045(n)`
-/

namespace A022350.P3992686559429308744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000045 n

end

end A022350.P3992686559429308744

noncomputable section

/-- A022350: Fibonacci sequence beginning 0, 16.

Offset 0, canonical program `A022350.P3992686559429308744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022350 (n : ℕ) : ℤ :=
  A022350.P3992686559429308744.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022351.P1553212968435598646

`17*A000045(n)`
-/

namespace A022351.P1553212968435598646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000045 n

end

end A022351.P1553212968435598646

noncomputable section

/-- A022351: Fibonacci sequence beginning 0, 17.

Offset 0, canonical program `A022351.P1553212968435598646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022351 (n : ℕ) : ℤ :=
  A022351.P1553212968435598646.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022353.P4384315512974334384

`19*A000045(n)`
-/

namespace A022353.P4384315512974334384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A000045 n

end

end A022353.P4384315512974334384

noncomputable section

/-- A022353: Fibonacci sequence beginning 0, 19.

Offset 0, canonical program `A022353.P4384315512974334384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022353 (n : ℕ) : ℤ :=
  A022353.P4384315512974334384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022354.P2497390260056676203

`20*A000045(n)`
-/

namespace A022354.P2497390260056676203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A000045 n

end

end A022354.P2497390260056676203

noncomputable section

/-- A022354: Fibonacci sequence beginning 0, 20.

Offset 0, canonical program `A022354.P2497390260056676203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022354 (n : ℕ) : ℤ :=
  A022354.P2497390260056676203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022356.P14674045787055345271

`22*A000045(n)`
-/

namespace A022356.P14674045787055345271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A000045 n

end

end A022356.P14674045787055345271

noncomputable section

/-- A022356: Fibonacci sequence beginning 0, 22.

Offset 0, canonical program `A022356.P14674045787055345271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022356 (n : ℕ) : ℤ :=
  A022356.P14674045787055345271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022357.P7660014603306002529

`23*A000045(n)`
-/

namespace A022357.P7660014603306002529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000045 n

end

end A022357.P7660014603306002529

noncomputable section

/-- A022357: Fibonacci sequence beginning 0, 23.

Offset 0, canonical program `A022357.P7660014603306002529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022357 (n : ℕ) : ℤ :=
  A022357.P7660014603306002529.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022358.P10093818309095177812

`24*A000045(n)`
-/

namespace A022358.P10093818309095177812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000045 n

end

end A022358.P10093818309095177812

noncomputable section

/-- A022358: Fibonacci sequence beginning 0, 24.

Offset 0, canonical program `A022358.P10093818309095177812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022358 (n : ℕ) : ℤ :=
  A022358.P10093818309095177812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022360.P3825721097200071590

`26*A000045(n)`
-/

namespace A022360.P3825721097200071590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * A000045 n

end

end A022360.P3825721097200071590

noncomputable section

/-- A022360: Fibonacci sequence beginning 0, 26.

Offset 0, canonical program `A022360.P3825721097200071590`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022360 (n : ℕ) : ℤ :=
  A022360.P3825721097200071590.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022361.P9439601930716895092

`27*A000045(n)`
-/

namespace A022361.P9439601930716895092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000045 n

end

end A022361.P9439601930716895092

noncomputable section

/-- A022361: Fibonacci sequence beginning 0, 27.

Offset 0, canonical program `A022361.P9439601930716895092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022361 (n : ℕ) : ℤ :=
  A022361.P9439601930716895092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022362.P11876149498119894087

`28*A000045(n)`
-/

namespace A022362.P11876149498119894087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A000045 n

end

end A022362.P11876149498119894087

noncomputable section

/-- A022362: Fibonacci sequence beginning 0, 28.

Offset 0, canonical program `A022362.P11876149498119894087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022362 (n : ℕ) : ℤ :=
  A022362.P11876149498119894087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022364.P14315637697114975476

`30*A000045(n)`
-/

namespace A022364.P14315637697114975476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000045 n

end

end A022364.P14315637697114975476

noncomputable section

/-- A022364: Fibonacci sequence beginning 0, 30.

Offset 0, canonical program `A022364.P14315637697114975476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022364 (n : ℕ) : ℤ :=
  A022364.P14315637697114975476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022365.P15230630190226812545

`31*A000045(n)`
-/

namespace A022365.P15230630190226812545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A000045 n

end

end A022365.P15230630190226812545

noncomputable section

/-- A022365: Fibonacci sequence beginning 0, 31.

Offset 0, canonical program `A022365.P15230630190226812545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022365 (n : ℕ) : ℤ :=
  A022365.P15230630190226812545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022366.P2612584355768870922

`32*A000045(n)`
-/

namespace A022366.P2612584355768870922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A000045 n

end

end A022366.P2612584355768870922

noncomputable section

/-- A022366: Fibonacci sequence beginning 0, 32.

Offset 0, canonical program `A022366.P2612584355768870922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022366 (n : ℕ) : ℤ :=
  A022366.P2612584355768870922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022367.P15141266762109396165

`2*A022095(n)`
-/

namespace A022367.P15141266762109396165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 n

end

end A022367.P15141266762109396165

noncomputable section

/-- A022367: Fibonacci sequence beginning 2, 10.

Offset 0, canonical program `A022367.P15141266762109396165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022367 (n : ℕ) : ℤ :=
  A022367.P15141266762109396165.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022368.P17562576182317563288

`2*A022096(n)`
-/

namespace A022368.P17562576182317563288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022096 n

end

end A022368.P17562576182317563288

noncomputable section

/-- A022368: Fibonacci sequence beginning 2, 12.

Offset 0, canonical program `A022368.P17562576182317563288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022368 (n : ℕ) : ℤ :=
  A022368.P17562576182317563288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022369.P16171992494825357631

`2*A022097(n)`
-/

namespace A022369.P16171992494825357631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022097 n

end

end A022369.P16171992494825357631

noncomputable section

/-- A022369: Fibonacci sequence beginning 2, 14.

Offset 0, canonical program `A022369.P16171992494825357631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022369 (n : ℕ) : ℤ :=
  A022369.P16171992494825357631.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022370.P10782743781689353041

`2*A022098(n)`
-/

namespace A022370.P10782743781689353041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022098 n

end

end A022370.P10782743781689353041

noncomputable section

/-- A022370: Fibonacci sequence beginning 2, 16.

Offset 0, canonical program `A022370.P10782743781689353041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022370 (n : ℕ) : ℤ :=
  A022370.P10782743781689353041.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022371.P497849754708652778

`2*A022099(n)`
-/

namespace A022371.P497849754708652778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022099 n

end

end A022371.P497849754708652778

noncomputable section

/-- A022371: Fibonacci sequence beginning 2, 18.

Offset 0, canonical program `A022371.P497849754708652778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022371 (n : ℕ) : ℤ :=
  A022371.P497849754708652778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022372.P3318322918414077424

`2*A022100(n)`
-/

namespace A022372.P3318322918414077424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022100 n

end

end A022372.P3318322918414077424

noncomputable section

/-- A022372: Fibonacci sequence beginning 2, 20.

Offset 0, canonical program `A022372.P3318322918414077424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022372 (n : ℕ) : ℤ :=
  A022372.P3318322918414077424.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022375.P5818569338397038520

`2*A022103(n)`
-/

namespace A022375.P5818569338397038520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022103 n

end

end A022375.P5818569338397038520

noncomputable section

/-- A022375: Fibonacci sequence beginning 2, 26.

Offset 0, canonical program `A022375.P5818569338397038520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022375 (n : ℕ) : ℤ :=
  A022375.P5818569338397038520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022376.P18117227960282036275

`2*A022104(n)`
-/

namespace A022376.P18117227960282036275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022104 n

end

end A022376.P18117227960282036275

noncomputable section

/-- A022376: Fibonacci sequence beginning 2, 28.

Offset 0, canonical program `A022376.P18117227960282036275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022376 (n : ℕ) : ℤ :=
  A022376.P18117227960282036275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022381.P15408426935880832648

`3*A022095(n)`
-/

namespace A022381.P15408426935880832648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022095 n

end

end A022381.P15408426935880832648

noncomputable section

/-- A022381: Fibonacci sequence beginning 3, 15.

Offset 0, canonical program `A022381.P15408426935880832648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022381 (n : ℕ) : ℤ :=
  A022381.P15408426935880832648.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022915.P1390373990754282635

`A052295(n)/A000178(n)`
-/

namespace A022915.P1390373990754282635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052295 n : ℚ) / (A000178 n : ℚ)

end

end A022915.P1390373990754282635

noncomputable section

/-- A022915: Multinomial coefficients (0, 1, ..., n)! = C(n+1,2)!/(0!*1!*2!*...*n!).

Offset 0, canonical program `A022915.P1390373990754282635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022915 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022915.P1390373990754282635.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023610.P5614618559082529944

`A001629(n+1)+A001629(n+2)`
-/

namespace A023610.P5614618559082529944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + A001629 (n + 2)

end

end A023610.P5614618559082529944

noncomputable section

/-- A023610: Convolution of Fibonacci numbers and {F(2), F(3), F(4), ...}.

Offset 0, canonical program `A023610.P5614618559082529944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023610 (n : ℕ) : ℤ :=
  A023610.P5614618559082529944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025175.P863678387703364115

`2*A012125(n+1)/(n+2)`
-/

namespace A025175.P863678387703364115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A012125 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A025175.P863678387703364115

noncomputable section

/-- A025175: Jacobi polynomial P((1, 1), n, (1/2)).

Offset 0, canonical program `A025175.P863678387703364115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025175 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025175.P863678387703364115.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025810.P3393383735508697475

`a(n-10)+A008616(n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A025810.P3393383735508697475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1, 1, 1, 1, 1] fun n a =>
  a (n - 10) + A008616 n

end

end A025810.P3393383735508697475

noncomputable section

/-- A025810: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A025810.P3393383735508697475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025810 (n : ℕ) : ℤ :=
  A025810.P3393383735508697475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026646.P15867879407614898431

`A001045(n+3)-2*floor((n+2)/2)`
-/

namespace A026646.P15867879407614898431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) - 2 * ⌊(n + 2 : ℚ) / 2⌋

end

end A026646.P15867879407614898431

noncomputable section

/-- A026646: a(n) = Sum_{i=0..n} Sum_{j=0..n} A026637(i,j).

Offset 0, canonical program `A026646.P15867879407614898431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026646 (n : ℕ) : ℤ :=
  A026646.P15867879407614898431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026741.P7397200255647832146

`gcd(n, A000217(n))`
-/

namespace A026741.P7397200255647832146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000217 n)

end

end A026741.P7397200255647832146

noncomputable section

/-- A026741: a(n) = n if n odd, n/2 if n even.

Offset 0, canonical program `A026741.P7397200255647832146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026741 (n : ℕ) : ℤ :=
  (A026741.P7397200255647832146.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027083.P7887810092018352263

`A027024(n+2)+1`
-/

namespace A027083.P7887810092018352263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027024 (n + 2) + 1

end

end A027083.P7887810092018352263

noncomputable section

/-- A027083: a(n) = A027082(n, n+2).

Offset 2, canonical program `A027083.P7887810092018352263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027083 (n : ℕ) : ℤ :=
  A027083.P7887810092018352263.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027085.P11029786598615016491

`A000213(n+6)-3*(n+4)`
-/

namespace A027085.P11029786598615016491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 6) - (3 * (n + 4) : ℤ)

end

end A027085.P11029786598615016491

noncomputable section

/-- A027085: a(n) = A027082(n, n+3).

Offset 0, canonical program `A027085.P11029786598615016491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027085 (n : ℕ) : ℤ :=
  A027085.P11029786598615016491.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000316.P502515888872783753

`A000459(n)*2^n`
-/

namespace A000316.P502515888872783753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000459 n * (2 ^ n : ℤ)

end

end A000316.P502515888872783753

noncomputable section

/-- A000316: Two decks each have n kinds of cards, 2 of each kind. The first deck is laid out in order. The second deck is shuffled and laid out next to the first. A match occurs if a card from the second deck is next to a card of the same kind from the first deck. a(n) is the number of ways of achieving no matches.

Offset 0, canonical program `A000316.P502515888872783753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316 (n : ℕ) : ℤ :=
  A000316.P502515888872783753.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000533.P11203370058495839217

`A178500(n)+1`
-/

namespace A000533.P11203370058495839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + 1

end

end A000533.P11203370058495839217

noncomputable section

/-- A000533: a(0)=1; a(n) = 10^n + 1, n >= 1.

Offset 0, canonical program `A000533.P11203370058495839217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533 (n : ℕ) : ℤ :=
  A000533.P11203370058495839217.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000593.P13640346029616979906

`A000203(n+1)/A038712(n+1)`
-/

namespace A000593.P13640346029616979906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A000593.P13640346029616979906

noncomputable section

/-- A000593: Sum of odd divisors of n.

Offset 1, canonical program `A000593.P13640346029616979906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000593.P13640346029616979906.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000909.P2394326780231115835

`4^n*A079484(n)`
-/

namespace A000909.P2394326780231115835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A079484 n

end

end A000909.P2394326780231115835

noncomputable section

/-- A000909: a(n) = (2*n)!*(2*n+1)! / n!^2.

Offset 0, canonical program `A000909.P2394326780231115835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909 (n : ℕ) : ℤ :=
  A000909.P2394326780231115835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001317.P8261653114070389448

`A048724(a(n-1))` with `a(0)=1`
-/

namespace A001317.P8261653114070389448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048724 (a (n - 1)).toNat

end

end A001317.P8261653114070389448

noncomputable section

/-- A001317: Sierpiński's triangle (Pascal's triangle mod 2) converted to decimal.

Offset 0, canonical program `A001317.P8261653114070389448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001317 (n : ℕ) : ℤ :=
  A001317.P8261653114070389448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001621.P13920646642169681305

`A002378(A000217(n))`
-/

namespace A001621.P13920646642169681305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A000217 n).toNat

end

end A001621.P13920646642169681305

noncomputable section

/-- A001621: a(n) = n*(n + 1)*(n^2 + n + 2)/4.

Offset 0, canonical program `A001621.P13920646642169681305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001621 (n : ℕ) : ℤ :=
  A001621.P13920646642169681305.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001655.P8259304723243497872

`1/2*A065563(n+1)`
-/

namespace A001655.P8259304723243497872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A065563 (n + 1) : ℚ)

end

end A001655.P8259304723243497872

noncomputable section

/-- A001655: Fibonomial coefficients: a(n) = F(n+1) * F(n+2) * F(n+3)/2, where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A001655.P8259304723243497872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001655.P8259304723243497872.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001945.P17638672492670160984

`A001608(n)+A078712(n)`
-/

namespace A001945.P17638672492670160984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n + A078712 n

end

end A001945.P17638672492670160984

noncomputable section

/-- A001945: a(n+6) = -a(n+5) + a(n+4) + 3a(n+3) + a(n+2) - a(n+1) - a(n). a(n) = sign(n) if abs(n)<=3.

Offset 0, canonical program `A001945.P17638672492670160984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001945 (n : ℕ) : ℤ :=
  A001945.P17638672492670160984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002081.P6483890857808447145

`2*A235700(n+1)`
-/

namespace A002081.P6483890857808447145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235700 (n + 1)

end

end A002081.P6483890857808447145

noncomputable section

/-- A002081: Numbers congruent to {2, 4, 8, 16} (mod 20).

Offset 0, canonical program `A002081.P6483890857808447145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002081 (n : ℕ) : ℤ :=
  A002081.P6483890857808447145.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002397.P1083806925330987603

`n!*A003418(n+1)`
-/

namespace A002397.P1083806925330987603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003418 (n + 1)

end

end A002397.P1083806925330987603

noncomputable section

/-- A002397: a(n) = n! * lcm({1, 2, ..., n+1}).

Offset 0, canonical program `A002397.P1083806925330987603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002397 (n : ℕ) : ℤ :=
  A002397.P1083806925330987603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002570.P5795901342937694334

`a(n-2)+A002571(n)` with `a(0)=1, a(1)=1`
-/

namespace A002570.P5795901342937694334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A002571 n

end

end A002570.P5795901342937694334

noncomputable section

/-- A002570: From a definite integral.

Offset 1, canonical program `A002570.P5795901342937694334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002570 (n : ℕ) : ℤ :=
  A002570.P5795901342937694334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002884.P11600545504919749635

`A006125(n)*A005329(n)`
-/

namespace A002884.P11600545504919749635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A005329 n

end

end A002884.P11600545504919749635

noncomputable section

/-- A002884: Number of nonsingular n X n matrices over GF(2) (order of the group GL(n,2)); order of Chevalley group A_n (2); order of projective special linear group PSL_n(2).

Offset 0, canonical program `A002884.P11600545504919749635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002884 (n : ℕ) : ℤ :=
  A002884.P11600545504919749635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003893.P4318919011706589525

`A010879(A000045(n))`
-/

namespace A003893.P4318919011706589525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000045 n).toNat

end

end A003893.P4318919011706589525

noncomputable section

/-- A003893: a(n) = Fibonacci(n) mod 10.

Offset 0, canonical program `A003893.P4318919011706589525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003893 (n : ℕ) : ℤ :=
  A003893.P4318919011706589525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004054.P17603231056276103615

`A094705(n+1)-A094705(n)`
-/

namespace A004054.P17603231056276103615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 (n + 1) - A094705 n

end

end A004054.P17603231056276103615

noncomputable section

/-- A004054: Expansion of (1-x)/((1+x)*(1-2*x)*(1-3*x)).

Offset 0, canonical program `A004054.P17603231056276103615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004054 (n : ℕ) : ℤ :=
  A004054.P17603231056276103615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004154.P15946096281681469454

`A000142(n)/10^A027868(n)`
-/

namespace A004154.P15946096281681469454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ)

end

end A004154.P15946096281681469454

noncomputable section

/-- A004154: a(n) = n! with trailing zeros omitted.

Offset 0, canonical program `A004154.P15946096281681469454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004154.P15946096281681469454.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005587.P12134575304824728595

`A024191(n+1)-5`
-/

namespace A005587.P12134575304824728595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) - 5

end

end A005587.P12134575304824728595

noncomputable section

/-- A005587: a(n) = n*(n+5)*(n+6)*(n+7)/24.

Offset 0, canonical program `A005587.P12134575304824728595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005587 (n : ℕ) : ℤ :=
  A005587.P12134575304824728595.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005823.P15253501149959078210

`2*A005836(n+1)`
-/

namespace A005823.P15253501149959078210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1)

end

end A005823.P15253501149959078210

noncomputable section

/-- A005823: Numbers whose ternary expansion contains no 1's.

Offset 1, canonical program `A005823.P15253501149959078210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005823 (n : ℕ) : ℤ :=
  A005823.P15253501149959078210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005902.P17180095149968854473

`A100174(n+1)-A000290(n)`
-/

namespace A005902.P17180095149968854473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) - A000290 n

end

end A005902.P17180095149968854473

noncomputable section

/-- A005902: Centered icosahedral (or cuboctahedral) numbers, also crystal ball sequence for f.c.c. lattice.

Offset 0, canonical program `A005902.P17180095149968854473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005902 (n : ℕ) : ℤ :=
  A005902.P17180095149968854473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006000.P2071552165053779125

`n+A006002(n)+1`
-/

namespace A006000.P2071552165053779125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A006002 n + 1

end

end A006000.P2071552165053779125

noncomputable section

/-- A006000: a(n) = (n+1)*(n^2+n+2)/2.

Offset 0, canonical program `A006000.P2071552165053779125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006000 (n : ℕ) : ℤ :=
  A006000.P2071552165053779125.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006367.P14194102360147231418

`A010049(n+1)-A010049(n)`
-/

namespace A006367.P14194102360147231418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A010049 n

end

end A006367.P14194102360147231418

noncomputable section

/-- A006367: Number of binary vectors of length n+1 beginning with 0 and containing just 1 singleton.

Offset 0, canonical program `A006367.P14194102360147231418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006367 (n : ℕ) : ℤ :=
  A006367.P14194102360147231418.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006370.P17563567738213210774

`A014682(n)*A000034(n)`
-/

namespace A006370.P17563567738213210774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n * A000034 n

end

end A006370.P17563567738213210774

noncomputable section

/-- A006370: The Collatz or 3x+1 map: a(n) = n/2 if n is even, 3n + 1 if n is odd.

Offset 0, canonical program `A006370.P17563567738213210774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006370 (n : ℕ) : ℤ :=
  A006370.P17563567738213210774.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007395.P8813562151010342446

`A002061(n)-A165900(n)`
-/

namespace A007395.P8813562151010342446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A165900 n

end

end A007395.P8813562151010342446

noncomputable section

/-- A007395: Constant sequence: the all 2's sequence.

Offset 1, canonical program `A007395.P8813562151010342446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007395 (n : ℕ) : ℤ :=
  A007395.P8813562151010342446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007654.P12931302433447475572

`3*A098301(n)`
-/

namespace A007654.P12931302433447475572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098301 n

end

end A007654.P12931302433447475572

noncomputable section

/-- A007654: Numbers k such that the standard deviation of 1,...,k is an integer.

Offset 1, canonical program `A007654.P12931302433447475572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007654 (n : ℕ) : ℤ :=
  A007654.P12931302433447475572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007953.P3472751987379697826

`n-9*A054899(n)`
-/

namespace A007953.P3472751987379697826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * A054899 n

end

end A007953.P3472751987379697826

noncomputable section

/-- A007953: Digital sum (i.e., sum of digits) of n; also called digsum(n).

Offset 0, canonical program `A007953.P3472751987379697826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007953 (n : ℕ) : ℤ :=
  A007953.P3472751987379697826.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008624.P13884143058626142684

`A110654(A028242(n))`
-/

namespace A008624.P13884143058626142684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n).toNat

end

end A008624.P13884143058626142684

noncomputable section

/-- A008624: Expansion of g.f. (1 + x^3)/((1 - x^2)*(1 - x^4)) = (1 - x + x^2)/((1 + x)*(1 - x)^2*(1 + x^2)).

Offset 0, canonical program `A008624.P13884143058626142684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624 (n : ℕ) : ℤ :=
  A008624.P13884143058626142684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008954.P3188806782472144915

`A010879(A000217(n))`
-/

namespace A008954.P3188806782472144915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000217 n).toNat

end

end A008954.P3188806782472144915

noncomputable section

/-- A008954: Final digit of triangular number n*(n+1)/2.

Offset 0, canonical program `A008954.P3188806782472144915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008954 (n : ℕ) : ℤ :=
  A008954.P3188806782472144915.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009116.P721434042884447878

`(-1)^n*A146559(n)`
-/

namespace A009116.P721434042884447878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A146559 n

end

end A009116.P721434042884447878

noncomputable section

/-- A009116: Expansion of e.g.f. cos(x) / exp(x).

Offset 0, canonical program `A009116.P721434042884447878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009116 (n : ℕ) : ℤ :=
  A009116.P721434042884447878.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A009117.P9076829232289267854

`(-1)^n*A081294(n)`
-/

namespace A009117.P9076829232289267854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A081294 n

end

end A009117.P9076829232289267854

noncomputable section

/-- A009117: Expansion of e.g.f.: 1/2 + exp(-4*x)/2.

Offset 0, canonical program `A009117.P9076829232289267854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009117 (n : ℕ) : ℤ :=
  A009117.P9076829232289267854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010734.P17338199224593915369

`A158289(n)+A199264(n)`
-/

namespace A010734.P17338199224593915369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158289 n + A199264 n

end

end A010734.P17338199224593915369

noncomputable section

/-- A010734: Constant sequence: the all 9's sequence.

Offset 0, canonical program `A010734.P17338199224593915369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010734 (n : ℕ) : ℤ :=
  A010734.P17338199224593915369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010856.P18189818830812651098

`A152179(3*n)+A152179(3*n+1)+A152179(3*n+2)`
-/

namespace A010856.P18189818830812651098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152179 (3 * n) + A152179 (3 * n + 1) + A152179 (3 * n + 2)

end

end A010856.P18189818830812651098

noncomputable section

/-- A010856: Constant sequence: a(n) = 17.

Offset 0, canonical program `A010856.P18189818830812651098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010856 (n : ℕ) : ℤ :=
  A010856.P18189818830812651098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011558.P10594584635942187014

`1-A079998(n)`
-/

namespace A011558.P10594584635942187014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079998 n

end

end A011558.P10594584635942187014

noncomputable section

/-- A011558: Expansion of (x + x^3)/(1 + x + ... + x^4) mod 2.

Offset 0, canonical program `A011558.P10594584635942187014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011558 (n : ℕ) : ℤ :=
  A011558.P10594584635942187014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014126.P11154080504226975297

`1/72*(4*n^3+30*n²+72*n+55+8*A049347(n)+9*(-1)^n)`
-/

namespace A014126.P11154080504226975297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 72 * ((4 * n ^ 3 + 30 * n ^ 2 + 72 * n : ℤ) + (55 + 8 * A049347 n) + 9 * (-1) ^ n : ℚ)

end

end A014126.P11154080504226975297

noncomputable section

/-- A014126: Number of partitions of 2*n into at most 4 parts.

Offset 0, canonical program `A014126.P11154080504226975297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014126.P11154080504226975297.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014795.P10176457371490627537

`A015219(n)²`
-/

namespace A014795.P10176457371490627537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n ^ 2

end

end A014795.P10176457371490627537

noncomputable section

/-- A014795: Squares of odd tetrahedral numbers.

Offset 0, canonical program `A014795.P10176457371490627537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014795 (n : ℕ) : ℤ :=
  A014795.P10176457371490627537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014796.P14216913093135967788

`A015220(n)²`
-/

namespace A014796.P14216913093135967788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015220 n ^ 2

end

end A014796.P14216913093135967788

noncomputable section

/-- A014796: Squares of even tetrahedral numbers (A015220).

Offset 0, canonical program `A014796.P14216913093135967788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014796 (n : ℕ) : ℤ :=
  A014796.P14216913093135967788.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014797.P4579357030622814890

`A015221(n)²`
-/

namespace A014797.P4579357030622814890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015221 n ^ 2

end

end A014797.P4579357030622814890

noncomputable section

/-- A014797: Squares of odd square pyramidal numbers.

Offset 0, canonical program `A014797.P4579357030622814890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014797 (n : ℕ) : ℤ :=
  A014797.P4579357030622814890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014798.P13163875346793599077

`A015222(n+1)²`
-/

namespace A014798.P13163875346793599077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015222 (n + 1) ^ 2

end

end A014798.P13163875346793599077

noncomputable section

/-- A014798: Squares of even square pyramidal numbers.

Offset 0, canonical program `A014798.P13163875346793599077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014798 (n : ℕ) : ℤ :=
  A014798.P13163875346793599077.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014800.P2273199219336145023

`A015224(n)²`
-/

namespace A014800.P2273199219336145023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015224 n ^ 2

end

end A014800.P2273199219336145023

noncomputable section

/-- A014800: Squares of even pentagonal pyramidal numbers.

Offset 0, canonical program `A014800.P2273199219336145023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014800 (n : ℕ) : ℤ :=
  A014800.P2273199219336145023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014801.P14746116168998849138

`A015225(n+1)²`
-/

namespace A014801.P14746116168998849138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015225 (n + 1) ^ 2

end

end A014801.P14746116168998849138

noncomputable section

/-- A014801: Squares of odd hexagonal pyramidal numbers.

Offset 0, canonical program `A014801.P14746116168998849138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014801 (n : ℕ) : ℤ :=
  A014801.P14746116168998849138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014983.P11933017260358448092

`A084222(n)-1`
-/

namespace A014983.P11933017260358448092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n - 1

end

end A014983.P11933017260358448092

noncomputable section

/-- A014983: a(n) = (1 - (-3)^n)/4.

Offset 0, canonical program `A014983.P11933017260358448092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014983 (n : ℕ) : ℤ :=
  A014983.P11933017260358448092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020871.P9685259222526495419

`n*A121401(n)`
-/

namespace A020871.P9685259222526495419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121401 n

end

end A020871.P9685259222526495419

noncomputable section

/-- A020871: Number of spanning trees in a Moebius ladder M_n with 2n vertices.

Offset 0, canonical program `A020871.P9685259222526495419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020871 (n : ℕ) : ℤ :=
  A020871.P9685259222526495419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021115.P16254005703688202094

`9*A022003(n)`
-/

namespace A021115.P16254005703688202094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A022003 n

end

end A021115.P16254005703688202094

noncomputable section

/-- A021115: Decimal expansion of 1/111.

Offset 0, canonical program `A021115.P16254005703688202094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021115 (n : ℕ) : ℤ :=
  A021115.P16254005703688202094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025165.P15229587313836077132

`A062267(n)/A016116(n)`
-/

namespace A025165.P15229587313836077132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062267 n : ℚ) / (A016116 n : ℚ)

end

end A025165.P15229587313836077132

noncomputable section

/-- A025165: a(n) = H_n(1) / 2^floor(n/2) where H_n is the n-th Hermite polynomial.

Offset 0, canonical program `A025165.P15229587313836077132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025165.P15229587313836077132.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026387.P3989606059390218038

`A085362(n+1)`
-/

namespace A026387.P3989606059390218038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 (n + 1)

end

end A026387.P3989606059390218038

noncomputable section

/-- A026387: a(n) = number of integer strings s(0),...,s(n) counted by array T in A026386 that have s(n)=0; also a(n) = T(2n,n).

Offset 0, canonical program `A026387.P3989606059390218038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026387 (n : ℕ) : ℤ :=
  A026387.P3989606059390218038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000064.P7860828275165321121

`∑[A000008(n)]`
-/

namespace A000064.P7860828275165321121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P7860828275165321121

noncomputable section

/-- A000064: Partial sums of (unordered) ways of making change for n cents using coins of 1, 2, 5, 10 cents.

Offset 0, canonical program `A000064.P7860828275165321121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064 (n : ℕ) : ℤ :=
  A000064.P7860828275165321121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000102.P12334321088699624445

`A000078(n+3)-Δ[A008937(n)]`
-/

namespace A000102.P12334321088699624445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - (f1 (n + 1) - f1 n)

end

end A000102.P12334321088699624445

noncomputable section

/-- A000102: a(n) = number of compositions of n in which the maximum part size is 4.

Offset 0, canonical program `A000102.P12334321088699624445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102 (n : ℕ) : ℤ :=
  A000102.P12334321088699624445.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000139.P12341560060847707045

`2/(n+1)*A001764(n)`
-/

namespace A000139.P12341560060847707045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A000139.P12341560060847707045

noncomputable section

/-- A000139: a(n) = 2*(3*n)! / ((2*n+1)!*(n+1)!).

Offset 0, canonical program `A000139.P12341560060847707045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A000139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000139.P12341560060847707045.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A000139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000210.P18384059506850004585

`∑[Δ[A022843(n)]-1]`
-/

namespace A000210.P18384059506850004585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P18384059506850004585

noncomputable section

/-- A000210: A Beatty sequence: floor(n*(e-1)).

Offset 1, canonical program `A000210.P18384059506850004585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A000210 (n : ℕ) : ℤ :=
  A000210.P18384059506850004585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A000210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000383.P18280553795721487493

`5*(∑[A001592(n)]-A001592(n))+1`
-/

namespace A000383.P18280553795721487493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - A001592 n) + 1

end

end A000383.P18280553795721487493

noncomputable section

/-- A000383: Hexanacci numbers with a(0) = ... = a(5) = 1.

Offset 0, canonical program `A000383.P18280553795721487493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383 (n : ℕ) : ℤ :=
  A000383.P18280553795721487493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000431.P10076989455802087984

`A131577(A004275(n))-A057711(n)`
-/

namespace A000431.P10076989455802087984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004275 n).toNat - A057711 n

end

end A000431.P10076989455802087984

noncomputable section

/-- A000431: Expansion of 2*x^3/((1-2*x)^2*(1-4*x)).

Offset 0, canonical program `A000431.P10076989455802087984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A000431 (n : ℕ) : ℤ :=
  A000431.P10076989455802087984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A000431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000460.P18350118421693111491

`3^(n+3)-A048470(n+3)`
-/

namespace A000460.P18350118421693111491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A048470 (n + 3)

end

end A000460.P18350118421693111491

noncomputable section

/-- A000460: Eulerian numbers (Euler's triangle: column k=3 of A008292, column k=2 of A173018).

Offset 3, canonical program `A000460.P18350118421693111491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A000460 (n : ℕ) : ℤ :=
  A000460.P18350118421693111491.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A000460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000481.P8785211388678617225

`A021024(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A000481.P8785211388678617225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A021024 n + 4 * a (n - 1)

end

end A000481.P8785211388678617225

noncomputable section

/-- A000481: Stirling numbers of the second kind, S(n,5).

Offset 5, canonical program `A000481.P8785211388678617225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A000481 (n : ℕ) : ℤ :=
  A000481.P8785211388678617225.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A000481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000486.P14804195295319927566

`2*A123003(n)`
-/

namespace A000486.P14804195295319927566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123003 n

end

end A000486.P14804195295319927566

noncomputable section

/-- A000486: One half of the number of permutations of [n] such that the differences have 4 runs with the same signs.

Offset 5, canonical program `A000486.P14804195295319927566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486 (n : ℕ) : ℤ :=
  A000486.P14804195295319927566.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000529.P3189955386639158654

`∑[∑[A023545(n+2)]+3]`
-/

namespace A000529.P3189955386639158654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P3189955386639158654

noncomputable section

/-- A000529: Powers of rooted tree enumerator.

Offset 1, canonical program `A000529.P3189955386639158654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529 (n : ℕ) : ℤ :=
  A000529.P3189955386639158654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000572.P9470724114289782022

`∑[Δ[A022843(n)]+1]`
-/

namespace A000572.P9470724114289782022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P9470724114289782022

noncomputable section

/-- A000572: A Beatty sequence: [ n(e+1) ].

Offset 1, canonical program `A000572.P9470724114289782022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000572 (n : ℕ) : ℤ :=
  A000572.P9470724114289782022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000773.P1281880748692157282

`A167762(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A000773.P1281880748692157282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167762 (n - 1) - a (n - 1)

end

end A000773.P1281880748692157282

noncomputable section

/-- A000773: Number of numbers == 0 (mod 3) in range 2^n to 2^(n+1) with odd number of 1's in binary expansion.

Offset 1, canonical program `A000773.P1281880748692157282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A000773 (n : ℕ) : ℤ :=
  A000773.P1281880748692157282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A000773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000777.P1471641736917558101

`(n+2)*A000108(n)-1`
-/

namespace A000777.P1471641736917558101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000108 n - 1

end

end A000777.P1471641736917558101

noncomputable section

/-- A000777: a(n) = (n+2)*Catalan(n) - 1.

Offset 0, canonical program `A000777.P1471641736917558101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000777 (n : ℕ) : ℤ :=
  A000777.P1471641736917558101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000778.P13957288909260579818

`A005807(n)-1`
-/

namespace A000778.P13957288909260579818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - 1

end

end A000778.P13957288909260579818

noncomputable section

/-- A000778: a(n) = Catalan(n) + Catalan(n+1) - 1.

Offset 0, canonical program `A000778.P13957288909260579818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000778 (n : ℕ) : ℤ :=
  A000778.P13957288909260579818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000915.P3040882938927049526

`∑[A000332(n+4)*A006002(n+3)]`
-/

namespace A000915.P3040882938927049526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A006002 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000915.P3040882938927049526

noncomputable section

/-- A000915: Stirling numbers of first kind s(n+4, n).

Offset 1, canonical program `A000915.P3040882938927049526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A000915 (n : ℕ) : ℤ :=
  A000915.P3040882938927049526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A000915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000958.P13874304542277531672

`A000957(n+1)+record[A000957(n)]`
-/

namespace A000958.P13874304542277531672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000958.P13874304542277531672

noncomputable section

/-- A000958: Number of ordered rooted trees with n edges having root of odd degree.

Offset 1, canonical program `A000958.P13874304542277531672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000958 (n : ℕ) : ℤ :=
  A000958.P13874304542277531672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000967.P7202602035930507134

`round(A001610(2*(n+1))/(2*n+3))`
-/

namespace A000967.P7202602035930507134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001610 (2 * (n + 1)) : ℚ) / (2 * n + 3 : ℚ))

end

end A000967.P7202602035930507134

noncomputable section

/-- A000967: Sum of Fermat coefficients.

Offset 1, canonical program `A000967.P7202602035930507134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967 (n : ℕ) : ℤ :=
  A000967.P7202602035930507134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000968.P2757355558857724068

`round(A001612(2*n+3)/(4*n+6))`
-/

namespace A000968.P2757355558857724068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001612 (2 * n + 3) : ℚ) / (4 * n + 6 : ℚ))

end

end A000968.P2757355558857724068

noncomputable section

/-- A000968: Sum of odd Fermat coefficients rounded to nearest integer.

Offset 1, canonical program `A000968.P2757355558857724068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968 (n : ℕ) : ℤ :=
  A000968.P2757355558857724068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001001.P14221911591443847044

`∑{d}[n+1, #*A000203(#)]`
-/

namespace A001001.P14221911591443847044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d

end

end A001001.P14221911591443847044

noncomputable section

/-- A001001: Number of sublattices of index n in generic 3-dimensional lattice.

Offset 1, canonical program `A001001.P14221911591443847044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001001 (n : ℕ) : ℤ :=
  A001001.P14221911591443847044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001043.P18269783162673735460

`A000040(n+1)+A000040(n+2)`
-/

namespace A001043.P18269783162673735460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

end

end A001043.P18269783162673735460

noncomputable section

/-- A001043: Numbers that are the sum of 2 successive primes.

Offset 1, canonical program `A001043.P18269783162673735460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001043 (n : ℕ) : ℤ :=
  A001043.P18269783162673735460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001248.P16278241061688229202

`A000040(n+1)²`
-/

namespace A001248.P16278241061688229202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

end

end A001248.P16278241061688229202

noncomputable section

/-- A001248: Squares of primes.

Offset 1, canonical program `A001248.P16278241061688229202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001248 (n : ℕ) : ℤ :=
  A001248.P16278241061688229202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001299.P13559188530673329141

`A177239(∑[A079998(n)]+3)`
-/

namespace A001299.P13559188530673329141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A001299.P13559188530673329141

noncomputable section

/-- A001299: Number of ways of making change for n cents using coins of 1, 5, 10, 25 cents.

Offset 0, canonical program `A001299.P13559188530673329141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001299 (n : ℕ) : ℤ :=
  A001299.P13559188530673329141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001348.P1877427726897930232

`A000225(A000040(n+1))`
-/

namespace A001348.P1877427726897930232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000040 (n + 1)).toNat

end

end A001348.P1877427726897930232

noncomputable section

/-- A001348: Mersenne numbers: 2^p - 1, where p is prime.

Offset 1, canonical program `A001348.P1877427726897930232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001348 (n : ℕ) : ℤ :=
  A001348.P1877427726897930232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001362.P13223363084705303633

`A001304(floor(n/2))`
-/

namespace A001362.P13223363084705303633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 ⌊(n : ℚ) / 2⌋.toNat

end

end A001362.P13223363084705303633

noncomputable section

/-- A001362: Number of ways of making change for n cents using coins of 1, 2, 4, 10 cents.

Offset 0, canonical program `A001362.P13223363084705303633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4111 terms. -/
def A001362 (n : ℕ) : ℤ :=
  A001362.P13223363084705303633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4111 terms. -/
def A001362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001386.P3145657325654465222

`A035471(n)+4*n`
-/

namespace A001386.P3145657325654465222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035471 n + (4 * n : ℤ)

end

end A001386.P3145657325654465222

noncomputable section

/-- A001386: Coordination sequence for 4-dimensional I-centered tetragonal orthogonal lattice.

Offset 0, canonical program `A001386.P3145657325654465222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001386 (n : ℕ) : ℤ :=
  A001386.P3145657325654465222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001492.P11288150812351078527

`A007879(A004524(n))`
-/

namespace A001492.P11288150812351078527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A004524 n).toNat

end

end A001492.P11288150812351078527

noncomputable section

/-- A001492: Clock chimes with a quarter-hour bell.

Offset 0, canonical program `A001492.P11288150812351078527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492 (n : ℕ) : ℤ :=
  A001492.P11288150812351078527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001521.P14387190889647212559

`floor(A017910(n)+A017910(n+1)/2)`
-/

namespace A001521.P14387190889647212559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017910 n : ℚ) + (A017910 (n + 1) : ℚ) / 2⌋

end

end A001521.P14387190889647212559

noncomputable section

/-- A001521: a(1) = 1; thereafter a(n+1) = floor(sqrt(2*a(n)*(a(n)+1))).

Offset 1, canonical program `A001521.P14387190889647212559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A001521 (n : ℕ) : ℤ :=
  A001521.P14387190889647212559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A001521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001603.P12609787873162022140

`10*C(Δ[A001906(n)], 2)+1`
-/

namespace A001603.P12609787873162022140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (f1 (n + 1) - f1 n).toNat 2 + 1

end

end A001603.P12609787873162022140

noncomputable section

/-- A001603: Odd-indexed terms of A124296.

Offset 0, canonical program `A001603.P12609787873162022140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001603 (n : ℕ) : ℤ :=
  (A001603.P12609787873162022140.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001604.P6158530839936261861

`A002878(n)²+A246639(n)+2`
-/

namespace A001604.P6158530839936261861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n ^ 2 + (A246639 n + 2)

end

end A001604.P6158530839936261861

noncomputable section

/-- A001604: Odd-indexed terms of A124297.

Offset 0, canonical program `A001604.P6158530839936261861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001604 (n : ℕ) : ℤ :=
  A001604.P6158530839936261861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A001604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001643.P6614285391208530488

`A001644(n+1)-3*(-1)^n*A022003(n)`
-/

namespace A001643.P6614285391208530488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) - 3 * (-1) ^ n * A022003 n

end

end A001643.P6614285391208530488

noncomputable section

/-- A001643: A Fielder sequence.

Offset 1, canonical program `A001643.P6614285391208530488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A001643 (n : ℕ) : ℤ :=
  A001643.P6614285391208530488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A001643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001748.P16019639290970068825

`3*A000040(n+1)`
-/

namespace A001748.P16019639290970068825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1)

end

end A001748.P16019639290970068825

noncomputable section

/-- A001748: a(n) = 3 * prime(n).

Offset 1, canonical program `A001748.P16019639290970068825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001748 (n : ℕ) : ℤ :=
  A001748.P16019639290970068825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001839.P17129698917504236910

`A056827(n)+A008612(A141310(n))`
-/

namespace A001839.P17129698917504236910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n + A008612 (A141310 n).toNat

end

end A001839.P17129698917504236910

noncomputable section

/-- A001839: The coding-theoretic function A(n,4,3).

Offset 1, canonical program `A001839.P17129698917504236910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001839 (n : ℕ) : ℤ :=
  A001839.P17129698917504236910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001848.P10444171994025901737

`Δ[A099193(n)]`
-/

namespace A001848.P10444171994025901737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001848.P10444171994025901737

noncomputable section

/-- A001848: Crystal ball sequence for 6-dimensional cubic lattice.

Offset 0, canonical program `A001848.P10444171994025901737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001848 (n : ℕ) : ℤ :=
  A001848.P10444171994025901737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001849.P12742369539019337686

`Δ[A099195(n)]`
-/

namespace A001849.P12742369539019337686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001849.P12742369539019337686

noncomputable section

/-- A001849: Crystal ball sequence for 7-dimensional cubic lattice.

Offset 0, canonical program `A001849.P12742369539019337686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001849 (n : ℕ) : ℤ :=
  A001849.P12742369539019337686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001876.P1528332183595955459

`∑{d}[n, A079998(#-1)]`
-/

namespace A001876.P1528332183595955459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d - 1)

end

end A001876.P1528332183595955459

noncomputable section

/-- A001876: Number of divisors of n of the form 5k+1; a(0)=0.

Offset 0, canonical program `A001876.P1528332183595955459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876 (n : ℕ) : ℤ :=
  A001876.P1528332183595955459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001877.P11806035189121010381

`∑{d}[n, and(1, A047412(#))]`
-/

namespace A001877.P11806035189121010381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A047412 d)

end

end A001877.P11806035189121010381

noncomputable section

/-- A001877: Number of divisors of n of the form 5k+2; a(0) = 0.

Offset 0, canonical program `A001877.P11806035189121010381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877 (n : ℕ) : ℤ :=
  A001877.P11806035189121010381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001878.P13516976986806296717

`∑{d}[n, A079998(#+2)]`
-/

namespace A001878.P13516976986806296717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d + 2)

end

end A001878.P13516976986806296717

noncomputable section

/-- A001878: Number of divisors of n of the form 5k+3; a(0) = 0.

Offset 0, canonical program `A001878.P13516976986806296717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878 (n : ℕ) : ℤ :=
  A001878.P13516976986806296717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001902.P7559069142259162924

`A163590(n+1)*A163590(n)`
-/

namespace A001902.P7559069142259162924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (n + 1) * A163590 n

end

end A001902.P7559069142259162924

noncomputable section

/-- A001902: Successive denominators of Wallis's approximation to Pi/2 (reduced).

Offset 0, canonical program `A001902.P7559069142259162924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001902 (n : ℕ) : ℤ :=
  A001902.P7559069142259162924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A001902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001932.P5972703990113433722

`A000129(n)+A000045(n)`
-/

namespace A001932.P5972703990113433722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + A000045 n

end

end A001932.P5972703990113433722

noncomputable section

/-- A001932: Sum of Fibonacci (A000045) and Pell (A000129) numbers.

Offset 0, canonical program `A001932.P5972703990113433722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A001932 (n : ℕ) : ℤ :=
  A001932.P5972703990113433722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A001932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001956.P12095287555204350252

`A080600(n+1)+n`
-/

namespace A001956.P12095287555204350252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) + (n : ℤ)

end

end A001956.P12095287555204350252

noncomputable section

/-- A001956: Beatty sequence of (5+sqrt(13))/2.

Offset 1, canonical program `A001956.P12095287555204350252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001956 (n : ℕ) : ℤ :=
  A001956.P12095287555204350252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001961.P7272010743382288153

`A005206(Δ[n²])`
-/

namespace A001961.P7272010743382288153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001961.P7272010743382288153

noncomputable section

/-- A001961: A Beatty sequence: floor(n * (sqrt(5) - 1)).

Offset 1, canonical program `A001961.P7272010743382288153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001961 (n : ℕ) : ℤ :=
  A001961.P7272010743382288153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001962.P5973227025376619437

`∑[A081147(n)+3]`
-/

namespace A001962.P5973227025376619437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001962.P5973227025376619437

noncomputable section

/-- A001962: A Beatty sequence: floor(n * (sqrt(5) + 3)).

Offset 1, canonical program `A001962.P5973227025376619437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001962 (n : ℕ) : ℤ :=
  A001962.P5973227025376619437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002011.P13130071181658124903

`record[Δ[A056040(n+2)]]`
-/

namespace A002011.P13130071181658124903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002011.P13130071181658124903

noncomputable section

/-- A002011: a(n) = 4*(2n+1)!/n!^2.

Offset 0, canonical program `A002011.P13130071181658124903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002011 (n : ℕ) : ℤ :=
  A002011.P13130071181658124903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002036.P16723521533802060613

`round(A000040(n+1)/log(A000040(n+1)))`
-/

namespace A002036.P16723521533802060613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℝ) / Real.log (A000040 (n + 1) : ℝ))

end

end A002036.P16723521533802060613

noncomputable section

/-- A002036: Compressed primes: a(n) is the nearest integer to prime(n)/log prime(n).

Offset 1, canonical program `A002036.P16723521533802060613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002036 (n : ℕ) : ℤ :=
  A002036.P16723521533802060613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002160.P4524844669123245809

`floor(A001672(2*n)/A001672(n))`
-/

namespace A002160.P4524844669123245809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001672 (2 * n) : ℚ) / (A001672 n : ℚ)⌋

end

end A002160.P4524844669123245809

noncomputable section

/-- A002160: Nearest integer to Pi^n.

Offset 0, canonical program `A002160.P4524844669123245809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A002160 (n : ℕ) : ℤ :=
  A002160.P4524844669123245809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A002160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002380.P14215614673449155160

`A056577(n)%(2^n)`
-/

namespace A002380.P14215614673449155160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056577 n) (2 ^ n : ℤ)

end

end A002380.P14215614673449155160

noncomputable section

/-- A002380: a(n) = 3^n reduced modulo 2^n.

Offset 0, canonical program `A002380.P14215614673449155160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A002380 (n : ℕ) : ℤ :=
  A002380.P14215614673449155160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A002380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002448.P16712108532167547424

`(-1)^n*A000122(n)`
-/

namespace A002448.P16712108532167547424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000122 n

end

end A002448.P16712108532167547424

noncomputable section

/-- A002448: Expansion of Jacobi theta function theta_4(x).

Offset 0, canonical program `A002448.P16712108532167547424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448 (n : ℕ) : ℤ :=
  A002448.P16712108532167547424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002524.P287131491170197357

`Δ[A002525(n)]`
-/

namespace A002524.P287131491170197357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002524.P287131491170197357

noncomputable section

/-- A002524: Number of permutations of length n within distance 2 of a fixed permutation.

Offset 0, canonical program `A002524.P287131491170197357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A002524 (n : ℕ) : ℤ :=
  A002524.P287131491170197357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A002524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002625.P15000426711150109860

`∑[A097701(n)]`
-/

namespace A002625.P15000426711150109860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002625.P15000426711150109860

noncomputable section

/-- A002625: Expansion of 1/((1-x)^3*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A002625.P15000426711150109860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002625 (n : ℕ) : ℤ :=
  A002625.P15000426711150109860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002626.P11269691705265128584

`∑[∑[A002621(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A002626.P11269691705265128584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002621 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002626.P11269691705265128584

noncomputable section

/-- A002626: Expansion of 1/((1-x)^3 (1-x^2)^2 (1-x^3) (1-x^4)).

Offset 0, canonical program `A002626.P11269691705265128584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002626 (n : ℕ) : ℤ :=
  A002626.P11269691705265128584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002654.P14441847389434732824

`∑{d}[n+1, A056594(#-1)]`
-/

namespace A002654.P14441847389434732824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1)

end

end A002654.P14441847389434732824

noncomputable section

/-- A002654: Number of ways of writing n as a sum of at most two nonzero squares, where order matters; also (number of divisors of n of form 4m+1) - (number of divisors of form 4m+3).

Offset 1, canonical program `A002654.P14441847389434732824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002654 (n : ℕ) : ℤ :=
  A002654.P14441847389434732824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002661.P13861854386065182955

`2*A001405(n)-A028303(n)`
-/

namespace A002661.P13861854386065182955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A028303 n

end

end A002661.P13861854386065182955

noncomputable section

/-- A002661: Least integer having Radon random number n.

Offset 1, canonical program `A002661.P13861854386065182955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A002661 (n : ℕ) : ℤ :=
  A002661.P13861854386065182955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A002661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002698.P4639900874598135504

`A001793(Δ[n²])`
-/

namespace A002698.P4639900874598135504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002698.P4639900874598135504

noncomputable section

/-- A002698: Coefficients of Chebyshev polynomials: n*(2*n-3)*2^(2*n-5).

Offset 2, canonical program `A002698.P4639900874598135504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A002698 (n : ℕ) : ℤ :=
  A002698.P4639900874598135504.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A002698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002739.P9106388153363171491

`(3*A000292(n)+1)/2*A000108(n+2)`
-/

namespace A002739.P9106388153363171491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000292 n + 1 : ℚ) / 2 * (A000108 (n + 2) : ℚ)

end

end A002739.P9106388153363171491

noncomputable section

/-- A002739: a(n) = ((2*n-1)!/(2*n!*(n-2)!))*((n^3-3*n^2+2*n+2)/(n^2-1)).

Offset 2, canonical program `A002739.P9106388153363171491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A002739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002739.P9106388153363171491.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A002739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002804.P1970911136828351765

`∑[A000079(n)+Δ[A002379(n)]]`
-/

namespace A002804.P1970911136828351765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002804.P1970911136828351765

noncomputable section

/-- A002804: (Presumed) solution to Waring's problem: g(n) = 2^n + floor((3/2)^n) - 2.

Offset 1, canonical program `A002804.P1970911136828351765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A002804 (n : ℕ) : ℤ :=
  A002804.P1970911136828351765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A002804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002938.P11008138429574408607

`abs(A077119(n+1))`
-/

namespace A002938.P11008138429574408607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077119 (n + 1)|

end

end A002938.P11008138429574408607

noncomputable section

/-- A002938: The minimal sequence from solving n^3 - m^2 = a(n).

Offset 1, canonical program `A002938.P11008138429574408607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002938 (n : ℕ) : ℤ :=
  A002938.P11008138429574408607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002941.P13777255562258902735

`∑[∑[∑[A054455(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A002941.P13777255562258902735
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A054455 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002941.P13777255562258902735

noncomputable section

/-- A002941: Arrays of dumbbells.

Offset 1, canonical program `A002941.P13777255562258902735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A002941 (n : ℕ) : ℤ :=
  A002941.P13777255562258902735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A002941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002993.P8258847895073826332

`A000030(A000290(n))`
-/

namespace A002993.P8258847895073826332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000290 n).toNat

end

end A002993.P8258847895073826332

noncomputable section

/-- A002993: Initial digits of squares.

Offset 0, canonical program `A002993.P8258847895073826332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002993 (n : ℕ) : ℤ :=
  A002993.P8258847895073826332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003070.P9410696812712733123

`A072831(n)-round(1/A001399(n))`
-/

namespace A003070.P9410696812712733123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - SequenceMachineLib.roundAway (1 / (A001399 n : ℚ))

end

end A003070.P9410696812712733123

noncomputable section

/-- A003070: a(n) = ceiling(log_2 n!).

Offset 0, canonical program `A003070.P9410696812712733123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003070 (n : ℕ) : ℤ :=
  A003070.P9410696812712733123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003124.P4124040314412767087

`A001281(a(n-1))` with `a(0)=17`
-/

namespace A003124.P4124040314412767087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A003124.P4124040314412767087

noncomputable section

/-- A003124: One of the basic cycles in the x->3x-1 (x odd) or x/2 (x even) problem.

Offset 0, canonical program `A003124.P4124040314412767087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003124 (n : ℕ) : ℤ :=
  A003124.P4124040314412767087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003143.P170074439756737904

`ceil(∑[A070875(n)/14])`
-/

namespace A003143.P170074439756737904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070875 n : ℚ) / 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A003143.P170074439756737904

noncomputable section

/-- A003143: a(2*n) = floor( 17*2^n/14 ), a(2*n+1) = floor( 12*2^n/7 ).

Offset 0, canonical program `A003143.P170074439756737904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A003143 (n : ℕ) : ℤ :=
  A003143.P170074439756737904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. -/
def A003143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003152.P13949888192298654064

`A049474(n+1)+n`
-/

namespace A003152.P13949888192298654064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) + (n : ℤ)

end

end A003152.P13949888192298654064

noncomputable section

/-- A003152: A Beatty sequence: a(n) = floor(n*(1+1/sqrt(2))).

Offset 1, canonical program `A003152.P13949888192298654064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003152 (n : ℕ) : ℤ :=
  A003152.P13949888192298654064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003153.P6845737672250134616

`∑[Δ[A022846(n)]+1]`
-/

namespace A003153.P6845737672250134616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003153.P6845737672250134616

noncomputable section

/-- A003153: a(n) = integer nearest n*(1+sqrt(2)).

Offset 1, canonical program `A003153.P6845737672250134616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003153 (n : ℕ) : ℤ :=
  A003153.P6845737672250134616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003176.P637014668105139324

`floor(12/(n+1)*∑[A000079(n+1)])`
-/

namespace A003176.P637014668105139324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊12 / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A003176.P637014668105139324

noncomputable section

/-- A003176: Integer part of 24(2^n-1)/n.

Offset 1, canonical program `A003176.P637014668105139324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003176 (n : ℕ) : ℤ :=
  A003176.P637014668105139324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003230.P16513103583641227680

`∑[A077949(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A003230.P16513103583641227680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A077949 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003230.P16513103583641227680

noncomputable section

/-- A003230: Expansion of 1/((1-x)*(1-2*x)*(1-x-2*x^3)).

Offset 0, canonical program `A003230.P16513103583641227680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A003230 (n : ℕ) : ℤ :=
  A003230.P16513103583641227680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A003230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003251.P1917370162487777075

`eq[1, gcd(5, A060144(n)+n)]`
-/

namespace A003251.P1917370162487777075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A060144 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P1917370162487777075

noncomputable section

/-- A003251: Complement of A003250.

Offset 1, canonical program `A003251.P1917370162487777075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A003251 (n : ℕ) : ℤ :=
  (A003251.P1917370162487777075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A003251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003253.P3479415574087350811

`A060144(A003233(n+1))+n+1`
-/

namespace A003253.P3479415574087350811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A003233 (n + 1)).toNat + (n + 1 : ℤ)

end

end A003253.P3479415574087350811

noncomputable section

/-- A003253: Complement of A003252.

Offset 1, canonical program `A003253.P3479415574087350811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7205 terms. -/
def A003253 (n : ℕ) : ℤ :=
  A003253.P3479415574087350811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7205 terms. -/
def A003253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003274.P13554162099470737190

`A069241(n)+A069241(n)%A069241(n+1)`
-/

namespace A003274.P13554162099470737190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n + Int.tmod (A069241 n) (A069241 (n + 1))

end

end A003274.P13554162099470737190

noncomputable section

/-- A003274: Number of key permutations of length n: permutations {a_i} with |a_i - a_{i-1}| = 1 or 2.

Offset 0, canonical program `A003274.P13554162099470737190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. -/
def A003274 (n : ℕ) : ℤ :=
  A003274.P13554162099470737190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. -/
def A003274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003314.P6412274646325339877

`A001855(n+1)+n`
-/

namespace A003314.P6412274646325339877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) + (n : ℤ)

end

end A003314.P6412274646325339877

noncomputable section

/-- A003314: Binary entropy function: a(1)=0; for n > 1, a(n) = n + min { a(k)+a(n-k) : 1 <= k <= n-1 }.

Offset 1, canonical program `A003314.P6412274646325339877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003314 (n : ℕ) : ℤ :=
  A003314.P6412274646325339877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003467.P10500411441833371577

`(lcm(2, 4^n)+3)*A000292(n+1)`
-/

namespace A003467.P10500411441833371577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) + 3 : ℤ) * A000292 (n + 1)

end

end A003467.P10500411441833371577

noncomputable section

/-- A003467: Number of minimal covers of an n-set that cover exactly 3 points uniquely.

Offset 3, canonical program `A003467.P10500411441833371577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A003467 (n : ℕ) : ℤ :=
  A003467.P10500411441833371577.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A003467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003468.P1649577982686509901

`Δ[A021754(n)-A021744(n)]`
-/

namespace A003468.P1649577982686509901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021754 n - A021744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003468.P1649577982686509901

noncomputable section

/-- A003468: Number of minimal 3-covers of a labeled n-set.

Offset 3, canonical program `A003468.P1649577982686509901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A003468 (n : ℕ) : ℤ :=
  A003468.P1649577982686509901.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A003468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003469.P6082323582273445021

`∑[∑[A047859(n)]]`
-/

namespace A003469.P6082323582273445021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003469.P6082323582273445021

noncomputable section

/-- A003469: Number of minimal covers of an (n + 1)-set by a collection of n nonempty subsets, a(n) = A035348(n,n-1).

Offset 1, canonical program `A003469.P6082323582273445021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A003469 (n : ℕ) : ℤ :=
  A003469.P6082323582273445021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A003469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003477.P11158735837685853929

`∑[Δ[A077854(n)]-A003229(n)]`
-/

namespace A003477.P11158735837685853929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P11158735837685853929

noncomputable section

/-- A003477: Expansion of 1/((1-2x)(1+x^2)(1-x-2x^3)).

Offset 0, canonical program `A003477.P11158735837685853929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003477 (n : ℕ) : ℤ :=
  A003477.P11158735837685853929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003478.P8534970989444448014

`2^(n+2)-A003476(n+3)`
-/

namespace A003478.P8534970989444448014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A003476 (n + 3)

end

end A003478.P8534970989444448014

noncomputable section

/-- A003478: Expansion of 1/((1-2*x)*(1-x-2*x^3)).

Offset 0, canonical program `A003478.P8534970989444448014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003478 (n : ℕ) : ℤ :=
  A003478.P8534970989444448014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003512.P15436312357288728099

`∑[4-Δ[A195120(n)]]`
-/

namespace A003512.P15436312357288728099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003512.P15436312357288728099

noncomputable section

/-- A003512: A Beatty sequence: floor(n*(sqrt(3) + 2)).

Offset 1, canonical program `A003512.P15436312357288728099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003512 (n : ℕ) : ℤ :=
  A003512.P15436312357288728099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003632.P12204109187370661191

`p?[A047415(n+2)+A008620(n+1)]`
-/

namespace A003632.P12204109187370661191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (n + 2) + A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A003632.P12204109187370661191

noncomputable section

/-- A003632: Inert rational primes in Q(sqrt 7), or, 7 is not a square mod p.

Offset 1, canonical program `A003632.P12204109187370661191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A003632 (n : ℕ) : ℤ :=
  A003632.P12204109187370661191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A003632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004058.P5511295671970083369

`A004057(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A004058.P5511295671970083369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004057 n + 5 * a (n - 1)

end

end A004058.P5511295671970083369

noncomputable section

/-- A004058: Expansion of (1-x)/( (1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

Offset 0, canonical program `A004058.P5511295671970083369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A004058 (n : ℕ) : ℤ :=
  A004058.P5511295671970083369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A004058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004074.P7923375237967652699

`2*A004001(n+1)-(n+1)`
-/

namespace A004074.P7923375237967652699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004001 (n + 1) - (n + 1 : ℤ)

end

end A004074.P7923375237967652699

noncomputable section

/-- A004074: a(n) = 2*A004001(n) - n, where A004001 is the Hofstadter-Conway $10000 sequence.

Offset 1, canonical program `A004074.P7923375237967652699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004074 (n : ℕ) : ℤ :=
  A004074.P7923375237967652699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004082.P5799483427101964031

`A000027(A038130(n)+1)`
-/

namespace A004082.P5799483427101964031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A038130 n + 1).toNat

end

end A004082.P5799483427101964031

noncomputable section

/-- A004082: Numbers k such that sin(k-1) <= 0 and sin(k) > 0.

Offset 1, canonical program `A004082.P5799483427101964031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004082 (n : ℕ) : ℤ :=
  A004082.P5799483427101964031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004232.P3456609317362794228

`(n+1)²+A000040(n+1)`
-/

namespace A004232.P3456609317362794228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000040 (n + 1)

end

end A004232.P3456609317362794228

noncomputable section

/-- A004232: a(n) = n^2 + prime(n).

Offset 1, canonical program `A004232.P3456609317362794228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004232 (n : ℕ) : ℤ :=
  A004232.P3456609317362794228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004236.P5664082068911770251

`C(n, C(n, n²))+A004234(n+1)`
-/

namespace A004236.P5664082068911770251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A004234 (n + 1)

end

end A004236.P5664082068911770251

noncomputable section

/-- A004236: a(n) = ceiling(10*log(n)).

Offset 1, canonical program `A004236.P5664082068911770251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004236 (n : ℕ) : ℤ :=
  A004236.P5664082068911770251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004239.P11371760278727843198

`C(n, C(n, n²))+A004237(n+1)`
-/

namespace A004239.P11371760278727843198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A004237 (n + 1)

end

end A004239.P11371760278727843198

noncomputable section

/-- A004239: a(n) = ceiling(100*log(n)).

Offset 1, canonical program `A004239.P11371760278727843198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004239 (n : ℕ) : ℤ :=
  A004239.P11371760278727843198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004242.P15112625310557261231

`A004240(n+1)+n²%(n+1)`
-/

namespace A004242.P15112625310557261231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004240 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A004242.P15112625310557261231

noncomputable section

/-- A004242: a(n) = ceiling(1000*log(n)).

Offset 1, canonical program `A004242.P15112625310557261231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004242 (n : ℕ) : ℤ :=
  A004242.P15112625310557261231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004245.P6957919564192117304

`C(n, C(n, n²))+A004243(n+1)`
-/

namespace A004245.P6957919564192117304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A004243 (n + 1)

end

end A004245.P6957919564192117304

noncomputable section

/-- A004245: a(n) = ceiling(10000*log(n)).

Offset 1, canonical program `A004245.P6957919564192117304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004245 (n : ℕ) : ℤ :=
  A004245.P6957919564192117304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004257.P11512698779874892138

`floor(log2(A258833(n)))`
-/

namespace A004257.P11512698779874892138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A258833 n).toNat

end

end A004257.P11512698779874892138

noncomputable section

/-- A004257: a(n) = round(log_2(n)).

Offset 1, canonical program `A004257.P11512698779874892138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004257 (n : ℕ) : ℤ :=
  (A004257.P11512698779874892138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004319.P3223308323051499873

`(n+1)*A001764(n+1)`
-/

namespace A004319.P3223308323051499873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001764 (n + 1)

end

end A004319.P3223308323051499873

noncomputable section

/-- A004319: a(n) = binomial(3*n, n - 1).

Offset 1, canonical program `A004319.P3223308323051499873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A004319 (n : ℕ) : ℤ :=
  A004319.P3223308323051499873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A004319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004397.P16354363738548432188

`p?[A001057(n)]+A000045(n+1)`
-/

namespace A004397.P16354363738548432188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (n + 1)

end

end A004397.P16354363738548432188

noncomputable section

/-- A004397: a(n) = prime(n) + Fibonacci(n).

Offset 1, canonical program `A004397.P16354363738548432188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A004397 (n : ℕ) : ℤ :=
  A004397.P16354363738548432188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A004397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004399.P16707702161054049742

`A020695(n)+p?[A001057(n)]`
-/

namespace A004399.P16707702161054049742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004399.P16707702161054049742

noncomputable section

/-- A004399: a(n) = Fibonacci(n+2) + prime(n).

Offset 1, canonical program `A004399.P16707702161054049742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A004399 (n : ℕ) : ℤ :=
  A004399.P16707702161054049742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A004399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004493.P4263672960169498817

`A004492(A004482(n))`
-/

namespace A004493.P4263672960169498817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 (A004482 n).toNat

end

end A004493.P4263672960169498817

noncomputable section

/-- A004493: Tersum n + 4.

Offset 0, canonical program `A004493.P4263672960169498817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004493 (n : ℕ) : ℤ :=
  A004493.P4263672960169498817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004496.P2249230315701298314

`A004495(A004482(n))`
-/

namespace A004496.P2249230315701298314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (A004482 n).toNat

end

end A004496.P2249230315701298314

noncomputable section

/-- A004496: Tersum n + 7.

Offset 0, canonical program `A004496.P2249230315701298314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004496 (n : ℕ) : ℤ :=
  A004496.P2249230315701298314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004540.P11230005680064243108

`A221944(2*n)%3`
-/

namespace A004540.P11230005680064243108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (2 * n)) 3

end

end A004540.P11230005680064243108

noncomputable section

/-- A004540: Expansion of sqrt(2) in base 3.

Offset 1, canonical program `A004540.P11230005680064243108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004540 (n : ℕ) : ℤ :=
  A004540.P11230005680064243108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004542.P2609492655697361213

`A221945(2*n)%5`
-/

namespace A004542.P2609492655697361213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221945 (2 * n)) 5

end

end A004542.P2609492655697361213

noncomputable section

/-- A004542: Expansion of sqrt(2) in base 5.

Offset 1, canonical program `A004542.P2609492655697361213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004542 (n : ℕ) : ℤ :=
  A004542.P2609492655697361213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004544.P14090878640019133571

`A221946(2*n)%7`
-/

namespace A004544.P14090878640019133571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221946 (2 * n)) 7

end

end A004544.P14090878640019133571

noncomputable section

/-- A004544: Expansion of sqrt(2) in base 7.

Offset 1, canonical program `A004544.P14090878640019133571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A004544 (n : ℕ) : ℤ :=
  A004544.P14090878640019133571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A004544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004546.P16106512506241214683

`A221944(4*n)%9`
-/

namespace A004546.P16106512506241214683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (4 * n)) 9

end

end A004546.P16106512506241214683

noncomputable section

/-- A004546: Expansion of sqrt(2) in base 9.

Offset 1, canonical program `A004546.P16106512506241214683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004546 (n : ℕ) : ℤ :=
  A004546.P16106512506241214683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004548.P9215137426199546943

`dr(A017913(2*n+1)%3)`
-/

namespace A004548.P9215137426199546943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A017913 (2 * n + 1)) 3)

end

end A004548.P9215137426199546943

noncomputable section

/-- A004548: Expansion of sqrt(3) in base 3.

Offset 1, canonical program `A004548.P9215137426199546943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004548 (n : ℕ) : ℤ :=
  (A004548.P9215137426199546943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A004548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004549.P6849516851646129098

`A094386(2*n+1)%4`
-/

namespace A004549.P6849516851646129098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (2 * n + 1)) 4

end

end A004549.P6849516851646129098

noncomputable section

/-- A004549: Expansion of sqrt(3) in base 4.

Offset 1, canonical program `A004549.P6849516851646129098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004549 (n : ℕ) : ℤ :=
  A004549.P6849516851646129098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A004549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004553.P17094153890970716795

`A221718(6*n)%8`
-/

namespace A004553.P17094153890970716795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (6 * n)) 8

end

end A004553.P17094153890970716795

noncomputable section

/-- A004553: Expansion of sqrt(3) in base 8.

Offset 1, canonical program `A004553.P17094153890970716795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004553 (n : ℕ) : ℤ :=
  A004553.P17094153890970716795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004554.P2446996440457271753

`A017913(4*n+1)%9`
-/

namespace A004554.P2446996440457271753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017913 (4 * n + 1)) 9

end

end A004554.P2446996440457271753

noncomputable section

/-- A004554: Expansion of sqrt(3) in base 9.

Offset 1, canonical program `A004554.P2446996440457271753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004554 (n : ℕ) : ℤ :=
  A004554.P2446996440457271753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004556.P9684879054066935319

`floor(sqrt(A198962(n)))%3`
-/

namespace A004556.P9684879054066935319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A198962 n)) 3

end

end A004556.P9684879054066935319

noncomputable section

/-- A004556: Expansion of sqrt(5) in base 3.

Offset 1, canonical program `A004556.P9684879054066935319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004556 (n : ℕ) : ℤ :=
  A004556.P9684879054066935319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004558.P4442881765870322193

`A017919(2*n+1)%5`
-/

namespace A004558.P4442881765870322193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017919 (2 * n + 1)) 5

end

end A004558.P4442881765870322193

noncomputable section

/-- A004558: Expansion of sqrt(5) in base 5.

Offset 1, canonical program `A004558.P4442881765870322193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004558 (n : ℕ) : ℤ :=
  A004558.P4442881765870322193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004561.P2140334228168708990

`A221942(A008588(n))%8`
-/

namespace A004561.P2140334228168708990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221942 (A008588 n).toNat) 8

end

end A004561.P2140334228168708990

noncomputable section

/-- A004561: Expansion of sqrt(5) in base 8.

Offset 1, canonical program `A004561.P2140334228168708990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004561 (n : ℕ) : ℤ :=
  A004561.P2140334228168708990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004565.P14315501333199100927

`A017922(2*n+1)%6`
-/

namespace A004565.P14315501333199100927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017922 (2 * n + 1)) 6

end

end A004565.P14315501333199100927

noncomputable section

/-- A004565: Expansion of sqrt(6) in base 6.

Offset 1, canonical program `A004565.P14315501333199100927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A004565 (n : ℕ) : ℤ :=
  A004565.P14315501333199100927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A004565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004567.P15535764283866829389

`A221718(6*n+1)%8`
-/

namespace A004567.P15535764283866829389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (6 * n + 1)) 8

end

end A004567.P15535764283866829389

noncomputable section

/-- A004567: Expansion of sqrt(6) in base 8.

Offset 1, canonical program `A004567.P15535764283866829389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004567 (n : ℕ) : ℤ :=
  A004567.P15535764283866829389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004568.P7165566380675965637

`A221944(4*n+1)%9`
-/

namespace A004568.P7165566380675965637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (4 * n + 1)) 9

end

end A004568.P7165566380675965637

noncomputable section

/-- A004568: Expansion of sqrt(6) in base 9.

Offset 1, canonical program `A004568.P7165566380675965637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004568 (n : ℕ) : ℤ :=
  A004568.P7165566380675965637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004569.P9129839962585521232

`and(2, A221943(2*n))/2`
-/

namespace A004569.P9129839962585521232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A221943 (2 * n)) : ℚ) / 2

end

end A004569.P9129839962585521232

noncomputable section

/-- A004569: Expansion of sqrt(7) in base 2.

Offset 2, canonical program `A004569.P9129839962585521232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004569.P9129839962585521232.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004574.P18301511294695238640

`A017925(2*n+1)%7`
-/

namespace A004574.P18301511294695238640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017925 (2 * n + 1)) 7

end

end A004574.P18301511294695238640

noncomputable section

/-- A004574: Expansion of sqrt(7) in base 7.

Offset 1, canonical program `A004574.P18301511294695238640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A004574 (n : ℕ) : ℤ :=
  A004574.P18301511294695238640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A004574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004575.P15716396964342662133

`and(7, A221943(6*n))`
-/

namespace A004575.P15716396964342662133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A221943 (6 * n))

end

end A004575.P15716396964342662133

noncomputable section

/-- A004575: Expansion of sqrt(7) in base 8.

Offset 1, canonical program `A004575.P15716396964342662133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004575 (n : ℕ) : ℤ :=
  A004575.P15716396964342662133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004585.P7732518386118126900

`and(2, A221942(2*n+1))/2`
-/

namespace A004585.P7732518386118126900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A221942 (2 * n + 1)) : ℚ) / 2

end

end A004585.P7732518386118126900

noncomputable section

/-- A004585: Expansion of sqrt(10) in base 2.

Offset 2, canonical program `A004585.P7732518386118126900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004585.P7732518386118126900.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A004585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004588.P9751913097939409600

`A221945(2*n+1)%5`
-/

namespace A004588.P9751913097939409600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221945 (2 * n + 1)) 5

end

end A004588.P9751913097939409600

noncomputable section

/-- A004588: Expansion of sqrt(10) in base 5.

Offset 1, canonical program `A004588.P9751913097939409600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004588 (n : ℕ) : ℤ :=
  A004588.P9751913097939409600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A004588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004591.P12752315265161502023

`and(7, A221942(6*n+1))`
-/

namespace A004591.P12752315265161502023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A221942 (6 * n + 1))

end

end A004591.P12752315265161502023

noncomputable section

/-- A004591: Expansion of sqrt(10) in base 8.

Offset 1, canonical program `A004591.P12752315265161502023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004591 (n : ℕ) : ℤ :=
  A004591.P12752315265161502023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004599.P11205641395720963001

`A027437(3*n)%8`
-/

namespace A004599.P11205641395720963001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027437 (3 * n)) 8

end

end A004599.P11205641395720963001

noncomputable section

/-- A004599: Expansion of e in base 8.

Offset 1, canonical program `A004599.P11205641395720963001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004599 (n : ℕ) : ℤ :=
  A004599.P11205641395720963001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004609.P6114762697630435467

`A221718(A004273(n))%2`
-/

namespace A004609.P6114762697630435467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221718 (A004273 n).toNat) 2

end

end A004609.P6114762697630435467

noncomputable section

/-- A004609: Expansion of sqrt(6) in base 2.

Offset 2, canonical program `A004609.P6114762697630435467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004609 (n : ℕ) : ℤ :=
  A004609.P6114762697630435467.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A004609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004610.P5182888975923859271

`A221944(2*n+1)%3`
-/

namespace A004610.P5182888975923859271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221944 (2 * n + 1)) 3

end

end A004610.P5182888975923859271

noncomputable section

/-- A004610: Expansion of sqrt(6) in base 3.

Offset 1, canonical program `A004610.P5182888975923859271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A004610 (n : ℕ) : ℤ :=
  A004610.P5182888975923859271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A004610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004648.P171968973179240133

`A000040(n+1)%(n+1)`
-/

namespace A004648.P171968973179240133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

end

end A004648.P171968973179240133

noncomputable section

/-- A004648: a(n) = prime(n) mod n.

Offset 1, canonical program `A004648.P171968973179240133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004648 (n : ℕ) : ℤ :=
  A004648.P171968973179240133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004650.P17268089652292632579

`A000040(n+1)%(n+2)`
-/

namespace A004650.P17268089652292632579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 2 : ℤ)

end

end A004650.P17268089652292632579

noncomputable section

/-- A004650: a(n) = prime(n) mod (n+1).

Offset 1, canonical program `A004650.P17268089652292632579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004650 (n : ℕ) : ℤ :=
  A004650.P17268089652292632579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004657.P16856009008547295625

`∑[ceil(A028242(n)²/2)]`
-/

namespace A004657.P16856009008547295625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028242 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004657.P16856009008547295625

noncomputable section

/-- A004657: Expansion of g.f.: (1+x^3)*(1+x^4)/((1-x)*(1-x^2)^2*(1-x^4)).

Offset 0, canonical program `A004657.P16856009008547295625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004657 (n : ℕ) : ℤ :=
  A004657.P16856009008547295625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004737.P12416270940268694316

`A053615(A028391(n))+1`
-/

namespace A004737.P12416270940268694316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028391 n).toNat + 1

end

end A004737.P12416270940268694316

noncomputable section

/-- A004737: Concatenation of sequences (1,2,...,n-1,n,n-1,...,1) for n >= 1.

Offset 1, canonical program `A004737.P12416270940268694316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737 (n : ℕ) : ℤ :=
  A004737.P12416270940268694316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004738.P4500093825019851129

`A053615(n)+1`
-/

namespace A004738.P4500093825019851129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + 1

end

end A004738.P4500093825019851129

noncomputable section

/-- A004738: Concatenation of sequences (1,2,...,n-1,n,n-1,...,2) for n >= 2.

Offset 1, canonical program `A004738.P4500093825019851129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004738 (n : ℕ) : ℤ :=
  A004738.P4500093825019851129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004758.P9078973066399011354

`A053644(n+1)+A004757(n+1)`
-/

namespace A004758.P9078973066399011354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A004757 (n + 1)

end

end A004758.P9078973066399011354

noncomputable section

/-- A004758: Binary expansion starts 110.

Offset 1, canonical program `A004758.P9078973066399011354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004758 (n : ℕ) : ℤ :=
  A004758.P9078973066399011354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004763.P9187450148109065970

`A004526(A004761(n+1)-n)+n`
-/

namespace A004763.P9187450148109065970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004761 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A004763.P9187450148109065970

noncomputable section

/-- A004763: Numbers whose binary expansion does not begin 101.

Offset 1, canonical program `A004763.P9187450148109065970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004763 (n : ℕ) : ℤ :=
  A004763.P9187450148109065970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004793.P14402439767548149062

`A003278(n+1)+n%2`
-/

namespace A004793.P14402439767548149062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A004793.P14402439767548149062

noncomputable section

/-- A004793: a(1)=1, a(2)=3; a(n) is least k such that no three terms of a(1), a(2), ..., a(n-1), k form an arithmetic progression.

Offset 1, canonical program `A004793.P14402439767548149062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004793 (n : ℕ) : ℤ :=
  A004793.P14402439767548149062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004799.P16158744165044827284

`A097039(n)+A053311(n)`
-/

namespace A004799.P16158744165044827284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097039 n + A053311 n

end

end A004799.P16158744165044827284

noncomputable section

/-- A004799: Self-convolution of Lucas numbers.

Offset 1, canonical program `A004799.P16158744165044827284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A004799 (n : ℕ) : ℤ :=
  A004799.P16158744165044827284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A004799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004982.P10117647933676475083

`(n+1)*A048779(n+1)`
-/

namespace A004982.P10117647933676475083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048779 (n + 1)

end

end A004982.P10117647933676475083

noncomputable section

/-- A004982: a(n) = (2^n/n!) * Product_{k=0..n-1} (4*k + 3).

Offset 0, canonical program `A004982.P10117647933676475083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A004982 (n : ℕ) : ℤ :=
  A004982.P10117647933676475083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A004982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004985.P8851749625276327124

`A004981(n)*(4*n+1)`
-/

namespace A004985.P8851749625276327124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n * (4 * n + 1 : ℤ)

end

end A004985.P8851749625276327124

noncomputable section

/-- A004985: a(n) = (2^n/n!)*Product_{k=0..n-1} (4*k + 5).

Offset 0, canonical program `A004985.P8851749625276327124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004985 (n : ℕ) : ℤ :=
  A004985.P8851749625276327124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A004985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004991.P16565924391553142663

`A004987(n)*A016777(n)`
-/

namespace A004991.P16565924391553142663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n * A016777 n

end

end A004991.P16565924391553142663

noncomputable section

/-- A004991: a(n) = (3^n/n!) * Product_{k=0..n-1} (3*k + 4).

Offset 0, canonical program `A004991.P16565924391553142663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991 (n : ℕ) : ℤ :=
  A004991.P16565924391553142663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A004991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005025.P15515043106583685117

`∑[A370568(n+1)]+1`
-/

namespace A005025.P15515043106583685117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005025.P15515043106583685117

noncomputable section

/-- A005025: Random walks.

Offset 1, canonical program `A005025.P15515043106583685117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A005025 (n : ℕ) : ℤ :=
  A005025.P15515043106583685117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A005025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005041.P6486639920027005482

`A073188(n-a(n-1))+1` with `a(0)=1`
-/

namespace A005041.P6486639920027005482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073188 ((n : ℤ) - a (n - 1)).toNat + 1

end

end A005041.P6486639920027005482

noncomputable section

/-- A005041: Positive integers k repeated ceiling(k/3) + 1 times.

Offset 0, canonical program `A005041.P6486639920027005482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005041 (n : ℕ) : ℤ :=
  A005041.P6486639920027005482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005067.P12357016515883756031

`A005064(n+1)-8*n%2`
-/

namespace A005067.P12357016515883756031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - ((8 * (n % 2) : ℕ) : ℤ)

end

end A005067.P12357016515883756031

noncomputable section

/-- A005067: Sum of cubes of odd primes dividing n.

Offset 1, canonical program `A005067.P12357016515883756031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067 (n : ℕ) : ℤ :=
  A005067.P12357016515883756031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005074.P10881599590508594830

`∑{p}[n+1, #*A131380(#)%2]`
-/

namespace A005074.P10881599590508594830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * Int.tmod (A131380 p) 2

end

end A005074.P10881599590508594830

noncomputable section

/-- A005074: Sum of primes = 2 mod 3 dividing n.

Offset 1, canonical program `A005074.P10881599590508594830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005074 (n : ℕ) : ℤ :=
  A005074.P10881599590508594830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005083.P15372277064922864863

`∑{p}[n+1, A005082(#)²]`
-/

namespace A005083.P15372277064922864863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005082 p ^ 2

end

end A005083.P15372277064922864863

noncomputable section

/-- A005083: Sum of squares of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005083.P15372277064922864863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005083 (n : ℕ) : ℤ :=
  A005083.P15372277064922864863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005094.P4862257646653841086

`A005089(n+1)-A005091(n+1)`
-/

namespace A005094.P4862257646653841086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1) - A005091 (n + 1)

end

end A005094.P4862257646653841086

noncomputable section

/-- A005094: Number of distinct primes of the form 4k+1 dividing n minus number of distinct primes of the form 4k+3 dividing n.

Offset 1, canonical program `A005094.P4862257646653841086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005094 (n : ℕ) : ℤ :=
  A005094.P4862257646653841086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005099.P16814233129974845155

`(A002145(n+1)+1)/4`
-/

namespace A005099.P16814233129974845155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 1 : ℚ) / 4

end

end A005099.P16814233129974845155

noncomputable section

/-- A005099: (( Primes == -1 (mod 4) ) + 1)/4.

Offset 1, canonical program `A005099.P16814233129974845155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005099.P16814233129974845155.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005181.P8418560770788744835

`∑[A306486(abs(1-n))]`
-/

namespace A005181.P8418560770788744835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005181.P8418560770788744835

noncomputable section

/-- A005181: a(n) = ceiling(exp((n-1)/2)).

Offset 0, canonical program `A005181.P8418560770788744835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181 (n : ℕ) : ℤ :=
  A005181.P8418560770788744835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005211.P18254895563136852198

`record[A005210(n+1)]`
-/

namespace A005211.P18254895563136852198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005211.P18254895563136852198

noncomputable section

/-- A005211: Record values in A005210.

Offset 1, canonical program `A005211.P18254895563136852198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A005211 (n : ℕ) : ℤ :=
  A005211.P18254895563136852198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A005211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005230.P10896589318031929858

`Δ[A005318(n)]`
-/

namespace A005230.P10896589318031929858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005230.P10896589318031929858

noncomputable section

/-- A005230: Stern's sequence: a(1) = 1, a(n+1) is the sum of the m preceding terms, where m*(m-1)/2 < n <= m*(m+1)/2 or equivalently m = ceiling((sqrt(8*n+1)-1)/2) = A002024(n).

Offset 1, canonical program `A005230.P10896589318031929858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005230 (n : ℕ) : ℤ :=
  A005230.P10896589318031929858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005246.P17372703444875869027

`A122573(n+1)+Δ[A122573(n+1)/2]`
-/

namespace A005246.P17372703444875869027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122573 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122573 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A005246.P17372703444875869027

noncomputable section

/-- A005246: a(n) = (1 + a(n-1)*a(n-2))/a(n-3), a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A005246.P17372703444875869027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A005246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005246.P17372703444875869027.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A005246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005253.P15607668375944119742

`A001687(2*n+3)`
-/

namespace A005253.P15607668375944119742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (2 * n + 3)

end

end A005253.P15607668375944119742

noncomputable section

/-- A005253: Number of binary words of length n in which the ones occur only in blocks of length at least 4.

Offset 0, canonical program `A005253.P15607668375944119742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A005253 (n : ℕ) : ℤ :=
  A005253.P15607668375944119742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A005253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005313.P14584381901335830950

`A064831(n)+1+n`
-/

namespace A005313.P14584381901335830950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + 1 + (n : ℤ)

end

end A005313.P14584381901335830950

noncomputable section

/-- A005313: Maximal sum of inverse squares of the singular values of triangular anti-Hadamard matrices of order n.

Offset 1, canonical program `A005313.P14584381901335830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A005313 (n : ℕ) : ℤ :=
  A005313.P14584381901335830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A005313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005403.P13500853019131369691

`A000045(n+5)-A013979(n+6)`
-/

namespace A005403.P13500853019131369691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) - A013979 (n + 6)

end

end A005403.P13500853019131369691

noncomputable section

/-- A005403: Number of protruded partitions of n with largest part at most 2.

Offset 1, canonical program `A005403.P13500853019131369691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A005403 (n : ℕ) : ℤ :=
  A005403.P13500853019131369691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A005403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005521.P885099194916779393

`∑[floor(A000040(n+1)/2)]`
-/

namespace A005521.P885099194916779393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005521.P885099194916779393

noncomputable section

/-- A005521: 1 + (sum of first n odd primes - n)/2.

Offset 0, canonical program `A005521.P885099194916779393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005521 (n : ℕ) : ℤ :=
  A005521.P885099194916779393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005567.P6007281572393295764

`∑[(n+5)*A036799(n+1)]`
-/

namespace A005567.P6007281572393295764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A036799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005567.P6007281572393295764

noncomputable section

/-- A005567: Number of walks on square lattice.

Offset 0, canonical program `A005567.P6007281572393295764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A005567 (n : ℕ) : ℤ :=
  A005567.P6007281572393295764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A005567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005593.P3210736227062726643

`∑[∑[A049680(n)]]-A001911(n)`
-/

namespace A005593.P3210736227062726643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001911 n

end

end A005593.P3210736227062726643

noncomputable section

/-- A005593: a(n) = (F(2n+1) + F(2n-1) + F(n+3) - 2)/2, where F() = Fibonacci numbers A000045.

Offset 1, canonical program `A005593.P3210736227062726643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A005593 (n : ℕ) : ℤ :=
  A005593.P3210736227062726643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A005593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005674.P5964039898556817370

`A007179(n)-Δ[A295731(n)]`
-/

namespace A005674.P5964039898556817370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n - (f1 (n + 1) - f1 n)

end

end A005674.P5964039898556817370

noncomputable section

/-- A005674: a(n) = 2^(n-1) + 2^[ n/2 ] + 2^[ (n-1)/2 ] - F(n+3).

Offset 0, canonical program `A005674.P5964039898556817370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005674 (n : ℕ) : ℤ :=
  A005674.P5964039898556817370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A005674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005685.P8577841201564284981

`A001224(n+1)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A005685.P8577841201564284981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001224 (n + 1) - (a (n - 2) - a (n - 1))

end

end A005685.P8577841201564284981

noncomputable section

/-- A005685: Number of Twopins positions.

Offset 4, canonical program `A005685.P8577841201564284981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A005685 (n : ℕ) : ℤ :=
  A005685.P8577841201564284981.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A005685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005689.P7428963177813137816

`Δ[A392541(n+4)]`
-/

namespace A005689.P7428963177813137816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392541 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005689.P7428963177813137816

noncomputable section

/-- A005689: Number of Twopins positions.

Offset 6, canonical program `A005689.P7428963177813137816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A005689 (n : ℕ) : ℤ :=
  A005689.P7428963177813137816.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 598 terms. -/
def A005689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005698.P13021387874667961066

`A131666(A007494(n+4))`
-/

namespace A005698.P13021387874667961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (A007494 (n + 4)).toNat

end

end A005698.P13021387874667961066

noncomputable section

/-- A005698: Positions of remoteness 2 in Beans-Don't-Talk.

Offset 1, canonical program `A005698.P13021387874667961066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A005698 (n : ℕ) : ℤ :=
  A005698.P13021387874667961066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A005698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005716.P6483412666358167850

`∑[A005715(n+4)-A000574(n+3)]`
-/

namespace A005716.P6483412666358167850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005715 (n + 4) - A000574 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005716.P6483412666358167850

noncomputable section

/-- A005716: Coefficient of x^8 in expansion of (1+x+x^2)^n.

Offset 4, canonical program `A005716.P6483412666358167850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005716 (n : ℕ) : ℤ :=
  A005716.P6483412666358167850.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005770.P10139504297732212981

`A171496(n)-Δ[A001871(n)]`
-/

namespace A005770.P10139504297732212981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171496 n - (f1 (n + 1) - f1 n)

end

end A005770.P10139504297732212981

noncomputable section

/-- A005770: Number of convex polygons of length 2n on square lattice whose leftmost bottom vertex and rightmost top vertex have the same x-coordinate.

Offset 5, canonical program `A005770.P10139504297732212981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005770 (n : ℕ) : ℤ :=
  A005770.P10139504297732212981.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005774.P11674759060284518255

`A005773(n+1)-A001006(n)`
-/

namespace A005774.P11674759060284518255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A001006 n

end

end A005774.P11674759060284518255

noncomputable section

/-- A005774: Number of directed animals of size n (k=1 column of A038622); number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, where s(0) = 2; also sum of row n+1 of array T in A026323.

Offset 0, canonical program `A005774.P11674759060284518255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A005774 (n : ℕ) : ℤ :=
  A005774.P11674759060284518255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A005774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005810.P11226820359042522109

`A051036(4*n)`
-/

namespace A005810.P11226820359042522109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n)

end

end A005810.P11226820359042522109

noncomputable section

/-- A005810: a(n) = binomial(4n,n).

Offset 0, canonical program `A005810.P11226820359042522109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A005810 (n : ℕ) : ℤ :=
  A005810.P11226820359042522109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A005810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005910.P3128201098012954164

`A191745(n)+Δ[n²²]`
-/

namespace A005910.P3128201098012954164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191745 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005910.P3128201098012954164

noncomputable section

/-- A005910: Truncated octahedral numbers: 16*n^3 - 33*n^2 + 24*n - 6.

Offset 1, canonical program `A005910.P3128201098012954164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005910 (n : ℕ) : ℤ :=
  A005910.P3128201098012954164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005946.P11046766925565559433

`A000566(n+1)*A000567(n+1)-A002492(n)`
-/

namespace A005946.P11046766925565559433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) * A000567 (n + 1) - A002492 n

end

end A005946.P11046766925565559433

noncomputable section

/-- A005946: Number of n-step mappings with 5 inputs.

Offset 1, canonical program `A005946.P11046766925565559433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A005946 (n : ℕ) : ℤ :=
  A005946.P11046766925565559433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A005946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005995.P4464072021336214688

`A001753(n)-2*A096338(n)`
-/

namespace A005995.P4464072021336214688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n - 2 * A096338 n

end

end A005995.P4464072021336214688

noncomputable section

/-- A005995: Alkane (or paraffin) numbers l(8,n).

Offset 0, canonical program `A005995.P4464072021336214688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995 (n : ℕ) : ℤ :=
  A005995.P4464072021336214688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006005.P1228063357782503489

`A000040(n+1)-A000007(n)`
-/

namespace A006005.P1228063357782503489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000007 n

end

end A006005.P1228063357782503489

noncomputable section

/-- A006005: The odd prime numbers together with 1.

Offset 1, canonical program `A006005.P1228063357782503489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006005 (n : ℕ) : ℤ :=
  A006005.P1228063357782503489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006015.P12462504095142907675

`xor(n, A004468(n))`
-/

namespace A006015.P12462504095142907675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004468 n)

end

end A006015.P12462504095142907675

noncomputable section

/-- A006015: Nim product 2*n.

Offset 0, canonical program `A006015.P12462504095142907675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006015 (n : ℕ) : ℤ :=
  A006015.P12462504095142907675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006093.P2906174024863549003

`A000040(n+1)-1`
-/

namespace A006093.P2906174024863549003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

end

end A006093.P2906174024863549003

noncomputable section

/-- A006093: a(n) = prime(n) - 1.

Offset 1, canonical program `A006093.P2906174024863549003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006093 (n : ℕ) : ℤ :=
  A006093.P2906174024863549003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006094.P10257567645245129766

`A000040(n+1)*A000040(n+2)`
-/

namespace A006094.P10257567645245129766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2)

end

end A006094.P10257567645245129766

noncomputable section

/-- A006094: Products of 2 successive primes.

Offset 1, canonical program `A006094.P10257567645245129766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006094 (n : ℕ) : ℤ :=
  A006094.P10257567645245129766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006172.P15277379530532349682

`a(n-2)+A192908(n+1)-a(n-1)` with `a(0)=4, a(1)=2`
-/

namespace A006172.P15277379530532349682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n a =>
  a (n - 2) + (A192908 (n + 1) - a (n - 1))

end

end A006172.P15277379530532349682

noncomputable section

/-- A006172: a(n) = 1 + F(2*n+1) + (-1)^n*L(n).

Offset 0, canonical program `A006172.P15277379530532349682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A006172 (n : ℕ) : ℤ :=
  A006172.P15277379530532349682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A006172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006254.P17336495081768971287

`(A000040(n+2)+1)/2`
-/

namespace A006254.P17336495081768971287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) + 1 : ℚ) / 2

end

end A006254.P17336495081768971287

noncomputable section

/-- A006254: Numbers k such that 2k-1 is prime.

Offset 1, canonical program `A006254.P17336495081768971287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006254.P17336495081768971287.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006288.P15058602425544907126

`A023717(2*n)-A023717(n)`
-/

namespace A006288.P15058602425544907126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (2 * n) - A023717 n

end

end A006288.P15058602425544907126

noncomputable section

/-- A006288: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1.

Offset 0, canonical program `A006288.P15058602425544907126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288 (n : ℕ) : ℤ :=
  A006288.P15058602425544907126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006333.P758461644222166681

`∑[n+1]/3*∑[A006332(n)]`
-/

namespace A006333.P758461644222166681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A006333.P758461644222166681

noncomputable section

/-- A006333: From the enumeration of corners.

Offset 0, canonical program `A006333.P758461644222166681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006333.P758461644222166681.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006337.P1284610026008698786

`A159684(n)+1`
-/

namespace A006337.P1284610026008698786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + 1

end

end A006337.P1284610026008698786

noncomputable section

/-- A006337: An "eta-sequence": a(n) = floor( (n+1)*sqrt(2) ) - floor( n*sqrt(2) ).

Offset 1, canonical program `A006337.P1284610026008698786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006337 (n : ℕ) : ℤ :=
  A006337.P1284610026008698786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006340.P5648138728573061714

`A334413(n)+1`
-/

namespace A006340.P5648138728573061714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 n + 1

end

end A006340.P5648138728573061714

noncomputable section

/-- A006340: An "eta-sequence": [ (n+1)*tau + 1/2 ] - [ n*tau + 1/2 ], tau = (1 + sqrt(5))/2.

Offset 0, canonical program `A006340.P5648138728573061714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340 (n : ℕ) : ℤ :=
  A006340.P5648138728573061714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006457.P17964235660098232261

`∑[∑[A107659(n)]-A000225(n)]`
-/

namespace A006457.P17964235660098232261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006457.P17964235660098232261

noncomputable section

/-- A006457: Number of elements in Z[ i ] whose 'smallest algorithm' is <= n.

Offset 0, canonical program `A006457.P17964235660098232261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A006457 (n : ℕ) : ℤ :=
  A006457.P17964235660098232261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A006457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006468.P17805623050306811454

`∑[∑[(n+1)*A005586(n+1)-∑[n]]]`
-/

namespace A006468.P17805623050306811454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005586 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006468.P17805623050306811454

noncomputable section

/-- A006468: Number of rooted planar maps with 4 faces and n vertices and no isthmuses.

Offset 1, canonical program `A006468.P17805623050306811454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A006468 (n : ℕ) : ℤ :=
  A006468.P17805623050306811454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A006468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006483.P4841356937697481822

`or(1, A103435(n))`
-/

namespace A006483.P4841356937697481822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A103435 n)

end

end A006483.P4841356937697481822

noncomputable section

/-- A006483: a(n) = Fibonacci(n)*2^n + 1.

Offset 0, canonical program `A006483.P4841356937697481822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A006483 (n : ℕ) : ℤ :=
  A006483.P4841356937697481822.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A006483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006499.P16153650653769971855

`A056594(n+1)+A001638(n+2)`
-/

namespace A006499.P16153650653769971855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A001638 (n + 2)

end

end A006499.P16153650653769971855

noncomputable section

/-- A006499: Number of restricted circular combinations.

Offset 0, canonical program `A006499.P16153650653769971855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A006499 (n : ℕ) : ℤ :=
  A006499.P16153650653769971855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A006499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006501.P15643465850074222248

`A007980(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A006501.P15643465850074222248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A007980 n + a (n - 3)

end

end A006501.P15643465850074222248

noncomputable section

/-- A006501: Expansion of (1+x^2) / ( (1-x)^2 * (1-x^3)^2 ).

Offset 0, canonical program `A006501.P15643465850074222248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006501 (n : ℕ) : ℤ :=
  A006501.P15643465850074222248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006594.P16489447980115312247

`∑[Δ[A032634(n)]+1]`
-/

namespace A006594.P16489447980115312247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P16489447980115312247

noncomputable section

/-- A006594: A Beatty sequence: floor(n*(1 + 1/e)).

Offset 1, canonical program `A006594.P16489447980115312247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006594 (n : ℕ) : ℤ :=
  A006594.P16489447980115312247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006637.P3178544757393570640

`∑[A006636(n)+∑[A006636(n)]]`
-/

namespace A006637.P3178544757393570640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006637.P3178544757393570640

noncomputable section

/-- A006637: Expansion of (2 - x)^4/(1 - x)^8.

Offset 0, canonical program `A006637.P3178544757393570640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006637 (n : ℕ) : ℤ :=
  A006637.P3178544757393570640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006645.P15429359972966869975

`∑[Δ[A291142(n)]-A001333(n)]`
-/

namespace A006645.P15429359972966869975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006645.P15429359972966869975

noncomputable section

/-- A006645: Self-convolution of Pell numbers (A000129).

Offset 0, canonical program `A006645.P15429359972966869975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A006645 (n : ℕ) : ℤ :=
  A006645.P15429359972966869975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A006645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006670.P5796379747029257233

`∑[char[A266287(n)+2]]+1`
-/

namespace A006670.P5796379747029257233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A006670.P5796379747029257233

noncomputable section

/-- A006670: Edge-distinguishing chromatic number of path with n nodes.

Offset 1, canonical program `A006670.P5796379747029257233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006670 (n : ℕ) : ℤ :=
  (A006670.P5796379747029257233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006697.P12909453823667468915

`A002984(n)+A109965(n)-1`
-/

namespace A006697.P12909453823667468915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002984 n + (A109965 n - 1)

end

end A006697.P12909453823667468915

noncomputable section

/-- A006697: Number of subwords of length n in infinite word generated by a -> aab, b -> b.

Offset 0, canonical program `A006697.P12909453823667468915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006697 (n : ℕ) : ℤ :=
  A006697.P12909453823667468915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006974.P7007263400830270341

`∑[∑[A375549(n)]]`
-/

namespace A006974.P7007263400830270341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006974.P7007263400830270341

noncomputable section

/-- A006974: Coefficients of Chebyshev T polynomials: a(n) = A053120(n+8, n), n >= 0.

Offset 0, canonical program `A006974.P7007263400830270341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A006974 (n : ℕ) : ℤ :=
  A006974.P7007263400830270341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A006974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006979.P6077306593130690930

`A001591(n+4)-A000078(n+3)`
-/

namespace A006979.P6077306593130690930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) - A000078 (n + 3)

end

end A006979.P6077306593130690930

noncomputable section

/-- A006979: a(n) is the number of compositions of n in which the maximum part size is 5.

Offset 0, canonical program `A006979.P6077306593130690930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A006979 (n : ℕ) : ℤ :=
  A006979.P6077306593130690930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A006979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006980.P13992170337193083166

`A001592(n+11)-A001591(n+10)`
-/

namespace A006980.P13992170337193083166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 11) - A001591 (n + 10)

end

end A006980.P13992170337193083166

noncomputable section

/-- A006980: Compositions: 6th column of A048004.

Offset 6, canonical program `A006980.P13992170337193083166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A006980 (n : ℕ) : ℤ :=
  A006980.P13992170337193083166.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A006980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006998.P18023420003871036434

`a(A004396(n))+a(A004523(n))` with `a(0)=0, a(1)=1`
-/

namespace A006998.P18023420003871036434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A004396 n).toNat + a (A004523 n).toNat

end

end A006998.P18023420003871036434

noncomputable section

/-- A006998: Partitioning integers to avoid arithmetic progressions of length 3.

Offset 0, canonical program `A006998.P18023420003871036434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006998 (n : ℕ) : ℤ :=
  (A006998.P18023420003871036434.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007008.P9929642294075141343

`ceil(A045621(n)/2)`
-/

namespace A007008.P9929642294075141343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045621 n : ℚ) / 2⌉

end

end A007008.P9929642294075141343

noncomputable section

/-- A007008: Chvatal conjecture for radius of graph of maximal intersecting sets.

Offset 1, canonical program `A007008.P9929642294075141343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007008 (n : ℕ) : ℤ :=
  A007008.P9929642294075141343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007009.P4506649749187619571

`A006009(n+1)/4`
-/

namespace A007009.P4506649749187619571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006009 (n + 1) : ℚ) / 4

end

end A007009.P4506649749187619571

noncomputable section

/-- A007009: Number of 3-voter voting schemes with n linearly ranked choices.

Offset 1, canonical program `A007009.P4506649749187619571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007009.P4506649749187619571.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007089.P1807555167867376115

`A024635(2*n)/2`
-/

namespace A007089.P1807555167867376115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2

end

end A007089.P1807555167867376115

noncomputable section

/-- A007089: Numbers in base 3.

Offset 0, canonical program `A007089.P1807555167867376115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007089.P1807555167867376115.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007090.P11600105304047957284

`A024644(2*n)/2`
-/

namespace A007090.P11600105304047957284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

end

end A007090.P11600105304047957284

noncomputable section

/-- A007090: Numbers in base 4.

Offset 0, canonical program `A007090.P11600105304047957284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007090.P11600105304047957284.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007091.P1217996161546394470

`A024657(2*n)/2`
-/

namespace A007091.P1217996161546394470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024657 (2 * n) : ℚ) / 2

end

end A007091.P1217996161546394470

noncomputable section

/-- A007091: Numbers in base 5.

Offset 0, canonical program `A007091.P1217996161546394470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007091.P1217996161546394470.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007317.P12762232467409535098

`∑[A002212(n)]`
-/

namespace A007317.P12762232467409535098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007317.P12762232467409535098

noncomputable section

/-- A007317: Binomial transform of Catalan numbers.

Offset 1, canonical program `A007317.P12762232467409535098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A007317 (n : ℕ) : ℤ :=
  A007317.P12762232467409535098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A007317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007369.P12791547163572233403

`comp[A000203(n+1)-1]+1`
-/

namespace A007369.P12791547163572233403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007369.P12791547163572233403

noncomputable section

/-- A007369: Numbers n such that sigma(x) = n has no solution.

Offset 1, canonical program `A007369.P12791547163572233403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007369 (n : ℕ) : ℤ :=
  (A007369.P12791547163572233403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007383.P16560384234796121646

`A023434(n)+∑[A130472(n)]`
-/

namespace A007383.P16560384234796121646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007383.P16560384234796121646

noncomputable section

/-- A007383: Number of strict first-order maximal independent sets in path graph.

Offset 1, canonical program `A007383.P16560384234796121646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 819 terms. -/
def A007383 (n : ℕ) : ℤ :=
  A007383.P16560384234796121646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 819 terms. -/
def A007383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007385.P7467196621491542789

`A007380(n+1)-∑[or(1, n)]%(n+2)`
-/

namespace A007385.P7467196621491542789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)

end

end A007385.P7467196621491542789

noncomputable section

/-- A007385: Number of strict 5th-order maximal independent sets in path graph.

Offset 1, canonical program `A007385.P7467196621491542789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A007385 (n : ℕ) : ℤ :=
  A007385.P7467196621491542789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A007385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007391.P2399758922206179778

`A001608(n+1)-A141310(n)%A005408(n)`
-/

namespace A007391.P2399758922206179778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) - Int.tmod (A141310 n) (A005408 n)

end

end A007391.P2399758922206179778

noncomputable section

/-- A007391: Number of strict first-order maximal independent sets in cycle graph.

Offset 1, canonical program `A007391.P2399758922206179778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A007391 (n : ℕ) : ℤ :=
  A007391.P2399758922206179778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A007391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007392.P3751705006797672955

`A007387(n+1)+A000007(n)-A141310(n)`
-/

namespace A007392.P3751705006797672955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A000007 n - A141310 n)

end

end A007392.P3751705006797672955

noncomputable section

/-- A007392: Number of strict 3rd-order maximal independent sets in cycle graph.

Offset 1, canonical program `A007392.P3751705006797672955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A007392 (n : ℕ) : ℤ :=
  A007392.P3751705006797672955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. -/
def A007392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007429.P3226404755406933578

`∑{d}[n+1, A001065(#)+#]`
-/

namespace A007429.P3226404755406933578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001065 d + (d : ℤ))

end

end A007429.P3226404755406933578

noncomputable section

/-- A007429: Inverse Moebius transform applied twice to natural numbers.

Offset 1, canonical program `A007429.P3226404755406933578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007429 (n : ℕ) : ℤ :=
  A007429.P3226404755406933578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007433.P17123779711710309047

`∑{d}[n+1, A001157(#)]`
-/

namespace A007433.P17123779711710309047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d

end

end A007433.P17123779711710309047

noncomputable section

/-- A007433: Inverse Moebius transform applied twice to squares.

Offset 1, canonical program `A007433.P17123779711710309047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433 (n : ℕ) : ℤ :=
  A007433.P17123779711710309047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007437.P4259273858504125532

`1/2*(A000203(n+1)+A001157(n+1))`
-/

namespace A007437.P4259273858504125532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000203 (n + 1) + A001157 (n + 1) : ℚ)

end

end A007437.P4259273858504125532

noncomputable section

/-- A007437: Inverse Moebius transform of triangular numbers.

Offset 1, canonical program `A007437.P4259273858504125532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007437 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007437.P4259273858504125532.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007437.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007445.P6124287304801682810

`∑{d}[n+1, A000040(#)]`
-/

namespace A007445.P6124287304801682810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d

end

end A007445.P6124287304801682810

noncomputable section

/-- A007445: Inverse Moebius transform of primes.

Offset 1, canonical program `A007445.P6124287304801682810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007445 (n : ℕ) : ℤ :=
  A007445.P6124287304801682810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007465.P16580226949312639955

`Δ[A276042(n)-A002064(n)]`
-/

namespace A007465.P16580226949312639955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276042 n - A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007465.P16580226949312639955

noncomputable section

/-- A007465: Exponential-convolution of triangular numbers with themselves.

Offset 0, canonical program `A007465.P16580226949312639955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A007465 (n : ℕ) : ℤ :=
  A007465.P16580226949312639955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. -/
def A007465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007466.P14444681964093217309

`2^n+(∑[n]+n)*A011782(n)`
-/

namespace A007466.P14444681964093217309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A011782 n

end

end A007466.P14444681964093217309

noncomputable section

/-- A007466: Exponential-convolution of natural numbers with themselves.

Offset 1, canonical program `A007466.P14444681964093217309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A007466 (n : ℕ) : ℤ :=
  A007466.P14444681964093217309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A007466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007606.P7799483194053309628

`A381232(n)+Δ[n²]`
-/

namespace A007606.P7799483194053309628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381232 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A007606.P7799483194053309628

noncomputable section

/-- A007606: Take 1, skip 2, take 3, etc.

Offset 1, canonical program `A007606.P7799483194053309628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007606 (n : ℕ) : ℤ :=
  A007606.P7799483194053309628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007607.P13094524389053610736

`A053187(n+1)+1+n`
-/

namespace A007607.P13094524389053610736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (n + 1) + 1 + (n : ℤ)

end

end A007607.P13094524389053610736

noncomputable section

/-- A007607: Skip 1, take 2, skip 3, etc.

Offset 1, canonical program `A007607.P13094524389053610736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007607 (n : ℕ) : ℤ :=
  A007607.P13094524389053610736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007652.P8278837090424156821

`A010879(A000040(n+1))`
-/

namespace A007652.P8278837090424156821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000040 (n + 1)).toNat

end

end A007652.P8278837090424156821

noncomputable section

/-- A007652: Final digit of prime(n).

Offset 1, canonical program `A007652.P8278837090424156821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007652 (n : ℕ) : ℤ :=
  A007652.P8278837090424156821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007664.P3194927047463075603

`∑[2*a(n+1-A172471(A172471(n)+n))]` with `a(0)=0, a(1)=1`
-/

namespace A007664.P3194927047463075603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 ((n + 1 : ℤ) - A172471 (A172471 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007664.P3194927047463075603

noncomputable section

/-- A007664: Reve's puzzle: number of moves needed to solve the Towers of Hanoi puzzle with 4 pegs and n disks, according to the Frame-Stewart algorithm.

Offset 0, canonical program `A007664.P3194927047463075603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007664 (n : ℕ) : ℤ :=
  (A007664.P3194927047463075603.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007912.P16337960636681677811

`A007911(n+3)%(n+3)`
-/

namespace A007912.P16337960636681677811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007911 (n + 3)) (n + 3 : ℤ)

end

end A007912.P16337960636681677811

noncomputable section

/-- A007912: Quantum factorials: (n-1)!! - (n-2)!! (mod n).

Offset 3, canonical program `A007912.P16337960636681677811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A007912 (n : ℕ) : ℤ :=
  A007912.P16337960636681677811.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A007912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007983.P4458566320892321009

`∑[A001399(n+1)-(a(n-1)+2)]` with `a(0)=0`
-/

namespace A007983.P4458566320892321009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001399 (n + 1) - (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007983.P4458566320892321009

noncomputable section

/-- A007983: Number of non-Abelian metacyclic groups of order p^n (p odd).

Offset 1, canonical program `A007983.P4458566320892321009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007983 (n : ℕ) : ℤ :=
  A007983.P4458566320892321009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007988.P16109697765086455573

`A008805(n)+∑[A008742(n)]`
-/

namespace A007988.P16109697765086455573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007988.P16109697765086455573

noncomputable section

/-- A007988: Expansion of (x^6-x^5-x^4+2x^2)/((1-x^3)(1-x^2)^2(1-x)).

Offset 2, canonical program `A007988.P16109697765086455573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007988 (n : ℕ) : ℤ :=
  A007988.P16109697765086455573.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008000.P14598701383781270205

`A008130(n)+A005893(n)`
-/

namespace A008000.P14598701383781270205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A005893 n

end

end A008000.P14598701383781270205

noncomputable section

/-- A008000: Coordination sequence T1 for Zeolite Code ABW and ATN.

Offset 0, canonical program `A008000.P14598701383781270205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000 (n : ℕ) : ℤ :=
  A008000.P14598701383781270205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008013.P14464025922531573754

`A005893(n)+2*A008363(n)`
-/

namespace A008013.P14464025922531573754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + 2 * A008363 n

end

end A008013.P14464025922531573754

noncomputable section

/-- A008013: Coordination sequence occurring in Zeolite Codes AFG, CAN, LIO, LOS.

Offset 0, canonical program `A008013.P14464025922531573754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008013 (n : ℕ) : ℤ :=
  A008013.P14464025922531573754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008066.P16344384066505485400

`A008260(n)-A042948(A002620(n))`
-/

namespace A008066.P16344384066505485400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A042948 (A002620 n).toNat

end

end A008066.P16344384066505485400

noncomputable section

/-- A008066: Coordination sequence T1 for Zeolite Code CHA.

Offset 0, canonical program `A008066.P16344384066505485400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A008066 (n : ℕ) : ℤ :=
  A008066.P16344384066505485400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A008066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008137.P7823502241240527515

`A005893(n)-floor(2/5*n²)`
-/

namespace A008137.P7823502241240527515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ⌊(2 : ℚ) / 5 * (n ^ 2 : ℚ)⌋

end

end A008137.P7823502241240527515

noncomputable section

/-- A008137: Coordination sequence T1 for Zeolite Code LTA and RHO.

Offset 0, canonical program `A008137.P7823502241240527515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008137 (n : ℕ) : ℤ :=
  A008137.P7823502241240527515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008160.P193104279552154710

`A008260(n)-A000212(n)`
-/

namespace A008160.P193104279552154710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008260 n - A000212 n

end

end A008160.P193104279552154710

noncomputable section

/-- A008160: Coordination sequence T1 for Zeolite Code MER.

Offset 0, canonical program `A008160.P193104279552154710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008160 (n : ℕ) : ℤ :=
  A008160.P193104279552154710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008258.P8675262695628927288

`A008130(2*gcd(n, C(2, n)))+A005893(n)`
-/

namespace A008258.P8675262695628927288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (2 * Nat.gcd n (Nat.choose 2 n)) + A005893 n

end

end A008258.P8675262695628927288

noncomputable section

/-- A008258: Coordination sequence T1 for Moganite.

Offset 0, canonical program `A008258.P8675262695628927288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008258 (n : ℕ) : ℤ :=
  A008258.P8675262695628927288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A008258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008264.P7189986199445051567

`ceil((A007899(n)+3)/4)`
-/

namespace A008264.P7189986199445051567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007899 n + 3 : ℚ) / 4⌉

end

end A008264.P7189986199445051567

noncomputable section

/-- A008264: Coordination sequence for tridymite, lonsdaleite, and wurtzite.

Offset 0, canonical program `A008264.P7189986199445051567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008264 (n : ℕ) : ℤ :=
  A008264.P7189986199445051567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008333.P11982346522852721152

`∑{d}[A000040(n+1)+1, #]`
-/

namespace A008333.P11982346522852721152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008333.P11982346522852721152

noncomputable section

/-- A008333: Sum of divisors of p+1, p prime.

Offset 1, canonical program `A008333.P11982346522852721152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008333 (n : ℕ) : ℤ :=
  (A008333.P11982346522852721152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008347.P7172351178524916195

`A000040(n)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P7172351178524916195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 n - a (n - 1)

end

end A008347.P7172351178524916195

noncomputable section

/-- A008347: a(n) = Sum_{i=0..n-1} (-1)^i * prime(n-i).

Offset 0, canonical program `A008347.P7172351178524916195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008347 (n : ℕ) : ℤ :=
  A008347.P7172351178524916195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008355.P8676107505756576759

`((3*n)²+1)*A005893(n)`
-/

namespace A008355.P8676107505756576759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 + 1 : ℤ) * A005893 n

end

end A008355.P8676107505756576759

noncomputable section

/-- A008355: Coordination sequence for D_5 lattice.

Offset 0, canonical program `A008355.P8676107505756576759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008355 (n : ℕ) : ℤ :=
  A008355.P8676107505756576759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008364.P14738745201683923342

`A007775(record[n+1-gcd(7, A007775(n+1))]+1)`
-/

namespace A008364.P14738745201683923342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd 7 (A007775 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A008364.P14738745201683923342

noncomputable section

/-- A008364: 11-rough numbers: not divisible by 2, 3, 5 or 7.

Offset 1, canonical program `A008364.P14738745201683923342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A008364 (n : ℕ) : ℤ :=
  A008364.P14738745201683923342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A008364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008413.P448789103090804315

`A187756(n)+A005919(n)`
-/

namespace A008413.P448789103090804315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + A005919 n

end

end A008413.P448789103090804315

noncomputable section

/-- A008413: Coordination sequence for 5-dimensional cubic lattice.

Offset 0, canonical program `A008413.P448789103090804315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008413 (n : ℕ) : ℤ :=
  A008413.P448789103090804315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008460.P5217996417452180393

`A003132(a(n-1))` with `a(0)=6`
-/

namespace A008460.P5217996417452180393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008460.P5217996417452180393

noncomputable section

/-- A008460: Take sum of squares of digits of previous term; start with 6.

Offset 1, canonical program `A008460.P5217996417452180393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008460 (n : ℕ) : ℤ :=
  A008460.P5217996417452180393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008461.P15203974575439267861

`A003132(a(n-1))` with `a(0)=7`
-/

namespace A008461.P15203974575439267861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008461.P15203974575439267861

noncomputable section

/-- A008461: Take sum of squares of digits of previous term.

Offset 1, canonical program `A008461.P15203974575439267861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008461 (n : ℕ) : ℤ :=
  A008461.P15203974575439267861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008462.P11316761323922087190

`A003132(a(n-1))` with `a(0)=8`
-/

namespace A008462.P11316761323922087190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A008462.P11316761323922087190

noncomputable section

/-- A008462: Take sum of squares of digits of previous term; start with 8.

Offset 1, canonical program `A008462.P11316761323922087190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008462 (n : ℕ) : ℤ :=
  A008462.P11316761323922087190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008488.P10179903782282141861

`∑[A201722(n)+a(n-1)]` with `a(0)=1`
-/

namespace A008488.P10179903782282141861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A201722 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008488.P10179903782282141861

noncomputable section

/-- A008488: Expansion of (1-x^6) / (1-x)^6.

Offset 0, canonical program `A008488.P10179903782282141861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008488 (n : ℕ) : ℤ :=
  A008488.P10179903782282141861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008500.P17783133388678695938

`A000580(n+7)-C(n, 7)`
-/

namespace A008500.P17783133388678695938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - (Nat.choose n 7 : ℤ)

end

end A008500.P17783133388678695938

noncomputable section

/-- A008500: 6-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008500.P17783133388678695938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008500 (n : ℕ) : ℤ :=
  A008500.P17783133388678695938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008502.P17757048604972387187

`∑[∑[A000580(n+7)]]-C(n, 9)`
-/

namespace A008502.P17757048604972387187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 9 : ℤ)

end

end A008502.P17757048604972387187

noncomputable section

/-- A008502: 8-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008502.P17757048604972387187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008502 (n : ℕ) : ℤ :=
  A008502.P17757048604972387187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008530.P11364345825062993947

`(A000032(and(2, a(n-1)))+2*n²)*3*n` with `a(0)=1`
-/

namespace A008530.P11364345825062993947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 (Int.land 2 (a (n - 1))).toNat + (2 * n ^ 2 : ℤ)) * (3 * n : ℤ)

end

end A008530.P11364345825062993947

noncomputable section

/-- A008530: Coordination sequence for 4-dimensional primitive di-isohexagonal orthogonal lattice.

Offset 0, canonical program `A008530.P11364345825062993947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008530 (n : ℕ) : ℤ :=
  A008530.P11364345825062993947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008533.P15185711001041139923

`2*A222408(n)-A008531(n)`
-/

namespace A008533.P15185711001041139923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222408 n - A008531 n

end

end A008533.P15185711001041139923

noncomputable section

/-- A008533: Coordination sequence for {A_5}* lattice.

Offset 0, canonical program `A008533.P15185711001041139923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008533 (n : ℕ) : ℤ :=
  A008533.P15185711001041139923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008579.P11123826267800694639

`A296910(n)+A237420(n)`
-/

namespace A008579.P11123826267800694639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A237420 n

end

end A008579.P11123826267800694639

noncomputable section

/-- A008579: Coordination sequence for planar net 3.6.3.6. Spherical growth function for a certain reflection group in plane.

Offset 0, canonical program `A008579.P11123826267800694639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008579 (n : ℕ) : ℤ :=
  A008579.P11123826267800694639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008613.P5983281580237811505

`A008796(n)+A008798(n)-A008795(n)`
-/

namespace A008613.P5983281580237811505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + (A008798 n - A008795 n)

end

end A008613.P5983281580237811505

noncomputable section

/-- A008613: Molien series for 3-dimensional representation of A_5.

Offset 0, canonical program `A008613.P5983281580237811505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008613 (n : ℕ) : ℤ :=
  A008613.P5983281580237811505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008614.P499716109925837554

`A008625(n)-A005044(n)`
-/

namespace A008614.P499716109925837554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A005044 n

end

end A008614.P499716109925837554

noncomputable section

/-- A008614: Molien series of 3-dimensional representation of group GL(3,2) (= L(2,7)); a simple group of order 168.

Offset 0, canonical program `A008614.P499716109925837554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008614 (n : ℕ) : ℤ :=
  A008614.P499716109925837554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008622.P16996189268350298708

`A025813(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008622.P16996189268350298708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025813 n - a (n - 2)

end

end A008622.P16996189268350298708

noncomputable section

/-- A008622: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A008622.P16996189268350298708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008622 (n : ℕ) : ℤ :=
  A008622.P16996189268350298708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008643.P17356449891711495349

`A008804(floor(n/2))`
-/

namespace A008643.P17356449891711495349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 ⌊(n : ℚ) / 2⌋.toNat

end

end A008643.P17356449891711495349

noncomputable section

/-- A008643: Molien series for group of 4 X 4 upper triangular matrices over GF(2).

Offset 0, canonical program `A008643.P17356449891711495349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008643 (n : ℕ) : ℤ :=
  A008643.P17356449891711495349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008648.P3776347205229433194

`A008732(floor(n/5))`
-/

namespace A008648.P3776347205229433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 ⌊(n : ℚ) / 5⌋.toNat

end

end A008648.P3776347205229433194

noncomputable section

/-- A008648: Molien series of 3 X 3 upper triangular matrices over GF( 5 ).

Offset 0, canonical program `A008648.P3776347205229433194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008648 (n : ℕ) : ℤ :=
  A008648.P3776347205229433194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008649.P9304805001018961615

`floor(A000217(floor((n+3)/3)+1)/3)`
-/

namespace A008649.P9304805001018961615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (⌊(n + 3 : ℚ) / 3⌋ + 1).toNat : ℚ) / 3⌋

end

end A008649.P9304805001018961615

noncomputable section

/-- A008649: Molien series of 3 X 3 upper triangular matrices over GF( 3 ).

Offset 0, canonical program `A008649.P9304805001018961615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008649 (n : ℕ) : ℤ :=
  A008649.P9304805001018961615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008651.P17575682284106551936

`a(n-1)+A178146(n)-1` with `a(0)=1`
-/

namespace A008651.P17575682284106551936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A178146 n - 1)

end

end A008651.P17575682284106551936

noncomputable section

/-- A008651: Molien series of binary icosahedral group.

Offset 0, canonical program `A008651.P17575682284106551936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008651 (n : ℕ) : ℤ :=
  A008651.P17575682284106551936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008667.P8592292575514272009

`A029032(n)-a(n-1)` with `a(0)=1`
-/

namespace A008667.P8592292575514272009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029032 n - a (n - 1)

end

end A008667.P8592292575514272009

noncomputable section

/-- A008667: Expansion of g.f.: 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

Offset 0, canonical program `A008667.P8592292575514272009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008667 (n : ℕ) : ℤ :=
  A008667.P8592292575514272009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008682.P13810349883948471386

`A025806(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008682.P13810349883948471386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025806 n - a (n - 2)

end

end A008682.P13810349883948471386

noncomputable section

/-- A008682: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A008682.P13810349883948471386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008682 (n : ℕ) : ℤ :=
  A008682.P13810349883948471386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008718.P4848502084565514075

`∑[A000124(Δ[ceil(n²/24)])-1]`
-/

namespace A008718.P4848502084565514075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008718.P4848502084565514075

noncomputable section

/-- A008718: Expansion of g.f.: (1+x^9)/((1-x)*(1-x^4)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A008718.P4848502084565514075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008718 (n : ℕ) : ℤ :=
  A008718.P4848502084565514075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008719.P4304523155723245084

`∑[A000217(A008647(n)*A059841(n))]`
-/

namespace A008719.P4304523155723245084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008647 n * A059841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008719.P4304523155723245084

noncomputable section

/-- A008719: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^12)).

Offset 0, canonical program `A008719.P4304523155723245084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008719 (n : ℕ) : ℤ :=
  A008719.P4304523155723245084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008753.P1046397937723757581

`∑[A004525(A004275(A051274(n)))]`
-/

namespace A008753.P1046397937723757581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004275 (A051274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008753.P1046397937723757581

noncomputable section

/-- A008753: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)).

Offset 0, canonical program `A008753.P1046397937723757581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008753 (n : ℕ) : ℤ :=
  A008753.P1046397937723757581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008755.P14220299925981399534

`∑[A004275(A103221(n))]`
-/

namespace A008755.P14220299925981399534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008755.P14220299925981399534

noncomputable section

/-- A008755: Expansion of (1+x^12)/((1-x)*(1-x^2)*(1-x^3)).

Offset 0, canonical program `A008755.P14220299925981399534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008755 (n : ℕ) : ℤ :=
  A008755.P14220299925981399534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008757.P4713174487264316010

`A008620(n)+∑[A004275(A008615(n))]`
-/

namespace A008757.P4713174487264316010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008757.P4713174487264316010

noncomputable section

/-- A008757: Expansion of (1+x^14)/((1-x)*(1-x^2)*(1-x^3)).

Offset 0, canonical program `A008757.P4713174487264316010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008757 (n : ℕ) : ℤ :=
  A008757.P4713174487264316010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008758.P2693039942539249926

`∑[A110654(A004276(A008611(n)))]`
-/

namespace A008758.P2693039942539249926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004276 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008758.P2693039942539249926

noncomputable section

/-- A008758: Expansion of (1+x^15)/((1-x)*(1-x^2)*(1-x^3)).

Offset 0, canonical program `A008758.P2693039942539249926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008758 (n : ℕ) : ℤ :=
  A008758.P2693039942539249926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008761.P277152152223473802

`∑[A004274(A103221(n))]`
-/

namespace A008761.P277152152223473802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A103221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008761.P277152152223473802

noncomputable section

/-- A008761: Expansion of (1+x^18)/((1-x)*(1-x^2)*(1-x^3)).

Offset 0, canonical program `A008761.P277152152223473802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008761 (n : ℕ) : ℤ :=
  A008761.P277152152223473802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008764.P6703628140594976905

`A001973(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008764.P6703628140594976905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001973 n - a (n - 2)

end

end A008764.P6703628140594976905

noncomputable section

/-- A008764: Number of 3 X 3 symmetric stochastic matrices under row and column permutations.

Offset 0, canonical program `A008764.P6703628140594976905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008764 (n : ℕ) : ℤ :=
  A008764.P6703628140594976905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008770.P4042429584885196860

`A175870(n)+Δ[ceil(n²/24)]`
-/

namespace A008770.P4042429584885196860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n + (f1 (n + 1) - f1 n)

end

end A008770.P4042429584885196860

noncomputable section

/-- A008770: Expansion of (1+x^9)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A008770.P4042429584885196860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008770 (n : ℕ) : ℤ :=
  A008770.P4042429584885196860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008771.P17240043546118174262

`ceil(2/(n+1))+A008763(n)-1+n`
-/

namespace A008771.P17240043546118174262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ)⌉ + (A008763 n - 1 + (n : ℤ))

end

end A008771.P17240043546118174262

noncomputable section

/-- A008771: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A008771.P17240043546118174262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008771 (n : ℕ) : ℤ :=
  A008771.P17240043546118174262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008800.P4216580120172005762

`∑[A008617(n)-A001057(n)]`
-/

namespace A008800.P4216580120172005762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008800.P4216580120172005762

noncomputable section

/-- A008800: Molien series for group [2,7]+ = 227.

Offset 0, canonical program `A008800.P4216580120172005762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008800 (n : ℕ) : ℤ :=
  A008800.P4216580120172005762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008801.P15140999886607481432

`∑[∑[A033999(n)*A168183(n+1)]]`
-/

namespace A008801.P15140999886607481432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A168183 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008801.P15140999886607481432

noncomputable section

/-- A008801: Molien series for group [2,8]+ = 228.

Offset 0, canonical program `A008801.P15140999886607481432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008801 (n : ℕ) : ℤ :=
  A008801.P15140999886607481432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008802.P8525404290087497442

`∑[A008618(n)-A001057(n)]`
-/

namespace A008802.P8525404290087497442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P8525404290087497442

noncomputable section

/-- A008802: Molien series for group [2,9]+ = 229.

Offset 0, canonical program `A008802.P8525404290087497442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008802 (n : ℕ) : ℤ :=
  A008802.P8525404290087497442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008808.P5493521267305173851

`2*A008721(n)-A027656(n)`
-/

namespace A008808.P5493521267305173851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008721 n - A027656 n

end

end A008808.P5493521267305173851

noncomputable section

/-- A008808: Expansion of (1+x^7)/((1-x^2)^2*(1-x^7)).

Offset 0, canonical program `A008808.P5493521267305173851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008808 (n : ℕ) : ℤ :=
  A008808.P5493521267305173851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008809.P9583628994896887438

`2*A008722(n)-A027656(n)`
-/

namespace A008809.P9583628994896887438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008722 n - A027656 n

end

end A008809.P9583628994896887438

noncomputable section

/-- A008809: Expansion of (1+x^9)/((1-x^2)^2*(1-x^9)).

Offset 0, canonical program `A008809.P9583628994896887438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008809 (n : ℕ) : ℤ :=
  A008809.P9583628994896887438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008819.P11084510522512098982

`2*A008734(n)-A027656(n)`
-/

namespace A008819.P11084510522512098982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008734 n - A027656 n

end

end A008819.P11084510522512098982

noncomputable section

/-- A008819: Expansion of (1+2*x^5+x^8)/((1-x^2)^2*(1-x^8)).

Offset 0, canonical program `A008819.P11084510522512098982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008819 (n : ℕ) : ℤ :=
  A008819.P11084510522512098982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008820.P805558653586526579

`2*A008735(n)-A027656(n)`
-/

namespace A008820.P805558653586526579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008735 n - A027656 n

end

end A008820.P805558653586526579

noncomputable section

/-- A008820: Expansion of (1+2*x^7+x^12)/((1-x^2)^2*(1-x^12)).

Offset 0, canonical program `A008820.P805558653586526579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008820 (n : ℕ) : ℤ :=
  A008820.P805558653586526579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008825.P4707898994030679412

`2*A008740(n)-(n+1)`
-/

namespace A008825.P4707898994030679412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008740 n - (n + 1 : ℤ)

end

end A008825.P4707898994030679412

noncomputable section

/-- A008825: Expansion of (1+2*x^5+x^9)/((1-x)^2*(1-x^9)).

Offset 0, canonical program `A008825.P4707898994030679412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008825 (n : ℕ) : ℤ :=
  A008825.P4707898994030679412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008837.P8759727606906235899

`A000217(A000040(n+1)-1)`
-/

namespace A008837.P8759727606906235899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1) - 1).toNat

end

end A008837.P8759727606906235899

noncomputable section

/-- A008837: a(n) = p*(p-1)/2 for p = prime(n).

Offset 1, canonical program `A008837.P8759727606906235899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008837 (n : ℕ) : ℤ :=
  A008837.P8759727606906235899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008864.P9177617808325052279

`A000040(n+1)+1`
-/

namespace A008864.P9177617808325052279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

end

end A008864.P9177617808325052279

noncomputable section

/-- A008864: a(n) = prime(n) + 1.

Offset 1, canonical program `A008864.P9177617808325052279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008864 (n : ℕ) : ℤ :=
  A008864.P9177617808325052279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008888.P18166674682599614551

`A001065(a(n-1))` with `a(0)=138`
-/

namespace A008888.P18166674682599614551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [138] fun n a =>
  A001065 (a (n - 1)).toNat

end

end A008888.P18166674682599614551

noncomputable section

/-- A008888: Aliquot sequence starting at 138.

Offset 0, canonical program `A008888.P18166674682599614551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008888 (n : ℕ) : ℤ :=
  A008888.P18166674682599614551.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008894.P10112289979587652656

`A001281(a(n-1))` with `a(0)=36`
-/

namespace A008894.P10112289979587652656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008894.P10112289979587652656

noncomputable section

/-- A008894: 3x - 1 sequence starting at 36.

Offset 0, canonical program `A008894.P10112289979587652656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008894 (n : ℕ) : ℤ :=
  A008894.P10112289979587652656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008895.P2495746317080168951

`A001281(a(n-1))` with `a(0)=63`
-/

namespace A008895.P2495746317080168951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008895.P2495746317080168951

noncomputable section

/-- A008895: The 3x-1 map: a(n) = n/2 if n is even, 3n-1 if n is odd.

Offset 0, canonical program `A008895.P2495746317080168951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008895 (n : ℕ) : ℤ :=
  A008895.P2495746317080168951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008896.P9510152395807805343

`A001281(a(n-1))` with `a(0)=66`
-/

namespace A008896.P9510152395807805343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [66] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008896.P9510152395807805343

noncomputable section

/-- A008896: 3x - 1 sequence starting at 66.

Offset 0, canonical program `A008896.P9510152395807805343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008896 (n : ℕ) : ℤ :=
  A008896.P9510152395807805343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008897.P17580086680733222442

`A001281(a(A023443(n)))` with `a(0)=83`
-/

namespace A008897.P17580086680733222442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [83] fun n a =>
  A001281 (a (A023443 n).toNat).toNat

end

end A008897.P17580086680733222442

noncomputable section

/-- A008897: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008897.P17580086680733222442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008897 (n : ℕ) : ℤ :=
  A008897.P17580086680733222442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008898.P5153367433346883263

`A001281(a(n-1))` with `a(0)=84`
-/

namespace A008898.P5153367433346883263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008898.P5153367433346883263

noncomputable section

/-- A008898: Trajectory of 84 under the map x -> x/2 for x even, x -> 3x - 1 for x odd.

Offset 0, canonical program `A008898.P5153367433346883263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008898 (n : ℕ) : ℤ :=
  A008898.P5153367433346883263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008899.P8923274985076799054

`A001281(a(n-1))` with `a(0)=87`
-/

namespace A008899.P8923274985076799054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008899.P8923274985076799054

noncomputable section

/-- A008899: x -> x/2 if x even, x -> 3x - 1 if x odd.

Offset 0, canonical program `A008899.P8923274985076799054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008899 (n : ℕ) : ℤ :=
  A008899.P8923274985076799054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008900.P7965286308957467722

`A001281(a(n-1))` with `a(0)=89`
-/

namespace A008900.P7965286308957467722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008900.P7965286308957467722

noncomputable section

/-- A008900: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008900.P7965286308957467722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008900 (n : ℕ) : ℤ :=
  A008900.P7965286308957467722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008901.P17714385854789650431

`A001281(a(n-1))` with `a(0)=90`
-/

namespace A008901.P17714385854789650431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [90] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008901.P17714385854789650431

noncomputable section

/-- A008901: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008901.P17714385854789650431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008901 (n : ℕ) : ℤ :=
  A008901.P17714385854789650431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008902.P8030901881938040270

`A001281(a(n-1))` with `a(0)=99`
-/

namespace A008902.P8030901881938040270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [99] fun n a =>
  A001281 (a (n - 1)).toNat

end

end A008902.P8030901881938040270

noncomputable section

/-- A008902: x->x/2 if x even, x->3x-1 if x odd.

Offset 0, canonical program `A008902.P8030901881938040270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008902 (n : ℕ) : ℤ :=
  A008902.P8030901881938040270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008935.P348153319501579811

`∑[A179297(val(n+1, 2)+1)]`
-/

namespace A008935.P348153319501579811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008935.P348153319501579811

noncomputable section

/-- A008935: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^2.

Offset 1, canonical program `A008935.P348153319501579811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008935 (n : ℕ) : ℤ :=
  A008935.P348153319501579811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008952.P3263245786884273335

`A000030(A000079(n))`
-/

namespace A008952.P3263245786884273335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000079 n).toNat

end

end A008952.P3263245786884273335

noncomputable section

/-- A008952: Leading digit of 2^n.

Offset 0, canonical program `A008952.P3263245786884273335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008952 (n : ℕ) : ℤ :=
  A008952.P3263245786884273335.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008963.P6523085309151912316

`A000030(A000045(n))`
-/

namespace A008963.P6523085309151912316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000045 n).toNat

end

end A008963.P6523085309151912316

noncomputable section

/-- A008963: Initial digit of Fibonacci number F(n).

Offset 0, canonical program `A008963.P6523085309151912316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963 (n : ℕ) : ℤ :=
  A008963.P6523085309151912316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009003.P2901972731917299294

`lt[0, A005078(n+1)]+1`
-/

namespace A009003.P2901972731917299294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009003.P2901972731917299294

noncomputable section

/-- A009003: Hypotenuse numbers (squares are sums of 2 nonzero squares).

Offset 1, canonical program `A009003.P2901972731917299294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A009003 (n : ℕ) : ℤ :=
  (A009003.P2901972731917299294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A009003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009694.P1715986861184328603

`A008233(floor(n/2))*A008233(A065033(n))`
-/

namespace A009694.P1715986861184328603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008233 ⌊(n : ℚ) / 2⌋.toNat * A008233 (A065033 n).toNat

end

end A009694.P1715986861184328603

noncomputable section

/-- A009694: a(n) = Product_{i=0..7} floor((n+i)/8).

Offset 0, canonical program `A009694.P1715986861184328603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009694 (n : ℕ) : ℤ :=
  A009694.P1715986861184328603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009943.P10978519285802944135

`A163433(n+1)+A106469(n)`
-/

namespace A009943.P10978519285802944135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163433 (n + 1) + A106469 n

end

end A009943.P10978519285802944135

noncomputable section

/-- A009943: Coordination sequence for NiAs(1), As position.

Offset 0, canonical program `A009943.P10978519285802944135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009943 (n : ℕ) : ℤ :=
  A009943.P10978519285802944135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009945.P12744615334983203965

`-or(2, -A009946(n))`
-/

namespace A009945.P12744615334983203965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-A009946 n)

end

end A009945.P12744615334983203965

noncomputable section

/-- A009945: Coordination sequence for NiAs(2), As position.

Offset 0, canonical program `A009945.P12744615334983203965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009945 (n : ℕ) : ℤ :=
  A009945.P12744615334983203965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010058.P9795488456409401604

`char[A000108(n)]`
-/

namespace A010058.P9795488456409401604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P9795488456409401604

noncomputable section

/-- A010058: 1 if n is a Catalan number else 0.

Offset 0, canonical program `A010058.P9795488456409401604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010058 (n : ℕ) : ℤ :=
  (A010058.P9795488456409401604.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010494.P1170931180953803905

`(A035071(2*n+1)-1)%10`
-/

namespace A010494.P1170931180953803905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035071 (2 * n + 1) - 1) 10

end

end A010494.P1170931180953803905

noncomputable section

/-- A010494: Decimal expansion of square root of 40.

Offset 1, canonical program `A010494.P1170931180953803905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010494 (n : ℕ) : ℤ :=
  A010494.P1170931180953803905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010988.P5475580922479550818

`∑[A010987(n)]`
-/

namespace A010988.P5475580922479550818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010987 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010988.P5475580922479550818

noncomputable section

/-- A010988: Binomial coefficient C(n,35).

Offset 35, canonical program `A010988.P5475580922479550818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9992 terms. -/
def A010988 (n : ℕ) : ℤ :=
  A010988.P5475580922479550818.a (n - 35)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9992 terms. -/
def A010988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011548.P14501120540779775859

`A068092(Δ[n²])`
-/

namespace A011548.P14501120540779775859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011548.P14501120540779775859

noncomputable section

/-- A011548: Decimal expansion of sqrt(2) rounded to n places.

Offset 0, canonical program `A011548.P14501120540779775859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011548 (n : ℕ) : ℤ :=
  A011548.P14501120540779775859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A011548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011667.P7280617044505348943

`(A005710(n+3)+A005710(n))%2`
-/

namespace A011667.P7280617044505348943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005710 (n + 3) + A005710 n) 2

end

end A011667.P7280617044505348943

noncomputable section

/-- A011667: A binary m-sequence: expansion of reciprocal of x^6+x^5+x^3+x^2+1.

Offset 0, canonical program `A011667.P7280617044505348943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A011667 (n : ℕ) : ℤ :=
  A011667.P7280617044505348943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A011667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011673.P5383287273945378824

`A127840(n+2)%2`
-/

namespace A011673.P5383287273945378824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127840 (n + 2)) 2

end

end A011673.P5383287273945378824

noncomputable section

/-- A011673: A binary m-sequence: expansion of reciprocal of x^6+x^5+1.

Offset 0, canonical program `A011673.P5383287273945378824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A011673 (n : ℕ) : ℤ :=
  A011673.P5383287273945378824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A011673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011675.P11769286689550545566

`A135435(n+1)%2`
-/

namespace A011675.P11769286689550545566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135435 (n + 1)) 2

end

end A011675.P11769286689550545566

noncomputable section

/-- A011675: A binary m-sequence: expansion of reciprocal of x^7+x^4+1.

Offset 0, canonical program `A011675.P11769286689550545566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675 (n : ℕ) : ℤ :=
  A011675.P11769286689550545566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011686.P16684063772658876959

`A127841(n+2)%2`
-/

namespace A011686.P16684063772658876959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127841 (n + 2)) 2

end

end A011686.P16684063772658876959

noncomputable section

/-- A011686: A binary m-sequence: expansion of reciprocal of x^7 + x^6 + 1.

Offset 0, canonical program `A011686.P16684063772658876959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A011686 (n : ℕ) : ℤ :=
  A011686.P16684063772658876959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A011686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011769.P1104459669848881241

`∑[A098703(n)+A001654(n)]+1`
-/

namespace A011769.P1104459669848881241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 n + A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011769.P1104459669848881241

noncomputable section

/-- A011769: a(0) = 1, a(n+1) = 3 * a(n) - F(n)*(F(n) + 1), where F(n) = A000045(n) is n-th Fibonacci number.

Offset 0, canonical program `A011769.P1104459669848881241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A011769 (n : ℕ) : ℤ :=
  A011769.P1104459669848881241.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A011769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011819.P4272339507940383026

`∑[∑[A071239(n)+n]+1]+1`
-/

namespace A011819.P4272339507940383026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A011819.P4272339507940383026

noncomputable section

/-- A011819: M-sequences m_0,m_1,m_2,m_3 with m_1 < n.

Offset 1, canonical program `A011819.P4272339507940383026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011819 (n : ℕ) : ℤ :=
  A011819.P4272339507940383026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011961.P171061349715616591

`A307985(n+1)+∑[A005044(n+2)]`
-/

namespace A011961.P171061349715616591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011961.P171061349715616591

noncomputable section

/-- A011961: Number of ferrites M_4Y_n that repeat after 6n+20 layers.

Offset 1, canonical program `A011961.P171061349715616591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A011961 (n : ℕ) : ℤ :=
  A011961.P171061349715616591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A011961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011975.P1498631046022352403

`A001399(or(1, n+1))+∑[A008615(n)]`
-/

namespace A011975.P1498631046022352403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Nat.lor 1 (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011975.P1498631046022352403

noncomputable section

/-- A011975: Covering numbers C(n,3,2).

Offset 3, canonical program `A011975.P1498631046022352403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011975 (n : ℕ) : ℤ :=
  A011975.P1498631046022352403.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012493.P17492376463677172932

`Δ[A000931(5*n)]`
-/

namespace A012493.P17492376463677172932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012493.P17492376463677172932

noncomputable section

/-- A012493: Take every 5th term of Padovan sequence A000931, beginning with the fifth term.

Offset 0, canonical program `A012493.P17492376463677172932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012493 (n : ℕ) : ℤ :=
  A012493.P17492376463677172932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A012493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012864.P8751931188038800669

`A000931(5*n)`
-/

namespace A012864.P8751931188038800669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (5 * n)

end

end A012864.P8751931188038800669

noncomputable section

/-- A012864: Take every 5th term of Padovan sequence A000931, beginning with the first term.

Offset 0, canonical program `A012864.P8751931188038800669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012864 (n : ℕ) : ℤ :=
  A012864.P8751931188038800669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012866.P3426356787730502453

`A012855(n)+Δ[A012855(n+1)]`
-/

namespace A012866.P3426356787730502453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 n + (f1 (n + 1) - f1 n)

end

end A012866.P3426356787730502453

noncomputable section

/-- A012866: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

Offset 0, canonical program `A012866.P3426356787730502453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012866 (n : ℕ) : ℤ :=
  A012866.P3426356787730502453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A012866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013636.P11460064888098733582

`n*A000040(∑[C(∑{p}[n, #], n)])`
-/

namespace A013636.P11460064888098733582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A013636.P11460064888098733582

noncomputable section

/-- A013636: a(n) = n*nextprime(n).

Offset 0, canonical program `A013636.P11460064888098733582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013636 (n : ℕ) : ℤ :=
  A013636.P11460064888098733582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013929.P16481699796765016237

`lt[1, A005361(n+1)]+1`
-/

namespace A013929.P16481699796765016237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A013929.P16481699796765016237

noncomputable section

/-- A013929: Numbers that are not squarefree. Numbers that are divisible by a square greater than 1. The complement of A005117.

Offset 1, canonical program `A013929.P16481699796765016237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929 (n : ℕ) : ℤ :=
  (A013929.P16481699796765016237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013937.P2015318401438487883

`∑[∑{d}[n, A010057(#)]]`
-/

namespace A013937.P2015318401438487883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010057 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A013937.P2015318401438487883

noncomputable section

/-- A013937: a(n) = Sum_{k=1..n} floor(n/k^3).

Offset 0, canonical program `A013937.P2015318401438487883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013937 (n : ℕ) : ℤ :=
  A013937.P2015318401438487883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013985.P308578784732513040

`A117761(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A013985.P308578784732513040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A117761 (n - 2) + a (n - 2)

end

end A013985.P308578784732513040

noncomputable section

/-- A013985: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8).

Offset 0, canonical program `A013985.P308578784732513040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A013985 (n : ℕ) : ℤ :=
  A013985.P308578784732513040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A013985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013986.P11892081765873376738

`Δ[A023440(n)]`
-/

namespace A013986.P11892081765873376738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013986.P11892081765873376738

noncomputable section

/-- A013986: Expansion of 1/(1-x^2-x^3-x^4-x^5-x^6-x^7-x^8-x^9).

Offset 0, canonical program `A013986.P11892081765873376738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A013986 (n : ℕ) : ℤ :=
  A013986.P11892081765873376738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A013986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014023.P8727501565675565317

`A014016(n)*A033999(n)`
-/

namespace A014023.P8727501565675565317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n * A033999 n

end

end A014023.P8727501565675565317

noncomputable section

/-- A014023: Inverse of 14th cyclotomic polynomial.

Offset 0, canonical program `A014023.P8727501565675565317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014023 (n : ℕ) : ℤ :=
  A014023.P8727501565675565317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014030.P9782131551506662798

`A014018(A057357(n))`
-/

namespace A014030.P9782131551506662798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A057357 n).toNat

end

end A014030.P9782131551506662798

noncomputable section

/-- A014030: Inverse of 21st cyclotomic polynomial.

Offset 0, canonical program `A014030.P9782131551506662798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014030 (n : ℕ) : ℤ :=
  A014030.P9782131551506662798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014035.P9043399292843675734

`A014025(A057363(n))`
-/

namespace A014035.P9043399292843675734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A057363 n).toNat

end

end A014035.P9043399292843675734

noncomputable section

/-- A014035: Inverse of 26th cyclotomic polynomial.

Offset 0, canonical program `A014035.P9043399292843675734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014035 (n : ℕ) : ℤ :=
  A014035.P9043399292843675734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014036.P8056661823149945385

`A014018(A051176(n))`
-/

namespace A014036.P8056661823149945385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A051176 n).toNat

end

end A014036.P8056661823149945385

noncomputable section

/-- A014036: Inverse of 27th cyclotomic polynomial.

Offset 0, canonical program `A014036.P8056661823149945385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014036 (n : ℕ) : ℤ :=
  A014036.P8056661823149945385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014037.P7779358375219223676

`(A238469(n+1)-A238470(n))*A056594(n)`
-/

namespace A014037.P7779358375219223676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238469 (n + 1) - A238470 n) * A056594 n

end

end A014037.P7779358375219223676

noncomputable section

/-- A014037: Inverse of 28th cyclotomic polynomial.

Offset 0, canonical program `A014037.P7779358375219223676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014037 (n : ℕ) : ℤ :=
  A014037.P7779358375219223676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014041.P7274271345307664619

`A056594(lcm(8, n)/8)`
-/

namespace A014041.P7274271345307664619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

end

end A014041.P7274271345307664619

noncomputable section

/-- A014041: Inverse of 32nd cyclotomic polynomial.

Offset 0, canonical program `A014041.P7274271345307664619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014041 (n : ℕ) : ℤ :=
  A014041.P7274271345307664619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014140.P3701611324340069420

`∑[A014137(n)]`
-/

namespace A014140.P3701611324340069420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P3701611324340069420

noncomputable section

/-- A014140: Apply partial sum operator twice to Catalan numbers.

Offset 0, canonical program `A014140.P3701611324340069420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140 (n : ℕ) : ℤ :=
  A014140.P3701611324340069420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014148.P5588733548531681271

`∑[∑[A000040(n+1)]]`
-/

namespace A014148.P5588733548531681271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P5588733548531681271

noncomputable section

/-- A014148: a(n) = Sum_{m=1..n} Sum_{k=1..m} prime(k).

Offset 1, canonical program `A014148.P5588733548531681271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148 (n : ℕ) : ℤ :=
  A014148.P5588733548531681271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014172.P11335760464982680328

`∑[A005318(n+1)]`
-/

namespace A014172.P11335760464982680328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P11335760464982680328

noncomputable section

/-- A014172: Apply partial sum operator twice to Stern's sequence.

Offset 0, canonical program `A014172.P11335760464982680328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014172 (n : ℕ) : ℤ :=
  A014172.P11335760464982680328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A014172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014181.P6862459041778069308

`A010785(n+10)`
-/

namespace A014181.P6862459041778069308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 10)

end

end A014181.P6862459041778069308

noncomputable section

/-- A014181: Numbers > 9 with all digits the same.

Offset 1, canonical program `A014181.P6862459041778069308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 891 terms. -/
def A014181 (n : ℕ) : ℤ :=
  A014181.P6862459041778069308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 891 terms. -/
def A014181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014241.P6351505731176248955

`A000045(n+2)-A001690(n+1)`
-/

namespace A014241.P6351505731176248955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A001690 (n + 1)

end

end A014241.P6351505731176248955

noncomputable section

/-- A014241: a(n) = ((n+1)-st Fibonacci number) - (n-th non-Fibonacci number).

Offset 1, canonical program `A014241.P6351505731176248955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A014241 (n : ℕ) : ℤ :=
  A014241.P6351505731176248955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A014241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014242.P916885412522519883

`A000071(n+3)-comp[A000071(n+3)]`
-/

namespace A014242.P916885412522519883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014242.P916885412522519883

noncomputable section

/-- A014242: (n-th Fibonacci number that is not 1) - (n-th number that is 1 or not a Fibonacci number).

Offset 1, canonical program `A014242.P916885412522519883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A014242 (n : ℕ) : ℤ :=
  A014242.P916885412522519883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A014242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014244.P4790413058910627537

`A288219(n)-comp[A000204(n+1)]`
-/

namespace A014244.P4790413058910627537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014244.P4790413058910627537

noncomputable section

/-- A014244: (n-th Lucas number that is not 1) - (n-th number that is 1 or not a Lucas number).

Offset 1, canonical program `A014244.P4790413058910627537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014244 (n : ℕ) : ℤ :=
  A014244.P4790413058910627537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014246.P10682755400879158977

`A022843(n+1)-comp[A022843(n)]`
-/

namespace A014246.P10682755400879158977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014246.P10682755400879158977

noncomputable section

/-- A014246: a(n) = (n-th term of Beatty sequence for e) - (n-th term of Beatty sequence for e/(e-1)).

Offset 1, canonical program `A014246.P10682755400879158977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014246 (n : ℕ) : ℤ :=
  A014246.P10682755400879158977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014249.P16072168961144745307

`A329791(n+1)-comp[A329791(n)]`
-/

namespace A014249.P16072168961144745307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014249.P16072168961144745307

noncomputable section

/-- A014249: a(n) = b(n) - c(n) where b(n) = [n*sqrt(2)] + [n*sqrt(3)] and c(n) is the n-th number not in sequence b.

Offset 1, canonical program `A014249.P16072168961144745307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014249 (n : ℕ) : ℤ :=
  A014249.P16072168961144745307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A014249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014251.P12711182458160669696

`A000071(n+4)-comp[A000071(n+4)]`
-/

namespace A014251.P12711182458160669696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014251.P12711182458160669696

noncomputable section

/-- A014251: a(n) = b(n) - c(n) where b(n) is the n-th Fibonacci number greater than 2 and c(n) is the n-th number not in sequence b( ).

Offset 1, canonical program `A014251.P12711182458160669696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014251 (n : ℕ) : ℤ :=
  A014251.P12711182458160669696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014252.P854871451725317973

`A001610(n+2)-comp[A001610(n+2)]`
-/

namespace A014252.P854871451725317973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014252.P854871451725317973

noncomputable section

/-- A014252: a(n) = b(n) - c(n) where b(n) is the n-th Lucas number greater than 3 and c(n) is the n-th number not in sequence b( ).

Offset 1, canonical program `A014252.P854871451725317973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A014252 (n : ℕ) : ℤ :=
  A014252.P854871451725317973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A014252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014285.P2422315619309490149

`∑[(n+1)*A000040(n+1)]`
-/

namespace A014285.P2422315619309490149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014285.P2422315619309490149

noncomputable section

/-- A014285: a(n) = Sum_{j=1..n} j*prime(j).

Offset 1, canonical program `A014285.P2422315619309490149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014285 (n : ℕ) : ℤ :=
  A014285.P2422315619309490149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014318.P660768404803291763

`2^(n+1)-A158499(n+1)`
-/

namespace A014318.P660768404803291763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A158499 (n + 1)

end

end A014318.P660768404803291763

noncomputable section

/-- A014318: Convolution of Catalan numbers and powers of 2.

Offset 0, canonical program `A014318.P660768404803291763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014318 (n : ℕ) : ℤ :=
  A014318.P660768404803291763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014336.P3973408417306540936

`A000045(n)*A098703(n)-A001654(n)`
-/

namespace A014336.P3973408417306540936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A098703 n - A001654 n

end

end A014336.P3973408417306540936

noncomputable section

/-- A014336: Three-fold exponential convolution of Fibonacci numbers with themselves.

Offset 0, canonical program `A014336.P3973408417306540936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A014336 (n : ℕ) : ℤ :=
  A014336.P3973408417306540936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A014336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014392.P1942321098737970699

`A000855(3*n)`
-/

namespace A014392.P1942321098737970699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000855 (3 * n)

end

end A014392.P1942321098737970699

noncomputable section

/-- A014392: Final 2 digits of 8^n.

Offset 0, canonical program `A014392.P1942321098737970699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A014392 (n : ℕ) : ℤ :=
  A014392.P1942321098737970699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A014392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014409.P7587171456424882811

`∑[A001859(n)]+A002620(n)²`
-/

namespace A014409.P7587171456424882811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A002620 n ^ 2

end

end A014409.P7587171456424882811

noncomputable section

/-- A014409: Number of inequivalent ways (mod D_4) a pair of checkers can be placed on an n X n board.

Offset 1, canonical program `A014409.P7587171456424882811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014409 (n : ℕ) : ℤ :=
  A014409.P7587171456424882811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014419.P11152760906125658214

`eq[1, val(A270205(n+3), 9)]`
-/

namespace A014419.P11152760906125658214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A270205 (n + 3)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014419.P11152760906125658214

noncomputable section

/-- A014419: Write n in base of Catalan numbers, then interpret as if written in base 3.

Offset 0, canonical program `A014419.P11152760906125658214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A014419 (n : ℕ) : ℤ :=
  (A014419.P11152760906125658214.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A014419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014537.P15758308894467369716

`A002387(2*(n+1))`
-/

namespace A014537.P15758308894467369716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * (n + 1))

end

end A014537.P15758308894467369716

noncomputable section

/-- A014537: Number of books required for n book-lengths of overhang in the harmonic book stacking problem. Sum_{i=1..a(n)} 1/i >= 2n and Sum_{i=1..a(n)-1} 1/i < 2n.

Offset 1, canonical program `A014537.P15758308894467369716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A014537 (n : ℕ) : ℤ :=
  A014537.P15758308894467369716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A014537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014610.P17620630868811848070

`A001630(n+3)+Δ[A089074(n)]`
-/

namespace A014610.P17620630868811848070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 3) + (f1 (n + 1) - f1 n)

end

end A014610.P17620630868811848070

noncomputable section

/-- A014610: Tetranacci numbers arising in connection with current algebras sp(2)_n.

Offset 0, canonical program `A014610.P17620630868811848070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A014610 (n : ℕ) : ℤ :=
  A014610.P17620630868811848070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A014610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014686.P15303943369373504388

`A000040(n+1)-A033999(n+1)`
-/

namespace A014686.P15303943369373504388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A033999 (n + 1)

end

end A014686.P15303943369373504388

noncomputable section

/-- A014686: In sequence of prime numbers add 1 to first prime, 3rd prime, fifth prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

Offset 1, canonical program `A014686.P15303943369373504388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014686 (n : ℕ) : ℤ :=
  A014686.P15303943369373504388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014686.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014687.P8896920880824598729

`A000040(n+2)-A033999(n+1)`
-/

namespace A014687.P8896920880824598729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A033999 (n + 1)

end

end A014687.P8896920880824598729

noncomputable section

/-- A014687: In sequence of odd primes add 1 to first prime, 3rd prime, 5th prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

Offset 1, canonical program `A014687.P8896920880824598729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014687 (n : ℕ) : ℤ :=
  A014687.P8896920880824598729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014687.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014693.P15164110812174912353

`A000040(n+1)+∑[(n+1)*(-1)^n]`
-/

namespace A014693.P15164110812174912353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014693.P15164110812174912353

noncomputable section

/-- A014693: In sequence of prime numbers add 1 to first number, 2 to 3rd number, 3 to 5th number, ... then subtract 1 from 2nd number, 2 from 4th number, 3 from 6th number and so on.

Offset 1, canonical program `A014693.P15164110812174912353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014693 (n : ℕ) : ℤ :=
  A014693.P15164110812174912353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014730.P174668344449865089

`A014447(n)²`
-/

namespace A014730.P174668344449865089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 n ^ 2

end

end A014730.P174668344449865089

noncomputable section

/-- A014730: Squares of odd Lucas numbers.

Offset 0, canonical program `A014730.P174668344449865089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014730 (n : ℕ) : ℤ :=
  A014730.P174668344449865089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A014730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014743.P812673677614029723

`A164387(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A014743.P812673677614029723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A164387 (n - 2) + a (n - 1)

end

end A014743.P812673677614029723

noncomputable section

/-- A014743: Expansion of (1+x)/(1-x-x^2-x^4-x^5).

Offset 0, canonical program `A014743.P812673677614029723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 388 terms. -/
def A014743 (n : ℕ) : ℤ :=
  A014743.P812673677614029723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 388 terms. -/
def A014743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014773.P6939107552307873484

`A014637(n)²`
-/

namespace A014773.P6939107552307873484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014637 n ^ 2

end

end A014773.P6939107552307873484

noncomputable section

/-- A014773: Squares of odd heptagonal numbers.

Offset 1, canonical program `A014773.P6939107552307873484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014773 (n : ℕ) : ℤ :=
  A014773.P6939107552307873484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014792.P5188408009213786689

`A014640(n)²`
-/

namespace A014792.P5188408009213786689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014640 n ^ 2

end

end A014792.P5188408009213786689

noncomputable section

/-- A014792: Squares of even heptagonal numbers.

Offset 0, canonical program `A014792.P5188408009213786689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014792 (n : ℕ) : ℤ :=
  A014792.P5188408009213786689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014965.P12001658447029218261

`∑[-Δ[-lcm(n, A000045(n))]]`
-/

namespace A014965.P12001658447029218261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lcm (n : ℤ) (A000045 n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014965.P12001658447029218261

noncomputable section

/-- A014965: a(n) = lcm(n, Fibonacci(n)).

Offset 1, canonical program `A014965.P12001658447029218261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A014965 (n : ℕ) : ℤ :=
  A014965.P12001658447029218261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A014965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015226.P15515667176513301738

`A002412(record[or(2, n)+1])`
-/

namespace A015226.P15515667176513301738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A015226.P15515667176513301738

noncomputable section

/-- A015226: Even hexagonal pyramidal numbers.

Offset 0, canonical program `A015226.P15515667176513301738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A015226 (n : ℕ) : ℤ :=
  A015226.P15515667176513301738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A015226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015917.P17786736345443839499

`eq[A001065(n+1), A001065(n+13)]+1`
-/

namespace A015917.P17786736345443839499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015917.P17786736345443839499

noncomputable section

/-- A015917: Numbers k such that sigma(k) + 12 = sigma(k+12).

Offset 1, canonical program `A015917.P17786736345443839499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A015917 (n : ℕ) : ℤ :=
  (A015917.P17786736345443839499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A015917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015928.P17940027003137050527

`A000035(∑[char[A000040(3*n+5)]]!)`
-/

namespace A015928.P17940027003137050527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015928.P17940027003137050527

noncomputable section

/-- A015928: Inverse of 1919th cyclotomic polynomial.

Offset 0, canonical program `A015928.P17940027003137050527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A015928 (n : ℕ) : ℤ :=
  A015928.P17940027003137050527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A015928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016002.P10244408839077172288

`ceil(∏{e}[n+1, A016993(#)]/7)`
-/

namespace A016002.P10244408839077172288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / 7⌉

end

end A016002.P10244408839077172288

noncomputable section

/-- A016002: a(n) = (tau(n^7)+6)/7.

Offset 1, canonical program `A016002.P10244408839077172288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016002 (n : ℕ) : ℤ :=
  A016002.P10244408839077172288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016040.P16668472596033548107

`floor(∑[log(A000040(n+1))])`
-/

namespace A016040.P16668472596033548107
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016040.P16668472596033548107

noncomputable section

/-- A016040: Integer part of Chebyshev's theta function: floor( log(Product_{k=1..n} prime(k)) ).

Offset 1, canonical program `A016040.P16668472596033548107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016040 (n : ℕ) : ℤ :=
  A016040.P16668472596033548107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017674.P17821829466119099200

`A000584(n+1)/A001160(n+1)*A017673(n+1)`
-/

namespace A017674.P17821829466119099200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 (n + 1) : ℚ) / (A001160 (n + 1) : ℚ) * (A017673 (n + 1) : ℚ)

end

end A017674.P17821829466119099200

noncomputable section

/-- A017674: Denominator of sum of -5th powers of divisors of n.

Offset 1, canonical program `A017674.P17821829466119099200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A017674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017674.P17821829466119099200.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A017674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017901.P9908741470765038447

`Δ[A005709(abs(1-n))-A000007(n)]`
-/

namespace A017901.P9908741470765038447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 |1 - (n : ℤ)|.toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017901.P9908741470765038447

noncomputable section

/-- A017901: Expansion of 1/(1 - x^7 - x^8 - ...).

Offset 0, canonical program `A017901.P9908741470765038447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. -/
def A017901 (n : ℕ) : ℤ :=
  A017901.P9908741470765038447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1016 terms. -/
def A017901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017911.P11746449396979657446

`A057048((n-1)%(n+1))`
-/

namespace A017911.P11746449396979657446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A017911.P11746449396979657446

noncomputable section

/-- A017911: Powers of sqrt(2) rounded to nearest integer.

Offset 0, canonical program `A017911.P11746449396979657446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A017911 (n : ℕ) : ℤ :=
  A017911.P11746449396979657446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A017911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017984.P9301343140417999525

`A017982(n)+n²%3`
-/

namespace A017984.P9301343140417999525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017984.P9301343140417999525

noncomputable section

/-- A017984: Powers of cube root of 3 rounded up.

Offset 0, canonical program `A017984.P9301343140417999525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017984 (n : ℕ) : ℤ :=
  A017984.P9301343140417999525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017985.P1637897509349652819

`A017981(2*n)-A011655(n)`
-/

namespace A017985.P1637897509349652819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n) - A011655 n

end

end A017985.P1637897509349652819

noncomputable section

/-- A017985: Powers of cube root of 4 rounded down.

Offset 0, canonical program `A017985.P1637897509349652819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017985 (n : ℕ) : ℤ :=
  A017985.P1637897509349652819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017987.P11170690977755083932

`A017981(2*n)`
-/

namespace A017987.P11170690977755083932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (2 * n)

end

end A017987.P11170690977755083932

noncomputable section

/-- A017987: Powers of cube root of 4 rounded up.

Offset 0, canonical program `A017987.P11170690977755083932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017987 (n : ℕ) : ℤ :=
  A017987.P11170690977755083932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017990.P6936312708764945254

`A017988(n)+n²%3`
-/

namespace A017990.P6936312708764945254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017990.P6936312708764945254

noncomputable section

/-- A017990: Powers of cube root of 5 rounded up.

Offset 0, canonical program `A017990.P6936312708764945254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A017990 (n : ℕ) : ℤ :=
  A017990.P6936312708764945254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A017990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017993.P3313661977526285217

`A017991(n)+A011655(n)`
-/

namespace A017993.P3313661977526285217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017991 n + A011655 n

end

end A017993.P3313661977526285217

noncomputable section

/-- A017993: Powers of cube root of 6 rounded up.

Offset 0, canonical program `A017993.P3313661977526285217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017993 (n : ℕ) : ℤ :=
  A017993.P3313661977526285217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017996.P14283704290407302258

`A017994(n)+n²%3`
-/

namespace A017996.P14283704290407302258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017996.P14283704290407302258

noncomputable section

/-- A017996: Powers of cube root of 7 rounded up.

Offset 0, canonical program `A017996.P14283704290407302258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017996 (n : ℕ) : ℤ :=
  A017996.P14283704290407302258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018000.P12566814103099478929

`A017982(2*n)`
-/

namespace A018000.P12566814103099478929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n)

end

end A018000.P12566814103099478929

noncomputable section

/-- A018000: Powers of cube root of 9 rounded down.

Offset 0, canonical program `A018000.P12566814103099478929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018000 (n : ℕ) : ℤ :=
  A018000.P12566814103099478929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018001.P12620626073793832567

`A017983(2*n)`
-/

namespace A018001.P12620626073793832567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017983 (2 * n)

end

end A018001.P12620626073793832567

noncomputable section

/-- A018001: Powers of cube root of 9 rounded to nearest integer.

Offset 0, canonical program `A018001.P12620626073793832567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018001 (n : ℕ) : ℤ :=
  A018001.P12620626073793832567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A018001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018005.P1217500562103082431

`A018003(n)+A011655(n)`
-/

namespace A018005.P1217500562103082431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018003 n + A011655 n

end

end A018005.P1217500562103082431

noncomputable section

/-- A018005: Smallest number whose cube has n digits.

Offset 1, canonical program `A018005.P1217500562103082431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018005 (n : ℕ) : ℤ :=
  A018005.P1217500562103082431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018008.P15591260217316423838

`A018006(n)+n²%3`
-/

namespace A018008.P15591260217316423838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018008.P15591260217316423838

noncomputable section

/-- A018008: Powers of cube root of 11 rounded up.

Offset 0, canonical program `A018008.P15591260217316423838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018008 (n : ℕ) : ℤ :=
  A018008.P15591260217316423838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018017.P9867344629284296178

`A018015(n)+n²%3`
-/

namespace A018017.P9867344629284296178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018017.P9867344629284296178

noncomputable section

/-- A018017: Powers of cube root of 14 rounded up.

Offset 0, canonical program `A018017.P9867344629284296178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018017 (n : ℕ) : ℤ :=
  A018017.P9867344629284296178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018020.P4086690302044614733

`A018018(n)+n²%3`
-/

namespace A018020.P4086690302044614733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018020.P4086690302044614733

noncomputable section

/-- A018020: Powers of cube root of 15 rounded up.

Offset 0, canonical program `A018020.P4086690302044614733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018020 (n : ℕ) : ℤ :=
  A018020.P4086690302044614733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018022.P11346396830169355532

`A017986(2*n)`
-/

namespace A018022.P11346396830169355532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017986 (2 * n)

end

end A018022.P11346396830169355532

noncomputable section

/-- A018022: Powers of cube root of 16 rounded to nearest integer.

Offset 0, canonical program `A018022.P11346396830169355532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018022 (n : ℕ) : ℤ :=
  A018022.P11346396830169355532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A018022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018026.P9406872516472099550

`A018024(n)+A011655(n)`
-/

namespace A018026.P9406872516472099550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + A011655 n

end

end A018026.P9406872516472099550

noncomputable section

/-- A018026: Powers of cube root of 17 rounded up.

Offset 0, canonical program `A018026.P9406872516472099550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018026 (n : ℕ) : ℤ :=
  A018026.P9406872516472099550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018029.P1393310261986526519

`A018027(n)+n²%3`
-/

namespace A018029.P1393310261986526519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018029.P1393310261986526519

noncomputable section

/-- A018029: Powers of cube root of 18 rounded up.

Offset 0, canonical program `A018029.P1393310261986526519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018029 (n : ℕ) : ℤ :=
  A018029.P1393310261986526519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018031.P16726517439334196273

`floor(A018030(2*n)/A018030(n))`
-/

namespace A018031.P16726517439334196273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018030 (2 * n) : ℚ) / (A018030 n : ℚ)⌋

end

end A018031.P16726517439334196273

noncomputable section

/-- A018031: Powers of cube root of 19 rounded to nearest integer.

Offset 0, canonical program `A018031.P16726517439334196273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A018031 (n : ℕ) : ℤ :=
  A018031.P16726517439334196273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A018031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018032.P6828655559062813698

`A018030(n)+A011655(n)`
-/

namespace A018032.P6828655559062813698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + A011655 n

end

end A018032.P6828655559062813698

noncomputable section

/-- A018032: Powers of cube root of 19 rounded up.

Offset 0, canonical program `A018032.P6828655559062813698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018032 (n : ℕ) : ℤ :=
  A018032.P6828655559062813698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018034.P5652497311994361569

`floor(A018033(2*n)/A018033(n))`
-/

namespace A018034.P5652497311994361569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018033 (2 * n) : ℚ) / (A018033 n : ℚ)⌋

end

end A018034.P5652497311994361569

noncomputable section

/-- A018034: Powers of cube root of 20 rounded to nearest integer.

Offset 0, canonical program `A018034.P5652497311994361569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A018034 (n : ℕ) : ℤ :=
  A018034.P5652497311994361569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A018034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018035.P9055610647671047137

`A018033(n)+A011655(n)`
-/

namespace A018035.P9055610647671047137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A011655 n

end

end A018035.P9055610647671047137

noncomputable section

/-- A018035: Powers of cube root of 20 rounded up.

Offset 0, canonical program `A018035.P9055610647671047137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018035 (n : ℕ) : ℤ :=
  A018035.P9055610647671047137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018037.P11225067572236605742

`round(21^(n/3))%A183712(n+1)`
-/

namespace A018037.P11225067572236605742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A183712 (n + 1))

end

end A018037.P11225067572236605742

noncomputable section

/-- A018037: Powers of cube root of 21 rounded to nearest integer.

Offset 0, canonical program `A018037.P11225067572236605742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A018037 (n : ℕ) : ℤ :=
  A018037.P11225067572236605742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A018037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018038.P14270364732823888752

`A018036(n)+A011655(n)`
-/

namespace A018038.P14270364732823888752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + A011655 n

end

end A018038.P14270364732823888752

noncomputable section

/-- A018038: Powers of cube root of 21 rounded up.

Offset 0, canonical program `A018038.P14270364732823888752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018038 (n : ℕ) : ℤ :=
  A018038.P14270364732823888752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018041.P12813239236874280382

`A018039(n)+n²%3`
-/

namespace A018041.P12813239236874280382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018041.P12813239236874280382

noncomputable section

/-- A018041: Powers of cube root of 22 rounded up.

Offset 0, canonical program `A018041.P12813239236874280382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018041 (n : ℕ) : ℤ :=
  A018041.P12813239236874280382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018044.P17736943157866595348

`A018042(n)+A011655(n)`
-/

namespace A018044.P17736943157866595348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A011655 n

end

end A018044.P17736943157866595348

noncomputable section

/-- A018044: Powers of cube root of 23 rounded up.

Offset 0, canonical program `A018044.P17736943157866595348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018044 (n : ℕ) : ℤ :=
  A018044.P17736943157866595348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018047.P6361301627475973376

`A018045(n)+A011655(n)`
-/

namespace A018047.P6361301627475973376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + A011655 n

end

end A018047.P6361301627475973376

noncomputable section

/-- A018047: Powers of cube root of 24 rounded up.

Offset 0, canonical program `A018047.P6361301627475973376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018047 (n : ℕ) : ℤ :=
  A018047.P6361301627475973376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018049.P9155946535238031673

`A018048(A020705(n))-A018048(n)`
-/

namespace A018049.P9155946535238031673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (A020705 n).toNat - A018048 n

end

end A018049.P9155946535238031673

noncomputable section

/-- A018049: Powers of fourth root of 2 rounded to nearest integer.

Offset 0, canonical program `A018049.P9155946535238031673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A018049 (n : ℕ) : ℤ :=
  A018049.P9155946535238031673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. -/
def A018049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018050.P7202811115113250674

`A166486(n)+A018048(n)`
-/

namespace A018050.P7202811115113250674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018048 n

end

end A018050.P7202811115113250674

noncomputable section

/-- A018050: Powers of fourth root of 2 rounded up.

Offset 0, canonical program `A018050.P7202811115113250674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018050 (n : ℕ) : ℤ :=
  A018050.P7202811115113250674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018053.P10874141411522457307

`A166486(n)+A018051(n)`
-/

namespace A018053.P10874141411522457307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018051 n

end

end A018053.P10874141411522457307

noncomputable section

/-- A018053: Powers of fourth root of 3 rounded up.

Offset 0, canonical program `A018053.P10874141411522457307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018053 (n : ℕ) : ℤ :=
  A018053.P10874141411522457307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018059.P17236117683466257866

`A166486(n)+A018057(n)`
-/

namespace A018059.P17236117683466257866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018057 n

end

end A018059.P17236117683466257866

noncomputable section

/-- A018059: Powers of fourth root of 5 rounded up.

Offset 0, canonical program `A018059.P17236117683466257866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018059 (n : ℕ) : ℤ :=
  A018059.P17236117683466257866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018062.P8777464907617138448

`A166486(n)+A018060(n)`
-/

namespace A018062.P8777464907617138448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018060 n

end

end A018062.P8777464907617138448

noncomputable section

/-- A018062: Powers of fourth root of 6 rounded up.

Offset 0, canonical program `A018062.P8777464907617138448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062 (n : ℕ) : ℤ :=
  A018062.P8777464907617138448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018065.P10127883038866742777

`A166486(n)+A018063(n)`
-/

namespace A018065.P10127883038866742777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018063 n

end

end A018065.P10127883038866742777

noncomputable section

/-- A018065: Powers of fourth root of 7 rounded up.

Offset 0, canonical program `A018065.P10127883038866742777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018065 (n : ℕ) : ℤ :=
  A018065.P10127883038866742777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018066.P7812183996928124791

`A018068(n)-A166486(n)`
-/

namespace A018066.P7812183996928124791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n - A166486 n

end

end A018066.P7812183996928124791

noncomputable section

/-- A018066: Powers of fourth root of 8 rounded down.

Offset 0, canonical program `A018066.P7812183996928124791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018066 (n : ℕ) : ℤ :=
  A018066.P7812183996928124791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018074.P3627246100912372173

`A166486(n)+A018072(n)`
-/

namespace A018074.P3627246100912372173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018072 n

end

end A018074.P3627246100912372173

noncomputable section

/-- A018074: Powers of fourth root of 10 rounded up.

Offset 0, canonical program `A018074.P3627246100912372173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018074 (n : ℕ) : ℤ :=
  A018074.P3627246100912372173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018077.P10293243021085696785

`A166486(n)+A018075(n)`
-/

namespace A018077.P10293243021085696785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018075 n

end

end A018077.P10293243021085696785

noncomputable section

/-- A018077: Powers of fourth root of 11 rounded up.

Offset 0, canonical program `A018077.P10293243021085696785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018077 (n : ℕ) : ℤ :=
  A018077.P10293243021085696785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018080.P3905317944633213150

`A166486(n)+A018078(n)`
-/

namespace A018080.P3905317944633213150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018078 n

end

end A018080.P3905317944633213150

noncomputable section

/-- A018080: Powers of fourth root of 12 rounded up.

Offset 0, canonical program `A018080.P3905317944633213150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018080 (n : ℕ) : ℤ :=
  A018080.P3905317944633213150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018083.P16938260605876087660

`A166486(n)+A018081(n)`
-/

namespace A018083.P16938260605876087660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018081 n

end

end A018083.P16938260605876087660

noncomputable section

/-- A018083: Powers of fourth root of 13 rounded up.

Offset 0, canonical program `A018083.P16938260605876087660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018083 (n : ℕ) : ℤ :=
  A018083.P16938260605876087660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018086.P14049671221435333370

`A166486(n)+A018084(n)`
-/

namespace A018086.P14049671221435333370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018084 n

end

end A018086.P14049671221435333370

noncomputable section

/-- A018086: Powers of fourth root of 14 rounded up.

Offset 0, canonical program `A018086.P14049671221435333370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018086 (n : ℕ) : ℤ :=
  A018086.P14049671221435333370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018089.P13846765686959543665

`A166486(n)+A018087(n)`
-/

namespace A018089.P13846765686959543665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018087 n

end

end A018089.P13846765686959543665

noncomputable section

/-- A018089: Powers of fourth root of 15 rounded up.

Offset 0, canonical program `A018089.P13846765686959543665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018089 (n : ℕ) : ℤ :=
  A018089.P13846765686959543665.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018095.P14089529475957644628

`A166486(n)+A018093(n)`
-/

namespace A018095.P14089529475957644628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018093 n

end

end A018095.P14089529475957644628

noncomputable section

/-- A018095: Powers of fourth root of 17 rounded up.

Offset 0, canonical program `A018095.P14089529475957644628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018095 (n : ℕ) : ℤ :=
  A018095.P14089529475957644628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018098.P6444872509897601762

`A166486(n)+A018096(n)`
-/

namespace A018098.P6444872509897601762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018096 n

end

end A018098.P6444872509897601762

noncomputable section

/-- A018098: Powers of fourth root of 18 rounded up.

Offset 0, canonical program `A018098.P6444872509897601762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018098 (n : ℕ) : ℤ :=
  A018098.P6444872509897601762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018101.P8812853209003547044

`A166486(n)+A018099(n)`
-/

namespace A018101.P8812853209003547044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018099 n

end

end A018101.P8812853209003547044

noncomputable section

/-- A018101: Powers of fourth root of 19 rounded up.

Offset 0, canonical program `A018101.P8812853209003547044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018101 (n : ℕ) : ℤ :=
  A018101.P8812853209003547044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018104.P12323327033336640985

`A166486(n)+A018102(n)`
-/

namespace A018104.P12323327033336640985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018102 n

end

end A018104.P12323327033336640985

noncomputable section

/-- A018104: Powers of fourth root of 20 rounded up.

Offset 0, canonical program `A018104.P12323327033336640985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018104 (n : ℕ) : ℤ :=
  A018104.P12323327033336640985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018107.P12842287637002873207

`A166486(n)+A018105(n)`
-/

namespace A018107.P12842287637002873207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018105 n

end

end A018107.P12842287637002873207

noncomputable section

/-- A018107: Powers of fourth root of 21 rounded up.

Offset 0, canonical program `A018107.P12842287637002873207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018107 (n : ℕ) : ℤ :=
  A018107.P12842287637002873207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018110.P6128057492059747435

`A166486(n)+A018108(n)`
-/

namespace A018110.P6128057492059747435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018108 n

end

end A018110.P6128057492059747435

noncomputable section

/-- A018110: Powers of fourth root of 22 rounded up.

Offset 0, canonical program `A018110.P6128057492059747435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018110 (n : ℕ) : ℤ :=
  A018110.P6128057492059747435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018113.P2157205403128814120

`A166486(n)+A018111(n)`
-/

namespace A018113.P2157205403128814120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018111 n

end

end A018113.P2157205403128814120

noncomputable section

/-- A018113: Powers of fourth root of 23 rounded up.

Offset 0, canonical program `A018113.P2157205403128814120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018113 (n : ℕ) : ℤ :=
  A018113.P2157205403128814120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018116.P13344171312656503620

`A166486(n)+A018114(n)`
-/

namespace A018116.P13344171312656503620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018114 n

end

end A018116.P13344171312656503620

noncomputable section

/-- A018116: Powers of fourth root of 24 rounded up.

Offset 0, canonical program `A018116.P13344171312656503620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018116 (n : ℕ) : ℤ :=
  A018116.P13344171312656503620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018128.P14907345293032255728

`ceil(A018127(2*n)/A018127(n))`
-/

namespace A018128.P14907345293032255728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018127 (2 * n) : ℚ) / (A018127 n : ℚ)⌉

end

end A018128.P14907345293032255728

noncomputable section

/-- A018128: Powers of fifth root of 5 rounded up.

Offset 0, canonical program `A018128.P14907345293032255728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A018128 (n : ℕ) : ℤ :=
  A018128.P14907345293032255728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A018128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018130.P11323371319505450073

`round(6^(n/5))%A022382(n+1)`
-/

namespace A018130.P11323371319505450073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A022382 (n + 1))

end

end A018130.P11323371319505450073

noncomputable section

/-- A018130: Powers of fifth root of 6 rounded to nearest integer.

Offset 0, canonical program `A018130.P11323371319505450073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018130 (n : ℕ) : ℤ :=
  A018130.P11323371319505450073.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018133.P1935935528495860089

`round(7^(n/5))%A022112(n)`
-/

namespace A018133.P1935935528495860089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A022112 n)

end

end A018133.P1935935528495860089

noncomputable section

/-- A018133: Powers of fifth root of 7 rounded to nearest integer.

Offset 0, canonical program `A018133.P1935935528495860089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A018133 (n : ℕ) : ℤ :=
  A018133.P1935935528495860089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A018133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018139.P12614381874718071357

`A018121(2*n)`
-/

namespace A018139.P12614381874718071357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018121 (2 * n)

end

end A018139.P12614381874718071357

noncomputable section

/-- A018139: Powers of fifth root of 9 rounded to nearest integer.

Offset 0, canonical program `A018139.P12614381874718071357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018139 (n : ℕ) : ℤ :=
  A018139.P12614381874718071357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018151.P1581584185306457396

`round(root(A017943(n), 5)²)`
-/

namespace A018151.P1581584185306457396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017943 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018151.P1581584185306457396

noncomputable section

/-- A018151: Powers of fifth root of 13 rounded to nearest integer.

Offset 0, canonical program `A018151.P1581584185306457396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A018151 (n : ℕ) : ℤ :=
  A018151.P1581584185306457396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A018151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018158.P18139790836956322692

`ceil(A018157(2*n)/A018157(n))`
-/

namespace A018158.P18139790836956322692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018157 (2 * n) : ℚ) / (A018157 n : ℚ)⌉

end

end A018158.P18139790836956322692

noncomputable section

/-- A018158: Powers of fifth root of 15 rounded up.

Offset 0, canonical program `A018158.P18139790836956322692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A018158 (n : ℕ) : ℤ :=
  A018158.P18139790836956322692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A018158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018159.P10237429046590111371

`A018123(2*n)`
-/

namespace A018159.P10237429046590111371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018123 (2 * n)

end

end A018159.P10237429046590111371

noncomputable section

/-- A018159: Powers of fifth root of 16 rounded down.

Offset 0, canonical program `A018159.P10237429046590111371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018159 (n : ℕ) : ℤ :=
  A018159.P10237429046590111371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A018159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018166.P6810236982058479144

`round(sqrt(A018165(2*n)))`
-/

namespace A018166.P6810236982058479144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018165 (2 * n) : ℝ))

end

end A018166.P6810236982058479144

noncomputable section

/-- A018166: Powers of fifth root of 18 rounded to nearest integer.

Offset 0, canonical program `A018166.P6810236982058479144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A018166 (n : ℕ) : ℤ :=
  A018166.P6810236982058479144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A018166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018169.P17188329938784537795

`round(19^(n/5))%A000079(n+1)`
-/

namespace A018169.P17188329938784537795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((19 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A000079 (n + 1))

end

end A018169.P17188329938784537795

noncomputable section

/-- A018169: Powers of fifth root of 19 rounded to nearest integer.

Offset 0, canonical program `A018169.P17188329938784537795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A018169 (n : ℕ) : ℤ :=
  A018169.P17188329938784537795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A018169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018178.P8186179901445619379

`round(sqrt(A018177(2*n)))`
-/

namespace A018178.P8186179901445619379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018177 (2 * n) : ℝ))

end

end A018178.P8186179901445619379

noncomputable section

/-- A018178: Powers of fifth root of 22 rounded to nearest integer.

Offset 0, canonical program `A018178.P8186179901445619379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A018178 (n : ℕ) : ℤ :=
  A018178.P8186179901445619379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A018178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018181.P1639594874919561374

`round(root(A017973(n), 5)²)`
-/

namespace A018181.P1639594874919561374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A017973 n : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A018181.P1639594874919561374

noncomputable section

/-- A018181: Powers of fifth root of 23 rounded to nearest integer.

Offset 0, canonical program `A018181.P1639594874919561374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A018181 (n : ℕ) : ℤ :=
  A018181.P1639594874919561374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A018181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018184.P13875373849819010364

`round(24^(n/5))%(A048488(n+1)+8)`
-/

namespace A018184.P13875373849819010364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (A048488 (n + 1) + 8)

end

end A018184.P13875373849819010364

noncomputable section

/-- A018184: Powers of fifth root of 24 rounded to nearest integer.

Offset 0, canonical program `A018184.P13875373849819010364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A018184 (n : ℕ) : ℤ :=
  A018184.P13875373849819010364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A018184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018218.P6984315024413548362

`A130783(2*n)-A002699(n)`
-/

namespace A018218.P6984315024413548362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (2 * n) - A002699 n

end

end A018218.P6984315024413548362

noncomputable section

/-- A018218: Sum(C(j)*(n-j)*4^(n-j-1),j=0..n-1), C = Catalan numbers.

Offset 0, canonical program `A018218.P6984315024413548362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A018218 (n : ℕ) : ℤ :=
  A018218.P6984315024413548362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A018218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018240.P5992942642159354695

`A005418(n+1)-A090597(n+3)`
-/

namespace A018240.P5992942642159354695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A090597 (n + 3)

end

end A018240.P5992942642159354695

noncomputable section

/-- A018240: Number of rational knots (or two-bridge knots) with n crossings (up to mirroring).

Offset 3, canonical program `A018240.P5992942642159354695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A018240 (n : ℕ) : ℤ :=
  A018240.P5992942642159354695.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A018240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018245.P6139162678383067992

`5-Δ[A195177(n)]`
-/

namespace A018245.P6139162678383067992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A018245.P6139162678383067992

noncomputable section

/-- A018245: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=4.

Offset 1, canonical program `A018245.P6139162678383067992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018245 (n : ℕ) : ℤ :=
  A018245.P6139162678383067992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018252.P16557407491482004301

`record[(n+3)%(2-A000203(n+3))]`
-/

namespace A018252.P16557407491482004301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (2 - A000203 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018252.P16557407491482004301

noncomputable section

/-- A018252: The nonprime numbers: 1 together with the composite numbers, A002808.

Offset 1, canonical program `A018252.P16557407491482004301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252 (n : ℕ) : ℤ :=
  A018252.P16557407491482004301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018886.P7603226283791142626

`or(∑[A027649(n)], A095121(n))`
-/

namespace A018886.P7603226283791142626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A095121 n)

end

end A018886.P7603226283791142626

noncomputable section

/-- A018886: Waring's problem: least positive integer requiring maximum number of terms when expressed as a sum of positive n-th powers.

Offset 1, canonical program `A018886.P7603226283791142626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A018886 (n : ℕ) : ℤ :=
  A018886.P7603226283791142626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A018886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019445.P16288997775079485038

`(n+1)*(A005206(n)+1)`
-/

namespace A019445.P16288997775079485038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005206 n + 1)

end

end A019445.P16288997775079485038

noncomputable section

/-- A019445: Form a permutation of the positive integers, p_1, p_2, ..., such that the average of each initial segment is an integer, using the greedy algorithm to define p_n; sequence gives p_1 + ... + p_n.

Offset 1, canonical program `A019445.P16288997775079485038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019445 (n : ℕ) : ℤ :=
  A019445.P16288997775079485038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019461.P12105906875557875900

`A057979(n+1)*A111063(A004526(n+1))`
-/

namespace A019461.P12105906875557875900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1) * A111063 (A004526 (n + 1)).toNat

end

end A019461.P12105906875557875900

noncomputable section

/-- A019461: Add 1, multiply by 1, add 2, multiply by 2, etc.; start with 0.

Offset 0, canonical program `A019461.P12105906875557875900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019461 (n : ℕ) : ℤ :=
  A019461.P12105906875557875900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A019461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019587.P7183734736030190447

`∑[A026351(n)-n*A001468(n)]`
-/

namespace A019587.P7183734736030190447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - (n : ℤ) * A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019587.P7183734736030190447

noncomputable section

/-- A019587: The left budding sequence: number of i such that 0 < i <= n and 0 < {phi*i} <= {phi*n}, where {} denotes the fractional part and phi = A001622.

Offset 1, canonical program `A019587.P7183734736030190447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019587 (n : ℕ) : ℤ :=
  A019587.P7183734736030190447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020332.P16132858014043730416

`(n+1)*(A053644(A000267(n+1))²+1)`
-/

namespace A020332.P16132858014043730416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A053644 (A000267 (n + 1)).toNat ^ 2 + 1)

end

end A020332.P16132858014043730416

noncomputable section

/-- A020332: Numbers whose base-4 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020332.P16132858014043730416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020332 (n : ℕ) : ℤ :=
  A020332.P16132858014043730416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020702.P2072395927400788593

`2*A008669(n)-A008748(n)`
-/

namespace A020702.P2072395927400788593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008669 n - A008748 n

end

end A020702.P2072395927400788593

noncomputable section

/-- A020702: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)*(1-x^5)).

Offset 0, canonical program `A020702.P2072395927400788593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020702 (n : ℕ) : ℤ :=
  A020702.P2072395927400788593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020703.P11598707857609940859

`abs(A001844(floor(sqrt(n)))-n)`
-/

namespace A020703.P11598707857609940859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 (Nat.sqrt n) - (n : ℤ)|

end

end A020703.P11598707857609940859

noncomputable section

/-- A020703: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,3,5,7,...

Offset 1, canonical program `A020703.P11598707857609940859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020703 (n : ℕ) : ℤ :=
  A020703.P11598707857609940859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020866.P8518708262098363558

`A123304(n+2)-2*A033999(n)`
-/

namespace A020866.P8518708262098363558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123304 (n + 2) - 2 * A033999 n

end

end A020866.P8518708262098363558

noncomputable section

/-- A020866: Number of strong edge-subgraphs in Moebius ladder M_n.

Offset 2, canonical program `A020866.P8518708262098363558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A020866 (n : ℕ) : ℤ :=
  A020866.P8518708262098363558.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A020866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020911.P470209350847853776

`ceil(log(A000045(n+1)+1)/log(3))`
-/

namespace A020911.P470209350847853776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A000045 (n + 1) + 1 : ℝ) / Real.log (3 : ℝ)⌉

end

end A020911.P470209350847853776

noncomputable section

/-- A020911: Number of digits in the base 3 representation of n-th Fibonacci number.

Offset 1, canonical program `A020911.P470209350847853776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A020911 (n : ℕ) : ℤ :=
  A020911.P470209350847853776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A020911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020957.P6769035182663688705

`A288219(n)+∑[A014217(n)]`
-/

namespace A020957.P6769035182663688705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020957.P6769035182663688705

noncomputable section

/-- A020957: a(n) = Sum_{k >= 1} floor(2*tau^(n-k)).

Offset 1, canonical program `A020957.P6769035182663688705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A020957 (n : ℕ) : ℤ :=
  A020957.P6769035182663688705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A020957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020965.P8785795445900425784

`A005187(n+1)+A005187(A049472(n+1))`
-/

namespace A020965.P8785795445900425784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + A005187 (A049472 (n + 1)).toNat

end

end A020965.P8785795445900425784

noncomputable section

/-- A020965: a(n) = Sum_{k >= 1} floor(n*sqrt(2)^(1-k)).

Offset 1, canonical program `A020965.P8785795445900425784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020965 (n : ℕ) : ℤ :=
  A020965.P8785795445900425784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021044.P1839291358267618537

`∑[A016277(n)]`
-/

namespace A021044.P1839291358267618537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021044.P1839291358267618537

noncomputable section

/-- A021044: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 3*x)*(1 - 8*x)).

Offset 0, canonical program `A021044.P1839291358267618537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021044 (n : ℕ) : ℤ :=
  A021044.P1839291358267618537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021049.P16151913952994111315

`∑[A016279(n)]`
-/

namespace A021049.P16151913952994111315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021049.P16151913952994111315

noncomputable section

/-- A021049: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-10*x)).

Offset 0, canonical program `A021049.P16151913952994111315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021049 (n : ℕ) : ℤ :=
  A021049.P16151913952994111315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021079.P6710060595549819137

`∑[A016285(n)]`
-/

namespace A021079.P6710060595549819137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021079.P6710060595549819137

noncomputable section

/-- A021079: Expansion of 1/((1-x)(1-2x)(1-4x)(1-7x)).

Offset 0, canonical program `A021079.P6710060595549819137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021079 (n : ℕ) : ℤ :=
  A021079.P6710060595549819137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021092.P13933325179621122619

`or(1, ∑[A016292(n)])`
-/

namespace A021092.P13933325179621122619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A021092.P13933325179621122619

noncomputable section

/-- A021092: Expansion of 1/((1-x)*(1-2*x)*(1-4*x)*(1-10*x)).

Offset 0, canonical program `A021092.P13933325179621122619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021092 (n : ℕ) : ℤ :=
  A021092.P13933325179621122619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021202.P152564552045686604

`∑[A016307(n)]`
-/

namespace A021202.P152564552045686604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021202.P152564552045686604

noncomputable section

/-- A021202: Expansion of 1/((1-x)(1-2x)(1-6x)(1-10x)).

Offset 0, canonical program `A021202.P152564552045686604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021202 (n : ℕ) : ℤ :=
  A021202.P152564552045686604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021229.P9183453658711614328

`∑[A016312(n)]`
-/

namespace A021229.P9183453658711614328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021229.P9183453658711614328

noncomputable section

/-- A021229: Expansion of 1/((1-x)(1-2x)(1-7x)(1-9x)).

Offset 0, canonical program `A021229.P9183453658711614328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021229 (n : ℕ) : ℤ :=
  A021229.P9183453658711614328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021234.P14094936273991565514

`∑[A016313(n)]`
-/

namespace A021234.P14094936273991565514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021234.P14094936273991565514

noncomputable section

/-- A021234: Expansion of 1/((1-x)(1-2x)(1-7x)(1-10x)).

Offset 0, canonical program `A021234.P14094936273991565514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021234 (n : ℕ) : ℤ :=
  A021234.P14094936273991565514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021256.P11215221401829278741

`(A020806(n)+A016825(n))%A016813(n)`
-/

namespace A021256.P11215221401829278741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020806 n + A016825 n) (A016813 n)

end

end A021256.P11215221401829278741

noncomputable section

/-- A021256: Decimal expansion of 1/252.

Offset 0, canonical program `A021256.P11215221401829278741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021256 (n : ℕ) : ℤ :=
  A021256.P11215221401829278741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021374.P7587042195522585219

`∑[A016849(n)]`
-/

namespace A021374.P7587042195522585219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021374.P7587042195522585219

noncomputable section

/-- A021374: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-8*x)).

Offset 0, canonical program `A021374.P7587042195522585219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021374 (n : ℕ) : ℤ :=
  A021374.P7587042195522585219.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A021374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021379.P2843175501737389197

`∑[A016909(n)]`
-/

namespace A021379.P2843175501737389197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021379.P2843175501737389197

noncomputable section

/-- A021379: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-9*x)).

Offset 0, canonical program `A021379.P2843175501737389197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A021379 (n : ℕ) : ℤ :=
  A021379.P2843175501737389197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A021379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021424.P8549120849405029087

`∑[A017389(n)]`
-/

namespace A021424.P8549120849405029087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021424.P8549120849405029087

noncomputable section

/-- A021424: Expansion of 1/((1-x)(1-3x)(1-5x)(1-7x)).

Offset 0, canonical program `A021424.P8549120849405029087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021424 (n : ℕ) : ℤ :=
  A021424.P8549120849405029087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A021424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021464.P1889180395666986606

`∑[A017916(n)]`
-/

namespace A021464.P1889180395666986606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021464.P1889180395666986606

noncomputable section

/-- A021464: Expansion of 1/((1-x)(1-3x)(1-5x)(1-10x)).

Offset 0, canonical program `A021464.P1889180395666986606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021464 (n : ℕ) : ℤ :=
  A021464.P1889180395666986606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021514.P3610408554453606658

`∑[A017952(n)]`
-/

namespace A021514.P3610408554453606658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021514.P3610408554453606658

noncomputable section

/-- A021514: Expansion of 1/((1-x)(1-3x)(1-6x)(1-10x)).

Offset 0, canonical program `A021514.P3610408554453606658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021514 (n : ℕ) : ℤ :=
  A021514.P3610408554453606658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021604.P10045866734448486812

`∑[A017999(n)]`
-/

namespace A021604.P10045866734448486812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021604.P10045866734448486812

noncomputable section

/-- A021604: Expansion of 1/((1-x)*(1-3*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A021604.P10045866734448486812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021604 (n : ℕ) : ℤ :=
  A021604.P10045866734448486812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021634.P3286273434263155847

`∑[A018056(n)]`
-/

namespace A021634.P3286273434263155847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021634.P3286273434263155847

noncomputable section

/-- A021634: Expansion of 1/((1-x)(1-3x)(1-8x)(1-9x)).

Offset 0, canonical program `A021634.P3286273434263155847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021634 (n : ℕ) : ℤ :=
  A021634.P3286273434263155847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A021634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021644.P7472038049559353068

`∑[A018069(n)]`
-/

namespace A021644.P7472038049559353068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021644.P7472038049559353068

noncomputable section

/-- A021644: Expansion of 1/((1-x)*(1-3*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A021644.P7472038049559353068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021644 (n : ℕ) : ℤ :=
  A021644.P7472038049559353068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021764.P17471623479004792730

`∑[A018250(n)]`
-/

namespace A021764.P17471623479004792730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021764.P17471623479004792730

noncomputable section

/-- A021764: Expansion of 1/((1-x)(1-4x)(1-5x)(1-8x)).

Offset 0, canonical program `A021764.P17471623479004792730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021764 (n : ℕ) : ℤ :=
  A021764.P17471623479004792730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021774.P6716850460234935892

`∑[A018912(n)]`
-/

namespace A021774.P6716850460234935892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021774.P6716850460234935892

noncomputable section

/-- A021774: Expansion of 1/((1-x)(1-4x)(1-5x)(1-10x)).

Offset 0, canonical program `A021774.P6716850460234935892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021774 (n : ℕ) : ℤ :=
  A021774.P6716850460234935892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021804.P1679742294013703888

`∑[A019316(n)]`
-/

namespace A021804.P1679742294013703888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021804.P1679742294013703888

noncomputable section

/-- A021804: Expansion of 1/((1-x)(1-4x)(1-6x)(1-7x)).

Offset 0, canonical program `A021804.P1679742294013703888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A021804 (n : ℕ) : ℤ :=
  A021804.P1679742294013703888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A021804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021807.P14958655593182802055

`A021077(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A021807.P14958655593182802055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A021077 (n - 1) - a (n - 1)

end

end A021807.P14958655593182802055

noncomputable section

/-- A021807: Decimal expansion of 1/803.

Offset 0, canonical program `A021807.P14958655593182802055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021807 (n : ℕ) : ℤ :=
  A021807.P14958655593182802055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021814.P10926726484162862782

`∑[A019333(n)]`
-/

namespace A021814.P10926726484162862782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021814.P10926726484162862782

noncomputable section

/-- A021814: Expansion of 1/((1-x)(1-4x)(1-6x)(1-8x)).

Offset 0, canonical program `A021814.P10926726484162862782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021814 (n : ℕ) : ℤ :=
  A021814.P10926726484162862782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A021814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021829.P18005213265485724350

`∑[A019483(n)]`
-/

namespace A021829.P18005213265485724350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021829.P18005213265485724350

noncomputable section

/-- A021829: Expansion of 1/((1-x)(1-4x)(1-6x)(1-10x)).

Offset 0, canonical program `A021829.P18005213265485724350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021829 (n : ℕ) : ℤ :=
  A021829.P18005213265485724350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021914.P6376640922673671551

`∑[A019671(n)]`
-/

namespace A021914.P6376640922673671551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021914.P6376640922673671551

noncomputable section

/-- A021914: Expansion of 1/((1-x)(1-4x)(1-8x)(1-10x)).

Offset 0, canonical program `A021914.P6376640922673671551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021914 (n : ℕ) : ℤ :=
  A021914.P6376640922673671551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022111.P10640416577561117621

`∑[A019783(n)]`
-/

namespace A022111.P10640416577561117621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022111.P10640416577561117621

noncomputable section

/-- A022111: Expansion of 1/((1-x)*(1-5x)*(1-6x)*(1-8x)).

Offset 0, canonical program `A022111.P10640416577561117621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A022111 (n : ℕ) : ℤ :=
  A022111.P10640416577561117621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A022111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022146.P17648652475996275041

`2*A007900(n)-A008574(n)²`
-/

namespace A022146.P17648652475996275041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007900 n - A008574 n ^ 2

end

end A022146.P17648652475996275041

noncomputable section

/-- A022146: Coordination sequence for root lattice B_4.

Offset 0, canonical program `A022146.P17648652475996275041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022146 (n : ℕ) : ℤ :=
  A022146.P17648652475996275041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022158.P6284817885384814813

`A198081(A198081(n+1)-1)-1`
-/

namespace A022158.P6284817885384814813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (A198081 (n + 1) - 1).toNat - 1

end

end A022158.P6284817885384814813

noncomputable section

/-- A022158: First column of spectral array W(sqrt(3)).

Offset 1, canonical program `A022158.P6284817885384814813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A022158 (n : ℕ) : ℤ :=
  A022158.P6284817885384814813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5774 terms. -/
def A022158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022160.P13744310482317511497

`A022843(A022843(n+1)-(n+1))+n+1-A022843(n+1)`
-/

namespace A022160.P13744310482317511497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (A022843 (n + 1) - (n + 1 : ℤ)).toNat + ((n + 1 : ℤ) - A022843 (n + 1))

end

end A022160.P13744310482317511497

noncomputable section

/-- A022160: First column of spectral array W(e-1).

Offset 1, canonical program `A022160.P13744310482317511497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5820 terms. -/
def A022160 (n : ℕ) : ℤ :=
  A022160.P13744310482317511497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5820 terms. -/
def A022160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022290.P8838379397811908335

`n-∑[A000071(val(A288534(n), 2)+1)]`
-/

namespace A022290.P8838379397811908335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (SequenceMachineLib.valuation (A288534 n).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022290.P8838379397811908335

noncomputable section

/-- A022290: Replace 2^k in binary expansion of n with Fibonacci(k+2).

Offset 0, canonical program `A022290.P8838379397811908335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022290 (n : ℕ) : ℤ :=
  A022290.P8838379397811908335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022415.P15745490843547950395

`A374359(n+1)+A022413(n)`
-/

namespace A022415.P15745490843547950395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022413 n

end

end A022415.P15745490843547950395

noncomputable section

/-- A022415: Kim-sums: "Kimberling sums" K_n + K_4.

Offset 0, canonical program `A022415.P15745490843547950395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022415 (n : ℕ) : ℤ :=
  A022415.P15745490843547950395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022441.P11385500381179401866

`3*n+2-A070941(n)%2`
-/

namespace A022441.P11385500381179401866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - Int.tmod (A070941 n) 2

end

end A022441.P11385500381179401866

noncomputable section

/-- A022441: a(n) = c(n) + c(n-1) where c (A055562) is the sequence of numbers not in a.

Offset 0, canonical program `A022441.P11385500381179401866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022441 (n : ℕ) : ℤ :=
  A022441.P11385500381179401866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022454.P13468604187403530846

`∑[A019958(n)]`
-/

namespace A022454.P13468604187403530846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022454.P13468604187403530846

noncomputable section

/-- A022454: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A022454.P13468604187403530846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A022454 (n : ℕ) : ℤ :=
  A022454.P13468604187403530846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A022454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022763.P11171846536189561779

`A007520(n+1)+A007521(n+1)`
-/

namespace A022763.P11171846536189561779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) + A007521 (n + 1)

end

end A022763.P11171846536189561779

noncomputable section

/-- A022763: n-th 8k+3 prime plus n-th 8k+5 prime.

Offset 1, canonical program `A022763.P11171846536189561779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, A007521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022763 (n : ℕ) : ℤ :=
  A022763.P11171846536189561779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, A007521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022775.P5821383929704964479

`∑[A049474(2*n)]+1`
-/

namespace A022775.P5821383929704964479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022775.P5821383929704964479

noncomputable section

/-- A022775: Place where n-th 1 occurs in A007336.

Offset 1, canonical program `A022775.P5821383929704964479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3140 terms. -/
def A022775 (n : ℕ) : ℤ :=
  A022775.P5821383929704964479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3140 terms. -/
def A022775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022776.P17919574213432232440

`∑[A049474(n)]+1`
-/

namespace A022776.P17919574213432232440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022776.P17919574213432232440

noncomputable section

/-- A022776: Place where n-th 1 occurs in A023115.

Offset 1, canonical program `A022776.P17919574213432232440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022776 (n : ℕ) : ℤ :=
  A022776.P17919574213432232440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022777.P1506527801283716464

`∑[A198081(n)]+1`
-/

namespace A022777.P1506527801283716464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022777.P1506527801283716464

noncomputable section

/-- A022777: Place where n-th 1 occurs in A007337.

Offset 1, canonical program `A022777.P1506527801283716464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A022777 (n : ℕ) : ℤ :=
  A022777.P1506527801283716464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A022777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022778.P5925027341847244681

`(n+1)²-∑[A195129(n)]`
-/

namespace A022778.P5925027341847244681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022778.P5925027341847244681

noncomputable section

/-- A022778: Place where n-th 1 occurs in A023116.

Offset 1, canonical program `A022778.P5925027341847244681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A022778 (n : ℕ) : ℤ :=
  A022778.P5925027341847244681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A022778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022779.P12138440178907107662

`∑[A198082(n)]+1`
-/

namespace A022779.P12138440178907107662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022779.P12138440178907107662

noncomputable section

/-- A022779: Place where n-th 1 occurs in A023117.

Offset 1, canonical program `A022779.P12138440178907107662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A022779 (n : ℕ) : ℤ :=
  A022779.P12138440178907107662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A022779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022781.P2680767153877646876

`∑[A198084(n)]+1`
-/

namespace A022781.P2680767153877646876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022781.P2680767153877646876

noncomputable section

/-- A022781: Place where n-th 1 occurs in A023119.

Offset 1, canonical program `A022781.P2680767153877646876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2081 terms. -/
def A022781 (n : ℕ) : ℤ :=
  A022781.P2680767153877646876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2081 terms. -/
def A022781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022785.P11302809859389273548

`∑[A121384(n)]+1`
-/

namespace A022785.P11302809859389273548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022785.P11302809859389273548

noncomputable section

/-- A022785: Place where n-th 1 occurs in A023123.

Offset 1, canonical program `A022785.P11302809859389273548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785 (n : ℕ) : ℤ :=
  A022785.P11302809859389273548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022786.P7179101593516911482

`∑[A032634(n)]+1+n`
-/

namespace A022786.P7179101593516911482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022786.P7179101593516911482

noncomputable section

/-- A022786: Place where n-th 1 occurs in A023124.

Offset 1, canonical program `A022786.P7179101593516911482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5892 terms. -/
def A022786 (n : ℕ) : ℤ :=
  A022786.P7179101593516911482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5892 terms. -/
def A022786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022789.P15581079733562638700

`∑[A198083(n)]+1`
-/

namespace A022789.P15581079733562638700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022789.P15581079733562638700

noncomputable section

/-- A022789: Place where n-th 1 occurs in A023127.

Offset 1, canonical program `A022789.P15581079733562638700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2225 terms. -/
def A022789 (n : ℕ) : ℤ :=
  A022789.P15581079733562638700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2225 terms. -/
def A022789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022790.P12543044921546330487

`∑[A172476(n)]+1+n`
-/

namespace A022790.P12543044921546330487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022790.P12543044921546330487

noncomputable section

/-- A022790: Place where n-th 1 occurs in A023128.

Offset 1, canonical program `A022790.P12543044921546330487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5500 terms. -/
def A022790 (n : ℕ) : ℤ :=
  A022790.P12543044921546330487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5500 terms. -/
def A022790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022791.P2752683687528874488

`∑[A061402(n)]+1+n`
-/

namespace A022791.P2752683687528874488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022791.P2752683687528874488

noncomputable section

/-- A022791: Place where n-th 1 occurs in A023129.

Offset 1, canonical program `A022791.P2752683687528874488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A022791 (n : ℕ) : ℤ :=
  A022791.P2752683687528874488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A022791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022793.P8078340536079714582

`∑[A198263(n)]+1`
-/

namespace A022793.P8078340536079714582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022793.P8078340536079714582

noncomputable section

/-- A022793: Place where n-th 1 occurs in A023131.

Offset 1, canonical program `A022793.P8078340536079714582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A022793 (n : ℕ) : ℤ :=
  A022793.P8078340536079714582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A022793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022794.P2072618029331811702

`∑[A172474(n)]+1+n`
-/

namespace A022794.P2072618029331811702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022794.P2072618029331811702

noncomputable section

/-- A022794: Place where n-th 1 occurs in A023132.

Offset 1, canonical program `A022794.P2072618029331811702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A022794 (n : ℕ) : ℤ :=
  A022794.P2072618029331811702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. -/
def A022794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022795.P4523488485773220254

`∑[A121381(n)]+1`
-/

namespace A022795.P4523488485773220254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022795.P4523488485773220254

noncomputable section

/-- A022795: Place where n-th 1 occurs in A023133.

Offset 1, canonical program `A022795.P4523488485773220254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A022795 (n : ℕ) : ℤ :=
  A022795.P4523488485773220254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A022795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022796.P10383129870039449392

`∑[A032615(n)]+1+n`
-/

namespace A022796.P10383129870039449392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022796.P10383129870039449392

noncomputable section

/-- A022796: Place where n-th 1 occurs in A023134.

Offset 1, canonical program `A022796.P10383129870039449392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6107 terms. -/
def A022796 (n : ℕ) : ℤ :=
  A022796.P10383129870039449392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6107 terms. -/
def A022796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022799.P3202200011068491808

`A001690(n+1)+A000045(n+2)`
-/

namespace A022799.P3202200011068491808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000045 (n + 2)

end

end A022799.P3202200011068491808

noncomputable section

/-- A022799: a(n) = F(n+1) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th non-Fibonacci number.

Offset 1, canonical program `A022799.P3202200011068491808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A022799 (n : ℕ) : ℤ :=
  A022799.P3202200011068491808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A022799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022802.P5209542318991673861

`∑[A000032(n)]+comp[A001610(n+1)]+2`
-/

namespace A022802.P5209542318991673861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2 : ℤ)

end

end A022802.P5209542318991673861

noncomputable section

/-- A022802: a(n) = L(n+1) + c(n) where L(k) = k-th Lucas number and c(n) is n-th number that is 1 or not a Lucas number.

Offset 1, canonical program `A022802.P5209542318991673861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022802 (n : ℕ) : ℤ :=
  A022802.P5209542318991673861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022804.P16576549858233052191

`2*A003151(n+1)`
-/

namespace A022804.P16576549858233052191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003151 (n + 1)

end

end A022804.P16576549858233052191

noncomputable section

/-- A022804: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*sqrt(2) ] and c is the complement of B.

Offset 1, canonical program `A022804.P16576549858233052191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022804 (n : ℕ) : ℤ :=
  A022804.P16576549858233052191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022807.P13278345666095501261

`A329791(n+1)+comp[A329791(n)]`
-/

namespace A022807.P13278345666095501261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329791 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022807.P13278345666095501261

noncomputable section

/-- A022807: a(n) = S(n) + c(n) where S(n) = [ n*sqrt(2) ] + [ n*sqrt(3) ] and c is the complement of S.

Offset 1, canonical program `A022807.P13278345666095501261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022807 (n : ℕ) : ℤ :=
  A022807.P13278345666095501261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022838.P4831732622656280636

`A198081(n+1)-1`
-/

namespace A022838.P4831732622656280636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) - 1

end

end A022838.P4831732622656280636

noncomputable section

/-- A022838: Beatty sequence for sqrt(3); complement of A054406.

Offset 1, canonical program `A022838.P4831732622656280636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022838 (n : ℕ) : ℤ :=
  A022838.P4831732622656280636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022839.P12660740770296457555

`∑[A081147(n)]`
-/

namespace A022839.P12660740770296457555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P12660740770296457555

noncomputable section

/-- A022839: Beatty sequence for sqrt(5).

Offset 1, canonical program `A022839.P12660740770296457555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022839 (n : ℕ) : ℤ :=
  A022839.P12660740770296457555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022840.P11866359338228627327

`A198083(n+1)-1`
-/

namespace A022840.P11866359338228627327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198083 (n + 1) - 1

end

end A022840.P11866359338228627327

noncomputable section

/-- A022840: Beatty sequence for sqrt(6).

Offset 1, canonical program `A022840.P11866359338228627327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022840 (n : ℕ) : ℤ :=
  A022840.P11866359338228627327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022841.P12259375154009973728

`A198084(n+1)-1`
-/

namespace A022841.P12259375154009973728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 (n + 1) - 1

end

end A022841.P12259375154009973728

noncomputable section

/-- A022841: Beatty sequence for sqrt(7).

Offset 1, canonical program `A022841.P12259375154009973728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022841 (n : ℕ) : ℤ :=
  A022841.P12259375154009973728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022842.P8988266208372551649

`A198263(n+1)-1`
-/

namespace A022842.P8988266208372551649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (n + 1) - 1

end

end A022842.P8988266208372551649

noncomputable section

/-- A022842: Beatty sequence for sqrt(8).

Offset 1, canonical program `A022842.P8988266208372551649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022842 (n : ℕ) : ℤ :=
  A022842.P8988266208372551649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023196.P11305018750547605188

`lt[2*n+1, A000203(n+1)]+1`
-/

namespace A023196.P11305018750547605188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P11305018750547605188

noncomputable section

/-- A023196: Nondeficient numbers: numbers k such that sigma(k) >= 2k; union of A000396 and A005101.

Offset 1, canonical program `A023196.P11305018750547605188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023196 (n : ℕ) : ℤ :=
  (A023196.P11305018750547605188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023228.P10498132971099518493

`p?[floor(A007519(n+1)/8)]`
-/

namespace A023228.P10498132971099518493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007519 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023228.P10498132971099518493

noncomputable section

/-- A023228: Numbers k such that k and 8*k + 1 are both prime.

Offset 1, canonical program `A023228.P10498132971099518493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023228 (n : ℕ) : ℤ :=
  A023228.P10498132971099518493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A023228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023231.P13970784106652136912

`p?[A005122(n+1)-1]`
-/

namespace A023231.P13970784106652136912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005122 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P13970784106652136912

noncomputable section

/-- A023231: Primes p such that 8*p + 7 is also prime.

Offset 1, canonical program `A023231.P13970784106652136912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A023231 (n : ℕ) : ℤ :=
  A023231.P13970784106652136912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. -/
def A023231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023483.P4976461841121843973

`A020695(n)+A001690(n+1)`
-/

namespace A023483.P4976461841121843973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A001690 (n + 1)

end

end A023483.P4976461841121843973

noncomputable section

/-- A023483: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Fibonacci number).

Offset 1, canonical program `A023483.P4976461841121843973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023483 (n : ℕ) : ℤ :=
  A023483.P4976461841121843973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A023483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023484.P7292727787972664292

`A000032(n+1)+A001690(n+1)`
-/

namespace A023484.P7292727787972664292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A001690 (n + 1)

end

end A023484.P7292727787972664292

noncomputable section

/-- A023484: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023484.P7292727787972664292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023484 (n : ℕ) : ℤ :=
  A023484.P7292727787972664292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023485.P12163396700155618846

`A000204(n+2)+A001690(n+1)`
-/

namespace A023485.P12163396700155618846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + A001690 (n + 1)

end

end A023485.P12163396700155618846

noncomputable section

/-- A023485: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number A000204 > 1) and d(n) = (n-th non-Fibonacci number).

Offset 1, canonical program `A023485.P12163396700155618846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023485 (n : ℕ) : ℤ :=
  A023485.P12163396700155618846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023485.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023486.P13668964546540766955

`A001690(n+1)+A000045(n+4)`
-/

namespace A023486.P13668964546540766955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + A000045 (n + 4)

end

end A023486.P13668964546540766955

noncomputable section

/-- A023486: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023486.P13668964546540766955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023486 (n : ℕ) : ℤ :=
  A023486.P13668964546540766955.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023487.P8057689308705659646

`A000032(n+3)+A001690(n+1)`
-/

namespace A023487.P8057689308705659646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) + A001690 (n + 1)

end

end A023487.P8057689308705659646

noncomputable section

/-- A023487: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 3) and d(n) = (n-th non-Fibonacci number).

Offset 0, canonical program `A023487.P8057689308705659646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023487 (n : ℕ) : ℤ :=
  A023487.P8057689308705659646.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001690, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023499.P8730777959964670675

`comp[A000032(n+3)-1]+∑[A000045(n)]+2`
-/

namespace A023499.P8730777959964670675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 3) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j + 2)

end

end A023499.P8730777959964670675

noncomputable section

/-- A023499: a(n) = b(n) + d(n), where b(n) = ( (n+1)st Fibonacci number) and d(n) = (n-th number that is 1, 2, or 3, or is not a Lucas number).

Offset 0, canonical program `A023499.P8730777959964670675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A023499 (n : ℕ) : ℤ :=
  A023499.P8730777959964670675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A023499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023533.P16553737014273247425

`1-A014306(n)`
-/

namespace A023533.P16553737014273247425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014306 n

end

end A023533.P16553737014273247425

noncomputable section

/-- A023533: a(n) = 1 if n is of the form m(m+1)(m+2)/6, and 0 otherwise.

Offset 0, canonical program `A023533.P16553737014273247425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023533 (n : ℕ) : ℤ :=
  A023533.P16553737014273247425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023538.P2498540562425885631

`∑[A000040(n)+a(n-1)]` with `a(0)=1`
-/

namespace A023538.P2498540562425885631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023538.P2498540562425885631

noncomputable section

/-- A023538: Convolution of natural numbers with (1, p(1), p(2), ... ), where p(k) is the k-th prime.

Offset 1, canonical program `A023538.P2498540562425885631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023538 (n : ℕ) : ℤ :=
  A023538.P2498540562425885631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023541.P11789173281518141242

`abs(∑[∑[A004956(n+1)-1]])`
-/

namespace A023541.P11789173281518141242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A023541.P11789173281518141242

noncomputable section

/-- A023541: Convolution of natural numbers with Beatty sequence for the golden mean A000201.

Offset 1, canonical program `A023541.P11789173281518141242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023541 (n : ℕ) : ℤ :=
  A023541.P11789173281518141242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023542.P14919059629026645152

`abs(∑[∑[A004957(n+1)-1]])`
-/

namespace A023542.P14919059629026645152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A023542.P14919059629026645152

noncomputable section

/-- A023542: Convolution of natural numbers with Beatty sequence for tau^2 A001950.

Offset 1, canonical program `A023542.P14919059629026645152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023542 (n : ℕ) : ℤ :=
  A023542.P14919059629026645152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023543.P14152490566558709800

`∑[n+1]-∑[∑[A014306(n+1)]]`
-/

namespace A023543.P14152490566558709800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A023543.P14152490566558709800

noncomputable section

/-- A023543: Convolution of natural numbers with A023533.

Offset 1, canonical program `A023543.P14152490566558709800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023543 (n : ℕ) : ℤ :=
  A023543.P14152490566558709800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023544.P4498546519026709669

`∑[∑[A014306(n+1)]]`
-/

namespace A023544.P4498546519026709669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023544.P4498546519026709669

noncomputable section

/-- A023544: Convolution of natural numbers with A014306.

Offset 1, canonical program `A023544.P4498546519026709669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023544 (n : ℕ) : ℤ :=
  A023544.P4498546519026709669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023587.P17732920272715446709

`∑{p}[1-2*A000040(n+1), #]`
-/

namespace A023587.P17732920272715446709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023587.P17732920272715446709

noncomputable section

/-- A023587: a(n) = sum of distinct prime divisors of 2*prime(n)-1.

Offset 1, canonical program `A023587.P17732920272715446709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023587 (n : ℕ) : ℤ :=
  (A023587.P17732920272715446709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023594.P13690517662854304508

`∑{p}[2*A000040(n+1)+1, #]`
-/

namespace A023594.P13690517662854304508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023594.P13690517662854304508

noncomputable section

/-- A023594: a(n) = sum of distinct prime divisors of 2*prime(n)+1.

Offset 1, canonical program `A023594.P13690517662854304508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023594 (n : ℕ) : ℤ :=
  (A023594.P13690517662854304508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023608.P1978400556510042510

`a(n-1)+A000040(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A023608.P1978400556510042510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A000040 n + a (n - 2))

end

end A023608.P1978400556510042510

noncomputable section

/-- A023608: Convolution of Fibonacci numbers and (1, prime(1), prime(2), ...).

Offset 0, canonical program `A023608.P1978400556510042510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023608 (n : ℕ) : ℤ :=
  A023608.P1978400556510042510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023611.P587451549185034991

`A000201(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A023611.P587451549185034991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A000201 (n + 1) + (a (n - 2) + a (n - 1))

end

end A023611.P587451549185034991

noncomputable section

/-- A023611: Convolution of Fibonacci numbers and A000201.

Offset 0, canonical program `A023611.P587451549185034991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023611 (n : ℕ) : ℤ :=
  A023611.P587451549185034991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023615.P15596310230665551769

`A000040(n+1)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A023615.P15596310230665551769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A000040 (n + 1) + (a (n - 1) + a (n - 2))

end

end A023615.P15596310230665551769

noncomputable section

/-- A023615: Convolution of Fibonacci numbers and primes.

Offset 0, canonical program `A023615.P15596310230665551769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023615 (n : ℕ) : ℤ :=
  A023615.P15596310230665551769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023619.P5864113578201213143

`abs(Δ[n*Δ[A119282(n)]])`
-/

namespace A023619.P5864113578201213143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A023619.P5864113578201213143

noncomputable section

/-- A023619: Convolution of Lucas numbers and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023619.P5864113578201213143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A023619 (n : ℕ) : ℤ :=
  A023619.P5864113578201213143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A023619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023692.P18411010243286777937

`eq[1, val(A006047(n), 2)]`
-/

namespace A023692.P18411010243286777937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023692.P18411010243286777937

noncomputable section

/-- A023692: Numbers with a single 1 in their ternary expansion.

Offset 1, canonical program `A023692.P18411010243286777937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A023692 (n : ℕ) : ℤ :=
  (A023692.P18411010243286777937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. -/
def A023692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023693.P3127764006694396744

`eq[2, val(A006047(n), 2)]`
-/

namespace A023693.P3127764006694396744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023693.P3127764006694396744

noncomputable section

/-- A023693: Numbers with exactly 2 1's in ternary expansion.

Offset 1, canonical program `A023693.P3127764006694396744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023693 (n : ℕ) : ℤ :=
  (A023693.P3127764006694396744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023694.P6778596780132138470

`eq[3, val(A006047(n), 2)]`
-/

namespace A023694.P6778596780132138470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023694.P6778596780132138470

noncomputable section

/-- A023694: Numbers with exactly 3 1's in ternary expansion.

Offset 1, canonical program `A023694.P6778596780132138470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023694 (n : ℕ) : ℤ :=
  (A023694.P6778596780132138470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023699.P15230863015613878465

`eq[1, val(A006047(n), 3)]`
-/

namespace A023699.P15230863015613878465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023699.P15230863015613878465

noncomputable section

/-- A023699: Numbers with a single 2 in their ternary expansion.

Offset 1, canonical program `A023699.P15230863015613878465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A023699 (n : ℕ) : ℤ :=
  (A023699.P15230863015613878465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A023699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023700.P15077908504290355889

`eq[2, val(A006047(n), 3)]`
-/

namespace A023700.P15077908504290355889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023700.P15077908504290355889

noncomputable section

/-- A023700: Numbers with exactly 2 2's in their ternary expansion.

Offset 1, canonical program `A023700.P15077908504290355889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023700 (n : ℕ) : ℤ :=
  (A023700.P15077908504290355889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. -/
def A023700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023701.P16744175443296012392

`eq[3, val(A006047(n), 3)]`
-/

namespace A023701.P16744175443296012392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023701.P16744175443296012392

noncomputable section

/-- A023701: Numbers with exactly 3 2's in their ternary expansion.

Offset 1, canonical program `A023701.P16744175443296012392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023701 (n : ℕ) : ℤ :=
  (A023701.P16744175443296012392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A023701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023702.P11024123370145877327

`eq[4, val(A006047(n), 3)]`
-/

namespace A023702.P11024123370145877327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023702.P11024123370145877327

noncomputable section

/-- A023702: Numbers with exactly 4 2's in their ternary expansion of n.

Offset 1, canonical program `A023702.P11024123370145877327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023702 (n : ℕ) : ℤ :=
  (A023702.P11024123370145877327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. -/
def A023702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023718.P12193516711797339017

`eq[0, a(floor(n/4))-A121262(n+1)]` with `a(0)=1`
-/

namespace A023718.P12193516711797339017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat - A121262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P12193516711797339017

noncomputable section

/-- A023718: Numbers with a single 3 in their base 4 expansion.

Offset 1, canonical program `A023718.P12193516711797339017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023718 (n : ℕ) : ℤ :=
  (A023718.P12193516711797339017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023857.P527520079518963399

`A023856(n+1)+A008805(n)`
-/

namespace A023857.P527520079518963399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + A008805 n

end

end A023857.P527520079518963399

noncomputable section

/-- A023857: a(n) = 1*(n+3-1) + 2*(n+3-2) + .... + k*(n+3-k), where k=floor((n+1)/2).

Offset 1, canonical program `A023857.P527520079518963399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857 (n : ℕ) : ℤ :=
  A023857.P527520079518963399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023971.P282780903401931592

`round(A023963(n+1)/10)`
-/

namespace A023971.P282780903401931592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023963 (n + 1) : ℚ) / 10)

end

end A023971.P282780903401931592

noncomputable section

/-- A023971: First bit in fractional part of binary expansion of 4th root of n.

Offset 1, canonical program `A023971.P282780903401931592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023971 (n : ℕ) : ℤ :=
  A023971.P282780903401931592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023972.P17822606851280342829

`floor(A023964(n+1)/5)`
-/

namespace A023972.P17822606851280342829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023964 (n + 1) : ℚ) / 5⌋

end

end A023972.P17822606851280342829

noncomputable section

/-- A023972: First bit in fractional part of binary expansion of 5th root of n.

Offset 1, canonical program `A023972.P17822606851280342829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023972 (n : ℕ) : ℤ :=
  A023972.P17822606851280342829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023973.P17052429324411153139

`floor(A023965(n+1)/5)`
-/

namespace A023973.P17052429324411153139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023965 (n + 1) : ℚ) / 5⌋

end

end A023973.P17052429324411153139

noncomputable section

/-- A023973: First bit in fractional part of binary expansion of 6th root of n.

Offset 1, canonical program `A023973.P17052429324411153139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023973 (n : ℕ) : ℤ :=
  A023973.P17052429324411153139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023974.P8641852116517803586

`floor(A023966(n+1)/5)`
-/

namespace A023974.P8641852116517803586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023966 (n + 1) : ℚ) / 5⌋

end

end A023974.P8641852116517803586

noncomputable section

/-- A023974: First bit in fractional part of binary expansion of 7th root of n.

Offset 1, canonical program `A023974.P8641852116517803586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023974 (n : ℕ) : ℤ :=
  A023974.P8641852116517803586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023975.P2350897218727171919

`floor(A023967(n+1)/5)`
-/

namespace A023975.P2350897218727171919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023967 (n + 1) : ℚ) / 5⌋

end

end A023975.P2350897218727171919

noncomputable section

/-- A023975: First bit in fractional part of binary expansion of 8th root of n.

Offset 1, canonical program `A023975.P2350897218727171919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023975 (n : ℕ) : ℤ :=
  A023975.P2350897218727171919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023976.P4764256896541952317

`floor(A023968(n+1)/5)`
-/

namespace A023976.P4764256896541952317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023968 (n + 1) : ℚ) / 5⌋

end

end A023976.P4764256896541952317

noncomputable section

/-- A023976: First bit in fractional part of binary expansion of 9th root of n.

Offset 1, canonical program `A023976.P4764256896541952317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023976 (n : ℕ) : ℤ :=
  A023976.P4764256896541952317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024184.P13588254416580273035

`∑[(n+5)*A024183(n+1)]`
-/

namespace A024184.P13588254416580273035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A024183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024184.P13588254416580273035

noncomputable section

/-- A024184: Third elementary symmetric function of 3,4,...,n+4.

Offset 1, canonical program `A024184.P13588254416580273035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024184 (n : ℕ) : ℤ :=
  A024184.P13588254416580273035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024197.P9047302393441854240

`∑[(2*n+5)*A024196(n+1)]`
-/

namespace A024197.P9047302393441854240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A024196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024197.P9047302393441854240

noncomputable section

/-- A024197: a(n) = 3rd elementary symmetric function of the first n+2 odd positive integers.

Offset 1, canonical program `A024197.P9047302393441854240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024197 (n : ℕ) : ℤ :=
  A024197.P9047302393441854240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024214.P16151933790795133523

`∑[A024213(n+1)*A112414(n+1)]`
-/

namespace A024214.P16151933790795133523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024213 (n + 1) * A112414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024214.P16151933790795133523

noncomputable section

/-- A024214: a(n) = 4th elementary symmetric function of first n+3 positive integers congruent to 1 mod 3.

Offset 1, canonical program `A024214.P16151933790795133523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024214 (n : ℕ) : ℤ :=
  A024214.P16151933790795133523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024220.P6213896171313819869

`∑[A085789(n+1)]-A007980(n)`
-/

namespace A024220.P6213896171313819869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A024220.P6213896171313819869

noncomputable section

/-- A024220: a(n) = [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 1 mod 3}.

Offset 1, canonical program `A024220.P6213896171313819869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024220 (n : ℕ) : ℤ :=
  A024220.P6213896171313819869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024379.P766993146131382151

`∑[(4*n+9)*A024378(n+1)]`
-/

namespace A024379.P766993146131382151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 9 : ℤ) * A024378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024379.P766993146131382151

noncomputable section

/-- A024379: a(n) = 3rd elementary symmetric function of the first n+2 positive integers congruent to 1 mod 4.

Offset 1, canonical program `A024379.P766993146131382151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024379 (n : ℕ) : ℤ :=
  A024379.P766993146131382151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024392.P3901005800997196477

`∑[A016789(n+2)*A024391(n+1)]`
-/

namespace A024392.P3901005800997196477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 2) * A024391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024392.P3901005800997196477

noncomputable section

/-- A024392: a(n) = 3rd elementary symmetric function of the first n+2 positive integers congruent to 2 mod 3.

Offset 1, canonical program `A024392.P3901005800997196477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024392 (n : ℕ) : ℤ :=
  A024392.P3901005800997196477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024399.P9562742004129234604

`∑[A085788(n+1)]-A007980(n)`
-/

namespace A024399.P9562742004129234604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A024399.P9562742004129234604

noncomputable section

/-- A024399: a(n) = [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 2 mod 3}.

Offset 1, canonical program `A024399.P9562742004129234604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024399 (n : ℕ) : ℤ :=
  A024399.P9562742004129234604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024403.P6740339707351428898

`floor(∑[n+1]-A081276(n)/(n+1))`
-/

namespace A024403.P6740339707351428898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A081276 n : ℚ) / (n + 1 : ℚ)⌋

end

end A024403.P6740339707351428898

noncomputable section

/-- A024403: [ (4th elementary symmetric function of S(n))/(3rd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 2 mod 3}.

Offset 1, canonical program `A024403.P6740339707351428898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024403 (n : ℕ) : ℤ :=
  A024403.P6740339707351428898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024472.P13885864905884473989

`A008619(n)*A020695(n)-A006498(n)`
-/

namespace A024472.P13885864905884473989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A020695 n - A006498 n

end

end A024472.P13885864905884473989

noncomputable section

/-- A024472: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (F(2), F(3), ...).

Offset 1, canonical program `A024472.P13885864905884473989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A024472 (n : ℕ) : ℤ :=
  A024472.P13885864905884473989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A024472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024490.P4150017618709590630

`∑[A005252(n)]`
-/

namespace A024490.P4150017618709590630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024490.P4150017618709590630

noncomputable section

/-- A024490: a(n) = C(n-1,1) + C(n-3,3) + ... + C(n-2*m-1,2*m+1), where m = floor((n-2)/4).

Offset 2, canonical program `A024490.P4150017618709590630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A024490 (n : ℕ) : ℤ :=
  A024490.P4150017618709590630.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A024490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024498.P9894849982260242574

`floor(A000108(n+1)/(n+1))+A000108(n+1)`
-/

namespace A024498.P9894849982260242574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + A000108 (n + 1)

end

end A024498.P9894849982260242574

noncomputable section

/-- A024498: a(n) = [ C(2n,n)/n ].

Offset 1, canonical program `A024498.P9894849982260242574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A024498 (n : ℕ) : ℤ :=
  A024498.P9894849982260242574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A024498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024503.P10546644165336394137

`floor((n+1)*A000108(n)/A000244(n))`
-/

namespace A024503.P10546644165336394137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A000108 n : ℚ) / (A000244 n : ℚ))⌋

end

end A024503.P10546644165336394137

noncomputable section

/-- A024503: a(n) = floor(binomial(2*n,n)/3^n).

Offset 0, canonical program `A024503.P10546644165336394137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A024503 (n : ℕ) : ℤ :=
  A024503.P10546644165336394137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A024503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024568.P6762558251547547592

`floor((n+1)/∑[ϕ-A001468(n)])`
-/

namespace A024568.P6762558251547547592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A024568.P6762558251547547592

noncomputable section

/-- A024568: a(n) = [ n/{n*r} ], where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

Offset 1, canonical program `A024568.P6762558251547547592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024568 (n : ℕ) : ℤ :=
  A024568.P6762558251547547592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024571.P16384369190772260006

`floor(∑[1/∑[ϕ-A001468(n)]])`
-/

namespace A024571.P16384369190772260006
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024571.P16384369190772260006

noncomputable section

/-- A024571: a(n) = [ sum of 1/{k*r} ] for k = 1,2,...,n, where r = (1 + sqrt(5))/2 and {x} := x - [ x ].

Offset 1, canonical program `A024571.P16384369190772260006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2719 terms. -/
def A024571 (n : ℕ) : ℤ :=
  A024571.P16384369190772260006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2719 terms. -/
def A024571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024629.P12063631112154795864

`A024637(2*n)/2`
-/

namespace A024629.P12063631112154795864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024637 (2 * n) : ℚ) / 2

end

end A024629.P12063631112154795864

noncomputable section

/-- A024629: n written in fractional base 3/2.

Offset 0, canonical program `A024629.P12063631112154795864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024629 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024629.P12063631112154795864.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024630.P11457597719607472306

`A024646(2*n)/2`
-/

namespace A024630.P11457597719607472306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024646 (2 * n) : ℚ) / 2

end

end A024630.P11457597719607472306

noncomputable section

/-- A024630: n written in fractional base 4/2.

Offset 0, canonical program `A024630.P11457597719607472306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024630.P11457597719607472306.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A024630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024817.P12605328665190567263

`∑[A000217(3*n+4)]-A090223(2*(n+2))`
-/

namespace A024817.P12605328665190567263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090223 (2 * (n + 2))

end

end A024817.P12605328665190567263

noncomputable section

/-- A024817: a(n) = [ 1/(2*t(n+1) - t(n) - t(n+2)) ], where t(n) = tan(Pi/2 - 1/n) satisfies n-1 < t(n) < n for all n >= 1.

Offset 1, canonical program `A024817.P12605328665190567263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A024817 (n : ℕ) : ℤ :=
  A024817.P12605328665190567263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A024817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024819.P4184560525005108104

`A000124(A083920(2*n+1)+1)`
-/

namespace A024819.P4184560525005108104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A083920 (2 * n + 1) + 1).toNat

end

end A024819.P4184560525005108104

noncomputable section

/-- A024819: a(n) = least m such that if r and s in {1/1, 1/3, 1/5,..., 1/(2n-1)} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024819.P4184560525005108104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A024819 (n : ℕ) : ℤ :=
  A024819.P4184560525005108104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. -/
def A024819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024825.P16252496117260300234

`A080335(∑[2-Δ[A000267(n)]])`
-/

namespace A024825.P16252496117260300234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024825.P16252496117260300234

noncomputable section

/-- A024825: a(n) = least m such that if r and s in {1/4, 1/8, 1/12,..., 1/4n} satisfy r < s, then r < k/m < s for some integer k.

Offset 2, canonical program `A024825.P16252496117260300234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 727 terms. -/
def A024825 (n : ℕ) : ℤ :=
  A024825.P16252496117260300234.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 727 terms. -/
def A024825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024862.P18283074201215668358

`A023856(n+1)+A023855(n+1)`
-/

namespace A024862.P18283074201215668358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + A023855 (n + 1)

end

end A024862.P18283074201215668358

noncomputable section

/-- A024862: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = natural numbers, t = odd natural numbers.

Offset 2, canonical program `A024862.P18283074201215668358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024862 (n : ℕ) : ℤ :=
  A024862.P18283074201215668358.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024876.P5715500282915664

`A322753(2*(n+1))`
-/

namespace A024876.P5715500282915664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322753 (2 * (n + 1))

end

end A024876.P5715500282915664

noncomputable section

/-- A024876: Expansion of (3-2*x-3*x^2-4*x^3)/(1-3*x+x^2+x^3+x^4).

Offset 0, canonical program `A024876.P5715500282915664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A024876 (n : ℕ) : ℤ :=
  A024876.P5715500282915664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A024876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024898.P2838277204682131429

`ceil(A007528(n+1)/6)`
-/

namespace A024898.P2838277204682131429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007528 (n + 1) : ℚ) / 6⌉

end

end A024898.P2838277204682131429

noncomputable section

/-- A024898: Positive integers k such that 6*k - 1 is prime.

Offset 1, canonical program `A024898.P2838277204682131429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024898 (n : ℕ) : ℤ :=
  A024898.P2838277204682131429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024913.P9576963453515633989

`(A024896(n+1)+1)/2`
-/

namespace A024913.P9576963453515633989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024896 (n + 1) + 1 : ℚ) / 2

end

end A024913.P9576963453515633989

noncomputable section

/-- A024913: Numbers k such that 10*k - 7 is prime.

Offset 1, canonical program `A024913.P9576963453515633989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024913.P9576963453515633989.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024919.P8953810911768202255

`∑[-∑{d}[n+1, #*A033999(#-1)]]`
-/

namespace A024919.P8953810911768202255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A033999 (d - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024919.P8953810911768202255

noncomputable section

/-- A024919: a(n) = Sum_{k=1..n} (-1)^k*k*floor(n/k).

Offset 1, canonical program `A024919.P8953810911768202255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024919 (n : ℕ) : ℤ :=
  A024919.P8953810911768202255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024926.P8977601561842606756

`∑[floor(A000040(n+1)/(n+1))]`
-/

namespace A024926.P8977601561842606756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024926.P8977601561842606756

noncomputable section

/-- A024926: a(n) = Sum_{k=1..n} floor(prime(k)/k).

Offset 1, canonical program `A024926.P8977601561842606756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024926 (n : ℕ) : ℤ :=
  A024926.P8977601561842606756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024927.P15555490898015526327

`∑[(n+1)*floor(A000040(n+1)/(n+1))]`
-/

namespace A024927.P15555490898015526327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A000040 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024927.P15555490898015526327

noncomputable section

/-- A024927: a(n) = Sum_{k=1..n} k*floor( prime(k)/k ).

Offset 1, canonical program `A024927.P15555490898015526327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024927 (n : ℕ) : ℤ :=
  A024927.P15555490898015526327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025079.P6411856452203359211

`A006498(n)+A008619(n)*A020695(n)`
-/

namespace A025079.P6411856452203359211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n + A008619 n * A020695 n

end

end A025079.P6411856452203359211

noncomputable section

/-- A025079: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Fibonacci numbers), t = (Lucas numbers).

Offset 1, canonical program `A025079.P6411856452203359211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A025079 (n : ℕ) : ℤ :=
  A025079.P6411856452203359211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A025079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025112.P14148170447627703668

`4*A023855(n+1)-∑[n+1]`
-/

namespace A025112.P14148170447627703668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023855 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025112.P14148170447627703668

noncomputable section

/-- A025112: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = floor(n/2), s = (odd natural numbers).

Offset 2, canonical program `A025112.P14148170447627703668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025112 (n : ℕ) : ℤ :=
  A025112.P14148170447627703668.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025171.P13077164112822408549

`A106853(n)*A122803(n)`
-/

namespace A025171.P13077164112822408549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 n * A122803 n

end

end A025171.P13077164112822408549

noncomputable section

/-- A025171: Reciprocal Chebyshev polynomial of second kind evaluated at 4 multiplied by (-1)^n.

Offset 0, canonical program `A025171.P13077164112822408549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A025171 (n : ℕ) : ℤ :=
  A025171.P13077164112822408549.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A025171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025173.P11309945271641807416

`n/2*A127357(n)`
-/

namespace A025173.P11309945271641807416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A127357 n : ℚ)

end

end A025173.P11309945271641807416

noncomputable section

/-- A025173: The Gegenbauer Polynomial of index n, order 1, evaluated at x=1/3 and multiplied by n*3^n/2.

Offset 0, canonical program `A025173.P11309945271641807416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A025173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025173.P11309945271641807416.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A025173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025211.P14622325333680508278

`a(n-1)+A016753(n)+a(n-1)` with `a(0)=1`
-/

namespace A025211.P14622325333680508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016753 n + a (n - 1))

end

end A025211.P14622325333680508278

noncomputable section

/-- A025211: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-5x)).

Offset 0, canonical program `A025211.P14622325333680508278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A025211 (n : ℕ) : ℤ :=
  A025211.P14622325333680508278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A025211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025235.P11316111733437524934

`A374487(n)/∑[n+1]`
-/

namespace A025235.P11316111733437524934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374487 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A025235.P11316111733437524934

noncomputable section

/-- A025235: a(n) = (1/2)*A014431(n+2).

Offset 0, canonical program `A025235.P11316111733437524934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A025235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025235.P11316111733437524934.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A025235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025238.P4279514518283286936

`A002212(abs(1-n)+1)`
-/

namespace A025238.P4279514518283286936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (|1 - (n : ℤ)| + 1).toNat

end

end A025238.P4279514518283286936

noncomputable section

/-- A025238: a(n) = a(1)*a(n-1) + a(2)*a(n-2) + ...+ a(n-2)*a(2) for n >= 3.

Offset 1, canonical program `A025238.P4279514518283286936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A025238 (n : ℕ) : ℤ :=
  A025238.P4279514518283286936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A025238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025281.P12826176153322829795

`A001414(A000142(n))`
-/

namespace A025281.P12826176153322829795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000142 n).toNat

end

end A025281.P12826176153322829795

noncomputable section

/-- A025281: a(n) = sopfr(n!), where sopfr = A001414 is the integer log.

Offset 0, canonical program `A025281.P12826176153322829795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025281 (n : ℕ) : ℤ :=
  A025281.P12826176153322829795.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025440.P11251878173917130302

`A016765(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025440.P11251878173917130302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016765 n + 2 * a (n - 1)

end

end A025440.P11251878173917130302

noncomputable section

/-- A025440: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-6x)).

Offset 0, canonical program `A025440.P11251878173917130302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A025440 (n : ℕ) : ℤ :=
  A025440.P11251878173917130302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A025440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025445.P7593030426656216942

`A016269(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A025445.P7593030426656216942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016269 n + 7 * a (n - 1)

end

end A025445.P7593030426656216942

noncomputable section

/-- A025445: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-7*x)).

Offset 0, canonical program `A025445.P7593030426656216942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A025445 (n : ℕ) : ℤ :=
  A025445.P7593030426656216942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A025445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025485.P672486896533301311

`a(A068527(n))+1` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A025485.P672486896533301311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (A068527 n).toNat + 1

end

end A025485.P672486896533301311

noncomputable section

/-- A025485: Number of iterations of function f(k) = ceiling(sqrt(k))^2 - k on n required to force n <= 2.

Offset 0, canonical program `A025485.P672486896533301311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025485 (n : ℕ) : ℤ :=
  (A025485.P672486896533301311.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025549.P17260680534259630983

`∏[gcd(Δ[n²], A003418(n))]`
-/

namespace A025549.P17260680534259630983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A003418 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A025549.P17260680534259630983

noncomputable section

/-- A025549: a(n) = (2n-1)!!/lcm{1,3,5,...,2n-1}.

Offset 1, canonical program `A025549.P17260680534259630983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A025549 (n : ℕ) : ℤ :=
  (A025549.P17260680534259630983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A025549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025578.P10412567754576835900

`A005773(n)+Δ[A133494(n)]`
-/

namespace A025578.P10412567754576835900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (f1 (n + 1) - f1 n)

end

end A025578.P10412567754576835900

noncomputable section

/-- A025578: a(n) = Sum{T(n,k-1), k = 1,2,...,n}.

Offset 1, canonical program `A025578.P10412567754576835900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025578 (n : ℕ) : ℤ :=
  A025578.P10412567754576835900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A025578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025695.P4988645077206644745

`A034887(n)+a(n-1)` with `a(0)=1`
-/

namespace A025695.P4988645077206644745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034887 n + a (n - 1)

end

end A025695.P4988645077206644745

noncomputable section

/-- A025695: Index of 2^n within the sequence of the numbers of the form 2^i*10^j.

Offset 0, canonical program `A025695.P4988645077206644745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025695 (n : ℕ) : ℤ :=
  A025695.P4988645077206644745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025696.P10642012608150261714

`∑[ceil(A020914(n)/2)]`
-/

namespace A025696.P10642012608150261714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020914 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025696.P10642012608150261714

noncomputable section

/-- A025696: Index of 3^n within the sequence of the numbers of the form 3^i*4^j.

Offset 0, canonical program `A025696.P10642012608150261714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025696 (n : ℕ) : ℤ :=
  A025696.P10642012608150261714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025697.P13038111019771636556

`∑[n+1]+1-A025692(n)`
-/

namespace A025697.P13038111019771636556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A025692 n)

end

end A025697.P13038111019771636556

noncomputable section

/-- A025697: Index of 3^n within the sequence of the numbers of the form 3^i*6^j.

Offset 0, canonical program `A025697.P13038111019771636556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025697 (n : ℕ) : ℤ :=
  A025697.P13038111019771636556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025699.P7745299274468322832

`∑[ceil(A020914(n)/3)]`
-/

namespace A025699.P7745299274468322832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020914 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025699.P7745299274468322832

noncomputable section

/-- A025699: Index of 3^n within the sequence of the numbers of the form 3^i*8^j (A025615).

Offset 0, canonical program `A025699.P7745299274468322832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025699 (n : ℕ) : ℤ :=
  A025699.P7745299274468322832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025700.P7343268444154168773

`∑[A034888(n)]%A017511(n)`
-/

namespace A025700.P7343268444154168773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017511 n)

end

end A025700.P7343268444154168773

noncomputable section

/-- A025700: Index of 3^n within the sequence of the numbers of the form 3^i * 10^j.

Offset 0, canonical program `A025700.P7343268444154168773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025700 (n : ℕ) : ℤ :=
  A025700.P7343268444154168773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025701.P4726638053084744775

`∑[∑[A022929(abs(1-n))]]`
-/

namespace A025701.P4726638053084744775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022929 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P4726638053084744775

noncomputable section

/-- A025701: Index of 4^n within the sequence of the numbers of the form 3^i*4^j.

Offset 0, canonical program `A025701.P4726638053084744775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025701 (n : ℕ) : ℤ :=
  A025701.P4726638053084744775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025711.P7026910914097367224

`∑[1-A034887(n)+n]+1`
-/

namespace A025711.P7026910914097367224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A034887 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025711.P7026910914097367224

noncomputable section

/-- A025711: Index of 5^n within the sequence of the numbers of the form 5^i*10^j.

Offset 0, canonical program `A025711.P7026910914097367224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025711 (n : ℕ) : ℤ :=
  A025711.P7026910914097367224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025712.P16211301659653551124

`∑[A020914(n)]+∑[n]`
-/

namespace A025712.P16211301659653551124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A025712.P16211301659653551124

noncomputable section

/-- A025712: Index of 6^n within the sequence of the numbers of the form 2^i*6^j.

Offset 0, canonical program `A025712.P16211301659653551124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025712 (n : ℕ) : ℤ :=
  A025712.P16211301659653551124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025713.P720326762363745122

`a(n-1)+A020915(n)+n` with `a(0)=1`
-/

namespace A025713.P720326762363745122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020915 n + (n : ℤ))

end

end A025713.P720326762363745122

noncomputable section

/-- A025713: Index of 6^n within the sequence of the numbers of the form 3^i*6^j.

Offset 0, canonical program `A025713.P720326762363745122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713 (n : ℕ) : ℤ :=
  A025713.P720326762363745122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025715.P12380202038219117915

`∑[A008620(A056576(4*n))-n]`
-/

namespace A025715.P12380202038219117915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A056576 (4 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025715.P12380202038219117915

noncomputable section

/-- A025715: Index of 6^n within the sequence of the numbers of the form 5^i*6^j (A025622).

Offset 0, canonical program `A025715.P12380202038219117915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1578 terms. -/
def A025715 (n : ℕ) : ℤ :=
  A025715.P12380202038219117915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1578 terms. -/
def A025715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025718.P898795046028977700

`∑[A008619(A020915(n)-1+n)]`
-/

namespace A025718.P898795046028977700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A020915 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P898795046028977700

noncomputable section

/-- A025718: Index of 6^n within the sequence of the numbers of the form 6^i*9^j.

Offset 0, canonical program `A025718.P898795046028977700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6133 terms. -/
def A025718 (n : ℕ) : ℤ :=
  A025718.P898795046028977700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6133 terms. -/
def A025718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025728.P278276760953338744

`∑[A020915(3*n)]`
-/

namespace A025728.P278276760953338744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025728.P278276760953338744

noncomputable section

/-- A025728: Index of 8^n within the sequence of the numbers of the form 3^i*8^j (A025615).

Offset 0, canonical program `A025728.P278276760953338744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A025728 (n : ℕ) : ℤ :=
  A025728.P278276760953338744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A025728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025733.P17661610688919653550

`∑[A034887(3*n)]`
-/

namespace A025733.P17661610688919653550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025733.P17661610688919653550

noncomputable section

/-- A025733: Index of 8^n within the sequence of the numbers of the form 8^i*10^j.

Offset 0, canonical program `A025733.P17661610688919653550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A025733 (n : ℕ) : ℤ :=
  A025733.P17661610688919653550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A025733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025736.P786731760103273081

`(n+1)²+1-A025703(n)`
-/

namespace A025736.P786731760103273081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) - A025703 n

end

end A025736.P786731760103273081

noncomputable section

/-- A025736: Index of 9^n within the sequence of the numbers of the form 6^i*9^j.

Offset 0, canonical program `A025736.P786731760103273081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025736 (n : ℕ) : ℤ :=
  A025736.P786731760103273081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025738.P10852758917869831015

`∑[ceil(A020914(2*n)/3)]`
-/

namespace A025738.P10852758917869831015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020914 (2 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P10852758917869831015

noncomputable section

/-- A025738: Index of 9^n within the sequence of the numbers of the form 8^i*9^j.

Offset 0, canonical program `A025738.P10852758917869831015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025738 (n : ℕ) : ℤ :=
  A025738.P10852758917869831015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025739.P357740640930675729

`∑[A034888(2*n)]`
-/

namespace A025739.P357740640930675729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025739.P357740640930675729

noncomputable section

/-- A025739: Index of 9^n within the sequence of the numbers of the form 9^i*10^j.

Offset 0, canonical program `A025739.P357740640930675729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A025739 (n : ℕ) : ℤ :=
  A025739.P357740640930675729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A025739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025742.P10336602055490751642

`∑[A110654(A067497(n))]+1`
-/

namespace A025742.P10336602055490751642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A067497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025742.P10336602055490751642

noncomputable section

/-- A025742: Index of 10^n within the sequence of the numbers of the form 4^i*10^j.

Offset 0, canonical program `A025742.P10336602055490751642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A025742 (n : ℕ) : ℤ :=
  A025742.P10336602055490751642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. -/
def A025742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025744.P4861181896630295727

`A005408(∑[n])-∑[A057359(n)]`
-/

namespace A025744.P4861181896630295727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A025744.P4861181896630295727

noncomputable section

/-- A025744: Index of 10^n within the sequence of the numbers of the form 6^i*10^j.

Offset 0, canonical program `A025744.P4861181896630295727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A025744 (n : ℕ) : ℤ :=
  A025744.P4861181896630295727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A025744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025778.P8790388259332097540

`ceil(A035104(n)/20)`
-/

namespace A025778.P8790388259332097540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035104 n : ℚ) / 20⌉

end

end A025778.P8790388259332097540

noncomputable section

/-- A025778: Expansion of 1/((1-x)(1-x^5)(1-x^8)).

Offset 0, canonical program `A025778.P8790388259332097540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025778 (n : ℕ) : ℤ :=
  A025778.P8790388259332097540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025780.P10333408410863326626

`A025811(abs(1-n))+A025811(n)`
-/

namespace A025780.P10333408410863326626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 |1 - (n : ℤ)|.toNat + A025811 n

end

end A025780.P10333408410863326626

noncomputable section

/-- A025780: Expansion of 1/((1-x)(1-x^5)(1-x^11)).

Offset 0, canonical program `A025780.P10333408410863326626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025780 (n : ℕ) : ℤ :=
  A025780.P10333408410863326626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025782.P1196101976419527682

`A025768(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025782.P1196101976419527682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025768 n - a (n - 3)

end

end A025782.P1196101976419527682

noncomputable section

/-- A025782: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A025782.P1196101976419527682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025782 (n : ℕ) : ℤ :=
  A025782.P1196101976419527682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025783.P12467581854795835454

`A025771(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025783.P12467581854795835454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025771 n - a (n - 3)

end

end A025783.P12467581854795835454

noncomputable section

/-- A025783: Expansion of 1/((1-x)(1-x^6)(1-x^11)).

Offset 0, canonical program `A025783.P12467581854795835454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025783 (n : ℕ) : ℤ :=
  A025783.P12467581854795835454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025784.P614315129234418828

`A008725(n)-∑[ceil(n/8)]`
-/

namespace A025784.P614315129234418828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025784.P614315129234418828

noncomputable section

/-- A025784: Expansion of 1/((1-x)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025784.P614315129234418828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025784 (n : ℕ) : ℤ :=
  A025784.P614315129234418828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025786.P7132858397673449593

`A025818(abs(1-n))+A025818(n)`
-/

namespace A025786.P7132858397673449593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 |1 - (n : ℤ)|.toNat + A025818 n

end

end A025786.P7132858397673449593

noncomputable section

/-- A025786: Expansion of 1/((1-x)(1-x^7)(1-x^10)).

Offset 0, canonical program `A025786.P7132858397673449593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025786 (n : ℕ) : ℤ :=
  A025786.P7132858397673449593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025789.P4543356228258914998

`A025774(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A025789.P4543356228258914998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A025774 n - a (n - 4)

end

end A025789.P4543356228258914998

noncomputable section

/-- A025789: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025789.P4543356228258914998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025789 (n : ℕ) : ℤ :=
  A025789.P4543356228258914998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025801.P18350864034073825742

`A002620(ceil(xor(1, n)/6)+1)`
-/

namespace A025801.P18350864034073825742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat

end

end A025801.P18350864034073825742

noncomputable section

/-- A025801: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^12)).

Offset 0, canonical program `A025801.P18350864034073825742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025801 (n : ℕ) : ℤ :=
  A025801.P18350864034073825742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025805.P9749359241419202163

`A025775(n)-a(n-1)` with `a(0)=1`
-/

namespace A025805.P9749359241419202163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025775 n - a (n - 1)

end

end A025805.P9749359241419202163

noncomputable section

/-- A025805: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)).

Offset 0, canonical program `A025805.P9749359241419202163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025805 (n : ℕ) : ℤ :=
  A025805.P9749359241419202163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025825.P5819571536445049629

`A005044(A008611(n)+2)`
-/

namespace A025825.P5819571536445049629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 n + 2).toNat

end

end A025825.P5819571536445049629

noncomputable section

/-- A025825: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025825.P5819571536445049629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025825 (n : ℕ) : ℤ :=
  A025825.P5819571536445049629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025828.P16639115360157314028

`A025796(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025828.P16639115360157314028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025796 n - a (n - 2)

end

end A025828.P16639115360157314028

noncomputable section

/-- A025828: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)).

Offset 0, canonical program `A025828.P16639115360157314028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025828 (n : ℕ) : ℤ :=
  A025828.P16639115360157314028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025830.P14589058213717596571

`A025797(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025830.P14589058213717596571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025797 n - a (n - 2)

end

end A025830.P14589058213717596571

noncomputable section

/-- A025830: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)).

Offset 0, canonical program `A025830.P14589058213717596571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025830 (n : ℕ) : ℤ :=
  A025830.P14589058213717596571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025832.P6610529385234616200

`A025799(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025832.P6610529385234616200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025799 n - a (n - 2)

end

end A025832.P6610529385234616200

noncomputable section

/-- A025832: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)).

Offset 0, canonical program `A025832.P6610529385234616200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025832 (n : ℕ) : ℤ :=
  A025832.P6610529385234616200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025833.P11721580056707328339

`A025800(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025833.P11721580056707328339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025800 n - a (n - 2)

end

end A025833.P11721580056707328339

noncomputable section

/-- A025833: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)).

Offset 0, canonical program `A025833.P11721580056707328339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025833 (n : ℕ) : ℤ :=
  A025833.P11721580056707328339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025835.P2629410859167698004

`A033182(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025835.P2629410859167698004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A033182 n + a (n - 3)

end

end A025835.P2629410859167698004

noncomputable section

/-- A025835: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A025835.P2629410859167698004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025835 (n : ℕ) : ℤ :=
  A025835.P2629410859167698004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025859.P10802122507911805993

`A025807(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025859.P10802122507911805993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025807 n - a (n - 2)

end

end A025859.P10802122507911805993

noncomputable section

/-- A025859: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)).

Offset 0, canonical program `A025859.P10802122507911805993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025859 (n : ℕ) : ℤ :=
  A025859.P10802122507911805993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025863.P11788053294611047951

`A025811(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025863.P11788053294611047951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025811 n - a (n - 2)

end

end A025863.P11788053294611047951

noncomputable section

/-- A025863: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A025863.P11788053294611047951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025863 (n : ℕ) : ℤ :=
  A025863.P11788053294611047951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025864.P441569782507185122

`round(A008720(A084964(n))/3)`
-/

namespace A025864.P441569782507185122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008720 (A084964 n).toNat : ℚ) / 3)

end

end A025864.P441569782507185122

noncomputable section

/-- A025864: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A025864.P441569782507185122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025864 (n : ℕ) : ℤ :=
  A025864.P441569782507185122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025866.P13846047430702582108

`A025815(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025866.P13846047430702582108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025815 n - a (n - 2)

end

end A025866.P13846047430702582108

noncomputable section

/-- A025866: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A025866.P13846047430702582108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025866 (n : ℕ) : ℤ :=
  A025866.P13846047430702582108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025869.P6072988599627476186

`A025818(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025869.P6072988599627476186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025818 n - a (n - 2)

end

end A025869.P6072988599627476186

noncomputable section

/-- A025869: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A025869.P6072988599627476186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025869 (n : ℕ) : ℤ :=
  A025869.P6072988599627476186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025877.P10466847401103007344

`A008680(abs(1-A097065(n)))`
-/

namespace A025877.P10466847401103007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 |1 - A097065 n|.toNat

end

end A025877.P10466847401103007344

noncomputable section

/-- A025877: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A025877.P10466847401103007344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025877 (n : ℕ) : ℤ :=
  A025877.P10466847401103007344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025940.P11243219932794800172

`A001240(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A025940.P11243219932794800172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001240 (n + 1) + 10 * a (n - 1)

end

end A025940.P11243219932794800172

noncomputable section

/-- A025940: Expansion of 1/((1-2x)(1-3x)(1-6x)(1-10x)).

Offset 0, canonical program `A025940.P11243219932794800172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A025940 (n : ℕ) : ℤ :=
  A025940.P11243219932794800172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A025940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026044.P13572406684930844183

`floor(A026043(n+5)/2)`
-/

namespace A026044.P13572406684930844183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026043 (n + 5) : ℚ) / 2⌋

end

end A026044.P13572406684930844183

noncomputable section

/-- A026044: a(n) = (d(n)-r(n))/2, where d = A026043 and r is the periodic sequence with fundamental period (1,1,0,0).

Offset 5, canonical program `A026044.P13572406684930844183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026044 (n : ℕ) : ℤ :=
  A026044.P13572406684930844183.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026045.P9051466400289274682

`floor(A026043(n+5)/5)`
-/

namespace A026045.P9051466400289274682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026043 (n + 5) : ℚ) / 5⌋

end

end A026045.P9051466400289274682

noncomputable section

/-- A026045: a(n) = (d(n)-r(n))/5, where d = A026043 and r is the periodic sequence with fundamental period (0,2,3,0,0).

Offset 1, canonical program `A026045.P9051466400289274682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026045 (n : ℕ) : ℤ :=
  A026045.P9051466400289274682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026046.P4497783029738745684

`A026043(n+6)+10-∑[n+1]`
-/

namespace A026046.P4497783029738745684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026043 (n + 6) + (10 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A026046.P4497783029738745684

noncomputable section

/-- A026046: a(n) = dot_product(1,2,...,n)*(6,7,...,n,1,2,3,4,5).

Offset 6, canonical program `A026046.P4497783029738745684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026046 (n : ℕ) : ℤ :=
  A026046.P4497783029738745684.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026049.P15935977015294763710

`A153057(n+3)+(n+10)²+2`
-/

namespace A026049.P15935977015294763710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 (n + 3) + ((n + 10) ^ 2 + 2 : ℤ)

end

end A026049.P15935977015294763710

noncomputable section

/-- A026049: a(n) = dot_product(1,2,...,n)*(7,8,...,n,1,2,3,4,5,6).

Offset 7, canonical program `A026049.P15935977015294763710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A026049 (n : ℕ) : ℤ :=
  A026049.P15935977015294763710.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A026049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026054.P10564683423339651880

`A023551(n+1)+4`
-/

namespace A026054.P10564683423339651880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) + 4

end

end A026054.P10564683423339651880

noncomputable section

/-- A026054: dot product (n,n-1,...2,1).(3,4,...,n,1,2).

Offset 3, canonical program `A026054.P10564683423339651880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026054 (n : ℕ) : ℤ :=
  A026054.P10564683423339651880.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026059.P6681535723987925758

`floor(∑[A000217(n+5)+2*n+1]/5)+2`
-/

namespace A026059.P6681535723987925758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋ + 2

end

end A026059.P6681535723987925758

noncomputable section

/-- A026059: a(n) = (d(n)-r(n))/5, where d = A026057 and r is the periodic sequence with fundamental period (1,0,3,1,0).

Offset 4, canonical program `A026059.P6681535723987925758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026059 (n : ℕ) : ℤ :=
  A026059.P6681535723987925758.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026061.P785445537363448969

`floor(A026060(n+5)/2)`
-/

namespace A026061.P785445537363448969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026060 (n + 5) : ℚ) / 2⌋

end

end A026061.P785445537363448969

noncomputable section

/-- A026061: a(n) = (d(n)-r(n))/2, where d = A026060 and r is the periodic sequence with fundamental period (1,0,0,0).

Offset 5, canonical program `A026061.P785445537363448969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026061 (n : ℕ) : ℤ :=
  A026061.P785445537363448969.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026062.P17057419185729612188

`floor(A026060(n+5)/5)`
-/

namespace A026062.P17057419185729612188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026060 (n + 5) : ℚ) / 5⌋

end

end A026062.P17057419185729612188

noncomputable section

/-- A026062: a(n) = (d(n)-r(n))/5, where d = A026060 and r is the periodic sequence with fundamental period (0,0,1,4,0).

Offset 5, canonical program `A026062.P17057419185729612188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026062 (n : ℕ) : ℤ :=
  A026062.P17057419185729612188.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026063.P9693149779972203707

`A005337(n+10)-5`
-/

namespace A026063.P9693149779972203707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005337 (n + 10) - 5

end

end A026063.P9693149779972203707

noncomputable section

/-- A026063: dot_product(n,n-1,...2,1)*(6,7,...,n,1,2,3,4,5).

Offset 6, canonical program `A026063.P9693149779972203707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A026063 (n : ℕ) : ℤ :=
  A026063.P9693149779972203707.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A026063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026066.P12888286900863484127

`A280344(n+4)+∑[A000217(n+5)]`
-/

namespace A026066.P12888286900863484127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026066.P12888286900863484127

noncomputable section

/-- A026066: dot_product(n,n-1,...2,1)*(7,8,...,n,1,2,3,4,5,6).

Offset 7, canonical program `A026066.P12888286900863484127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A026066 (n : ℕ) : ℤ :=
  A026066.P12888286900863484127.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A026066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026135.P2026084311874351281

`Δ[Δ[A005773(n)]]`
-/

namespace A026135.P2026084311874351281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026135.P2026084311874351281

noncomputable section

/-- A026135: Number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also sum of numbers in row n+1 of the array T defined in A026120.

Offset 0, canonical program `A026135.P2026084311874351281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026135 (n : ℕ) : ℤ :=
  A026135.P2026084311874351281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026147.P16575442085374687038

`1+A001969(n+1)`
-/

namespace A026147.P16575442085374687038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001969 (n + 1)

end

end A026147.P16575442085374687038

noncomputable section

/-- A026147: a(n) = position of n-th 1 in A001285 or A010059 (Thue-Morse sequence).

Offset 1, canonical program `A026147.P16575442085374687038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026147 (n : ℕ) : ℤ :=
  A026147.P16575442085374687038.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026200.P2191791267345785

`A080513(n)+n-A003815(A003815(n))`
-/

namespace A026200.P2191791267345785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + ((n : ℤ) - A003815 (A003815 n).toNat)

end

end A026200.P2191791267345785

noncomputable section

/-- A026200: a(n) = (s(n) + 2)/3, where s(n) is the n-th number congruent to 1 mod 3 in A026166.

Offset 1, canonical program `A026200.P2191791267345785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026200 (n : ℕ) : ℤ :=
  A026200.P2191791267345785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026227.P12938836821948586418

`A026179(n+1)+n²%(n+1)`
-/

namespace A026227.P12938836821948586418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1) + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A026227.P12938836821948586418

noncomputable section

/-- A026227: a(n) = (1/3)*(s(n) + 2), where s = A026226.

Offset 1, canonical program `A026227.P12938836821948586418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026227 (n : ℕ) : ℤ :=
  A026227.P12938836821948586418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026242.P12591696839412449648

`abs(n+1-Δ[(n+1)*A005206(n)])`
-/

namespace A026242.P12591696839412449648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A026242.P12591696839412449648

noncomputable section

/-- A026242: a(n) = j if n is L(j), else a(n) = k if n is U(k), where L = A000201, U = A001950 (lower and upper Wythoff sequences).

Offset 1, canonical program `A026242.P12591696839412449648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026242 (n : ℕ) : ℤ :=
  A026242.P12591696839412449648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026250.P4732241892456798678

`Δ[2*(n+1)*A049472(n+1)]-(n+1)`
-/

namespace A026250.P4732241892456798678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A049472 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A026250.P4732241892456798678

noncomputable section

/-- A026250: Beginning with the natural numbers, swap [ k*sqrt(2) ] and [ k*(2 + sqrt(2)) ], for all k >= 1.

Offset 1, canonical program `A026250.P4732241892456798678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026250 (n : ℕ) : ℤ :=
  A026250.P4732241892456798678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A026250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026274.P13588691295036245714

`∑[A014675(n)+1]`
-/

namespace A026274.P13588691295036245714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P13588691295036245714

noncomputable section

/-- A026274: Greatest k such that s(k) = n, where s = A026272.

Offset 1, canonical program `A026274.P13588691295036245714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026274 (n : ℕ) : ℤ :=
  A026274.P13588691295036245714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026275.P3792631049529689533

`∑[Δ[(n+1)*A005206(n)]+n]`
-/

namespace A026275.P3792631049529689533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P3792631049529689533

noncomputable section

/-- A026275: Sum of numbers between the two n's in A026272.

Offset 1, canonical program `A026275.P3792631049529689533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026275 (n : ℕ) : ℤ :=
  A026275.P3792631049529689533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026278.P1544389706053158847

`A026277(n+1)+3+n`
-/

namespace A026278.P1544389706053158847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (n + 1) + 3 + (n : ℤ)

end

end A026278.P1544389706053158847

noncomputable section

/-- A026278: a(n) = greatest k such that s(k) = n, where s = A026276.

Offset 1, canonical program `A026278.P1544389706053158847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026278 (n : ℕ) : ℤ :=
  A026278.P1544389706053158847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026282.P10518951122286550026

`A026281(n+1)+4+n`
-/

namespace A026282.P10518951122286550026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026281 (n + 1) + 4 + (n : ℤ)

end

end A026282.P10518951122286550026

noncomputable section

/-- A026282: a(n) = greatest k such that s(k) = n, where s = A026280.

Offset 1, canonical program `A026282.P10518951122286550026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026282 (n : ℕ) : ℤ :=
  A026282.P10518951122286550026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026286.P2604312345630252657

`A026285(n+1)+5+n`
-/

namespace A026286.P2604312345630252657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026285 (n + 1) + 5 + (n : ℤ)

end

end A026286.P2604312345630252657

noncomputable section

/-- A026286: a(n) = greatest k such that s(k) = n, where s = A026284.

Offset 1, canonical program `A026286.P2604312345630252657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026286 (n : ℕ) : ℤ :=
  A026286.P2604312345630252657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026324.P18035085884532946173

`A016304(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A026324.P18035085884532946173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016304 n + 8 * a (n - 1)

end

end A026324.P18035085884532946173

noncomputable section

/-- A026324: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A026324.P18035085884532946173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A026324 (n : ℕ) : ℤ :=
  A026324.P18035085884532946173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A026324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026326.P16799518592668040838

`a(n-1)+A020571(n)+a(n-1)` with `a(0)=1`
-/

namespace A026326.P16799518592668040838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020571 n + a (n - 1))

end

end A026326.P16799518592668040838

noncomputable section

/-- A026326: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A026326.P16799518592668040838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026326 (n : ℕ) : ℤ :=
  A026326.P16799518592668040838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026364.P4351493388388613125

`2*A026363(n+1)+n`
-/

namespace A026364.P4351493388388613125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) + (n : ℤ)

end

end A026364.P4351493388388613125

noncomputable section

/-- A026364: a(n) = greatest k such that s(k) = n, where s = A026362.

Offset 1, canonical program `A026364.P4351493388388613125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026364 (n : ℕ) : ℤ :=
  A026364.P4351493388388613125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026368.P5295631279945250445

`2*A026367(n+1)+1+n`
-/

namespace A026368.P5295631279945250445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (n + 1) + 1 + (n : ℤ)

end

end A026368.P5295631279945250445

noncomputable section

/-- A026368: a(n) = greatest k such that s(k) = n, where s = A026366.

Offset 1, canonical program `A026368.P5295631279945250445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026368 (n : ℕ) : ℤ :=
  A026368.P5295631279945250445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026372.P338144107310347952

`2*A026371(n+1)+2+n`
-/

namespace A026372.P338144107310347952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026371 (n + 1) + 2 + (n : ℤ)

end

end A026372.P338144107310347952

noncomputable section

/-- A026372: a(n) = greatest k such that s(k) = n, where s = A026370.

Offset 1, canonical program `A026372.P338144107310347952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026372 (n : ℕ) : ℤ :=
  A026372.P338144107310347952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026375.P8104787001125521639

`∑[A085362(n)]`
-/

namespace A026375.P8104787001125521639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026375.P8104787001125521639

noncomputable section

/-- A026375: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(2*k,k).

Offset 0, canonical program `A026375.P8104787001125521639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A026375 (n : ℕ) : ℤ :=
  A026375.P8104787001125521639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A026375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026376.P15635769329318404700

`∑[abs(Δ[n*A002212(n)])]`
-/

namespace A026376.P15635769329318404700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026376.P15635769329318404700

noncomputable section

/-- A026376: a(n) is the number of integer strings s(0),...,s(n) counted by array T in A026374 that have s(n)=2; also a(n) = T(2n,n-1).

Offset 1, canonical program `A026376.P15635769329318404700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026376 (n : ℕ) : ℤ :=
  A026376.P15635769329318404700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A026376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026382.P9905226329419189044

`A007980(A032766(n))+A000292(A007494(n))`
-/

namespace A026382.P9905226329419189044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (A032766 n).toNat + A000292 (A007494 n).toNat

end

end A026382.P9905226329419189044

noncomputable section

/-- A026382: a(n) = T(n,n-3), where T is the array in A026374.

Offset 3, canonical program `A026382.P9905226329419189044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A026382 (n : ℕ) : ℤ :=
  A026382.P9905226329419189044.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A026382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026393.P7542022600208661733

`∑[A064680(n)+or(1, n)]`
-/

namespace A026393.P7542022600208661733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026393.P7542022600208661733

noncomputable section

/-- A026393: a(n) = T(n,n-2), where T is the array in A026386.

Offset 2, canonical program `A026393.P7542022600208661733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026393 (n : ℕ) : ℤ :=
  A026393.P7542022600208661733.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026394.P12365354529536378391

`A211538(n+4)+A001651(n+1)*A211538(n+3)`
-/

namespace A026394.P12365354529536378391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 4) + A001651 (n + 1) * A211538 (n + 3)

end

end A026394.P12365354529536378391

noncomputable section

/-- A026394: a(n) = T(n,n-3), where T is the array in A026386.

Offset 3, canonical program `A026394.P12365354529536378391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A026394 (n : ℕ) : ℤ :=
  A026394.P12365354529536378391.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A026394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026561.P15216908254015800815

`A020579(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026561.P15216908254015800815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020579 n + 2 * a (n - 1)

end

end A026561.P15216908254015800815

noncomputable section

/-- A026561: Expansion of 1/((1-2x)(1-6x)(1-8x)(1-9x)).

Offset 0, canonical program `A026561.P15216908254015800815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026561 (n : ℕ) : ℤ :=
  A026561.P15216908254015800815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A026561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026619.P8009032634498596623

`record[Δ[A001405(A014681(n))]]`
-/

namespace A026619.P8009032634498596623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026619.P8009032634498596623

noncomputable section

/-- A026619: a(n) = A026615(2*n-1, n-1).

Offset 1, canonical program `A026619.P8009032634498596623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026619 (n : ℕ) : ℤ :=
  A026619.P8009032634498596623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026641.P466373734819363121

`ceil(A026638(n)/2)`
-/

namespace A026641.P466373734819363121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026638 n : ℚ) / 2⌉

end

end A026641.P466373734819363121

noncomputable section

/-- A026641: Number of nodes of even outdegree (including leaves) in all ordered trees with n edges.

Offset 0, canonical program `A026641.P466373734819363121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026641 (n : ℕ) : ℤ :=
  A026641.P466373734819363121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A026641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026655.P16711446870528174266

`A000034(n)*A123347(A004526(n))`
-/

namespace A026655.P16711446870528174266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A123347 (A004526 n).toNat

end

end A026655.P16711446870528174266

noncomputable section

/-- A026655: T(n,0) + T(n,1) + ... + T(n,n), T given by A026648.

Offset 0, canonical program `A026655.P16711446870528174266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A026655 (n : ℕ) : ℤ :=
  A026655.P16711446870528174266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A026655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026923.P15473336771321964132

`A005044(n+1)+A005044(A109613(n)-1)`
-/

namespace A026923.P15473336771321964132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + A005044 (A109613 n - 1).toNat

end

end A026923.P15473336771321964132

noncomputable section

/-- A026923: Number of partitions of n into an odd number of parts, the greatest being 3; also, a(n+5) = number of partitions of n+2 into an even number of parts, each <= 3.

Offset 1, canonical program `A026923.P15473336771321964132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026923 (n : ℕ) : ℤ :=
  A026923.P15473336771321964132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026933.P5317002051161615524

`A001850(n)-a(n-1)` with `a(0)=1`
-/

namespace A026933.P5317002051161615524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001850 n - a (n - 1)

end

end A026933.P5317002051161615524

noncomputable section

/-- A026933: Self-convolution of array T given by A008288.

Offset 0, canonical program `A026933.P5317002051161615524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A026933 (n : ℕ) : ℤ :=
  A026933.P5317002051161615524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A026933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026965.P15880974110038291362

`(n/2+1)*A026633(n)`
-/

namespace A026965.P15880974110038291362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A026633 n : ℚ)

end

end A026965.P15880974110038291362

noncomputable section

/-- A026965: a(n) = Sum_{k=0..n} (k+1) * A026626(n,k).

Offset 0, canonical program `A026965.P15880974110038291362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A026965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A026965.P15880974110038291362.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A026965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026970.P7642699064589138744

`A026644(n)+n*A000975(n)`
-/

namespace A026970.P7642699064589138744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n + (n : ℤ) * A000975 n

end

end A026970.P7642699064589138744

noncomputable section

/-- A026970: a(n) = Sum_{k=0..n} (k+1) * A026637(n,k).

Offset 0, canonical program `A026970.P7642699064589138744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A026970 (n : ℕ) : ℤ :=
  A026970.P7642699064589138744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A026970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027000.P1838960676425186856

`A023537(Δ[n²])`
-/

namespace A027000.P1838960676425186856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027000.P1838960676425186856

noncomputable section

/-- A027000: a(n) = Lucas(2*n+3) - (6*n+4).

Offset 1, canonical program `A027000.P1838960676425186856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027000 (n : ℕ) : ℤ :=
  A027000.P1838960676425186856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027001.P13683913453746311344

`A014166(2*n+1)+2*A014166(2*n)`
-/

namespace A027001.P13683913453746311344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n + 1) + 2 * A014166 (2 * n)

end

end A027001.P13683913453746311344

noncomputable section

/-- A027001: a(n) = T(2*n, n+2), T given by A026998.

Offset 2, canonical program `A027001.P13683913453746311344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027001 (n : ℕ) : ℤ :=
  A027001.P13683913453746311344.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027005.P2362742707060237463

`∑[A023620(2*n+1)]`
-/

namespace A027005.P2362742707060237463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027005.P2362742707060237463

noncomputable section

/-- A027005: a(n) = T(2*n+1,n+2), T given by A026998.

Offset 1, canonical program `A027005.P2362742707060237463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027005 (n : ℕ) : ℤ :=
  A027005.P2362742707060237463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027055.P10635962007211724095

`A001590(n+9)-(n+4)*(n+9)`
-/

namespace A027055.P10635962007211724095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 9) - ((n + 4) * (n + 9) : ℤ)

end

end A027055.P10635962007211724095

noncomputable section

/-- A027055: a(n) = T(n, n+4), T given by A027052.

Offset 4, canonical program `A027055.P10635962007211724095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A027055 (n : ℕ) : ℤ :=
  A027055.P10635962007211724095.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A027055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000002.P13330532946811820297

`(3+(-1)^A156253(n+1))/2`
-/

namespace A000002.P13330532946811820297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1 : ℚ) ^ (A156253 (n + 1) : ℤ)) / 2

end

end A000002.P13330532946811820297

noncomputable section

/-- A000002: Kolakoski sequence: a(n) is length of n-th run; a(1) = 1; sequence consists just of 1's and 2's.

Offset 1, canonical program `A000002.P13330532946811820297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156253, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000002.P13330532946811820297.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156253, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000006.P2817507747577515147

`A000196(A000040(n+1))`
-/

namespace A000006.P2817507747577515147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1)).toNat

end

end A000006.P2817507747577515147

noncomputable section

/-- A000006: Integer part of square root of n-th prime.

Offset 1, canonical program `A000006.P2817507747577515147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000006 (n : ℕ) : ℤ :=
  A000006.P2817507747577515147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000026.P14646158085172730513

`A005361(n+1)*A007947(n+1)`
-/

namespace A000026.P14646158085172730513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

end

end A000026.P14646158085172730513

noncomputable section

/-- A000026: Mosaic numbers or multiplicative projection of n: if n = Product (p_j^k_j) then a(n) = Product (p_j * k_j).

Offset 1, canonical program `A000026.P14646158085172730513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000026 (n : ℕ) : ℤ :=
  A000026.P14646158085172730513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000216.P351312360313339281

`A003132(a(n-1))` with `a(0)=2`
-/

namespace A000216.P351312360313339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000216.P351312360313339281

noncomputable section

/-- A000216: Take sum of squares of digits of previous term, starting with 2.

Offset 1, canonical program `A000216.P351312360313339281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216 (n : ℕ) : ℤ :=
  A000216.P351312360313339281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000218.P6684988766202068

`A003132(a(n-1))` with `a(0)=3`
-/

namespace A000218.P6684988766202068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000218.P6684988766202068

noncomputable section

/-- A000218: Take sum of squares of digits of previous term; start with 3.

Offset 1, canonical program `A000218.P6684988766202068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218 (n : ℕ) : ℤ :=
  A000218.P6684988766202068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000221.P4832198433719140497

`A003132(a(n-1))` with `a(0)=5`
-/

namespace A000221.P4832198433719140497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000221.P4832198433719140497

noncomputable section

/-- A000221: Take sum of squares of digits of previous term; start with 5.

Offset 1, canonical program `A000221.P4832198433719140497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221 (n : ℕ) : ℤ :=
  A000221.P4832198433719140497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000695.P14587171459336407380

`(A145812(n+1)-1)/2`
-/

namespace A000695.P14587171459336407380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145812 (n + 1) - 1 : ℚ) / 2

end

end A000695.P14587171459336407380

noncomputable section

/-- A000695: Moser-de Bruijn sequence: sums of distinct powers of 4.

Offset 0, canonical program `A000695.P14587171459336407380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000695.P14587171459336407380.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000748.P16132471601073484065

`A033999(n)*A057083(n)`
-/

namespace A000748.P16132471601073484065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A057083 n

end

end A000748.P16132471601073484065

noncomputable section

/-- A000748: Expansion of bracket function.

Offset 0, canonical program `A000748.P16132471601073484065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748 (n : ℕ) : ℤ :=
  A000748.P16132471601073484065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000750.P17276910196845925233

`A033999(n)*A289389(n+4)`
-/

namespace A000750.P17276910196845925233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A289389 (n + 4)

end

end A000750.P17276910196845925233

noncomputable section

/-- A000750: Expansion of bracket function.

Offset 0, canonical program `A000750.P17276910196845925233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750 (n : ℕ) : ℤ :=
  A000750.P17276910196845925233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001000.P11683531770071818407

`A033638(A083479(n)+1+n)+C(2, n+2)`
-/

namespace A001000.P11683531770071818407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A001000.P11683531770071818407

noncomputable section

/-- A001000: a(n) = least m such that if a/b < c/d where a,b,c,d are integers in [0,n], then a/b < k/m < c/d for some integer k.

Offset 1, canonical program `A001000.P11683531770071818407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000 (n : ℕ) : ℤ :=
  A001000.P11683531770071818407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001462.P2570616953797054601

`A095114(n+2)-A095114(n+1)`
-/

namespace A001462.P2570616953797054601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 2) - A095114 (n + 1)

end

end A001462.P2570616953797054601

noncomputable section

/-- A001462: Golomb's sequence: a(n) is the number of times n occurs in the sequence, starting with a(1) = 1.

Offset 1, canonical program `A001462.P2570616953797054601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001462 (n : ℕ) : ℤ :=
  A001462.P2570616953797054601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001616.P911781339430000004

`∑{d}[n+1, A055155(#)*A271102((n+1)/#)]`
-/

namespace A001616.P911781339430000004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001616.P911781339430000004

noncomputable section

/-- A001616: Number of parabolic vertices of Gamma_0(n).

Offset 1, canonical program `A001616.P911781339430000004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001616 (n : ℕ) : ℤ :=
  A001616.P911781339430000004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001768.P14525527090377641846

`∑[A085423(n+1)]-(n+1)`
-/

namespace A001768.P14525527090377641846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001768.P14525527090377641846

noncomputable section

/-- A001768: Sorting numbers: number of comparisons for merge insertion sort of n elements.

Offset 1, canonical program `A001768.P14525527090377641846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001768 (n : ℕ) : ℤ :=
  A001768.P14525527090377641846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001816.P881623879304099309

`12*A003472(n+4)`
-/

namespace A001816.P881623879304099309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A003472 (n + 4)

end

end A001816.P881623879304099309

noncomputable section

/-- A001816: Coefficients of x^n in Hermite polynomial H_{n+4}.

Offset 0, canonical program `A001816.P881623879304099309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001816 (n : ℕ) : ℤ :=
  A001816.P881623879304099309.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002035.P10680891556500623091

`eq[1, A295316(n+2)]+2`
-/

namespace A002035.P10680891556500623091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002035.P10680891556500623091

noncomputable section

/-- A002035: Numbers that contain primes to odd powers only.

Offset 1, canonical program `A002035.P10680891556500623091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035 (n : ℕ) : ℤ :=
  (A002035.P10680891556500623091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002191.P9732241169647202108

`eq[1, A175192(n+1)]+1`
-/

namespace A002191.P9732241169647202108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002191.P9732241169647202108

noncomputable section

/-- A002191: Possible values for sum of divisors of n.

Offset 1, canonical program `A002191.P9732241169647202108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002191 (n : ℕ) : ℤ :=
  (A002191.P9732241169647202108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002381.P9042523861047841473

`floor(ceil(A038872(n+1)²/20)/6)`
-/

namespace A002381.P9042523861047841473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A038872 (n + 1) ^ 2 : ℚ) / 20⌉ : ℚ) / 6⌋

end

end A002381.P9042523861047841473

noncomputable section

/-- A002381: Numbers of the form (p^2 - 1)/120 where p is 1 or prime.

Offset 1, canonical program `A002381.P9042523861047841473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002381 (n : ℕ) : ℤ :=
  A002381.P9042523861047841473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002408.P4398356594904168961

`-(-1)^n*A007331(n)`
-/

namespace A002408.P4398356594904168961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A007331 n)

end

end A002408.P4398356594904168961

noncomputable section

/-- A002408: Expansion of 8-dimensional cusp form.

Offset 0, canonical program `A002408.P4398356594904168961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408 (n : ℕ) : ℤ :=
  A002408.P4398356594904168961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002459.P17296491257886822107

`xor(A000495(n), A169585(n))`
-/

namespace A002459.P17296491257886822107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000495 n) (A169585 n)

end

end A002459.P17296491257886822107

noncomputable section

/-- A002459: Nearest integer to cosh(n).

Offset 0, canonical program `A002459.P17296491257886822107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459 (n : ℕ) : ℤ :=
  A002459.P17296491257886822107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002708.P14849052634573435079

`A132636(n+1)%(n+1)`
-/

namespace A002708.P14849052634573435079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132636 (n + 1)) (n + 1 : ℤ)

end

end A002708.P14849052634573435079

noncomputable section

/-- A002708: a(n) = Fibonacci(n) mod n.

Offset 1, canonical program `A002708.P14849052634573435079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002708 (n : ℕ) : ℤ :=
  A002708.P14849052634573435079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002791.P2171648699354099435

`∑{d}[n+1, #*A158411(#)]`
-/

namespace A002791.P2171648699354099435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158411 d

end

end A002791.P2171648699354099435

noncomputable section

/-- A002791: a(n) = Sum_{d|n, d <= 4} d^2 + 4*Sum_{d|n, d>4} d.

Offset 1, canonical program `A002791.P2171648699354099435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002791 (n : ℕ) : ℤ :=
  A002791.P2171648699354099435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A002791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002815.P11144953744924913715

`∑[A230980(n)]+n`
-/

namespace A002815.P11144953744924913715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002815.P11144953744924913715

noncomputable section

/-- A002815: a(n) = n + Sum_{k=1..n} pi(k), where pi() = A000720.

Offset 0, canonical program `A002815.P11144953744924913715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815 (n : ℕ) : ℤ :=
  A002815.P11144953744924913715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003232.P18257136643244812951

`2*A339252(n)-A045891(n)`
-/

namespace A003232.P18257136643244812951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339252 n - A045891 n

end

end A003232.P18257136643244812951

noncomputable section

/-- A003232: Expansion of (x-1)*(x^2-4*x-1)/(1-2*x)^2.

Offset 0, canonical program `A003232.P18257136643244812951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A003232 (n : ℕ) : ℤ :=
  A003232.P18257136643244812951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A003232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003324.P909769212695493746

`and(1, n)+and(3, A335115(n+1))`
-/

namespace A003324.P909769212695493746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + Int.land 3 (A335115 (n + 1))

end

end A003324.P909769212695493746

noncomputable section

/-- A003324: A nonrepetitive sequence.

Offset 1, canonical program `A003324.P909769212695493746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324 (n : ℕ) : ℤ :=
  A003324.P909769212695493746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003451.P6940275346258853187

`A006584(n+3)-A027656(n)`
-/

namespace A003451.P6940275346258853187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (n + 3) - A027656 n

end

end A003451.P6940275346258853187

noncomputable section

/-- A003451: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals up to rotation.

Offset 5, canonical program `A003451.P6940275346258853187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003451 (n : ℕ) : ℤ :=
  A003451.P6940275346258853187.a (n - 5)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003557.P10734368654931726927

`A057521(n+1)/A071773(n+1)`
-/

namespace A003557.P10734368654931726927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A003557.P10734368654931726927

noncomputable section

/-- A003557: n divided by largest squarefree divisor of n; if n = Product p(k)^e(k) then a(n) = Product p(k)^(e(k)-1), with a(1) = 1.

Offset 1, canonical program `A003557.P10734368654931726927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003557.P10734368654931726927.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004017.P4610875702186550705

`16*A007331(n+1)`
-/

namespace A004017.P4610875702186550705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A007331 (n + 1)

end

end A004017.P4610875702186550705

noncomputable section

/-- A004017: Theta series of E_8 lattice with respect to deep hole.

Offset 1, canonical program `A004017.P4610875702186550705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004017 (n : ℕ) : ℤ :=
  A004017.P4610875702186550705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004169.P3341630025634182314

`lt[2, A080400(n+1)]+1`
-/

namespace A004169.P3341630025634182314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P3341630025634182314

noncomputable section

/-- A004169: Values of m for which a regular polygon with m sides cannot be constructed with ruler and compass.

Offset 1, canonical program `A004169.P3341630025634182314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004169 (n : ℕ) : ℤ :=
  (A004169.P3341630025634182314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004216.P11701108540860389608

`A055642(n+1)-1`
-/

namespace A004216.P11701108540860389608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1

end

end A004216.P11701108540860389608

noncomputable section

/-- A004216: a(n) = floor(log_10(n)).

Offset 1, canonical program `A004216.P11701108540860389608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004216 (n : ℕ) : ℤ :=
  A004216.P11701108540860389608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004269.P16919580351853942693

`floor(A004270((n+1)²)/2)`
-/

namespace A004269.P16919580351853942693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004270 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A004269.P16919580351853942693

noncomputable section

/-- A004269: a(n) = round(10000*log_2(n)).

Offset 1, canonical program `A004269.P16919580351853942693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004269 (n : ℕ) : ℤ :=
  A004269.P16919580351853942693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A004269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004305.P9541854457979571393

`A052472(n+3)+A006542(n+4)-A129936(n)`
-/

namespace A004305.P9541854457979571393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) + (A006542 (n + 4) - A129936 n)

end

end A004305.P9541854457979571393

noncomputable section

/-- A004305: Simple triangulations of a disk: column 4 of square array in A210664.

Offset 0, canonical program `A004305.P9541854457979571393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004305 (n : ℕ) : ℤ :=
  A004305.P9541854457979571393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004530.P5757221461617830557

`A257179(n)%(A000122(n)+1)`
-/

namespace A004530.P5757221461617830557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257179 n) (A000122 n + 1)

end

end A004530.P5757221461617830557

noncomputable section

/-- A004530: Expansion of (theta_2(0, x) + theta_3(0, x) + theta_4(0, x)) / 2 in powers of x^(1/4).

Offset 0, canonical program `A004530.P5757221461617830557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530 (n : ℕ) : ℤ :=
  A004530.P5757221461617830557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004611.P11928257504915027012

`record[(n+1)*A319691(n+1)]`
-/

namespace A004611.P11928257504915027012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004611.P11928257504915027012

noncomputable section

/-- A004611: Divisible only by primes congruent to 1 mod 3.

Offset 1, canonical program `A004611.P11928257504915027012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. -/
def A004611 (n : ℕ) : ℤ :=
  A004611.P11928257504915027012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5883 terms. -/
def A004611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004696.P3452124584783387889

`(A000045(n)-A082115(n))/3`
-/

namespace A004696.P3452124584783387889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A082115 n : ℚ) / 3

end

end A004696.P3452124584783387889

noncomputable section

/-- A004696: a(n) = floor(Fibonacci(n)/3).

Offset 0, canonical program `A004696.P3452124584783387889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004696 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004696.P3452124584783387889.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004698.P15694019374451496152

`(A000045(n)-A082116(n))/5`
-/

namespace A004698.P15694019374451496152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A082116 n : ℚ) / 5

end

end A004698.P15694019374451496152

noncomputable section

/-- A004698: a(n) = floor(Fibonacci(n)/5).

Offset 0, canonical program `A004698.P15694019374451496152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004698 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004698.P15694019374451496152.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004699.P12239774125625034341

`(A000045(n)-A082117(n))/6`
-/

namespace A004699.P12239774125625034341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n - A082117 n : ℚ) / 6

end

end A004699.P12239774125625034341

noncomputable section

/-- A004699: a(n) = floor(Fibonacci(n)/6).

Offset 0, canonical program `A004699.P12239774125625034341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004699 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A004699.P12239774125625034341.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A004699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005069.P14103743043716433580

`A005078(n+1)+A005082(n+1)`
-/

namespace A005069.P14103743043716433580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1) + A005082 (n + 1)

end

end A005069.P14103743043716433580

noncomputable section

/-- A005069: Sum of odd primes dividing n.

Offset 1, canonical program `A005069.P14103743043716433580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005078, A005082, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005069 (n : ℕ) : ℤ :=
  A005069.P14103743043716433580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005078, A005082, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A005069.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005070.P10126547095800783810

`∑{p}[n+1, #%A080029(#-1)]`
-/

namespace A005070.P10126547095800783810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (p : ℤ) (A080029 (p - 1))

end

end A005070.P10126547095800783810

noncomputable section

/-- A005070: Sum of primes == 1 (mod 3) dividing n.

Offset 1, canonical program `A005070.P10126547095800783810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005070 (n : ℕ) : ℤ :=
  A005070.P10126547095800783810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005086.P6711646533984267784

`∑{d}[n+1, A010056(#)]`
-/

namespace A005086.P6711646533984267784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010056 d

end

end A005086.P6711646533984267784

noncomputable section

/-- A005086: Number of Fibonacci numbers 1,2,3,5,... dividing n.

Offset 1, canonical program `A005086.P6711646533984267784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005086 (n : ℕ) : ℤ :=
  A005086.P6711646533984267784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005092.P14810173785204278299

`∑{d}[n+1, #*A010056(#)]`
-/

namespace A005092.P14810173785204278299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010056 d

end

end A005092.P14810173785204278299

noncomputable section

/-- A005092: Sum of Fibonacci numbers 1,2,3,5,... that divide n.

Offset 1, canonical program `A005092.P14810173785204278299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005092 (n : ℕ) : ℤ :=
  A005092.P14810173785204278299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005093.P13883602286870678262

`∑{d}[n+1, (#*A010056(#))²]`
-/

namespace A005093.P13883602286870678262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A010056 d) ^ 2

end

end A005093.P13883602286870678262

noncomputable section

/-- A005093: Sum of squares of Fibonacci numbers 1,2,3,5,... that divide n.

Offset 1, canonical program `A005093.P13883602286870678262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005093 (n : ℕ) : ℤ :=
  A005093.P13883602286870678262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005100.P5902118993367235572

`record[n-A082551(n+1)]`
-/

namespace A005100.P5902118993367235572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005100.P5902118993367235572

noncomputable section

/-- A005100: Deficient numbers: numbers k such that sigma(k) < 2k.

Offset 1, canonical program `A005100.P5902118993367235572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005100 (n : ℕ) : ℤ :=
  A005100.P5902118993367235572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005101.P6705997063366613997

`eq[1, A082551(n+1)]+1`
-/

namespace A005101.P6705997063366613997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005101.P6705997063366613997

noncomputable section

/-- A005101: Abundant numbers (sum of divisors of m exceeds 2m).

Offset 1, canonical program `A005101.P6705997063366613997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005101 (n : ℕ) : ℤ :=
  (A005101.P6705997063366613997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005120.P6021012035630790569

`Δ[A000931(n+1)*A176971(n+1)]`
-/

namespace A005120.P6021012035630790569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) * A176971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005120.P6021012035630790569

noncomputable section

/-- A005120: A sixth-order linear divisibility sequence: a(n+6) = -3*a(n+5) - 5*a(n+4) - 5*a(n+3) - 5*a(n+2) - 3*a(n+1) - a(n).

Offset 0, canonical program `A005120.P6021012035630790569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A005120 (n : ℕ) : ℤ :=
  A005120.P6021012035630790569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A005120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005123.P4885488379496739982

`(A007519(n+1)-1)/8`
-/

namespace A005123.P4885488379496739982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007519 (n + 1) - 1 : ℚ) / 8

end

end A005123.P4885488379496739982

noncomputable section

/-- A005123: Numbers k such that 8k + 1 is prime.

Offset 1, canonical program `A005123.P4885488379496739982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005123.P4885488379496739982.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005232.P14977833807478703543

`A389571(n+4)-A002623(n)`
-/

namespace A005232.P14977833807478703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389571 (n + 4) - A002623 n

end

end A005232.P14977833807478703543

noncomputable section

/-- A005232: Expansion of (1-x+x^2)/((1-x)^2*(1-x^2)*(1-x^4)).

Offset 0, canonical program `A005232.P14977833807478703543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389571, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005232 (n : ℕ) : ℤ :=
  A005232.P14977833807478703543.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389571, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005232.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005289.P13255751764471815005

`∑[∑[A008615(n)+A006584(n)]]`
-/

namespace A005289.P13255751764471815005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n + A006584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005289.P13255751764471815005

noncomputable section

/-- A005289: Number of graphs on n nodes with 3 cliques.

Offset 1, canonical program `A005289.P13255751764471815005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005289 (n : ℕ) : ℤ :=
  A005289.P13255751764471815005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005427.P7157750297444178158

`A072493(n+9)`
-/

namespace A005427.P7157750297444178158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 9)

end

end A005427.P7157750297444178158

noncomputable section

/-- A005427: Josephus problem: numbers m such that, when m people are arranged on a circle and numbered 1 through m, the final survivor when we remove every 4th person is one of the first three people.

Offset 1, canonical program `A005427.P7157750297444178158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A005427 (n : ℕ) : ℤ :=
  A005427.P7157750297444178158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A005427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005713.P7596571295974710938

`abs(A014677(n+1))`
-/

namespace A005713.P7596571295974710938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014677 (n + 1)|

end

end A005713.P7596571295974710938

noncomputable section

/-- A005713: Define strings S(0)=0, S(1)=11, S(n) = S(n-1)S(n-2); iterate.

Offset 0, canonical program `A005713.P7596571295974710938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005713 (n : ℕ) : ℤ :=
  A005713.P7596571295974710938.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005713.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005730.P9332930387800122468

`A245477(n)*A334085(n+1)`
-/

namespace A005730.P9332930387800122468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 n * A334085 (n + 1)

end

end A005730.P9332930387800122468

noncomputable section

/-- A005730: Related to n-th powers of polynomials: factors complementary to A005731.

Offset 1, canonical program `A005730.P9332930387800122468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730 (n : ℕ) : ℤ :=
  A005730.P9332930387800122468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005812.P15868546208220252248

`a(A081134(n))+1` with `a(0)=0`
-/

namespace A005812.P15868546208220252248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A081134 n).toNat + 1

end

end A005812.P15868546208220252248

noncomputable section

/-- A005812: Weight of balanced ternary representation of n.

Offset 0, canonical program `A005812.P15868546208220252248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812 (n : ℕ) : ℤ :=
  (A005812.P15868546208220252248.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005879.P17126699458363166872

`4*A005880(n)`
-/

namespace A005879.P17126699458363166872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005880 n

end

end A005879.P17126699458363166872

noncomputable section

/-- A005879: Theta series of D_4 lattice with respect to deep hole.

Offset 0, canonical program `A005879.P17126699458363166872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005879 (n : ℕ) : ℤ :=
  A005879.P17126699458363166872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005942.P13366138311068225912

`∑[A214212(abs(1-n))]-1`
-/

namespace A005942.P13366138311068225912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005942.P13366138311068225912

noncomputable section

/-- A005942: a(2n) = a(n) + a(n+1), a(2n+1) = 2a(n+1), if n >= 2.

Offset 0, canonical program `A005942.P13366138311068225912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005942 (n : ℕ) : ℤ :=
  A005942.P13366138311068225912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005994.P313789826886004477

`A006009(n+1)/2-A000332(n+4)`
-/

namespace A005994.P313789826886004477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006009 (n + 1) : ℚ) / 2 - (A000332 (n + 4) : ℚ)

end

end A005994.P313789826886004477

noncomputable section

/-- A005994: Alkane (or paraffin) numbers l(7,n).

Offset 0, canonical program `A005994.P313789826886004477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005994.P313789826886004477.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006044.P965519631360350741

`6*A038846(n)`
-/

namespace A006044.P965519631360350741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A038846 n

end

end A006044.P965519631360350741

noncomputable section

/-- A006044: a(n) = 4^(n-4)*(n-1)*(n-2)*(n-3).

Offset 4, canonical program `A006044.P965519631360350741`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006044 (n : ℕ) : ℤ :=
  A006044.P965519631360350741.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006422.P11164979282970830526

`∑[∑[A095661(2*n)+A000292(n+1)]]`
-/

namespace A006422.P11164979282970830526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 (2 * n) + A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006422.P11164979282970830526

noncomputable section

/-- A006422: Number of rooted toroidal maps with 2 faces and n vertices and without separating cycles or isthmuses.

Offset 1, canonical program `A006422.P11164979282970830526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A006422 (n : ℕ) : ℤ :=
  A006422.P11164979282970830526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A006422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006581.P18062033798657677284

`A090889(n+2)-A000292(n+1)`
-/

namespace A006581.P18062033798657677284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090889 (n + 2) - A000292 (n + 1)

end

end A006581.P18062033798657677284

noncomputable section

/-- A006581: a(n) = Sum_{k=1..n-1} (k AND n-k).

Offset 2, canonical program `A006581.P18062033798657677284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006581 (n : ℕ) : ℤ :=
  A006581.P18062033798657677284.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A006581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006632.P11412046250827832629

`A369082(Δ[n²])`
-/

namespace A006632.P11412046250827832629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006632.P11412046250827832629

noncomputable section

/-- A006632: a(n) = 3*binomial(4*n-1, n-1)/(4*n-1).

Offset 1, canonical program `A006632.P11412046250827832629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A006632 (n : ℕ) : ℤ :=
  A006632.P11412046250827832629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A006632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006949.P13374806398110088040

`A046699(n+2-A070939(n))`
-/

namespace A006949.P13374806398110088040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 ((n + 2 : ℤ) - A070939 n).toNat

end

end A006949.P13374806398110088040

noncomputable section

/-- A006949: A well-behaved cousin of the Hofstadter sequence: a(n) = a(n - 1 - a(n-1)) + a(n - 2 - a(n-2)) for n > 2 with a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A006949.P13374806398110088040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006949 (n : ℕ) : ℤ :=
  A006949.P13374806398110088040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007094.P10071338308652589409

`eq[0, A102681(n)]`
-/

namespace A007094.P10071338308652589409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007094.P10071338308652589409

noncomputable section

/-- A007094: Numbers in base 8.

Offset 0, canonical program `A007094.P10071338308652589409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094 (n : ℕ) : ℤ :=
  (A007094.P10071338308652589409.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007095.P8694712654280777652

`eq[0, A102683(n)]`
-/

namespace A007095.P8694712654280777652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007095.P8694712654280777652

noncomputable section

/-- A007095: Numbers in base 9.

Offset 0, canonical program `A007095.P8694712654280777652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A007095 (n : ℕ) : ℤ :=
  (A007095.P8694712654280777652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A007095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007417.P14396701096105327663

`comp[A145204(n+1)]`
-/

namespace A007417.P14396701096105327663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007417.P14396701096105327663

noncomputable section

/-- A007417: If k appears, 3k does not.

Offset 1, canonical program `A007417.P14396701096105327663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007417 (n : ℕ) : ℤ :=
  (A007417.P14396701096105327663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007423.P11782207234129447454

`A080847(n+1)-1`
-/

namespace A007423.P11782207234129447454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 1

end

end A007423.P11782207234129447454

noncomputable section

/-- A007423: a(n) = mu(n) + 1, where mu is the Moebius function.

Offset 1, canonical program `A007423.P11782207234129447454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007423 (n : ℕ) : ℤ :=
  A007423.P11782207234129447454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007674.P4121978718907005715

`eq[A087049(n+1), A105570(n)]`
-/

namespace A007674.P4121978718907005715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007674.P4121978718907005715

noncomputable section

/-- A007674: Numbers m such that m and m+1 are squarefree.

Offset 1, canonical program `A007674.P4121978718907005715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674 (n : ℕ) : ℤ :=
  (A007674.P4121978718907005715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007729.P2856163913979848745

`A174868(n+1)`
-/

namespace A007729.P2856163913979848745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 (n + 1)

end

end A007729.P2856163913979848745

noncomputable section

/-- A007729: 6th binary partition function.

Offset 0, canonical program `A007729.P2856163913979848745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007729 (n : ℕ) : ℤ :=
  A007729.P2856163913979848745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007844.P17370799922270474338

`A080579(n+1)-A087156(n+1)`
-/

namespace A007844.P17370799922270474338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080579 (n + 1) - A087156 (n + 1)

end

end A007844.P17370799922270474338

noncomputable section

/-- A007844: Least positive integer k for which 3^n divides k!.

Offset 0, canonical program `A007844.P17370799922270474338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007844 (n : ℕ) : ℤ :=
  A007844.P17370799922270474338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007928.P16483837700590660845

`lt[and(1, A187844(n)), 1]`
-/

namespace A007928.P16483837700590660845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A187844 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A007928.P16483837700590660845

noncomputable section

/-- A007928: Numbers containing an even digit.

Offset 1, canonical program `A007928.P16483837700590660845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007928 (n : ℕ) : ℤ :=
  (A007928.P16483837700590660845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007948.P9205423498154585874

`A071773(n+1)*A007947(n+1)`
-/

namespace A007948.P9205423498154585874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A007947 (n + 1)

end

end A007948.P9205423498154585874

noncomputable section

/-- A007948: Largest cubefree number dividing n.

Offset 1, canonical program `A007948.P9205423498154585874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007948 (n : ℕ) : ℤ :=
  A007948.P9205423498154585874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007954.P17322577641810457605

`abs(A187844(n))`
-/

namespace A007954.P17322577641810457605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

end

end A007954.P17322577641810457605

noncomputable section

/-- A007954: Product of decimal digits of n.

Offset 0, canonical program `A007954.P17322577641810457605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007954 (n : ℕ) : ℤ :=
  A007954.P17322577641810457605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187844, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007956.P16761400539362383960

`A066729(A005451(n+1))`
-/

namespace A007956.P16761400539362383960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (A005451 (n + 1)).toNat

end

end A007956.P16761400539362383960

noncomputable section

/-- A007956: Product of the proper divisors of n.

Offset 1, canonical program `A007956.P16761400539362383960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A007956 (n : ℕ) : ℤ :=
  A007956.P16761400539362383960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A007956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007957.P2732842976765979235

`eq[1, A061486(n)%2]`
-/

namespace A007957.P2732842976765979235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061486 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007957.P2732842976765979235

noncomputable section

/-- A007957: Numbers that contain an odd digit.

Offset 1, canonical program `A007957.P2732842976765979235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007957 (n : ℕ) : ℤ :=
  (A007957.P2732842976765979235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007964.P10104679954901547100

`eq[1, A353799(n+1)]+1`
-/

namespace A007964.P10104679954901547100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007964.P10104679954901547100

noncomputable section

/-- A007964: Numbers k such that product of proper divisors of k is <= k; i.e., product of divisors of k is <= k^2.

Offset 1, canonical program `A007964.P10104679954901547100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007964 (n : ℕ) : ℤ :=
  (A007964.P10104679954901547100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008123.P1715340732610126611

`A005893(n)-∑[A289139(n)]`
-/

namespace A008123.P1715340732610126611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008123.P1715340732610126611

noncomputable section

/-- A008123: Coordination sequence T1 for Zeolite Code KFI.

Offset 0, canonical program `A008123.P1715340732610126611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008123 (n : ℕ) : ℤ :=
  A008123.P1715340732610126611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008261.P12731544082812599068

`A005843(A069905(n))+A288699(n)+3*n²`
-/

namespace A008261.P12731544082812599068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A069905 n).toNat + (A288699 n + (3 * n ^ 2 : ℤ))

end

end A008261.P12731544082812599068

noncomputable section

/-- A008261: Coordination sequence for quartz.

Offset 0, canonical program `A008261.P12731544082812599068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A008261 (n : ℕ) : ℤ :=
  A008261.P12731544082812599068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A008261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008385.P6216644815299185341

`A022278(n²)+A010008(n)`
-/

namespace A008385.P6216644815299185341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 (n ^ 2) + A010008 n

end

end A008385.P6216644815299185341

noncomputable section

/-- A008385: Coordination sequence for A_5 lattice.

Offset 0, canonical program `A008385.P6216644815299185341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A008385 (n : ℕ) : ℤ :=
  A008385.P6216644815299185341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A008385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008457.P5259527365090779456

`abs(∑{d}[n+1, #*A162395(#)])`
-/

namespace A008457.P5259527365090779456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162395 d|

end

end A008457.P5259527365090779456

noncomputable section

/-- A008457: a(n) = Sum_{ d >= 1, d divides n} (-1)^(n-d)*d^3.

Offset 1, canonical program `A008457.P5259527365090779456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008457 (n : ℕ) : ℤ :=
  A008457.P5259527365090779456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008465.P4623865003620803828

`(A132732(n)+n)*A082138(n)`
-/

namespace A008465.P4623865003620803828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132732 n + (n : ℤ)) * A082138 n

end

end A008465.P4623865003620803828

noncomputable section

/-- A008465: 2^(2n-6) * C(n,3) - 2^(n-2) * C(n,4).

Offset 3, canonical program `A008465.P4623865003620803828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A008465 (n : ℕ) : ℤ :=
  A008465.P4623865003620803828.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A008465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008480.P11368251790691963799

`abs(A355939(n+1))`
-/

namespace A008480.P11368251790691963799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)|

end

end A008480.P11368251790691963799

noncomputable section

/-- A008480: Number of ordered prime factorizations of n.

Offset 1, canonical program `A008480.P11368251790691963799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008480 (n : ℕ) : ℤ :=
  A008480.P11368251790691963799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008723.P8299516312108899251

`A025766(n)-a(n-1)` with `a(0)=1`
-/

namespace A008723.P8299516312108899251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025766 n - a (n - 1)

end

end A008723.P8299516312108899251

noncomputable section

/-- A008723: Molien series for 3-dimensional group [2,11] = *2 2 11.

Offset 0, canonical program `A008723.P8299516312108899251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008723 (n : ℕ) : ℤ :=
  A008723.P8299516312108899251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008729.P9384597751132745354

`A218530(n+11)`
-/

namespace A008729.P9384597751132745354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218530 (n + 11)

end

end A008729.P9384597751132745354

noncomputable section

/-- A008729: Molien series for 3-dimensional group [2, n] = *22n.

Offset 0, canonical program `A008729.P9384597751132745354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008729 (n : ℕ) : ℤ :=
  A008729.P9384597751132745354.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A218530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008730.P5982894440673514970

`A221912(n+12)`
-/

namespace A008730.P5982894440673514970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 (n + 12)

end

end A008730.P5982894440673514970

noncomputable section

/-- A008730: Molien series 1/((1-x)^2*(1-x^12)) for 3-dimensional group [2,n] = *22n.

Offset 0, canonical program `A008730.P5982894440673514970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730 (n : ℕ) : ℤ :=
  A008730.P5982894440673514970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008772.P7844630072863118710

`A008768(n)-A211540(A289207(n))`
-/

namespace A008772.P7844630072863118710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008768 n - A211540 (A289207 n).toNat

end

end A008772.P7844630072863118710

noncomputable section

/-- A008772: Expansion of (1+x^11)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A008772.P7844630072863118710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008772 (n : ℕ) : ℤ :=
  A008772.P7844630072863118710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008773.P6985594664465043259

`2*A001400(n)-A028309(n)`
-/

namespace A008773.P6985594664465043259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A028309 n

end

end A008773.P6985594664465043259

noncomputable section

/-- A008773: Expansion of (1+x^12)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A008773.P6985594664465043259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008773 (n : ℕ) : ℤ :=
  A008773.P6985594664465043259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009213.P8579347631226682279

`gcd(A032741(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A009213.P8579347631226682279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A009213.P8579347631226682279

noncomputable section

/-- A009213: a(n) = gcd(d(n), phi(n)), where d is the number of divisors of n (A000005) and phi is Euler's totient function (A000010).

Offset 1, canonical program `A009213.P8579347631226682279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009213 (n : ℕ) : ℤ :=
  (A009213.P8579347631226682279.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009925.P566971274127706611

`ceil(A010001(n)/A000034(n))`
-/

namespace A009925.P566971274127706611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n : ℚ) / (A000034 n : ℚ)⌉

end

end A009925.P566971274127706611

noncomputable section

/-- A009925: Coordination sequence for CaF2(2), F position.

Offset 0, canonical program `A009925.P566971274127706611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009925 (n : ℕ) : ℤ :=
  A009925.P566971274127706611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009942.P10386336069079178020

`A010009(n)%6+11*n²`
-/

namespace A009942.P10386336069079178020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010009 n) 6 + (11 * n ^ 2 : ℤ)

end

end A009942.P10386336069079178020

noncomputable section

/-- A009942: Coordination sequence for Ni2In, Position Ni2.

Offset 0, canonical program `A009942.P10386336069079178020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009942 (n : ℕ) : ℤ :=
  A009942.P10386336069079178020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009996.P6730135653315160967

`record[A355221(n)]`
-/

namespace A009996.P6730135653315160967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009996.P6730135653315160967

noncomputable section

/-- A009996: Numbers with digits in nonincreasing order.

Offset 1, canonical program `A009996.P6730135653315160967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A009996 (n : ℕ) : ℤ :=
  A009996.P6730135653315160967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A009996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010582.P12130869140144784025

`A018003(3*n+1)%10`
-/

namespace A010582.P12130869140144784025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018003 (3 * n + 1)) 10

end

end A010582.P12130869140144784025

noncomputable section

/-- A010582: Decimal expansion of cube root of 10.

Offset 1, canonical program `A010582.P12130869140144784025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010582 (n : ℕ) : ℤ :=
  A010582.P12130869140144784025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010670.P877938217777980581

`A018003(3*n+2)%10`
-/

namespace A010670.P877938217777980581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018003 (3 * n + 2)) 10

end

end A010670.P877938217777980581

noncomputable section

/-- A010670: Decimal expansion of cube root of 100.

Offset 1, canonical program `A010670.P877938217777980581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010670 (n : ℕ) : ℤ :=
  A010670.P877938217777980581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A010670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011531.P8691385485955789627

`comp[A052383(n+1)]`
-/

namespace A011531.P8691385485955789627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A011531.P8691385485955789627

noncomputable section

/-- A011531: Numbers that contain a digit 1 in their decimal representation.

Offset 1, canonical program `A011531.P8691385485955789627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011531 (n : ℕ) : ℤ :=
  (A011531.P8691385485955789627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011535.P12013536941063717587

`lt[1, n*A316866(n)]`
-/

namespace A011535.P12013536941063717587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011535.P12013536941063717587

noncomputable section

/-- A011535: Numbers that contain a 5.

Offset 1, canonical program `A011535.P12013536941063717587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535 (n : ℕ) : ℤ :=
  (A011535.P12013536941063717587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011536.P6054837259103700799

`lt[1, n*A316867(n)]`
-/

namespace A011536.P6054837259103700799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011536.P6054837259103700799

noncomputable section

/-- A011536: Numbers that contain a 6.

Offset 1, canonical program `A011536.P6054837259103700799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011536 (n : ℕ) : ℤ :=
  (A011536.P6054837259103700799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011537.P8956265041725980081

`lt[1, n*A316868(n)]`
-/

namespace A011537.P8956265041725980081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011537.P8956265041725980081

noncomputable section

/-- A011537: Numbers that contain at least one 7.

Offset 1, canonical program `A011537.P8956265041725980081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011537 (n : ℕ) : ℤ :=
  (A011537.P8956265041725980081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011538.P9841498883370529558

`lt[1, n*A316869(n)]`
-/

namespace A011538.P9841498883370529558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011538.P9841498883370529558

noncomputable section

/-- A011538: Numbers that contain an 8.

Offset 1, canonical program `A011538.P9841498883370529558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011538 (n : ℕ) : ℤ :=
  (A011538.P9841498883370529558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011540.P10697777926791555809

`eq[0, A187844(n)]`
-/

namespace A011540.P10697777926791555809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A011540.P10697777926791555809

noncomputable section

/-- A011540: Numbers that contain a digit 0.

Offset 1, canonical program `A011540.P10697777926791555809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8144 terms. -/
def A011540 (n : ℕ) : ℤ :=
  (A011540.P10697777926791555809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8144 terms. -/
def A011540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011587.P8257473420210704875

`1-C(2, A186305(2*n))`
-/

namespace A011587.P8257473420210704875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A186305 (2 * n)).toNat : ℤ)

end

end A011587.P8257473420210704875

noncomputable section

/-- A011587: Legendre symbol (n,29).

Offset 0, canonical program `A011587.P8257473420210704875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011587 (n : ℕ) : ℤ :=
  A011587.P8257473420210704875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011755.P6342629275534871755

`∑[2*A023896(n+1)]-1`
-/

namespace A011755.P6342629275534871755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A011755.P6342629275534871755

noncomputable section

/-- A011755: a(n) = Sum_{k=1..n} k*phi(k).

Offset 1, canonical program `A011755.P6342629275534871755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011755 (n : ℕ) : ℤ :=
  A011755.P6342629275534871755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011915.P7628816679259656174

`4*A011930(n)`
-/

namespace A011915.P7628816679259656174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A011930 n

end

end A011915.P7628816679259656174

noncomputable section

/-- A011915: a(n) = floor(n*(n-1)*(n-2)*(n-3)/5).

Offset 0, canonical program `A011915.P7628816679259656174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A011915 (n : ℕ) : ℤ :=
  A011915.P7628816679259656174.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A011915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A011973.P14749578380264178381

`C(A055086(n)-A055087(n), A055087(n))`
-/

namespace A011973.P14749578380264178381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n - A055087 n).toNat (A055087 n).toNat

end

end A011973.P14749578380264178381

noncomputable section

/-- A011973: Irregular triangle read by rows: T(n,k) = binomial(n-k, k), n >= 0, 0 <= k <= floor(n/2); or, coefficients of (one version of) Fibonacci polynomials.

Offset 0, canonical program `A011973.P14749578380264178381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973 (n : ℕ) : ℤ :=
  (A011973.P14749578380264178381.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012245.P11587607485183547821

`C(A048764(n+1), n+1)`
-/

namespace A012245.P11587607485183547821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048764 (n + 1)).toNat (n + 1)

end

end A012245.P11587607485183547821

noncomputable section

/-- A012245: Characteristic function of factorial numbers; also decimal expansion of Liouville's number or Liouville's constant.

Offset 1, canonical program `A012245.P11587607485183547821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245 (n : ℕ) : ℤ :=
  (A012245.P11587607485183547821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013632.P6559946879985956067

`A000040(A230980(n)+1)-n`
-/

namespace A013632.P6559946879985956067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 1).toNat - (n : ℤ)

end

end A013632.P6559946879985956067

noncomputable section

/-- A013632: Difference between n and the next prime greater than n.

Offset 0, canonical program `A013632.P6559946879985956067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632 (n : ℕ) : ℤ :=
  A013632.P6559946879985956067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013916.P10696422965911932612

`eq[1, A102862(n+1)]+1`
-/

namespace A013916.P10696422965911932612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A013916.P10696422965911932612

noncomputable section

/-- A013916: Numbers k such that the sum of the first k primes is prime.

Offset 1, canonical program `A013916.P10696422965911932612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A013916 (n : ℕ) : ℤ :=
  (A013916.P10696422965911932612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A013916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013919.P4603668033826040602

`record[(n+1)%(A227314(n+1)+n)]`
-/

namespace A013919.P4603668033826040602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227314 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013919.P4603668033826040602

noncomputable section

/-- A013919: Numbers n such that sum of first n composites is composite.

Offset 1, canonical program `A013919.P4603668033826040602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A013919 (n : ℕ) : ℤ :=
  A013919.P4603668033826040602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9394 terms. -/
def A013919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014243.P1883141854948449702

`A000032(n+2)-A090946(n+3)`
-/

namespace A014243.P1883141854948449702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - A090946 (n + 3)

end

end A014243.P1883141854948449702

noncomputable section

/-- A014243: a(n) = ((n+1)-st Lucas number) - (n-th non-Lucas number).

Offset 1, canonical program `A014243.P1883141854948449702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014243 (n : ℕ) : ℤ :=
  A014243.P1883141854948449702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A014243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014248.P196610579621516592

`A110117(n+1)-A110118(n+1)`
-/

namespace A014248.P196610579621516592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) - A110118 (n + 1)

end

end A014248.P196610579621516592

noncomputable section

/-- A014248: a(n) = b(n) - c(n) where b(n) = [ n*(sqrt(2)+sqrt(3)) ] and c(n) is the n-th number not in sequence b( ).

Offset 1, canonical program `A014248.P196610579621516592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110117, A110118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014248 (n : ℕ) : ℤ :=
  A014248.P196610579621516592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110117, A110118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014462.P14691259310245244798

`C(A000267(n), A055087(n))`
-/

namespace A014462.P14691259310245244798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n).toNat (A055087 n).toNat

end

end A014462.P14691259310245244798

noncomputable section

/-- A014462: Triangular array formed from elements to left of middle of Pascal's triangle.

Offset 1, canonical program `A014462.P14691259310245244798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462 (n : ℕ) : ℤ :=
  (A014462.P14691259310245244798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014577.P18150949447596937918

`1-A014707(n)`
-/

namespace A014577.P18150949447596937918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 n

end

end A014577.P18150949447596937918

noncomputable section

/-- A014577: The regular paper-folding sequence (or dragon curve sequence). Alphabet {1,0}.

Offset 0, canonical program `A014577.P18150949447596937918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577 (n : ℕ) : ℤ :=
  A014577.P18150949447596937918.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014825.P16629748326214444764

`A091919(2*n)`
-/

namespace A014825.P16629748326214444764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 (2 * n)

end

end A014825.P16629748326214444764

noncomputable section

/-- A014825: a(n) = 4*a(n-1) + n with n > 1, a(1)=1.

Offset 1, canonical program `A014825.P16629748326214444764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014825 (n : ℕ) : ℤ :=
  A014825.P16629748326214444764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015910.P2442927784327151351

`A191561(n+1)%(n+1)`
-/

namespace A015910.P2442927784327151351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191561 (n + 1)) (n + 1 : ℤ)

end

end A015910.P2442927784327151351

noncomputable section

/-- A015910: a(n) = 2^n mod n.

Offset 1, canonical program `A015910.P2442927784327151351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015910 (n : ℕ) : ℤ :=
  A015910.P2442927784327151351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015915.P7648696316371349775

`A005408(eq[A054024(2*n+1), A054024(2*n+9)])`
-/

namespace A015915.P7648696316371349775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015915.P7648696316371349775

noncomputable section

/-- A015915: Numbers k such that sigma(k) + 8 = sigma(k+8).

Offset 1, canonical program `A015915.P7648696316371349775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A015915 (n : ℕ) : ℤ :=
  A015915.P7648696316371349775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A015915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016003.P2042737091927830965

`ceil(A344335(n+1)/8)`
-/

namespace A016003.P2042737091927830965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344335 (n + 1) : ℚ) / 8⌉

end

end A016003.P2042737091927830965

noncomputable section

/-- A016003: a(n) = (tau(n^8)+7)/8.

Offset 1, canonical program `A016003.P2042737091927830965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016003 (n : ℕ) : ℤ :=
  A016003.P2042737091927830965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016005.P4298684389289845767

`ceil(A344336(n+1)/9)`
-/

namespace A016005.P4298684389289845767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A344336 (n + 1) : ℚ) / 9⌉

end

end A016005.P4298684389289845767

noncomputable section

/-- A016005: a(n) = (tau(n^9)+8)/9.

Offset 1, canonical program `A016005.P4298684389289845767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016005 (n : ℕ) : ℤ :=
  A016005.P4298684389289845767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A016005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017670.P10675654441448400355

`(n+1)^3/gcd(A001158(n+1), A276634(n+1))`
-/

namespace A017670.P10675654441448400355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (Int.gcd (A001158 (n + 1)) (A276634 (n + 1)) : ℚ)

end

end A017670.P10675654441448400355

noncomputable section

/-- A017670: Denominator of sum of -3rd powers of divisors of n.

Offset 1, canonical program `A017670.P10675654441448400355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017670.P10675654441448400355.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017671.P13542887879619195653

`A001159(n+1)/gcd(A001159(n+1), A279363(n+1))`
-/

namespace A017671.P13542887879619195653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001159 (n + 1) : ℚ) / (Int.gcd (A001159 (n + 1)) (A279363 (n + 1)) : ℚ)

end

end A017671.P13542887879619195653

noncomputable section

/-- A017671: Numerator of sum of -4th powers of divisors of n.

Offset 1, canonical program `A017671.P13542887879619195653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017671.P13542887879619195653.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017822.P8501439435485607304

`A160993(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A017822.P8501439435485607304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A160993 n - a (n - 2)

end

end A017822.P8501439435485607304

noncomputable section

/-- A017822: Expansion of 1/(1-x^3-x^4-x^5-x^6-x^7-x^8-x^9).

Offset 0, canonical program `A017822.P8501439435485607304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 631 terms. -/
def A017822 (n : ℕ) : ℤ :=
  A017822.P8501439435485607304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 631 terms. -/
def A017822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017979.P8622892110208432116

`A017981(n)-n²%3`
-/

namespace A017979.P8622892110208432116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A017979.P8622892110208432116

noncomputable section

/-- A017979: Powers of cube root of 2 rounded down.

Offset 0, canonical program `A017979.P8622892110208432116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017979 (n : ℕ) : ℤ :=
  A017979.P8622892110208432116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018009.P2824070679242072313

`floor(sqrt(A018010(2*n)))`
-/

namespace A018009.P2824070679242072313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018010 (2 * n))

end

end A018009.P2824070679242072313

noncomputable section

/-- A018009: Powers of cube root of 12 rounded down.

Offset 0, canonical program `A018009.P2824070679242072313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A018009 (n : ℕ) : ℤ :=
  A018009.P2824070679242072313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A018009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018012.P9595471481189244769

`floor(sqrt(A018013(2*n)))`
-/

namespace A018012.P9595471481189244769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018013 (2 * n))

end

end A018012.P9595471481189244769

noncomputable section

/-- A018012: Powers of cube root of 13 rounded down.

Offset 0, canonical program `A018012.P9595471481189244769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A018012 (n : ℕ) : ℤ :=
  A018012.P9595471481189244769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A018012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018117.P2399526085562118991

`floor(sqrt(A018123(n)))`
-/

namespace A018117.P2399526085562118991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018123 n)

end

end A018117.P2399526085562118991

noncomputable section

/-- A018117: Powers of fifth root of 2 rounded down.

Offset 0, canonical program `A018117.P2399526085562118991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018117 (n : ℕ) : ℤ :=
  A018117.P2399526085562118991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018147.P13576852104828781867

`floor(sqrt(A018148(2*n)))`
-/

namespace A018147.P13576852104828781867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018148 (2 * n))

end

end A018147.P13576852104828781867

noncomputable section

/-- A018147: Powers of fifth root of 12 rounded down.

Offset 0, canonical program `A018147.P13576852104828781867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A018147 (n : ℕ) : ℤ :=
  A018147.P13576852104828781867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A018147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018153.P18247953681839362182

`floor(sqrt(A018154(2*n)))`
-/

namespace A018153.P18247953681839362182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018154 (2 * n))

end

end A018153.P18247953681839362182

noncomputable section

/-- A018153: Powers of fifth root of 14 rounded down.

Offset 0, canonical program `A018153.P18247953681839362182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A018153 (n : ℕ) : ℤ :=
  A018153.P18247953681839362182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A018153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018163.P15061714037692496368

`round(17^(n/5))%∑[A066481(n+3)+A000213(n)]`
-/

namespace A018163.P15061714037692496368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066481 (n + 3) + A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 5 : ℝ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018163.P15061714037692496368

noncomputable section

/-- A018163: Powers of fifth root of 17 rounded to nearest integer.

Offset 0, canonical program `A018163.P15061714037692496368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A018163 (n : ℕ) : ℤ :=
  A018163.P15061714037692496368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A018163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018174.P12326779818066994304

`floor(sqrt(A018175(2*n)))`
-/

namespace A018174.P12326779818066994304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018175 (2 * n))

end

end A018174.P12326779818066994304

noncomputable section

/-- A018174: Powers of fifth root of 21 rounded down.

Offset 0, canonical program `A018174.P12326779818066994304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A018174 (n : ℕ) : ℤ :=
  A018174.P12326779818066994304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A018174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019308.P18288552904290711969

`Δ[abs(1-A252696(n))]`
-/

namespace A019308.P18288552904290711969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A252696 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019308.P18288552904290711969

noncomputable section

/-- A019308: Number of "bifix-free" words of length n over a three-letter alphabet.

Offset 0, canonical program `A019308.P18288552904290711969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A019308 (n : ℕ) : ℤ :=
  A019308.P18288552904290711969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A019308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019444.P809029338349565677

`∑[A114986(n)]+n*A114986(n)`
-/

namespace A019444.P809029338349565677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A114986 n

end

end A019444.P809029338349565677

noncomputable section

/-- A019444: a_1, a_2, ..., is a permutation of the positive integers such that the average of each initial segment is an integer, using the greedy algorithm to define a_n.

Offset 1, canonical program `A019444.P809029338349565677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019444 (n : ℕ) : ℤ :=
  A019444.P809029338349565677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019558.P1028018214492281376

`A022144(3*n)+Δ[A052762(2*n)]`
-/

namespace A019558.P1028018214492281376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (3 * n) + (f1 (n + 1) - f1 n)

end

end A019558.P1028018214492281376

noncomputable section

/-- A019558: Coordination sequence for F_4 lattice.

Offset 0, canonical program `A019558.P1028018214492281376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A019558 (n : ℕ) : ℤ :=
  A019558.P1028018214492281376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A019558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020331.P13767564437493327510

`(n+1)*(A171960(n+1)+3+n)`
-/

namespace A020331.P13767564437493327510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A171960 (n + 1) + 3 + (n : ℤ))

end

end A020331.P13767564437493327510

noncomputable section

/-- A020331: Numbers whose base-3 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020331.P13767564437493327510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020331 (n : ℕ) : ℤ :=
  A020331.P13767564437493327510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020486.P13724749074267134154

`eq[1, A158298(n+1)]+1`
-/

namespace A020486.P13724749074267134154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A020486.P13724749074267134154

noncomputable section

/-- A020486: Average of squares of divisors is an integer: numbers k such that sigma_0(k) divides sigma_2(k).

Offset 1, canonical program `A020486.P13724749074267134154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A020486 (n : ℕ) : ℤ :=
  (A020486.P13724749074267134154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5955 terms. -/
def A020486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020521.P17693955101248883378

`A060887(A000079(n))`
-/

namespace A020521.P17693955101248883378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 (A000079 n).toNat

end

end A020521.P17693955101248883378

noncomputable section

/-- A020521: 13th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020521.P17693955101248883378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020521 (n : ℕ) : ℤ :=
  A020521.P17693955101248883378.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060887, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020847.P14878739603806226551

`A096483(A005408(n))%10`
-/

namespace A020847.P14878739603806226551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096483 (A005408 n).toNat) 10

end

end A020847.P14878739603806226551

noncomputable section

/-- A020847: Decimal expansion of 1/sqrt(90) = sqrt(10)/30.

Offset 0, canonical program `A020847.P14878739603806226551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020847 (n : ℕ) : ℤ :=
  A020847.P14878739603806226551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020888.P7815334307482986800

`∑[char[∑[A068068(n+1)]]]+1`
-/

namespace A020888.P7815334307482986800
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A020888.P7815334307482986800

noncomputable section

/-- A020888: Ordered set of (a + b - c)/2 as (a,b,c) runs through all primitive Pythagorean triples with a

Offset 1, canonical program `A020888.P7815334307482986800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888 (n : ℕ) : ℤ :=
  (A020888.P7815334307482986800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021895.P17930057987504014831

`A113675(A004526(n+1)+n)`
-/

namespace A021895.P17930057987504014831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113675 (A004526 (n + 1) + (n : ℤ)).toNat

end

end A021895.P17930057987504014831

noncomputable section

/-- A021895: Decimal expansion of 1/891.

Offset 0, canonical program `A021895.P17930057987504014831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A021895 (n : ℕ) : ℤ :=
  A021895.P17930057987504014831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A021895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022162.P858980357317269821

`A277644(A277644(n+1))`
-/

namespace A022162.P858980357317269821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (A277644 (n + 1)).toNat

end

end A022162.P858980357317269821

noncomputable section

/-- A022162: First column of spectral array W(sqrt(3/2)).

Offset 1, canonical program `A022162.P858980357317269821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A022162 (n : ℕ) : ℤ :=
  A022162.P858980357317269821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8165 terms. -/
def A022162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022330.P2680287908115974667

`A071521(A000244(n))`
-/

namespace A022330.P2680287908115974667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A000244 n).toNat

end

end A022330.P2680287908115974667

noncomputable section

/-- A022330: Index of 3^n within sequence of numbers of form 2^i*3^j (A003586).

Offset 0, canonical program `A022330.P2680287908115974667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022330 (n : ℕ) : ℤ :=
  A022330.P2680287908115974667.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022331.P8664898724011485179

`A071521(A000079(n))`
-/

namespace A022331.P8664898724011485179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A000079 n).toNat

end

end A022331.P8664898724011485179

noncomputable section

/-- A022331: Index of 2^n within sequence of numbers of form 2^i*3^j (A003586).

Offset 0, canonical program `A022331.P8664898724011485179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022331 (n : ℕ) : ℤ :=
  A022331.P8664898724011485179.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022780.P1861960125711501944

`A194964(n)+a(n-1)` with `a(0)=1`
-/

namespace A022780.P1861960125711501944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194964 n + a (n - 1)

end

end A022780.P1861960125711501944

noncomputable section

/-- A022780: Place where n-th 1 occurs in A023118.

Offset 1, canonical program `A022780.P1861960125711501944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A022780 (n : ℕ) : ℤ :=
  A022780.P1861960125711501944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. -/
def A022780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022784.P14648871505611230013

`a(n-1)+A277644(n)+1` with `a(0)=1`
-/

namespace A022784.P14648871505611230013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A277644 n + 1)

end

end A022784.P14648871505611230013

noncomputable section

/-- A022784: Place where n-th 1 occurs in A023122.

Offset 1, canonical program `A022784.P14648871505611230013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A022784 (n : ℕ) : ℤ :=
  A022784.P14648871505611230013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. -/
def A022784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022801.P16114518474310369460

`A000204(n+1)+A090946(n+2)`
-/

namespace A022801.P16114518474310369460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + A090946 (n + 2)

end

end A022801.P16114518474310369460

noncomputable section

/-- A022801: n-th Lucas number (A000204(n)) + n-th non-Lucas number (A090946(n+1)).

Offset 1, canonical program `A022801.P16114518474310369460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022801 (n : ℕ) : ℤ :=
  A022801.P16114518474310369460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022905.P16932586740772776458

`(3*A033485(2*n+1)-1)/2`
-/

namespace A022905.P16932586740772776458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A033485 (2 * n + 1) - 1 : ℚ) / 2

end

end A022905.P16932586740772776458

noncomputable section

/-- A022905: a(n) = M(n) + m(n) for n >= 2, where M(n) = max{ a(i) + a(n-i): i = 1..n-1 }, m(n) = min{ a(i) + a(n-i): i = 1..n-1 }.

Offset 1, canonical program `A022905.P16932586740772776458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022905 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022905.P16932586740772776458.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023219.P7384479823826026076

`p?[A024894(n+1)-1]`
-/

namespace A023219.P7384479823826026076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023219.P7384479823826026076

noncomputable section

/-- A023219: Primes p such that 5p+6 is a prime.

Offset 1, canonical program `A023219.P7384479823826026076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A023219 (n : ℕ) : ℤ :=
  A023219.P7384479823826026076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A023219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023224.P3715858878049786222

`p?[floor(A141893(n+1)/7)]`
-/

namespace A023224.P3715858878049786222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141893 (n + 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023224.P3715858878049786222

noncomputable section

/-- A023224: Primes p such that 7*p + 4 is also prime.

Offset 1, canonical program `A023224.P3715858878049786222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A023224 (n : ℕ) : ℤ :=
  A023224.P3715858878049786222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A023224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023230.P3973530591756639462

`p?[floor(A141196(n+1)/8)]`
-/

namespace A023230.P3973530591756639462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141196 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P3973530591756639462

noncomputable section

/-- A023230: Numbers k such that k and 8*k + 5 are both prime.

Offset 1, canonical program `A023230.P3973530591756639462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A023230 (n : ℕ) : ℤ :=
  A023230.P3973530591756639462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A023230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023232.P8454457185386987942

`p?[2*A155942(n+1)-1]`
-/

namespace A023232.P8454457185386987942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155942 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P8454457185386987942

noncomputable section

/-- A023232: Primes p such that 8*p + 9 is also prime.

Offset 1, canonical program `A023232.P8454457185386987942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A023232 (n : ℕ) : ℤ :=
  A023232.P8454457185386987942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A023232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023233.P18087890990746675777

`p?[A024907(n+1)-1]`
-/

namespace A023233.P18087890990746675777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024907 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P18087890990746675777

noncomputable section

/-- A023233: Primes p such that 9*p + 2 is also prime.

Offset 1, canonical program `A023233.P18087890990746675777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1723 terms. -/
def A023233 (n : ℕ) : ℤ :=
  A023233.P18087890990746675777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1723 terms. -/
def A023233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023234.P391613333200129420

`p?[A024908(n+1)-1]`
-/

namespace A023234.P391613333200129420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024908 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P391613333200129420

noncomputable section

/-- A023234: Primes p such that 9*p + 4 is also prime.

Offset 1, canonical program `A023234.P391613333200129420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A023234 (n : ℕ) : ℤ :=
  A023234.P391613333200129420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A023234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023236.P11167435057986219502

`p?[A024906(n+1)-1]`
-/

namespace A023236.P11167435057986219502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024906 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P11167435057986219502

noncomputable section

/-- A023236: Primes p such that 9*p + 10 is also prime.

Offset 1, canonical program `A023236.P11167435057986219502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A023236 (n : ℕ) : ℤ :=
  A023236.P11167435057986219502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A023236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023490.P988857930729845770

`A000045(n+2)+A090946(n+2)`
-/

namespace A023490.P988857930729845770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A090946 (n + 2)

end

end A023490.P988857930729845770

noncomputable section

/-- A023490: n-th non-Lucas number plus Fibonacci(n + 1).

Offset 0, canonical program `A023490.P988857930729845770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023490 (n : ℕ) : ℤ :=
  A023490.P988857930729845770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023491.P5893731132072105009

`A000045(n+3)+A090946(n+2)`
-/

namespace A023491.P5893731132072105009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + A090946 (n + 2)

end

end A023491.P5893731132072105009

noncomputable section

/-- A023491: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 1) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023491.P5893731132072105009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023491 (n : ℕ) : ℤ :=
  A023491.P5893731132072105009.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023493.P16959634899048244030

`A000032(n+2)+A090946(n+2)`
-/

namespace A023493.P16959634899048244030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) + A090946 (n + 2)

end

end A023493.P16959634899048244030

noncomputable section

/-- A023493: a(n) = b(n) + d(n), where b(n) = (n-th Lucas number > 1) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023493.P16959634899048244030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023493 (n : ℕ) : ℤ :=
  A023493.P16959634899048244030.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023494.P3154077987958110990

`A000045(n+4)+A090946(n+2)`
-/

namespace A023494.P3154077987958110990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + A090946 (n + 2)

end

end A023494.P3154077987958110990

noncomputable section

/-- A023494: a(n) = b(n) + d(n), where b(n) = (n-th Fibonacci number > 2) and d(n) = (n-th non-Lucas number).

Offset 0, canonical program `A023494.P3154077987958110990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023494 (n : ℕ) : ℤ :=
  A023494.P3154077987958110990.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023630.P2488653469154600080

`Δ[lt[0, A217586(n+1)]]`
-/

namespace A023630.P2488653469154600080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217586 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A023630.P2488653469154600080

noncomputable section

/-- A023630: a(n) = s(2n) - s(2n-1), where s( ) is sequence A023629.

Offset 1, canonical program `A023630.P2488653469154600080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023630 (n : ℕ) : ℤ :=
  A023630.P2488653469154600080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023631.P10237634559327045715

`eq[2, A194688(A004761(n+2))]`
-/

namespace A023631.P10237634559327045715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (A004761 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023631.P10237634559327045715

noncomputable section

/-- A023631: a(n) = c([ (n+1)/2 ]) + n, with a(1) = 1 and a(2) = 4, c = complement to a.

Offset 1, canonical program `A023631.P10237634559327045715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2950 terms. -/
def A023631 (n : ℕ) : ℤ :=
  (A023631.P10237634559327045715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2950 terms. -/
def A023631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023962.P4218714369795661473

`A023965((n+1)²)`
-/

namespace A023962.P4218714369795661473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 ((n + 1) ^ 2)

end

end A023962.P4218714369795661473

noncomputable section

/-- A023962: First digit after decimal point of cube root of n.

Offset 1, canonical program `A023962.P4218714369795661473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023962 (n : ℕ) : ℤ :=
  A023962.P4218714369795661473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A023962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024458.P8977965682072535931

`A128620(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A024458.P8977965682072535931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A128620 n - a (n - 2)

end

end A024458.P8977965682072535931

noncomputable section

/-- A024458: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (Fibonacci numbers).

Offset 1, canonical program `A024458.P8977965682072535931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A024458 (n : ℕ) : ℤ :=
  A024458.P8977965682072535931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A024458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024463.P13038753844099683083

`Δ[n*∑[A131524(n+2)]]`
-/

namespace A024463.P13038753844099683083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024463.P13038753844099683083

noncomputable section

/-- A024463: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Fibonacci numbers), t = (odd natural numbers).

Offset 1, canonical program `A024463.P13038753844099683083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A024463 (n : ℕ) : ℤ :=
  A024463.P13038753844099683083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 920 terms. -/
def A024463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024811.P5010889664840120185

`∑[char[A248521(n+1)]]`
-/

namespace A024811.P5010889664840120185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248521 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024811.P5010889664840120185

noncomputable section

/-- A024811: a(n) = floor(tan(m*Pi/2)), where m = 1 - 1/n.

Offset 1, canonical program `A024811.P5010889664840120185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024811 (n : ℕ) : ℤ :=
  (A024811.P5010889664840120185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024905.P12191910494950429494

`floor(A140444(n+1)/7)`
-/

namespace A024905.P12191910494950429494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140444 (n + 1) : ℚ) / 7⌋

end

end A024905.P12191910494950429494

noncomputable section

/-- A024905: Numbers k such that 7*k + 1 is prime.

Offset 1, canonical program `A024905.P12191910494950429494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024905 (n : ℕ) : ℤ :=
  A024905.P12191910494950429494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024914.P2903943263207869472

`1+A102342(n+1)`
-/

namespace A024914.P2903943263207869472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A102342 (n + 1)

end

end A024914.P2903943263207869472

noncomputable section

/-- A024914: Numbers k such that 10*k - 3 is prime.

Offset 1, canonical program `A024914.P2903943263207869472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024914 (n : ℕ) : ℤ :=
  A024914.P2903943263207869472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024920.P7219309093557167845

`A339370(n+1)+∑[n]`
-/

namespace A024920.P7219309093557167845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339370 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024920.P7219309093557167845

noncomputable section

/-- A024920: a(n) = Sum_{k=1..n} (n-k) * floor(n/k).

Offset 1, canonical program `A024920.P7219309093557167845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024920 (n : ℕ) : ℤ :=
  A024920.P7219309093557167845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025548.P434905137110478948

`∑[A069513(2*n+1)]`
-/

namespace A025548.P434905137110478948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025548.P434905137110478948

noncomputable section

/-- A025548: a(n) = sum of the exponents in the prime factorization of the least common multiple of {1,3,5,...,2n-1}.

Offset 1, canonical program `A025548.P434905137110478948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025548 (n : ℕ) : ℤ :=
  A025548.P434905137110478948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025741.P2343215750119213576

`a(n-1)+A054965(n)+1` with `a(0)=1`
-/

namespace A025741.P2343215750119213576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A054965 n + 1)

end

end A025741.P2343215750119213576

noncomputable section

/-- A025741: Index of 10^n within the sequence of the numbers of the form 3^i*10^j.

Offset 0, canonical program `A025741.P2343215750119213576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025741 (n : ℕ) : ℤ :=
  A025741.P2343215750119213576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025843.P403320393322734937

`A325488(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025843.P403320393322734937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A325488 n + a (n - 3)

end

end A025843.P403320393322734937

noncomputable section

/-- A025843: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A025843.P403320393322734937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025843 (n : ℕ) : ℤ :=
  A025843.P403320393322734937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026343.P5692666688220806051

`eq[1, A087088(n+1)%2]+1`
-/

namespace A026343.P5692666688220806051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087088 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026343.P5692666688220806051

noncomputable section

/-- A026343: Least k such that s(k) = n, where s = A026342.

Offset 1, canonical program `A026343.P5692666688220806051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026343 (n : ℕ) : ℤ :=
  (A026343.P5692666688220806051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026424.P11341999496382344124

`record[-A061019(n+2)]`
-/

namespace A026424.P11341999496382344124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061019 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026424.P11341999496382344124

noncomputable section

/-- A026424: Number of prime divisors (counted with multiplicity) is odd; Liouville function lambda(n) (A008836) is negative.

Offset 1, canonical program `A026424.P11341999496382344124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026424 (n : ℕ) : ℤ :=
  A026424.P11341999496382344124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026465.P4870457713372314206

`A191254(A171947(n+1)+1)`
-/

namespace A026465.P4870457713372314206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (A171947 (n + 1) + 1).toNat

end

end A026465.P4870457713372314206

noncomputable section

/-- A026465: Length of n-th run of identical symbols in the Thue-Morse sequence A010060 (or A001285).

Offset 1, canonical program `A026465.P4870457713372314206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026465 (n : ℕ) : ℤ :=
  A026465.P4870457713372314206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026601.P8982276900419900553

`A079498(n+1)+1`
-/

namespace A026601.P8982276900419900553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 1) + 1

end

end A026601.P8982276900419900553

noncomputable section

/-- A026601: Numbers k such that A026600(k) = 1.

Offset 1, canonical program `A026601.P8982276900419900553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026601 (n : ℕ) : ℤ :=
  A026601.P8982276900419900553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026605.P5367799998675853451

`p?[A090193(n)+1]-1`
-/

namespace A026605.P5367799998675853451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026605.P5367799998675853451

noncomputable section

/-- A026605: [3->null]-transform of three-symbol Thue-Morse A026600.

Offset 1, canonical program `A026605.P5367799998675853451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A026605 (n : ℕ) : ℤ :=
  A026605.P5367799998675853451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A026605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026606.P15867916892767179858

`A090239(lt[A090239(n), 2])+1`
-/

namespace A026606.P15867916892767179858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A026606.P15867916892767179858

noncomputable section

/-- A026606: [1->null]-transform of three-symbol Thue-Morse A026600, with 1 subtracted.

Offset 1, canonical program `A026606.P15867916892767179858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026606 (n : ℕ) : ℤ :=
  A026606.P15867916892767179858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026607.P11635759985156371717

`gcd(2, p?[A090193(n)+2])`
-/

namespace A026607.P11635759985156371717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026607.P11635759985156371717

noncomputable section

/-- A026607: Delete all 2's from A026600 and then replace each 3 with 2.

Offset 1, canonical program `A026607.P11635759985156371717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A026607 (n : ℕ) : ℤ :=
  (A026607.P11635759985156371717.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A026607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027002.P3205094287480197912

`record[∑[A053298(n)]^((n+1)%2)]`
-/

namespace A027002.P3205094287480197912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027002.P3205094287480197912

noncomputable section

/-- A027002: a(n) = T(2*n, n+3), T given by A026998.

Offset 3, canonical program `A027002.P3205094287480197912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027002 (n : ℕ) : ℤ :=
  A027002.P3205094287480197912.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027006.P14400941336620739843

`A053298(2*n)`
-/

namespace A027006.P14400941336620739843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (2 * n)

end

end A027006.P14400941336620739843

noncomputable section

/-- A027006: a(n) = T(2*n+1, n+3), T given by A026998.

Offset 2, canonical program `A027006.P14400941336620739843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027006 (n : ℕ) : ℤ :=
  A027006.P14400941336620739843.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027012.P9178525586700888906

`A027963(record[gcd(n, ∑[n])+3])`
-/

namespace A027012.P9178525586700888906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027012.P9178525586700888906

noncomputable section

/-- A027012: a(n) = T(2*n, n+1), T given by A027011.

Offset 1, canonical program `A027012.P9178525586700888906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027012 (n : ℕ) : ℤ :=
  A027012.P9178525586700888906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027013.P15876608691452300831

`A053298(record[lcm(2, n)/2])`
-/

namespace A027013.P15876608691452300831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A027013.P15876608691452300831

noncomputable section

/-- A027013: a(n) = T(2*n, n+2), T given by A027011.

Offset 2, canonical program `A027013.P15876608691452300831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027013 (n : ℕ) : ℤ :=
  A027013.P15876608691452300831.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027017.P7096318943231998565

`A027964(n-(1-n)%(n+1)+4)`
-/

namespace A027017.P7096318943231998565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 4).toNat

end

end A027017.P7096318943231998565

noncomputable section

/-- A027017: a(n) = T(2*n+1, n+2), T given by A027011.

Offset 1, canonical program `A027017.P7096318943231998565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027017 (n : ℕ) : ℤ :=
  A027017.P7096318943231998565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027018.P13029960018609639703

`record[∑[A053298(n)]^(n%2)]`
-/

namespace A027018.P13029960018609639703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027018.P13029960018609639703

noncomputable section

/-- A027018: a(n) = T(2*n+1, n+3), T given by A027011.

Offset 2, canonical program `A027018.P13029960018609639703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027018 (n : ℕ) : ℤ :=
  A027018.P13029960018609639703.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002324.P17421748272452344756

`A001817(n+1)-A001822(n+1)`
-/

namespace A002324.P17421748272452344756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - A001822 (n + 1)

end

end A002324.P17421748272452344756

noncomputable section

/-- A002324: Number of divisors of n == 1 (mod 3) minus number of divisors of n == 2 (mod 3).

Offset 1, canonical program `A002324.P17421748272452344756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324 (n : ℕ) : ℤ :=
  A002324.P17421748272452344756.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003158.P15521823830310252341

`A003157(n+1)-1`
-/

namespace A003158.P15521823830310252341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1) - 1

end

end A003158.P15521823830310252341

noncomputable section

/-- A003158: A self-generating sequence (see Comments in A003156 for the definition).

Offset 1, canonical program `A003158.P15521823830310252341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158 (n : ℕ) : ℤ :=
  A003158.P15521823830310252341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005098.P10761952897232169496

`(A002144(n+1)-1)/4`
-/

namespace A005098.P10761952897232169496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) - 1 : ℚ) / 4

end

end A005098.P10761952897232169496

noncomputable section

/-- A005098: Numbers k such that 4k + 1 is prime.

Offset 1, canonical program `A005098.P10761952897232169496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A005098.P10761952897232169496.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A005098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006049.P14504587564879316839

`eq[A001221(n+1), A001221(n+2)]+1`
-/

namespace A006049.P14504587564879316839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006049.P14504587564879316839

noncomputable section

/-- A006049: Numbers k such that k and k+1 have the same number of distinct prime divisors.

Offset 1, canonical program `A006049.P14504587564879316839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049 (n : ℕ) : ℤ :=
  (A006049.P14504587564879316839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006880.P1375622950831351857

`A000720(10^n)`
-/

namespace A006880.P1375622950831351857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 ^ n)

end

end A006880.P1375622950831351857

noncomputable section

/-- A006880: Number of primes < 10^n.

Offset 0, canonical program `A006880.P1375622950831351857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006880 (n : ℕ) : ℤ :=
  A006880.P1375622950831351857.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007538.P13853980996640108170

`A000040(2-Δ[A195120(n)])`
-/

namespace A007538.P13853980996640108170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A007538.P13853980996640108170

noncomputable section

/-- A007538: A self-generating sequence: there are a(n) 3's between successive 2's.

Offset 1, canonical program `A007538.P13853980996640108170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007538 (n : ℕ) : ℤ :=
  A007538.P13853980996640108170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009278.P12752096163100712550

`A064840(n+1)/A009205(n+1)`
-/

namespace A009278.P12752096163100712550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A009278.P12752096163100712550

noncomputable section

/-- A009278: a(n) = lcm(d(n), sigma(n)).

Offset 1, canonical program `A009278.P12752096163100712550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, A064840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009278.P12752096163100712550.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, A064840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020935.P2081718477121560828

`A000720(A001750(n+1))`
-/

namespace A020935.P2081718477121560828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001750 (n + 1)).toNat

end

end A020935.P2081718477121560828

noncomputable section

/-- A020935: Greatest k such that (k-th prime) < (5 times n-th prime).

Offset 1, canonical program `A020935.P2081718477121560828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A020935 (n : ℕ) : ℤ :=
  A020935.P2081718477121560828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A020935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022757.P13043222127189136114

`A002144(n+1)+A002145(n+1)`
-/

namespace A022757.P13043222127189136114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + A002145 (n + 1)

end

end A022757.P13043222127189136114

noncomputable section

/-- A022757: n-th 4k+1 prime plus n-th 4k+3 prime.

Offset 1, canonical program `A022757.P13043222127189136114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022757 (n : ℕ) : ℤ :=
  A022757.P13043222127189136114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A022757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023534.P15990485128086430200

`eq[val(n+1, 2), A001221(n+1)]+1`
-/

namespace A023534.P15990485128086430200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023534.P15990485128086430200

noncomputable section

/-- A023534: Numbers k such that the largest power of 2 dividing k equals 2^omega(k).

Offset 1, canonical program `A023534.P15990485128086430200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534 (n : ℕ) : ℤ :=
  (A023534.P15990485128086430200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3399 terms. -/
def A023534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023890.P4514850295399263827

`A000203(n+1)-A008472(n+1)`
-/

namespace A023890.P4514850295399263827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008472 (n + 1)

end

end A023890.P4514850295399263827

noncomputable section

/-- A023890: Sum of the nonprime divisors of n.

Offset 1, canonical program `A023890.P4514850295399263827`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023890 (n : ℕ) : ℤ :=
  A023890.P4514850295399263827.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024362.P2480877528785072267

`A001221(∏{p}[n+1, and(2, #+2)]!)`
-/

namespace A024362.P2480877528785072267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (p + 2)))

end

end A024362.P2480877528785072267

noncomputable section

/-- A024362: Number of primitive Pythagorean triangles with hypotenuse n.

Offset 1, canonical program `A024362.P2480877528785072267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024362 (n : ℕ) : ℤ :=
  A024362.P2480877528785072267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024893.P13828910964466952161

`floor(A003627(n+1)/3)`
-/

namespace A024893.P13828910964466952161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003627 (n + 1) : ℚ) / 3⌋

end

end A024893.P13828910964466952161

noncomputable section

/-- A024893: Numbers k such that 3*k+2 is prime.

Offset 1, canonical program `A024893.P13828910964466952161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024893 (n : ℕ) : ℤ :=
  A024893.P13828910964466952161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024934.P986363156688133824

`a(n-1)+A000720(n-1)-A105221(n)` with `a(0)=0, a(1)=0`
-/

namespace A024934.P986363156688133824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A000720 (n - 1) - A105221 n

end

end A024934.P986363156688133824

noncomputable section

/-- A024934: Sum of remainders n mod p, over all primes p < n.

Offset 0, canonical program `A024934.P986363156688133824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024934 (n : ℕ) : ℤ :=
  A024934.P986363156688133824.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A105221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025528.P16007803137134117632

`∑[A069513(n+1)]`
-/

namespace A025528.P16007803137134117632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P16007803137134117632

noncomputable section

/-- A025528: Number of prime powers <= n with exponents > 0 (A246655).

Offset 1, canonical program `A025528.P16007803137134117632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025528 (n : ℕ) : ℤ :=
  A025528.P16007803137134117632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007088.P12432121332583687413

`A097256(n)/9`
-/

namespace A007088.P12432121332583687413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

end

end A007088.P12432121332583687413

noncomputable section

/-- A007088: The binary numbers (or binary words, or binary vectors, or binary expansion of n): numbers written in base 2.

Offset 0, canonical program `A007088.P12432121332583687413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007088.P12432121332583687413.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008966.P884693903657889754

`A013928(n+2)-A013928(n+1)`
-/

namespace A008966.P884693903657889754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A013928 (n + 1)

end

end A008966.P884693903657889754

noncomputable section

/-- A008966: a(n) = 1 if n is squarefree, otherwise 0.

Offset 1, canonical program `A008966.P884693903657889754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008966 (n : ℕ) : ℤ :=
  A008966.P884693903657889754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010069.P133090985606594522

`A053828(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010069.P133090985606594522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053828 (a (n - 1)).toNat + a (n - 1)

end

end A010069.P133090985606594522

noncomputable section

/-- A010069: a(n+1) = a(n) + sum of digits in base 7 representation of a(n).

Offset 0, canonical program `A010069.P133090985606594522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A010069 (n : ℕ) : ℤ :=
  A010069.P133090985606594522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A010069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010072.P10490192665339776689

`A053830(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010072.P10490192665339776689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053830 (a (n - 1)).toNat + a (n - 1)

end

end A010072.P10490192665339776689

noncomputable section

/-- A010072: a(n+1) = a(n) + sum of digits in base 9 representation of a(n).

Offset 0, canonical program `A010072.P10490192665339776689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3189 terms. -/
def A010072 (n : ℕ) : ℤ :=
  A010072.P10490192665339776689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3189 terms. -/
def A010072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023751.P17489473490239162121

`eq[8, A053830(8*(n+1))]`
-/

namespace A023751.P17489473490239162121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (8 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023751.P17489473490239162121

noncomputable section

/-- A023751: Plaindromes: numbers whose digits in base 9 are in nondecreasing order.

Offset 1, canonical program `A023751.P17489473490239162121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A023751 (n : ℕ) : ℤ :=
  (A023751.P17489473490239162121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A023751.provenance : SequenceMachineLib.Provenance := .conjectured

