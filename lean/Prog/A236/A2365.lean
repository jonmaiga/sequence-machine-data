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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
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
# A236501: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236501, there is no canonical definition to state claims against.
-/

/-! ## A236501.P220965477391267033

`A236505(∑[n]+1)`
-/

namespace A236501.P220965477391267033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236501.P220965477391267033

/-! ## A236501.P15289801158043359818

`∑{digits}[n, A236505(A000124(#))]`
-/

namespace A236501.P15289801158043359818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236505 (A000124 x).toNat).sum

end

end A236501.P15289801158043359818

/-! ## A236501.P8372451887352409261

`and(-1, A236505(A000124(n)))`
-/

namespace A236501.P8372451887352409261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A236505 (A000124 n).toNat)

end

end A236501.P8372451887352409261

/-! ## A236501.P10050246907245147230

`record[A236505(A246276(n+1))]`
-/

namespace A236501.P10050246907245147230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236501.P10050246907245147230

/-! ## A236501.P6388066767149206806

`record[A236505(A249742(n+1))]`
-/

namespace A236501.P6388066767149206806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236501.P6388066767149206806

/-!
# A236502: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236502, there is no canonical definition to state claims against.
-/

/-! ## A236502.P15828338854714059501

`A236505(∑[n+1]+2)`
-/

namespace A236502.P15828338854714059501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236502.P15828338854714059501

/-! ## A236502.P14648666490230558258

`record[A236505(A220693(n+1)+2)]`
-/

namespace A236502.P14648666490230558258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (A220693 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236502.P14648666490230558258

/-! ## A236502.P12143682449381561808

`record[A010054(n)*A236505(n+2)]`
-/

namespace A236502.P12143682449381561808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236502.P12143682449381561808

/-! ## A236502.P13651188367474225314

`record[root(A236505(n+2), A193789(n+1))]`
-/

namespace A236502.P13651188367474225314
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236505 (n + 2) : ℝ) ^ (1 / (A193789 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236502.P13651188367474225314

/-!
# A236503: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236503, there is no canonical definition to state claims against.
-/

/-! ## A236503.P7559561668706151973

`A236505(∑[n+2]+4)`
-/

namespace A236503.P7559561668706151973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236503.P7559561668706151973

/-! ## A236503.P11370606057828845020

`and(-1, A236505(A167614(n+1)))`
-/

namespace A236503.P11370606057828845020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A236505 (A167614 (n + 1)).toNat)

end

end A236503.P11370606057828845020

/-! ## A236503.P698857038960216174

`and(-1, A236505(A066049(3*(n+1))))`
-/

namespace A236503.P698857038960216174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A236505 (A066049 (3 * (n + 1))).toNat)

end

end A236503.P698857038960216174

/-!
# A236504: Number of (n+1)X(4+1) 0..3 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236504, there is no canonical definition to state claims against.
-/

/-! ## A236504.P2272044089089535014

`A236505(∑[n+3]+7)`
-/

namespace A236504.P2272044089089535014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236505 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236504.P2272044089089535014

/-!
# A236506: Conjectured least index k > 2 of Fibonacci-like sequence f(i+2) = f(i+1) + f(i), with f(1)=1 and f(2)=n, such that f(k) is a square, or k=0 if squares do not exist in the corresponding sequence.

The programs for A236506, there is no canonical definition to state claims against.
-/

/-! ## A236506.P15838082865876583345

`A233513(A000124(n)-A079260(n+1))`
-/

namespace A236506.P15838082865876583345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (A000124 n - A079260 (n + 1)).toNat

end

end A236506.P15838082865876583345

/-! ## A236506.P18140759542116225324

`A233513(A000124(n)-A185705(n+1))`
-/

namespace A236506.P18140759542116225324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (A000124 n - A185705 (n + 1)).toNat

end

end A236506.P18140759542116225324

/-! ## A236506.P8564791935592505435

`A233513(xor(A000124(n), A079260(n+1)))`
-/

namespace A236506.P8564791935592505435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (Int.xor (A000124 n) (A079260 (n + 1))).toNat

end

end A236506.P8564791935592505435

/-! ## A236506.P10479095299851330707

`A233513(xor(A000124(n), A185705(n+1)))`
-/

namespace A236506.P10479095299851330707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (Int.xor (A000124 n) (A185705 (n + 1))).toNat

end

end A236506.P10479095299851330707

/-! ## A236506.P11629068345003372808

`A233513(Δ[A000125(n)]-A079260(n+1))`
-/

namespace A236506.P11629068345003372808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (f1 (n + 1) - f1 n - A079260 (n + 1)).toNat

end

end A236506.P11629068345003372808

/-! ## A236506.P5058852556184973090

`A233513(Δ[A000125(n)]-A185705(n+1))`
-/

namespace A236506.P5058852556184973090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (f1 (n + 1) - f1 n - A185705 (n + 1)).toNat

end

end A236506.P5058852556184973090

/-! ## A236506.P676554957521175231

`A233513(A127254(A069531(n+1))+A000217(n))`
-/

namespace A236506.P676554957521175231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (A127254 (A069531 (n + 1)).toNat + A000217 n).toNat

end

end A236506.P676554957521175231

/-! ## A236506.P8868746291854772306

`A233513(∑[n]+1)`
-/

namespace A236506.P8868746291854772306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233513 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236506.P8868746291854772306

/-! ## A236506.P11943442623963538823

`A233513(A000217(n)+1)%31`
-/

namespace A236506.P11943442623963538823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233513 (A000217 n + 1).toNat) 31

end

end A236506.P11943442623963538823

/-!
# A236507: Smallest k that is a concatenation of two numbers x and y where x^2 + y^2 = n^2.

The programs for A236507, there is no canonical definition to state claims against.
-/

/-! ## A236507.P13607093137671822571

`A236851(10*A032559(n+1))`
-/

namespace A236507.P13607093137671822571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (10 * A032559 (n + 1)).toNat

end

end A236507.P13607093137671822571

/-! ## A236507.P2113118497169360106

`A236851(10*A078213(n+1))`
-/

namespace A236507.P2113118497169360106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (10 * A078213 (n + 1)).toNat

end

end A236507.P2113118497169360106

/-! ## A236507.P8261678318303697272

`A236851(10*A276142(n+1))`
-/

namespace A236507.P8261678318303697272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (10 * A276142 (n + 1)).toNat

end

end A236507.P8261678318303697272

/-! ## A236507.P1422150028759461492

`A337857(n+1)-A319341(A260464(n))`
-/

namespace A236507.P1422150028759461492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337857 (n + 1) - A319341 (A260464 n).toNat

end

end A236507.P1422150028759461492

/-! ## A236507.P13627194815396824818

`A236851(lcm(A032559(n+1), A337857(n+1)))`
-/

namespace A236507.P13627194815396824818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (Int.lcm (A032559 (n + 1)) (A337857 (n + 1)))

end

end A236507.P13627194815396824818

/-!
# A236509: Primes p with p + 2, p + 6 and prime(p) + 6 all prime.

The programs for A236509, there is no canonical definition to state claims against.
-/

/-! ## A236509.P7119415908599658764

`∩[A022004(n+1), A000720(A023201(n+1))]`
-/

namespace A236509.P7119415908599658764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023201 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236509.P7119415908599658764

/-! ## A236509.P3244064504810023775

`A022004(record[A136764(n)])`
-/

namespace A236509.P3244064504810023775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236509.P3244064504810023775

/-!
# A236510: Numbers whose prime factorization viewed as a tuple of powers is palindromic, when viewed from the least to the largest prime present, including also any zero-exponents for the intermediate primes.

The programs for A236510, there is no canonical definition to state claims against.
-/

/-! ## A236510.P4065853693277096622

`A359889(n+1)%96`
-/

namespace A236510.P4065853693277096622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359889 (n + 1)) 96

end

end A236510.P4065853693277096622

/-! ## A236510.P8730750890080704886

`record[gcd(n+1, A293448(n+1))]`
-/

namespace A236510.P8730750890080704886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A293448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236510.P8730750890080704886

/-! ## A236510.P1526516749173879909

`eq[n, A293448(round(sqrt(n²+1)))]`
-/

namespace A236510.P1526516749173879909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293448 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236510.P1526516749173879909

/-! ## A236510.P14145973893822413035

`A359889(A296879(n+1))`
-/

namespace A236510.P14145973893822413035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A296879 (n + 1)).toNat

end

end A236510.P14145973893822413035

/-! ## A236510.P2623278992415540997

`A359889(A296882(n+1))`
-/

namespace A236510.P2623278992415540997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A296882 (n + 1)).toNat

end

end A236510.P2623278992415540997

/-! ## A236510.P16200604240817063454

`A359889(A296894(n+1))`
-/

namespace A236510.P16200604240817063454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A296894 (n + 1)).toNat

end

end A236510.P16200604240817063454

/-! ## A236510.P16776551003137598148

`A359889(A136602(n+1)+1)`
-/

namespace A236510.P16776551003137598148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A136602 (n + 1) + 1).toNat

end

end A236510.P16776551003137598148

/-! ## A236510.P13050607518743505475

`A359889(A266279(n+1)+1)`
-/

namespace A236510.P13050607518743505475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359889 (A266279 (n + 1) + 1).toNat

end

end A236510.P13050607518743505475

/-! ## A236510.P5508221022636720710

`∪[A004669(n), A085156(n+1)]`
-/

namespace A236510.P5508221022636720710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236510.P5508221022636720710

/-! ## A236510.P10309466000705991988

`∪[A005052(n), A085156(n+1)]`
-/

namespace A236510.P10309466000705991988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236510.P10309466000705991988

/-!
# A236511: a(n) = |{0 < k < n: p = 3*phi(k) + phi(n-k) - 1, p + 2, p + 6 and p + 8 are all prime}|, where phi(.) is Euler's totient function.

The programs for A236511, there is no canonical definition to state claims against.
-/

/-! ## A236511.P2389975478349205624

`and(A031549(n+1), A235924(n+1))`
-/

namespace A236511.P2389975478349205624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031549 (n + 1)) (A235924 (n + 1))

end

end A236511.P2389975478349205624

/-! ## A236511.P10131649100658944977

`and(A031555(n+1), A235924(n+1))`
-/

namespace A236511.P10131649100658944977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031555 (n + 1)) (A235924 (n + 1))

end

end A236511.P10131649100658944977

/-! ## A236511.P25302530831632486

`and(A031563(n+1), A235924(n+1))`
-/

namespace A236511.P25302530831632486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031563 (n + 1)) (A235924 (n + 1))

end

end A236511.P25302530831632486

/-! ## A236511.P546937301350760852

`C(A235924(n+1), Δ[A135382(n+1)])`
-/

namespace A236511.P546937301350760852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A235924 (n + 1)).toNat (f1 (n + 1) - f1 n).toNat

end

end A236511.P546937301350760852

/-! ## A236511.P17298316344518206780

`and(A046357(n+1), A235924(n+1))`
-/

namespace A236511.P17298316344518206780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046357 (n + 1)) (A235924 (n + 1))

end

end A236511.P17298316344518206780

/-!
# A236513: The n-th prime with n 1-bits in its binary expansion.

The programs for A236513, there is no canonical definition to state claims against.
-/

/-! ## A236513.P5388267625999605618

`p?[xor(A187691(n+1), A245767(n))]`
-/

namespace A236513.P5388267625999605618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A187691 (n + 1)) (A245767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236513.P5388267625999605618

/-!
# A236514: Primes with a binary weight greater than or equal to the binary weight of their squares.

The programs for A236514, there is no canonical definition to state claims against.
-/

/-! ## A236514.P17585902211111862826

`p?[lt[A232243(n), 1]]`
-/

namespace A236514.P17585902211111862826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236514.P17585902211111862826

/-! ## A236514.P18019074055019054117

`p?[(n+1)*A351149(n+1)]`
-/

namespace A236514.P18019074055019054117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236514.P18019074055019054117

/-! ## A236514.P3621729211737467478

`p?[lcm(A131738(n), A351149(n+1))]`
-/

namespace A236514.P3621729211737467478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131738 n) (A351149 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236514.P3621729211737467478

/-! ## A236514.P15667996598041162743

`record[A074399(2*n+1)/A351149(2*n+1)]`
-/

namespace A236514.P15667996598041162743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074399 (2 * n + 1) : ℚ) / (A351149 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236514.P15667996598041162743

/-! ## A236514.P6071239652691307352

`record[A000040(n+1)/A351149(A000040(n+1))]`
-/

namespace A236514.P6071239652691307352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A351149 (A000040 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236514.P6071239652691307352

/-! ## A236514.P8487097695463607704

`record[A117366(n+1)/A351149(A117366(n+1))]`
-/

namespace A236514.P8487097695463607704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117366 (n + 1) : ℚ) / (A351149 (A117366 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236514.P8487097695463607704

/-!
# A236515: Colexicographic index of prime signature of n.

The programs for A236515, there is no canonical definition to state claims against.
-/

/-! ## A236515.P2486906411231420789

`A237433(n+1)-A121373(A031523(n+1))`
-/

namespace A236515.P2486906411231420789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) - A121373 (A031523 (n + 1)).toNat

end

end A236515.P2486906411231420789

/-! ## A236515.P14613924563039892105

`or(A237433(n+1), A353760(A353794(n+1)))`
-/

namespace A236515.P14613924563039892105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237433 (n + 1)) (A353760 (A353794 (n + 1)).toNat)

end

end A236515.P14613924563039892105

/-! ## A236515.P2275177328404917994

`or(A237433(n+1), A280749(A326323(n)))`
-/

namespace A236515.P2275177328404917994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237433 (n + 1)) (A280749 (A326323 n).toNat)

end

end A236515.P2275177328404917994

/-! ## A236515.P12860406313784606261

`A237433(n+1)-A240465(A034884(2*n+3))`
-/

namespace A236515.P12860406313784606261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) - A240465 (A034884 (2 * n + 3)).toNat

end

end A236515.P12860406313784606261

/-! ## A236515.P6725525978431863216

`A237433(n+1)+A212619(A007359(2*n))`
-/

namespace A236515.P6725525978431863216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) + A212619 (A007359 (2 * n)).toNat

end

end A236515.P6725525978431863216

/-!
# A236516: Number of (n+1)X(n+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236516, there is no canonical definition to state claims against.
-/

/-! ## A236516.P109843486438124799

`A236523(∑[4*n]+1)`
-/

namespace A236516.P109843486438124799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236516.P109843486438124799

/-! ## A236516.P6927808589312160603

`record[A003982(n)*A236523(n+1)]`
-/

namespace A236516.P6927808589312160603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236516.P6927808589312160603

/-! ## A236516.P8248128272860259779

`record[gcd(A003987(n), A236523(n+1))]`
-/

namespace A236516.P8248128272860259779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A236523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236516.P8248128272860259779

/-! ## A236516.P14640107716478632807

`record[root(A236523(n+1), A303950(n+1))]`
-/

namespace A236516.P14640107716478632807
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236523 (n + 1) : ℝ) ^ (1 / (A303950 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236516.P14640107716478632807

/-! ## A236516.P14702723772702116874

`A119335(n)*A236523(A001844(n))`
-/

namespace A236516.P14702723772702116874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A236523 (A001844 n).toNat

end

end A236516.P14702723772702116874

/-!
# A236517: Number of (n+1)X(2+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236517, there is no canonical definition to state claims against.
-/

/-! ## A236517.P17123927017219023120

`A236523(∑[n+1]+2)`
-/

namespace A236517.P17123927017219023120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236517.P17123927017219023120

/-! ## A236517.P7815597355796181568

`record[A236523(A236540(n+1)+2)]`
-/

namespace A236517.P7815597355796181568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A236540 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236517.P7815597355796181568

/-! ## A236517.P13203674912662698248

`record[A010054(n)*A236523(n+2)]`
-/

namespace A236517.P13203674912662698248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236517.P13203674912662698248

/-! ## A236517.P713215389897088121

`A236523(A133263(n+1))-A000038(n+1)`
-/

namespace A236517.P713215389897088121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A133263 (n + 1)).toNat - A000038 (n + 1)

end

end A236517.P713215389897088121

/-! ## A236517.P6452555745590361008

`A236523(A133263(n+1))%A124955(n+2)`
-/

namespace A236517.P6452555745590361008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236523 (A133263 (n + 1)).toNat) (A124955 (n + 2))

end

end A236517.P6452555745590361008

/-!
# A236518: Number of (n+1)X(3+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236518, there is no canonical definition to state claims against.
-/

/-! ## A236518.P4484346146047775095

`A236523(∑[n+2]+4)`
-/

namespace A236518.P4484346146047775095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236518.P4484346146047775095

/-! ## A236518.P6793143617458864200

`A236523(A167614(n+1))+A034579(n+1)`
-/

namespace A236518.P6793143617458864200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A167614 (n + 1)).toNat + A034579 (n + 1)

end

end A236518.P6793143617458864200

/-! ## A236518.P9139323418398081429

`A320647(n+1)+A236523(A167614(n+1))`
-/

namespace A236518.P9139323418398081429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 1) + A236523 (A167614 (n + 1)).toNat

end

end A236518.P9139323418398081429

/-! ## A236518.P2109813242963758698

`A236523(A167614(n+1))%A233937(n+1)`
-/

namespace A236518.P2109813242963758698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236523 (A167614 (n + 1)).toNat) (A233937 (n + 1))

end

end A236518.P2109813242963758698

/-! ## A236518.P11916462570813670874

`lcm(A046213(n+1), A236523(A167614(n+1)))`
-/

namespace A236518.P11916462570813670874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046213 (n + 1)) (A236523 (A167614 (n + 1)).toNat)

end

end A236518.P11916462570813670874

/-!
# A236519: Number of (n+1)X(4+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236519, there is no canonical definition to state claims against.
-/

/-! ## A236519.P5168305965724391573

`A236523(A141214(n)+7)`
-/

namespace A236519.P5168305965724391573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A141214 n + 7).toNat

end

end A236519.P5168305965724391573

/-! ## A236519.P12578209481147379208

`A236523(A052905(n)+9)`
-/

namespace A236519.P12578209481147379208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A052905 n + 9).toNat

end

end A236519.P12578209481147379208

/-! ## A236519.P10439186906998179760

`A236523(A055999(n)+10)`
-/

namespace A236519.P10439186906998179760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A055999 n + 10).toNat

end

end A236519.P10439186906998179760

/-! ## A236519.P7370153560396525399

`A236523(A167614(n+2)+1)`
-/

namespace A236519.P7370153560396525399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A167614 (n + 2) + 1).toNat

end

end A236519.P7370153560396525399

/-! ## A236519.P15067502730011727832

`A236523(eq[5, A131818(n+1)])`
-/

namespace A236519.P15067502730011727832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236519.P15067502730011727832

/-!
# A236520: Number of (n+1)X(5+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236520, there is no canonical definition to state claims against.
-/

/-! ## A236520.P5174053359215762408

`A236523(A056000(n)+15)`
-/

namespace A236520.P5174053359215762408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A056000 n + 15).toNat

end

end A236520.P5174053359215762408

/-! ## A236520.P7575337027828092981

`A236523(A000217(n+4)+5)`
-/

namespace A236520.P7575337027828092981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A000217 (n + 4) + 5).toNat

end

end A236520.P7575337027828092981

/-! ## A236520.P4438966769898326248

`A236523(eq[6, A131818(n+1)])`
-/

namespace A236520.P4438966769898326248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236520.P4438966769898326248

/-! ## A236520.P14644507492014636048

`A236523(A374005(n+1))`
-/

namespace A236520.P14644507492014636048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A374005 (n + 1)).toNat

end

end A236520.P14644507492014636048

/-! ## A236520.P5499206659298786803

`A236523(A046691(n+3))`
-/

namespace A236520.P5499206659298786803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A046691 (n + 3)).toNat

end

end A236520.P5499206659298786803

/-!
# A236521: Number of (n+1)X(6+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236521, there is no canonical definition to state claims against.
-/

/-! ## A236521.P13339737396822730935

`A236523(A141214(n+2)+9)`
-/

namespace A236521.P13339737396822730935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A141214 (n + 2) + 9).toNat

end

end A236521.P13339737396822730935

/-! ## A236521.P13349709379563396304

`A236523(eq[7, A131818(n+1)])`
-/

namespace A236521.P13349709379563396304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236521.P13349709379563396304

/-! ## A236521.P8039728663212376638

`A236523(A374007(n+1))`
-/

namespace A236521.P8039728663212376638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A374007 (n + 1)).toNat

end

end A236521.P8039728663212376638

/-! ## A236521.P2777429122638964737

`A236523(A052905(n+3))`
-/

namespace A236521.P2777429122638964737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A052905 (n + 3)).toNat

end

end A236521.P2777429122638964737

/-! ## A236521.P6556870109688712058

`A236523(eq[3, A219347(n)])`
-/

namespace A236521.P6556870109688712058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236521.P6556870109688712058

/-!
# A236522: Number of (n+1)X(7+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236522, there is no canonical definition to state claims against.
-/

/-! ## A236522.P16319294353411530436

`A236523(eq[11, A066657(n)])`
-/

namespace A236522.P16319294353411530436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236522.P16319294353411530436

/-! ## A236522.P15873166138307677641

`A236523(eq[8, A131818(n+1)])`
-/

namespace A236522.P15873166138307677641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236522.P15873166138307677641

/-! ## A236522.P2999059335580525211

`A236523(A374008(n+1))`
-/

namespace A236522.P2999059335580525211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A374008 (n + 1)).toNat

end

end A236522.P2999059335580525211

/-! ## A236522.P12377842334204344970

`A236523(A055999(n+4))`
-/

namespace A236522.P12377842334204344970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (A055999 (n + 4)).toNat

end

end A236522.P12377842334204344970

/-! ## A236522.P4569686823319296431

`A236523(eq[4, A219347(n)])`
-/

namespace A236522.P4569686823319296431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236522.P4569686823319296431

/-!
# A236523: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order columnwise and nonincreasing rowwise.

The programs for A236523, there is no canonical definition to state claims against.
-/

/-! ## A236523.P4549412326312812905

`A235660(n+1)-A064458(A055762(n))`
-/

namespace A236523.P4549412326312812905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (n + 1) - A064458 (A055762 n).toNat

end

end A236523.P4549412326312812905

/-! ## A236523.P14934252925688844203

`A235660(n+1)-A055571(A176627(n))`
-/

namespace A236523.P14934252925688844203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (n + 1) - A055571 (A176627 n).toNat

end

end A236523.P14934252925688844203

/-! ## A236523.P14828928389829643826

`A235660(n+1)-A125007(A188646(n))`
-/

namespace A236523.P14828928389829643826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (n + 1) - A125007 (A188646 n).toNat

end

end A236523.P14828928389829643826

/-!
# A236524: Numbers n such that n^3 - n +/ - 1 are twin primes.

The programs for A236524, there is no canonical definition to state claims against.
-/

/-! ## A236524.P15047999716178273190

`∩[A126421(n+1), A236477(n+1)]`
-/

namespace A236524.P15047999716178273190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236524.P15047999716178273190

/-! ## A236524.P13574898386955085298

`A174242(n+1)+1`
-/

namespace A236524.P13574898386955085298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174242 (n + 1) + 1

end

end A236524.P13574898386955085298

/-! ## A236524.P1652381916412010622

`A020725(A174242(n+1))`
-/

namespace A236524.P1652381916412010622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A174242 (n + 1)).toNat

end

end A236524.P1652381916412010622

/-!
# A236525: Number of simple non-bipartite graphs on n nodes.

The programs for A236525, there is no canonical definition to state claims against.
-/

/-! ## A236525.P1190702940280615143

`A000088(n+1)-A033995(n+1)`
-/

namespace A236525.P1190702940280615143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A033995 (n + 1)

end

end A236525.P1190702940280615143

/-! ## A236525.P9172132762460826615

`Δ[A006897(n)]-A033995(n+1)`
-/

namespace A236525.P9172132762460826615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033995 (n + 1)

end

end A236525.P9172132762460826615

/-! ## A236525.P11234091702107408594

`A000088(n+1)-(A076278(n+1)+1)`
-/

namespace A236525.P11234091702107408594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A076278 (n + 1) + 1)

end

end A236525.P11234091702107408594

/-! ## A236525.P2830264447178408561

`Δ[A006897(n)-A033995(n)]-A033995(n)`
-/

namespace A236525.P2830264447178408561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n - A033995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033995 n

end

end A236525.P2830264447178408561

/-! ## A236525.P284338050000828300

`A187236(n+1)+A052431(n+1)-A033995(n+1)`
-/

namespace A236525.P284338050000828300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187236 (n + 1) + (A052431 (n + 1) - A033995 (n + 1))

end

end A236525.P284338050000828300

/-!
# A236526: Numbers k such that k^3 + k +- 1 are twin primes.

The programs for A236526, there is no canonical definition to state claims against.
-/

/-! ## A236526.P1743058691094572324

`∩[A049407(n+1), A236475(n+1)]`
-/

namespace A236526.P1743058691094572324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236526.P1743058691094572324

/-! ## A236526.P11949712209154694819

`3*A371029(n+1)`
-/

namespace A236526.P11949712209154694819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A371029 (n + 1)

end

end A236526.P11949712209154694819

/-! ## A236526.P11243157153418342876

`A008486(A371029(n+1))`
-/

namespace A236526.P11243157153418342876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A371029 (n + 1)).toNat

end

end A236526.P11243157153418342876

/-! ## A236526.P9213758187102512767

`∩[A049407(n+2), A128955(n+1)+1]`
-/

namespace A236526.P9213758187102512767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128955 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236526.P9213758187102512767

/-!
# A236527: Primes obtained by concatenating to the end of previous term the next smallest number that will produce a prime, starting with 3.

The programs for A236527, there is no canonical definition to state claims against.
-/

/-! ## A236527.P10155041599873209828

`A030670(A000720(a(n-1)))` with `a(0)=3`
-/

namespace A236527.P10155041599873209828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A030670 (A000720 (a (n - 1)).toNat).toNat

end

end A236527.P10155041599873209828

/-!
# A236529: Primes arising in A069607.

The programs for A236529, there is no canonical definition to state claims against.
-/

/-! ## A236529.P16168911905590137315

`A030670(A000720(a(n-1)))` with `a(0)=5`
-/

namespace A236529.P16168911905590137315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A030670 (A000720 (a (n - 1)).toNat).toNat

end

end A236529.P16168911905590137315

/-!
# A236531: a(n) = |{0 < k < n: {6*k -1 , 6*k + 1} and {prime(n-k), prime(n-k) + 2} are both twin prime pairs}|.

The programs for A236531, there is no canonical definition to state claims against.
-/

/-! ## A236531.P7351345187771183610

`A238529(∑[A306357(n)])`
-/

namespace A236531.P7351345187771183610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236531.P7351345187771183610

/-! ## A236531.P17319974194446759462

`A001221(C(A236343(n), ∑{e}[n+1, #]))`
-/

namespace A236531.P17319974194446759462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A236343 n).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A236531.P17319974194446759462

/-! ## A236531.P6424753883838272409

`A325678(n)-A118682(A187829(n+1))`
-/

namespace A236531.P6424753883838272409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 n - A118682 (A187829 (n + 1)).toNat

end

end A236531.P6424753883838272409

/-! ## A236531.P177684049856191624

`A375272(A375282(n+2)-A057364(n))`
-/

namespace A236531.P177684049856191624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375272 (A375282 (n + 2) - A057364 n).toNat

end

end A236531.P177684049856191624

/-! ## A236531.P16419919039878396845

`A001221(C(A236343(n), A305079(n+1)))`
-/

namespace A236531.P16419919039878396845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A236343 n).toNat (A305079 (n + 1)).toNat)

end

end A236531.P16419919039878396845

/-!
# A236532: Triangle T(n,k) read by rows: T(n,k) = floor(n*k/(n+k)), with 1 <= k <= n.

The programs for A236532, the canonical program `A236532.P10006974339831155557` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236532 has offset 1).

The definition of A236532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)+1)*(col(n)+1)/(row(n)+1+col(n)+1))` (program `A236532.P10006974339831155557`, by `A236532.P10006974339831155557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236532.P10006974339831155557

`floor((row(n)+1)*(col(n)+1)/(row(n)+1+col(n)+1))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236532

/-- `floor((row(n)+1)*(col(n)+1)/(row(n)+1+col(n)+1))` -/
def P10006974339831155557.Spec : Prop :=
  ∀ n, P10006974339831155557.a n = A236532 (n + 1)

theorem P10006974339831155557.correct : P10006974339831155557.Spec := by
  intro n
  simp only [A236532, Nat.add_sub_cancel]

end A236532

/-! ## A236532.P18167315123657496015

`ceil(A079904(n)/A108872(n+1))`
-/

namespace A236532.P18167315123657496015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079904 n : ℚ) / (A108872 (n + 1) : ℚ)⌉

end

end A236532.P18167315123657496015

namespace A236532

/-- `ceil(A079904(n)/A108872(n+1))` -/
def P18167315123657496015.Spec : Prop :=
  ∀ n, P18167315123657496015.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P13400542211096953306

`floor(A075362(n+1)/A108872(n+1))`
-/

namespace A236532.P13400542211096953306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) / (A108872 (n + 1) : ℚ)⌋

end

end A236532.P13400542211096953306

namespace A236532

/-- `floor(A075362(n+1)/A108872(n+1))` -/
def P13400542211096953306.Spec : Prop :=
  ∀ n, P13400542211096953306.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P13929872429828287012

`floor(A221918(n+1)/A221919(n+1))`
-/

namespace A236532.P13929872429828287012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221918 (n + 1) : ℚ) / (A221919 (n + 1) : ℚ)⌋

end

end A236532.P13929872429828287012

namespace A236532

/-- `floor(A221918(n+1)/A221919(n+1))` -/
def P13929872429828287012.Spec : Prop :=
  ∀ n, P13929872429828287012.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P16476652962326217567

`floor(A075362(n+1)/(A051162(n)+2))`
-/

namespace A236532.P16476652962326217567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) / (A051162 n + 2 : ℚ)⌋

end

end A236532.P16476652962326217567

namespace A236532

/-- `floor(A075362(n+1)/(A051162(n)+2))` -/
def P16476652962326217567.Spec : Prop :=
  ∀ n, P16476652962326217567.a n = A236532 (n + 1)

theorem P16476652962326217567.correct : P16476652962326217567.Spec := by
  intro n
  simp only [A236532, Nat.add_sub_cancel, A236532.P16476652962326217567.a, A236532.P10006974339831155557.a, A051162, A051162.P4484969187050632534.a, A075362, A075362.P14519753816398962141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236532

/-! ## A236532.P7172205258455705294

`floor(A075362(n+1)/(A094727(n+1)+1))`
-/

namespace A236532.P7172205258455705294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) / (A094727 (n + 1) + 1 : ℚ)⌋

end

end A236532.P7172205258455705294

namespace A236532

/-- `floor(A075362(n+1)/(A094727(n+1)+1))` -/
def P7172205258455705294.Spec : Prop :=
  ∀ n, P7172205258455705294.a n = A236532 (n + 1)

theorem P7172205258455705294.correct : P7172205258455705294.Spec := by
  intro n
  simp only [A236532, Nat.add_sub_cancel, A236532.P7172205258455705294.a, A236532.P10006974339831155557.a, A075362, A075362.P14519753816398962141.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236532

/-! ## A236532.P16985104900692487404

`floor(A075362(n+1)/A094727(A014132(n+1)))`
-/

namespace A236532.P16985104900692487404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075362 (n + 1) : ℚ) / (A094727 (A014132 (n + 1)).toNat : ℚ)⌋

end

end A236532.P16985104900692487404

namespace A236532

/-- `floor(A075362(n+1)/A094727(A014132(n+1)))` -/
def P16985104900692487404.Spec : Prop :=
  ∀ n, P16985104900692487404.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P15677465145927973158

`floor(A003506(n+1)/A029653(A099375(n)+n))`
-/

namespace A236532.P15677465145927973158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003506 (n + 1) : ℚ) / (A029653 (A099375 n + (n : ℤ)).toNat : ℚ)⌋

end

end A236532.P15677465145927973158

namespace A236532

/-- `floor(A003506(n+1)/A029653(A099375(n)+n))` -/
def P15677465145927973158.Spec : Prop :=
  ∀ n, P15677465145927973158.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P15010480528690558358

`floor(A026741(A227041(n+1))/A221919(n+1))`
-/

namespace A236532.P15010480528690558358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026741 (A227041 (n + 1)).toNat : ℚ) / (A221919 (n + 1) : ℚ)⌋

end

end A236532.P15010480528690558358

namespace A236532

/-- `floor(A026741(A227041(n+1))/A221919(n+1))` -/
def P15010480528690558358.Spec : Prop :=
  ∀ n, P15010480528690558358.a n = A236532 (n + 1)

end A236532

/-! ## A236532.P5148703467328176963

`A004218(A156042(n+1))`
-/

namespace A236532.P5148703467328176963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A156042 (n + 1)).toNat

end

end A236532.P5148703467328176963

namespace A236532

/-- `A004218(A156042(n+1))` -/
def P5148703467328176963.Spec : Prop :=
  ∀ n, P5148703467328176963.a n = A236532 (n + 1)

end A236532

/-!
# A236533: Number of non-congruent Heronian triangles with base length n whose apex lies on or within a space bounded by a semicircle of diameter n.

The programs for A236533, there is no canonical definition to state claims against.
-/

/-! ## A236533.P8841304033455565351

`A155212(A000048(n))%A048996(n+1)`
-/

namespace A236533.P8841304033455565351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155212 (A000048 n).toNat) (A048996 (n + 1))

end

end A236533.P8841304033455565351

/-! ## A236533.P1087783584379452732

`A025435(A090649(n+1)%A107429(n+1))`
-/

namespace A236533.P1087783584379452732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (Int.tmod (A090649 (n + 1)) (A107429 (n + 1))).toNat

end

end A236533.P1087783584379452732

/-! ## A236533.P2203019660988686882

`A090049(A001158(n+3))%A111786(n+1)`
-/

namespace A236533.P2203019660988686882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090049 (A001158 (n + 3)).toNat) (A111786 (n + 1))

end

end A236533.P2203019660988686882

/-! ## A236533.P233967826026070505

`A366981((A334512(n+1)/2)²)`
-/

namespace A236533.P233967826026070505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366981 (SequenceMachineLib.roundAway (((A334512 (n + 1) : ℚ) / 2) ^ 2)).toNat

end

end A236533.P233967826026070505

/-! ## A236533.P6517051613507787637

`A306006(n)%A242627(A036040(n+1))`
-/

namespace A236533.P6517051613507787637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306006 n) (A242627 (A036040 (n + 1)).toNat)

end

end A236533.P6517051613507787637

/-!
# A236535: a(n)*Pi is the total length of irregular spiral (center points: 2, 3, 1; pattern 1) after n rotations.

The programs for A236535, the canonical program `A236535.P12976761071428609405` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236535 has offset 1).

The definition of A236535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236535.P12976761071428609405

`∑[2+n²%3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236535

/-- `∑[2+n²%3]` -/
def P12976761071428609405.Spec : Prop :=
  ∀ n, (P12976761071428609405.a n : ℤ) = A236535 (n + 1)

theorem P12976761071428609405.correct : P12976761071428609405.Spec := by
  intro n
  simp only [A236535, Nat.add_sub_cancel]

end A236535

/-! ## A236535.P9305088116345093558

`∑[dr(n^6+2)]`
-/

namespace A236535.P9305088116345093558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 6 + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236535.P9305088116345093558

namespace A236535

/-- `∑[dr(n^6+2)]` -/
def P9305088116345093558.Spec : Prop :=
  ∀ n, (P9305088116345093558.a n : ℤ) = A236535 (n + 1)

end A236535

/-! ## A236535.P14183936555182338833

`∑[3-char[3*n]]`
-/

namespace A236535.P14183936555182338833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236535.P14183936555182338833

namespace A236535

/-- `∑[3-char[3*n]]` -/
def P14183936555182338833.Spec : Prop :=
  ∀ n, P14183936555182338833.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P6629870369410201138

`round(record[xor(7, n)]/3)`
-/

namespace A236535.P6629870369410201138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3)

end

end A236535.P6629870369410201138

namespace A236535

/-- `round(record[xor(7, n)]/3)` -/
def P6629870369410201138.Spec : Prop :=
  ∀ n, P6629870369410201138.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P12861374925600232266

`ceil(or(6, 8*n)/3)`
-/

namespace A236535.P12861374925600232266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 6 (8 * n) : ℚ) / 3⌉

end

end A236535.P12861374925600232266

namespace A236535

/-- `ceil(or(6, 8*n)/3)` -/
def P12861374925600232266.Spec : Prop :=
  ∀ n, P12861374925600232266.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P6951471762481052793

`ceil(xor(6, 8*n)/3)`
-/

namespace A236535.P6951471762481052793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 6 (8 * n) : ℚ) / 3⌉

end

end A236535.P6951471762481052793

namespace A236535

/-- `ceil(xor(6, 8*n)/3)` -/
def P6951471762481052793.Spec : Prop :=
  ∀ n, P6951471762481052793.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P10777589327444469866

`round(or(7, 8*n)/3)`
-/

namespace A236535.P10777589327444469866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 7 (8 * n) : ℚ) / 3)

end

end A236535.P10777589327444469866

namespace A236535

/-- `round(or(7, 8*n)/3)` -/
def P10777589327444469866.Spec : Prop :=
  ∀ n, P10777589327444469866.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P1159240732728717221

`a(n-3)+8` with `a(0)=2, a(1)=5, a(2)=8`
-/

namespace A236535.P1159240732728717221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 8] fun n a =>
  a (n - 3) + 8

end

end A236535.P1159240732728717221

namespace A236535

/-- `a(n-3)+8` -/
def P1159240732728717221.Spec : Prop :=
  ∀ n, (P1159240732728717221.a n : ℤ) = A236535 (n + 1)

end A236535

/-! ## A236535.P9350110779377668530

`abs(∑[3-∑[n+1]%3])`
-/

namespace A236535.P9350110779377668530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A236535.P9350110779377668530

namespace A236535

/-- `abs(∑[3-∑[n+1]%3])` -/
def P9350110779377668530.Spec : Prop :=
  ∀ n, P9350110779377668530.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P13731794394202108678

`ogf((2+3x+3x^2)/(1-x-x^3+x^4))`
-/

namespace A236535.P13731794394202108678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, -1, 0, -1, 1] n

end

end A236535.P13731794394202108678

namespace A236535

/-- `ogf((2+3x+3x^2)/(1-x-x^3+x^4))` -/
def P13731794394202108678.Spec : Prop :=
  ∀ n, P13731794394202108678.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P2082073653866151476

`record[n+2-2*and(5, -n)]`
-/

namespace A236535.P2082073653866151476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - 2 * Int.land 5 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236535.P2082073653866151476

namespace A236535

/-- `record[n+2-2*and(5, -n)]` -/
def P2082073653866151476.Spec : Prop :=
  ∀ n, P2082073653866151476.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P7670381557834248976

`ceil((lcm(4, 2*n+1)+2)/3)`
-/

namespace A236535.P7670381557834248976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 4 (2 * n + 1) + 2 : ℚ) / 3⌉

end

end A236535.P7670381557834248976

namespace A236535

/-- `ceil((lcm(4, 2*n+1)+2)/3)` -/
def P7670381557834248976.Spec : Prop :=
  ∀ n, P7670381557834248976.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P14365574298835240259

`round(xor(3, 4*(2*n+1))/3)`
-/

namespace A236535.P14365574298835240259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (4 * (2 * n + 1)) : ℚ) / 3)

end

end A236535.P14365574298835240259

namespace A236535

/-- `round(xor(3, 4*(2*n+1))/3)` -/
def P14365574298835240259.Spec : Prop :=
  ∀ n, P14365574298835240259.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P13421036136102143444

`record[(n+1)%4+2*n+1]`
-/

namespace A236535.P13421036136102143444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 4 + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236535.P13421036136102143444

namespace A236535

/-- `record[(n+1)%4+2*n+1]` -/
def P13421036136102143444.Spec : Prop :=
  ∀ n, (P13421036136102143444.a n : ℤ) = A236535 (n + 1)

end A236535

/-! ## A236535.P8761022369528164698

`record[2*n+and(3, n+1)+1]`
-/

namespace A236535.P8761022369528164698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.land 3 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236535.P8761022369528164698

namespace A236535

/-- `record[2*n+and(3, n+1)+1]` -/
def P8761022369528164698.Spec : Prop :=
  ∀ n, (P8761022369528164698.a n : ℤ) = A236535 (n + 1)

end A236535

/-! ## A236535.P17165022121920515292

`record[2*n-(xor(5, n-1)+4)]`
-/

namespace A236535.P17165022121920515292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Int.xor 5 ((n : ℤ) - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236535.P17165022121920515292

namespace A236535

/-- `record[2*n-(xor(5, n-1)+4)]` -/
def P17165022121920515292.Spec : Prop :=
  ∀ n, P17165022121920515292.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P18146590692423705371

`record[and(3, n+1)+n+1+n]`
-/

namespace A236535.P18146590692423705371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 1) + (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236535.P18146590692423705371

namespace A236535

/-- `record[and(3, n+1)+n+1+n]` -/
def P18146590692423705371.Spec : Prop :=
  ∀ n, (P18146590692423705371.a n : ℤ) = A236535 (n + 1)

end A236535

/-! ## A236535.P4510594008151564105

`∑[n+1]-∑[∑[(n-1)%3]]`
-/

namespace A236535.P4510594008151564105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A236535.P4510594008151564105

namespace A236535

/-- `∑[n+1]-∑[∑[(n-1)%3]]` -/
def P4510594008151564105.Spec : Prop :=
  ∀ n, P4510594008151564105.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P15842429715163334753

`3-(4%gcd(3, n)-a(n-1))` with `a(0)=2`
-/

namespace A236535.P15842429715163334753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 - (((4 % Nat.gcd 3 n : ℕ) : ℤ) - a (n - 1))

end

end A236535.P15842429715163334753

namespace A236535

/-- `3-(4%gcd(3, n)-a(n-1))` -/
def P15842429715163334753.Spec : Prop :=
  ∀ n, P15842429715163334753.a n = A236535 (n + 1)

end A236535

/-! ## A236535.P14334127345603168149

`2-floor(a(n-1)/2-4*n)` with `a(0)=2`
-/

namespace A236535.P14334127345603168149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ⌊(a (n - 1) : ℚ) / 2 - (4 * n : ℚ)⌋

end

end A236535.P14334127345603168149

namespace A236535

/-- `2-floor(a(n-1)/2-4*n)` -/
def P14334127345603168149.Spec : Prop :=
  ∀ n, P14334127345603168149.a n = A236535 (n + 1)

end A236535

/-!
# A236536: Array T(n,k) read along antidiagonals: the composites of order of compositeness n in row n.

The programs for A236536, there is no canonical definition to state claims against.
-/

/-! ## A236536.P667374162527597950

`A114577(∑[2*n]%comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A236536.P667374162527597950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A236536.P667374162527597950

/-! ## A236536.P18246666516329155659

`A114577(A099375(n)+1+n)`
-/

namespace A236536.P18246666516329155659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A099375 n + 1 + (n : ℤ)).toNat

end

end A236536.P18246666516329155659

/-! ## A236536.P4804943292880154751

`A114577(A212012(n+1)+n)`
-/

namespace A236536.P4804943292880154751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A236536.P4804943292880154751

/-! ## A236536.P8836818002631557650

`A114577(A061579(comp[∑[n]])+1)`
-/

namespace A236536.P8836818002631557650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A236536.P8836818002631557650

/-! ## A236536.P9531247372047925207

`A114577(A061579(comp[∑[n-1]]))`
-/

namespace A236536.P9531247372047925207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A236536.P9531247372047925207

/-! ## A236536.P17933895832873164906

`A114577(2*A004736(n+1)+n)`
-/

namespace A236536.P17933895832873164906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A236536.P17933895832873164906

/-! ## A236536.P3901426441480537068

`A114577(A038722(n+1)+round(sqrt(2*(n+1))))`
-/

namespace A236536.P3901426441480537068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A038722 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A236536.P3901426441480537068

/-! ## A236536.P4561379258482130191

`A002808(A114577(A038722(n+1)))`
-/

namespace A236536.P4561379258482130191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A114577 (A038722 (n + 1)).toNat).toNat

end

end A236536.P4561379258482130191

/-! ## A236536.P3614754442735261567

`A114577(A348553(A099375(n))+n)`
-/

namespace A236536.P3614754442735261567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A348553 (A099375 n).toNat + (n : ℤ)).toNat

end

end A236536.P3614754442735261567

/-! ## A236536.P1512974554565285937

`A114577(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A236536.P1512974554565285937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A236536.P1512974554565285937

/-!
# A236537: Primes whose binary and ternary representations are also prime when read in decimal.

The programs for A236537, there is no canonical definition to state claims against.
-/

/-! ## A236537.P11359711954507871617

`∩[A065720(n+1), A065721(n+1)]`
-/

namespace A236537.P11359711954507871617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236537.P11359711954507871617

/-! ## A236537.P17105981702712052971

`∩[A036952(n+1), A065721(n+1)]`
-/

namespace A236537.P17105981702712052971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236537.P17105981702712052971

/-! ## A236537.P4868313673993038186

`∩[A036954(n+1), A065720(n+1)]`
-/

namespace A236537.P4868313673993038186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236537.P4868313673993038186

/-! ## A236537.P8927729866426874589

`p?[∩[A036952(n+1), A036954(n+1)]]`
-/

namespace A236537.P8927729866426874589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236537.P8927729866426874589

/-!
# A236538: Triangle read by rows: T(n,k) = (n+1)*2^(n-2)+(k-1)*2^(n-1) for 1 <= k <= n.

The programs for A236538, the canonical program `A236538.P1681024587195576123` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236538 has offset 1).

The definition of A236538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236538.P1681024587195576123

`(row(n)+2)*2^(row(n)-1)+col(n)*2^row(n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236538

/-- `(row(n)+2)*2^(row(n)-1)+col(n)*2^row(n)` -/
def P1681024587195576123.Spec : Prop :=
  ∀ n, P1681024587195576123.a n = (A236538 (n + 1) : ℚ)

end A236538

/-! ## A236538.P2402533533735596663

`A130124(n+1)+A001787(A003056(n))`
-/

namespace A236538.P2402533533735596663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130124 (n + 1) + A001787 (A003056 n).toNat

end

end A236538.P2402533533735596663

namespace A236538

/-- `A130124(n+1)+A001787(A003056(n))` -/
def P2402533533735596663.Spec : Prop :=
  ∀ n, P2402533533735596663.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P4105966022702293588

`A139756(A002024(n+1))+A130124(n+1)`
-/

namespace A236538.P4105966022702293588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A002024 (n + 1)).toNat + A130124 (n + 1)

end

end A236538.P4105966022702293588

namespace A236538

/-- `A139756(A002024(n+1))+A130124(n+1)` -/
def P4105966022702293588.Spec : Prop :=
  ∀ n, P4105966022702293588.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P12977586545542019013

`A001787(A003056(n))+(A002262(n)+1)*A137688(n)`
-/

namespace A236538.P12977586545542019013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003056 n).toNat + (A002262 n + 1) * A137688 n

end

end A236538.P12977586545542019013

namespace A236538

/-- `A001787(A003056(n))+(A002262(n)+1)*A137688(n)` -/
def P12977586545542019013.Spec : Prop :=
  ∀ n, P12977586545542019013.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P10506145654960322738

`A001787(A003056(n))+A057555(2*n+1)*A137688(n)`
-/

namespace A236538.P10506145654960322738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003056 n).toNat + A057555 (2 * n + 1) * A137688 n

end

end A236538.P10506145654960322738

namespace A236538

/-- `A001787(A003056(n))+A057555(2*n+1)*A137688(n)` -/
def P10506145654960322738.Spec : Prop :=
  ∀ n, P10506145654960322738.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P16073415899714164294

`A053219(A245300(n)+1)`
-/

namespace A236538.P16073415899714164294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (A245300 n + 1).toNat

end

end A236538.P16073415899714164294

namespace A236538

/-- `A053219(A245300(n)+1)` -/
def P16073415899714164294.Spec : Prop :=
  ∀ n, P16073415899714164294.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P14602773703141114348

`A053218(A278818(A245300(n)))`
-/

namespace A236538.P14602773703141114348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A278818 (A245300 n).toNat).toNat

end

end A236538.P14602773703141114348

namespace A236538

/-- `A053218(A278818(A245300(n)))` -/
def P14602773703141114348.Spec : Prop :=
  ∀ n, P14602773703141114348.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P2460810980330344970

`∑[A137688(n)]-A211991(A137688(n))`
-/

namespace A236538.P2460810980330344970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211991 (A137688 n).toNat

end

end A236538.P2460810980330344970

namespace A236538

/-- `∑[A137688(n)]-A211991(A137688(n))` -/
def P2460810980330344970.Spec : Prop :=
  ∀ n, P2460810980330344970.a n = A236538 (n + 1)

end A236538

/-! ## A236538.P1380844603677670138

`A130124(n+1)+A003415(A137688(n))`
-/

namespace A236538.P1380844603677670138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130124 (n + 1) + A003415 (A137688 n).toNat

end

end A236538.P1380844603677670138

namespace A236538

/-- `A130124(n+1)+A003415(A137688(n))` -/
def P1380844603677670138.Spec : Prop :=
  ∀ n, P1380844603677670138.a n = A236538 (n + 1)

end A236538

/-!
# A236539: Integer areas of integer-sided triangles such that the length of two sides are Fibonacci numbers.

The programs for A236539, there is no canonical definition to state claims against.
-/

/-! ## A236539.P16593780288920641608

`6*A329888(A002802(n))`
-/

namespace A236539.P16593780288920641608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A329888 (A002802 n).toNat

end

end A236539.P16593780288920641608

/-! ## A236539.P3469646971966435471

`∑[A242394(∑[A115455(n)])]`
-/

namespace A236539.P3469646971966435471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115455 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242394 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236539.P3469646971966435471

/-!
# A236540: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists k copies of the positive squares in nondecreasing order, except the first column which lists the triangular numbers, and the first element of column k is in row k(k+1)/2.

The programs for A236540, there is no canonical definition to state claims against.
-/

/-! ## A236540.P1878012960711564022

`A236104(n+1)%A328371(n+1)`
-/

namespace A236540.P1878012960711564022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236104 (n + 1)) (A328371 (n + 1))

end

end A236540.P1878012960711564022

/-! ## A236540.P4669312968305228470

`A235791(n+1)²%A328371(n+1)`
-/

namespace A236540.P4669312968305228470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235791 (n + 1) ^ 2) (A328371 (n + 1))

end

end A236540.P4669312968305228470

/-! ## A236540.P9716560441367864644

`((A338721(n+1)+1)/2)²%A328371(n+1)`
-/

namespace A236540.P9716560441367864644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A338721 (n + 1) + 1 : ℚ) / 2) ^ 2)) (A328371 (n + 1))

end

end A236540.P9716560441367864644

/-! ## A236540.P5131228660938168369

`A079097(A338721(n+1))%A328371(n+1)`
-/

namespace A236540.P5131228660938168369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079097 (A338721 (n + 1)).toNat) (A328371 (n + 1))

end

end A236540.P5131228660938168369

/-! ## A236540.P3927721306895276719

`(A235791(n+1)^A040000(n)!)%A328371(n+1)`
-/

namespace A236540.P3927721306895276719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235791 (n + 1) ^ Nat.factorial (A040000 n).toNat) (A328371 (n + 1))

end

end A236540.P3927721306895276719

/-! ## A236540.P5524661095025243833

`A236104(A000027(n+1))%A000217(A262535(n+1))`
-/

namespace A236540.P5524661095025243833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236104 (A000027 (n + 1)).toNat) (A000217 (A262535 (n + 1)).toNat)

end

end A236540.P5524661095025243833

/-! ## A236540.P2322319690071683751

`A000463(A338721(n+1)+1)%A000217(A328368(n+1))`
-/

namespace A236540.P2322319690071683751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000463 (A338721 (n + 1) + 1).toNat) (A000217 (A328368 (n + 1)).toNat)

end

end A236540.P2322319690071683751

/-! ## A236540.P1314639456855228526

`(A235791(n+1)^A020639(A016825(n)))%A328371(n+1)`
-/

namespace A236540.P1314639456855228526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A235791 (n + 1) : ℚ) ^ (A020639 (A016825 n).toNat : ℤ))) (A328371 (n + 1))

end

end A236540.P1314639456855228526

/-!
# A236541: Number of ways to write 2*n = k + m with 0 < k <= m such that prime(k) + m and k + prime(m) are both prime.

The programs for A236541, there is no canonical definition to state claims against.
-/

/-! ## A236541.P663642742227942483

`A035232(A043743(n+1)*A306400(n+1))`
-/

namespace A236541.P663642742227942483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A043743 (n + 1) * A306400 (n + 1)).toNat

end

end A236541.P663642742227942483

/-! ## A236541.P3514072035439025103

`A109066(A185100(n)+A000032(n))`
-/

namespace A236541.P3514072035439025103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (A185100 n + A000032 n).toNat

end

end A236541.P3514072035439025103

/-! ## A236541.P6603383995020691757

`A039997(7*A326078(n))`
-/

namespace A236541.P6603383995020691757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (7 * A326078 n).toNat

end

end A236541.P6603383995020691757

/-! ## A236541.P6849597729971250264

`abs(Δ[A237593(A049029(n+1))])`
-/

namespace A236541.P6849597729971250264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A049029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A236541.P6849597729971250264

/-! ## A236541.P10367351263704139648

`A160382(A133263(n)*A214076(n+1))`
-/

namespace A236541.P10367351263704139648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A133263 n * A214076 (n + 1)).toNat

end

end A236541.P10367351263704139648

/-!
# A236542: Array T(n,k) read along descending antidiagonals: row n contains the primes with n steps in the prime index chain.

The programs for A236542, there is no canonical definition to state claims against.
-/

/-! ## A236542.P6046817628165141807

`A114537(2*(C(comp[∑[n]]-n, 2)-n)+n)`
-/

namespace A236542.P6046817628165141807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A236542.P6046817628165141807

/-! ## A236542.P12065195797168908864

`A135044(A236536(n+1))`
-/

namespace A236542.P12065195797168908864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135044 (A236536 (n + 1)).toNat

end

end A236542.P12065195797168908864

/-! ## A236542.P15402580085555082749

`A114537(A380649(n+1)+1)`
-/

namespace A236542.P15402580085555082749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A380649 (n + 1) + 1).toNat

end

end A236542.P15402580085555082749

/-! ## A236542.P17609794105677454777

`A114537(A099375(n)+1+n)`
-/

namespace A236542.P17609794105677454777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A099375 n + 1 + (n : ℤ)).toNat

end

end A236542.P17609794105677454777

/-! ## A236542.P15033901035412198092

`A114537(A212012(n+1)+n)`
-/

namespace A236542.P15033901035412198092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A236542.P15033901035412198092

/-! ## A236542.P12700158316542694388

`A114537(A038722(comp[∑[n]]+1))`
-/

namespace A236542.P12700158316542694388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A236542.P12700158316542694388

/-! ## A236542.P14005157574569620472

`A114537(A061579(n)+A003057(n+2))`
-/

namespace A236542.P14005157574569620472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A061579 n + A003057 (n + 2)).toNat

end

end A236542.P14005157574569620472

/-! ## A236542.P14490487166411273034

`A114537(A038722(n+1)+A002024(n+1))`
-/

namespace A236542.P14490487166411273034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A236542.P14490487166411273034

/-! ## A236542.P12367848223043847982

`A114537(A254106(A055938(A254107(n+1))))`
-/

namespace A236542.P12367848223043847982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A254106 (A055938 (A254107 (n + 1)).toNat).toNat).toNat

end

end A236542.P12367848223043847982

/-!
# A236543: Number of partitions of n for which (number of occurrences of the least part) = (number of occurrences of greatest part).

The programs for A236543, there is no canonical definition to state claims against.
-/

/-! ## A236543.P9812673753606048493

`A265259(n+1)+Δ[A006218(n)]`
-/

namespace A236543.P9812673753606048493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + (f1 (n + 1) - f1 n)

end

end A236543.P9812673753606048493

/-! ## A236543.P10920438744019147604

`A265259(n+1)+Δ[A054519(n)]`
-/

namespace A236543.P10920438744019147604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + (f1 (n + 1) - f1 n)

end

end A236543.P10920438744019147604

/-! ## A236543.P14613865495929079963

`A265259(n+1)+A000005(n+1)`
-/

namespace A236543.P14613865495929079963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + A000005 (n + 1)

end

end A236543.P14613865495929079963

/-! ## A236543.P17185915984547592079

`A265259(n+1)+A179941(n+1)`
-/

namespace A236543.P17185915984547592079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + A179941 (n + 1)

end

end A236543.P17185915984547592079

/-! ## A236543.P9175207931763590683

`A265259(n+1)+A179942(n+1)`
-/

namespace A236543.P9175207931763590683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + A179942 (n + 1)

end

end A236543.P9175207931763590683

/-! ## A236543.P10625610773637331251

`A265259(n+1)+A046951((n+1)²)`
-/

namespace A236543.P10625610773637331251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + A046951 ((n + 1) ^ 2)

end

end A236543.P10625610773637331251

/-! ## A236543.P14736594968938484128

`A265259(n+1)+A134979(∑[n+1])`
-/

namespace A236543.P14736594968938484128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265259 (n + 1) + A134979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236543.P14736594968938484128

/-! ## A236543.P15135603191055775763

`A032741(n+1)+A265259(n+1)+1`
-/

namespace A236543.P15135603191055775763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A265259 (n + 1) + 1)

end

end A236543.P15135603191055775763

/-! ## A236543.P12544318050768404030

`A320111(2*(n+1))+A265259(n+1)`
-/

namespace A236543.P12544318050768404030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + A265259 (n + 1)

end

end A236543.P12544318050768404030

/-! ## A236543.P17353512436460605984

`A268189(A000124(n))+A265259(n+1)`
-/

namespace A236543.P17353512436460605984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268189 (A000124 n).toNat + A265259 (n + 1)

end

end A236543.P17353512436460605984

/-!
# A236544: Number of partitions of n for which (number of occurrences of the least part) > (number of occurrences of greatest part).

The programs for A236544, there is no canonical definition to state claims against.
-/

/-! ## A236544.P1765096129176136977

`A000041(n+1)-(A236545(n+1)+A236543(n+1))`
-/

namespace A236544.P1765096129176136977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A236545 (n + 1) + A236543 (n + 1))

end

end A236544.P1765096129176136977

/-! ## A236544.P7407631755559388099

`A047967(n)-A188014(A000085(n))`
-/

namespace A236544.P7407631755559388099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n - A188014 (A000085 n).toNat

end

end A236544.P7407631755559388099

/-! ## A236544.P3516431706304940647

`A005206(A319635(n))-A136714(n)`
-/

namespace A236544.P3516431706304940647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A319635 n).toNat - A136714 n

end

end A236544.P3516431706304940647

/-! ## A236544.P8464976969836947927

`A000041(n)-A325678(A326083(n))`
-/

namespace A236544.P8464976969836947927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325678 (A326083 n).toNat

end

end A236544.P8464976969836947927

/-! ## A236544.P2052088015632886459

`A364652(n+1)-A317081(A328404(n))`
-/

namespace A236544.P2052088015632886459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364652 (n + 1) - A317081 (A328404 n).toNat

end

end A236544.P2052088015632886459

/-!
# A236545: Number of partitions of n for which (number of occurrences of the least part) < (number of occurrences of greatest part).

The programs for A236545, there is no canonical definition to state claims against.
-/

/-! ## A236545.P1034237709806095875

`A000041(n+1)-(A236544(n+1)+A236543(n+1))`
-/

namespace A236545.P1034237709806095875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A236544 (n + 1) + A236543 (n + 1))

end

end A236545.P1034237709806095875

/-!
# A236547: Numbers k such that (2^(2k + 1) - 2)/3 + k - 1 is prime.

The programs for A236547, there is no canonical definition to state claims against.
-/

/-! ## A236547.P1980658509578534548

`∩[A326669(n+1), A087136(n)]`
-/

namespace A236547.P1980658509578534548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087136 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236547.P1980658509578534548

/-!
# A236548: Number of ways to write n = k^2 + m with k > 0 and m > 0 such that phi(k^2) + prime(m) is prime, where phi(.) is Euler's totient function.

The programs for A236548, there is no canonical definition to state claims against.
-/

/-! ## A236548.P11038699497737019506

`A348213(A256966(n+2)²)`
-/

namespace A236548.P11038699497737019506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (A256966 (n + 2) ^ 2).toNat

end

end A236548.P11038699497737019506

/-! ## A236548.P7234263233925958009

`A348213(A280944(n+2)²)`
-/

namespace A236548.P7234263233925958009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (A280944 (n + 2) ^ 2).toNat

end

end A236548.P7234263233925958009

/-! ## A236548.P16065641703645871036

`A348213(A256966(n+2)*A280944(n+2))`
-/

namespace A236548.P16065641703645871036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (A256966 (n + 2) * A280944 (n + 2)).toNat

end

end A236548.P16065641703645871036

/-! ## A236548.P9445377497444882590

`A391441(A246868(n+1))`
-/

namespace A236548.P9445377497444882590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391441 (A246868 (n + 1)).toNat

end

end A236548.P9445377497444882590

/-! ## A236548.P17974986153136319034

`A327144(A315275(n)-A296658(n+1))`
-/

namespace A236548.P17974986153136319034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A315275 n - A296658 (n + 1)).toNat

end

end A236548.P17974986153136319034

/-!
# A236552: a(n) = |{0 < k < n: 6*k - 1, 6*k + 1, 6*k + 5 and prime(n-k) + 6 are all prime}|.

The programs for A236552, there is no canonical definition to state claims against.
-/

/-! ## A236552.P860615694056771846

`A266362(A001222(n+3))%A279385(A036033(n))`
-/

namespace A236552.P860615694056771846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266362 (A001222 (n + 3)).toNat) (A279385 (A036033 n).toNat)

end

end A236552.P860615694056771846

/-! ## A236552.P13693173191719884858

`A001222(A340891(n)%A340917(3*n+4))`
-/

namespace A236552.P13693173191719884858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A340891 n) (A340917 (3 * n + 4))).toNat

end

end A236552.P13693173191719884858

/-! ## A236552.P2493784509627256753

`A031346(A237424(n+1)-A237413(n+1))`
-/

namespace A236552.P2493784509627256753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A237424 (n + 1) - A237413 (n + 1)).toNat

end

end A236552.P2493784509627256753

/-! ## A236552.P17981451146003115564

`A031346(A038567(A303768(n))+A001981(n))`
-/

namespace A236552.P17981451146003115564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A038567 (A303768 n).toNat + A001981 n).toNat

end

end A236552.P17981451146003115564

/-!
# A236553: Number of involutions in the quaternion ring over Z/nZ with i^2=j^2=1.

The programs for A236553, there is no canonical definition to state claims against.
-/

/-! ## A236553.P10136851250786891009

`A291636(A085176(2*n+3)-2)`
-/

namespace A236553.P10136851250786891009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (A085176 (2 * n + 3) - 2).toNat

end

end A236553.P10136851250786891009

/-! ## A236553.P16950212079531443096

`A326306((n+1)^A322988(2*n+3))`
-/

namespace A236553.P16950212079531443096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A322988 (2 * n + 3) : ℤ))).toNat

end

end A236553.P16950212079531443096

/-!
# A236554: Number of involutions in the quaternion ring over Z/(2^n)Z with i^2=j^2=1.

The programs for A236554, there is no canonical definition to state claims against.
-/

/-! ## A236554.P790447915334212127

`A236553(2^(n+1))`
-/

namespace A236554.P790447915334212127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236553 (2 ^ (n + 1))

end

end A236554.P790447915334212127

/-! ## A236554.P4682895601198570698

`A028699(8*A167104(n))`
-/

namespace A236554.P4682895601198570698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028699 (8 * A167104 n).toNat

end

end A236554.P4682895601198570698

/-! ## A236554.P18218271620016710160

`8*A337120(A127904(2*n))`
-/

namespace A236554.P18218271620016710160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A337120 (A127904 (2 * n)).toNat

end

end A236554.P18218271620016710160

/-!
# A236559: Number of partitions of 2n of type EO (see Comments).

The programs for A236559, there is no canonical definition to state claims against.
-/

/-! ## A236559.P650017031836128936

`A000701(2*n)`
-/

namespace A236559.P650017031836128936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n)

end

end A236559.P650017031836128936

/-! ## A236559.P11746227784136081967

`A027193(2*n)`
-/

namespace A236559.P11746227784136081967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n)

end

end A236559.P11746227784136081967

/-! ## A236559.P11303754704326332803

`∑{d}[2*n, A339398(#)]`
-/

namespace A236559.P11303754704326332803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339398 d

end

end A236559.P11303754704326332803

/-! ## A236559.P4837303959887213050

`record[gcd(n%2, A027193(n))]`
-/

namespace A236559.P4837303959887213050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A027193 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236559.P4837303959887213050

/-! ## A236559.P2014716419635203775

`A027187(2*n)-A000700(2*n)`
-/

namespace A236559.P2014716419635203775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n) - A000700 (2 * n)

end

end A236559.P2014716419635203775

/-! ## A236559.P15182521027115252272

`A046682(2*n)-A000700(2*n)`
-/

namespace A236559.P15182521027115252272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n) - A000700 (2 * n)

end

end A236559.P15182521027115252272

/-! ## A236559.P17179296081078047324

`A027187(2*n)-A081362(2*n)`
-/

namespace A236559.P17179296081078047324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n) - A081362 (2 * n)

end

end A236559.P17179296081078047324

/-! ## A236559.P2563866892805987387

`A330644(2*n)/2`
-/

namespace A236559.P2563866892805987387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330644 (2 * n) : ℚ) / 2

end

end A236559.P2563866892805987387

/-! ## A236559.P13281612124475205358

`A058696(n)-A027187(2*n)`
-/

namespace A236559.P13281612124475205358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A027187 (2 * n)

end

end A236559.P13281612124475205358

/-! ## A236559.P1493246001382487017

`A058696(n)-A046682(2*n)`
-/

namespace A236559.P1493246001382487017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A046682 (2 * n)

end

end A236559.P1493246001382487017

/-! ## A236559.P8366854438032836222

`A000041(2*n)-A027187(2*n)`
-/

namespace A236559.P8366854438032836222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A027187 (2 * n)

end

end A236559.P8366854438032836222

/-! ## A236559.P12532999214719461673

`A000041(2*n)-A046682(2*n)`
-/

namespace A236559.P12532999214719461673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A046682 (2 * n)

end

end A236559.P12532999214719461673

/-! ## A236559.P2037307217645747463

`A000041(2*n)-A347443(2*n)`
-/

namespace A236559.P2037307217645747463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A347443 (2 * n)

end

end A236559.P2037307217645747463

/-! ## A236559.P16346953451180946442

`(A331848(2*n)+A047967(2*n))/2`
-/

namespace A236559.P16346953451180946442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331848 (2 * n) + A047967 (2 * n) : ℚ) / 2

end

end A236559.P16346953451180946442

/-! ## A236559.P8632141183963154654

`(A000041(2*n)-A000700(2*n))/2`
-/

namespace A236559.P8632141183963154654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (2 * n) - A000700 (2 * n) : ℚ) / 2

end

end A236559.P8632141183963154654

/-! ## A236559.P15175197470330721395

`(A000041(2*n)-A081362(2*n))/2`
-/

namespace A236559.P15175197470330721395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (2 * n) - A081362 (2 * n) : ℚ) / 2

end

end A236559.P15175197470330721395

/-! ## A236559.P14547441854019155698

`A000837(2*n)+A018783(2*n)-A027187(2*n)`
-/

namespace A236559.P14547441854019155698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (2 * n) + (A018783 (2 * n) - A027187 (2 * n))

end

end A236559.P14547441854019155698

/-! ## A236559.P8890299034448983187

`(A035363(4*n)-A000700(2*n))/2`
-/

namespace A236559.P8890299034448983187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 (4 * n) - A000700 (2 * n) : ℚ) / 2

end

end A236559.P8890299034448983187

/-! ## A236559.P5033169134526219371

`A027193(A004277(n))%A319552(n)`
-/

namespace A236559.P5033169134526219371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027193 (A004277 n).toNat) (A319552 n)

end

end A236559.P5033169134526219371

/-! ## A236559.P10402470698704161836

`A344611(n)-A000041(n)`
-/

namespace A236559.P10402470698704161836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344611 n - A000041 n

end

end A236559.P10402470698704161836

/-!
# A236561: Values taken by the A049820, sorted into ascending order.

The programs for A236561, there is no canonical definition to state claims against.
-/

/-! ## A236561.P13855758035848039792

`comp[∑[A060990(n)]+n]-n`
-/

namespace A236561.P13855758035848039792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A236561.P13855758035848039792

/-! ## A236561.P14945682212137500160

`A001489(n)+comp[∑[A060990(n)]+n]`
-/

namespace A236561.P14945682212137500160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A236561.P14945682212137500160

/-! ## A236561.P1114007396637367960

`comp[∑[A060990(n)]+n]%A028310(n)`
-/

namespace A236561.P1114007396637367960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A028310 n)

end

end A236561.P1114007396637367960

/-! ## A236561.P4310797620541098326

`A024000(n+1)+comp[∑[A060990(n)]+n]`
-/

namespace A236561.P4310797620541098326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A236561.P4310797620541098326

/-! ## A236561.P17615519959871010072

`(comp[∑[A060990(n)]+n]+n)%A233583(n+1)`
-/

namespace A236561.P17615519959871010072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℤ) (A233583 (n + 1))

end

end A236561.P17615519959871010072

/-!
# A236562: Numbers n such that A049820(x) = n has a solution.

The programs for A236562, the canonical program `A236562.P16099528287106471554` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236562 has offset 1).

The definition of A236562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236562.P1515283078079162556

`comp[A266116(n)]`
-/

namespace A236562.P1515283078079162556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236562.P1515283078079162556

namespace A236562

/-- `comp[A266116(n)]` -/
def P1515283078079162556.Spec : Prop :=
  ∀ n, (P1515283078079162556.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P7959093020686622645

`lt[0, A060990(n)]`
-/

namespace A236562.P7959093020686622645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P7959093020686622645

namespace A236562

/-- `lt[0, A060990(n)]` -/
def P7959093020686622645.Spec : Prop :=
  ∀ n, (P7959093020686622645.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P14688721912789818132

`lt[0, A082284(n)]`
-/

namespace A236562.P14688721912789818132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P14688721912789818132

namespace A236562

/-- `lt[0, A082284(n)]` -/
def P14688721912789818132.Spec : Prop :=
  ∀ n, (P14688721912789818132.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P16099528287106471554

`comp[A045765(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A236562

/-- `comp[A045765(n+1)]` -/
def P16099528287106471554.Spec : Prop :=
  ∀ n, (P16099528287106471554.a n : ℤ) = A236562 (n + 1)

theorem P16099528287106471554.correct : P16099528287106471554.Spec := by
  intro n
  simp only [A236562, Nat.add_sub_cancel]

end A236562

/-! ## A236562.P11524466417212215663

`comp[eq[1, A262697(n)]]`
-/

namespace A236562.P11524466417212215663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A236562.P11524466417212215663

namespace A236562

/-- `comp[eq[1, A262697(n)]]` -/
def P11524466417212215663.Spec : Prop :=
  ∀ n, (P11524466417212215663.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P933881263113688213

`comp[comp[n-A000005(n+1)]+1]`
-/

namespace A236562.P933881263113688213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A236562.P933881263113688213

namespace A236562

/-- `comp[comp[n-A000005(n+1)]+1]` -/
def P933881263113688213.Spec : Prop :=
  ∀ n, (P933881263113688213.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P16491972896812731129

`eq[2, A236213(A262697(n)+2)]`
-/

namespace A236562.P16491972896812731129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (A262697 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236562.P16491972896812731129

namespace A236562

/-- `eq[2, A236213(A262697(n)+2)]` -/
def P16491972896812731129.Spec : Prop :=
  ∀ n, (P16491972896812731129.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P16178268111889635256

`lt[A262696(A262696(n)), A262697(n)+1]`
-/

namespace A236562.P16178268111889635256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 (A262696 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236562.P16178268111889635256

namespace A236562

/-- `lt[A262696(A262696(n)), A262697(n)+1]` -/
def P16178268111889635256.Spec : Prop :=
  ∀ n, (P16178268111889635256.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P1373827956654364587

`lt[0, A262686(n)]`
-/

namespace A236562.P1373827956654364587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262686 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P1373827956654364587

namespace A236562

/-- `lt[0, A262686(n)]` -/
def P1373827956654364587.Spec : Prop :=
  ∀ n, (P1373827956654364587.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P8119925661614197642

`lt[0, A264970(n)]`
-/

namespace A236562.P8119925661614197642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264970 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P8119925661614197642

namespace A236562

/-- `lt[0, A264970(n)]` -/
def P8119925661614197642.Spec : Prop :=
  ∀ n, (P8119925661614197642.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P12438070115250633090

`lt[1, A264971(n)]`
-/

namespace A236562.P12438070115250633090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P12438070115250633090

namespace A236562

/-- `lt[1, A264971(n)]` -/
def P12438070115250633090.Spec : Prop :=
  ∀ n, (P12438070115250633090.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P12912901948435786101

`lt[1, A266111(n)]`
-/

namespace A236562.P12912901948435786101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236562.P12912901948435786101

namespace A236562

/-- `lt[1, A266111(n)]` -/
def P12912901948435786101.Spec : Prop :=
  ∀ n, (P12912901948435786101.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P1500340123912806003

`lt[0, char[A236561(n+1)]]`
-/

namespace A236562.P1500340123912806003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236561 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236562.P1500340123912806003

namespace A236562

/-- `lt[0, char[A236561(n+1)]]` -/
def P1500340123912806003.Spec : Prop :=
  ∀ n, (P1500340123912806003.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P7136456257156644983

`eq[A057427(n+1), A057427(A262686(n))]`
-/

namespace A236562.P7136456257156644983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A262686 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236562.P7136456257156644983

namespace A236562

/-- `eq[A057427(n+1), A057427(A262686(n))]` -/
def P7136456257156644983.Spec : Prop :=
  ∀ n, (P7136456257156644983.a n : ℤ) = A236562 (n + 1)

end A236562

/-! ## A236562.P9591447863798476437

`eq[1, A057427(A262686(n))]*A057427(n)`
-/

namespace A236562.P9591447863798476437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A262686 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A057427 n

end

end A236562.P9591447863798476437

namespace A236562

/-- `eq[1, A057427(A262686(n))]*A057427(n)` -/
def P9591447863798476437.Spec : Prop :=
  ∀ n, P9591447863798476437.a n = A236562 (n + 1)

end A236562

/-! ## A236562.P16874062103347097145

`eq[1, A057427(2*A262686(n))]`
-/

namespace A236562.P16874062103347097145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A262686 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236562.P16874062103347097145

namespace A236562

/-- `eq[1, A057427(2*A262686(n))]` -/
def P16874062103347097145.Spec : Prop :=
  ∀ n, (P16874062103347097145.a n : ℤ) = A236562 (n + 1)

end A236562

/-!
# A236563: a(p^n)=p^(n+1)(p-1) if p is prime and a(nm)=lcm(a(n),a(m)) if gcd(n,m)=1.

The programs for A236563, there is no canonical definition to state claims against.
-/

/-! ## A236563.P5070393071184127788

`lcm((1+n)*∏{p}[n+1, #], A002322(n+1))`
-/

namespace A236563.P5070393071184127788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A002322 (n + 1))

end

end A236563.P5070393071184127788

/-! ## A236563.P16448337346841630844

`lcm(A002322(n+1), A064549(n+1))`
-/

namespace A236563.P16448337346841630844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002322 (n + 1)) (A064549 (n + 1))

end

end A236563.P16448337346841630844

/-! ## A236563.P10019133216907177807

`lcm(A007947(n+1), A268336(n+1))*(n+1)`
-/

namespace A236563.P10019133216907177807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A268336 (n + 1)) * (n + 1)

end

end A236563.P10019133216907177807

/-! ## A236563.P13922707039124147154

`lcm(A011773(A103517(n)), A064549(n+1))`
-/

namespace A236563.P13922707039124147154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011773 (A103517 n).toNat) (A064549 (n + 1))

end

end A236563.P13922707039124147154

/-! ## A236563.P14966286336172313700

`lcm(A064549(A000027(n+1)), A174824(n+1))`
-/

namespace A236563.P14966286336172313700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064549 (A000027 (n + 1)).toNat) (A174824 (n + 1))

end

end A236563.P14966286336172313700

/-! ## A236563.P1885946772063190762

`lcm(A011773(n+1), A064549(A008619(2*n)))`
-/

namespace A236563.P1885946772063190762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011773 (n + 1)) (A064549 (A008619 (2 * n)).toNat)

end

end A236563.P1885946772063190762

/-! ## A236563.P11582401352868886796

`A174824(A064549(n+1))`
-/

namespace A236563.P11582401352868886796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (A064549 (n + 1)).toNat

end

end A236563.P11582401352868886796

/-! ## A236563.P683771679993002939

`A174824((n+1)*A007947(n+1))`
-/

namespace A236563.P683771679993002939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A236563.P683771679993002939

/-!
# A236564: Difference between 2^(2n-1) and the nearest square.

The programs for A236564, the canonical program `A236564.P10217388441294843712` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236564 has offset 1).

The definition of A236564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236564.P10217388441294843712

`Δ[A238455(n)]-A238455(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236564

/-- `Δ[A238455(n)]-A238455(n)` -/
def P10217388441294843712.Spec : Prop :=
  ∀ n, P10217388441294843712.a n = A236564 (n + 1)

theorem P10217388441294843712.correct : P10217388441294843712.Spec := by
  intro n
  simp only [A236564, Nat.add_sub_cancel]

end A236564

/-! ## A236564.P15695272821210525757

`A238455(n+1)-2*A238455(n)`
-/

namespace A236564.P15695272821210525757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 (n + 1) - 2 * A238455 n

end

end A236564.P15695272821210525757

namespace A236564

/-- `A238455(n+1)-2*A238455(n)` -/
def P15695272821210525757.Spec : Prop :=
  ∀ n, P15695272821210525757.a n = A236564 (n + 1)

theorem P15695272821210525757.correct : P15695272821210525757.Spec := by
  intro n
  simp only [A236564, Nat.add_sub_cancel, A236564.P15695272821210525757.a, A236564.P10217388441294843712.f1, A236564.P10217388441294843712.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A236564

/-! ## A236564.P7529704710764164244

`A004171(n)-round(sqrt(A004171(n)))²`
-/

namespace A236564.P7529704710764164244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - SequenceMachineLib.roundAway (Real.sqrt (A004171 n : ℝ)) ^ 2

end

end A236564.P7529704710764164244

namespace A236564

/-- `A004171(n)-round(sqrt(A004171(n)))²` -/
def P7529704710764164244.Spec : Prop :=
  ∀ n, P7529704710764164244.a n = A236564 (n + 1)

end A236564

/-! ## A236564.P14385090291091289350

`2*A000079(n)²-A057048(2*n)²`
-/

namespace A236564.P14385090291091289350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A057048 (2 * n) ^ 2

end

end A236564.P14385090291091289350

namespace A236564

/-- `2*A000079(n)²-A057048(2*n)²` -/
def P14385090291091289350.Spec : Prop :=
  ∀ n, P14385090291091289350.a n = A236564 (n + 1)

end A236564

/-! ## A236564.P6002833248928743759

`A057048(4*n+1)-A057048(2*n)²`
-/

namespace A236564.P6002833248928743759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (4 * n + 1) - A057048 (2 * n) ^ 2

end

end A236564.P6002833248928743759

namespace A236564

/-- `A057048(4*n+1)-A057048(2*n)²` -/
def P6002833248928743759.Spec : Prop :=
  ∀ n, P6002833248928743759.a n = A236564 (n + 1)

end A236564

/-! ## A236564.P1031543862028468336

`2*A000079(n)²-A017911(2*n+1)²`
-/

namespace A236564.P1031543862028468336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A017911 (2 * n + 1) ^ 2

end

end A236564.P1031543862028468336

namespace A236564

/-- `2*A000079(n)²-A017911(2*n+1)²` -/
def P1031543862028468336.Spec : Prop :=
  ∀ n, P1031543862028468336.a n = A236564 (n + 1)

end A236564

/-! ## A236564.P12230656503758676093

`A017911(4*n+2)-A017911(2*n+1)²`
-/

namespace A236564.P12230656503758676093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (4 * n + 2) - A017911 (2 * n + 1) ^ 2

end

end A236564.P12230656503758676093

namespace A236564

/-- `A017911(4*n+2)-A017911(2*n+1)²` -/
def P12230656503758676093.Spec : Prop :=
  ∀ n, P12230656503758676093.a n = A236564 (n + 1)

end A236564

/-!
# A236565: The smallest values m such that A049820(x) = m has exactly n solutions.

The programs for A236565, there is no canonical definition to state claims against.
-/

/-! ## A236565.P11826670964682117541

`A060991(n)-char[2]`
-/

namespace A236565.P11826670964682117541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060991 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236565.P11826670964682117541

/-! ## A236565.P18079294650656666662

`A060991(n)*A081753(n)`
-/

namespace A236565.P18079294650656666662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060991 n * A081753 n

end

end A236565.P18079294650656666662

/-! ## A236565.P1840885942030411080

`lcm(A000700(n), A060991(n))`
-/

namespace A236565.P1840885942030411080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000700 n) (A060991 n)

end

end A236565.P1840885942030411080

/-! ## A236565.P13117365897809189630

`xor(char[A356342(n+1)], A060991(n))`
-/

namespace A236565.P13117365897809189630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356342 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A060991 n)

end

end A236565.P13117365897809189630

/-! ## A236565.P1021181227283911959

`A180009(3*n+1)²*A060991(n)`
-/

namespace A236565.P1021181227283911959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180009 (3 * n + 1) ^ 2 * A060991 n

end

end A236565.P1021181227283911959

/-!
# A236566: Number of ordered ways to write 2*n = p + q with p, q and prime(p + 2) + 2 all prime.

The programs for A236566, there is no canonical definition to state claims against.
-/

/-! ## A236566.P16707582944099415519

`A294185(n+1)-A235046(A152718(n))`
-/

namespace A236566.P16707582944099415519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (n + 1) - A235046 (A152718 n).toNat

end

end A236566.P16707582944099415519

/-! ## A236566.P15004734555410645198

`A294186(n+2)-A235046(A152718(n))`
-/

namespace A236566.P15004734555410645198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 2) - A235046 (A152718 n).toNat

end

end A236566.P15004734555410645198

/-! ## A236566.P6263640823423916047

`A316869((6-n)²)+A237284(n+1)-A235046(A152718(n))`
-/

namespace A236566.P6263640823423916047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 ((6 - (n : ℤ)) ^ 2).toNat + A237284 (n + 1) - A235046 (A152718 n).toNat

end

end A236566.P6263640823423916047

/-! ## A236566.P12568890441105303635

`A214566(or(1, A214562(2*n+1)))`
-/

namespace A236566.P12568890441105303635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (Int.lor 1 (A214562 (2 * n + 1))).toNat

end

end A236566.P12568890441105303635

/-!
# A236567: a(n) = |{0 < k < n - 2: k + phi(n-k)/2 is a square}|, where phi(.) is Euler's totient function.

The programs for A236567, there is no canonical definition to state claims against.
-/

/-! ## A236567.P15902936114490678686

`A162789(A000073(n)+1)%A193676(n+5)`
-/

namespace A236567.P15902936114490678686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162789 (A000073 n + 1).toNat) (A193676 (n + 5))

end

end A236567.P15902936114490678686

/-! ## A236567.P205729036033333802

`A124760(A351143(n+1)%A065568(n+1))`
-/

namespace A236567.P205729036033333802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (Int.tmod (A351143 (n + 1)) (A065568 (n + 1))).toNat

end

end A236567.P205729036033333802

/-! ## A236567.P15881497994985173397

`A225891(A022388(n))%A320387(n)`
-/

namespace A236567.P15881497994985173397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225891 (A022388 n).toNat) (A320387 n)

end

end A236567.P15881497994985173397

/-! ## A236567.P7924363557607152925

`A336469(A144261(2*n+1)*A355969(n+1))`
-/

namespace A236567.P7924363557607152925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A144261 (2 * n + 1) * A355969 (n + 1)).toNat

end

end A236567.P7924363557607152925

/-! ## A236567.P13150078978957582045

`A010059(A355079(n+1))+A001221(A006721(n))`
-/

namespace A236567.P13150078978957582045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A355079 (n + 1)).toNat + A001221 (A006721 n).toNat

end

end A236567.P13150078978957582045

/-!
# A236568: Primes p with prime(p + 2) + 2 prime.

The programs for A236568, the canonical program `A236568.P5918031760574523688` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236568 has offset 1).

The definition of A236568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236568.P5918031760574523688

`p?[A029707(n+1)-2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A236568

/-- `p?[A029707(n+1)-2]` -/
def P5918031760574523688.Spec : Prop :=
  ∀ n, P5918031760574523688.a n = A236568 (n + 1)

theorem P5918031760574523688.correct : P5918031760574523688.Spec := by
  intro n
  simp only [A236568, Nat.add_sub_cancel]

end A236568

/-! ## A236568.P11796006676837151472

`∩[A000040(n+1), A029707(n+1)-2]`
-/

namespace A236568.P11796006676837151472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P11796006676837151472

namespace A236568

/-- `∩[A000040(n+1), A029707(n+1)-2]` -/
def P11796006676837151472.Spec : Prop :=
  ∀ n, (P11796006676837151472.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P10179987069826843627

`∩[A008578(n+2), A029707(n+2)-2]`
-/

namespace A236568.P10179987069826843627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P10179987069826843627

namespace A236568

/-- `∩[A008578(n+2), A029707(n+2)-2]` -/
def P10179987069826843627.Spec : Prop :=
  ∀ n, (P10179987069826843627.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P3969421072996975645

`∩[A029707(n+2)-2, A033946(n+2)]`
-/

namespace A236568.P3969421072996975645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P3969421072996975645

namespace A236568

/-- `∩[A029707(n+2)-2, A033946(n+2)]` -/
def P3969421072996975645.Spec : Prop :=
  ∀ n, (P3969421072996975645.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P509286095100172627

`∩[A029707(n+2)-2, A046022(n+2)]`
-/

namespace A236568.P509286095100172627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P509286095100172627

namespace A236568

/-- `∩[A029707(n+2)-2, A046022(n+2)]` -/
def P509286095100172627.Spec : Prop :=
  ∀ n, (P509286095100172627.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P1412100965577247064

`record[A020639(A029707(n+3)-2)]`
-/

namespace A236568.P1412100965577247064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029707 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236568.P1412100965577247064

namespace A236568

/-- `record[A020639(A029707(n+3)-2)]` -/
def P1412100965577247064.Spec : Prop :=
  ∀ n, P1412100965577247064.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P6085753128808175723

`p?[n*A001222(A001223(n+2))]`
-/

namespace A236568.P6085753128808175723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A001223 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P6085753128808175723

namespace A236568

/-- `p?[n*A001222(A001223(n+2))]` -/
def P6085753128808175723.Spec : Prop :=
  ∀ n, P6085753128808175723.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P7099862923344989089

`p?[∑[A027833(n+1)]]`
-/

namespace A236568.P7099862923344989089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P7099862923344989089

namespace A236568

/-- `p?[∑[A027833(n+1)]]` -/
def P7099862923344989089.Spec : Prop :=
  ∀ n, P7099862923344989089.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P8866375256638105588

`p?[∑[A242767(n+3)]]`
-/

namespace A236568.P8866375256638105588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P8866375256638105588

namespace A236568

/-- `p?[∑[A242767(n+3)]]` -/
def P8866375256638105588.Spec : Prop :=
  ∀ n, P8866375256638105588.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P2404589832374582313

`p?[A155752(n+1)-1]`
-/

namespace A236568.P2404589832374582313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P2404589832374582313

namespace A236568

/-- `p?[A155752(n+1)-1]` -/
def P2404589832374582313.Spec : Prop :=
  ∀ n, P2404589832374582313.a n = A236568 (n + 1)

theorem P2404589832374582313.correct : P2404589832374582313.Spec := by
  intro n
  simp only [A236568, Nat.add_sub_cancel, A236568.P2404589832374582313.f1, A236568.P2404589832374582313.a, A236568.P5918031760574523688.f1, A236568.P5918031760574523688.a, A029707, A029707.P9008410581696676488.a, A155752, A155752.P6228689506561445427.a, A107770, A107770.P11208098202551847983.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006512, A006512.P8157243218962949380.a, A001359, A001359.P8865495035699438537.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A236568

/-! ## A236568.P10996943691491906554

`p?[A107770(n+1)-3]`
-/

namespace A236568.P10996943691491906554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P10996943691491906554

namespace A236568

/-- `p?[A107770(n+1)-3]` -/
def P10996943691491906554.Spec : Prop :=
  ∀ n, P10996943691491906554.a n = A236568 (n + 1)

theorem P10996943691491906554.correct : P10996943691491906554.Spec := by
  intro n
  simp only [A236568, Nat.add_sub_cancel, A236568.P10996943691491906554.f1, A236568.P10996943691491906554.a, A236568.P5918031760574523688.f1, A236568.P5918031760574523688.a, A029707, A029707.P9008410581696676488.a, A107770, A107770.P11208098202551847983.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006512, A006512.P8157243218962949380.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A236568

/-! ## A236568.P8311149121403932373

`p?[A048614(n+1)+a(n-1)+2]` with `a(0)=1`
-/

namespace A236568.P8311149121403932373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A048614 (n + 1) + (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P8311149121403932373

namespace A236568

/-- `p?[A048614(n+1)+a(n-1)+2]` -/
def P8311149121403932373.Spec : Prop :=
  ∀ n, P8311149121403932373.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P7031658794310008044

`p?[A242398(n+1)+A005408(n)]`
-/

namespace A236568.P7031658794310008044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (n + 1) + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P7031658794310008044

namespace A236568

/-- `p?[A242398(n+1)+A005408(n)]` -/
def P7031658794310008044.Spec : Prop :=
  ∀ n, P7031658794310008044.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P6886750901861819197

`p?[A048614(n+2)+A029707(n+2)]`
-/

namespace A236568.P6886750901861819197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 2) + A029707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P6886750901861819197

namespace A236568

/-- `p?[A048614(n+2)+A029707(n+2)]` -/
def P6886750901861819197.Spec : Prop :=
  ∀ n, P6886750901861819197.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P1814993428786908249

`p?[eq[2, A001223(n+2)]]`
-/

namespace A236568.P1814993428786908249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236568.P1814993428786908249

namespace A236568

/-- `p?[eq[2, A001223(n+2)]]` -/
def P1814993428786908249.Spec : Prop :=
  ∀ n, (P1814993428786908249.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P2828339595934641352

`p?[A334142(2*(n+1))-2]`
-/

namespace A236568.P2828339595934641352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236568.P2828339595934641352

namespace A236568

/-- `p?[A334142(2*(n+1))-2]` -/
def P2828339595934641352.Spec : Prop :=
  ∀ n, P2828339595934641352.a n = A236568 (n + 1)

end A236568

/-! ## A236568.P8185487508929002830

`∩[A334142(2*(n+1))-2, A000040(n+2)]`
-/

namespace A236568.P8185487508929002830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P8185487508929002830

namespace A236568

/-- `∩[A334142(2*(n+1))-2, A000040(n+2)]` -/
def P8185487508929002830.Spec : Prop :=
  ∀ n, (P8185487508929002830.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P1379901065137089530

`∩[A334142(2*(n+1))-2, A006005(n+2)]`
-/

namespace A236568.P1379901065137089530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P1379901065137089530

namespace A236568

/-- `∩[A334142(2*(n+1))-2, A006005(n+2)]` -/
def P1379901065137089530.Spec : Prop :=
  ∀ n, (P1379901065137089530.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P3210098609178664973

`∩[A334142(2*(n+1))-2, A008578(n+2)]`
-/

namespace A236568.P3210098609178664973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236568.P3210098609178664973

namespace A236568

/-- `∩[A334142(2*(n+1))-2, A008578(n+2)]` -/
def P3210098609178664973.Spec : Prop :=
  ∀ n, (P3210098609178664973.a n : ℤ) = A236568 (n + 1)

end A236568

/-! ## A236568.P2661195280416822405

`p?[n*runs[A330556(n+1)]]`
-/

namespace A236568.P2661195280416822405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236568.P2661195280416822405

namespace A236568

/-- `p?[n*runs[A330556(n+1)]]` -/
def P2661195280416822405.Spec : Prop :=
  ∀ n, (P2661195280416822405.a n : ℤ) = A236568 (n + 1)

end A236568

/-!
# A236569: Least term p of A236568 with 2*n - p prime, or 0 if such a prime p does not exist.

The programs for A236569, there is no canonical definition to state claims against.
-/

/-! ## A236569.P8343379158445240707

`A135246(A276417(n))-A036987(A023607(n))`
-/

namespace A236569.P8343379158445240707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (A276417 n).toNat - A036987 (A023607 n).toNat

end

end A236569.P8343379158445240707

/-! ## A236569.P10998296369796641122

`A109606(∑{e}[(1-2*n)²², #]+1)`
-/

namespace A236569.P10998296369796641122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (2 * n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A236569.P10998296369796641122

/-! ## A236569.P17239171314709887539

`A135246(A276417(n))%A006530(A289099(n))`
-/

namespace A236569.P17239171314709887539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135246 (A276417 n).toNat) (A006530 (A289099 n).toNat)

end

end A236569.P17239171314709887539

/-!
# A236570: Number of n-node simple unicyclic graphs.

The programs for A236570, there is no canonical definition to state claims against.
-/

/-! ## A236570.P14404440220877574472

`∑[A372191(n+3)]`
-/

namespace A236570.P14404440220877574472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372191 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236570.P14404440220877574472

/-! ## A236570.P5221606175693450522

`A249563(A004869(n+1))+A005666(n)`
-/

namespace A236570.P5221606175693450522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249563 (A004869 (n + 1)).toNat + A005666 n

end

end A236570.P5221606175693450522

/-! ## A236570.P12846348497464982442

`A128098(n+1)-A002487(A015521(n))`
-/

namespace A236570.P12846348497464982442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128098 (n + 1) - A002487 (A015521 n).toNat

end

end A236570.P12846348497464982442

/-!
# A236571: Value of x for solution of 5^n = x^2 + y^2 with closest x and y (n >= 0, 0 <= x < y).

The programs for A236571, there is no canonical definition to state claims against.
-/

/-! ## A236571.P2191584794814065369

`A121705(A183575(n+1))`
-/

namespace A236571.P2191584794814065369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A183575 (n + 1)).toNat

end

end A236571.P2191584794814065369

/-! ## A236571.P7691912703118797902

`A121705(record[A278818(n)-1])`
-/

namespace A236571.P7691912703118797902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236571.P7691912703118797902

/-! ## A236571.P14460136917620674184

`A121705(A134707(n+1)-1)`
-/

namespace A236571.P14460136917620674184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A134707 (n + 1) - 1).toNat

end

end A236571.P14460136917620674184

/-! ## A236571.P966746600710863432

`A121705(A047838(n+2)-1)`
-/

namespace A236571.P966746600710863432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A047838 (n + 2) - 1).toNat

end

end A236571.P966746600710863432

/-! ## A236571.P2770027321980899116

`A121705(2*A024206(n+1))`
-/

namespace A236571.P2770027321980899116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (2 * A024206 (n + 1)).toNat

end

end A236571.P2770027321980899116

/-!
# A236572: Value of y for solution of 5^n = x^2 + y^2 with closest x and y (n >= 0, 0 <= x < y).

The programs for A236572, there is no canonical definition to state claims against.
-/

/-! ## A236572.P18272037406051795411

`A121705(record[A278818(n)])`
-/

namespace A236572.P18272037406051795411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236572.P18272037406051795411

/-! ## A236572.P13787574050043539134

`A121705(A134707(n+1))`
-/

namespace A236572.P13787574050043539134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A134707 (n + 1)).toNat

end

end A236572.P13787574050043539134

/-! ## A236572.P5942925078039624630

`A121705(A047838(n+2))`
-/

namespace A236572.P5942925078039624630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A047838 (n + 2)).toNat

end

end A236572.P5942925078039624630

/-! ## A236572.P12465500610875369743

`A121705(A183575(n+1)+1)`
-/

namespace A236572.P12465500610875369743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A183575 (n + 1) + 1).toNat

end

end A236572.P12465500610875369743

/-! ## A236572.P16275783444687933292

`A121705(A000982(n+1)+n)`
-/

namespace A236572.P16275783444687933292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (A000982 (n + 1) + (n : ℤ)).toNat

end

end A236572.P16275783444687933292

/-!
# A236573: Number of ordered ways to write n = k + m (k > 0, m > 0) such that p = 2*k + phi(m) - 1, prime(p + 2) + 2 and 2*n - p are all prime, where phi(.) is Euler's totient function.

The programs for A236573, there is no canonical definition to state claims against.
-/

/-! ## A236573.P9809438739924636294

`A251451(n+1)%A053735(A055879(n+1))`
-/

namespace A236573.P9809438739924636294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251451 (n + 1)) (A053735 (A055879 (n + 1)).toNat)

end

end A236573.P9809438739924636294

/-! ## A236573.P287848328643389247

`A136566(A106244(n)^A036036(3*(n+1)))`
-/

namespace A236573.P287848328643389247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136566 (SequenceMachineLib.roundAway ((A106244 n : ℚ) ^ (A036036 (3 * (n + 1)) : ℤ))).toNat

end

end A236573.P287848328643389247

/-!
# A236575: Number of primes between successive numbers that are not squarefree.

The programs for A236575, the canonical program `A236575.P12514269811901278447` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236575 has offset 1).

The definition of A236575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236575.P12514269811901278447

`A000720(A013929(n+2))-A000720(A013929(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A236575

/-- `A000720(A013929(n+2))-A000720(A013929(n+1))` -/
def P12514269811901278447.Spec : Prop :=
  ∀ n, P12514269811901278447.a n = A236575 (n + 1)

theorem P12514269811901278447.correct : P12514269811901278447.Spec := by
  intro n
  simp only [A236575, Nat.add_sub_cancel]

end A236575

/-! ## A236575.P17970810945582423839

`Δ[A000720(A013929(1+n))]`
-/

namespace A236575.P17970810945582423839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A013929 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P17970810945582423839

namespace A236575

/-- `Δ[A000720(A013929(1+n))]` -/
def P17970810945582423839.Spec : Prop :=
  ∀ n, P17970810945582423839.a n = A236575 (n + 1)

theorem P17970810945582423839.correct : P17970810945582423839.Spec := by
  intro n
  simp only [A236575, Nat.add_sub_cancel, A236575.P17970810945582423839.f1, A236575.P17970810945582423839.a, A236575.P12514269811901278447.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A236575

/-! ## A236575.P3206711852124609655

`Δ[A000720(lt[1, A005361(n+1)])]`
-/

namespace A236575.P3206711852124609655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P3206711852124609655

namespace A236575

/-- `Δ[A000720(lt[1, A005361(n+1)])]` -/
def P3206711852124609655.Spec : Prop :=
  ∀ n, P3206711852124609655.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P10795063127193041238

`Δ[A000720(eq[1, A008683(n+1)+1])]`
-/

namespace A236575.P10795063127193041238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P10795063127193041238

namespace A236575

/-- `Δ[A000720(eq[1, A008683(n+1)+1])]` -/
def P10795063127193041238.Spec : Prop :=
  ∀ n, P10795063127193041238.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P15522788853340234079

`Δ[A000720(eq[1, A249442(n)])]`
-/

namespace A236575.P15522788853340234079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P15522788853340234079

namespace A236575

/-- `Δ[A000720(eq[1, A249442(n)])]` -/
def P15522788853340234079.Spec : Prop :=
  ∀ n, P15522788853340234079.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P7588095370953603433

`Δ[A230980(A013929(n+1)-1)]`
-/

namespace A236575.P7588095370953603433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A013929 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P7588095370953603433

namespace A236575

/-- `Δ[A230980(A013929(n+1)-1)]` -/
def P7588095370953603433.Spec : Prop :=
  ∀ n, P7588095370953603433.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P5599841501131084203

`Δ[A033270(A013929(A032742(2*(n+1))))]`
-/

namespace A236575.P5599841501131084203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A013929 (A032742 (2 * (n + 1))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236575.P5599841501131084203

namespace A236575

/-- `Δ[A033270(A013929(A032742(2*(n+1))))]` -/
def P5599841501131084203.Spec : Prop :=
  ∀ n, P5599841501131084203.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P16581365581005883463

`A000982(Δ[A230980(A013929(n+1))])`
-/

namespace A236575.P16581365581005883463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A013929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (f1 (n + 1) - f1 n).toNat

end

end A236575.P16581365581005883463

namespace A236575

/-- `A000982(Δ[A230980(A013929(n+1))])` -/
def P16581365581005883463.Spec : Prop :=
  ∀ n, P16581365581005883463.a n = A236575 (n + 1)

end A236575

/-! ## A236575.P1916626934765763519

`A375707(n+1)-A378373(n+1)`
-/

namespace A236575.P1916626934765763519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1) - A378373 (n + 1)

end

end A236575.P1916626934765763519

namespace A236575

/-- `A375707(n+1)-A378373(n+1)` -/
def P1916626934765763519.Spec : Prop :=
  ∀ n, P1916626934765763519.a n = A236575 (n + 1)

end A236575

/-!
# A236576: The number of tilings of a 5 X (3n) floor with 1 X 3 trominoes.

The programs for A236576, the canonical program `A236576.P878116119856439915` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236576 has offset 0).

The definition of A236576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236576.P4826583928053737610

`ogf((1-2x+x^2)/(1-6x+3x^2-x^3))`
-/

namespace A236576.P4826583928053737610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -6, 3, -1] n

end

end A236576.P4826583928053737610

namespace A236576

/-- `ogf((1-2x+x^2)/(1-6x+3x^2-x^3))` -/
def P4826583928053737610.Spec : Prop :=
  ∀ n, P4826583928053737610.a n = A236576 n

end A236576

/-! ## A236576.P878116119856439915

`6*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236576

/-- `6*a(n-1)-3*a(n-2)+a(n-3)` -/
def P878116119856439915.Spec : Prop :=
  ∀ n, P878116119856439915.a n = A236576 n

theorem P878116119856439915.correct : P878116119856439915.Spec := by
  intro n
  simp only [A236576]

end A236576

/-!
# A236577: The number of tilings of a 6 X n floor with 1 X 3 trominoes.

The programs for A236577, there is no canonical definition to state claims against.
-/

/-! ## A236577.P4331184983727151633

`A250662(∑[n+4]+2)`
-/

namespace A236577.P4331184983727151633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236577.P4331184983727151633

/-! ## A236577.P4212631820629936758

`A250662(eq[3, A025581(n)])/A020985(n)²`
-/

namespace A236577.P4212631820629936758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A236577.P4212631820629936758

/-! ## A236577.P3741506549839023688

`A250662(eq[3, A025581(n)])/A033999(n)²`
-/

namespace A236577.P3741506549839023688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A236577.P3741506549839023688

/-! ## A236577.P4267523341624865468

`A250662(eq[3, A025581(n)])%A250669(n+1)`
-/

namespace A236577.P4267523341624865468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A250669 (n + 1))

end

end A236577.P4267523341624865468

/-! ## A236577.P5543399035416135584

`A250662(eq[3, A025581(n)])/A000108(n²%(n+1))`
-/

namespace A236577.P5543399035416135584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A000108 (n ^ 2 % (n + 1)) : ℚ)

end

end A236577.P5543399035416135584

/-! ## A236577.P5761156827473288903

`A250662(eq[3, A025581(n)])+(n-1)*A046145(4*n)`
-/

namespace A236577.P5761156827473288903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((n : ℤ) - 1) * A046145 (4 * n)

end

end A236577.P5761156827473288903

/-!
# A236579: The number of tilings of a 5 X (4n) floor with 1 X 4 tetrominoes.

The programs for A236579, the canonical program `A236579.P2530268513779046097` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236579 has offset 0).

The definition of A236579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236579.P2530268513779046097

`ogf((1-3x+3x^2-x^3)/(1-6x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236579

/-- `ogf((1-3x+3x^2-x^3)/(1-6x+6x^2-4x^3+x^4))` -/
def P2530268513779046097.Spec : Prop :=
  ∀ n, P2530268513779046097.a n = A236579 n

theorem P2530268513779046097.correct : P2530268513779046097.Spec := by
  intro n
  simp only [A236579]

end A236579

/-! ## A236579.P6162106163634990202

`∑{#}[n, C(n+3*#, 4*#)*2^#]`
-/

namespace A236579.P6162106163634990202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3 * k) (4 * k) * 2 ^ k

end

end A236579.P6162106163634990202

namespace A236579

/-- `∑{#}[n, C(n+3*#, 4*#)*2^#]` -/
def P6162106163634990202.Spec : Prop :=
  ∀ n, (P6162106163634990202.a n : ℤ) = A236579 n

end A236579

/-! ## A236579.P10027149303014920812

`∑{#}[n, A109960(C(n+1, 2)+#)*2^#]`
-/

namespace A236579.P10027149303014920812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A109960 (Nat.choose (n + 1) 2 + k) * (2 ^ k : ℤ)

end

end A236579.P10027149303014920812

namespace A236579

/-- `∑{#}[n, A109960(C(n+1, 2)+#)*2^#]` -/
def P10027149303014920812.Spec : Prop :=
  ∀ n, P10027149303014920812.a n = A236579 n

end A236579

/-!
# A236580: The number of tilings of a 6 X (4n) floor with 1 X 4 tetrominoes.

The programs for A236580, the canonical program `A236580.P2062413109766904865` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236580 has offset 0).

The definition of A236580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236580.P2062413109766904865

`ogf((1-3x+3x^2-x^3)/(1-7x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236580

/-- `ogf((1-3x+3x^2-x^3)/(1-7x+6x^2-4x^3+x^4))` -/
def P2062413109766904865.Spec : Prop :=
  ∀ n, P2062413109766904865.a n = A236580 n

theorem P2062413109766904865.correct : P2062413109766904865.Spec := by
  intro n
  simp only [A236580]

end A236580

/-!
# A236581: The number of tilings of a 7 X (4n) floor with 1 X 4 tetrominoes.

The programs for A236581, the canonical program `A236581.P1590307712619847142` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236581 has offset 0).

The definition of A236581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236581.P1590307712619847142

`ogf((1-3x+3x^2-x^3)/(1-8x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236581

/-- `ogf((1-3x+3x^2-x^3)/(1-8x+6x^2-4x^3+x^4))` -/
def P1590307712619847142.Spec : Prop :=
  ∀ n, P1590307712619847142.a n = A236581 n

theorem P1590307712619847142.correct : P1590307712619847142.Spec := by
  intro n
  simp only [A236581]

end A236581

/-! ## A236581.P3580834169773394878

`∑[A181329(2*n)]`
-/

namespace A236581.P3580834169773394878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236581.P3580834169773394878

namespace A236581

/-- `∑[A181329(2*n)]` -/
def P3580834169773394878.Spec : Prop :=
  ∀ n, P3580834169773394878.a n = A236581 n

end A236581

/-! ## A236581.P11134615617358269192

`∑[record[A181329(and(n, n+1))]]`
-/

namespace A236581.P11134615617358269192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236581.P11134615617358269192

namespace A236581

/-- `∑[record[A181329(and(n, n+1))]]` -/
def P11134615617358269192.Spec : Prop :=
  ∀ n, P11134615617358269192.a n = A236581 n

end A236581

/-! ## A236581.P11237327292003211297

`∑[record[A181329(A014681(n))]]`
-/

namespace A236581.P11237327292003211297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236581.P11237327292003211297

namespace A236581

/-- `∑[record[A181329(A014681(n))]]` -/
def P11237327292003211297.Spec : Prop :=
  ∀ n, P11237327292003211297.a n = A236581 n

end A236581

/-! ## A236581.P15143531836292285048

`∑[record[A181329(A018838(n))]]`
-/

namespace A236581.P15143531836292285048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 (A018838 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236581.P15143531836292285048

namespace A236581

/-- `∑[record[A181329(A018838(n))]]` -/
def P15143531836292285048.Spec : Prop :=
  ∀ n, P15143531836292285048.a n = A236581 n

end A236581

/-! ## A236581.P1809192506451513688

`∑[A181329(A004277(n))]-1`
-/

namespace A236581.P1809192506451513688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236581.P1809192506451513688

namespace A236581

/-- `∑[A181329(A004277(n))]-1` -/
def P1809192506451513688.Spec : Prop :=
  ∀ n, P1809192506451513688.a n = A236581 n

end A236581

/-! ## A236581.P13497458324577950690

`∑[A181327(∑[2*n])]`
-/

namespace A236581.P13497458324577950690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181327 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236581.P13497458324577950690

namespace A236581

/-- `∑[A181327(∑[2*n])]` -/
def P13497458324577950690.Spec : Prop :=
  ∀ n, P13497458324577950690.a n = A236581 n

end A236581

/-!
# A236582: The number of tilings of an 8 X n floor with 1 X 4 tetrominoes.

The programs for A236582, there is no canonical definition to state claims against.
-/

/-! ## A236582.P5730178472471322157

`A250662(∑[n+5]+5)`
-/

namespace A236582.P5730178472471322157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A236582.P5730178472471322157

/-! ## A236582.P13372155232488164649

`lcm(A057077(n), A250662(A052905(n+2)))`
-/

namespace A236582.P13372155232488164649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A250662 (A052905 (n + 2)).toNat)

end

end A236582.P13372155232488164649

/-! ## A236582.P5795300484429538449

`or(A000007(n), A250662(A052905(n+2)))`
-/

namespace A236582.P5795300484429538449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250662 (A052905 (n + 2)).toNat)

end

end A236582.P5795300484429538449

/-! ## A236582.P3509353834406738439

`A250662(A052905(n+2))%A000032(2*n)`
-/

namespace A236582.P3509353834406738439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 (A052905 (n + 2)).toNat) (A000032 (2 * n))

end

end A236582.P3509353834406738439

/-! ## A236582.P15258507486073431571

`A057077(4*n)+A250662(A052905(n+2))-1`
-/

namespace A236582.P15258507486073431571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (4 * n) + (A250662 (A052905 (n + 2)).toNat - 1)

end

end A236582.P15258507486073431571

/-!
# A236583: The number of tilings of an 8 X (3n) floor with 2 X 3 hexominoes.

The programs for A236583, the canonical program `A236583.P12632929941989250426` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236583 has offset 0).

The definition of A236583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236583.P12632929941989250426

`ogf((1-2x+x^2)/(1-3x+x^3-x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236583

/-- `ogf((1-2x+x^2)/(1-3x+x^3-x^4))` -/
def P12632929941989250426.Spec : Prop :=
  ∀ n, P12632929941989250426.a n = A236583 n

theorem P12632929941989250426.correct : P12632929941989250426.Spec := by
  intro n
  simp only [A236583]

end A236583

/-! ## A236583.P1994539915165993389

`A256502(2*A299108(n))`
-/

namespace A236583.P1994539915165993389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (2 * A299108 n).toNat

end

end A236583.P1994539915165993389

namespace A236583

/-- `A256502(2*A299108(n))` -/
def P1994539915165993389.Spec : Prop :=
  ∀ n, P1994539915165993389.a n = A236583 n

end A236583

/-! ## A236583.P725040627221474161

`A247911(A052919(n))-1`
-/

namespace A236583.P725040627221474161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A052919 n).toNat - 1

end

end A236583.P725040627221474161

namespace A236583

/-- `A247911(A052919(n))-1` -/
def P725040627221474161.Spec : Prop :=
  ∀ n, P725040627221474161.a n = A236583 n

end A236583

/-!
# A236584: The number of tilings of a 9 X (2n) floor with 2 X 3 hexominoes.

The programs for A236584, the canonical program `A236584.P12582404476644178900` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236584 has offset 0).

The definition of A236584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236584.P12582404476644178900

`ogf((1-x)/(1-2x+x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236584

/-- `ogf((1-x)/(1-2x+x^2-4x^3+2x^4))` -/
def P12582404476644178900.Spec : Prop :=
  ∀ n, P12582404476644178900.a n = A236584 n

theorem P12582404476644178900.correct : P12582404476644178900.Spec := by
  intro n
  simp only [A236584]

end A236584

/-! ## A236584.P8542892881060114700

`A046074(∑[∑[A318389(n+1)]])`
-/

namespace A236584.P8542892881060114700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236584.P8542892881060114700

namespace A236584

/-- `A046074(∑[∑[A318389(n+1)]])` -/
def P8542892881060114700.Spec : Prop :=
  ∀ n, P8542892881060114700.a n = A236584 n

end A236584

/-! ## A236584.P2691604234117182556

`or(1, A085863(A089473(2*n+3)))`
-/

namespace A236584.P2691604234117182556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085863 (A089473 (2 * n + 3)).toNat)

end

end A236584.P2691604234117182556

namespace A236584

/-- `or(1, A085863(A089473(2*n+3)))` -/
def P2691604234117182556.Spec : Prop :=
  ∀ n, P2691604234117182556.a n = A236584 n

end A236584

/-! ## A236584.P6291270049507442035

`A157966(A328572(n+1)+A011782(n))`
-/

namespace A236584.P6291270049507442035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A328572 (n + 1) + A011782 n).toNat

end

end A236584.P6291270049507442035

namespace A236584

/-- `A157966(A328572(n+1)+A011782(n))` -/
def P6291270049507442035.Spec : Prop :=
  ∀ n, P6291270049507442035.a n = A236584 n

end A236584

/-!
# A236585: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A236585, there is no canonical definition to state claims against.
-/

/-! ## A236585.P10483794646385340245

`A236588(∑[n]+1)`
-/

namespace A236585.P10483794646385340245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236585.P10483794646385340245

/-! ## A236585.P2308927400145008460

`lcm(2, A236588(A000124(n)))`
-/

namespace A236585.P2308927400145008460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236588 (A000124 n).toNat)

end

end A236585.P2308927400145008460

/-! ## A236585.P4200810999998116129

`record[A010054(n)*A236588(n+1)]`
-/

namespace A236585.P4200810999998116129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236585.P4200810999998116129

/-! ## A236585.P5051151335675277376

`record[A236588(n+1)/A022167(n)]`
-/

namespace A236585.P5051151335675277376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236588 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236585.P5051151335675277376

/-! ## A236585.P14602158259371688208

`record[A236588(n+1)/A022171(n)]`
-/

namespace A236585.P14602158259371688208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236588 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236585.P14602158259371688208

/-!
# A236586: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A236586, there is no canonical definition to state claims against.
-/

/-! ## A236586.P15782206027046109426

`A236588(∑[n+1]+2)`
-/

namespace A236586.P15782206027046109426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236586.P15782206027046109426

/-! ## A236586.P15231669252836125383

`record[A010054(n)*A236588(n+2)]`
-/

namespace A236586.P15231669252836125383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236586.P15231669252836125383

/-! ## A236586.P28962578837673259

`record[gcd(A236588(n+2), A236603(2*n+1))]`
-/

namespace A236586.P28962578837673259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236588 (n + 2)) (A236603 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236586.P28962578837673259

/-!
# A236587: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median minus the minimum of every 2X2 subblock.

The programs for A236587, there is no canonical definition to state claims against.
-/

/-! ## A236587.P6520855290623437786

`A236588(∑[n+2]+4)`
-/

namespace A236587.P6520855290623437786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236587.P6520855290623437786

/-! ## A236587.P4685874056226326513

`record[A049310(n)*A236588(n+4)]`
-/

namespace A236587.P4685874056226326513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A236588 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236587.P4685874056226326513

/-! ## A236587.P14129913722280610606

`A236588(A167614(n+1))+A025469(n)`
-/

namespace A236587.P14129913722280610606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236588 (A167614 (n + 1)).toNat + A025469 n

end

end A236587.P14129913722280610606

/-!
# A236589: Number of (n+1) X (1+1) 0..3 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2 X 2 subblock.

The programs for A236589, there is no canonical definition to state claims against.
-/

/-! ## A236589.P11861120335104203507

`A236592(∑[n]+1)`
-/

namespace A236589.P11861120335104203507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236589.P11861120335104203507

/-! ## A236589.P4228846172006977427

`lcm(2, A236592(A000124(n)))`
-/

namespace A236589.P4228846172006977427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236592 (A000124 n).toNat)

end

end A236589.P4228846172006977427

/-! ## A236589.P774451731315978861

`record[A236592(A254052(n+1))]`
-/

namespace A236589.P774451731315978861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236592 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236589.P774451731315978861

/-! ## A236589.P14362564980721183152

`record[A010054(n)*A236592(n+1)]`
-/

namespace A236589.P14362564980721183152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236589.P14362564980721183152

/-! ## A236589.P1650288502762149700

`record[root(A236592(n+1), A007318(n))]`
-/

namespace A236589.P1650288502762149700
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236592 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236589.P1650288502762149700

/-!
# A236590: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A236590, there is no canonical definition to state claims against.
-/

/-! ## A236590.P9090491145728623226

`A236592(∑[n+1]+2)`
-/

namespace A236590.P9090491145728623226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236592 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236590.P9090491145728623226

/-! ## A236590.P13890988529370002384

`record[A010054(n)*A236592(n+2)]`
-/

namespace A236590.P13890988529370002384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236590.P13890988529370002384

/-! ## A236590.P4749045994192192993

`record[root(A236592(n+3), A136230(n))]`
-/

namespace A236590.P4749045994192192993
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236592 (n + 3) : ℝ) ^ (1 / (A136230 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236590.P4749045994192192993

/-! ## A236590.P1745165715339245195

`record[gcd(A025581(n), A236592(n+3))]`
-/

namespace A236590.P1745165715339245195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A236592 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236590.P1745165715339245195

/-!
# A236591: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock.

The programs for A236591, there is no canonical definition to state claims against.
-/

/-! ## A236591.P8329403905427852351

`A236592(∑[n+2]+4)`
-/

namespace A236591.P8329403905427852351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236592 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236591.P8329403905427852351

/-! ## A236591.P13774022023710744243

`lcm(2, A236592(A167614(n+1)))`
-/

namespace A236591.P13774022023710744243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236592 (A167614 (n + 1)).toNat)

end

end A236591.P13774022023710744243

/-! ## A236591.P7689162179374995013

`A236592(A167614(n+1))+A008857(n)`
-/

namespace A236591.P7689162179374995013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236592 (A167614 (n + 1)).toNat + A008857 n

end

end A236591.P7689162179374995013

/-!
# A236593: Number of (n+1) X (1+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median of every 2 X 2 subblock.

The programs for A236593, there is no canonical definition to state claims against.
-/

/-! ## A236593.P14757558285111055753

`A236596(∑[n]+1)`
-/

namespace A236593.P14757558285111055753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236596 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236593.P14757558285111055753

/-! ## A236593.P16912903202089848735

`and(-1, A236596(A000124(n)))`
-/

namespace A236593.P16912903202089848735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A236596 (A000124 n).toNat)

end

end A236593.P16912903202089848735

/-! ## A236593.P11732653637812303506

`record[A010054(n)*A236596(n+1)]`
-/

namespace A236593.P11732653637812303506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236593.P11732653637812303506

/-! ## A236593.P16095197814372518146

`record[A236596(n+1)/A008955(n)]`
-/

namespace A236593.P16095197814372518146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236596 (n + 1) : ℚ) / (A008955 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236593.P16095197814372518146

/-! ## A236593.P1319131974793380485

`record[A236596(n+1)/A008958(n)]`
-/

namespace A236593.P1319131974793380485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236596 (n + 1) : ℚ) / (A008958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236593.P1319131974793380485

/-!
# A236594: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236594, there is no canonical definition to state claims against.
-/

/-! ## A236594.P4858986837786568826

`A236596(∑[n+1]+2)`
-/

namespace A236594.P4858986837786568826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236596 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236594.P4858986837786568826

/-! ## A236594.P2142385515630886008

`record[A010054(n)*A236596(n+2)]`
-/

namespace A236594.P2142385515630886008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236594.P2142385515630886008

/-! ## A236594.P14665853022471226292

`record[A132013(n)*A236596(n+3)]`
-/

namespace A236594.P14665853022471226292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A236596 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236594.P14665853022471226292

/-! ## A236594.P632189496725416986

`record[gcd(A236596(n+2), A236603(2*n+1))]`
-/

namespace A236594.P632189496725416986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236596 (n + 2)) (A236603 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236594.P632189496725416986

/-!
# A236595: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236595, there is no canonical definition to state claims against.
-/

/-! ## A236595.P17232698872571047002

`A236596(∑[n+2]+4)`
-/

namespace A236595.P17232698872571047002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236596 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236595.P17232698872571047002

/-! ## A236595.P12940335812575133620

`∑{digits}[n+1, A236596(A167614(#))]`
-/

namespace A236595.P12940335812575133620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236596 (A167614 x).toNat).sum

end

end A236595.P12940335812575133620

/-! ## A236595.P1927485300571689361

`record[gcd(A122204(n), A236596(n+4))]`
-/

namespace A236595.P1927485300571689361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122204 n) (A236596 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236595.P1927485300571689361

/-!
# A236597: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236597, there is no canonical definition to state claims against.
-/

/-! ## A236597.P1047563871669168186

`A236601(∑[n]+1)`
-/

namespace A236597.P1047563871669168186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236597.P1047563871669168186

/-! ## A236597.P3552527020573548801

`record[A236601(A056534(n+1))]`
-/

namespace A236597.P3552527020573548801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236597.P3552527020573548801

/-! ## A236597.P12084073302006644580

`record[A236601(A276954(n+1))]`
-/

namespace A236597.P12084073302006644580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236597.P12084073302006644580

/-! ## A236597.P17592499369111608940

`A236601(A000124(n))+char[10]`
-/

namespace A236597.P17592499369111608940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236597.P17592499369111608940

/-! ## A236597.P13733842346062680920

`record[A010054(n)*A236601(n+1)]`
-/

namespace A236597.P13733842346062680920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236597.P13733842346062680920

/-!
# A236598: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236598, there is no canonical definition to state claims against.
-/

/-! ## A236598.P16565489028163165964

`A236601(∑[n+1]+2)`
-/

namespace A236598.P16565489028163165964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236598.P16565489028163165964

/-! ## A236598.P12203136108403723763

`record[A010054(n)*A236601(n+2)]`
-/

namespace A236598.P12203136108403723763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236598.P12203136108403723763

/-! ## A236598.P6111737925539499516

`record[gcd(A089840(n), A236601(n+3))]`
-/

namespace A236598.P6111737925539499516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A236601 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236598.P6111737925539499516

/-! ## A236598.P2794462884870571024

`record[gcd(A236601(n+2), A236603(2*n+1))]`
-/

namespace A236598.P2794462884870571024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236601 (n + 2)) (A236603 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236598.P2794462884870571024

/-!
# A236599: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236599, there is no canonical definition to state claims against.
-/

/-! ## A236599.P7777909254978256443

`A236601(∑[n+2]+4)`
-/

namespace A236599.P7777909254978256443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236599.P7777909254978256443

/-! ## A236599.P10437592181937203655

`lcm((-1)^n, A236601(A167614(n+1)))`
-/

namespace A236599.P10437592181937203655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236601 (A167614 (n + 1)).toNat)

end

end A236599.P10437592181937203655

/-! ## A236599.P14493173663402906355

`A236601(A167614(n+1))+A025442(n)`
-/

namespace A236599.P14493173663402906355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A167614 (n + 1)).toNat + A025442 n

end

end A236599.P14493173663402906355

/-! ## A236599.P11991617323938926420

`A236601(A167614(n+1))+A025444(n)`
-/

namespace A236599.P11991617323938926420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A167614 (n + 1)).toNat + A025444 n

end

end A236599.P11991617323938926420

