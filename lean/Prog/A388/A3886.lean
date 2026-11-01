import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C006
import Seq.B000.C020
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A388622: Decimal expansion of 4 - 2*sqrt(2).

The programs for A388622, there is no canonical definition to state claims against.
-/

/-! ## A388622.P9258833385834362409

`A157259(A028310(n))`
-/

namespace A388622.P9258833385834362409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157259 ((A028310 n).toNat + 1)

end

end A388622.P9258833385834362409

/-! ## A388622.P14267147550000250249

`A157259(A000007(n)+n)`
-/

namespace A388622.P14267147550000250249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157259 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A388622.P14267147550000250249

/-! ## A388622.P13290305714342696444

`A157259(gcd(n, A008574(n)))`
-/

namespace A388622.P13290305714342696444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157259 (Int.gcd (n : ℤ) (A008574 n) + 1)

end

end A388622.P13290305714342696444

/-! ## A388622.P16066471606697887755

`A157259(n)*a(A000038(n))` with `a(0)=1`
-/

namespace A388622.P16066471606697887755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157259 (n + 1) * a (A000038 n).toNat

end

end A388622.P16066471606697887755

/-!
# A388650: Numbers k such that psi(k) = phi(k) + pi(k).

The programs for A388650, there is no canonical definition to state claims against.
-/

/-! ## A388650.P587053790443801644

`A067788(comp[A004320(n)])`
-/

namespace A388650.P587053790443801644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A388650.P587053790443801644

/-! ## A388650.P5255425286139026588

`A067788(comp[Δ[A005046(n)]])`
-/

namespace A388650.P5255425286139026588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A388650.P5255425286139026588

/-! ## A388650.P7171904095953189840

`A067788(comp[A073980(n+1)])`
-/

namespace A388650.P7171904095953189840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073980 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A388650.P7171904095953189840

/-! ## A388650.P2996431373853996724

`record[A067788(A338900(n+4))]`
-/

namespace A388650.P2996431373853996724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (A338900 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388650.P2996431373853996724

/-! ## A388650.P16126515196983021567

`A067788(A053230(n+1)+n)`
-/

namespace A388650.P16126515196983021567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (A053230 (n + 1) + (n : ℤ)).toNat

end

end A388650.P16126515196983021567

/-!
# A388653: Numbers k >= 0 such that the interval [A000217(k), A000217(k + 1)] contains at least one Fibonacci number (A000045).

The programs for A388653, there is no canonical definition to state claims against.
-/

/-! ## A388653.P16730294829475380760

`record[row(A104763(n+1)-A156241(n+1))]`
-/

namespace A388653.P16730294829475380760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A104763 (n + 1) - A156241 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388653.P16730294829475380760

/-! ## A388653.P9788731801766538673

`lt[A256664(A000217(n)), A004525(3*n+2)]`
-/

namespace A388653.P9788731801766538673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388653.P9788731801766538673

/-! ## A388653.P13327293701406033903

`lt[A256664(A000217(n)), A026468(n+3)]`
-/

namespace A388653.P13327293701406033903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026468 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388653.P13327293701406033903

/-! ## A388653.P7056790397958358881

`lt[A393996(n), A007318(A367907(3*n+4))]`
-/

namespace A388653.P7056790397958358881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A367907 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A388653.P7056790397958358881

/-!
# A388654: Elements of an interval of natural numbers whose product is divisible by the square of the largest prime factor.

The programs for A388654, there is no canonical definition to state claims against.
-/

/-! ## A388654.P18105272938471532931

`∪[A070003(n+1), A387054(n+1)]`
-/

namespace A388654.P18105272938471532931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388654.P18105272938471532931

/-! ## A388654.P4665770306481255072

`∪[A070003(n+1), A389100(n+1)]`
-/

namespace A388654.P4665770306481255072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388654.P4665770306481255072

/-! ## A388654.P14062354146398091998

`lt[A290735(n), A057521(n+1)]+1`
-/

namespace A388654.P14062354146398091998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388654.P14062354146398091998

/-! ## A388654.P17092618425698355230

`lt[A367580(n+1), A057521(n+1)]+1`
-/

namespace A388654.P17092618425698355230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388654.P17092618425698355230

/-! ## A388654.P4737036915371049877

`∩[A010434(n+1), A225353(n+1)]`
-/

namespace A388654.P4737036915371049877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388654.P4737036915371049877

/-!
# A388655: Continued fraction expansion of 6*Sum_{k>=0} 12^(-2^k).

The programs for A388655, there is no canonical definition to state claims against.
-/

/-! ## A388655.P11607203364667839723

`A387398(n)%A115291(n)`
-/

namespace A388655.P11607203364667839723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387398 n) (A115291 n)

end

end A388655.P11607203364667839723

/-! ## A388655.P14365274251780159147

`and(A181404(n+1), A387398(n))`
-/

namespace A388655.P14365274251780159147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181404 (n + 1)) (A387398 n)

end

end A388655.P14365274251780159147

/-! ## A388655.P8015216083521129461

`and(A186684(n+1), A387398(n))`
-/

namespace A388655.P8015216083521129461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186684 (n + 1)) (A387398 n)

end

end A388655.P8015216083521129461

/-! ## A388655.P10408041601331390013

`and(A387387(A071786(n+1)), A387398(n))`
-/

namespace A388655.P10408041601331390013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387387 (A071786 (n + 1)).toNat) (A387398 n)

end

end A388655.P10408041601331390013

/-!
# A388656: Greatest prime factor of the pair of psi-amicable numbers.

The programs for A388656, there is no canonical definition to state claims against.
-/

/-! ## A388656.P14797083175579184444

`A006530(A323330(n+1))`
-/

namespace A388656.P14797083175579184444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323330 (n + 1)).toNat

end

end A388656.P14797083175579184444

/-! ## A388656.P3191407376390193483

`A300518(lcm(2, A323330(n+1)))`
-/

namespace A388656.P3191407376390193483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (Int.lcm 2 (A323330 (n + 1)))

end

end A388656.P3191407376390193483

/-! ## A388656.P16780511836757995373

`A300518(A006466(n)*A323330(n+1))`
-/

namespace A388656.P16780511836757995373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (A006466 n * A323330 (n + 1)).toNat

end

end A388656.P16780511836757995373

/-! ## A388656.P5814429941558439639

`A300518(A323330(n+1))%A357272(n)`
-/

namespace A388656.P5814429941558439639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300518 (A323330 (n + 1)).toNat) (A357272 n)

end

end A388656.P5814429941558439639

/-! ## A388656.P97832285334343940

`A300518(A387641(n+1)-A323329(n+1))`
-/

namespace A388656.P97832285334343940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (A387641 (n + 1) - A323329 (n + 1)).toNat

end

end A388656.P97832285334343940

/-!
# A388657: a(n) is the greatest prime factor of prime(n)^prime(n) + 1.

The programs for A388657, there is no canonical definition to state claims against.
-/

/-! ## A388657.P4242598789145359008

`A007571(A000040(n+1))`
-/

namespace A388657.P4242598789145359008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007571 (A000040 (n + 1)).toNat

end

end A388657.P4242598789145359008

/-! ## A388657.P4907585082197069535

`A240554(A079704(n+1))`
-/

namespace A388657.P4907585082197069535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A079704 (n + 1)).toNat

end

end A388657.P4907585082197069535

/-! ## A388657.P18085437232936834790

`record[A125136(n+1)]`
-/

namespace A388657.P18085437232936834790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388657.P18085437232936834790

