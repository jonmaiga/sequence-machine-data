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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C001
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
# A229202: Number of semimodular lattices on n nodes.

The programs for A229202, there is no canonical definition to state claims against.
-/

/-! ## A229202.P5730893566761109959

`A261104(∑[A124313(n+1)]²)`
-/

namespace A229202.P5730893566761109959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A229202.P5730893566761109959

/-! ## A229202.P8034387888177901271

`ceil(A319782(n+1)/Δ[n²])`
-/

namespace A229202.P8034387888177901271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319782 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A229202.P8034387888177901271

/-! ## A229202.P10399374383764173613

`A082499(comp[2*n+3]-∑{digits}[∑{digits}[n, 10^#]+1, 1-#])`
-/

namespace A229202.P10399374383764173613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 10 ^ x).sum + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082499 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum).toNat

end

end A229202.P10399374383764173613

/-! ## A229202.P10578642444963128531

`A082499(A065459(n))`
-/

namespace A229202.P10578642444963128531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082499 (A065459 n).toNat

end

end A229202.P10578642444963128531

/-! ## A229202.P7835195128409821535

`A082499(A250264(n))`
-/

namespace A229202.P7835195128409821535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082499 (A250264 n).toNat

end

end A229202.P7835195128409821535

/-!
# A229203: Primes of the form k^3 - prime(k).

The programs for A229203, there is no canonical definition to state claims against.
-/

/-! ## A229203.P6933368733078414648

`p?[n^3-A008578(n+1)]`
-/

namespace A229203.P6933368733078414648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229203.P6933368733078414648

/-! ## A229203.P8092051447047796522

`p?[n^3-record[A006530(n+1)]]`
-/

namespace A229203.P8092051447047796522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229203.P8092051447047796522

/-! ## A229203.P10790176947862125362

`p?[n^3-comp[A018252(n+1)]]`
-/

namespace A229203.P10790176947862125362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229203.P10790176947862125362

/-! ## A229203.P14913656854740494037

`p?[(n+1)^3-A000040(n+1)]`
-/

namespace A229203.P14913656854740494037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229203.P14913656854740494037

/-! ## A229203.P15332681910468990930

`p?[(n+1)^3-p?[n*A032741(n)]]`
-/

namespace A229203.P15332681910468990930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229203.P15332681910468990930

/-!
# A229204: For k>0, a(3k+1) = k*(k-3), a(3k+2) = k*(k-1), a(3k+3) = k*(k-1)-1.

The programs for A229204, the canonical program `A229204.P6477141923411233807` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229204 has offset 1).

The definition of A229204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229204.P6477141923411233807

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=-2, a(4)=0, a(5)=-1, a(6)=-2, a(7)=2, a(8)=1, a(9)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229204

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P6477141923411233807.Spec : Prop :=
  ∀ n, P6477141923411233807.a n = A229204 (n + 1)

theorem P6477141923411233807.correct : P6477141923411233807.Spec := by
  intro n
  simp only [A229204, Nat.add_sub_cancel]

end A229204

/-! ## A229204.P6429627741837133422

`ceil(n/3)²-(n-char[2])`
-/

namespace A229204.P6429627741837133422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2 - ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A229204.P6429627741837133422

namespace A229204

/-- `ceil(n/3)²-(n-char[2])` -/
def P6429627741837133422.Spec : Prop :=
  ∀ n, P6429627741837133422.a n = A229204 (n + 1)

end A229204

/-! ## A229204.P15652934547638851337

`(ceil(n/3)²-n)%(A112467(n+1)+∑[A086543(n)])`
-/

namespace A229204.P15652934547638851337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℚ) / 3⌉ ^ 2 - (n : ℤ)) (A112467 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229204.P15652934547638851337

namespace A229204

/-- `(ceil(n/3)²-n)%(A112467(n+1)+∑[A086543(n)])` -/
def P15652934547638851337.Spec : Prop :=
  ∀ n, P15652934547638851337.a n = A229204 (n + 1)

end A229204

/-! ## A229204.P7732387269273544649

`(A008615(2*n)²-n)%A065033(n)²`
-/

namespace A229204.P7732387269273544649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (2 * n) ^ 2 - (n : ℤ)) (A065033 n ^ 2)

end

end A229204.P7732387269273544649

namespace A229204

/-- `(A008615(2*n)²-n)%A065033(n)²` -/
def P7732387269273544649.Spec : Prop :=
  ∀ n, P7732387269273544649.a n = A229204 (n + 1)

end A229204

/-! ## A229204.P13982333757353250594

`(A008615(2*n)²-n)%A326600(n)`
-/

namespace A229204.P13982333757353250594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (2 * n) ^ 2 - (n : ℤ)) (A326600 n)

end

end A229204.P13982333757353250594

namespace A229204

/-- `(A008615(2*n)²-n)%A326600(n)` -/
def P13982333757353250594.Spec : Prop :=
  ∀ n, P13982333757353250594.a n = A229204 (n + 1)

end A229204

/-! ## A229204.P1418537435341344456

`(A112689(2*n)²-n)%A152046(n)`
-/

namespace A229204.P1418537435341344456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112689 (2 * n) ^ 2 - (n : ℤ)) (A152046 n)

end

end A229204.P1418537435341344456

namespace A229204

/-- `(A112689(2*n)²-n)%A152046(n)` -/
def P1418537435341344456.Spec : Prop :=
  ∀ n, P1418537435341344456.a n = A229204 (n + 1)

end A229204

/-! ## A229204.P14155606106994155702

`(ceil(n/3)²-n)%A181641(n)`
-/

namespace A229204.P14155606106994155702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℚ) / 3⌉ ^ 2 - (n : ℤ)) (A181641 n)

end

end A229204.P14155606106994155702

namespace A229204

/-- `(ceil(n/3)²-n)%A181641(n)` -/
def P14155606106994155702.Spec : Prop :=
  ∀ n, P14155606106994155702.a n = A229204 (n + 1)

end A229204

/-!
# A229205: Lucky numbers generated from squarefree numbers.

The programs for A229205, there is no canonical definition to state claims against.
-/

/-! ## A229205.P11560089126899123096

`A005117(or(1, A135382(3*n+1)))`
-/

namespace A229205.P11560089126899123096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.lor 1 (A135382 (3 * n + 1))).toNat

end

end A229205.P11560089126899123096

/-! ## A229205.P13095001147151720578

`record[record[A147301(n+2)]/A057079(n)]`
-/

namespace A229205.P13095001147151720578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A057079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229205.P13095001147151720578

/-! ## A229205.P963037500953367941

`A005117(and(1, A291595(n+1))²+3*n)`
-/

namespace A229205.P963037500953367941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.land 1 (A291595 (n + 1)) ^ 2 + (3 * n : ℤ)).toNat

end

end A229205.P963037500953367941

/-! ## A229205.P16694290502561920126

`A005117(or(A008585(n), A287383(n)))`
-/

namespace A229205.P16694290502561920126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.lor (A008585 n) (A287383 n)).toNat

end

end A229205.P16694290502561920126

/-! ## A229205.P434189686295170765

`A005117(A047241(n+1)%A229542(n+1))`
-/

namespace A229205.P434189686295170765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.tmod (A047241 (n + 1)) (A229542 (n + 1))).toNat

end

end A229205.P434189686295170765

/-!
# A229206: n-th prime that begins with prime(n).

The programs for A229206, there is no canonical definition to state claims against.
-/

/-! ## A229206.P16888791189280914961

`A114009(∑[n+1])`
-/

namespace A229206.P16888791189280914961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229206.P16888791189280914961

/-! ## A229206.P10378332538524744193

`A077344(C(A000040(n+1), 2)+n+1)`
-/

namespace A229206.P10378332538524744193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (Nat.choose (A000040 (n + 1)).toNat 2 + (n + 1))

end

end A229206.P10378332538524744193

/-! ## A229206.P7642298504537891710

`A077344(A000124(A006093(n+1))+n)`
-/

namespace A229206.P7642298504537891710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000124 (A006093 (n + 1)).toNat + (n : ℤ)).toNat

end

end A229206.P7642298504537891710

/-! ## A229206.P17522750167708073424

`p?[A114009(∑[A077168(n)])]`
-/

namespace A229206.P17522750167708073424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114009 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229206.P17522750167708073424

/-!
# A229208: Numbers k such that Sum_{j=1..k} sigma(j)^j == 0 (mod k).

The programs for A229208, there is no canonical definition to state claims against.
-/

/-! ## A229208.P1005834310226989098

`∑[A365339(A193543(n))]`
-/

namespace A229208.P1005834310226989098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365339 (A193543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229208.P1005834310226989098

/-!
# A229209: Numbers k such that Sum_{j=1..k} phi(j)^j == 0 (mod k).

The programs for A229209, there is no canonical definition to state claims against.
-/

/-! ## A229209.P9701996852416500267

`A375326(2*n+1)+A330097(A365756(n))`
-/

namespace A229209.P9701996852416500267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375326 (2 * n + 1) + A330097 (A365756 n).toNat

end

end A229209.P9701996852416500267

/-!
# A229210: Numbers k such that Sum_{i=1..k} (i-tau(i))^i == 0 (mod k), where tau(i) = A000005(i), the number of divisors of i, and i-tau(i) = A049820(i).

The programs for A229210, there is no canonical definition to state claims against.
-/

/-! ## A229210.P13787456739225354287

`A212737(A120777(n)+A113148(n))`
-/

namespace A229210.P13787456739225354287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A120777 n + A113148 n).toNat

end

end A229210.P13787456739225354287

/-! ## A229210.P14741352042845351016

`A347459(n+1)+A320539(A000079(n))`
-/

namespace A229210.P14741352042845351016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347459 (n + 1) + A320539 (A000079 n).toNat

end

end A229210.P14741352042845351016

/-!
# A229211: Numbers k such that Sum_{j=1..k} (j*(j+1)/2 - sigma(j))^j == 0 (mod k), where sigma(j) = A000203(j) and j*(j+1)/2 - sigma(j) = A024816(j).

The programs for A229211, there is no canonical definition to state claims against.
-/

/-! ## A229211.P7076584595134632910

`or(A265722(n), A325429(A007018(n)))`
-/

namespace A229211.P7076584595134632910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265722 n) (A325429 (A007018 n).toNat)

end

end A229211.P7076584595134632910

/-!
# A229212: Square array of numerators of t(n,k) = (1+1/(k*n))^n, read by descending antidiagonals.

The programs for A229212, there is no canonical definition to state claims against.
-/

/-! ## A229212.P14342067475296323354

`(A368310(n)+1)^A002260(n+1)`
-/

namespace A229212.P14342067475296323354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368310 n + 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A229212.P14342067475296323354

/-! ## A229212.P4728803817875158275

`(A059036(n)+2)^A002260(n+1)`
-/

namespace A229212.P4728803817875158275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059036 n + 2 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A229212.P4728803817875158275

/-! ## A229212.P1363832103558108209

`(A059036(n)+2)^(A002262(n)+1)`
-/

namespace A229212.P1363832103558108209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059036 n + 2 : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A229212.P1363832103558108209

/-! ## A229212.P11659691965364875409

`(A003991(n+1)+1)^A002260(n+1)`
-/

namespace A229212.P11659691965364875409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) + 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A229212.P11659691965364875409

/-! ## A229212.P16241402103842163721

`(A003991(n+1)+1)^(A002262(n)+1)`
-/

namespace A229212.P16241402103842163721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) + 1 : ℚ) ^ (A002262 n + 1 : ℤ)

end

end A229212.P16241402103842163721

/-!
# A229213: Square array of denominators of t(n,k) = (1+1/(k*n))^n, read by descending antidiagonals.

The programs for A229213, there is no canonical definition to state claims against.
-/

/-! ## A229213.P1399367714574308120

`A003991(n+1)^(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A229213.P1399367714574308120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) ^ (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℤ)

end

end A229213.P1399367714574308120

/-! ## A229213.P8359402265500050187

`A368310(n)^A002260(n+1)`
-/

namespace A229213.P8359402265500050187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368310 n : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A229213.P8359402265500050187

/-! ## A229213.P18249623455278907200

`A033918(n+1)*A051128(n+1)`
-/

namespace A229213.P18249623455278907200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) * A051128 (n + 1)

end

end A229213.P18249623455278907200

/-! ## A229213.P6138878011443992243

`A033918(n+1)*A055208(n+1)`
-/

namespace A229213.P6138878011443992243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) * A055208 (n + 1)

end

end A229213.P6138878011443992243

/-! ## A229213.P3199085763730926358

`A003991(n+1)^A002260(n+1)`
-/

namespace A229213.P3199085763730926358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A229213.P3199085763730926358

/-!
# A229215: If 1, 2, and 3 represent the three 2D vectors (1,0), (0.5,sqrt(3)/2) and (-0.5,sqrt(3)/2) and -1, -2 and -3 are the negation of these vectors, then this sequence represents Gosper's island.

The programs for A229215, there is no canonical definition to state claims against.
-/

/-! ## A229215.P13490051065109297295

`A243929(A120880(n))-A093390(A010894(n))`
-/

namespace A229215.P13490051065109297295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243929 (A120880 n).toNat - A093390 (A010894 (n + 21)).toNat

end

end A229215.P13490051065109297295

/-! ## A229215.P7279885365475937668

`A328342(8*A120880(n))`
-/

namespace A229215.P7279885365475937668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328342 (8 * A120880 n).toNat

end

end A229215.P7279885365475937668

/-! ## A229215.P10351824882114904083

`A061347(A005179(n+5))-n%2`
-/

namespace A229215.P10351824882114904083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A005179 (n + 5)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A229215.P10351824882114904083

/-!
# A229216: If 1, 2, and 3 represent the three 2D vectors (1,0), (0.5,sqrt(3)) and (-0.5,sqrt(3)) and -1, -2 and -3 are the negation of these vectors, then this sequence represents Koch's snowflake.

The programs for A229216, there is no canonical definition to state claims against.
-/

/-! ## A229216.P8913266396738866532

`A280048(A319652(n)^3)`
-/

namespace A229216.P8913266396738866532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (A319652 n ^ 3).toNat

end

end A229216.P8913266396738866532

/-! ## A229216.P1526646020382512523

`A280048(A319652(n)²*A319652(n))`
-/

namespace A229216.P1526646020382512523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (A319652 n ^ 2 * A319652 n).toNat

end

end A229216.P1526646020382512523

/-! ## A229216.P15468175533287644206

`A280048(∑{e}[A000079(n), A319652(#)])`
-/

namespace A229216.P15468175533287644206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A319652 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A229216.P15468175533287644206

/-! ## A229216.P1938837429421098778

`A280048(A319652(n)%∑[A330222(n+1)])`
-/

namespace A229216.P1938837429421098778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (Int.tmod (A319652 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229216.P1938837429421098778

/-! ## A229216.P4773882697828707044

`A280048(A319652(n)%record[A141486(n)])`
-/

namespace A229216.P4773882697828707044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280048 (Int.tmod (A319652 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A229216.P4773882697828707044

/-!
# A229217: If 1 and 2 represent the 2D vectors (1,0) and (0,1) and -1 and -2 are the negation of these vectors, then this sequence represents the Koch curve.

The programs for A229217, there is no canonical definition to state claims against.
-/

/-! ## A229217.P11156708241125595042

`Δ[A332249(n)+2*A332250(n)]`
-/

namespace A229217.P11156708241125595042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 n + 2 * A332250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229217.P11156708241125595042

/-! ## A229217.P12739244660439836224

`a(n-2)*A008836(A160786(n))` with `a(0)=1, a(1)=2`
-/

namespace A229217.P12739244660439836224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A008836 (A160786 n).toNat

end

end A229217.P12739244660439836224

/-! ## A229217.P15290551679884165966

`2-and(A105584(n), A330222(n+1))`
-/

namespace A229217.P15290551679884165966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A105584 n) (A330222 (n + 1))

end

end A229217.P15290551679884165966

/-! ## A229217.P14793901760285238666

`A000034(n)*A057077(A364839(3*n+2))`
-/

namespace A229217.P14793901760285238666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A057077 (A364839 (3 * n + 2)).toNat

end

end A229217.P14793901760285238666

/-! ## A229217.P8062424683354516732

`A007913(A000079(n))*A020985(A069771(n))`
-/

namespace A229217.P8062424683354516732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000079 n).toNat * A020985 (A069771 n).toNat

end

end A229217.P8062424683354516732

/-!
# A229218: Position of n in A228407.

The programs for A229218, there is no canonical definition to state claims against.
-/

/-! ## A229218.P8512593918098252922

`lt[A228407(n), 10]`
-/

namespace A229218.P8512593918098252922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229218.P8512593918098252922

/-! ## A229218.P14890390791405368352

`eq[A228407(n), A350174(n)]`
-/

namespace A229218.P14890390791405368352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229218.P14890390791405368352

/-! ## A229218.P18241520743104250355

`eq[A059396(n+1), A228407(n)]`
-/

namespace A229218.P18241520743104250355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229218.P18241520743104250355

/-! ## A229218.P18138720875782444756

`eq[A057427(n), A123895(A228407(n))]`
-/

namespace A229218.P18138720875782444756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A228407 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229218.P18138720875782444756

/-! ## A229218.P8601028927108631570

`eq[A026815(A228407(n)), A085982(2*n+1)]`
-/

namespace A229218.P8601028927108631570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (A228407 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229218.P8601028927108631570

/-!
# A229219: a(n) = maximal length of partitions of prime(n) into distinct primes.

The programs for A229219, there is no canonical definition to state claims against.
-/

/-! ## A229219.P15592694117666560460

`A024936(p?[xor(1, n)])`
-/

namespace A229219.P15592694117666560460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229219.P15592694117666560460

/-! ## A229219.P9189196304838491691

`A024936(Δ[A007504(n)])`
-/

namespace A229219.P9189196304838491691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (f1 (n + 1) - f1 n).toNat

end

end A229219.P9189196304838491691

/-! ## A229219.P7108304142716332300

`A024936(comp[A103164(n)])`
-/

namespace A229219.P7108304142716332300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A229219.P7108304142716332300

/-! ## A229219.P1721046066360154629

`A024936(A000040(n+1))`
-/

namespace A229219.P1721046066360154629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A000040 (n + 1)).toNat

end

end A229219.P1721046066360154629

/-! ## A229219.P12516707523759193196

`A024936(A008578(n+2))`
-/

namespace A229219.P12516707523759193196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A008578 (n + 2)).toNat

end

end A229219.P12516707523759193196

/-! ## A229219.P17439460158560488457

`A024936(A182986(n+2))`
-/

namespace A229219.P17439460158560488457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A182986 (n + 2)).toNat

end

end A229219.P17439460158560488457

/-! ## A229219.P90651773340806765

`A024936(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A229219.P90651773340806765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A229219.P90651773340806765

/-!
# A229220: a(n) = a(n-1)^2 + (-1)^n with a(1)=1.

The programs for A229220, the canonical program `A229220.P12562682736296813706` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229220 has offset 1).

The definition of A229220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+(-1)^(n+1)` (program `A229220.P12562682736296813706`, by `A229220.P12562682736296813706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229220.P12562682736296813706

`a(n-1)²+(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229220

/-- `a(n-1)²+(-1)^(n+1)` -/
def P12562682736296813706.Spec : Prop :=
  ∀ n, P12562682736296813706.a n = A229220 (n + 1)

theorem P12562682736296813706.correct : P12562682736296813706.Spec := by
  intro n
  simp only [A229220, Nat.add_sub_cancel]

end A229220

/-! ## A229220.P9998853579653894363

`or(2, a(n-1)²-1)` with `a(0)=1`
-/

namespace A229220.P9998853579653894363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (a (n - 1) ^ 2 - 1)

end

end A229220.P9998853579653894363

namespace A229220

/-- `or(2, a(n-1)²-1)` -/
def P9998853579653894363.Spec : Prop :=
  ∀ n, P9998853579653894363.a n = A229220 (n + 1)

end A229220

/-! ## A229220.P5456330543071216491

`abs(xor(1, -a(n-1)²))` with `a(0)=1`
-/

namespace A229220.P5456330543071216491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor 1 (-(a (n - 1) ^ 2))|

end

end A229220.P5456330543071216491

namespace A229220

/-- `abs(xor(1, -a(n-1)²))` -/
def P5456330543071216491.Spec : Prop :=
  ∀ n, P5456330543071216491.a n = A229220 (n + 1)

end A229220

/-! ## A229220.P16657837941649916197

`-xor(1, -a(n-1)²)` with `a(0)=1`
-/

namespace A229220.P16657837941649916197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor 1 (-(a (n - 1) ^ 2))

end

end A229220.P16657837941649916197

namespace A229220

/-- `-xor(1, -a(n-1)²)` -/
def P16657837941649916197.Spec : Prop :=
  ∀ n, P16657837941649916197.a n = A229220 (n + 1)

end A229220

/-! ## A229220.P1873211004291173432

`2*and(1, n)+a(n-1)²-1` with `a(0)=1`
-/

namespace A229220.P1873211004291173432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * Nat.land 1 n : ℤ) + (a (n - 1) ^ 2 - 1)

end

end A229220.P1873211004291173432

namespace A229220

/-- `2*and(1, n)+a(n-1)²-1` -/
def P1873211004291173432.Spec : Prop :=
  ∀ n, P1873211004291173432.a n = A229220 (n + 1)

end A229220

/-!
# A229221: Numbers k such that k - (product of digits of k) is prime.

The programs for A229221, the canonical program `A229221.P13418059073900449142` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229221 has offset 1).

The definition of A229221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 858 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229221.P9873232014987877627

`eq[0, A007920(A070565(n))]`
-/

namespace A229221.P9873232014987877627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P9873232014987877627

namespace A229221

/-- `eq[0, A007920(A070565(n))]` -/
def P9873232014987877627.Spec : Prop :=
  ∀ n, (P9873232014987877627.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P8536990441722413760

`eq[1, A053989(A070565(n)+1)]`
-/

namespace A229221.P8536990441722413760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A070565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P8536990441722413760

namespace A229221

/-- `eq[1, A053989(A070565(n)+1)]` -/
def P8536990441722413760.Spec : Prop :=
  ∀ n, (P8536990441722413760.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P18176993285232667400

`eq[1, A003415(n-A007954(n))]`
-/

namespace A229221.P18176993285232667400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P18176993285232667400

namespace A229221

/-- `eq[1, A003415(n-A007954(n))]` -/
def P18176993285232667400.Spec : Prop :=
  ∀ n, (P18176993285232667400.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P13418059073900449142

`eq[1, A032741(n-A007954(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229221

/-- `eq[1, A032741(n-A007954(n))]` -/
def P13418059073900449142.Spec : Prop :=
  ∀ n, (P13418059073900449142.a n : ℤ) = A229221 (n + 1)

theorem P13418059073900449142.correct : P13418059073900449142.Spec := by
  intro n
  simp only [A229221, Nat.add_sub_cancel]

end A229221

/-! ## A229221.P11394842439085709047

`eq[1, A078898(n-A007954(n))]`
-/

namespace A229221.P11394842439085709047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P11394842439085709047

namespace A229221

/-- `eq[1, A078898(n-A007954(n))]` -/
def P11394842439085709047.Spec : Prop :=
  ∀ n, (P11394842439085709047.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P12244199649499633204

`eq[1, A104725(n-A007954(n))]`
-/

namespace A229221.P12244199649499633204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P12244199649499633204

namespace A229221

/-- `eq[1, A104725(n-A007954(n))]` -/
def P12244199649499633204.Spec : Prop :=
  ∀ n, (P12244199649499633204.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P9316921785227327331

`eq[1, A105700(n-A007954(n))]`
-/

namespace A229221.P9316921785227327331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P9316921785227327331

namespace A229221

/-- `eq[1, A105700(n-A007954(n))]` -/
def P9316921785227327331.Spec : Prop :=
  ∀ n, (P9316921785227327331.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P10188080634620062450

`eq[1, A107286(n-A007954(n))]`
-/

namespace A229221.P10188080634620062450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P10188080634620062450

namespace A229221

/-- `eq[1, A107286(n-A007954(n))]` -/
def P10188080634620062450.Spec : Prop :=
  ∀ n, (P10188080634620062450.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P727783319064184851

`eq[2, A190014(A070565(n)+1)]`
-/

namespace A229221.P727783319064184851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A070565 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P727783319064184851

namespace A229221

/-- `eq[2, A190014(A070565(n)+1)]` -/
def P727783319064184851.Spec : Prop :=
  ∀ n, (P727783319064184851.a n : ℤ) = A229221 (n + 1)

end A229221

/-! ## A229221.P12103325156400705045

`eq[1, A107279(n-A007954(n))]`
-/

namespace A229221.P12103325156400705045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 ((n : ℤ) - A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229221.P12103325156400705045

namespace A229221

/-- `eq[1, A107279(n-A007954(n))]` -/
def P12103325156400705045.Spec : Prop :=
  ∀ n, (P12103325156400705045.a n : ℤ) = A229221 (n + 1)

end A229221

/-!
# A229222: Smallest prime p such that p contains a digit larger than 1 and the sum of the n-th powers of the decimal digits of p is a prime number.

The programs for A229222, there is no canonical definition to state claims against.
-/

/-! ## A229222.P9625503606752561691

`A005384(A208864(n+3)^A352037(n+1))`
-/

namespace A229222.P9625503606752561691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.roundAway ((A208864 (n + 3) : ℚ) ^ (A352037 (n + 1) : ℤ))).toNat

end

end A229222.P9625503606752561691

/-!
# A229223: Number G(n,k) of set partitions of {1,...,n} into sets of size at most k; triangle G(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A229223, there is no canonical definition to state claims against.
-/

/-! ## A229223.P15451686286017373958

`A108947(A245300(n))`
-/

namespace A229223.P15451686286017373958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A245300 n).toNat

end

end A229223.P15451686286017373958

/-! ## A229223.P5526552253070840945

`A359107(n)+A091009(A217374(n+1)+1)`
-/

namespace A229223.P5526552253070840945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359107 n + A091009 (A217374 (n + 1) + 1).toNat

end

end A229223.P5526552253070840945

/-! ## A229223.P2055988539317376042

`A359107(n)+A000122(A359064(n+5))`
-/

namespace A229223.P2055988539317376042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359107 n + A000122 (A359064 (n + 5)).toNat

end

end A229223.P2055988539317376042

/-! ## A229223.P6301189873442701596

`A359107(n)+A000122(A359090(n+4))`
-/

namespace A229223.P6301189873442701596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359107 n + A000122 (A359090 (n + 4)).toNat

end

end A229223.P6301189873442701596

/-! ## A229223.P1940653201478545146

`A051162(A269939(n)%A281938(3*n+5))`
-/

namespace A229223.P1940653201478545146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.tmod (A269939 n) (A281938 (3 * n + 5))).toNat

end

end A229223.P1940653201478545146

/-!
# A229224: The partition function G(n,7).

The programs for A229224, there is no canonical definition to state claims against.
-/

/-! ## A229224.P14565562736763546531

`A108947(eq[7, A002262(n)])`
-/

namespace A229224.P14565562736763546531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229224.P14565562736763546531

/-! ## A229224.P6116696972212803788

`A108947(eq[7, A144328(n+1)])`
-/

namespace A229224.P6116696972212803788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229224.P6116696972212803788

/-! ## A229224.P14782222958287617969

`A108947(eq[8, A002260(n+1)])`
-/

namespace A229224.P14782222958287617969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229224.P14782222958287617969

/-! ## A229224.P1332151084821090838

`A108947(eq[8, A134868(n+1)])`
-/

namespace A229224.P1332151084821090838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229224.P1332151084821090838

/-! ## A229224.P11293068236164803037

`A108947(eq[15, A158405(n+1)])`
-/

namespace A229224.P11293068236164803037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229224.P11293068236164803037

/-!
# A229225: The partition function G(n,8).

The programs for A229225, there is no canonical definition to state claims against.
-/

/-! ## A229225.P18262293661910662886

`A108947(A056126(n)+44)`
-/

namespace A229225.P18262293661910662886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A056126 n + 44).toNat

end

end A229225.P18262293661910662886

/-! ## A229225.P3644943748560936980

`A108947(A167499(n+7)+3)`
-/

namespace A229225.P3644943748560936980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A167499 (n + 7) + 3).toNat

end

end A229225.P3644943748560936980

/-! ## A229225.P9275491034874122480

`A108947(A000124(n+8)+7)`
-/

namespace A229225.P9275491034874122480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 8) + 7).toNat

end

end A229225.P9275491034874122480

/-! ## A229225.P16689059203124512131

`A108947(A000096(n+7)+9)`
-/

namespace A229225.P16689059203124512131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000096 (n + 7) + 9).toNat

end

end A229225.P16689059203124512131

/-! ## A229225.P16117688307711265738

`A108947(A000217(n+8)+8)`
-/

namespace A229225.P16117688307711265738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000217 (n + 8) + 8).toNat

end

end A229225.P16117688307711265738

/-!
# A229226: The partition function G(n,9).

The programs for A229226, there is no canonical definition to state claims against.
-/

/-! ## A229226.P1429053617611378956

`A108947(eq[9, A002262(n)])`
-/

namespace A229226.P1429053617611378956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229226.P1429053617611378956

/-! ## A229226.P12036727813179513072

`A108947(eq[9, A144328(n+1)])`
-/

namespace A229226.P12036727813179513072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229226.P12036727813179513072

/-! ## A229226.P8226791703511703141

`A108947(eq[10, A002260(n+1)])`
-/

namespace A229226.P8226791703511703141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229226.P8226791703511703141

/-! ## A229226.P15834710592523116601

`A108947(eq[10, A134868(n+1)])`
-/

namespace A229226.P15834710592523116601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229226.P15834710592523116601

/-! ## A229226.P14991696161444993356

`A108947(A000217(n+10)-(n+1))`
-/

namespace A229226.P14991696161444993356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A229226.P14991696161444993356

/-! ## A229226.P12137103418227665977

`A108947(A000124(n+10)-(n+2))`
-/

namespace A229226.P12137103418227665977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A229226.P12137103418227665977

/-!
# A229227: The partition function G(n,10).

The programs for A229227, there is no canonical definition to state claims against.
-/

/-! ## A229227.P7639818600471400857

`A108947(eq[10, A002262(n)])`
-/

namespace A229227.P7639818600471400857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229227.P7639818600471400857

/-! ## A229227.P5238395334297726496

`A108947(A000124(n+10)+9)`
-/

namespace A229227.P5238395334297726496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 10) + 9).toNat

end

end A229227.P5238395334297726496

/-! ## A229227.P10765282790370459344

`A108947(eq[11, A002260(n+1)])`
-/

namespace A229227.P10765282790370459344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229227.P10765282790370459344

/-! ## A229227.P2893435822620757896

`A108947(A000217(n+11)-(n+1))`
-/

namespace A229227.P2893435822620757896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A229227.P2893435822620757896

/-! ## A229227.P4824428212247974387

`A000110(n)-A241458(A018896(n))`
-/

namespace A229227.P4824428212247974387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A241458 (A018896 n).toNat

end

end A229227.P4824428212247974387

/-!
# A229228: Number of set partitions of {1,...,2n} into sets of size at most n.

The programs for A229228, there is no canonical definition to state claims against.
-/

/-! ## A229228.P3543486963138202871

`A386633(2*n)`
-/

namespace A229228.P3543486963138202871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386633 (2 * n)

end

end A229228.P3543486963138202871

/-! ## A229228.P16999135990252309460

`A229223(∑[4*n])`
-/

namespace A229228.P16999135990252309460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229228.P16999135990252309460

/-! ## A229228.P10309883418071315477

`A000110(2*n)-A386634(2*n)`
-/

namespace A229228.P10309883418071315477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * n) - A386634 (2 * n)

end

end A229228.P10309883418071315477

/-! ## A229228.P11563910241792007151

`A108947(A062725(n))`
-/

namespace A229228.P11563910241792007151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A062725 n).toNat

end

end A229228.P11563910241792007151

/-! ## A229228.P13489347665789876141

`A108947(A210981(2*n))`
-/

namespace A229228.P13489347665789876141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A210981 (2 * n)).toNat

end

end A229228.P13489347665789876141

/-!
# A229229: Number of set partitions of {1,...,n^2} into sets of size at most n.

The programs for A229229, there is no canonical definition to state claims against.
-/

/-! ## A229229.P7706399757016692728

`A229243(∑[4*n])`
-/

namespace A229229.P7706399757016692728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229229.P7706399757016692728

/-! ## A229229.P6926964163518660385

`A368502(n²)`
-/

namespace A229229.P6926964163518660385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368502 (n ^ 2)

end

end A229229.P6926964163518660385

/-!
# A229230: Positions of incrementally largest terms in the continued fraction of Soldner's constant.

The programs for A229230, there is no canonical definition to state claims against.
-/

/-! ## A229230.P15204405769608409265

`A099805(n+1)-1`
-/

namespace A229230.P15204405769608409265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099805 (n + 1) - 1

end

end A229230.P15204405769608409265

/-! ## A229230.P10534024738040585657

`A134824(n+2)+A099805(n+1)`
-/

namespace A229230.P10534024738040585657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A099805 (n + 1)

end

end A229230.P10534024738040585657

/-! ## A229230.P17181478217400500121

`A260196(n+2)+A099805(n+1)`
-/

namespace A229230.P17181478217400500121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A099805 (n + 1)

end

end A229230.P17181478217400500121

/-! ## A229230.P17889415662667967940

`A099837(3*n+1)+A099805(n+1)`
-/

namespace A229230.P17889415662667967940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A099805 (n + 1)

end

end A229230.P17889415662667967940

/-! ## A229230.P17082481508131485945

`A115638(8*n+5)+A099805(n+1)`
-/

namespace A229230.P17082481508131485945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (8 * n + 5) + A099805 (n + 1)

end

end A229230.P17082481508131485945

/-!
# A229233: O.g.f.: Sum_{n>=0} x^n / Product_{k=1..n} (1 - n*k*x).

The programs for A229233, there is no canonical definition to state claims against.
-/

/-! ## A229233.P4122207154281636279

`A183992(a(n-1))+(n+1)^(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A229233.P4122207154281636279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A183992 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) + (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A229233.P4122207154281636279

/-! ## A229233.P8366313402258142051

`A061984(A060350(n))`
-/

namespace A229233.P8366313402258142051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A060350 n).toNat

end

end A229233.P8366313402258142051

/-!
# A229234: O.g.f.: Sum_{n>=0} n! * x^n / Product_{k=1..n} (1 - n*k*x).

The programs for A229234, there is no canonical definition to state claims against.
-/

/-! ## A229234.P17849046486024759324

`A130091(A001147(n)-char[4])`
-/

namespace A229234.P17849046486024759324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A001147 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A229234.P17849046486024759324

/-! ## A229234.P12897030164493157907

`A056943(A000040(a(n-2)+2*(a(n-1)+1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A229234.P12897030164493157907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A056943 (A000040 (a (n - 2) + 2 * (a (n - 1) + 1)).toNat).toNat

end

end A229234.P12897030164493157907

/-!
# A229235: Smallest triangular numbers whose decimal expansion begins (nontrivially) with n-th triangular number.

The programs for A229235, there is no canonical definition to state claims against.
-/

/-! ## A229235.P1232269334554499768

`∑{d}[32*8^n, log2(#)]`
-/

namespace A229235.P1232269334554499768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * 8 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ)

end

end A229235.P1232269334554499768

/-!
# A229236: Palindromic triangular number with palindromic index.

The programs for A229236, there is no canonical definition to state claims against.
-/

/-! ## A229236.P16141649999813163787

`C(A008510(n+1)+1, 2)`
-/

namespace A229236.P16141649999813163787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008510 (n + 1) + 1).toNat 2

end

end A229236.P16141649999813163787

/-! ## A229236.P7759090735796766313

`C(A279084(lt[n, A118880(n)])+1, 2)`
-/

namespace A229236.P7759090735796766313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A279084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1).toNat 2

end

end A229236.P7759090735796766313

/-! ## A229236.P14291271301662180444

`A000217(A008510(n+1))`
-/

namespace A229236.P14291271301662180444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008510 (n + 1)).toNat

end

end A229236.P14291271301662180444

/-! ## A229236.P16831415213609046031

`A004158(A279084(n+2))`
-/

namespace A229236.P16831415213609046031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 (A279084 (n + 2)).toNat

end

end A229236.P16831415213609046031

/-!
# A229237: E.g.f. A(x) satisfies: A(x)^A(x) = 1/(1 - x*A(x)^4).

The programs for A229237, there is no canonical definition to state claims against.
-/

/-! ## A229237.P9902722534178110068

`A130091(A305614(n)+A120593(n))`
-/

namespace A229237.P9902722534178110068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (A305614 n + A120593 n).toNat

end

end A229237.P9902722534178110068

/-!
# A229238: Numbers k such that phi(sigma(k))/sigma(phi(k)) = 2.

The programs for A229238, there is no canonical definition to state claims against.
-/

/-! ## A229238.P9013040565648059670

`∩[A028982(n+1), A067709(n+1)]`
-/

namespace A229238.P9013040565648059670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229238.P9013040565648059670

/-! ## A229238.P1985031821996930727

`∩[A067709(n+1), A088827(n+1)]`
-/

namespace A229238.P1985031821996930727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229238.P1985031821996930727

/-! ## A229238.P14684043790306626607

`∩[A067709(n+1), A125732(n+1)]`
-/

namespace A229238.P14684043790306626607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229238.P14684043790306626607

/-! ## A229238.P170624239044560236

`∩[A067709(n+1), A143513(n+1)]`
-/

namespace A229238.P170624239044560236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229238.P170624239044560236

/-! ## A229238.P13824321412404088109

`∩[A067709(n+1), A335851(n+1)]`
-/

namespace A229238.P13824321412404088109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229238.P13824321412404088109

/-!
# A229239: Total number of parts in all partitions of n^2 into squares.

The programs for A229239, there is no canonical definition to state claims against.
-/

/-! ## A229239.P1814767808707982777

`A281541(A253909(n))-A000007(n)`
-/

namespace A229239.P1814767808707982777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281541 (A253909 n).toNat - A000007 n

end

end A229239.P1814767808707982777

/-! ## A229239.P44185593291472791

`A057427(n)*A281541(A253909(n))`
-/

namespace A229239.P44185593291472791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281541 (A253909 n).toNat

end

end A229239.P44185593291472791

/-! ## A229239.P2919174720828960439

`A178334(n)*A281541(A253909(n))`
-/

namespace A229239.P2919174720828960439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A281541 (A253909 n).toNat

end

end A229239.P2919174720828960439

/-! ## A229239.P16228873150234874516

`lcm(A011617(n), A281541(A253909(n)))`
-/

namespace A229239.P16228873150234874516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011617 n) (A281541 (A253909 n).toNat)

end

end A229239.P16228873150234874516

/-! ## A229239.P4470096243548758811

`A011617(n²)*A281541(A253909(n))`
-/

namespace A229239.P4470096243548758811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011617 (n ^ 2) * A281541 (A253909 n).toNat

end

end A229239.P4470096243548758811

/-! ## A229239.P5431005536516704381

`xor(A000007(2*n), A281541(A253909(n)))`
-/

namespace A229239.P5431005536516704381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A281541 (A253909 n).toNat)

end

end A229239.P5431005536516704381

/-! ## A229239.P7934021200373386028

`A281541(A253909(n))+n-A028310(n)`
-/

namespace A229239.P7934021200373386028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281541 (A253909 n).toNat + ((n : ℤ) - A028310 n)

end

end A229239.P7934021200373386028

/-! ## A229239.P14656966796178187901

`A281541(A253909(n))%A004392(n)`
-/

namespace A229239.P14656966796178187901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281541 (A253909 n).toNat) (A004392 (n + 11))

end

end A229239.P14656966796178187901

/-!
# A229240: Sorted list of largest values in the quintuple (a,b,c,d,e) satisfying a^2 + b^2 + c^2 + d^2 + e^2 = a*b*c*d*e.

The programs for A229240, there is no canonical definition to state claims against.
-/

/-! ## A229240.P7752416312561505172

`A338256(n+3)`
-/

namespace A229240.P7752416312561505172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338256 (n + 3)

end

end A229240.P7752416312561505172

/-! ## A229240.P11527237501903657855

`record[A338256(A052938(abs(1-n)))]`
-/

namespace A229240.P11527237501903657855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338256 (A052938 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229240.P11527237501903657855

/-! ## A229240.P3767249298218707748

`record[A338256(A080513(A165754(n)))]`
-/

namespace A229240.P3767249298218707748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338256 (A080513 (A165754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229240.P3767249298218707748

/-! ## A229240.P12111683542179452768

`record[A338256(A256244(A071054(n)))]`
-/

namespace A229240.P12111683542179452768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338256 (A256244 (A071054 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229240.P12111683542179452768

/-!
# A229241: Generalized Markoff numbers: largest number a in a 5-tuple a >= b >= c >= d >= e satisfying the Markoff(5) equation a^2 + b^2 + c^2 + d^2 + e^2 = 4*a*b*c*d*e.

The programs for A229241, there is no canonical definition to state claims against.
-/

/-! ## A229241.P7428638784329285636

`∪[A001075(n+3), A326979(A104449(3*n))]`
-/

namespace A229241.P7428638784329285636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (A104449 (3 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229241.P7428638784329285636

/-!
# A229242: Generalized Markoff numbers: union of numbers a, b, c, d, e satisfying the Markoff(5) equation a^2 + b^2 + c^2 + d^2 + e^2 = 5*a*b*c*d*e.

The programs for A229242, there is no canonical definition to state claims against.
-/

/-! ## A229242.P15569418703217477736

`A337191(A266319(n+2))`
-/

namespace A229242.P15569418703217477736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337191 (A266319 (n + 2)).toNat

end

end A229242.P15569418703217477736

/-!
# A229243: Number A(n,k) of set partitions of {1,...,k*n} into sets of size at most n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A229243, there is no canonical definition to state claims against.
-/

/-! ## A229243.P16278151769602548592

`A000009(A034374(n+2)%A345119(2*(n+1)))`
-/

namespace A229243.P16278151769602548592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.tmod (A034374 (n + 2)) (A345119 (2 * (n + 1)))).toNat

end

end A229243.P16278151769602548592

/-!
# A229244: Number of n-permutations such that at least one cycle has size ceiling(n/2).

The programs for A229244, there is no canonical definition to state claims against.
-/

/-! ## A229244.P17238857832247963315

`A126074(∑[or(1, n)])`
-/

namespace A229244.P17238857832247963315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229244.P17238857832247963315

/-! ## A229244.P7327915878387294076

`A126074(∑[A109613(n)])`
-/

namespace A229244.P7327915878387294076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229244.P7327915878387294076

/-! ## A229244.P15174836479862547721

`A126074(A000982(n+1))`
-/

namespace A229244.P15174836479862547721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A000982 (n + 1)).toNat

end

end A229244.P15174836479862547721

/-! ## A229244.P12645382954831717838

`A126074(A030978(n+1))`
-/

namespace A229244.P12645382954831717838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A030978 (n + 1)).toNat

end

end A229244.P12645382954831717838

/-! ## A229244.P10161360772682165831

`A126074(∑[A106249(2*n)])`
-/

namespace A229244.P10161360772682165831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229244.P10161360772682165831

/-!
# A229245: Number of set partitions of {1,...,n} with largest set of size 3.

The programs for A229245, there is no canonical definition to state claims against.
-/

/-! ## A229245.P8511679301777364739

`A001680(n+3)-A000085(n+3)`
-/

namespace A229245.P8511679301777364739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001680 (n + 3) - A000085 (n + 3)

end

end A229245.P8511679301777364739

/-! ## A229245.P18323372842651490714

`A080510(∑[n+2]+4)`
-/

namespace A229245.P18323372842651490714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229245.P18323372842651490714

/-! ## A229245.P9724115736716348782

`A080510(A167614(n+1))^ceil(acot(n))`
-/

namespace A229245.P9724115736716348782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080510 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A229245.P9724115736716348782

/-! ## A229245.P1355857961388607540

`gcd(A000038(n), A080510(A167614(n+1)))`
-/

namespace A229245.P1355857961388607540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080510 (A167614 (n + 1)).toNat)

end

end A229245.P1355857961388607540

/-! ## A229245.P11983122856445433542

`lcm(A008619(n), A080510(A167614(n+1)))`
-/

namespace A229245.P11983122856445433542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 n) (A080510 (A167614 (n + 1)).toNat)

end

end A229245.P11983122856445433542

/-! ## A229245.P189045691139120842

`and(A080510(A167614(n+1)), A260196(n))`
-/

namespace A229245.P189045691139120842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080510 (A167614 (n + 1)).toNat) (A260196 n)

end

end A229245.P189045691139120842

/-! ## A229245.P4904819009283798754

`or(A000007(n), A080510(A167614(n+1)))`
-/

namespace A229245.P4904819009283798754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A080510 (A167614 (n + 1)).toNat)

end

end A229245.P4904819009283798754

/-! ## A229245.P7654077861197319611

`A080510(A167614(n+1))+A007318(C(3, n²))-1`
-/

namespace A229245.P7654077861197319611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167614 (n + 1)).toNat + A007318 (Nat.choose 3 (n ^ 2)) - 1

end

end A229245.P7654077861197319611

/-! ## A229245.P5071115115572555985

`A080510(A167614(n+1))%A257380(n+1)`
-/

namespace A229245.P5071115115572555985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080510 (A167614 (n + 1)).toNat) (A257380 (n + 1))

end

end A229245.P5071115115572555985

/-! ## A229245.P11814929481757805660

`A080510(A167614(n+1))^A178489(n)`
-/

namespace A229245.P11814929481757805660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080510 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A229245.P11814929481757805660

/-!
# A229246: Number of set partitions of {1,...,n} with largest set of size 4.

The programs for A229246, there is no canonical definition to state claims against.
-/

/-! ## A229246.P5779133679144030132

`A080510(A145018(n+4))`
-/

namespace A229246.P5779133679144030132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A145018 (n + 4)).toNat

end

end A229246.P5779133679144030132

/-! ## A229246.P429311156581380364

`A080510(A052905(n)+9)`
-/

namespace A229246.P429311156581380364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A052905 n + 9).toNat

end

end A229246.P429311156581380364

/-! ## A229246.P309950872103067959

`A080510(A055999(n)+10)`
-/

namespace A229246.P309950872103067959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A055999 n + 10).toNat

end

end A229246.P309950872103067959

/-! ## A229246.P3907833036203163729

`A080510(A167614(n+2)+1)`
-/

namespace A229246.P3907833036203163729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167614 (n + 2) + 1).toNat

end

end A229246.P3907833036203163729

/-! ## A229246.P4741183941936971128

`A080510(A166136(n+2)-2)`
-/

namespace A229246.P4741183941936971128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A166136 (n + 2) - 2).toNat

end

end A229246.P4741183941936971128

/-! ## A229246.P8468421476617415045

`A080510(A167487(n+2)-3)`
-/

namespace A229246.P8468421476617415045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167487 (n + 2) - 3).toNat

end

end A229246.P8468421476617415045

/-! ## A229246.P5381019638106982743

`A080510(A166136(n+1)+1+n)`
-/

namespace A229246.P5381019638106982743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A229246.P5381019638106982743

/-! ## A229246.P15175584498496164980

`A080510(Δ[A023545(n+1)-n²])`
-/

namespace A229246.P15175584498496164980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (f1 (n + 1) - f1 n).toNat

end

end A229246.P15175584498496164980

/-! ## A229246.P14737105532502549859

`record[gcd(A048993(n+6), A080510(n+10))]`
-/

namespace A229246.P14737105532502549859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 6)) (A080510 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229246.P14737105532502549859

/-! ## A229246.P4915355364288615668

`A080510(A038722(Δ[A006416(n+2)]))`
-/

namespace A229246.P4915355364288615668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A229246.P4915355364288615668

/-!
# A229247: Number of set partitions of {1,...,n} with largest set of size 5.

The programs for A229247, there is no canonical definition to state claims against.
-/

/-! ## A229247.P18142698388242885928

`A080510(A167499(n+3))`
-/

namespace A229247.P18142698388242885928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167499 (n + 3)).toNat

end

end A229247.P18142698388242885928

/-! ## A229247.P15084795474174412651

`A080510(A155212(n)+13)`
-/

namespace A229247.P15084795474174412651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A155212 n + 13).toNat

end

end A229247.P15084795474174412651

/-! ## A229247.P9138846389407807765

`A080510(A000217(n+4)+5)`
-/

namespace A229247.P9138846389407807765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000217 (n + 4) + 5).toNat

end

end A229247.P9138846389407807765

/-! ## A229247.P5697522462138444867

`record[gcd(A072233(n+6), A080510(n+11))]`
-/

namespace A229247.P5697522462138444867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072233 (n + 6)) (A080510 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229247.P5697522462138444867

/-! ## A229247.P3855970667772144160

`record[gcd(A080510(n+13), A105806(n+7))]`
-/

namespace A229247.P3855970667772144160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080510 (n + 13)) (A105806 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229247.P3855970667772144160

/-!
# A229248: Number of set partitions of {1,...,n} with largest set of size 6.

The programs for A229248, there is no canonical definition to state claims against.
-/

/-! ## A229248.P6175760038533170302

`A080510(A167614(n+4)+3)`
-/

namespace A229248.P6175760038533170302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167614 (n + 4) + 3).toNat

end

end A229248.P6175760038533170302

/-! ## A229248.P135825863102810926

`A080510(A000096(n+4)+7)`
-/

namespace A229248.P135825863102810926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000096 (n + 4) + 7).toNat

end

end A229248.P135825863102810926

/-! ## A229248.P13046354723118394776

`A080510(A000217(n+5)+6)`
-/

namespace A229248.P13046354723118394776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000217 (n + 5) + 6).toNat

end

end A229248.P13046354723118394776

/-! ## A229248.P16667868209645795464

`A080510(Δ[A023545(n+1)]+10)`
-/

namespace A229248.P16667868209645795464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (f1 (n + 1) - f1 n + 10).toNat

end

end A229248.P16667868209645795464

/-! ## A229248.P14093687976083219213

`record[A054527(n+1)*A080510(n+1)]`
-/

namespace A229248.P14093687976083219213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A080510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229248.P14093687976083219213

/-! ## A229248.P1702278640841731518

`A080510(A052905(n+4)-A103517(n))`
-/

namespace A229248.P1702278640841731518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A052905 (n + 4) - A103517 n).toNat

end

end A229248.P1702278640841731518

/-!
# A229249: Number of set partitions of {1,...,n} with largest set of size 7.

The programs for A229249, there is no canonical definition to state claims against.
-/

/-! ## A229249.P2472081143797616978

`A080510(A056119(n)+28)`
-/

namespace A229249.P2472081143797616978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A056119 n + 28).toNat

end

end A229249.P2472081143797616978

/-! ## A229249.P4979921061608093081

`A080510(A000124(n+6)+6)`
-/

namespace A229249.P4979921061608093081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000124 (n + 6) + 6).toNat

end

end A229249.P4979921061608093081

/-! ## A229249.P6629893330155723789

`A080510(A000096(n+5)+8)`
-/

namespace A229249.P6629893330155723789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000096 (n + 5) + 8).toNat

end

end A229249.P6629893330155723789

/-! ## A229249.P14615269123179360209

`A080510(A000217(n+6)+7)`
-/

namespace A229249.P14615269123179360209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000217 (n + 6) + 7).toNat

end

end A229249.P14615269123179360209

/-! ## A229249.P14133519179853450567

`A080510(eq[8, A222127(n+1)]+4)`
-/

namespace A229249.P14133519179853450567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A229249.P14133519179853450567

/-!
# A229250: Number of set partitions of {1,...,n} with largest set of size 8.

The programs for A229250, there is no canonical definition to state claims against.
-/

/-! ## A229250.P5176550963890040976

`A080510(A167487(n+6)+1)`
-/

namespace A229250.P5176550963890040976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167487 (n + 6) + 1).toNat

end

end A229250.P5176550963890040976

/-! ## A229250.P5230495103750613213

`A080510(A166136(n+6)+2)`
-/

namespace A229250.P5230495103750613213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A166136 (n + 6) + 2).toNat

end

end A229250.P5230495103750613213

/-! ## A229250.P11409204661229505812

`A080510(A000124(n+7)+7)`
-/

namespace A229250.P11409204661229505812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000124 (n + 7) + 7).toNat

end

end A229250.P11409204661229505812

/-! ## A229250.P4425625804390629342

`A080510(A253145(n+6)+8)`
-/

namespace A229250.P4425625804390629342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A253145 (n + 6) + 8).toNat

end

end A229250.P4425625804390629342

/-! ## A229250.P11953914887061597894

`A080510(A000217(n+7)+8)`
-/

namespace A229250.P11953914887061597894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A000217 (n + 7) + 8).toNat

end

end A229250.P11953914887061597894

/-! ## A229250.P10812849908731918297

`A080510(A167614(n+7)-(n+3))`
-/

namespace A229250.P10812849908731918297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167614 (n + 7) - (n + 3 : ℤ)).toNat

end

end A229250.P10812849908731918297

/-!
# A229251: Number of set partitions of {1,...,n} with largest set of size 9.

The programs for A229251, there is no canonical definition to state claims against.
-/

/-! ## A229251.P6751198583674157493

`A080510(eq[17, A066657(n)])`
-/

namespace A229251.P6751198583674157493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229251.P6751198583674157493

/-! ## A229251.P6020078596844096985

`A080510(A167487(n+7)+2)`
-/

namespace A229251.P6020078596844096985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A167487 (n + 7) + 2).toNat

end

end A229251.P6020078596844096985

/-! ## A229251.P8668087211920337033

`A080510(eq[10, A131818(n+1)])`
-/

namespace A229251.P8668087211920337033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229251.P8668087211920337033

/-! ## A229251.P17810008326199607999

`A080510(eq[10, A135223(n+1)])`
-/

namespace A229251.P17810008326199607999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229251.P17810008326199607999

/-! ## A229251.P16500209106247256989

`A080510(eq[8, A144328(n+1)]+1)`
-/

namespace A229251.P16500209106247256989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229251.P16500209106247256989

/-!
# A229252: Number of set partitions of {1,...,n} with largest set of size 10.

The programs for A229252, there is no canonical definition to state claims against.
-/

/-! ## A229252.P9358884779466850725

`A080510(A133263(n+9)+8)`
-/

namespace A229252.P9358884779466850725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A133263 (n + 9) + 8).toNat

end

end A229252.P9358884779466850725

/-! ## A229252.P17917744990393356236

`A080510(eq[10, A130270(n+1)])`
-/

namespace A229252.P17917744990393356236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229252.P17917744990393356236

/-! ## A229252.P11986567240177818494

`A080510(eq[11, A131818(n+1)])`
-/

namespace A229252.P11986567240177818494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229252.P11986567240177818494

/-! ## A229252.P4954118730122763063

`A080510(eq[10, A002260(n+1)]+1)`
-/

namespace A229252.P4954118730122763063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229252.P4954118730122763063

/-! ## A229252.P15818147149788402579

`A080510(eq[10, A256910(n)])`
-/

namespace A229252.P15818147149788402579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229252.P15818147149788402579

/-!
# A229253: Total number of elements of nonempty subsets of divisors of n.

The programs for A229253, the canonical program `A229253.P10040121674296205229` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229253 has offset 1).

The definition of A229253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229253.P10040121674296205229

`A001787(A000005(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229253

/-- `A001787(A000005(n+1))` -/
def P10040121674296205229.Spec : Prop :=
  ∀ n, P10040121674296205229.a n = A229253 (n + 1)

theorem P10040121674296205229.correct : P10040121674296205229.Spec := by
  intro n
  simp only [A229253, Nat.add_sub_cancel]

end A229253

/-! ## A229253.P9046534942862315253

`A139756(∏{e}[n+1, #+1]+1)`
-/

namespace A229253.P9046534942862315253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1)

end

end A229253.P9046534942862315253

namespace A229253

/-- `A139756(∏{e}[n+1, #+1]+1)` -/
def P9046534942862315253.Spec : Prop :=
  ∀ n, P9046534942862315253.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P10817049268155182497

`A036289(∏{e}[n+1, #+1])/2`
-/

namespace A229253.P10817049268155182497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℚ) / 2

end

end A229253.P10817049268155182497

namespace A229253

/-- `A036289(∏{e}[n+1, #+1])/2` -/
def P10817049268155182497.Spec : Prop :=
  ∀ n, P10817049268155182497.a n = (A229253 (n + 1) : ℚ)

end A229253

/-! ## A229253.P6884708948708192328

`A062111(A184389(n+1))`
-/

namespace A229253.P6884708948708192328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A184389 (n + 1)).toNat

end

end A229253.P6884708948708192328

namespace A229253

/-- `A062111(A184389(n+1))` -/
def P6884708948708192328.Spec : Prop :=
  ∀ n, P6884708948708192328.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P16527615193194702598

`A171647(A114003(n+1))`
-/

namespace A229253.P16527615193194702598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (A114003 (n + 1)).toNat

end

end A229253.P16527615193194702598

namespace A229253

/-- `A171647(A114003(n+1))` -/
def P16527615193194702598.Spec : Prop :=
  ∀ n, P16527615193194702598.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P8896250092950923914

`A097067(A334954(n+1))`
-/

namespace A229253.P8896250092950923914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A334954 (n + 1)).toNat

end

end A229253.P8896250092950923914

namespace A229253

/-- `A097067(A334954(n+1))` -/
def P8896250092950923914.Spec : Prop :=
  ∀ n, P8896250092950923914.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P6209056362192212867

`A329033(A105555(n+1))`
-/

namespace A229253.P6209056362192212867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (A105555 (n + 1)).toNat

end

end A229253.P6209056362192212867

namespace A229253

/-- `A329033(A105555(n+1))` -/
def P6209056362192212867.Spec : Prop :=
  ∀ n, P6209056362192212867.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P7548177083704378566

`A001787(A032741(n+1)+1)`
-/

namespace A229253.P7548177083704378566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A032741 (n + 1) + 1).toNat

end

end A229253.P7548177083704378566

namespace A229253

/-- `A001787(A032741(n+1)+1)` -/
def P7548177083704378566.Spec : Prop :=
  ∀ n, P7548177083704378566.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P2260369335442875890

`A097067(A000005(n+1)+1)`
-/

namespace A229253.P2260369335442875890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A000005 (n + 1) + 1).toNat

end

end A229253.P2260369335442875890

namespace A229253

/-- `A097067(A000005(n+1)+1)` -/
def P2260369335442875890.Spec : Prop :=
  ∀ n, P2260369335442875890.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P16661351868517102533

`A139756(A000005(n+1)+1)`
-/

namespace A229253.P16661351868517102533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A000005 (n + 1) + 1).toNat

end

end A229253.P16661351868517102533

namespace A229253

/-- `A139756(A000005(n+1)+1)` -/
def P16661351868517102533.Spec : Prop :=
  ∀ n, P16661351868517102533.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P388825844432998764

`abs(A085750(A000005(n+1)+1))`
-/

namespace A229253.P388825844432998764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085750 (A000005 (n + 1) + 1).toNat|

end

end A229253.P388825844432998764

namespace A229253

/-- `abs(A085750(A000005(n+1)+1))` -/
def P388825844432998764.Spec : Prop :=
  ∀ n, P388825844432998764.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P7209278927216158731

`A336996(A000005(n+1)²+1)`
-/

namespace A229253.P7209278927216158731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 (A000005 (n + 1) ^ 2 + 1).toNat

end

end A229253.P7209278927216158731

namespace A229253

/-- `A336996(A000005(n+1)²+1)` -/
def P7209278927216158731.Spec : Prop :=
  ∀ n, P7209278927216158731.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P1027141312263662053

`A239632(2*A000005(n+1)-1)`
-/

namespace A229253.P1027141312263662053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (2 * A000005 (n + 1) - 1).toNat

end

end A229253.P1027141312263662053

namespace A229253

/-- `A239632(2*A000005(n+1)-1)` -/
def P1027141312263662053.Spec : Prop :=
  ∀ n, P1027141312263662053.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P11785100778367497855

`A000005(n+1)*A100577(n+1)`
-/

namespace A229253.P11785100778367497855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A100577 (n + 1)

end

end A229253.P11785100778367497855

namespace A229253

/-- `A000005(n+1)*A100577(n+1)` -/
def P11785100778367497855.Spec : Prop :=
  ∀ n, P11785100778367497855.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P11318381090321393518

`A000005(n+1)/2*A338506(n+1)`
-/

namespace A229253.P11318381090321393518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A338506 (n + 1) : ℚ)

end

end A229253.P11318381090321393518

namespace A229253

/-- `A000005(n+1)/2*A338506(n+1)` -/
def P11318381090321393518.Spec : Prop :=
  ∀ n, P11318381090321393518.a n = (A229253 (n + 1) : ℚ)

end A229253

/-! ## A229253.P17957307954952557605

`A000005(n+1)*A000079(A032741(n+1))`
-/

namespace A229253.P17957307954952557605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000079 (A032741 (n + 1)).toNat

end

end A229253.P17957307954952557605

namespace A229253

/-- `A000005(n+1)*A000079(A032741(n+1))` -/
def P17957307954952557605.Spec : Prop :=
  ∀ n, P17957307954952557605.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P4082240088297523551

`A000005(n+1)*A049063(A000005(n+1)²)`
-/

namespace A229253.P4082240088297523551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A049063 (A000005 (n + 1) ^ 2).toNat

end

end A229253.P4082240088297523551

namespace A229253

/-- `A000005(n+1)*A049063(A000005(n+1)²)` -/
def P4082240088297523551.Spec : Prop :=
  ∀ n, P4082240088297523551.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P5940111970902563231

`A000005(n+1)*A105070(A000005(n+1)²)`
-/

namespace A229253.P5940111970902563231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A105070 (A000005 (n + 1) ^ 2).toNat

end

end A229253.P5940111970902563231

namespace A229253

/-- `A000005(n+1)*A105070(A000005(n+1)²)` -/
def P5940111970902563231.Spec : Prop :=
  ∀ n, P5940111970902563231.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P14467229787471072013

`A000005(n+1)*A207622(A000005(n+1)²)`
-/

namespace A229253.P14467229787471072013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A207622 (A000005 (n + 1) ^ 2).toNat

end

end A229253.P14467229787471072013

namespace A229253

/-- `A000005(n+1)*A207622(A000005(n+1)²)` -/
def P14467229787471072013.Spec : Prop :=
  ∀ n, P14467229787471072013.a n = A229253 (n + 1)

end A229253

/-! ## A229253.P15094589469916819412

`A000005(n+1)*A208754(A000005(n+1)²)`
-/

namespace A229253.P15094589469916819412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A208754 (A000005 (n + 1) ^ 2).toNat

end

end A229253.P15094589469916819412

namespace A229253

/-- `A000005(n+1)*A208754(A000005(n+1)²)` -/
def P15094589469916819412.Spec : Prop :=
  ∀ n, P15094589469916819412.a n = A229253 (n + 1)

end A229253

/-!
# A229254: Numbers k such that k and k+2 have the same number (A000005) and sum of divisors (A000203).

The programs for A229254, there is no canonical definition to state claims against.
-/

/-! ## A229254.P13461343532347578600

`∩[A007373(n+1), A065064(n+1)]`
-/

namespace A229254.P13461343532347578600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229254.P13461343532347578600

/-! ## A229254.P11121008699740266658

`∩[A055574(n+1)-1, A065064(n+1)]`
-/

namespace A229254.P11121008699740266658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229254.P11121008699740266658

/-! ## A229254.P18176433480438086772

`filter[A065064(n+1), A115788(#)]`
-/

namespace A229254.P18176433480438086772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115788 (f1 j).toNat = 1) n)

end

end A229254.P18176433480438086772

/-!
# A229255: Integer nearest to (2^(n-1) + 3^(n-1))^(2*b(n)) where b(n) = (C1*n^(Pi)*exp(C2*n)*cos(C3*n+C4) + C5)*(C6*n^C7 + Pi/2) (see coefficients in comments).

The programs for A229255, there is no canonical definition to state claims against.
-/

/-! ## A229255.P12369038798177245827

`A006880(n+1)-A229256(n+1)`
-/

namespace A229255.P12369038798177245827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A229256 (n + 1)

end

end A229255.P12369038798177245827

/-! ## A229255.P18162346561212264537

`A122121(2*(n+1))-A229256(n+1)`
-/

namespace A229255.P18162346561212264537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A229256 (n + 1)

end

end A229255.P18162346561212264537

/-! ## A229255.P16043195837860871081

`A057754(n+1)-(A229256(n+1)+A057752(n+1))`
-/

namespace A229255.P16043195837860871081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057754 (n + 1) - (A229256 (n + 1) + A057752 (n + 1))

end

end A229255.P16043195837860871081

/-! ## A229255.P8913305726131816369

`A190802(n+1)-(A229256(n+1)+A106313(n+1))`
-/

namespace A229255.P8913305726131816369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - (A229256 (n + 1) + A106313 (n + 1))

end

end A229255.P8913305726131816369

/-! ## A229255.P15181184003528874370

`A223166(n+1)-(A229256(n+1)+A223167(n+1))`
-/

namespace A229255.P15181184003528874370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - (A229256 (n + 1) + A223167 (n + 1))

end

end A229255.P15181184003528874370

/-!
# A229256: Difference between PrimePi(10^n) and its approximation by A229255(n).

The programs for A229256, there is no canonical definition to state claims against.
-/

/-! ## A229256.P1988775506105791740

`A006880(n+1)-A229255(n+1)`
-/

namespace A229256.P1988775506105791740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A229255 (n + 1)

end

end A229256.P1988775506105791740

/-! ## A229256.P18259280025089345577

`A122121(2*(n+1))-A229255(n+1)`
-/

namespace A229256.P18259280025089345577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * (n + 1)) - A229255 (n + 1)

end

end A229256.P18259280025089345577

/-! ## A229256.P3327852240911614446

`A190802(n+1)-(A229255(n+1)+A106313(n+1))`
-/

namespace A229256.P3327852240911614446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190802 (n + 1) - (A229255 (n + 1) + A106313 (n + 1))

end

end A229256.P3327852240911614446

/-! ## A229256.P18219653623670380671

`A223166(n+1)-(A229255(n+1)+A223167(n+1))`
-/

namespace A229256.P18219653623670380671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (n + 1) - (A229255 (n + 1) + A223167 (n + 1))

end

end A229256.P18219653623670380671

/-! ## A229256.P7300488126169680400

`A227693(n+1)+A227694(n+1)-A229255(n+1)`
-/

namespace A229256.P7300488126169680400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227693 (n + 1) + (A227694 (n + 1) - A229255 (n + 1))

end

end A229256.P7300488126169680400

/-!
# A229257: O.g.f.: Sum_{n>=0} x^n / Product_{k=1..n} (1 - n^2*k*x).

The programs for A229257, there is no canonical definition to state claims against.
-/

/-! ## A229257.P5971472072759348058

`A062298(A070932(n+1)+A000275(n))`
-/

namespace A229257.P5971472072759348058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A070932 (n + 1) + A000275 n).toNat

end

end A229257.P5971472072759348058

/-! ## A229257.P5946116324936131992

`A062298(A249156(n+1)+A000275(n))`
-/

namespace A229257.P5946116324936131992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A249156 (n + 1) + A000275 n).toNat

end

end A229257.P5946116324936131992

/-!
# A229258: O.g.f.: Sum_{n>=0} n! * x^n / Product_{k=1..n} (1 - n^2*k*x).

The programs for A229258, there is no canonical definition to state claims against.
-/

/-! ## A229258.P16097932040124791119

`A184061(3^∑[∑{e}[n, #]])`
-/

namespace A229258.P16097932040124791119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A229258.P16097932040124791119

/-!
# A229259: O.g.f.: Sum_{n>=0} n! * n^n * x^n / Product_{k=1..n} (1 - n^2*k*x).

The programs for A229259, there is no canonical definition to state claims against.
-/

/-! ## A229259.P13221680259778400845

`or(A050167(A318617(n)), A193129(n+1))`
-/

namespace A229259.P13221680259778400845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050167 (A318617 n).toNat) (A193129 (n + 1))

end

end A229259.P13221680259778400845

/-!
# A229261: O.g.f.: Sum_{n>=0} n^(2*n) * x^n / Product_{k=1..n} (1 - n^2*k*x).

The programs for A229261, there is no canonical definition to state claims against.
-/

/-! ## A229261.P975352242608644424

`A108458(∑[9*n-3]+4+n)`
-/

namespace A229261.P975352242608644424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (∑ j ∈ Finset.range (n + 1), f1 j + 4 + (n : ℤ)).toNat

end

end A229261.P975352242608644424

/-!
# A229263: E.g.f.: Product_{n>=1} cosh(x^n).

The programs for A229263, there is no canonical definition to state claims against.
-/

/-! ## A229263.P13894299891300871450

`A016813(A001147(n)*A279683(n))`
-/

namespace A229263.P13894299891300871450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A001147 n * A279683 n).toNat

end

end A229263.P13894299891300871450

/-!
# A229264: Primes in A065387 in the order of their appearance.

The programs for A229264, there is no canonical definition to state claims against.
-/

/-! ## A229264.P11856270374951646934

`p?[A000010(n+1)+A000203(n+1)]`
-/

namespace A229264.P11856270374951646934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229264.P11856270374951646934

/-! ## A229264.P12919220824196495013

`p?[A152677(n+1)+A000010(A028982(n+1))]`
-/

namespace A229264.P12919220824196495013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152677 (n + 1) + A000010 (A028982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229264.P12919220824196495013

/-! ## A229264.P13119523481745379417

`A000010(A038344(n+1))+A000203(A038344(n+1))`
-/

namespace A229264.P13119523481745379417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038344 (n + 1)).toNat + A000203 (A038344 (n + 1)).toNat

end

end A229264.P13119523481745379417

/-! ## A229264.P8568180056780102439

`p?[A051709(n+1)+2*(n+1)]`
-/

namespace A229264.P8568180056780102439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229264.P8568180056780102439

/-! ## A229264.P1941227637852393747

`p?[A000203(n+1)+A002088(n+1)-A002088(n)]`
-/

namespace A229264.P1941227637852393747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A002088 (n + 1) - A002088 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229264.P1941227637852393747

/-!
# A229265: Numbers k such that sigma(k) + tau(k) + phi(k) is a prime, where sigma(k) = A000203(k), tau(k) = A000005(k) and phi(k) = A000010(k).

The programs for A229265, there is no canonical definition to state claims against.
-/

/-! ## A229265.P4755335433459280946

`record[(n-1+dr(n)+n)²]*A158522(A158609(n))`
-/

namespace A229265.P4755335433459280946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 + (SequenceMachineLib.digitalRoot (n : ℤ) + n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A158522 (A158609 n).toNat

end

end A229265.P4755335433459280946

/-!
# A229266: Primes of the form sigma(k) + tau(k) + phi(k), where sigma(k) = A000203(k), tau(k) = A000005(k) and phi(k) = A000010(k).

The programs for A229266, there is no canonical definition to state claims against.
-/

/-! ## A229266.P16426657526663294514

`p?[A233541(A004277(n))]`
-/

namespace A229266.P16426657526663294514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229266.P16426657526663294514

/-! ## A229266.P10156729809608779586

`p?[A233541(A103517(n))]`
-/

namespace A229266.P10156729809608779586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229266.P10156729809608779586

/-! ## A229266.P8930907199081787964

`A233541(A229265(n+1))`
-/

namespace A229266.P8930907199081787964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (A229265 (n + 1)).toNat

end

end A229266.P8930907199081787964

/-! ## A229266.P588788490753548440

`p?[A233541(∑[A109613(n)])]`
-/

namespace A229266.P588788490753548440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229266.P588788490753548440

/-! ## A229266.P16393923544930016266

`p?[A233541(A028982(n+1))]`
-/

namespace A229266.P16393923544930016266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (A028982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229266.P16393923544930016266

/-!
# A229267: Number of lattice paths from {n}^n to {0}^n using steps that decrement one component or all components by 1.

The programs for A229267, there is no canonical definition to state claims against.
-/

/-! ## A229267.P13995610333664832823

`A229142(∑[4*n])`
-/

namespace A229267.P13995610333664832823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229267.P13995610333664832823

/-! ## A229267.P7913103138619780612

`C(A229142(2*lcm(n, n+1)), A229142(n))`
-/

namespace A229267.P7913103138619780612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A229142 (2 * Nat.lcm n (n + 1))).toNat (A229142 n).toNat

end

end A229267.P7913103138619780612

/-!
# A229268: Primes of the form sigma(k) - tau(k), where sigma(k) = A000203(k) and tau(k) = A000005(k).

The programs for A229268, there is no canonical definition to state claims against.
-/

/-! ## A229268.P17689482856312847364

`A000203(A065061(n+1))-A000005(A065061(n+1))`
-/

namespace A229268.P17689482856312847364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065061 (n + 1)).toNat - A000005 (A065061 (n + 1)).toNat

end

end A229268.P17689482856312847364

/-! ## A229268.P9865092282682799295

`A065608(A065061(n+1))`
-/

namespace A229268.P9865092282682799295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (A065061 (n + 1)).toNat

end

end A229268.P9865092282682799295

/-! ## A229268.P6145964527630323833

`p?[∑{d}[A184636(n+1), #-1]]`
-/

namespace A229268.P6145964527630323833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184636 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229268.P6145964527630323833

/-! ## A229268.P4856278621863859686

`p?[∑{d}[A249096(n+1), #-1]]`
-/

namespace A229268.P4856278621863859686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229268.P4856278621863859686

/-! ## A229268.P13828488916842274332

`p?[A086293(n+1)-A086292(n+1)]`
-/

namespace A229268.P13828488916842274332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086293 (n + 1) - A086292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229268.P13828488916842274332

/-!
# A229269: Numbers k for which k - k' is prime, k' being the arithmetic derivative of k.

The programs for A229269, there is no canonical definition to state claims against.
-/

/-! ## A229269.P13562105555421814615

`A088710(ceil(abs(γ-n)))%A099343(n+2)`
-/

namespace A229269.P13562105555421814615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088710 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat) (A099343 (n + 2))

end

end A229269.P13562105555421814615

/-!
# A229271: Numbers k for which k + k' and k - k' are both prime, k' being the arithmetic derivative of k.

The programs for A229271, there is no canonical definition to state claims against.
-/

/-! ## A229271.P14305052089441294976

`∩[A165562(n+1), A229269(n+1)]`
-/

namespace A229271.P14305052089441294976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229271.P14305052089441294976

/-! ## A229271.P12001531893019230352

`A088711(A062399(n+1))`
-/

namespace A229271.P12001531893019230352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088711 (A062399 (n + 1)).toNat

end

end A229271.P12001531893019230352

/-! ## A229271.P1505451242400955101

`A090109(A088711(n+1))`
-/

namespace A229271.P1505451242400955101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A088711 (n + 1)).toNat

end

end A229271.P1505451242400955101

/-! ## A229271.P1912831101713706169

`A088711(A120126(n+1))`
-/

namespace A229271.P1912831101713706169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088711 (A120126 (n + 1)).toNat

end

end A229271.P1912831101713706169

/-! ## A229271.P14497690707027798416

`A088711(A351870(n+1))`
-/

namespace A229271.P14497690707027798416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088711 (A351870 (n + 1)).toNat

end

end A229271.P14497690707027798416

/-!
# A229272: Numbers n for which n' + n and n' - n are both prime, n' being the arithmetic derivative of n.

The programs for A229272, there is no canonical definition to state claims against.
-/

/-! ## A229272.P11860332610162415044

`∩[A165562(n+1), A229270(n+1)]`
-/

namespace A229272.P11860332610162415044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229272.P11860332610162415044

/-! ## A229272.P6691941918499660468

`A350373(eq[A245760(3*n+2), A291564(n+1)])`
-/

namespace A229272.P6691941918499660468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229272.P6691941918499660468

/-!
# A229273: Composite squarefree numbers n such that p-tau(n) divides n-sigma(n), where p are the prime factors of n, tau(n) = A000005(n) and sigma(n) = A000203(n).

The programs for A229273, there is no canonical definition to state claims against.
-/

/-! ## A229273.P2985597179564836047

`A054269(A002110(n))+A045546(2*(n+2))`
-/

namespace A229273.P2985597179564836047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054269 (A002110 n).toNat + A045546 (2 * (n + 2))

end

end A229273.P2985597179564836047

/-!
# A229274: Composite squarefree numbers n such that p+tau(n) divides n-sigma(n), where p are the prime factors of n, tau(n) = A000005(n) and sigma(n) = A000203(n).

The programs for A229274, the canonical program `A229274.P5680792210633206878` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229274 has offset 1).

The definition of A229274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229274.P5680792210633206878

`3*p?[A047370(3*n+5)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229274

/-- `3*p?[A047370(3*n+5)]` -/
def P5680792210633206878.Spec : Prop :=
  ∀ n, P5680792210633206878.a n = A229274 (n + 1)

theorem P5680792210633206878.correct : P5680792210633206878.Spec := by
  intro n
  simp only [A229274, Nat.add_sub_cancel]

end A229274

/-! ## A229274.P3618917562297826710

`3*p?[A047327(2*(n+2)+1)]`
-/

namespace A229274.P3618917562297826710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (2 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229274.P3618917562297826710

namespace A229274

/-- `3*p?[A047327(2*(n+2)+1)]` -/
def P3618917562297826710.Spec : Prop :=
  ∀ n, P3618917562297826710.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P16729909373095431580

`3*p?[A004277(3*n)+n+3]`
-/

namespace A229274.P16729909373095431580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) + (n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229274.P16729909373095431580

namespace A229274

/-- `3*p?[A004277(3*n)+n+3]` -/
def P16729909373095431580.Spec : Prop :=
  ∀ n, P16729909373095431580.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P17340660751537504744

`∩[A063466(n+1), A017005(n)]`
-/

namespace A229274.P17340660751537504744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P17340660751537504744

namespace A229274

/-- `∩[A063466(n+1), A017005(n)]` -/
def P17340660751537504744.Spec : Prop :=
  ∀ n, (P17340660751537504744.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P17850294932066512364

`∩[A063534(n+1), A017005(n)]`
-/

namespace A229274.P17850294932066512364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P17850294932066512364

namespace A229274

/-- `∩[A063534(n+1), A017005(n)]` -/
def P17850294932066512364.Spec : Prop :=
  ∀ n, (P17850294932066512364.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P7221863620337228038

`∩[A026476(n+1), A063466(n+1)]`
-/

namespace A229274.P7221863620337228038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P7221863620337228038

namespace A229274

/-- `∩[A026476(n+1), A063466(n+1)]` -/
def P7221863620337228038.Spec : Prop :=
  ∀ n, (P7221863620337228038.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P1374440490885209014

`∩[A026476(n+1), A063534(n+1)]`
-/

namespace A229274.P1374440490885209014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P1374440490885209014

namespace A229274

/-- `∩[A026476(n+1), A063534(n+1)]` -/
def P1374440490885209014.Spec : Prop :=
  ∀ n, (P1374440490885209014.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P13250220893101955593

`∩[A017005(2*n+1), A177024(n+2)]`
-/

namespace A229274.P13250220893101955593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177024 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P13250220893101955593

namespace A229274

/-- `∩[A017005(2*n+1), A177024(n+2)]` -/
def P13250220893101955593.Spec : Prop :=
  ∀ n, (P13250220893101955593.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P6664072220934711069

`3*record[A006530(A047343(2*n+n+8))]`
-/

namespace A229274.P6664072220934711069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047343 (2 * n + (n + 8))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229274.P6664072220934711069

namespace A229274

/-- `3*record[A006530(A047343(2*n+n+8))]` -/
def P6664072220934711069.Spec : Prop :=
  ∀ n, P6664072220934711069.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P13887346935514795002

`filter[A026476(3*n+1), A353481(#)]`
-/

namespace A229274.P13887346935514795002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026476 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A229274.P13887346935514795002

namespace A229274

/-- `filter[A026476(3*n+1), A353481(#)]` -/
def P13887346935514795002.Spec : Prop :=
  ∀ n, P13887346935514795002.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P10302541574699573242

`A019426(A045437(n+2))+2`
-/

namespace A229274.P10302541574699573242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A045437 (n + 2)).toNat + 2

end

end A229274.P10302541574699573242

namespace A229274

/-- `A019426(A045437(n+2))+2` -/
def P10302541574699573242.Spec : Prop :=
  ∀ n, P10302541574699573242.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P7354963156132911780

`3*p?[A047286(A004769(n))]`
-/

namespace A229274.P7354963156132911780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047286 (A004769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229274.P7354963156132911780

namespace A229274

/-- `3*p?[A047286(A004769(n))]` -/
def P7354963156132911780.Spec : Prop :=
  ∀ n, P7354963156132911780.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P837175524122449310

`filter[A307201(2*n), A353475(#)]`
-/

namespace A229274.P837175524122449310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307201 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353475 (f1 j).toNat = 1) n)

end

end A229274.P837175524122449310

namespace A229274

/-- `filter[A307201(2*n), A353475(#)]` -/
def P837175524122449310.Spec : Prop :=
  ∀ n, P837175524122449310.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P8375918446751858612

`A000265(6*A045437(n+2))`
-/

namespace A229274.P8375918446751858612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (6 * A045437 (n + 2)).toNat

end

end A229274.P8375918446751858612

namespace A229274

/-- `A000265(6*A045437(n+2))` -/
def P8375918446751858612.Spec : Prop :=
  ∀ n, P8375918446751858612.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P16801707699269112627

`A276148(A045437(n+2))`
-/

namespace A229274.P16801707699269112627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276148 (A045437 (n + 2)).toNat

end

end A229274.P16801707699269112627

namespace A229274

/-- `A276148(A045437(n+2))` -/
def P16801707699269112627.Spec : Prop :=
  ∀ n, P16801707699269112627.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P12297602987195529062

`A276148(p?[A017017(n+1)])`
-/

namespace A229274.P12297602987195529062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276148 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229274.P12297602987195529062

namespace A229274

/-- `A276148(p?[A017017(n+1)])` -/
def P12297602987195529062.Spec : Prop :=
  ∀ n, P12297602987195529062.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P8139964065092263654

`∩[A004621(n+1), A390100(n+1)]`
-/

namespace A229274.P8139964065092263654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P8139964065092263654

namespace A229274

/-- `∩[A004621(n+1), A390100(n+1)]` -/
def P8139964065092263654.Spec : Prop :=
  ∀ n, (P8139964065092263654.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P14352811377911174250

`∩[A140381(n+1), A390100(n+1)]`
-/

namespace A229274.P14352811377911174250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229274.P14352811377911174250

namespace A229274

/-- `∩[A140381(n+1), A390100(n+1)]` -/
def P14352811377911174250.Spec : Prop :=
  ∀ n, (P14352811377911174250.a n : ℤ) = A229274 (n + 1)

end A229274

/-! ## A229274.P12746586660984775600

`A008486(p?[7*n+10])`
-/

namespace A229274.P12746586660984775600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229274.P12746586660984775600

namespace A229274

/-- `A008486(p?[7*n+10])` -/
def P12746586660984775600.Spec : Prop :=
  ∀ n, P12746586660984775600.a n = A229274 (n + 1)

end A229274

/-! ## A229274.P1971551838672507995

`A047270(p?[7*n+10])`
-/

namespace A229274.P1971551838672507995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229274.P1971551838672507995

namespace A229274

/-- `A047270(p?[7*n+10])` -/
def P1971551838672507995.Spec : Prop :=
  ∀ n, P1971551838672507995.a n = A229274 (n + 1)

end A229274

/-!
# A229276: Composite squarefree numbers n such that p-tau(n) divides n+sigma(n), where p are the prime factors of n, tau(n) = A000005(n) and sigma(n) = A000203(n).

The programs for A229276, there is no canonical definition to state claims against.
-/

/-! ## A229276.P2587168620624295452

`A118957(A000219(comp[4*n]))`
-/

namespace A229276.P2587168620624295452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118957 (A000219 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A229276.P2587168620624295452

/-!
# A229277: Number of ascending runs in {1,...,3}^n.

The programs for A229277, the canonical program `A229277.P15013331208665363495` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229277 has offset 0).

The definition of A229277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229277.P15013331208665363495

`6*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229277

/-- `6*a(n-1)-9*a(n-2)` -/
def P15013331208665363495.Spec : Prop :=
  ∀ n, P15013331208665363495.a n = A229277 n

theorem P15013331208665363495.correct : P15013331208665363495.Spec := by
  intro n
  simp only [A229277]

end A229277

/-! ## A229277.P13213616167757576472

`floor(3^(n-1)*Δ[n²])`
-/

namespace A229277.P13213616167757576472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A229277.P13213616167757576472

namespace A229277

/-- `floor(3^(n-1)*Δ[n²])` -/
def P13213616167757576472.Spec : Prop :=
  ∀ n, P13213616167757576472.a n = A229277 n

end A229277

/-! ## A229277.P16974644490436059321

`floor(3^(n-1))*comp[lcm(2, n)]`
-/

namespace A229277.P16974644490436059321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A229277.P16974644490436059321

namespace A229277

/-- `floor(3^(n-1))*comp[lcm(2, n)]` -/
def P16974644490436059321.Spec : Prop :=
  ∀ n, P16974644490436059321.a n = A229277 n

end A229277

/-! ## A229277.P11241107240334909966

`floor(3^(n-1))*record[xor(1, n)]`
-/

namespace A229277.P11241107240334909966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A229277.P11241107240334909966

namespace A229277

/-- `floor(3^(n-1))*record[xor(1, n)]` -/
def P11241107240334909966.Spec : Prop :=
  ∀ n, P11241107240334909966.a n = A229277 n

end A229277

/-! ## A229277.P13536962553113592293

`or(1, 2*n)*floor(3^(n-1))`
-/

namespace A229277.P13536962553113592293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A229277.P13536962553113592293

namespace A229277

/-- `or(1, 2*n)*floor(3^(n-1))` -/
def P13536962553113592293.Spec : Prop :=
  ∀ n, P13536962553113592293.a n = A229277 n

end A229277

/-! ## A229277.P17250981359330823082

`xor(1, 2*n)*floor(3^(n-1))`
-/

namespace A229277.P17250981359330823082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A229277.P17250981359330823082

namespace A229277

/-- `xor(1, 2*n)*floor(3^(n-1))` -/
def P17250981359330823082.Spec : Prop :=
  ∀ n, P17250981359330823082.a n = A229277 n

end A229277

/-! ## A229277.P18352609054491794341

`round(3^(n-1)*or(1, 2*n))`
-/

namespace A229277.P18352609054491794341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.lor 1 (2 * n) : ℚ))

end

end A229277.P18352609054491794341

namespace A229277

/-- `round(3^(n-1)*or(1, 2*n))` -/
def P18352609054491794341.Spec : Prop :=
  ∀ n, P18352609054491794341.a n = A229277 n

end A229277

/-! ## A229277.P10135990450575659755

`round(3^(n-1)*xor(1, 2*n))`
-/

namespace A229277.P10135990450575659755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.xor 1 (2 * n) : ℚ))

end

end A229277.P10135990450575659755

namespace A229277

/-- `round(3^(n-1)*xor(1, 2*n))` -/
def P10135990450575659755.Spec : Prop :=
  ∀ n, P10135990450575659755.a n = A229277 n

end A229277

/-! ## A229277.P4400240462881520921

`lcm(3, floor((2*n+1)*3^(n-1)))`
-/

namespace A229277.P4400240462881520921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(2 * n + 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A229277.P4400240462881520921

namespace A229277

/-- `lcm(3, floor((2*n+1)*3^(n-1)))` -/
def P4400240462881520921.Spec : Prop :=
  ∀ n, (P4400240462881520921.a n : ℤ) = A229277 n

end A229277

/-! ## A229277.P9374636179239202496

`(2*n+1)*record[3*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A229277.P9374636179239202496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229277.P9374636179239202496

namespace A229277

/-- `(2*n+1)*record[3*a(n-2)]` -/
def P9374636179239202496.Spec : Prop :=
  ∀ n, (P9374636179239202496.a n : ℤ) = A229277 n

end A229277

/-! ## A229277.P8225848461199494225

`C(2*n+1, 2*n)*floor(3^(n-1))`
-/

namespace A229277.P8225848461199494225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (2 * n) : ℤ) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A229277.P8225848461199494225

namespace A229277

/-- `C(2*n+1, 2*n)*floor(3^(n-1))` -/
def P8225848461199494225.Spec : Prop :=
  ∀ n, P8225848461199494225.a n = A229277 n

end A229277

/-! ## A229277.P2618366146203467410

`round(3^(n-1)*C(2*n+1, 2*n))`
-/

namespace A229277.P2618366146203467410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 1) (2 * n) : ℚ))

end

end A229277.P2618366146203467410

namespace A229277

/-- `round(3^(n-1)*C(2*n+1, 2*n))` -/
def P2618366146203467410.Spec : Prop :=
  ∀ n, P2618366146203467410.a n = A229277 n

end A229277

/-! ## A229277.P12727408228562271817

`Δ[n²]*A140429(n)`
-/

namespace A229277.P12727408228562271817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A140429 n

end

end A229277.P12727408228562271817

namespace A229277

/-- `Δ[n²]*A140429(n)` -/
def P12727408228562271817.Spec : Prop :=
  ∀ n, P12727408228562271817.a n = A229277 n

end A229277

/-! ## A229277.P951488396247137225

`Δ[n²]*Δ[A124302(n)]`
-/

namespace A229277.P951488396247137225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A229277.P951488396247137225

namespace A229277

/-- `Δ[n²]*Δ[A124302(n)]` -/
def P951488396247137225.Spec : Prop :=
  ∀ n, P951488396247137225.a n = A229277 n

end A229277

/-! ## A229277.P5101172828493043275

`A081038(n)-A025192(n)`
-/

namespace A229277.P5101172828493043275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - A025192 n

end

end A229277.P5101172828493043275

namespace A229277

/-- `A081038(n)-A025192(n)` -/
def P5101172828493043275.Spec : Prop :=
  ∀ n, P5101172828493043275.a n = A229277 n

end A229277

/-! ## A229277.P17086834634741227759

`A027261(n)-A133494(n)`
-/

namespace A229277.P17086834634741227759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 n - A133494 n

end

end A229277.P17086834634741227759

namespace A229277

/-- `A027261(n)-A133494(n)` -/
def P17086834634741227759.Spec : Prop :=
  ∀ n, P17086834634741227759.a n = A229277 n

end A229277

/-! ## A229277.P2686747913116064895

`A081038(n)-∑[A052156(n)]`
-/

namespace A229277.P2686747913116064895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229277.P2686747913116064895

namespace A229277

/-- `A081038(n)-∑[A052156(n)]` -/
def P2686747913116064895.Spec : Prop :=
  ∀ n, P2686747913116064895.a n = A229277 n

end A229277

/-! ## A229277.P17017828553644445249

`A081038(n)-Δ[A094388(n)]`
-/

namespace A229277.P17017828553644445249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081038 n - (f1 (n + 1) - f1 n)

end

end A229277.P17017828553644445249

namespace A229277

/-- `A081038(n)-Δ[A094388(n)]` -/
def P17017828553644445249.Spec : Prop :=
  ∀ n, P17017828553644445249.a n = A229277 n

end A229277

/-!
# A229278: Number of ascending runs in {1,...,4}^n.

The programs for A229278, the canonical program `A229278.P3466001439115977551` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229278 has offset 0).

The definition of A229278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229278.P3466001439115977551

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=4, a(2)=26`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229278

/-- `8*a(n-1)-16*a(n-2)` -/
def P3466001439115977551.Spec : Prop :=
  ∀ n, P3466001439115977551.a n = A229278 n

theorem P3466001439115977551.correct : P3466001439115977551.Spec := by
  intro n
  simp only [A229278]

end A229278

/-! ## A229278.P10909966351671305360

`(5*n+3)/2*A131577(n)²`
-/

namespace A229278.P10909966351671305360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 3 : ℚ) / 2 * (A131577 n ^ 2 : ℚ)

end

end A229278.P10909966351671305360

namespace A229278

/-- `(5*n+3)/2*A131577(n)²` -/
def P10909966351671305360.Spec : Prop :=
  ∀ n, P10909966351671305360.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P3053979079981189198

`record[A009545(n)]*A026741(5*n+3)`
-/

namespace A229278.P3053979079981189198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A026741 (5 * n + 3)

end

end A229278.P3053979079981189198

namespace A229278

/-- `record[A009545(n)]*A026741(5*n+3)` -/
def P3053979079981189198.Spec : Prop :=
  ∀ n, P3053979079981189198.a n = A229278 n

end A229278

/-! ## A229278.P5794741632138588221

`(A339252(2*n)-A045891(2*n))/2`
-/

namespace A229278.P5794741632138588221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339252 (2 * n) - A045891 (2 * n) : ℚ) / 2

end

end A229278.P5794741632138588221

namespace A229278

/-- `(A339252(2*n)-A045891(2*n))/2` -/
def P5794741632138588221.Spec : Prop :=
  ∀ n, P5794741632138588221.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P729719852014150463

`(A034007(2*n+1)+A001787(2*n))/2`
-/

namespace A229278.P729719852014150463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034007 (2 * n + 1) + A001787 (2 * n) : ℚ) / 2

end

end A229278.P729719852014150463

namespace A229278

/-- `(A034007(2*n+1)+A001787(2*n))/2` -/
def P729719852014150463.Spec : Prop :=
  ∀ n, P729719852014150463.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P15618548764829367615

`A057711(2*n)+A034007(2*n+1)/2`
-/

namespace A229278.P15618548764829367615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057711 (2 * n) : ℚ) + (A034007 (2 * n + 1) : ℚ) / 2

end

end A229278.P15618548764829367615

namespace A229278

/-- `A057711(2*n)+A034007(2*n+1)/2` -/
def P15618548764829367615.Spec : Prop :=
  ∀ n, P15618548764829367615.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P12163795387826014177

`(A139756(2*n+1)+A034007(2*n+1))/2`
-/

namespace A229278.P12163795387826014177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139756 (2 * n + 1) + A034007 (2 * n + 1) : ℚ) / 2

end

end A229278.P12163795387826014177

namespace A229278

/-- `(A139756(2*n+1)+A034007(2*n+1))/2` -/
def P12163795387826014177.Spec : Prop :=
  ∀ n, P12163795387826014177.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P9390359588920362846

`A000302(n)/A008574(n)*A147875(n)`
-/

namespace A229278.P9390359588920362846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / (A008574 n : ℚ) * (A147875 n : ℚ)

end

end A229278.P9390359588920362846

namespace A229278

/-- `A000302(n)/A008574(n)*A147875(n)` -/
def P9390359588920362846.Spec : Prop :=
  ∀ n, P9390359588920362846.a n = (A229278 n : ℚ)

end A229278

/-! ## A229278.P644458221990237963

`(A139756(n)+A001787(n+1))*A131577(n)`
-/

namespace A229278.P644458221990237963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139756 n + A001787 (n + 1)) * A131577 n

end

end A229278.P644458221990237963

namespace A229278

/-- `(A139756(n)+A001787(n+1))*A131577(n)` -/
def P644458221990237963.Spec : Prop :=
  ∀ n, P644458221990237963.a n = A229278 n

end A229278

/-! ## A229278.P7607913765551720923

`(A097067(n)+A001787(n+1))*A034008(n+1)`
-/

namespace A229278.P7607913765551720923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097067 n + A001787 (n + 1)) * A034008 (n + 1)

end

end A229278.P7607913765551720923

namespace A229278

/-- `(A097067(n)+A001787(n+1))*A034008(n+1)` -/
def P7607913765551720923.Spec : Prop :=
  ∀ n, P7607913765551720923.a n = A229278 n

end A229278

/-! ## A229278.P11300450675264644313

`(A139756(n)+A001787(n+1))*A034008(n+1)`
-/

namespace A229278.P11300450675264644313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139756 n + A001787 (n + 1)) * A034008 (n + 1)

end

end A229278.P11300450675264644313

namespace A229278

/-- `(A139756(n)+A001787(n+1))*A034008(n+1)` -/
def P11300450675264644313.Spec : Prop :=
  ∀ n, P11300450675264644313.a n = A229278 n

end A229278

/-! ## A229278.P2566516410378271176

`A049610(2*n+1)+A034008(n+1)*A049610(n+1)`
-/

namespace A229278.P2566516410378271176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n + 1) + A034008 (n + 1) * A049610 (n + 1)

end

end A229278.P2566516410378271176

namespace A229278

/-- `A049610(2*n+1)+A034008(n+1)*A049610(n+1)` -/
def P2566516410378271176.Spec : Prop :=
  ∀ n, P2566516410378271176.a n = A229278 n

end A229278

/-! ## A229278.P1462904378453739265

`A049610(2*n+1)+A049610(n+1)*A166444(n+1)`
-/

namespace A229278.P1462904378453739265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n + 1) + A049610 (n + 1) * A166444 (n + 1)

end

end A229278.P1462904378453739265

namespace A229278

/-- `A049610(2*n+1)+A049610(n+1)*A166444(n+1)` -/
def P1462904378453739265.Spec : Prop :=
  ∀ n, P1462904378453739265.a n = A229278 n

end A229278

/-!
# A229279: Number of ascending runs in {1,...,5}^n.

The programs for A229279, the canonical program `A229279.P17986642058884864776` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229279 has offset 0).

The definition of A229279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229279.P17986642058884864776

`10*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=5, a(2)=40`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229279

/-- `10*a(n-1)-25*a(n-2)` -/
def P17986642058884864776.Spec : Prop :=
  ∀ n, P17986642058884864776.a n = A229279 n

theorem P17986642058884864776.correct : P17986642058884864776.Spec := by
  intro n
  simp only [A229279]

end A229279

/-! ## A229279.P1572127707122768436

`floor((2*n+n+2)*5^(n-1))`
-/

namespace A229279.P1572127707122768436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + (n + 2) : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A229279.P1572127707122768436

namespace A229279

/-- `floor((2*n+n+2)*5^(n-1))` -/
def P1572127707122768436.Spec : Prop :=
  ∀ n, P1572127707122768436.a n = A229279 n

end A229279

/-! ## A229279.P10398480396969518078

`A016789(n)*A100095(A004273(n))`
-/

namespace A229279.P10398480396969518078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A100095 (A004273 n).toNat

end

end A229279.P10398480396969518078

namespace A229279

/-- `A016789(n)*A100095(A004273(n))` -/
def P10398480396969518078.Spec : Prop :=
  ∀ n, P10398480396969518078.a n = A229279 n

end A229279

/-! ## A229279.P2902388760032556338

`A000351(n)+A005053(n)*A023443(n)`
-/

namespace A229279.P2902388760032556338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + A005053 n * A023443 n

end

end A229279.P2902388760032556338

namespace A229279

/-- `A000351(n)+A005053(n)*A023443(n)` -/
def P2902388760032556338.Spec : Prop :=
  ∀ n, P2902388760032556338.a n = A229279 n

end A229279

/-! ## A229279.P11681936975389665386

`A229079(eq[5, A025581(n)])`
-/

namespace A229279.P11681936975389665386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229279.P11681936975389665386

namespace A229279

/-- `A229079(eq[5, A025581(n)])` -/
def P11681936975389665386.Spec : Prop :=
  ∀ n, P11681936975389665386.a n = A229279 n

end A229279

/-! ## A229279.P17398055911434049154

`A229079(eq[5, A195664(n)])`
-/

namespace A229279.P17398055911434049154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229279.P17398055911434049154

namespace A229279

/-- `A229079(eq[5, A195664(n)])` -/
def P17398055911434049154.Spec : Prop :=
  ∀ n, P17398055911434049154.a n = A229279 n

end A229279

/-! ## A229279.P6533836777828104519

`A229079(Δ[A023551(n+1)])`
-/

namespace A229279.P6533836777828104519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (f1 (n + 1) - f1 n).toNat

end

end A229279.P6533836777828104519

namespace A229279

/-- `A229079(Δ[A023551(n+1)])` -/
def P6533836777828104519.Spec : Prop :=
  ∀ n, P6533836777828104519.a n = A229279 n

end A229279

/-! ## A229279.P2201358312616975193

`A229079(A005843(n)+A056000(n)+15)`
-/

namespace A229279.P2201358312616975193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A005843 n + (A056000 n + 15)).toNat

end

end A229279.P2201358312616975193

namespace A229279

/-- `A229079(A005843(n)+A056000(n)+15)` -/
def P2201358312616975193.Spec : Prop :=
  ∀ n, P2201358312616975193.a n = A229279 n

end A229279

/-!
# A229280: Number of ascending runs in {1,...,6}^n.

The programs for A229280, the canonical program `A229280.P9690600279249775101` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229280 has offset 0).

The definition of A229280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229280.P9690600279249775101

`12*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=6, a(2)=57`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229280

/-- `12*a(n-1)-36*a(n-2)` -/
def P9690600279249775101.Spec : Prop :=
  ∀ n, P9690600279249775101.a n = A229280 n

theorem P9690600279249775101.correct : P9690600279249775101.Spec := by
  intro n
  simp only [A229280]

end A229280

/-! ## A229280.P8004125030496025308

`A229079(eq[6, A025581(n)])`
-/

namespace A229280.P8004125030496025308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229280.P8004125030496025308

namespace A229280

/-- `A229079(eq[6, A025581(n)])` -/
def P8004125030496025308.Spec : Prop :=
  ∀ n, P8004125030496025308.a n = A229280 n

end A229280

/-! ## A229280.P668741106815415119

`A229079(eq[6, A195664(n)])`
-/

namespace A229280.P668741106815415119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229280.P668741106815415119

namespace A229280

/-- `A229079(eq[6, A195664(n)])` -/
def P668741106815415119.Spec : Prop :=
  ∀ n, P668741106815415119.a n = A229280 n

end A229280

/-! ## A229280.P14674435698249695930

`A229079(A055999(n+4)-1)`
-/

namespace A229280.P14674435698249695930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A055999 (n + 4) - 1).toNat

end

end A229280.P14674435698249695930

namespace A229280

/-- `A229079(A055999(n+4)-1)` -/
def P14674435698249695930.Spec : Prop :=
  ∀ n, P14674435698249695930.a n = A229280 n

end A229280

/-! ## A229280.P35505084926120056

`A229079(A000217(n+7)-7)`
-/

namespace A229280.P35505084926120056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 7) - 7).toNat

end

end A229280.P35505084926120056

namespace A229280

/-- `A229079(A000217(n+7)-7)` -/
def P35505084926120056.Spec : Prop :=
  ∀ n, P35505084926120056.a n = A229280 n

end A229280

/-! ## A229280.P3629310815337005218

`A229079(eq[7, A004736(n+1)])`
-/

namespace A229280.P3629310815337005218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229280.P3629310815337005218

namespace A229280

/-- `A229079(eq[7, A004736(n+1)])` -/
def P3629310815337005218.Spec : Prop :=
  ∀ n, P3629310815337005218.a n = A229280 n

end A229280

/-! ## A229280.P9136988222130358088

`A229079(Δ[Δ[A055832(n+5)]])`
-/

namespace A229280.P9136988222130358088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (f1 (n + 1) - f1 n).toNat

end

end A229280.P9136988222130358088

namespace A229280

/-- `A229079(Δ[Δ[A055832(n+5)]])` -/
def P9136988222130358088.Spec : Prop :=
  ∀ n, P9136988222130358088.a n = A229280 n

end A229280

/-! ## A229280.P1070463231612515222

`A229079(Δ[A023551(n+2)]-1)`
-/

namespace A229280.P1070463231612515222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (f1 (n + 1) - f1 n - 1).toNat

end

end A229280.P1070463231612515222

namespace A229280

/-- `A229079(Δ[A023551(n+2)]-1)` -/
def P1070463231612515222.Spec : Prop :=
  ∀ n, P1070463231612515222.a n = A229280 n

end A229280

/-! ## A229280.P9280456876856901740

`A229079(A000124(n+6)+n-1)`
-/

namespace A229280.P9280456876856901740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A229280.P9280456876856901740

namespace A229280

/-- `A229079(A000124(n+6)+n-1)` -/
def P9280456876856901740.Spec : Prop :=
  ∀ n, P9280456876856901740.a n = A229280 n

end A229280

/-!
# A229281: Number of ascending runs in {1,...,7}^n.

The programs for A229281, the canonical program `A229281.P179141589418254236` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229281 has offset 0).

The definition of A229281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229281.P179141589418254236

`14*a(n-1)-49*a(n-2)` with `a(0)=0, a(1)=7, a(2)=77`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229281

/-- `14*a(n-1)-49*a(n-2)` -/
def P179141589418254236.Spec : Prop :=
  ∀ n, P179141589418254236.a n = A229281 n

theorem P179141589418254236.correct : P179141589418254236.Spec := by
  intro n
  simp only [A229281]

end A229281

/-! ## A229281.P7996986189246125610

`floor(7^(n-1))*A004273(A103517(n))`
-/

namespace A229281.P7996986189246125610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A004273 (A103517 n).toNat

end

end A229281.P7996986189246125610

namespace A229281

/-- `floor(7^(n-1))*A004273(A103517(n))` -/
def P7996986189246125610.Spec : Prop :=
  ∀ n, P7996986189246125610.a n = A229281 n

end A229281

/-! ## A229281.P6553063238619442392

`A229079(eq[7, A025581(n)])`
-/

namespace A229281.P6553063238619442392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229281.P6553063238619442392

namespace A229281

/-- `A229079(eq[7, A025581(n)])` -/
def P6553063238619442392.Spec : Prop :=
  ∀ n, P6553063238619442392.a n = A229281 n

end A229281

/-! ## A229281.P4571957423404944318

`A229079(eq[7, A195664(n)])`
-/

namespace A229281.P4571957423404944318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229281.P4571957423404944318

namespace A229281

/-- `A229079(eq[7, A195664(n)])` -/
def P4571957423404944318.Spec : Prop :=
  ∀ n, P4571957423404944318.a n = A229281 n

end A229281

/-! ## A229281.P13823813813074240114

`A229079(eq[8, A195663(n)])`
-/

namespace A229281.P13823813813074240114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229281.P13823813813074240114

namespace A229281

/-- `A229079(eq[8, A195663(n)])` -/
def P13823813813074240114.Spec : Prop :=
  ∀ n, P13823813813074240114.a n = A229281 n

end A229281

/-! ## A229281.P6983591064107752800

`A229079(A000217(n+8)-8)`
-/

namespace A229281.P6983591064107752800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 8) - 8).toNat

end

end A229281.P6983591064107752800

namespace A229281

/-- `A229079(A000217(n+8)-8)` -/
def P6983591064107752800.Spec : Prop :=
  ∀ n, P6983591064107752800.a n = A229281 n

end A229281

/-! ## A229281.P6472972225445276646

`A229079(eq[8, A004736(n+1)])`
-/

namespace A229281.P6472972225445276646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229281.P6472972225445276646

namespace A229281

/-- `A229079(eq[8, A004736(n+1)])` -/
def P6472972225445276646.Spec : Prop :=
  ∀ n, P6472972225445276646.a n = A229281 n

end A229281

/-!
# A229282: Number of ascending runs in {1,...,8}^n.

The programs for A229282, the canonical program `A229282.P10153737054531546493` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229282 has offset 0).

The definition of A229282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229282.P10153737054531546493

`floor(A098156(3*n+1)/4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229282

/-- `floor(A098156(3*n+1)/4)` -/
def P10153737054531546493.Spec : Prop :=
  ∀ n, P10153737054531546493.a n = A229282 n

theorem P10153737054531546493.correct : P10153737054531546493.Spec := by
  intro n
  simp only [A229282]

end A229282

/-! ## A229282.P9543805343180769605

`A045623(3*n)-A034007(3*n)`
-/

namespace A229282.P9543805343180769605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (3 * n) - A034007 (3 * n)

end

end A229282.P9543805343180769605

namespace A229282

/-- `A045623(3*n)-A034007(3*n)` -/
def P9543805343180769605.Spec : Prop :=
  ∀ n, P9543805343180769605.a n = A229282 n

end A229282

/-! ## A229282.P2628139692601138751

`A098156(A016777(n))/4*char[A060000(n+1)]`
-/

namespace A229282.P2628139692601138751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098156 (A016777 n).toNat : ℚ) / 4 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A229282.P2628139692601138751

namespace A229282

/-- `A098156(A016777(n))/4*char[A060000(n+1)]` -/
def P2628139692601138751.Spec : Prop :=
  ∀ n, P2628139692601138751.a n = (A229282 n : ℚ)

end A229282

/-! ## A229282.P6824077396948101368

`A229079(A000217(n+9)-9)`
-/

namespace A229282.P6824077396948101368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 9) - 9).toNat

end

end A229282.P6824077396948101368

namespace A229282

/-- `A229079(A000217(n+9)-9)` -/
def P6824077396948101368.Spec : Prop :=
  ∀ n, P6824077396948101368.a n = A229282 n

end A229282

/-! ## A229282.P3347739422587681112

`A229079(A161680(n+10)-9)`
-/

namespace A229282.P3347739422587681112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A161680 (n + 10) - 9).toNat

end

end A229282.P3347739422587681112

namespace A229282

/-- `A229079(A161680(n+10)-9)` -/
def P3347739422587681112.Spec : Prop :=
  ∀ n, P3347739422587681112.a n = A229282 n

end A229282

/-!
# A229283: Number of ascending runs in {1,...,9}^n.

The programs for A229283, the canonical program `A229283.P4334354610536318839` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229283 has offset 0).

The definition of A229283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229283.P4334354610536318839

`18*a(n-1)-81*a(n-2)` with `a(0)=0, a(1)=9, a(2)=126`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A229283

/-- `18*a(n-1)-81*a(n-2)` -/
def P4334354610536318839.Spec : Prop :=
  ∀ n, P4334354610536318839.a n = A229283 n

theorem P4334354610536318839.correct : P4334354610536318839.Spec := by
  intro n
  simp only [A229283]

end A229283

/-! ## A229283.P6919580088753299763

`record[A141413(n)]*A016897(n)`
-/

namespace A229283.P6919580088753299763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A016897 n

end

end A229283.P6919580088753299763

namespace A229283

/-- `record[A141413(n)]*A016897(n)` -/
def P6919580088753299763.Spec : Prop :=
  ∀ n, P6919580088753299763.a n = A229283 n

end A229283

/-! ## A229283.P16105075343692822654

`A016897(n)*A141413(2*n)`
-/

namespace A229283.P16105075343692822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A141413 (2 * n)

end

end A229283.P16105075343692822654

namespace A229283

/-- `A016897(n)*A141413(2*n)` -/
def P16105075343692822654.Spec : Prop :=
  ∀ n, P16105075343692822654.a n = A229283 n

end A229283

/-! ## A229283.P12829706691712454642

`Δ[A124302(n)]²*A016897(n)`
-/

namespace A229283.P12829706691712454642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A016897 n

end

end A229283.P12829706691712454642

namespace A229283

/-- `Δ[A124302(n)]²*A016897(n)` -/
def P12829706691712454642.Spec : Prop :=
  ∀ n, P12829706691712454642.a n = A229283 n

end A229283

/-! ## A229283.P5300344564845274733

`A016897(n)*A122006(A004277(n))`
-/

namespace A229283.P5300344564845274733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n * A122006 (A004277 n).toNat

end

end A229283.P5300344564845274733

namespace A229283

/-- `A016897(n)*A122006(A004277(n))` -/
def P5300344564845274733.Spec : Prop :=
  ∀ n, P5300344564845274733.a n = A229283 n

end A229283

/-! ## A229283.P11183085655234791817

`(A081038(n)-A038765(n))*A000244(n)`
-/

namespace A229283.P11183085655234791817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081038 n - A038765 n) * A000244 n

end

end A229283.P11183085655234791817

namespace A229283

/-- `(A081038(n)-A038765(n))*A000244(n)` -/
def P11183085655234791817.Spec : Prop :=
  ∀ n, P11183085655234791817.a n = A229283 n

end A229283

/-! ## A229283.P13030916358933074272

`(A124302(n+1)-A124302(n))²*A016897(n)`
-/

namespace A229283.P13030916358933074272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124302 (n + 1) - A124302 n) ^ 2 * A016897 n

end

end A229283.P13030916358933074272

namespace A229283

/-- `(A124302(n+1)-A124302(n))²*A016897(n)` -/
def P13030916358933074272.Spec : Prop :=
  ∀ n, P13030916358933074272.a n = A229283 n

end A229283

/-! ## A229283.P11978118341942288008

`(A016885(n)+1)*(A094555(n+1)-A094554(n))²`
-/

namespace A229283.P11978118341942288008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 n + 1) * (A094555 (n + 1) - A094554 n) ^ 2

end

end A229283.P11978118341942288008

namespace A229283

/-- `(A016885(n)+1)*(A094555(n+1)-A094554(n))²` -/
def P11978118341942288008.Spec : Prop :=
  ∀ n, P11978118341942288008.a n = A229283 n

end A229283

/-!
# A229284: Number of ascending runs in {1,...,10}^n.

The programs for A229284, there is no canonical definition to state claims against.
-/

/-! ## A229284.P4659228531211640890

`A229079(eq[10, A025581(n)])`
-/

namespace A229284.P4659228531211640890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229284.P4659228531211640890

/-! ## A229284.P11055289718999909129

`A229079(eq[11, A195663(n)])`
-/

namespace A229284.P11055289718999909129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229284.P11055289718999909129

/-! ## A229284.P9909241929446128166

`A229079(A000217(n+11)-11)`
-/

namespace A229284.P9909241929446128166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 11) - 11).toNat

end

end A229284.P9909241929446128166

/-! ## A229284.P1235975201143849390

`A229079(eq[11, A004736(n+1)])`
-/

namespace A229284.P1235975201143849390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229284.P1235975201143849390

/-! ## A229284.P9691135865769825066

`A229079(A112355(n+8)+n)`
-/

namespace A229284.P9691135865769825066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A112355 (n + 8) + (n : ℤ)).toNat

end

end A229284.P9691135865769825066

/-!
# A229285: G.f.: Sum_{n>=0} x^n / Product_{k=1..2*n-1} (1 - k*x).

The programs for A229285, there is no canonical definition to state claims against.
-/

/-! ## A229285.P11403614506725654447

`A024428(abs(A165747(n)))`
-/

namespace A229285.P11403614506725654447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 |A165747 n|.toNat

end

end A229285.P11403614506725654447

/-! ## A229285.P8479829947976688855

`A024428(record[A029579(n)])`
-/

namespace A229285.P8479829947976688855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229285.P8479829947976688855

/-! ## A229285.P12178689859930446352

`A024428(record[A141310(n)])`
-/

namespace A229285.P12178689859930446352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229285.P12178689859930446352

/-! ## A229285.P9692763540087796366

`A024428(A004274(n+1))`
-/

namespace A229285.P9692763540087796366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (A004274 (n + 1)).toNat

end

end A229285.P9692763540087796366

/-! ## A229285.P12240463980776694752

`A024428(A004280(n+1))`
-/

namespace A229285.P12240463980776694752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (A004280 (n + 1)).toNat

end

end A229285.P12240463980776694752

/-! ## A229285.P4877831594888124182

`A024428(A004275(n)+1)`
-/

namespace A229285.P4877831594888124182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (A004275 n + 1).toNat

end

end A229285.P4877831594888124182

/-! ## A229285.P3312909239795411275

`A024428(or(1, A004273(n)))`
-/

namespace A229285.P3312909239795411275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (Int.lor 1 (A004273 n)).toNat

end

end A229285.P3312909239795411275

/-! ## A229285.P5094587830239199641

`A024428(or(1, A004275(n)))`
-/

namespace A229285.P5094587830239199641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (Int.lor 1 (A004275 n)).toNat

end

end A229285.P5094587830239199641

/-! ## A229285.P16890168183002764975

`A024428(abs(1-A005843(n)))`
-/

namespace A229285.P16890168183002764975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 |1 - A005843 n|.toNat

end

end A229285.P16890168183002764975

/-! ## A229285.P5266455046974215083

`A024428(A000267(n²-n))`
-/

namespace A229285.P5266455046974215083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (A000267 (n ^ 2 - n)).toNat

end

end A229285.P5266455046974215083

/-!
# A229286: Expansion of Sum_{n>=0} x^n / Product_{k=1..2*n} (1 - k*x).

The programs for A229286, there is no canonical definition to state claims against.
-/

/-! ## A229286.P1411843351362120705

`A024428(xor(2*n, floor(acot(n))))`
-/

namespace A229286.P1411843351362120705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (Int.xor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A229286.P1411843351362120705

/-! ## A229286.P4546205864645562414

`A024428(2*round(sqrt(n²+1)))`
-/

namespace A229286.P4546205864645562414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (2 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A229286.P4546205864645562414

/-! ## A229286.P905661794216521909

`A024428(ceil(3/acot(n))-(n+1))+A000007(n+1)`
-/

namespace A229286.P905661794216521909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - (n + 1 : ℤ)).toNat + A000007 (n + 1)

end

end A229286.P905661794216521909

/-! ## A229286.P5864910803983222657

`A024428(ceil(3/acot(n))-(n+1))+A000038(n+1)`
-/

namespace A229286.P5864910803983222657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024428 (⌈3 / SequenceMachineLib.acot (n : ℝ)⌉ - (n + 1 : ℤ)).toNat + A000038 (n + 1)

end

end A229286.P5864910803983222657

/-! ## A229286.P17915736198192052336

`or(A000007(n), A024428(A004277(n)))`
-/

namespace A229286.P17915736198192052336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A024428 (A004277 n).toNat)

end

end A229286.P17915736198192052336

/-! ## A229286.P10732453470366771224

`or(A000007(n), A024428(A000267(n²)))`
-/

namespace A229286.P10732453470366771224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A024428 (A000267 (n ^ 2)).toNat)

end

end A229286.P10732453470366771224

/-! ## A229286.P9632014115725777380

`or(A000007(n), A024428(A004275(n+1)))`
-/

namespace A229286.P9632014115725777380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A024428 (A004275 (n + 1)).toNat)

end

end A229286.P9632014115725777380

/-! ## A229286.P5465499998381470693

`or(A000007(n), A024428(A004273(n)+1))`
-/

namespace A229286.P5465499998381470693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A024428 (A004273 n + 1).toNat)

end

end A229286.P5465499998381470693

/-! ## A229286.P4609777918302416330

`or(A000038(n+1), A024428(A000267(n²)))`
-/

namespace A229286.P4609777918302416330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A024428 (A000267 (n ^ 2)).toNat)

end

end A229286.P4609777918302416330

/-! ## A229286.P7958201086569666778

`xor(A000007(n+1), A024428(A000267(n²)))`
-/

namespace A229286.P7958201086569666778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A024428 (A000267 (n ^ 2)).toNat)

end

end A229286.P7958201086569666778

/-!
# A229287: Least k such that the numerator of the continued fraction [1,..,1,k] (n 1s) is prime.

The programs for A229287, there is no canonical definition to state claims against.
-/

/-! ## A229287.P12477456394813275257

`gcd(A005381(A173270(n)), A057608(n))`
-/

namespace A229287.P12477456394813275257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005381 (A173270 n).toNat) (A057608 n)

end

end A229287.P12477456394813275257

/-! ## A229287.P375092215963236003

`gcd(A254099(A098504(n)), A307709(n))`
-/

namespace A229287.P375092215963236003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254099 (A098504 n).toNat) (A307709 n)

end

end A229287.P375092215963236003

/-! ## A229287.P2202778532820155423

`gcd(A053873(A075349(n+1)), A167934(n))`
-/

namespace A229287.P2202778532820155423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053873 (A075349 (n + 1)).toNat) (A167934 n)

end

end A229287.P2202778532820155423

/-! ## A229287.P16617907154370972388

`gcd(A026023(n), A089052(A253440(n+1)))`
-/

namespace A229287.P16617907154370972388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026023 n) (A089052 (A253440 (n + 1)).toNat)

end

end A229287.P16617907154370972388

/-! ## A229287.P16003148619302503289

`gcd(A002808(A056156(n+1)), A318403(n))`
-/

namespace A229287.P16003148619302503289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A056156 (n + 1)).toNat) (A318403 n)

end

end A229287.P16003148619302503289

/-!
# A229289: Primes p of the form p = 2^k * m + 1, where (i) m is squarefree and odd, (ii) all primes that divide m are in the sequence, and (iii) k is 0, 1, or 2.

The programs for A229289, there is no canonical definition to state claims against.
-/

/-! ## A229289.P4322834404226006098

`A135875(A350179(n+1))`
-/

namespace A229289.P4322834404226006098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135875 (A350179 (n + 1)).toNat

end

end A229289.P4322834404226006098

/-! ## A229289.P4132068557317642433

`∩[A350179(n+1), A032516(n)]`
-/

namespace A229289.P4132068557317642433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032516 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229289.P4132068557317642433

/-! ## A229289.P15484085029172175950

`∩[A350179(n+1), A080587(n)]`
-/

namespace A229289.P15484085029172175950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229289.P15484085029172175950

/-! ## A229289.P4268298424790151755

`∩[A028793(n+1), A039786(n+1)]`
-/

namespace A229289.P4268298424790151755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229289.P4268298424790151755

/-! ## A229289.P3829986841427935374

`∩[A000452(n+1), A350179(n+1)]`
-/

namespace A229289.P3829986841427935374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229289.P3829986841427935374

/-!
# A229292: Exponent of the group of 2 X 2 invertible matrices over Z/nZ.

The programs for A229292, there is no canonical definition to state claims against.
-/

/-! ## A229292.P11637298840180176349

`A014963(n+1)*A191414(A276142(n+1))`
-/

namespace A229292.P11637298840180176349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A191414 (A276142 (n + 1)).toNat

end

end A229292.P11637298840180176349

/-! ## A229292.P3185785289545595058

`A014963(A145680(n+2))*A191414(n+1)`
-/

namespace A229292.P3185785289545595058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A145680 (n + 2)).toNat * A191414 (n + 1)

end

end A229292.P3185785289545595058

/-! ## A229292.P10939975283840921188

`lcm(A007947(n+1), A191414(A077739(n+1)))`
-/

namespace A229292.P10939975283840921188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A191414 (A077739 (n + 1)).toNat)

end

end A229292.P10939975283840921188

/-! ## A229292.P14272539091219830774

`lcm(A020639(A094201(n)), A191414(n+1))`
-/

namespace A229292.P14272539091219830774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A094201 n).toNat) (A191414 (n + 1))

end

end A229292.P14272539091219830774

/-!
# A229294: Number of solutions to x^2 + y^2 + z^2 + t^2 == n (mod 2*n) for x,y,z,t in [0, 2*n).

The programs for A229294, there is no canonical definition to state claims against.
-/

/-! ## A229294.P8968598579965336944

`A010684(n)*A240547(2*(n+1))`
-/

namespace A229294.P8968598579965336944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A240547 (2 * (n + 1))

end

end A229294.P8968598579965336944

/-!
# A229295: Number of solutions to x^2 + y^2 + z^2 == n (mod 2n) for x,y,z in [0, 2*n).

The programs for A229295, there is no canonical definition to state claims against.
-/

/-! ## A229295.P7499133209666261839

`A087687(A004277(2*(n+1)))-A087687(2*(n+1))`
-/

namespace A229295.P7499133209666261839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087687 (A004277 (2 * (n + 1))).toNat - A087687 (2 * (n + 1))

end

end A229295.P7499133209666261839

/-! ## A229295.P6206182529890102749

`2*(n+1)²*A183262(A119479(3*n+5))`
-/

namespace A229295.P6206182529890102749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) * A183262 (A119479 (3 * n + 5)).toNat

end

end A229295.P6206182529890102749

/-! ## A229295.P2251752297886239418

`A062775(2*(n+1))/A124734(A001147(n))`
-/

namespace A229295.P2251752297886239418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062775 (2 * (n + 1)) : ℚ) / (A124734 (A001147 n).toNat : ℚ)

end

end A229295.P2251752297886239418

/-!
# A229296: Number of solutions to x^2 + y^2 == n (mod 2*n) for x,y in [0, 2*n).

The programs for A229296, the canonical program `A229296.P15325507195948055695` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229296 has offset 1).

The definition of A229296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086933, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229296.P15325507195948055695

`2*A086933(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A229296

/-- `2*A086933(n+1)` -/
def P15325507195948055695.Spec : Prop :=
  ∀ n, P15325507195948055695.a n = A229296 (n + 1)

theorem P15325507195948055695.correct : P15325507195948055695.Spec := by
  intro n
  simp only [A229296, Nat.add_sub_cancel]

end A229296

/-! ## A229296.P4454935414963138069

`lcm(A086933(n+1), A171977(n+1))`
-/

namespace A229296.P4454935414963138069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086933 (n + 1)) (A171977 (n + 1))

end

end A229296.P4454935414963138069

namespace A229296

/-- `lcm(A086933(n+1), A171977(n+1))` -/
def P4454935414963138069.Spec : Prop :=
  ∀ n, (P4454935414963138069.a n : ℤ) = A229296 (n + 1)

end A229296

/-! ## A229296.P7063908151566770468

`A086933(n+1)+A086933(Δ[n²]-n)`
-/

namespace A229296.P7063908151566770468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (n + 1) + A086933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A229296.P7063908151566770468

namespace A229296

/-- `A086933(n+1)+A086933(Δ[n²]-n)` -/
def P7063908151566770468.Spec : Prop :=
  ∀ n, P7063908151566770468.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P2697554088264973844

`A086933(n+2+n)`
-/

namespace A229296.P2697554088264973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (n + 2 + n)

end

end A229296.P2697554088264973844

namespace A229296

/-- `A086933(n+2+n)` -/
def P2697554088264973844.Spec : Prop :=
  ∀ n, P2697554088264973844.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P4222386695960893168

`A005843(A086933(n+1))`
-/

namespace A229296.P4222386695960893168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A086933 (n + 1)).toNat

end

end A229296.P4222386695960893168

namespace A229296

/-- `A005843(A086933(n+1))` -/
def P4222386695960893168.Spec : Prop :=
  ∀ n, P4222386695960893168.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P9663764690549044739

`2*A305191(∑[n]+1)`
-/

namespace A229296.P9663764690549044739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305191 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229296.P9663764690549044739

namespace A229296

/-- `2*A305191(∑[n]+1)` -/
def P9663764690549044739.Spec : Prop :=
  ∀ n, P9663764690549044739.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P9062366050186096764

`A305191(A058331(n+1))`
-/

namespace A229296.P9062366050186096764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A058331 (n + 1)).toNat

end

end A229296.P9062366050186096764

namespace A229296

/-- `A305191(A058331(n+1))` -/
def P9062366050186096764.Spec : Prop :=
  ∀ n, P9062366050186096764.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P11214572603999200540

`A305191(A130883(n+1))`
-/

namespace A229296.P11214572603999200540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A130883 (n + 1)).toNat

end

end A229296.P11214572603999200540

namespace A229296

/-- `A305191(A130883(n+1))` -/
def P11214572603999200540.Spec : Prop :=
  ∀ n, P11214572603999200540.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P5936994594961480994

`A305191(A266259(2*n+1))`
-/

namespace A229296.P5936994594961480994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A266259 (2 * n + 1)).toNat

end

end A229296.P5936994594961480994

namespace A229296

/-- `A305191(A266259(2*n+1))` -/
def P5936994594961480994.Spec : Prop :=
  ∀ n, P5936994594961480994.a n = A229296 (n + 1)

end A229296

/-! ## A229296.P7111025406216437650

`A305191(A133263(2*n+1)-1)`
-/

namespace A229296.P7111025406216437650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305191 (A133263 (2 * n + 1) - 1).toNat

end

end A229296.P7111025406216437650

namespace A229296

/-- `A305191(A133263(2*n+1)-1)` -/
def P7111025406216437650.Spec : Prop :=
  ∀ n, P7111025406216437650.a n = A229296 (n + 1)

end A229296

/-!
# A229297: Number of solutions to x^2 == n (mod 2*n) for 0 <= x < 2*n.

The programs for A229297, the canonical program `A229297.P6774960960477572265` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229297 has offset 1).

The definition of A229297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229297.P6245538019753734886

`C(A000188(n+1), n%2*a(floor(n/2))+1)` with `a(0)=1`
-/

namespace A229297.P6245538019753734886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A000188 (n + 1)).toNat (n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A229297.P6245538019753734886

namespace A229297

/-- `C(A000188(n+1), n%2*a(floor(n/2))+1)` -/
def P6245538019753734886.Spec : Prop :=
  ∀ n, (P6245538019753734886.a n : ℤ) = A229297 (n + 1)

end A229297

/-! ## A229297.P6774960960477572265

`A037213(A235872(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A229297

/-- `A037213(A235872(n+1))` -/
def P6774960960477572265.Spec : Prop :=
  ∀ n, P6774960960477572265.a n = A229297 (n + 1)

theorem P6774960960477572265.correct : P6774960960477572265.Spec := by
  intro n
  simp only [A229297, Nat.add_sub_cancel]

end A229297

/-! ## A229297.P13530942913677758985

`lcm(Δ[A001285(n)], A000188(n+1))`
-/

namespace A229297.P13530942913677758985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000188 (n + 1))

end

end A229297.P13530942913677758985

namespace A229297

/-- `lcm(Δ[A001285(n)], A000188(n+1))` -/
def P13530942913677758985.Spec : Prop :=
  ∀ n, (P13530942913677758985.a n : ℤ) = A229297 (n + 1)

end A229297

/-! ## A229297.P226486834441566429

`A000188(n+1)*A035263(n+1)`
-/

namespace A229297.P226486834441566429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A035263 (n + 1)

end

end A229297.P226486834441566429

namespace A229297

/-- `A000188(n+1)*A035263(n+1)` -/
def P226486834441566429.Spec : Prop :=
  ∀ n, P226486834441566429.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P3528899157845648092

`(1-A096268(n))*A000188(n+1)`
-/

namespace A229297.P3528899157845648092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A096268 n) * A000188 (n + 1)

end

end A229297.P3528899157845648092

namespace A229297

/-- `(1-A096268(n))*A000188(n+1)` -/
def P3528899157845648092.Spec : Prop :=
  ∀ n, P3528899157845648092.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P16656736672014096399

`∑{d}[n+1, A000188(#)*A154269((n+1)/#)]`
-/

namespace A229297.P16656736672014096399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229297.P16656736672014096399

namespace A229297

/-- `∑{d}[n+1, A000188(#)*A154269((n+1)/#)]` -/
def P16656736672014096399.Spec : Prop :=
  ∀ n, P16656736672014096399.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P17887681997021146405

`∑{d}[n+1, A037213(#)*A323239((n+1)/#)]`
-/

namespace A229297.P17887681997021146405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229297.P17887681997021146405

namespace A229297

/-- `∑{d}[n+1, A037213(#)*A323239((n+1)/#)]` -/
def P17887681997021146405.Spec : Prop :=
  ∀ n, P17887681997021146405.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P10543765129693612443

`∑{d}[n+1, A069290(#)*A359548((n+1)/#)]`
-/

namespace A229297.P10543765129693612443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069290 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A229297.P10543765129693612443

namespace A229297

/-- `∑{d}[n+1, A069290(#)*A359548((n+1)/#)]` -/
def P10543765129693612443.Spec : Prop :=
  ∀ n, P10543765129693612443.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P18065727345705387616

`A000035(A001511(n+1))*A000188(n+1)`
-/

namespace A229297.P18065727345705387616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1)).toNat * A000188 (n + 1)

end

end A229297.P18065727345705387616

namespace A229297

/-- `A000035(A001511(n+1))*A000188(n+1)` -/
def P18065727345705387616.Spec : Prop :=
  ∀ n, P18065727345705387616.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P6122627010109583860

`A000035(A007913(n+1))*A000188(n+1)`
-/

namespace A229297.P6122627010109583860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007913 (n + 1)).toNat * A000188 (n + 1)

end

end A229297.P6122627010109583860

namespace A229297

/-- `A000035(A007913(n+1))*A000188(n+1)` -/
def P6122627010109583860.Spec : Prop :=
  ∀ n, P6122627010109583860.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P6004485038719249519

`A000035(A097246(n+1))*A000188(n+1)`
-/

namespace A229297.P6004485038719249519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A097246 (n + 1)).toNat * A000188 (n + 1)

end

end A229297.P6004485038719249519

namespace A229297

/-- `A000035(A097246(n+1))*A000188(n+1)` -/
def P6004485038719249519.Spec : Prop :=
  ∀ n, P6004485038719249519.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P17918101316181196925

`A000035(A097248(n+1))*A000188(n+1)`
-/

namespace A229297.P17918101316181196925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A097248 (n + 1)).toNat * A000188 (n + 1)

end

end A229297.P17918101316181196925

namespace A229297

/-- `A000035(A097248(n+1))*A000188(n+1)` -/
def P17918101316181196925.Spec : Prop :=
  ∀ n, P17918101316181196925.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P7904812984069508147

`(2-A007913(A006519(n+1)))*A000188(n+1)`
-/

namespace A229297.P7904812984069508147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A007913 (A006519 (n + 1)).toNat) * A000188 (n + 1)

end

end A229297.P7904812984069508147

namespace A229297

/-- `(2-A007913(A006519(n+1)))*A000188(n+1)` -/
def P7904812984069508147.Spec : Prop :=
  ∀ n, P7904812984069508147.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P11881837331354532467

`A000188(n+1)*A008966(2*A007913(n+1))`
-/

namespace A229297.P11881837331354532467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A008966 (2 * A007913 (n + 1)).toNat

end

end A229297.P11881837331354532467

namespace A229297

/-- `A000188(n+1)*A008966(2*A007913(n+1))` -/
def P11881837331354532467.Spec : Prop :=
  ∀ n, P11881837331354532467.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P2791187788605077165

`A000188(n+1)*(1-A328979(n+2))`
-/

namespace A229297.P2791187788605077165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * (1 - A328979 (n + 2))

end

end A229297.P2791187788605077165

namespace A229297

/-- `A000188(n+1)*(1-A328979(n+2))` -/
def P2791187788605077165.Spec : Prop :=
  ∀ n, P2791187788605077165.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P1029113755831814883

`A000188(n+1)-A000188(n+1)*A284948(n+2)`
-/

namespace A229297.P1029113755831814883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) - A000188 (n + 1) * A284948 (n + 2)

end

end A229297.P1029113755831814883

namespace A229297

/-- `A000188(n+1)-A000188(n+1)*A284948(n+2)` -/
def P1029113755831814883.Spec : Prop :=
  ∀ n, P1029113755831814883.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P14711667350482260705

`A000188(n+1)*A039963(2*n)`
-/

namespace A229297.P14711667350482260705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A039963 (2 * n)

end

end A229297.P14711667350482260705

namespace A229297

/-- `A000188(n+1)*A039963(2*n)` -/
def P14711667350482260705.Spec : Prop :=
  ∀ n, P14711667350482260705.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P8047406195727491387

`A000188(n+1)*A096268(2*n+1)`
-/

namespace A229297.P8047406195727491387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A096268 (2 * n + 1)

end

end A229297.P8047406195727491387

namespace A229297

/-- `A000188(n+1)*A096268(2*n+1)` -/
def P8047406195727491387.Spec : Prop :=
  ∀ n, P8047406195727491387.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P17251732924171625682

`(1-A328981(2*(n+1)))*A000188(2*(n+1))`
-/

namespace A229297.P17251732924171625682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A328981 (2 * (n + 1))) * A000188 (2 * (n + 1))

end

end A229297.P17251732924171625682

namespace A229297

/-- `(1-A328981(2*(n+1)))*A000188(2*(n+1))` -/
def P17251732924171625682.Spec : Prop :=
  ∀ n, P17251732924171625682.a n = A229297 (n + 1)

end A229297

/-! ## A229297.P15909526944864702140

`2*A000188(n+1)-A000188(A103517(n))`
-/

namespace A229297.P15909526944864702140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000188 (n + 1) - A000188 (A103517 n).toNat

end

end A229297.P15909526944864702140

namespace A229297

/-- `2*A000188(n+1)-A000188(A103517(n))` -/
def P15909526944864702140.Spec : Prop :=
  ∀ n, P15909526944864702140.a n = A229297 (n + 1)

end A229297

