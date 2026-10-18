import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

/-!
# A282900: Least non-infinitary divisor of A162643(n).

The programs for A282900, there is no canonical definition to state claims against.
-/

/-! ## A282900.P4592929649155354050

`A137843(A363729(3*n+2))+A137843(n+1)`
-/

namespace A282900.P4592929649155354050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137843 (A363729 (3 * n + 2)).toNat + A137843 (n + 1)

end

end A282900.P4592929649155354050

/-! ## A282900.P3280230907680283007

`A098201(A122848(3*n+1)+1)`
-/

namespace A282900.P3280230907680283007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098201 (A122848 (3 * n + 1) + 1).toNat

end

end A282900.P3280230907680283007

/-! ## A282900.P466012968254448555

`A216195(gcd(A147309(n), A282263(n)))`
-/

namespace A282900.P466012968254448555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216195 (Int.gcd (A147309 n) (A282263 n))

end

end A282900.P466012968254448555

/-! ## A282900.P764312447931650156

`A347615(A059119(n))+A137843(n+1)`
-/

namespace A282900.P764312447931650156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347615 (A059119 n).toNat + A137843 (n + 1)

end

end A282900.P764312447931650156

/-! ## A282900.P14966141256700933401

`A177704(A325903(n+1))+A060097(n)`
-/

namespace A282900.P14966141256700933401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A325903 (n + 1)).toNat + A060097 n

end

end A282900.P14966141256700933401

/-!
# A282901: Number of permutations of 1,2,...,2n+1 obtainable via labeled chip-firing.

The programs for A282901, there is no canonical definition to state claims against.
-/

/-! ## A282901.P7378352053394694466

`ogf(-1/(-1+3x+3x^2+9x^3+7x^4))`
-/

namespace A282901.P7378352053394694466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -3, -9, -7] n

end

end A282901.P7378352053394694466

/-!
# A282902: Square array A(n, k) read by antidiagonals downwards: multiplicative order of 2 modulo prime(n)^k, where k runs over the positive integers.

The programs for A282902, there is no canonical definition to state claims against.
-/

/-! ## A282902.P8687263387298359472

`A336843(A182944(n+1))`
-/

namespace A282902.P8687263387298359472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A182944 (n + 1)).toNat

end

end A282902.P8687263387298359472

/-! ## A282902.P18312409027016024048

`A336843(A037126(n+1)^A004736(n+1))`
-/

namespace A282902.P18312409027016024048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A282902.P18312409027016024048

/-! ## A282902.P14498362996261533273

`A118106(2*A182946(n+1))`
-/

namespace A282902.P14498362996261533273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A182946 (n + 1)).toNat

end

end A282902.P14498362996261533273

/-! ## A282902.P6119012923986222025

`A118106(lcm(2, A182946(n+1)))`
-/

namespace A282902.P6119012923986222025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (Int.lcm 2 (A182946 (n + 1)))

end

end A282902.P6119012923986222025

/-! ## A282902.P4955092987083106819

`A118106(A182946(n+1)+A182946(n+1))`
-/

namespace A282902.P4955092987083106819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (A182946 (n + 1) + A182946 (n + 1)).toNat

end

end A282902.P4955092987083106819

/-!
# A282903: Concatenation of elements of P{d_1}, P{d_2}, P{d_3}, ..., P{d_n}; where P{d_n} denote the power set of the set of divisors of n ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A282903, there is no canonical definition to state claims against.
-/

/-! ## A282903.P3134524309442520639

`A359308(A006827(n+1)*A173524(n+1))`
-/

namespace A282903.P3134524309442520639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359308 (A006827 (n + 1) * A173524 (n + 1)).toNat

end

end A282903.P3134524309442520639

/-! ## A282903.P17313480367986543576

`A329313(∑[A176230(A029112(n))])`
-/

namespace A282903.P17313480367986543576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 (A029112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282903.P17313480367986543576

/-! ## A282903.P14672168870644549115

`A355749(lt[A355266(n), A248969(n)])`
-/

namespace A282903.P14672168870644549115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355749 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282903.P14672168870644549115

/-! ## A282903.P3642884706494191855

`A001222(lt[A255845(n), A337065(n+1)])`
-/

namespace A282903.P3642884706494191855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282903.P3642884706494191855

/-! ## A282903.P2878755107086058444

`A071891(A032045(n)+2*n)`
-/

namespace A282903.P2878755107086058444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071891 (A032045 n + (2 * n : ℤ)).toNat

end

end A282903.P2878755107086058444

/-!
# A282904: Concatenation of the numbers of elements of P{1}, P{1, 2}, P{1, 2, 3}, ..., P{1, 2, 3, ..., n}; where P{A} denote the power set of set A ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A282904, there is no canonical definition to state claims against.
-/

/-! ## A282904.P15493383281224665512

`A124737(comp[2^n-1])`
-/

namespace A282904.P15493383281224665512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A282904.P15493383281224665512

/-! ## A282904.P17737119274223855208

`A124736(comp[ceil(2^(n-1))-1])-1`
-/

namespace A282904.P17737119274223855208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A282904.P17737119274223855208

/-! ## A282904.P10607468802685686931

`A000120(A356028(n+1))`
-/

namespace A282904.P10607468802685686931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A356028 (n + 1)).toNat

end

end A282904.P10607468802685686931

/-! ## A282904.P2105699280439087443

`A124737(A062289(n+1))%64`
-/

namespace A282904.P2105699280439087443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124737 (A062289 (n + 1)).toNat) 64

end

end A282904.P2105699280439087443

/-! ## A282904.P15107191903865995163

`A000120(A294648(comp[2^n-1]))`
-/

namespace A282904.P15107191903865995163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A294648 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A282904.P15107191903865995163

/-! ## A282904.P9274135221241958458

`A000120(A351939(comp[2^n-1]))`
-/

namespace A282904.P9274135221241958458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A282904.P9274135221241958458

/-! ## A282904.P549533623425018479

`A153881(n+2)+A124736(A062289(n+1))`
-/

namespace A282904.P549533623425018479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A124736 (A062289 (n + 1)).toNat

end

end A282904.P549533623425018479

/-! ## A282904.P15246700257692890569

`A043537(A082185(n+1))`
-/

namespace A282904.P15246700257692890569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A082185 (n + 1)).toNat

end

end A282904.P15246700257692890569

/-!
# A282905: Concatenation of the sums of elements of P{1}, P{1, 2}, P{1, 2, 3}, ..., P{1, 2, 3, ..., n}; where P{A} denote the power set of set A ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A282905, there is no canonical definition to state claims against.
-/

/-! ## A282905.P12449791043293331998

`∑{digits}[A082185(n+1), #]`
-/

namespace A282905.P12449791043293331998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A282905.P12449791043293331998

/-! ## A282905.P12164251287903265934

`A326746(A082185(n+1))`
-/

namespace A282905.P12164251287903265934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A082185 (n + 1)).toNat

end

end A282905.P12164251287903265934

/-! ## A282905.P5665242944195384186

`A007953(A082185(n+1)%A006124(n))`
-/

namespace A282905.P5665242944195384186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (Int.tmod (A082185 (n + 1)) (A006124 n)).toNat

end

end A282905.P5665242944195384186

/-! ## A282905.P3077631266659131491

`A092196(A082185(n+1)+4)`
-/

namespace A282905.P3077631266659131491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A082185 (n + 1) + 4).toNat

end

end A282905.P3077631266659131491

/-! ## A282905.P4499484179525522235

`A007953(A082185(n+1)+9)`
-/

namespace A282905.P4499484179525522235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A082185 (n + 1) + 9).toNat

end

end A282905.P4499484179525522235

/-! ## A282905.P11445800753244495039

`A061762(A082185(n+1))-A221914(n+1)`
-/

namespace A282905.P11445800753244495039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A082185 (n + 1)).toNat - A221914 (n + 1)

end

end A282905.P11445800753244495039

/-!
# A282906: Expansion of 1/(1 - Sum_{j>=1} x^(Sum_{i=1..j} prime(i))).

The programs for A282906, there is no canonical definition to state claims against.
-/

/-! ## A282906.P17135998618382617522

`A187498(A247832(n)+A028240(n))`
-/

namespace A282906.P17135998618382617522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (A247832 n + A028240 n).toNat

end

end A282906.P17135998618382617522

/-! ## A282906.P15191956172599728908

`A097805(lt[A059076(n), A342889(n)])`
-/

namespace A282906.P15191956172599728908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282906.P15191956172599728908

/-! ## A282906.P12968331419144823517

`A127838(A248612(n+1)-1)%A350441(n+1)`
-/

namespace A282906.P12968331419144823517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127838 (A248612 (n + 1) - 1).toNat) (A350441 (n + 1))

end

end A282906.P12968331419144823517

/-! ## A282906.P2804691363847204015

`or(A001687(A077168(n)), A186745(n))`
-/

namespace A282906.P2804691363847204015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001687 (A077168 n).toNat) (A186745 n)

end

end A282906.P2804691363847204015

/-! ## A282906.P8304493641588168261

`A029197(eq[A029180(n), A029187(n)])`
-/

namespace A282906.P8304493641588168261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029197 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A282906.P8304493641588168261

/-!
# A282907: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A282907, there is no canonical definition to state claims against.
-/

/-! ## A282907.P6495279110335111834

`A007088(A282909(n))`
-/

namespace A282907.P6495279110335111834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282909 n).toNat

end

end A282907.P6495279110335111834

/-! ## A282907.P4845602680366894395

`A185544(2*A282909(n))`
-/

namespace A282907.P4845602680366894395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282909 n).toNat

end

end A282907.P4845602680366894395

/-!
# A282908: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A282908, there is no canonical definition to state claims against.
-/

/-! ## A282908.P4613812144555422825

`A007088(A282910(n))`
-/

namespace A282908.P4613812144555422825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282910 n).toNat

end

end A282908.P4613812144555422825

/-! ## A282908.P9750784623619374453

`A305989(A282909(n))`
-/

namespace A282908.P9750784623619374453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282909 n).toNat

end

end A282908.P9750784623619374453

/-! ## A282908.P7489603167402840927

`A185544(2*A282910(n))`
-/

namespace A282908.P7489603167402840927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282910 n).toNat

end

end A282908.P7489603167402840927

/-! ## A282908.P18106792578560993898

`A185544(lcm(2, A282910(n)))`
-/

namespace A282908.P18106792578560993898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282910 n))

end

end A282908.P18106792578560993898

/-! ## A282908.P3541335191907516968

`A007088(and(A282957(n)%p?[(n+1)^3+2], A053573(n+1)))`
-/

namespace A282908.P3541335191907516968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (Int.tmod (A282957 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) (A053573 (n + 1))).toNat

end

end A282908.P3541335191907516968

/-!
# A282909: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A282909, there is no canonical definition to state claims against.
-/

/-! ## A282909.P13191943131907545991

`A282956(n)-A008403(A129373(n))`
-/

namespace A282909.P13191943131907545991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n - A008403 (A129373 n).toNat

end

end A282909.P13191943131907545991

/-! ## A282909.P4228663421888779735

`A282825(n)-A289110(A000602(n))`
-/

namespace A282909.P4228663421888779735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282825 n - A289110 (A000602 n).toNat

end

end A282909.P4228663421888779735

/-! ## A282909.P16655445487866995477

`A282956(n)-A289110(A000602(n))`
-/

namespace A282909.P16655445487866995477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n - A289110 (A000602 n).toNat

end

end A282909.P16655445487866995477

/-! ## A282909.P14600571566056389569

`A282825(n)-A151755(A294138(n))`
-/

namespace A282909.P14600571566056389569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282825 n - A151755 (A294138 n).toNat

end

end A282909.P14600571566056389569

/-! ## A282909.P4838631234708866088

`A282956(n)-A151755(A294138(n))`
-/

namespace A282909.P4838631234708866088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n - A151755 (A294138 n).toNat

end

end A282909.P4838631234708866088

/-!
# A282910: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A282910, there is no canonical definition to state claims against.
-/

/-! ## A282910.P14895219595959240804

`A030101(A282909(n))`
-/

namespace A282910.P14895219595959240804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A282909 n).toNat

end

end A282910.P14895219595959240804

/-! ## A282910.P9872481151285663141

`A281589(2*A282909(n))`
-/

namespace A282910.P9872481151285663141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282909 n).toNat

end

end A282910.P9872481151285663141

/-! ## A282910.P11433870510240699480

`A325401(2*A282909(n))`
-/

namespace A282910.P11433870510240699480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282909 n).toNat

end

end A282910.P11433870510240699480

/-! ## A282910.P11064948333380882539

`A281589(lcm(2, A282909(n)))`
-/

namespace A282910.P11064948333380882539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282909 n))

end

end A282910.P11064948333380882539

/-! ## A282910.P15583932406843594763

`and(A282957(n)%p?[(n+1)^3+2], A053573(n+1))`
-/

namespace A282910.P15583932406843594763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A282957 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)) (A053573 (n + 1))

end

end A282910.P15583932406843594763

/-!
# A282911: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A282911, there is no canonical definition to state claims against.
-/

/-! ## A282911.P7281683710241038170

`A007088(A282913(n))`
-/

namespace A282911.P7281683710241038170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282913 n).toNat

end

end A282911.P7281683710241038170

/-! ## A282911.P15692976345736657313

`A305989(A282914(n))`
-/

namespace A282911.P15692976345736657313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282914 n).toNat

end

end A282911.P15692976345736657313

/-! ## A282911.P13175861954355010019

`A169967(A282913(n)+1)/4`
-/

namespace A282911.P13175861954355010019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (A282913 n + 1).toNat : ℚ) / 4

end

end A282911.P13175861954355010019

/-! ## A282911.P6394894244666579222

`A185544(2*A282913(n))`
-/

namespace A282911.P6394894244666579222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282913 n).toNat

end

end A282911.P6394894244666579222

/-! ## A282911.P8033951975250708692

`A185544(lcm(2, A282913(n)))`
-/

namespace A282911.P8033951975250708692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282913 n))

end

end A282911.P8033951975250708692

/-!
# A282912: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A282912, there is no canonical definition to state claims against.
-/

/-! ## A282912.P3001709101466691035

`A007088(A282914(n))`
-/

namespace A282912.P3001709101466691035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282914 n).toNat

end

end A282912.P3001709101466691035

/-! ## A282912.P11119620404415974670

`A305989(A282913(n))`
-/

namespace A282912.P11119620404415974670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282913 n).toNat

end

end A282912.P11119620404415974670

/-! ## A282912.P1647549601887722107

`A169967(A282914(n)+1)/4`
-/

namespace A282912.P1647549601887722107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (A282914 n + 1).toNat : ℚ) / 4

end

end A282912.P1647549601887722107

/-! ## A282912.P10388905627626605220

`A185544(2*A282914(n))`
-/

namespace A282912.P10388905627626605220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282914 n).toNat

end

end A282912.P10388905627626605220

/-! ## A282912.P2736043215114299692

`A185544(lcm(2, A282914(n)))`
-/

namespace A282912.P2736043215114299692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282914 n))

end

end A282912.P2736043215114299692

/-!
# A282913: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A282913, the canonical program `A282913.P5440293470712583915` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282913 has offset 0).

The definition of A282913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282913.P5440293470712583915

`a(n-1)+16*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=13, a(4)=25, a(5)=59`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282913

/-- `a(n-1)+16*a(n-4)-16*a(n-5)` -/
def P5440293470712583915.Spec : Prop :=
  ∀ n, P5440293470712583915.a n = A282913 n

theorem P5440293470712583915.correct : P5440293470712583915.Spec := by
  intro n
  simp only [A282913]

end A282913

/-! ## A282913.P16138614049152221454

`A057889(A282914(n))`
-/

namespace A282913.P16138614049152221454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A282914 n).toNat

end

end A282913.P16138614049152221454

namespace A282913

/-- `A057889(A282914(n))` -/
def P16138614049152221454.Spec : Prop :=
  ∀ n, P16138614049152221454.a n = A282913 n

end A282913

/-! ## A282913.P12076337716406979588

`A281589(2*A282914(n))`
-/

namespace A282913.P12076337716406979588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282914 n).toNat

end

end A282913.P12076337716406979588

namespace A282913

/-- `A281589(2*A282914(n))` -/
def P12076337716406979588.Spec : Prop :=
  ∀ n, P12076337716406979588.a n = A282913 n

end A282913

/-! ## A282913.P11087698222313883478

`A325401(2*A282914(n))`
-/

namespace A282913.P11087698222313883478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282914 n).toNat

end

end A282913.P11087698222313883478

namespace A282913

/-- `A325401(2*A282914(n))` -/
def P11087698222313883478.Spec : Prop :=
  ∀ n, P11087698222313883478.a n = A282913 n

end A282913

/-! ## A282913.P7670462914985270353

`A281589(lcm(2, A282914(n)))`
-/

namespace A282913.P7670462914985270353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282914 n))

end

end A282913.P7670462914985270353

namespace A282913

/-- `A281589(lcm(2, A282914(n)))` -/
def P7670462914985270353.Spec : Prop :=
  ∀ n, P7670462914985270353.a n = A282913 n

end A282913

/-!
# A282914: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A282914, the canonical program `A282914.P4288651645339449157` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282914 has offset 0).

The definition of A282914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282914.P4288651645339449157

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11, a(4)=19, a(5)=55`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282914

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P4288651645339449157.Spec : Prop :=
  ∀ n, P4288651645339449157.a n = A282914 n

theorem P4288651645339449157.correct : P4288651645339449157.Spec := by
  intro n
  simp only [A282914]

end A282914

/-! ## A282914.P12276420928865194374

`A057889(A282913(n))`
-/

namespace A282914.P12276420928865194374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A282913 n).toNat

end

end A282914.P12276420928865194374

namespace A282914

/-- `A057889(A282913(n))` -/
def P12276420928865194374.Spec : Prop :=
  ∀ n, P12276420928865194374.a n = A282914 n

end A282914

/-! ## A282914.P6312074445824863464

`A281589(2*A282913(n))`
-/

namespace A282914.P6312074445824863464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282913 n).toNat

end

end A282914.P6312074445824863464

namespace A282914

/-- `A281589(2*A282913(n))` -/
def P6312074445824863464.Spec : Prop :=
  ∀ n, P6312074445824863464.a n = A282914 n

end A282914

/-! ## A282914.P17066529140235640985

`A325401(2*A282913(n))`
-/

namespace A282914.P17066529140235640985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282913 n).toNat

end

end A282914.P17066529140235640985

namespace A282914

/-- `A325401(2*A282913(n))` -/
def P17066529140235640985.Spec : Prop :=
  ∀ n, P17066529140235640985.a n = A282914 n

end A282914

/-! ## A282914.P13879700226204481473

`A281589(lcm(2, A282913(n)))`
-/

namespace A282914.P13879700226204481473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282913 n))

end

end A282914.P13879700226204481473

namespace A282914

/-- `A281589(lcm(2, A282913(n)))` -/
def P13879700226204481473.Spec : Prop :=
  ∀ n, P13879700226204481473.a n = A282914 n

end A282914

/-!
# A282915: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A282915, there is no canonical definition to state claims against.
-/

/-! ## A282915.P15445318950032969868

`A000042(n+1)%A282482(A028310(n))`
-/

namespace A282915.P15445318950032969868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282482 (A028310 n).toNat)

end

end A282915.P15445318950032969868

/-! ## A282915.P16412768345771226613

`A002275(n+1)%A282482(A028310(n))`
-/

namespace A282915.P16412768345771226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (n + 1)) (A282482 (A028310 n).toNat)

end

end A282915.P16412768345771226613

/-! ## A282915.P10956627906846139559

`A282483(n)+A282916(n)-A282482(n)`
-/

namespace A282915.P10956627906846139559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282483 n + (A282916 n - A282482 n)

end

end A282915.P10956627906846139559

/-! ## A282915.P16458660120290803271

`A000042(n+1)+A000007(n)-A282482(n)`
-/

namespace A282915.P16458660120290803271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282482 n)

end

end A282915.P16458660120290803271

/-! ## A282915.P2847432458124358283

`A007088(A282917(n))`
-/

namespace A282915.P2847432458124358283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282917 n).toNat

end

end A282915.P2847432458124358283

/-!
# A282916: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A282916, there is no canonical definition to state claims against.
-/

/-! ## A282916.P16616195036812195982

`A282482(n)+A282915(n)-A282483(n)`
-/

namespace A282916.P16616195036812195982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282482 n + (A282915 n - A282483 n)

end

end A282916.P16616195036812195982

/-! ## A282916.P7032417546333669281

`A000042(n+1)+A000007(n)-A282483(n)`
-/

namespace A282916.P7032417546333669281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282483 n)

end

end A282916.P7032417546333669281

/-! ## A282916.P13938569918152681524

`A282482(n)+A007088(A282917(n))-A282483(n)`
-/

namespace A282916.P13938569918152681524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282482 n + (A007088 (A282917 n).toNat - A282483 n)

end

end A282916.P13938569918152681524

/-! ## A282916.P6801797996252853484

`A007088(A282918(n))`
-/

namespace A282916.P6801797996252853484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282918 n).toNat

end

end A282916.P6801797996252853484

/-! ## A282916.P15982479104185735788

`A007088(and(-A282485(n), A095121(n)))`
-/

namespace A282916.P15982479104185735788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A282485 n) (A095121 n)).toNat

end

end A282916.P15982479104185735788

/-!
# A282917: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A282917, there is no canonical definition to state claims against.
-/

/-! ## A282917.P8808033964344867604

`A151821(n+1)%(A282484(n)+1)`
-/

namespace A282917.P8808033964344867604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151821 (n + 1)) (A282484 n + 1)

end

end A282917.P8808033964344867604

/-! ## A282917.P17930579411928634472

`A126646(n)%A282484(A028310(n))`
-/

namespace A282917.P17930579411928634472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282484 (A028310 n).toNat)

end

end A282917.P17930579411928634472

/-! ## A282917.P662446133155492113

`xor(A077896(A004277(n)), A282484(n))`
-/

namespace A282917.P662446133155492113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282484 n)

end

end A282917.P662446133155492113

/-! ## A282917.P17681558695007753006

`∑[A000079(n)]%A282484(A028310(n))`
-/

namespace A282917.P17681558695007753006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A282484 (A028310 n).toNat)

end

end A282917.P17681558695007753006

/-! ## A282917.P18304068787254820990

`A282485(n)+A282918(n)-A282484(n)`
-/

namespace A282917.P18304068787254820990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282485 n + (A282918 n - A282484 n)

end

end A282917.P18304068787254820990

/-!
# A282918: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A282918, there is no canonical definition to state claims against.
-/

/-! ## A282918.P15580264919244277791

`A095121(n)+1-A282485(n)`
-/

namespace A282918.P15580264919244277791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282485 n)

end

end A282918.P15580264919244277791

/-! ## A282918.P118174185419324657

`xor(1, A151821(n+1)-A282485(n))`
-/

namespace A282918.P118174185419324657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A151821 (n + 1) - A282485 n)

end

end A282918.P118174185419324657

/-! ## A282918.P10289534872895919055

`xor(A077896(A004277(n)), A282485(n))`
-/

namespace A282918.P10289534872895919055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A282485 n)

end

end A282918.P10289534872895919055

/-! ## A282918.P14768495417055112673

`A282484(n)+A282917(n)-A282485(n)`
-/

namespace A282918.P14768495417055112673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282484 n + (A282917 n - A282485 n)

end

end A282918.P14768495417055112673

/-! ## A282918.P5945612091363560065

`xor(A077896(A000007(n)+2*n), A282485(n))`
-/

namespace A282918.P5945612091363560065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A000007 n + (2 * n : ℤ)).toNat) (A282485 n)

end

end A282918.P5945612091363560065

/-! ## A282918.P2274820496600789729

`xor(A077896(A000007(n)+n+n), A282485(n))`
-/

namespace A282918.P2274820496600789729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A000007 n + (n : ℤ) + (n : ℤ)).toNat) (A282485 n)

end

end A282918.P2274820496600789729

/-!
# A282919: a(n) = A000041(49*n + 47).

The programs for A282919, there is no canonical definition to state claims against.
-/

/-! ## A282919.P429433634889762913

`A213261(7*n+6)`
-/

namespace A282919.P429433634889762913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213261 (7 * n + 6)

end

end A282919.P429433634889762913

/-! ## A282919.P3250519618486136066

`A000041(49*n+47)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282919.P3250519618486136066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (49 * n + 47)

end

end A282919.P3250519618486136066

/-!
# A282924: Expansion of Product_{k>=1} (1 - x^(7*k))^24/(1 - x^k)^25 in powers of x.

The programs for A282924, there is no canonical definition to state claims against.
-/

/-! ## A282924.P11288410187597644190

`or(A022307(A006129(n)), A278557(n))`
-/

namespace A282924.P11288410187597644190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022307 (A006129 n).toNat) (A278557 n)

end

end A282924.P11288410187597644190

/-! ## A282924.P9367494090871887816

`or(A124663(A080054(n)), A278557(n))`
-/

namespace A282924.P9367494090871887816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124663 (A080054 n).toNat) (A278557 n)

end

end A282924.P9367494090871887816

/-!
# A282933: Number of ways to write n as x^4 + y^2 + z^2 + w^2 with x,y,z nonnegative integers and w a positive integer such that 8*y^2 - 8*y*z + 9*z^2 is a square.

The programs for A282933, there is no canonical definition to state claims against.
-/

/-! ## A282933.P15579017978805204157

`A114575(A351831(2*n+1))/A000119(A344594(n+1))`
-/

namespace A282933.P15579017978805204157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114575 (A351831 (2 * n + 1)).toNat : ℚ) / (A000119 (A344594 (n + 1)).toNat : ℚ)

end

end A282933.P15579017978805204157

/-!
# A282934: Concatenation of the numbers of elements of P{d_1}, P{d_2}, P{d_3}, ..., P{d_n}; where P{d_n} denote the power set of the set of divisors of n ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A282934, there is no canonical definition to state claims against.
-/

/-! ## A282934.P144853949073993831

`gcd(A001221(A135986(3*(n+1))), A135950(n))`
-/

namespace A282934.P144853949073993831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A135986 (3 * (n + 1))).toNat) (A135950 n)

end

end A282934.P144853949073993831

/-! ## A282934.P8975478350415281267

`A035151(gcd(A105619(n), A105655(n+4)))`
-/

namespace A282934.P8975478350415281267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (Int.gcd (A105619 n) (A105655 (n + 4)))

end

end A282934.P8975478350415281267

/-! ## A282934.P10314419831969887383

`gcd(A207338(A130330(n)), A305303(n))`
-/

namespace A282934.P10314419831969887383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207338 (A130330 n).toNat) (A305303 n)

end

end A282934.P10314419831969887383

/-! ## A282934.P17246361603742501925

`gcd(A049723(A049724(n)), A072832(n+1))`
-/

namespace A282934.P17246361603742501925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049723 (A049724 n).toNat) (A072832 (n + 1))

end

end A282934.P17246361603742501925

/-! ## A282934.P5081125046848407457

`A103587(A127300(3*(n+1))-A103587(3*n+1))`
-/

namespace A282934.P5081125046848407457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103587 (A127300 (3 * (n + 1)) - A103587 (3 * n + 1)).toNat

end

end A282934.P5081125046848407457

/-!
# A282935: Concatenation of the sums of elements of P{d_1}, P{d_2}, P{d_3}, ..., P{d_n}; where P{d_n} denote the power set of the set of divisors of n ordered by the size of the subsets, and in each subset, following the increasing order.

The programs for A282935, there is no canonical definition to state claims against.
-/

/-! ## A282935.P15655380878671224161

`A000120(record[A321731(n+1)+A010076(n)])`
-/

namespace A282935.P15655380878671224161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321731 (n + 1) + A010076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A282935.P15655380878671224161

/-! ## A282935.P15354704231645273542

`A134933(A000041(n))%(comp[∑[n]]-n)`
-/

namespace A282935.P15354704231645273542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134933 (A000041 n).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A282935.P15354704231645273542

/-! ## A282935.P14909911424608753321

`A144328(((p?[3*n+1]-1)/3)%A194784(n+1))`
-/

namespace A282935.P14909911424608753321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (Int.tmod (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 3)) (A194784 (n + 1))).toNat

end

end A282935.P14909911424608753321

/-! ## A282935.P13990042274492176053

`A249061(A173388(n)+A002412(n))`
-/

namespace A282935.P13990042274492176053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A173388 n + A002412 n).toNat

end

end A282935.P13990042274492176053

/-! ## A282935.P18181538772112564722

`A227739(A307059(n)+A283905(n))`
-/

namespace A282935.P18181538772112564722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (A307059 n + A283905 n).toNat

end

end A282935.P18181538772112564722

/-!
# A282937: a(n) = A000728(5*n).

The programs for A282937, there is no canonical definition to state claims against.
-/

/-! ## A282937.P16832865147709716423

`A000728(5*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282937.P16832865147709716423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000728 (5 * n)

end

end A282937.P16832865147709716423

/-! ## A282937.P12018379903983565743

`A000728(A008587(n))%A053742(n)`
-/

namespace A282937.P12018379903983565743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000728 (A008587 n).toNat) (A053742 n)

end

end A282937.P12018379903983565743

/-! ## A282937.P15144092925871533286

`A062707(C(2, n))+A000728(A008587(n))`
-/

namespace A282937.P15144092925871533286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (Nat.choose 2 n) + A000728 (A008587 n).toNat

end

end A282937.P15144092925871533286

/-! ## A282937.P12600154722223017958

`A000728(A008587(n))/A000213(C(2, n))`
-/

namespace A282937.P12600154722223017958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) / (A000213 (Nat.choose 2 n) : ℚ)

end

end A282937.P12600154722223017958

/-! ## A282937.P10674199950850286246

`A000728(A008587(n))/A000288(C(2, n))`
-/

namespace A282937.P10674199950850286246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) / (A000288 (Nat.choose 2 n) : ℚ)

end

end A282937.P10674199950850286246

/-! ## A282937.P5335858928641390492

`A000728(A008587(n))/A001222(C(2, n+2)+2)`
-/

namespace A282937.P5335858928641390492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) / (A001222 (Nat.choose 2 (n + 2) + 2) : ℚ)

end

end A282937.P5335858928641390492

/-! ## A282937.P14013230733198728434

`A000728(A008587(n))^A003963(C(2, n+2)+2)`
-/

namespace A282937.P14013230733198728434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) ^ (A003963 (Nat.choose 2 (n + 2) + 2) : ℤ)

end

end A282937.P14013230733198728434

/-! ## A282937.P8913814984964650901

`A000728(A008587(n))/A235872(A204455(n+1))`
-/

namespace A282937.P8913814984964650901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) / (A235872 (A204455 (n + 1)).toNat : ℚ)

end

end A282937.P8913814984964650901

/-! ## A282937.P12440381623101418760

`A000728(A008587(n))^A001221(A142196(n+1))`
-/

namespace A282937.P12440381623101418760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) ^ (A001221 (A142196 (n + 1)).toNat : ℤ)

end

end A282937.P12440381623101418760

/-! ## A282937.P1361318688735575366

`A000728(A008587(n))/A001222(A002146(n))`
-/

namespace A282937.P1361318688735575366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000728 (A008587 n).toNat : ℚ) / (A001222 (A002146 n).toNat : ℚ)

end

end A282937.P1361318688735575366

/-!
# A282938: Recursive 2-parameter sequence allowing calculation of the Möbius function (not the same as A266378).

The programs for A282938, there is no canonical definition to state claims against.
-/

/-! ## A282938.P3381457873349119601

`Δ[A074943(A000203(A066644(n+2)))]`
-/

namespace A282938.P3381457873349119601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (A000203 (A066644 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282938.P3381457873349119601

/-! ## A282938.P14535642596808473846

`A010815(A145920(n+1))*A330888(n+1)`
-/

namespace A282938.P14535642596808473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A145920 (n + 1)).toNat * A330888 (n + 1)

end

end A282938.P14535642596808473846

/-! ## A282938.P11865102525355398120

`A112712(A301708(n+3)+A000213(n+4))`
-/

namespace A282938.P11865102525355398120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112712 (A301708 (n + 3) + A000213 (n + 4)).toNat

end

end A282938.P11865102525355398120

/-! ## A282938.P13253194968229968232

`Δ[A134452(A328370(n+1))]`
-/

namespace A282938.P13253194968229968232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A328370 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A282938.P13253194968229968232

/-! ## A282938.P13998452775501482590

`A334090(or(36, A018005(n+4)))`
-/

namespace A282938.P13998452775501482590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (Int.lor 36 (A018005 (n + 4))).toNat

end

end A282938.P13998452775501482590

/-!
# A282939: Maximum number of straight lines required to draw the boundary of any polyomino with n squares.

The programs for A282939, there is no canonical definition to state claims against.
-/

/-! ## A282939.P11905708167381546245

`record[or(4, n)]-gcd(4, n)`
-/

namespace A282939.P11905708167381546245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (Nat.gcd 4 n : ℤ)

end

end A282939.P11905708167381546245

/-! ## A282939.P10421615548942930546

`or(n, and(2, -n))+n`
-/

namespace A282939.P10421615548942930546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.land 2 (-(n : ℤ))) + (n : ℤ)

end

end A282939.P10421615548942930546

/-! ## A282939.P11862249497790928641

`or(n, Δ[or(1, n)])+n`
-/

namespace A282939.P11862249497790928641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A282939.P11862249497790928641

/-! ## A282939.P12618102036694071721

`or(n, 2*n%2)+n`
-/

namespace A282939.P12618102036694071721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * (n % 2)) + n

end

end A282939.P12618102036694071721

/-! ## A282939.P14101744537460209587

`or(n, 2*and(1, n))+n`
-/

namespace A282939.P14101744537460209587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * Nat.land 1 n) + n

end

end A282939.P14101744537460209587

/-! ## A282939.P5208270543119400023

`2*(∑[∑[n]]%2+n)`
-/

namespace A282939.P5208270543119400023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + n)

end

end A282939.P5208270543119400023

/-! ## A282939.P4026039671367915173

`2*(and(1, ∑[∑[n]])+n)`
-/

namespace A282939.P4026039671367915173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + n)

end

end A282939.P4026039671367915173

/-! ## A282939.P13428948873755422279

`a(n-4)+8` with `a(0)=0, a(1)=4, a(2)=4, a(3)=6`
-/

namespace A282939.P13428948873755422279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 6] fun n a =>
  a (n - 4) + 8

end

end A282939.P13428948873755422279

/-! ## A282939.P7397521076816442428

`and(2, -n^3)+2*n`
-/

namespace A282939.P7397521076816442428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n ^ 3 : ℤ)) + (2 * n : ℤ)

end

end A282939.P7397521076816442428

/-!
# A282940: Largest non-infinitary divisor of A162643(n) having no non-infinitary divisors.

The programs for A282940, there is no canonical definition to state claims against.
-/

/-! ## A282940.P16002796297085248239

`A372379(A162643(n+1))`
-/

namespace A282940.P16002796297085248239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A162643 (n + 1)).toNat

end

end A282940.P16002796297085248239

/-! ## A282940.P6097104805706562250

`A372379(lt[1, A212181(n+1)]+1)`
-/

namespace A282940.P6097104805706562250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A282940.P6097104805706562250

/-!
# A282941: a(n) = A000730(7*n).

The programs for A282941, there is no canonical definition to state claims against.
-/

/-! ## A282941.P916976430673035634

`A000730(7*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282941.P916976430673035634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000730 (7 * n)

end

end A282941.P916976430673035634

/-! ## A282941.P9014527952689053258

`A000730(A008589(n))+char[A016975(n)]`
-/

namespace A282941.P9014527952689053258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016975 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000730 (A008589 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282941.P9014527952689053258

/-! ## A282941.P4045481772212833085

`A000730(A008589(n))%A138404(n+1)`
-/

namespace A282941.P4045481772212833085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000730 (A008589 n).toNat) (A138404 (n + 1))

end

end A282941.P4045481772212833085

/-! ## A282941.P15224558091711120432

`A000730(A008589(n))+1-A106400(n)²`
-/

namespace A282941.P15224558091711120432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000730 (A008589 n).toNat + 1 - A106400 n ^ 2

end

end A282941.P15224558091711120432

/-! ## A282941.P17425328083192057909

`A000730(A008589(n))+char[A025297(n+1)]`
-/

namespace A282941.P17425328083192057909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025297 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000730 (A008589 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A282941.P17425328083192057909

/-!
# A282942: Expansion of Product_{k>=1} (1 - q^k)^8/(1 - q^(7*k)) in powers of q.

The programs for A282942, there is no canonical definition to state claims against.
-/

/-! ## A282942.P218983248890068702

`A034433(n)+A010894(A079983(n))`
-/

namespace A282942.P218983248890068702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034433 n + A010894 ((A079983 n).toNat + 21)

end

end A282942.P218983248890068702

/-! ## A282942.P3581803556451128509

`A085982(A007097(n))+A034433(n)`
-/

namespace A282942.P3581803556451128509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A007097 n).toNat + A034433 n

end

end A282942.P3581803556451128509

/-! ## A282942.P16753972661595436057

`A109527(A109525(n))+A034433(n)`
-/

namespace A282942.P16753972661595436057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109527 (A109525 n).toNat + A034433 n

end

end A282942.P16753972661595436057

/-! ## A282942.P17425617718679788398

`A178798(A181658(n))+A034433(n)`
-/

namespace A282942.P17425617718679788398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A181658 n).toNat + A034433 n

end

end A282942.P17425617718679788398

/-! ## A282942.P17133610113892070461

`A358842(A128743(n))+A034433(n)`
-/

namespace A282942.P17133610113892070461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (A128743 n).toNat + A034433 n

end

end A282942.P17133610113892070461

/-!
# A282943: Numbers k such that 3*2^k + 1 is a prime factor of a generalized Fermat number 7^(2^m) + 1 for some m.

The programs for A282943, there is no canonical definition to state claims against.
-/

/-! ## A282943.P502074212471554811

`filter[A002253(n+1), A011765(#)]`
-/

namespace A282943.P502074212471554811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A282943.P502074212471554811

/-! ## A282943.P12021470861344217878

`eq[A004275(A263046(n)), A010121(n)]`
-/

namespace A282943.P12021470861344217878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A263046 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282943.P12021470861344217878

/-! ## A282943.P3072467316075463197

`eq[A094267(n), A156660(A263046(n))]`
-/

namespace A282943.P3072467316075463197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A263046 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282943.P3072467316075463197

/-! ## A282943.P8009126241542472411

`∩[A298364(A002253(n+1)), A002253(n+5)]`
-/

namespace A282943.P8009126241542472411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A002253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002253 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A282943.P8009126241542472411

/-!
# A282944: Numbers k such that 3*2^k + 1 is a prime factor of a generalized Fermat number 11^(2^m) + 1 for some m.

The programs for A282944, there is no canonical definition to state claims against.
-/

/-! ## A282944.P12898277865953782188

`∑[A083260((59*n+15)*(n+1)²+n)]`
-/

namespace A282944.P12898277865953782188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 ((59 * n + 15) * (n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282944.P12898277865953782188

/-!
# A282947: Number of ways of writing n as a sum of a perfect power and a squarefree semiprime.

The programs for A282947, there is no canonical definition to state claims against.
-/

/-! ## A282947.P2320172629016589345

`A068320(n+1)%A001221(A052993(n))!`
-/

namespace A282947.P2320172629016589345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068320 (n + 1)) (Nat.factorial (A001221 (A052993 n).toNat).toNat : ℤ)

end

end A282947.P2320172629016589345

/-!
# A282949: Number of distinct subword complexity profiles for binary strings of length n.

The programs for A282949, there is no canonical definition to state claims against.
-/

/-! ## A282949.P3363209516499870957

`A083277(A018088(n))`
-/

namespace A282949.P3363209516499870957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A018088 n).toNat

end

end A282949.P3363209516499870957

/-! ## A282949.P11704956243434197974

`A083277(A018089(n))`
-/

namespace A282949.P11704956243434197974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A018089 n).toNat

end

end A282949.P11704956243434197974

/-! ## A282949.P5647494596454053455

`A204166(A288229(n))`
-/

namespace A282949.P5647494596454053455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A288229 n).toNat

end

end A282949.P5647494596454053455

/-! ## A282949.P5285389785837977323

`A204164(A270440(n+1))`
-/

namespace A282949.P5285389785837977323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A270440 (n + 1)).toNat

end

end A282949.P5285389785837977323

/-! ## A282949.P7629095732570671454

`A274701(round(sqrt(A072856(n+2))))`
-/

namespace A282949.P7629095732570671454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (SequenceMachineLib.roundAway (Real.sqrt (A072856 (n + 2) : ℝ))).toNat

end

end A282949.P7629095732570671454

/-!
# A282950: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A282950, there is no canonical definition to state claims against.
-/

/-! ## A282950.P11914093011969210142

`A007088(A282952(n))`
-/

namespace A282950.P11914093011969210142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282952 n).toNat

end

end A282950.P11914093011969210142

/-! ## A282950.P16860612808810458039

`A007088(or(1, A126646(n)-A279986(n)))`
-/

namespace A282950.P16860612808810458039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A279986 n)).toNat

end

end A282950.P16860612808810458039

/-! ## A282950.P7406657083049761534

`A007088(A279474(n)+A282982(n)-A279986(n))`
-/

namespace A282950.P7406657083049761534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279474 n + (A282982 n - A279986 n)).toNat

end

end A282950.P7406657083049761534

/-! ## A282950.P1089081514084201235

`A007088(A279474(n)-(A279986(n)-A282982(n)))`
-/

namespace A282950.P1089081514084201235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279474 n - (A279986 n - A282982 n)).toNat

end

end A282950.P1089081514084201235

/-! ## A282950.P6537198253793922460

`A007088(char[A126966(n)]+A126646(n)-A279986(n))`
-/

namespace A282950.P6537198253793922460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A126646 n - A279986 n)).toNat

end

end A282950.P6537198253793922460

/-!
# A282951: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A282951, there is no canonical definition to state claims against.
-/

/-! ## A282951.P4704426515443470998

`A007088(A282953(n))`
-/

namespace A282951.P4704426515443470998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282953 n).toNat

end

end A282951.P4704426515443470998

/-! ## A282951.P2568677421322253678

`A185544(2*A282953(n))`
-/

namespace A282951.P2568677421322253678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282953 n).toNat

end

end A282951.P2568677421322253678

/-! ## A282951.P14490776033813518200

`A282981(A073789(n))`
-/

namespace A282951.P14490776033813518200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282981 (A073789 n).toNat

end

end A282951.P14490776033813518200

/-! ## A282951.P14149322427799006088

`A282981(A004869(n+1))`
-/

namespace A282951.P14149322427799006088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282981 (A004869 (n + 1)).toNat

end

end A282951.P14149322427799006088

/-!
# A282952: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A282952, there is no canonical definition to state claims against.
-/

/-! ## A282952.P3144604402922689428

`or(1, A126646(n)-A279986(n))`
-/

namespace A282952.P3144604402922689428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A279986 n)

end

end A282952.P3144604402922689428

/-! ## A282952.P10776381242450108395

`A279474(n)+A282982(n)-A279986(n)`
-/

namespace A282952.P10776381242450108395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279474 n + (A282982 n - A279986 n)

end

end A282952.P10776381242450108395

/-! ## A282952.P11627537623552743025

`A126646(n)+char[A126966(n)]-A279986(n)`
-/

namespace A282952.P11627537623552743025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A279986 n)

end

end A282952.P11627537623552743025

/-! ## A282952.P11684220793442088653

`A270214(n)%2+A126646(n)-A279986(n)`
-/

namespace A282952.P11684220793442088653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270214 n) 2 + (A126646 n - A279986 n)

end

end A282952.P11684220793442088653

/-! ## A282952.P11096331196775740820

`val(A019425(n)+2, n+2)+A126646(n)-A279986(n)`
-/

namespace A282952.P11096331196775740820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A019425 n + 2).toNat (n + 2) : ℤ) + (A126646 n - A279986 n)

end

end A282952.P11096331196775740820

/-!
# A282953: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A282953, there is no canonical definition to state claims against.
-/

/-! ## A282953.P16142467990612151249

`A109680(A282983(n))`
-/

namespace A282953.P16142467990612151249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A282983 n).toNat

end

end A282953.P16142467990612151249

/-! ## A282953.P15184969443925362646

`A282983(A004891(n+1))`
-/

namespace A282953.P15184969443925362646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282983 (A004891 (n + 1)).toNat

end

end A282953.P15184969443925362646

/-! ## A282953.P14546090730919929559

`A282983(A004902(n+1))`
-/

namespace A282953.P14546090730919929559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282983 (A004902 (n + 1)).toNat

end

end A282953.P14546090730919929559

/-! ## A282953.P18433567162358891364

`A282983(A004913(n+1))`
-/

namespace A282953.P18433567162358891364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282983 (A004913 (n + 1)).toNat

end

end A282953.P18433567162358891364

/-!
# A282954: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A282954, there is no canonical definition to state claims against.
-/

/-! ## A282954.P14612273315128066400

`A007088(A282956(n))`
-/

namespace A282954.P14612273315128066400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282956 n).toNat

end

end A282954.P14612273315128066400

/-! ## A282954.P953228197443269665

`A185544(2*A282956(n))`
-/

namespace A282954.P953228197443269665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282956 n).toNat

end

end A282954.P953228197443269665

/-! ## A282954.P17392086168538000768

`A185544(A282956(n)+A282956(n))`
-/

namespace A282954.P17392086168538000768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282956 n + A282956 n).toNat

end

end A282954.P17392086168538000768

/-! ## A282954.P18082258381314456985

`A185544(A282956(n)-(A185284(n)-A282956(n)))`
-/

namespace A282954.P18082258381314456985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282956 n - (A185284 n - A282956 n)).toNat

end

end A282954.P18082258381314456985

/-! ## A282954.P2796737168264564057

`A282984(n)^gcd(11, n)`
-/

namespace A282954.P2796737168264564057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282984 n ^ Nat.gcd 11 n

end

end A282954.P2796737168264564057

/-!
# A282955: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A282955, there is no canonical definition to state claims against.
-/

/-! ## A282955.P4564161804910870892

`A007088(A282957(n))`
-/

namespace A282955.P4564161804910870892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282957 n).toNat

end

end A282955.P4564161804910870892

/-! ## A282955.P10340553284918353473

`A305989(A282956(n))`
-/

namespace A282955.P10340553284918353473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282956 n).toNat

end

end A282955.P10340553284918353473

/-! ## A282955.P10949900571479900202

`A185544(2*A282957(n))`
-/

namespace A282955.P10949900571479900202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282957 n).toNat

end

end A282955.P10949900571479900202

/-! ## A282955.P7555324296298325237

`A185544(lcm(2, A282957(n)))`
-/

namespace A282955.P7555324296298325237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282957 n))

end

end A282955.P7555324296298325237

/-! ## A282955.P9533122837051145509

`A282985(n*gcd(11, n))`
-/

namespace A282955.P9533122837051145509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282985 (n * Nat.gcd 11 n)

end

end A282955.P9533122837051145509

/-!
# A282956: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A282956, there is no canonical definition to state claims against.
-/

/-! ## A282956.P7542515525023688111

`A282986(n)-A217155(A220681(n+1))`
-/

namespace A282956.P7542515525023688111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 n - A217155 (A220681 (n + 1)).toNat

end

end A282956.P7542515525023688111

/-! ## A282956.P10963068138012169885

`A282986(n)-A217155(A257894(n+1))`
-/

namespace A282956.P10963068138012169885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 n - A217155 (A257894 (n + 1)).toNat

end

end A282956.P10963068138012169885

/-! ## A282956.P7799281014590071986

`A282986(n)-A154439(A185284((5-n)²))`
-/

namespace A282956.P7799281014590071986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 n - A154439 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A282956.P7799281014590071986

/-! ## A282956.P4589124357078164588

`A282986(A062399(n))`
-/

namespace A282956.P4589124357078164588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 (A062399 n).toNat

end

end A282956.P4589124357078164588

/-! ## A282956.P11063847707465579001

`A282986(A120126(n))`
-/

namespace A282956.P11063847707465579001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282986 (A120126 n).toNat

end

end A282956.P11063847707465579001

/-!
# A282957: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A282957, there is no canonical definition to state claims against.
-/

/-! ## A282957.P13064934739068219898

`A030101(A282956(n))`
-/

namespace A282957.P13064934739068219898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A282956 n).toNat

end

end A282957.P13064934739068219898

/-! ## A282957.P16257987408877164580

`A281589(2*A282956(n))`
-/

namespace A282957.P16257987408877164580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282956 n).toNat

end

end A282957.P16257987408877164580

/-! ## A282957.P6242363609155682484

`A325401(2*A282956(n))`
-/

namespace A282957.P6242363609155682484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282956 n).toNat

end

end A282957.P6242363609155682484

/-! ## A282957.P1521824679340532978

`A281589(lcm(2, A282956(n)))`
-/

namespace A282957.P1521824679340532978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282956 n))

end

end A282957.P1521824679340532978

/-! ## A282957.P4071497181693723961

`A282987(A062399(n))`
-/

namespace A282957.P4071497181693723961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282987 (A062399 n).toNat

end

end A282957.P4071497181693723961

/-!
# A282958: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A282958, there is no canonical definition to state claims against.
-/

/-! ## A282958.P13029465805942612139

`A007088(A282960(n))`
-/

namespace A282958.P13029465805942612139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282960 n).toNat

end

end A282958.P13029465805942612139

/-! ## A282958.P6152132386266650114

`A305989(A282961(n))`
-/

namespace A282958.P6152132386266650114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282961 n).toNat

end

end A282958.P6152132386266650114

/-! ## A282958.P13631618112625610425

`A185544(2*A282960(n))`
-/

namespace A282958.P13631618112625610425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282960 n).toNat

end

end A282958.P13631618112625610425

/-! ## A282958.P17605546085187698241

`A185544(lcm(2, A282960(n)))`
-/

namespace A282958.P17605546085187698241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282960 n))

end

end A282958.P17605546085187698241

/-!
# A282959: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A282959, there is no canonical definition to state claims against.
-/

/-! ## A282959.P10221197392937009747

`A007088(A282961(n))`
-/

namespace A282959.P10221197392937009747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282961 n).toNat

end

end A282959.P10221197392937009747

/-! ## A282959.P4140983097213144923

`A305989(A282960(n))`
-/

namespace A282959.P4140983097213144923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282960 n).toNat

end

end A282959.P4140983097213144923

/-! ## A282959.P18289837558471454454

`A185544(2*A282961(n))`
-/

namespace A282959.P18289837558471454454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282961 n).toNat

end

end A282959.P18289837558471454454

/-! ## A282959.P7220525044942946717

`A185544(lcm(2, A282961(n)))`
-/

namespace A282959.P7220525044942946717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A282961 n))

end

end A282959.P7220525044942946717

/-!
# A282960: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A282960, there is no canonical definition to state claims against.
-/

/-! ## A282960.P5852632253731767841

`A057889(A282961(n))`
-/

namespace A282960.P5852632253731767841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A282961 n).toNat

end

end A282960.P5852632253731767841

/-! ## A282960.P14584711998600313452

`A281589(2*A282961(n))`
-/

namespace A282960.P14584711998600313452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282961 n).toNat

end

end A282960.P14584711998600313452

/-! ## A282960.P7459022628297735065

`A325401(2*A282961(n))`
-/

namespace A282960.P7459022628297735065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A282961 n).toNat

end

end A282960.P7459022628297735065

/-! ## A282960.P15870294218644797695

`A281589(lcm(2, A282961(n)))`
-/

namespace A282960.P15870294218644797695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A282961 n))

end

end A282960.P15870294218644797695

/-! ## A282960.P17092039348558743957

`A030101(or(1, A282961(n)))`
-/

namespace A282960.P17092039348558743957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A282961 n)).toNat

end

end A282960.P17092039348558743957

/-!
# A282961: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A282961, there is no canonical definition to state claims against.
-/

/-! ## A282961.P16665254322142659939

`A057889(A282960(n))`
-/

namespace A282961.P16665254322142659939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A282960 n).toNat

end

end A282961.P16665254322142659939

/-! ## A282961.P16035271764693764414

`A325401(A219347(n)*A282960(n))`
-/

namespace A282961.P16035271764693764414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A219347 n * A282960 n).toNat

end

end A282961.P16035271764693764414

/-! ## A282961.P15164268938808447852

`A325401(lcm(A219347(n), A282960(n)))`
-/

namespace A282961.P15164268938808447852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A219347 n) (A282960 n))

end

end A282961.P15164268938808447852

/-! ## A282961.P33903362052249190

`A030101(2*A282960(n))`
-/

namespace A282961.P33903362052249190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A282960 n).toNat

end

end A282961.P33903362052249190

/-! ## A282961.P4005885502764066370

`A281589(2*A282960(n))`
-/

namespace A282961.P4005885502764066370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A282960 n).toNat

end

end A282961.P4005885502764066370

/-!
# A282962: Number of n X n 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282962, there is no canonical definition to state claims against.
-/

/-! ## A282962.P3860216023325250508

`A282969(∑[4*n]+1)`
-/

namespace A282962.P3860216023325250508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282962.P3860216023325250508

/-! ## A282962.P15049736918074783129

`A282969(A001844(n))+A085861(n)`
-/

namespace A282962.P15049736918074783129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A001844 n).toNat + A085861 n

end

end A282962.P15049736918074783129

/-! ## A282962.P9933741309595195044

`A008327(n)*A282969(A001844(n))`
-/

namespace A282962.P9933741309595195044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008327 n * A282969 (A001844 n).toNat

end

end A282962.P9933741309595195044

/-! ## A282962.P10318732609396833572

`A282969(A001844(n))/A014963(∑[n+1])`
-/

namespace A282962.P10318732609396833572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282969 (A001844 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A282962.P10318732609396833572

/-! ## A282962.P9618355320092902343

`A014963(4*n+2)*A282969(A001844(n))`
-/

namespace A282962.P9618355320092902343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A282969 (A001844 n).toNat

end

end A282962.P9618355320092902343

/-!
# A282963: Number of nX2 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282963, there is no canonical definition to state claims against.
-/

/-! ## A282963.P5387134744732623801

`A282969(∑[n+1]+2)`
-/

namespace A282963.P5387134744732623801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282963.P5387134744732623801

/-! ## A282963.P4228179793851444660

`A282969(A167499(n)-3)%A028032(n)`
-/

namespace A282963.P4228179793851444660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282969 (A167499 n - 3).toNat) (A028032 n)

end

end A282963.P4228179793851444660

/-! ## A282963.P13352584156425371486

`A091717(n+1)*A282969(A167499(n)-3)`
-/

namespace A282963.P13352584156425371486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091717 (n + 1) * A282969 (A167499 n - 3).toNat

end

end A282963.P13352584156425371486

/-! ## A282963.P13988900706808318536

`A282969(A167499(n)-3)/A001222(A127592(n+1))`
-/

namespace A282963.P13988900706808318536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282969 (A167499 n - 3).toNat : ℚ) / (A001222 (A127592 (n + 1)).toNat : ℚ)

end

end A282963.P13988900706808318536

/-! ## A282963.P1297295300801305457

`A282969(A167499(n)-3)/A001222(A052087(n+1))`
-/

namespace A282963.P1297295300801305457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282969 (A167499 n - 3).toNat : ℚ) / (A001222 (A052087 (n + 1)).toNat : ℚ)

end

end A282963.P1297295300801305457

/-!
# A282964: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282964, there is no canonical definition to state claims against.
-/

/-! ## A282964.P12439871127904295452

`A282969(∑[n+2]+4)`
-/

namespace A282964.P12439871127904295452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282964.P12439871127904295452

/-! ## A282964.P9638912674684990139

`A054977(n)*A282969(A167614(n+1))`
-/

namespace A282964.P9638912674684990139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A282969 (A167614 (n + 1)).toNat

end

end A282964.P9638912674684990139

/-! ## A282964.P1407480826165948462

`A282969(A167614(n+1))%A001922(n)`
-/

namespace A282964.P1407480826165948462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282969 (A167614 (n + 1)).toNat) (A001922 n)

end

end A282964.P1407480826165948462

/-! ## A282964.P14389024462973263722

`or(A282969(A167614(n+1)), A316864(n))`
-/

namespace A282964.P14389024462973263722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282969 (A167614 (n + 1)).toNat) (A316864 n)

end

end A282964.P14389024462973263722

/-! ## A282964.P3262528547527204352

`record[A185018(n)*A282969(n+1)]`
-/

namespace A282964.P3262528547527204352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A282969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282964.P3262528547527204352

/-!
# A282965: Number of nX4 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282965, there is no canonical definition to state claims against.
-/

/-! ## A282965.P2965682927470185914

`A282969(A374004(n+1))`
-/

namespace A282965.P2965682927470185914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A374004 (n + 1)).toNat

end

end A282965.P2965682927470185914

/-! ## A282965.P13860227841270537528

`A282969(A141214(n)+7)`
-/

namespace A282965.P13860227841270537528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A141214 n + 7).toNat

end

end A282965.P13860227841270537528

/-! ## A282965.P10659291597445145211

`A282969(A052905(n)+9)`
-/

namespace A282965.P10659291597445145211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A052905 n + 9).toNat

end

end A282965.P10659291597445145211

/-! ## A282965.P3804978292631755442

`A282969(A055999(n)+10)`
-/

namespace A282965.P3804978292631755442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A055999 n + 10).toNat

end

end A282965.P3804978292631755442

/-! ## A282965.P18011575076048500573

`A282969(A167614(n+2)+1)`
-/

namespace A282965.P18011575076048500573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A167614 (n + 2) + 1).toNat

end

end A282965.P18011575076048500573

/-!
# A282966: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282966, there is no canonical definition to state claims against.
-/

/-! ## A282966.P10486966549962784391

`A282969(A374005(n+1))`
-/

namespace A282966.P10486966549962784391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A374005 (n + 1)).toNat

end

end A282966.P10486966549962784391

/-! ## A282966.P13852729230112422173

`A282969(A056000(n)+15)`
-/

namespace A282966.P13852729230112422173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A056000 n + 15).toNat

end

end A282966.P13852729230112422173

/-! ## A282966.P8308161943754092820

`A282969(eq[6, A131818(n+1)])`
-/

namespace A282966.P8308161943754092820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282966.P8308161943754092820

/-! ## A282966.P1643658260806843165

`A282969(Δ[A264443(n)])`
-/

namespace A282966.P1643658260806843165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (f1 (n + 1) - f1 n).toNat

end

end A282966.P1643658260806843165

/-! ## A282966.P4372367547048707673

`A282969(eq[8, A140996(n)])`
-/

namespace A282966.P4372367547048707673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282966.P4372367547048707673

/-!
# A282967: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282967, there is no canonical definition to state claims against.
-/

/-! ## A282967.P12659125097433247713

`A282969(A374007(n+1))`
-/

namespace A282967.P12659125097433247713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A374007 (n + 1)).toNat

end

end A282967.P12659125097433247713

/-! ## A282967.P2305591659113175677

`A282969(A166136(n+4))`
-/

namespace A282967.P2305591659113175677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A166136 (n + 4)).toNat

end

end A282967.P2305591659113175677

/-! ## A282967.P17669728119569544145

`A282969(eq[7, A131818(n+1)])`
-/

namespace A282967.P17669728119569544145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282967.P17669728119569544145

/-! ## A282967.P2987506605131769639

`A282969(eq[5, A193592(n)])`
-/

namespace A282967.P2987506605131769639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282967.P2987506605131769639

/-! ## A282967.P9649084976921587099

`A282969(eq[6, A200370(n+1)])`
-/

namespace A282967.P9649084976921587099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282967.P9649084976921587099

/-!
# A282968: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282968, there is no canonical definition to state claims against.
-/

/-! ## A282968.P6208712292659610019

`A282969(A374008(n+1))`
-/

namespace A282968.P6208712292659610019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A374008 (n + 1)).toNat

end

end A282968.P6208712292659610019

/-! ## A282968.P18329209880251884443

`A282969(A056119(n)+28)`
-/

namespace A282968.P18329209880251884443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A056119 n + 28).toNat

end

end A282968.P18329209880251884443

/-! ## A282968.P77070050042823836

`A282969(eq[8, A131818(n+1)])`
-/

namespace A282968.P77070050042823836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282968.P77070050042823836

/-! ## A282968.P14390516877282214368

`A282969(A055999(n+4))`
-/

namespace A282968.P14390516877282214368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (A055999 (n + 4)).toNat

end

end A282968.P14390516877282214368

/-! ## A282968.P5643544363200379605

`A282969(eq[6, A193592(n)])`
-/

namespace A282968.P5643544363200379605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282968.P5643544363200379605

/-!
# A282969: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than one of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A282969, there is no canonical definition to state claims against.
-/

/-! ## A282969.P1195879275277414933

`A345918(A323861(n+1))-A323861(n+1)`
-/

namespace A282969.P1195879275277414933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (A323861 (n + 1)).toNat - A323861 (n + 1)

end

end A282969.P1195879275277414933

/-!
# A282970: Number of partitions of n into primes of form x^2 + y^2 (A002313).

The programs for A282970, there is no canonical definition to state claims against.
-/

/-! ## A282970.P16856564458022142074

`A112222(lt[A112219(2*n+3), A112204(n+2)])`
-/

namespace A282970.P16856564458022142074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112219 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A282970.P16856564458022142074

/-! ## A282970.P14706360495834033747

`A297037(A005248(A240867(n)))+A008616(n)`
-/

namespace A282970.P14706360495834033747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A005248 (A240867 n).toNat).toNat + A008616 n

end

end A282970.P14706360495834033747

/-! ## A282970.P1892619680651947558

`A005136(2*A321431(n))`
-/

namespace A282970.P1892619680651947558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (2 * A321431 n).toNat

end

end A282970.P1892619680651947558

/-! ## A282970.P5191289962423473031

`A118458(A079974(n))`
-/

namespace A282970.P5191289962423473031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A079974 n).toNat

end

end A282970.P5191289962423473031

/-! ## A282970.P9561672430561315957

`A097795(A213364(n+2))`
-/

namespace A282970.P9561672430561315957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A213364 (n + 2)).toNat

end

end A282970.P9561672430561315957

/-!
# A282971: Number of compositions (ordered partitions) of n into primes of form x^2 + y^2 (A002313).

The programs for A282971, there is no canonical definition to state claims against.
-/

/-! ## A282971.P8296518343397463665

`or(Δ[A185284(2*n)], A206738(n+2))`
-/

namespace A282971.P8296518343397463665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A206738 (n + 2))

end

end A282971.P8296518343397463665

/-! ## A282971.P6266916847709669060

`A206738(n+2)+A083344(A024315(n+1))`
-/

namespace A282971.P6266916847709669060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206738 (n + 2) + A083344 (A024315 (n + 1)).toNat

end

end A282971.P6266916847709669060

/-! ## A282971.P5158646501036872328

`A206738(A000005(2^(n+1)))`
-/

namespace A282971.P5158646501036872328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206738 (A000005 (2 ^ (n + 1))).toNat

end

end A282971.P5158646501036872328

/-! ## A282971.P4473712407328497193

`A350387(A016742(3*(n+1)))+A206738(n+2)`
-/

namespace A282971.P4473712407328497193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (A016742 (3 * (n + 1))).toNat + A206738 (n + 2)

end

end A282971.P4473712407328497193

/-! ## A282971.P14402527630235557410

`A206738(A187829(n+1)+1)`
-/

namespace A282971.P14402527630235557410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206738 (A187829 (n + 1) + 1).toNat

end

end A282971.P14402527630235557410

/-!
# A282972: Number of ways to write n as 4*x^4 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that 79*y^2 - 220*y*z + 205*z^2 is a square.

The programs for A282972, there is no canonical definition to state claims against.
-/

/-! ## A282972.P17511457627427554705

`A256915(A015925(n+1)*A340513(n+1))`
-/

namespace A282972.P17511457627427554705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A015925 (n + 1) * A340513 (n + 1)).toNat

end

end A282972.P17511457627427554705

/-!
# A282974: Numbers k such that A011546(k-1) is a prime.

The programs for A282974, there is no canonical definition to state claims against.
-/

/-! ## A282974.P10661342333668987542

`∑[A346492(∑[n!])]`
-/

namespace A282974.P10661342333668987542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346492 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282974.P10661342333668987542

/-!
# A282976: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A282976, there is no canonical definition to state claims against.
-/

/-! ## A282976.P7601643564405465516

`A000042(n+1)%A282006(A028310(n))`
-/

namespace A282976.P7601643564405465516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282006 (A028310 n).toNat)

end

end A282976.P7601643564405465516

/-! ## A282976.P7643985855102532077

`A282007(n)+A282977(n)-A282006(n)`
-/

namespace A282976.P7643985855102532077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282007 n + (A282977 n - A282006 n)

end

end A282976.P7643985855102532077

/-! ## A282976.P12822123228979582940

`A007088(A282978(n))`
-/

namespace A282976.P12822123228979582940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282978 n).toNat

end

end A282976.P12822123228979582940

/-! ## A282976.P5460836196942631587

`A007088(A095121(n)+1-A282008(n))`
-/

namespace A282976.P5460836196942631587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282008 n)).toNat

end

end A282976.P5460836196942631587

/-! ## A282976.P2763447009114939637

`A007088(1-(A282008(n)-A095121(n)))`
-/

namespace A282976.P2763447009114939637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282008 n - A095121 n)).toNat

end

end A282976.P2763447009114939637

/-!
# A282977: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A282977, there is no canonical definition to state claims against.
-/

/-! ## A282977.P13181439124202988160

`A282006(n)+A282976(n)-A282007(n)`
-/

namespace A282977.P13181439124202988160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282006 n + (A282976 n - A282007 n)

end

end A282977.P13181439124202988160

/-! ## A282977.P14951810484880626367

`A288013(n)+A289407(n)-A282007(n)`
-/

namespace A282977.P14951810484880626367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 n + (A289407 n - A282007 n)

end

end A282977.P14951810484880626367

/-! ## A282977.P16087349648594954511

`A000042(n+1)+A000007(n)-A282007(n)`
-/

namespace A282977.P16087349648594954511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A282007 n)

end

end A282977.P16087349648594954511

/-! ## A282977.P16403181234682940538

`A000042(n+1)-A282007(n)%∑[A282006(n)]`
-/

namespace A282977.P16403181234682940538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A282007 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282977.P16403181234682940538

/-! ## A282977.P16307746326150955998

`A007088(A282979(n))`
-/

namespace A282977.P16307746326150955998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282979 n).toNat

end

end A282977.P16307746326150955998

/-!
# A282978: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A282978, there is no canonical definition to state claims against.
-/

/-! ## A282978.P8208116675907570301

`A095121(n)+1-A282008(n)`
-/

namespace A282978.P8208116675907570301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282008 n)

end

end A282978.P8208116675907570301

/-! ## A282978.P8356535857115385238

`xor(record[A324715(n+1)], A282008(n))`
-/

namespace A282978.P8356535857115385238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282008 n)

end

end A282978.P8356535857115385238

/-! ## A282978.P15335585177704340650

`A282009(n)+A282979(n)-A282008(n)`
-/

namespace A282978.P15335585177704340650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282009 n + (A282979 n - A282008 n)

end

end A282978.P15335585177704340650

/-! ## A282978.P12442436087703489598

`A127330(A000124(n))-A282008(n)`
-/

namespace A282978.P12442436087703489598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282008 n

end

end A282978.P12442436087703489598

/-! ## A282978.P1864887830638632439

`A127330(∑[A028310(n)])-A282008(n)`
-/

namespace A282978.P1864887830638632439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A282008 n

end

end A282978.P1864887830638632439

/-!
# A282979: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A282979, there is no canonical definition to state claims against.
-/

/-! ## A282979.P2114030332357007579

`and(-A282009(n), A095121(n))`
-/

namespace A282979.P2114030332357007579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A282009 n) (A095121 n)

end

end A282979.P2114030332357007579

/-! ## A282979.P8749086801917576138

`xor(record[A324715(n+1)], A282009(n))`
-/

namespace A282979.P8749086801917576138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A282009 n)

end

end A282979.P8749086801917576138

/-! ## A282979.P5836051487633683924

`A282008(n)+A282978(n)-A282009(n)`
-/

namespace A282979.P5836051487633683924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282008 n + (A282978 n - A282009 n)

end

end A282979.P5836051487633683924

/-! ## A282979.P12084196936953281982

`A288506(n)+A288906(n)-A282009(n)`
-/

namespace A282979.P12084196936953281982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A282009 n)

end

end A282979.P12084196936953281982

/-! ## A282979.P4505235694367432949

`A127330(A000124(n))-A282009(n)`
-/

namespace A282979.P4505235694367432949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282009 n

end

end A282979.P4505235694367432949

/-! ## A282979.P8145694793091376037

`A127330(∑[A028310(n)])-A282009(n)`
-/

namespace A282979.P8145694793091376037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A282009 n

end

end A282979.P8145694793091376037

/-!
# A282980: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A282980, there is no canonical definition to state claims against.
-/

/-! ## A282980.P14231741006762735762

`A007088(A282982(n))`
-/

namespace A282980.P14231741006762735762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282982 n).toNat

end

end A282980.P14231741006762735762

/-! ## A282980.P16170354585363666304

`A007088(or(1, A126646(n)-A279474(n)))`
-/

namespace A282980.P16170354585363666304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A279474 n)).toNat

end

end A282980.P16170354585363666304

/-! ## A282980.P211611741717348523

`A007088(A279986(n)+A282952(n)-A279474(n))`
-/

namespace A282980.P211611741717348523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279986 n + (A282952 n - A279474 n)).toNat

end

end A282980.P211611741717348523

/-! ## A282980.P8314967346114895597

`A007088(A279986(n)-(A279474(n)-A282952(n)))`
-/

namespace A282980.P8314967346114895597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279986 n - (A279474 n - A282952 n)).toNat

end

end A282980.P8314967346114895597

/-! ## A282980.P3638964711032107056

`A007088(A036987(n²)+A126646(n)-A279474(n))`
-/

namespace A282980.P3638964711032107056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A036987 (n ^ 2) + (A126646 n - A279474 n)).toNat

end

end A282980.P3638964711032107056

/-!
# A282981: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A282981, there is no canonical definition to state claims against.
-/

/-! ## A282981.P13369641695332043629

`A007088(A282983(n))`
-/

namespace A282981.P13369641695332043629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282983 n).toNat

end

end A282981.P13369641695332043629

/-! ## A282981.P8371359213738074681

`A185544(2*A282983(n))`
-/

namespace A282981.P8371359213738074681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282983 n).toNat

end

end A282981.P8371359213738074681

/-!
# A282982: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A282982, there is no canonical definition to state claims against.
-/

/-! ## A282982.P17144792177021603840

`or(1, A126646(n)-A279474(n))`
-/

namespace A282982.P17144792177021603840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A279474 n)

end

end A282982.P17144792177021603840

/-! ## A282982.P4555614483828197153

`A279986(n)+A282952(n)-A279474(n)`
-/

namespace A282982.P4555614483828197153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279986 n + (A282952 n - A279474 n)

end

end A282982.P4555614483828197153

/-! ## A282982.P10748021925201602156

`A000007(A003415(n))+A126646(n)-A279474(n)`
-/

namespace A282982.P10748021925201602156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A003415 n).toNat + (A126646 n - A279474 n)

end

end A282982.P10748021925201602156

/-! ## A282982.P4582568505865880157

`A036987(A053644(n))+A126646(n)-A279474(n)`
-/

namespace A282982.P4582568505865880157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A053644 n).toNat + (A126646 n - A279474 n)

end

end A282982.P4582568505865880157

/-! ## A282982.P17616639247186758660

`A000035(A000010(n+1))+A126646(n)-A279474(n)`
-/

namespace A282982.P17616639247186758660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000010 (n + 1)).toNat + (A126646 n - A279474 n)

end

end A282982.P17616639247186758660

/-! ## A282982.P16104725345317474461

`A036987(n²)+A126646(n)-A279474(n)`
-/

namespace A282982.P16104725345317474461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n ^ 2) + (A126646 n - A279474 n)

end

end A282982.P16104725345317474461

/-!
# A282984: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A282984, there is no canonical definition to state claims against.
-/

/-! ## A282984.P6308603627758708585

`A007088(A282986(n))`
-/

namespace A282984.P6308603627758708585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282986 n).toNat

end

end A282984.P6308603627758708585

/-! ## A282984.P9313940117086048476

`A185544(2*A282986(n))`
-/

namespace A282984.P9313940117086048476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282986 n).toNat

end

end A282984.P9313940117086048476

/-! ## A282984.P9762928478056656280

`A185544(A282986(n)+A282986(n))`
-/

namespace A282984.P9762928478056656280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282986 n + A282986 n).toNat

end

end A282984.P9762928478056656280

/-! ## A282984.P12216129765061998251

`A007088(or(A185284((5-n)²), A282956(n)))`
-/

namespace A282984.P12216129765061998251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A282956 n)).toNat

end

end A282984.P12216129765061998251

/-! ## A282984.P11650478256971172056

`A185544(2*or(A185284((5-n)²), A282956(n)))`
-/

namespace A282984.P11650478256971172056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A282956 n)).toNat

end

end A282984.P11650478256971172056

/-!
# A282985: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A282985, there is no canonical definition to state claims against.
-/

/-! ## A282985.P14338165887946506190

`A007088(A282987(n))`
-/

namespace A282985.P14338165887946506190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282987 n).toNat

end

end A282985.P14338165887946506190

/-! ## A282985.P8483144415769988248

`A305989(A282986(n)/A031242(n+1))`
-/

namespace A282985.P8483144415769988248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A031242 (n + 1) : ℚ))).toNat

end

end A282985.P8483144415769988248

/-! ## A282985.P5857885735379401498

`A305989(A282986(n)/A184240(n+1))`
-/

namespace A282985.P5857885735379401498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A184240 (n + 1) : ℚ))).toNat

end

end A282985.P5857885735379401498

/-! ## A282985.P2818025178043554189

`A305989(A282986(n)/A337144(n+1))`
-/

namespace A282985.P2818025178043554189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A337144 (n + 1) : ℚ))).toNat

end

end A282985.P2818025178043554189

/-! ## A282985.P16494551719333283528

`A305989(A282986(n))`
-/

namespace A282985.P16494551719333283528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A282986 n).toNat

end

end A282985.P16494551719333283528

/-!
# A282986: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A282986, there is no canonical definition to state claims against.
-/

/-! ## A282986.P4147539993041597991

`or(A185284((5-n)²), A282956(n))`
-/

namespace A282986.P4147539993041597991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A282956 n)

end

end A282986.P4147539993041597991

/-! ## A282986.P14295949580008617295

`A282956(n)+A217155(A220681(n+1))`
-/

namespace A282986.P14295949580008617295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n + A217155 (A220681 (n + 1)).toNat

end

end A282986.P14295949580008617295

/-! ## A282986.P12630682514871214637

`A282956(n)+A217155(A257894(n+1))`
-/

namespace A282986.P12630682514871214637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n + A217155 (A257894 (n + 1)).toNat

end

end A282986.P12630682514871214637

/-! ## A282986.P9956189404560690495

`A282956(n)+A154439(A185284(3*(n+1)))`
-/

namespace A282986.P9956189404560690495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282956 n + A154439 (A185284 (3 * (n + 1))).toNat

end

end A282986.P9956189404560690495

/-!
# A282987: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A282987, there is no canonical definition to state claims against.
-/

/-! ## A282987.P15202230678920923865

`A030101(A000265(A282986(n)))`
-/

namespace A282987.P15202230678920923865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000265 (A282986 n).toNat).toNat

end

end A282987.P15202230678920923865

/-! ## A282987.P1150487909071284607

`A030101(A282986(n)/A031242(n+1))`
-/

namespace A282987.P1150487909071284607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A031242 (n + 1) : ℚ))).toNat

end

end A282987.P1150487909071284607

/-! ## A282987.P3753943499085373457

`A030101(A282986(n)/A184240(n+1))`
-/

namespace A282987.P3753943499085373457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A184240 (n + 1) : ℚ))).toNat

end

end A282987.P3753943499085373457

/-! ## A282987.P15923863492074707415

`A030101(A282986(n)/A337144(n+1))`
-/

namespace A282987.P15923863492074707415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A282986 n : ℚ) / (A337144 (n + 1) : ℚ))).toNat

end

end A282987.P15923863492074707415

/-! ## A282987.P16284413168708591734

`A030101(A282986(n))`
-/

namespace A282987.P16284413168708591734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A282986 n).toNat

end

end A282987.P16284413168708591734

/-!
# A282988: Triangle of partitions of an n-set into boxes of size >= m.

The programs for A282988, there is no canonical definition to state claims against.
-/

/-! ## A282988.P1367858286686648628

`A293024(A245300(n)+A111650(n+1))`
-/

namespace A282988.P1367858286686648628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293024 (A245300 n + A111650 (n + 1)).toNat

end

end A282988.P1367858286686648628

/-! ## A282988.P16604489609938727735

`A182931(A245300(n+1))`
-/

namespace A282988.P16604489609938727735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182931 (A245300 (n + 1)).toNat

end

end A282988.P16604489609938727735

/-! ## A282988.P15757460205742896143

`A163351(A281446(n))+A143983(n+1)`
-/

namespace A282988.P15757460205742896143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (A281446 n).toNat + A143983 (n + 1)

end

end A282988.P15757460205742896143

/-! ## A282988.P4404977107436676938

`A163351(A281446(n))+A000110(A210992(n))`
-/

namespace A282988.P4404977107436676938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (A281446 n).toNat + A000110 (A210992 n).toNat

end

end A282988.P4404977107436676938

/-! ## A282988.P13894284947304154160

`A143983(n+1)^A084938(n)!`
-/

namespace A282988.P13894284947304154160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143983 (n + 1) ^ Nat.factorial (A084938 n).toNat

end

end A282988.P13894284947304154160

/-!
# A282990: Number of nX2 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282990, the canonical program `A282990.P4092066337529107356` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282990 has offset 1).

The definition of A282990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282990.P7791351246157802926

`ogf((4+3x-x^2-x^3)/(1-2x-3x^2+x^4))`
-/

namespace A282990.P7791351246157802926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -1, -1] [1, -2, -3, 0, 1] n

end

end A282990.P7791351246157802926

namespace A282990

/-- `ogf((4+3x-x^2-x^3)/(1-2x-3x^2+x^4))` -/
def P7791351246157802926.Spec : Prop :=
  ∀ n, P7791351246157802926.a n = A282990 (n + 1)

end A282990

/-! ## A282990.P4092066337529107356

`2*a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=4, a(1)=11, a(2)=33, a(3)=98`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282990

/-- `2*a(n-1)+3*a(n-2)-a(n-4)` -/
def P4092066337529107356.Spec : Prop :=
  ∀ n, P4092066337529107356.a n = A282990 (n + 1)

theorem P4092066337529107356.correct : P4092066337529107356.Spec := by
  intro n
  simp only [A282990, Nat.add_sub_cancel]

end A282990

/-! ## A282990.P17634029673624463365

`Δ[A201967(n+1)]-A201967(n)`
-/

namespace A282990.P17634029673624463365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A201967 n

end

end A282990.P17634029673624463365

namespace A282990

/-- `Δ[A201967(n+1)]-A201967(n)` -/
def P17634029673624463365.Spec : Prop :=
  ∀ n, P17634029673624463365.a n = A282990 (n + 1)

end A282990

/-! ## A282990.P5096263977338074811

`A295275(∑[n+1]+2)`
-/

namespace A282990.P5096263977338074811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282990.P5096263977338074811

namespace A282990

/-- `A295275(∑[n+1]+2)` -/
def P5096263977338074811.Spec : Prop :=
  ∀ n, P5096263977338074811.a n = A282990 (n + 1)

end A282990

/-! ## A282990.P8915466884184560118

`A282996(∑[n+1]+2)`
-/

namespace A282990.P8915466884184560118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A282990.P8915466884184560118

namespace A282990

/-- `A282996(∑[n+1]+2)` -/
def P8915466884184560118.Spec : Prop :=
  ∀ n, P8915466884184560118.a n = A282990 (n + 1)

end A282990

/-!
# A282991: Number of nX3 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282991, there is no canonical definition to state claims against.
-/

/-! ## A282991.P16100392246753393725

`A282996(∑[n+2]+4)`
-/

namespace A282991.P16100392246753393725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282991.P16100392246753393725

/-! ## A282991.P16346598959116200270

`or(1, A282996(A167614(n+1)))`
-/

namespace A282991.P16346598959116200270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282996 (A167614 (n + 1)).toNat)

end

end A282991.P16346598959116200270

/-! ## A282991.P6709896016662796860

`A282996(A167614(n+1))+A264668(n)`
-/

namespace A282991.P6709896016662796860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A167614 (n + 1)).toNat + A264668 n

end

end A282991.P6709896016662796860

/-! ## A282991.P10794736225525517285

`lcm(A158388(n), A282996(A167614(n+1)))`
-/

namespace A282991.P10794736225525517285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A282996 (A167614 (n + 1)).toNat)

end

end A282991.P10794736225525517285

/-! ## A282991.P2626027253683287767

`A282996(A167614(n+1))%A091628(n+1)`
-/

namespace A282991.P2626027253683287767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282996 (A167614 (n + 1)).toNat) (A091628 (n + 1))

end

end A282991.P2626027253683287767

/-!
# A282992: Number of n X 4 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282992, there is no canonical definition to state claims against.
-/

/-! ## A282992.P7488918669111582243

`A282996(A374004(n+1))`
-/

namespace A282992.P7488918669111582243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A374004 (n + 1)).toNat

end

end A282992.P7488918669111582243

/-! ## A282992.P13716254496600003277

`A282996(A052905(n)+9)`
-/

namespace A282992.P13716254496600003277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A052905 n + 9).toNat

end

end A282992.P13716254496600003277

/-! ## A282992.P15831904177934358277

`A282996(A055999(n)+10)`
-/

namespace A282992.P15831904177934358277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A055999 n + 10).toNat

end

end A282992.P15831904177934358277

/-! ## A282992.P12431336781809784641

`A282996(A167614(n+2)+1)`
-/

namespace A282992.P12431336781809784641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A167614 (n + 2) + 1).toNat

end

end A282992.P12431336781809784641

/-! ## A282992.P8352728348583792337

`A282996(A112355(n+1)+4)`
-/

namespace A282992.P8352728348583792337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A112355 (n + 1) + 4).toNat

end

end A282992.P8352728348583792337

/-!
# A282993: Number of nX5 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282993, there is no canonical definition to state claims against.
-/

/-! ## A282993.P16837517783458409848

`A282996(A374005(n+1))`
-/

namespace A282993.P16837517783458409848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A374005 (n + 1)).toNat

end

end A282993.P16837517783458409848

/-! ## A282993.P12833636802500266252

`A282996(A155212(n)+13)`
-/

namespace A282993.P12833636802500266252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A155212 n + 13).toNat

end

end A282993.P12833636802500266252

/-! ## A282993.P5072672942111793002

`A282996(A056000(n)+15)`
-/

namespace A282993.P5072672942111793002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A056000 n + 15).toNat

end

end A282993.P5072672942111793002

/-! ## A282993.P6422212776530266948

`A282996(eq[7, A066657(n)])`
-/

namespace A282993.P6422212776530266948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282993.P6422212776530266948

/-! ## A282993.P16482119955363027957

`A282996(eq[6, A131818(n+1)])`
-/

namespace A282993.P16482119955363027957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282993.P16482119955363027957

/-!
# A282994: Number of nX6 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282994, there is no canonical definition to state claims against.
-/

/-! ## A282994.P3468118906673637534

`A282996(A374007(n+1))`
-/

namespace A282994.P3468118906673637534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A374007 (n + 1)).toNat

end

end A282994.P3468118906673637534

/-! ## A282994.P7792451503908806580

`A282996(eq[7, A131818(n+1)])`
-/

namespace A282994.P7792451503908806580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282994.P7792451503908806580

/-! ## A282994.P6325836854962402428

`A282996(Δ[A023545(n+1)]+10)`
-/

namespace A282994.P6325836854962402428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (f1 (n + 1) - f1 n + 10).toNat

end

end A282994.P6325836854962402428

/-! ## A282994.P6637826568242420179

`A282996(A000096(n+5)+1-n)`
-/

namespace A282994.P6637826568242420179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A000096 (n + 5) + (1 - (n : ℤ))).toNat

end

end A282994.P6637826568242420179

/-! ## A282994.P10247327422462798238

`A282996(A052905(n+3))`
-/

namespace A282994.P10247327422462798238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A052905 (n + 3)).toNat

end

end A282994.P10247327422462798238

/-!
# A282995: Number of nX7 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282995, there is no canonical definition to state claims against.
-/

/-! ## A282995.P8674914274416488681

`A282996(A374008(n+1))`
-/

namespace A282995.P8674914274416488681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A374008 (n + 1)).toNat

end

end A282995.P8674914274416488681

/-! ## A282995.P7500155572207220838

`A282996(A056119(n)+28)`
-/

namespace A282995.P7500155572207220838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (A056119 n + 28).toNat

end

end A282995.P7500155572207220838

/-! ## A282995.P3230587691515447584

`A282996(eq[8, A131818(n+1)])`
-/

namespace A282995.P3230587691515447584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282995.P3230587691515447584

/-! ## A282995.P15085396495817216254

`A282996(eq[4, A219347(n)])`
-/

namespace A282995.P15085396495817216254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282995.P15085396495817216254

/-! ## A282995.P17324018151112066687

`A282996(eq[6, A193592(n)])`
-/

namespace A282995.P17324018151112066687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282995.P17324018151112066687

/-!
# A282996: T(n,k) is the number of n X k 0..1 arrays with no 1 equal to more than one of its horizontal and vertical neighbors.

The programs for A282996, there is no canonical definition to state claims against.
-/

/-! ## A282996.P5908605068033798968

`A295275(n+1)+A016389(A022166(n))`
-/

namespace A282996.P5908605068033798968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (n + 1) + A016389 (A022166 n).toNat

end

end A282996.P5908605068033798968

/-! ## A282996.P16544574317317684515

`A295275(n+1)+A016389(A027336(n))`
-/

namespace A282996.P16544574317317684515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (n + 1) + A016389 (A027336 n).toNat

end

end A282996.P16544574317317684515

/-! ## A282996.P2206382978703692955

`A295275(n+1)-A037824(A022173(n))`
-/

namespace A282996.P2206382978703692955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (n + 1) - A037824 (A022173 n).toNat

end

end A282996.P2206382978703692955

/-! ## A282996.P3161861779670950158

`A295275(n+1)-A059778(A022171(n))`
-/

namespace A282996.P3161861779670950158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (n + 1) - A059778 (A022171 n).toNat

end

end A282996.P3161861779670950158

/-! ## A282996.P223330849916030618

`A295275(n+1)-A102683(A000579(n))`
-/

namespace A282996.P223330849916030618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295275 (n + 1) - A102683 (A000579 n).toNat

end

end A282996.P223330849916030618

/-!
# A282997: Primes of the form (p^2 + q^2)/2 such that |q^2 - p^2| is square, where p and q are prime.

The programs for A282997, there is no canonical definition to state claims against.
-/

/-! ## A282997.P8709567222722875440

`A128780(n+1)^4+(A128780(n+1)+1)^4`
-/

namespace A282997.P8709567222722875440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128780 (n + 1) ^ 4 + (A128780 (n + 1) + 1) ^ 4

end

end A282997.P8709567222722875440

/-! ## A282997.P1173023668268333062

`A008514(A128780(n+1))`
-/

namespace A282997.P1173023668268333062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 (A128780 (n + 1)).toNat

end

end A282997.P1173023668268333062

