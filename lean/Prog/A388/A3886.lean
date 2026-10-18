import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B001.C001
import Seq.B002.C001
import Seq.B003.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C025

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

/-! ## A388622.P10677445980647561060

`9-A090488(n^A043531(and(1, a(n-1))+1))` with `a(0)=1`
-/

namespace A388622.P10677445980647561060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 - A090488 ((SequenceMachineLib.roundAway ((n : ℚ) ^ (A043531 (Int.land 1 (a (n - 1)) + 1).toNat : ℤ))).toNat + 1)

end

end A388622.P10677445980647561060

/-!
# A388650: Numbers k such that psi(k) = phi(k) + pi(k).

The programs for A388650, there is no canonical definition to state claims against.
-/

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

/-! ## A388650.P11914960508963695925

`A067788(A157928(n)+1+n)`
-/

namespace A388650.P11914960508963695925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (A157928 n + 1 + (n : ℤ)).toNat

end

end A388650.P11914960508963695925

/-! ## A388650.P14463425196350471468

`A067788(comp[A066080(2*n+1)]+1)`
-/

namespace A388650.P14463425196350471468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066080 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A388650.P14463425196350471468

/-! ## A388650.P16389426093900726883

`record[A067788(n+1)%A356815(2*n+1)]`
-/

namespace A388650.P16389426093900726883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067788 (n + 1)) (A356815 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388650.P16389426093900726883

/-! ## A388650.P14000233546173209226

`A067788(lt[A091203(n+2), A076203(n+1)])`
-/

namespace A388650.P14000233546173209226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067788 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A388650.P14000233546173209226

/-!
# A388653: Numbers k >= 0 such that the interval [A000217(k), A000217(k + 1)] contains at least one Fibonacci number (A000045).

The programs for A388653, there is no canonical definition to state claims against.
-/

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

/-! ## A388654.P15087511511799909899

`∩[A010434(n+1), A299117(n+1)]`
-/

namespace A388654.P15087511511799909899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388654.P15087511511799909899

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

