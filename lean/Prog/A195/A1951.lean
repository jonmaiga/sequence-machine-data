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
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A195100: Numbers n such that there are no primes between (n-1)*sqrt(n-1) and n*sqrt(n).

The programs for A195100, there is no canonical definition to state claims against.
-/

/-! ## A195100.P7374787859843692273

`∪[A144140(n+1)+1, A144126(n)]`
-/

namespace A195100.P7374787859843692273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144140 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144126 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195100.P7374787859843692273

/-! ## A195100.P857017666033059717

`∪[A144140(n+1)+1, A144124(n)²]`
-/

namespace A195100.P857017666033059717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144140 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144124 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195100.P857017666033059717

/-! ## A195100.P11681654621445004570

`∪[A144124(3*n), A144140(n+1)+1]`
-/

namespace A195100.P11681654621445004570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144124 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144140 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195100.P11681654621445004570

/-!
# A195101: Solid numbers. Numbers m such that A005245(m) < A005245(k) + A005245(m-k) for 1<= k < m.

The programs for A195101, there is no canonical definition to state claims against.
-/

/-! ## A195101.P13719596271558723895

`record[A308048(n+11)-A308048(A002033(n+11))]`
-/

namespace A195101.P13719596271558723895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308048 (n + 11) - A308048 (A002033 (n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195101.P13719596271558723895

/-! ## A195101.P104868133461318874

`eq[A055671(n), A238469(A233819(n+1))]`
-/

namespace A195101.P104868133461318874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238469 (A233819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195101.P104868133461318874

/-! ## A195101.P16582407977665733208

`lt[A049604(A240491(2*n+1)), A240491(n)]`
-/

namespace A195101.P16582407977665733208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (A240491 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195101.P16582407977665733208

/-! ## A195101.P12819128584571552560

`A018252(lt[A337330(n), A333919(3*(n+1))])`
-/

namespace A195101.P12819128584571552560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337330 (n + 25)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333919 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195101.P12819128584571552560

/-!
# A195106: Numbers with largest and smallest prime factors differing by 4.

The programs for A195106, there is no canonical definition to state claims against.
-/

/-! ## A195106.P187495066890012152

`∪[A143203(n+1), A147576(n+1)]`
-/

namespace A195106.P187495066890012152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195106.P187495066890012152

/-! ## A195106.P16695597411871234086

`eq[4, A178921(A093178(n))]`
-/

namespace A195106.P16695597411871234086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178921 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195106.P16695597411871234086

/-! ## A195106.P15273725102799009141

`eq[4, A046665(n+1)]+1`
-/

namespace A195106.P15273725102799009141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195106.P15273725102799009141

/-! ## A195106.P13543380935572987799

`eq[4, A046665(A028310(n))]`
-/

namespace A195106.P13543380935572987799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195106.P13543380935572987799

/-! ## A195106.P538677468288419495

`A004442(eq[4, A046665(n+1)])`
-/

namespace A195106.P538677468288419495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195106.P538677468288419495

/-!
# A195107: Fractalization of the fractal sequence A004736. Interspersion fractally induced by A004736.

The programs for A195107, there is no canonical definition to state claims against.
-/

/-! ## A195107.P8280216392304758814

`A195109(n+1)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A195107.P8280216392304758814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A195107.P8280216392304758814

/-! ## A195107.P3759244857865485410

`A002260(A195109(n+1))`
-/

namespace A195107.P3759244857865485410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195109 (n + 1)).toNat

end

end A195107.P3759244857865485410

/-! ## A195107.P12391422758613511485

`A195109(n+1)-A057944(n)`
-/

namespace A195107.P12391422758613511485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) - A057944 n

end

end A195107.P12391422758613511485

/-! ## A195107.P9972637424223498842

`A002262(A195109(n+1)-1)+1`
-/

namespace A195107.P9972637424223498842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195109 (n + 1) - 1).toNat + 1

end

end A195107.P9972637424223498842

/-! ## A195107.P12089144598741528254

`A131818(A195109(n+1)+1)-1`
-/

namespace A195107.P12089144598741528254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195109 (n + 1) + 1).toNat - 1

end

end A195107.P12089144598741528254

/-! ## A195107.P7197072133486861164

`A195109(n+1)+n-A061885(n)`
-/

namespace A195107.P7197072133486861164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) + ((n : ℤ) - A061885 n)

end

end A195107.P7197072133486861164

/-! ## A195107.P8855868524662306865

`A195109(n+1)-A000217(∑[char[∑[n+1]]])`
-/

namespace A195107.P8855868524662306865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195107.P8855868524662306865

/-! ## A195107.P8881220030460957815

`A004739(A195109(n+1)+A057944(n))`
-/

namespace A195107.P8881220030460957815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A195109 (n + 1) + A057944 n).toNat

end

end A195107.P8881220030460957815

/-! ## A195107.P4365115642360462558

`A002262(A195109(n+1)+A002024(n+1))`
-/

namespace A195107.P4365115642360462558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195109 (n + 1) + A002024 (n + 1)).toNat

end

end A195107.P4365115642360462558

/-! ## A195107.P4526002612034086469

`A195109(n+1)+A195110(n+1)-A195112(n+1)`
-/

namespace A195107.P4526002612034086469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (n + 1) + (A195110 (n + 1) - A195112 (n + 1))

end

end A195107.P4526002612034086469

/-!
# A195108: Interspersion fractally induced by A004736.

The programs for A195108, there is no canonical definition to state claims against.
-/

/-! ## A195108.P10884414933218057497

`A178798(A007599(n)²)+A054077(n+1)`
-/

namespace A195108.P10884414933218057497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A007599 n ^ 2).toNat + A054077 (n + 1)

end

end A195108.P10884414933218057497

/-! ## A195108.P2970117949037441711

`A194984(A091536(n+2)+A066182(n+1))`
-/

namespace A195108.P2970117949037441711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194984 (A091536 (n + 2) + A066182 (n + 1)).toNat

end

end A195108.P2970117949037441711

/-! ## A195108.P10654937616995988525

`A194984(A008835(n+1)*A066182(n+1))`
-/

namespace A195108.P10654937616995988525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194984 (A008835 (n + 1) * A066182 (n + 1)).toNat

end

end A195108.P10654937616995988525

/-! ## A195108.P5023549512074461298

`A194988(A008835(n+1)*A066182(n+1))`
-/

namespace A195108.P5023549512074461298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194988 (A008835 (n + 1) * A066182 (n + 1)).toNat

end

end A195108.P5023549512074461298

/-! ## A195108.P16085154220500105787

`A194984(A066182(n+1)^A008835(n+1))`
-/

namespace A195108.P16085154220500105787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194984 (SequenceMachineLib.roundAway ((A066182 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A195108.P16085154220500105787

/-!
# A195109: Inverse permutation of A195108; every positive integer occurs exactly once.

The programs for A195109, there is no canonical definition to state claims against.
-/

/-! ## A195109.P5294466435145078928

`A195107(n+1)+A057944(n)`
-/

namespace A195109.P5294466435145078928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + A057944 n

end

end A195109.P5294466435145078928

/-! ## A195109.P10698016717086226701

`A195107(n+1)+n-A002262(n)`
-/

namespace A195109.P10698016717086226701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195109.P10698016717086226701

/-! ## A195109.P5965066528569597898

`A195107(n+1)+A061885(n)-n`
-/

namespace A195109.P5965066528569597898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + (A061885 n - (n : ℤ))

end

end A195109.P5965066528569597898

/-! ## A195109.P12745614372460938263

`A195107(n+1)+n+1-A002260(n+1)`
-/

namespace A195109.P12745614372460938263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195109.P12745614372460938263

/-! ## A195109.P285843023190124273

`A004201(n+1)+A195107(n+1)-(n+1)`
-/

namespace A195109.P285843023190124273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) + (A195107 (n + 1) - (n + 1 : ℤ))

end

end A195109.P285843023190124273

/-! ## A195109.P12497571041249837488

`A195107(n+1)+A000217(A003056(n))`
-/

namespace A195109.P12497571041249837488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + A000217 (A003056 n).toNat

end

end A195109.P12497571041249837488

/-! ## A195109.P10674103287978873980

`A195107(n+1)+A001971(A131507(n))`
-/

namespace A195109.P10674103287978873980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + A001971 (A131507 n).toNat

end

end A195109.P10674103287978873980

/-! ## A195109.P14289346260731800944

`A195107(n+1)+A000217(∑[A073424(n)])`
-/

namespace A195109.P14289346260731800944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195109.P14289346260731800944

/-! ## A195109.P4990066104412995011

`A195107(n+1)+A161680(A002024(n+1))`
-/

namespace A195109.P4990066104412995011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195109.P4990066104412995011

/-! ## A195109.P1122847084376052890

`A195107(n+1)+n+1-A195110(A195111(n+1))`
-/

namespace A195109.P1122847084376052890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195107 (n + 1) + ((n + 1 : ℤ) - A195110 (A195111 (n + 1)).toNat)

end

end A195109.P1122847084376052890

/-!
# A195110: Fractalization of the fractal sequence A002260. Interspersion fractally induced by A002260.

The programs for A195110, there is no canonical definition to state claims against.
-/

/-! ## A195110.P18223769112998625246

`A002260(A195112(n+1))`
-/

namespace A195110.P18223769112998625246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195112 (n + 1)).toNat

end

end A195110.P18223769112998625246

/-! ## A195110.P1327933582620739517

`A195112(n+1)-A057944(n)`
-/

namespace A195110.P1327933582620739517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195112 (n + 1) - A057944 n

end

end A195110.P1327933582620739517

/-! ## A195110.P5187340188748502411

`A002262(A195112(n+1)-1)+1`
-/

namespace A195110.P5187340188748502411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195112 (n + 1) - 1).toNat + 1

end

end A195110.P5187340188748502411

/-! ## A195110.P13200333252238127962

`A131818(A195112(n+1)+1)-1`
-/

namespace A195110.P13200333252238127962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195112 (n + 1) + 1).toNat - 1

end

end A195110.P13200333252238127962

/-! ## A195110.P14408162780570055278

`A195112(n+1)+n-A061885(n)`
-/

namespace A195110.P14408162780570055278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195112 (n + 1) + ((n : ℤ) - A061885 n)

end

end A195110.P14408162780570055278

/-! ## A195110.P8054751927332706560

`A195112(n+1)-A000217(∑[char[∑[n+1]]])`
-/

namespace A195110.P8054751927332706560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195112 (n + 1) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195110.P8054751927332706560

/-! ## A195110.P12077303257100550233

`A195112(n+1)+n+1-A004201(n+1)`
-/

namespace A195110.P12077303257100550233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195112 (n + 1) + ((n + 1 : ℤ) - A004201 (n + 1))

end

end A195110.P12077303257100550233

/-! ## A195110.P14755108589459151486

`A002262(A195112(n+1)+A002024(n+1))`
-/

namespace A195110.P14755108589459151486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195112 (n + 1) + A002024 (n + 1)).toNat

end

end A195110.P14755108589459151486

/-! ## A195110.P8180953369228230310

`A063657(A195112(n+1))%A003057(n+2)`
-/

namespace A195110.P8180953369228230310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063657 (A195112 (n + 1)).toNat) (A003057 (n + 2))

end

end A195110.P8180953369228230310

/-!
# A195111: Interspersion fractally induced by the fractal sequence A002260.

The programs for A195111, there is no canonical definition to state claims against.
-/

/-! ## A195111.P17007177904373548261

`A038722(A195112(A038722(n+1)))`
-/

namespace A195111.P17007177904373548261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A195112 (A038722 (n + 1)).toNat).toNat

end

end A195111.P17007177904373548261

/-! ## A195111.P3578905820594694378

`A066182(A194962(n+1))%A275090(A167614(n+1))`
-/

namespace A195111.P3578905820594694378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066182 (A194962 (n + 1)).toNat) (A275090 (A167614 (n + 1)).toNat)

end

end A195111.P3578905820594694378

/-! ## A195111.P16735797920785992310

`A066182(A194962(n+1)%A195080(3*(n+1)))`
-/

namespace A195111.P16735797920785992310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (Int.tmod (A194962 (n + 1)) (A195080 (3 * (n + 1)))).toNat

end

end A195111.P16735797920785992310

/-! ## A195111.P14486014300464309122

`A066182(A194962(n+1)%A304243(n+1))`
-/

namespace A195111.P14486014300464309122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (Int.tmod (A194962 (n + 1)) (A304243 (n + 1))).toNat

end

end A195111.P14486014300464309122

/-! ## A195111.P1060912792429803738

`A066182(A194962(n+1))%A117075(n+1)`
-/

namespace A195111.P1060912792429803738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066182 (A194962 (n + 1)).toNat) (A117075 (n + 1))

end

end A195111.P1060912792429803738

/-!
# A195112: Inverse permutation of A195111; every positive integer occurs exactly once.

The programs for A195112, there is no canonical definition to state claims against.
-/

/-! ## A195112.P12178521105227482709

`A195110(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A195112.P12178521105227482709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195112.P12178521105227482709

/-! ## A195112.P14299192721548592315

`A195110(n+1)+A057944(n)`
-/

namespace A195112.P14299192721548592315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + A057944 n

end

end A195112.P14299192721548592315

/-! ## A195112.P4593165749906410084

`A195110(n+1)+n-A002262(n)`
-/

namespace A195112.P4593165749906410084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195112.P4593165749906410084

/-! ## A195112.P12812782649061313692

`A195110(n+1)+A061885(n)-n`
-/

namespace A195112.P12812782649061313692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + (A061885 n - (n : ℤ))

end

end A195112.P12812782649061313692

/-! ## A195112.P3352688940956002129

`A195110(n+1)+n-sqrt(A143844(n))`
-/

namespace A195112.P3352688940956002129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A195110 (n + 1) : ℝ) + ((n : ℝ) - Real.sqrt (A143844 n : ℝ))

end

end A195112.P3352688940956002129

/-! ## A195112.P6342695205658467938

`A195110(n+1)+A000217(∑[char[∑[n+1]]])`
-/

namespace A195112.P6342695205658467938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195112.P6342695205658467938

/-! ## A195112.P8135793099847237595

`A195110(n+1)+n+1-A002260(n+1)`
-/

namespace A195112.P8135793099847237595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195112.P8135793099847237595

/-! ## A195112.P306588653923671424

`A004201(n+1)+A195110(n+1)-(n+1)`
-/

namespace A195112.P306588653923671424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) + (A195110 (n + 1) - (n + 1 : ℤ))

end

end A195112.P306588653923671424

/-! ## A195112.P52290955341730626

`A195110(n+1)+A001971(A131507(n))`
-/

namespace A195112.P52290955341730626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + A001971 (A131507 n).toNat

end

end A195112.P52290955341730626

/-! ## A195112.P11652284018051497634

`A195110(n+1)+A161680(A002024(n+1))`
-/

namespace A195112.P11652284018051497634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195110 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195112.P11652284018051497634

/-!
# A195113: Fractalization of the fractal sequence obtained by deleting the second two terms of the fractal sequence A002260.

The programs for A195113, there is no canonical definition to state claims against.
-/

/-! ## A195113.P12928663981605617841

`A195115(n+1)-C(∑[char[∑[n]]], 2)`
-/

namespace A195113.P12928663981605617841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195115 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195113.P12928663981605617841

/-! ## A195113.P1899257851449815620

`A002260(A195115(n+1))`
-/

namespace A195113.P1899257851449815620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195115 (n + 1)).toNat

end

end A195113.P1899257851449815620

/-! ## A195113.P3847202354672320061

`A195115(n+1)-A057944(n)`
-/

namespace A195113.P3847202354672320061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195115 (n + 1) - A057944 n

end

end A195113.P3847202354672320061

/-! ## A195113.P8870783763444718296

`A002262(A195115(n+1)-1)+1`
-/

namespace A195113.P8870783763444718296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195115 (n + 1) - 1).toNat + 1

end

end A195113.P8870783763444718296

/-! ## A195113.P7629615272461544681

`A131818(A195115(n+1)+1)-1`
-/

namespace A195113.P7629615272461544681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A195115 (n + 1) + 1).toNat - 1

end

end A195113.P7629615272461544681

/-! ## A195113.P8426944385537653962

`A004739(A195115(n+1)+A057944(n))`
-/

namespace A195113.P8426944385537653962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A195115 (n + 1) + A057944 n).toNat

end

end A195113.P8426944385537653962

/-! ## A195113.P5486832450370885124

`A144328(A195115(n+1))+A023532(n)`
-/

namespace A195113.P5486832450370885124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A195115 (n + 1)).toNat + A023532 n

end

end A195113.P5486832450370885124

/-! ## A195113.P6122420473264655375

`A195115(n+1)-A000217(A003056(n))`
-/

namespace A195113.P6122420473264655375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195115 (n + 1) - A000217 (A003056 n).toNat

end

end A195113.P6122420473264655375

/-! ## A195113.P224754626047726520

`A002262(A195115(n+1)+A002024(n+1))`
-/

namespace A195113.P224754626047726520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195115 (n + 1) + A002024 (n + 1)).toNat

end

end A195113.P224754626047726520

/-! ## A195113.P10938803301329685314

`A003057(n+2)-A004736(A195115(n+1))`
-/

namespace A195113.P10938803301329685314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A004736 (A195115 (n + 1)).toNat

end

end A195113.P10938803301329685314

/-!
# A195114: Interspersion fractally induced by the fractal sequence obtained by deleting the second two terms of the fractal sequence A002260.

The programs for A195114, there is no canonical definition to state claims against.
-/

/-! ## A195114.P15601551362233645091

`A000124(A002024(n+1))-A195113(A038722(n+1))`
-/

namespace A195114.P15601551362233645091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002024 (n + 1)).toNat - A195113 (A038722 (n + 1)).toNat

end

end A195114.P15601551362233645091

/-! ## A195114.P8744703296756276069

`A038722(A195115(A038722(n+1)))`
-/

namespace A195114.P8744703296756276069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A195115 (A038722 (n + 1)).toNat).toNat

end

end A195114.P8744703296756276069

/-! ## A195114.P11824805522236538285

`A066182(A206551(n+1))-A185255(2*(n+1))`
-/

namespace A195114.P11824805522236538285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A206551 (n + 1)).toNat - A185255 (2 * (n + 1))

end

end A195114.P11824805522236538285

/-!
# A195115: Inverse permutation of A195114; every positive integer occurs exactly once.

The programs for A195115, there is no canonical definition to state claims against.
-/

/-! ## A195115.P983059967824478628

`A195113(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A195115.P983059967824478628
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A195115.P983059967824478628

/-! ## A195115.P7924144183769346523

`A195113(n+1)+A057944(n)`
-/

namespace A195115.P7924144183769346523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + A057944 n

end

end A195115.P7924144183769346523

/-! ## A195115.P18226669113535684463

`A195113(n+1)+n-A002262(n)`
-/

namespace A195115.P18226669113535684463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + ((n : ℤ) - A002262 n)

end

end A195115.P18226669113535684463

/-! ## A195115.P14958113187824517129

`A195113(n+1)+A061885(n)-n`
-/

namespace A195115.P14958113187824517129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + (A061885 n - (n : ℤ))

end

end A195115.P14958113187824517129

/-! ## A195115.P14960044091461346554

`A195113(n+1)+n+1-A002260(n+1)`
-/

namespace A195115.P14960044091461346554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195115.P14960044091461346554

/-! ## A195115.P12957238476459673891

`A195113(n+1)+A000217(A003056(n))`
-/

namespace A195115.P12957238476459673891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + A000217 (A003056 n).toNat

end

end A195115.P12957238476459673891

/-! ## A195115.P13288126519622111129

`A195113(n+1)+A001971(A131507(n))`
-/

namespace A195115.P13288126519622111129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + A001971 (A131507 n).toNat

end

end A195115.P13288126519622111129

/-! ## A195115.P17998722558405674921

`A195113(n+1)+A161680(A002024(n+1))`
-/

namespace A195115.P17998722558405674921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195113 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195115.P17998722558405674921

/-! ## A195115.P5192063049855916765

`A195096(n+1)+A195113(n+1)-A195082(n+1)`
-/

namespace A195115.P5192063049855916765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195096 (n + 1) + (A195113 (n + 1) - A195082 (n + 1))

end

end A195115.P5192063049855916765

/-! ## A195115.P18378135635739691304

`A195099(n+1)+A195113(n+1)-A195097(n+1)`
-/

namespace A195115.P18378135635739691304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1) + (A195113 (n + 1) - A195097 (n + 1))

end

end A195115.P18378135635739691304

/-!
# A195116: a(n) = (2+3^n)*(3+2^n).

The programs for A195116, the canonical program `A195116.P11547272365167967252` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195116 has offset 0).

The definition of A195116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2+3^n)*(3+2^n)` (program `A195116.P11547272365167967252`, by `A195116.P11547272365167967252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195116.P11547272365167967252

`(2+3^n)*(3+2^n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195116

/-- `(2+3^n)*(3+2^n)` -/
def P11547272365167967252.Spec : Prop :=
  ∀ n, (P11547272365167967252.a n : ℤ) = A195116 n

theorem P11547272365167967252.correct : P11547272365167967252.Spec := by
  intro n
  simp only [A195116]

end A195116

/-! ## A195116.P16223370605331403243

`A062709(n)+A034472(n)*A062709(n)`
-/

namespace A195116.P16223370605331403243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 n + A034472 n * A062709 n

end

end A195116.P16223370605331403243

namespace A195116

/-- `A062709(n)+A034472(n)*A062709(n)` -/
def P16223370605331403243.Spec : Prop :=
  ∀ n, P16223370605331403243.a n = A195116 n

end A195116

/-! ## A195116.P8674878068854287909

`A168607(n)+A052548(n)*A168607(n)`
-/

namespace A195116.P8674878068854287909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 n + A052548 n * A168607 n

end

end A195116.P8674878068854287909

namespace A195116

/-- `A168607(n)+A052548(n)*A168607(n)` -/
def P8674878068854287909.Spec : Prop :=
  ∀ n, P8674878068854287909.a n = A195116 n

end A195116

/-! ## A195116.P15593332381164768262

`A062709(n)*A168607(n)/A007318(∑[n+2])`
-/

namespace A195116.P15593332381164768262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062709 n * A168607 n : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A195116.P15593332381164768262

namespace A195116

/-- `A062709(n)*A168607(n)/A007318(∑[n+2])` -/
def P15593332381164768262.Spec : Prop :=
  ∀ n, P15593332381164768262.a n = (A195116 n : ℚ)

end A195116

/-! ## A195116.P14785895701769059005

`A062709(n)*A168607(n)/A014963(32*n+14)`
-/

namespace A195116.P14785895701769059005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062709 n * A168607 n : ℚ) / (A014963 (32 * n + 14) : ℚ)

end

end A195116.P14785895701769059005

namespace A195116

/-- `A062709(n)*A168607(n)/A014963(32*n+14)` -/
def P14785895701769059005.Spec : Prop :=
  ∀ n, P14785895701769059005.a n = (A195116 n : ℚ)

end A195116

/-!
# A195117: Primes of the form 2*n^3 + 4*n^2 + 4*n + 1.

The programs for A195117, there is no canonical definition to state claims against.
-/

/-! ## A195117.P15207254067786719205

`p?[ceil(2/(n+1)*n^4)]`
-/

namespace A195117.P15207254067786719205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (n + 1 : ℚ) * (n ^ 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195117.P15207254067786719205

/-! ## A195117.P982231305604870134

`abs(1-p?[(n+1)*(∑[4*n]+1)+n])+1`
-/

namespace A195117.P982231305604870134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A195117.P982231305604870134

/-! ## A195117.P13185379604662645609

`∑{p}[p?[A059722(n)-1+n], #]`
-/

namespace A195117.P13185379604662645609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A195117.P13185379604662645609

/-! ## A195117.P15125265256306471005

`A000027(p?[A047672(n+1)+n²])`
-/

namespace A195117.P15125265256306471005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047672 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A195117.P15125265256306471005

/-! ## A195117.P7023820252264003582

`record[A006530(A071233(n+2)+1)]`
-/

namespace A195117.P7023820252264003582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071233 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195117.P7023820252264003582

/-!
# A195118: Numbers with largest and smallest prime factors differing by 6.

The programs for A195118, there is no canonical definition to state claims against.
-/

/-! ## A195118.P16784729489840547033

`eq[6, A046665(n^(n%2))]`
-/

namespace A195118.P16784729489840547033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195118.P16784729489840547033

/-! ## A195118.P962668268227976130

`eq[6, A046665(A028310(n))]`
-/

namespace A195118.P962668268227976130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195118.P962668268227976130

/-! ## A195118.P14532355721316409024

`A004442(eq[6, A046665(n+1)])`
-/

namespace A195118.P14532355721316409024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195118.P14532355721316409024

/-! ## A195118.P6140475140444561772

`A020725(eq[6, A046665(n+1)])`
-/

namespace A195118.P6140475140444561772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195118.P6140475140444561772

/-! ## A195118.P14875855951864855331

`A065475(eq[6, A046665(n+1)])`
-/

namespace A195118.P14875855951864855331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195118.P14875855951864855331

/-!
# A195119: a(n) = 2*n - floor(n*sqrt(2)).

The programs for A195119, the canonical program `A195119.P10467395999653926645` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195119 has offset 0).

The definition of A195119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-floor(n*sqrt(2))` (program `A195119.P10467395999653926645`, by `A195119.P10467395999653926645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195119.P10467395999653926645

`2*n-floor(n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195119

/-- `2*n-floor(n*sqrt(2))` -/
def P10467395999653926645.Spec : Prop :=
  ∀ n, P10467395999653926645.a n = A195119 n

theorem P10467395999653926645.correct : P10467395999653926645.Spec := by
  intro n
  simp only [A195119]

end A195119

/-! ## A195119.P7334403589238220847

`Δ[n²]%(floor(n*sqrt(2))+1)`
-/

namespace A195119.P7334403589238220847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1)

end

end A195119.P7334403589238220847

namespace A195119

/-- `Δ[n²]%(floor(n*sqrt(2))+1)` -/
def P7334403589238220847.Spec : Prop :=
  ∀ n, P7334403589238220847.a n = A195119 n

end A195119

/-! ## A195119.P5215083062851907563

`∑[char[A083088(n)]]`
-/

namespace A195119.P5215083062851907563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195119.P5215083062851907563

namespace A195119

/-- `∑[char[A083088(n)]]` -/
def P5215083062851907563.Spec : Prop :=
  ∀ n, (P5215083062851907563.a n : ℤ) = A195119 n

end A195119

/-! ## A195119.P8146873085994327210

`round(A195178(n)/2)`
-/

namespace A195119.P8146873085994327210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195178 n : ℚ) / 2)

end

end A195119.P8146873085994327210

namespace A195119

/-- `round(A195178(n)/2)` -/
def P8146873085994327210.Spec : Prop :=
  ∀ n, P8146873085994327210.a n = A195119 n

end A195119

/-! ## A195119.P10061419545842290608

`∑[1-A285076(n+1)]`
-/

namespace A195119.P10061419545842290608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195119.P10061419545842290608

namespace A195119

/-- `∑[1-A285076(n+1)]` -/
def P10061419545842290608.Spec : Prop :=
  ∀ n, P10061419545842290608.a n = A195119 n

end A195119

/-! ## A195119.P1728372218277015757

`∑[char[A285077(n+1)-1]]`
-/

namespace A195119.P1728372218277015757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195119.P1728372218277015757

namespace A195119

/-- `∑[char[A285077(n+1)-1]]` -/
def P1728372218277015757.Spec : Prop :=
  ∀ n, (P1728372218277015757.a n : ℤ) = A195119 n

end A195119

/-! ## A195119.P8169663044399606490

`∑[1-char[A285078(n+1)-1]]`
-/

namespace A195119.P8169663044399606490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195119.P8169663044399606490

namespace A195119

/-- `∑[1-char[A285078(n+1)-1]]` -/
def P8169663044399606490.Spec : Prop :=
  ∀ n, P8169663044399606490.a n = A195119 n

end A195119

/-! ## A195119.P8478759596666457056

`A110654(A195178(n))`
-/

namespace A195119.P8478759596666457056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A195178 n).toNat

end

end A195119.P8478759596666457056

namespace A195119

/-- `A110654(A195178(n))` -/
def P8478759596666457056.Spec : Prop :=
  ∀ n, P8478759596666457056.a n = A195119 n

end A195119

/-! ## A195119.P2626241148760627382

`A195177(A258834(n))`
-/

namespace A195119.P2626241148760627382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A258834 n).toNat

end

end A195119.P2626241148760627382

namespace A195119

/-- `A195177(A258834(n))` -/
def P2626241148760627382.Spec : Prop :=
  ∀ n, P2626241148760627382.a n = A195119 n

end A195119

/-! ## A195119.P8463530861764241360

`A394301(n²)`
-/

namespace A195119.P8463530861764241360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 (n ^ 2)

end

end A195119.P8463530861764241360

namespace A195119

/-- `A394301(n²)` -/
def P8463530861764241360.Spec : Prop :=
  ∀ n, P8463530861764241360.a n = A195119 n

end A195119

/-!
# A195120: a(n) = 2*n - floor(n*sqrt(3)).

The programs for A195120, the canonical program `A195120.P16673535065325612968` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195120 has offset 0).

The definition of A195120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-floor(n*sqrt(3))` (program `A195120.P16673535065325612968`, by `A195120.P16673535065325612968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195120.P16673535065325612968

`2*n-floor(n*sqrt(3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195120

/-- `2*n-floor(n*sqrt(3))` -/
def P16673535065325612968.Spec : Prop :=
  ∀ n, P16673535065325612968.a n = A195120 n

theorem P16673535065325612968.correct : P16673535065325612968.Spec := by
  intro n
  simp only [A195120]

end A195120

/-! ## A195120.P18351730691677980407

`ceil((a(a(n-1))+n)/4)` with `a(0)=0`
-/

namespace A195120.P18351730691677980407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (a (n - 1)).toNat + (n : ℤ) : ℚ) / 4⌉

end

end A195120.P18351730691677980407

namespace A195120

/-- `ceil((a(a(n-1))+n)/4)` -/
def P18351730691677980407.Spec : Prop :=
  ∀ n, P18351730691677980407.a n = A195120 n

end A195120

/-! ## A195120.P8849692667537647517

`(2*n+1)%(floor(n*sqrt(3))+1)`
-/

namespace A195120.P8849692667537647517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1)

end

end A195120.P8849692667537647517

namespace A195120

/-- `(2*n+1)%(floor(n*sqrt(3))+1)` -/
def P8849692667537647517.Spec : Prop :=
  ∀ n, P8849692667537647517.a n = A195120 n

end A195120

/-! ## A195120.P6667774317241500665

`floor((a(a(n-1))+3+n)/4)` with `a(0)=0`
-/

namespace A195120.P6667774317241500665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat + 3 + (n : ℤ) : ℚ) / 4⌋

end

end A195120.P6667774317241500665

namespace A195120

/-- `floor((a(a(n-1))+3+n)/4)` -/
def P6667774317241500665.Spec : Prop :=
  ∀ n, P6667774317241500665.a n = A195120 n

end A195120

/-! ## A195120.P13368974817245471111

`∑[char[A188069(n+1)]]`
-/

namespace A195120.P13368974817245471111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195120.P13368974817245471111

namespace A195120

/-- `∑[char[A188069(n+1)]]` -/
def P13368974817245471111.Spec : Prop :=
  ∀ n, (P13368974817245471111.a n : ℤ) = A195120 n

end A195120

/-! ## A195120.P6992094989006154996

`∑[char[A188072(2*n+1)]]`
-/

namespace A195120.P6992094989006154996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195120.P6992094989006154996

namespace A195120

/-- `∑[char[A188072(2*n+1)]]` -/
def P6992094989006154996.Spec : Prop :=
  ∀ n, (P6992094989006154996.a n : ℤ) = A195120 n

end A195120

/-! ## A195120.P13194040023538926478

`∑[A188068(n+1)-A188071(n+1)]`
-/

namespace A195120.P13194040023538926478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) - A188071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195120.P13194040023538926478

namespace A195120

/-- `∑[A188068(n+1)-A188071(n+1)]` -/
def P13194040023538926478.Spec : Prop :=
  ∀ n, P13194040023538926478.a n = A195120 n

end A195120

/-! ## A195120.P1623009714965865249

`A110655(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A195120.P1623009714965865249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A110655 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A195120.P1623009714965865249

namespace A195120

/-- `A110655(a(a(n-1))+n)` -/
def P1623009714965865249.Spec : Prop :=
  ∀ n, P1623009714965865249.a n = A195120 n

end A195120

/-!
# A195121: a(n) = 2*n - floor(n/r), where r = (1 + sqrt(5))/2 (the golden ratio).

The programs for A195121, the canonical program `A195121.P14500461516378876145` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195121 has offset 0).

The definition of A195121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195121.P14500461516378876145

`2*n-floor(n/ϕ)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195121

/-- `2*n-floor(n/ϕ)` -/
def P14500461516378876145.Spec : Prop :=
  ∀ n, P14500461516378876145.a n = A195121 n

theorem P14500461516378876145.correct : P14500461516378876145.Spec := by
  intro n
  simp only [A195121]

end A195121

/-! ## A195121.P13454074393739494566

`comp[A026352(n)+n]`
-/

namespace A195121.P13454074393739494566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195121.P13454074393739494566

namespace A195121

/-- `comp[A026352(n)+n]` -/
def P13454074393739494566.Spec : Prop :=
  ∀ n, (P13454074393739494566.a n : ℤ) = A195121 n

end A195121

/-! ## A195121.P5057355600596170377

`comp[comp[A004956(n)]+n]`
-/

namespace A195121.P5057355600596170377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195121.P5057355600596170377

namespace A195121

/-- `comp[comp[A004956(n)]+n]` -/
def P5057355600596170377.Spec : Prop :=
  ∀ n, (P5057355600596170377.a n : ℤ) = A195121 n

end A195121

/-! ## A195121.P10048267323358926324

`comp[A284624(n+1)-1]`
-/

namespace A195121.P10048267323358926324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195121.P10048267323358926324

namespace A195121

/-- `comp[A284624(n+1)-1]` -/
def P10048267323358926324.Spec : Prop :=
  ∀ n, (P10048267323358926324.a n : ℤ) = A195121 n

end A195121

/-! ## A195121.P6029098525021869055

`A004767(n)%A022413(n)`
-/

namespace A195121.P6029098525021869055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) (A022413 n)

end

end A195121.P6029098525021869055

namespace A195121

/-- `A004767(n)%A022413(n)` -/
def P6029098525021869055.Spec : Prop :=
  ∀ n, P6029098525021869055.a n = A195121 n

end A195121

/-! ## A195121.P4293194737165378626

`A016813(n)%A026352(n)`
-/

namespace A195121.P4293194737165378626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 n) (A026352 n)

end

end A195121.P4293194737165378626

namespace A195121

/-- `A016813(n)%A026352(n)` -/
def P4293194737165378626.Spec : Prop :=
  ∀ n, P4293194737165378626.a n = A195121 n

end A195121

/-! ## A195121.P14345389549843706325

`A016825(n)%A007066(n+1)`
-/

namespace A195121.P14345389549843706325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A007066 (n + 1))

end

end A195121.P14345389549843706325

namespace A195121

/-- `A016825(n)%A007066(n+1)` -/
def P14345389549843706325.Spec : Prop :=
  ∀ n, P14345389549843706325.a n = A195121 n

end A195121

/-! ## A195121.P3878028401016721409

`A016789(n)%A099267(n+1)`
-/

namespace A195121.P3878028401016721409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A099267 (n + 1))

end

end A195121.P3878028401016721409

namespace A195121

/-- `A016789(n)%A099267(n+1)` -/
def P3878028401016721409.Spec : Prop :=
  ∀ n, P3878028401016721409.a n = A195121 n

end A195121

/-! ## A195121.P5735494533454085952

`A016873(n)%A284624(n+1)`
-/

namespace A195121.P5735494533454085952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016873 n) (A284624 (n + 1))

end

end A195121.P5735494533454085952

namespace A195121

/-- `A016873(n)%A284624(n+1)` -/
def P5735494533454085952.Spec : Prop :=
  ∀ n, P5735494533454085952.a n = A195121 n

end A195121

/-! ## A195121.P14222390390294749990

`A284395(n+1)%A130568(n)`
-/

namespace A195121.P14222390390294749990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284395 (n + 1)) (A130568 n)

end

end A195121.P14222390390294749990

namespace A195121

/-- `A284395(n+1)%A130568(n)` -/
def P14222390390294749990.Spec : Prop :=
  ∀ n, P14222390390294749990.a n = A195121 n

end A195121

/-! ## A195121.P9533940733128452913

`∪[A287775(n+1), A198082(n)]`
-/

namespace A195121.P9533940733128452913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195121.P9533940733128452913

namespace A195121

/-- `∪[A287775(n+1), A198082(n)]` -/
def P9533940733128452913.Spec : Prop :=
  ∀ n, (P9533940733128452913.a n : ℤ) = A195121 n

end A195121

/-! ## A195121.P9945127977482720660

`A133653(n+1)%A007066(n+1)`
-/

namespace A195121.P9945127977482720660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133653 (n + 1)) (A007066 (n + 1))

end

end A195121.P9945127977482720660

namespace A195121

/-- `A133653(n+1)%A007066(n+1)` -/
def P9945127977482720660.Spec : Prop :=
  ∀ n, P9945127977482720660.a n = A195121 n

end A195121

/-! ## A195121.P6987687450720202286

`A288709(n+1)%A285679(n+1)`
-/

namespace A195121.P6987687450720202286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288709 (n + 1)) (A285679 (n + 1))

end

end A195121.P6987687450720202286

namespace A195121

/-- `A288709(n+1)%A285679(n+1)` -/
def P6987687450720202286.Spec : Prop :=
  ∀ n, P6987687450720202286.a n = A195121 n

end A195121

/-! ## A195121.P17856894932458161103

`A189663(A000201(n+1)+2*n)`
-/

namespace A195121.P17856894932458161103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A000201 (n + 1) + (2 * n : ℤ)).toNat

end

end A195121.P17856894932458161103

namespace A195121

/-- `A189663(A000201(n+1)+2*n)` -/
def P17856894932458161103.Spec : Prop :=
  ∀ n, P17856894932458161103.a n = A195121 n

end A195121

/-! ## A195121.P8351745298935255969

`A189663(A050140(A000201(n+1)))`
-/

namespace A195121.P8351745298935255969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A050140 (A000201 (n + 1)).toNat).toNat

end

end A195121.P8351745298935255969

namespace A195121

/-- `A189663(A050140(A000201(n+1)))` -/
def P8351745298935255969.Spec : Prop :=
  ∀ n, P8351745298935255969.a n = A195121 n

end A195121

/-! ## A195121.P11876940030952807904

`A189663(A050140(A019446(n+1)+n))`
-/

namespace A195121.P11876940030952807904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A050140 (A019446 (n + 1) + (n : ℤ)).toNat).toNat

end

end A195121.P11876940030952807904

namespace A195121

/-- `A189663(A050140(A019446(n+1)+n))` -/
def P11876940030952807904.Spec : Prop :=
  ∀ n, P11876940030952807904.a n = A195121 n

end A195121

/-! ## A195121.P18074404883732763712

`A060144(A001950(A189663(n+1)+n+1))`
-/

namespace A195121.P18074404883732763712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A001950 (A189663 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A195121.P18074404883732763712

namespace A195121

/-- `A060144(A001950(A189663(n+1)+n+1))` -/
def P18074404883732763712.Spec : Prop :=
  ∀ n, P18074404883732763712.a n = A195121 n

end A195121

/-! ## A195121.P268407513029007529

`A189663(A019446(A134859(n+1))+n)`
-/

namespace A195121.P268407513029007529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A019446 (A134859 (n + 1)).toNat + (n : ℤ)).toNat

end

end A195121.P268407513029007529

namespace A195121

/-- `A189663(A019446(A134859(n+1))+n)` -/
def P268407513029007529.Spec : Prop :=
  ∀ n, P268407513029007529.a n = A195121 n

end A195121

/-! ## A195121.P6057501008796045752

`A189663(A050140(A060144(A003623(n+1))))`
-/

namespace A195121.P6057501008796045752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A050140 (A060144 (A003623 (n + 1)).toNat).toNat).toNat

end

end A195121.P6057501008796045752

namespace A195121

/-- `A189663(A050140(A060144(A003623(n+1))))` -/
def P6057501008796045752.Spec : Prop :=
  ∀ n, P6057501008796045752.a n = A195121 n

end A195121

/-!
# A195122: a(n) = 2*n - floor(n*r/2), where r=(1+sqrt(5))/2.

The programs for A195122, the canonical program `A195122.P7223825868024058307` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195122 has offset 0).

The definition of A195122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195122.P7223825868024058307

`2*n-floor(n*ϕ/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195122

/-- `2*n-floor(n*ϕ/2)` -/
def P7223825868024058307.Spec : Prop :=
  ∀ n, P7223825868024058307.a n = A195122 n

theorem P7223825868024058307.correct : P7223825868024058307.Spec := by
  intro n
  simp only [A195122]

end A195122

/-! ## A195122.P12708801586236630150

`floor((A195170(n)+1)/2)`
-/

namespace A195122.P12708801586236630150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195170 n + 1 : ℚ) / 2⌋

end

end A195122.P12708801586236630150

namespace A195122

/-- `floor((A195170(n)+1)/2)` -/
def P12708801586236630150.Spec : Prop :=
  ∀ n, P12708801586236630150.a n = A195122 n

end A195122

/-! ## A195122.P16005209960872727075

`comp[A026352(2*n)+n]`
-/

namespace A195122.P16005209960872727075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (2 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195122.P16005209960872727075

namespace A195122

/-- `comp[A026352(2*n)+n]` -/
def P16005209960872727075.Spec : Prop :=
  ∀ n, (P16005209960872727075.a n : ℤ) = A195122 n

end A195122

/-! ## A195122.P3133228654039641366

`round(∑[A189661(n+1)/2]+n)`
-/

namespace A195122.P3133228654039641366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189661 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ))

end

end A195122.P3133228654039641366

namespace A195122

/-- `round(∑[A189661(n+1)/2]+n)` -/
def P3133228654039641366.Spec : Prop :=
  ∀ n, P3133228654039641366.a n = A195122 n

end A195122

/-! ## A195122.P9550133900134156139

`eq[1, Δ[comp[A284624(2*n+1)]]]`
-/

namespace A195122.P9550133900134156139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (2 * n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195122.P9550133900134156139

namespace A195122

/-- `eq[1, Δ[comp[A284624(2*n+1)]]]` -/
def P9550133900134156139.Spec : Prop :=
  ∀ n, (P9550133900134156139.a n : ℤ) = A195122 n

end A195122

/-! ## A195122.P11540728782998088911

`A110654(A195170(n))`
-/

namespace A195122.P11540728782998088911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A195170 n).toNat

end

end A195122.P11540728782998088911

namespace A195122

/-- `A110654(A195170(n))` -/
def P11540728782998088911.Spec : Prop :=
  ∀ n, P11540728782998088911.a n = A195122 n

end A195122

/-! ## A195122.P17996404098788074385

`A002265(2*(A195170(n)+1))`
-/

namespace A195122.P17996404098788074385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A195170 n + 1)).toNat

end

end A195122.P17996404098788074385

namespace A195122

/-- `A002265(2*(A195170(n)+1))` -/
def P17996404098788074385.Spec : Prop :=
  ∀ n, P17996404098788074385.a n = A195122 n

end A195122

/-! ## A195122.P8328270727226834632

`A002265(A195170(n+1)+A195170(n))`
-/

namespace A195122.P8328270727226834632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A195170 (n + 1) + A195170 n).toNat

end

end A195122.P8328270727226834632

namespace A195122

/-- `A002265(A195170(n+1)+A195170(n))` -/
def P8328270727226834632.Spec : Prop :=
  ∀ n, P8328270727226834632.a n = A195122 n

end A195122

/-!
# A195123: a(n) = 2*n - floor(n*r/3), where r = (1 + sqrt(5))/2.

The programs for A195123, the canonical program `A195123.P16237776424251920251` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195123 has offset 0).

The definition of A195123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195123.P16237776424251920251

`2*n-floor(n*(1+sqrt(5))/6)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195123

/-- `2*n-floor(n*(1+sqrt(5))/6)` -/
def P16237776424251920251.Spec : Prop :=
  ∀ n, P16237776424251920251.a n = A195123 n

theorem P16237776424251920251.correct : P16237776424251920251.Spec := by
  intro n
  simp only [A195123]

end A195123

/-! ## A195123.P2220488833698023877

`abs(n-A195168(n))`
-/

namespace A195123.P2220488833698023877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A195168 n|

end

end A195123.P2220488833698023877

namespace A195123

/-- `abs(n-A195168(n))` -/
def P2220488833698023877.Spec : Prop :=
  ∀ n, P2220488833698023877.a n = A195123 n

end A195123

/-! ## A195123.P3007660643835963807

`round((A195169(n)+n)/2)`
-/

namespace A195123.P3007660643835963807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195169 n + (n : ℤ) : ℚ) / 2)

end

end A195123.P3007660643835963807

namespace A195123

/-- `round((A195169(n)+n)/2)` -/
def P3007660643835963807.Spec : Prop :=
  ∀ n, P3007660643835963807.a n = A195123 n

end A195123

/-! ## A195123.P12537273536981046056

`record[A060145(n)+A004523(n)]`
-/

namespace A195123.P12537273536981046056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 n + A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195123.P12537273536981046056

namespace A195123

/-- `record[A060145(n)+A004523(n)]` -/
def P12537273536981046056.Spec : Prop :=
  ∀ n, P12537273536981046056.a n = A195123 n

end A195123

/-! ## A195123.P4569127687845768784

`A002264(A195121(n)+A016789(n))`
-/

namespace A195123.P4569127687845768784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A195121 n + A016789 n).toNat

end

end A195123.P4569127687845768784

namespace A195123

/-- `A002264(A195121(n)+A016789(n))` -/
def P4569127687845768784.Spec : Prop :=
  ∀ n, P4569127687845768784.a n = A195123 n

end A195123

/-!
# A195124: 2n-floor(n*e/2).

The programs for A195124, the canonical program `A195124.P13812946285917995958` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195124 has offset 0).

The definition of A195124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-floor(n*e/2)` (program `A195124.P13812946285917995958`, by `A195124.P13812946285917995958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195124.P13812946285917995958

`2*n-floor(n*e/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195124

/-- `2*n-floor(n*e/2)` -/
def P13812946285917995958.Spec : Prop :=
  ∀ n, P13812946285917995958.a n = A195124 n

theorem P13812946285917995958.correct : P13812946285917995958.Spec := by
  intro n
  simp only [A195124]

end A195124

/-! ## A195124.P11514787527171321365

`A110654(A008586(n)-A022843(n))`
-/

namespace A195124.P11514787527171321365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008586 n - A022843 n).toNat

end

end A195124.P11514787527171321365

namespace A195124

/-- `A110654(A008586(n)-A022843(n))` -/
def P11514787527171321365.Spec : Prop :=
  ∀ n, P11514787527171321365.a n = A195124 n

end A195124

/-! ## A195124.P15960294116252232804

`A004526(A016813(n)-A022843(n))`
-/

namespace A195124.P15960294116252232804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016813 n - A022843 n).toNat

end

end A195124.P15960294116252232804

namespace A195124

/-- `A004526(A016813(n)-A022843(n))` -/
def P15960294116252232804.Spec : Prop :=
  ∀ n, P15960294116252232804.a n = A195124 n

end A195124

/-! ## A195124.P5162396310494948495

`A005408(n)%A008619(A022843(n))`
-/

namespace A195124.P5162396310494948495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A008619 (A022843 n).toNat)

end

end A195124.P5162396310494948495

namespace A195124

/-- `A005408(n)%A008619(A022843(n))` -/
def P5162396310494948495.Spec : Prop :=
  ∀ n, P5162396310494948495.a n = A195124 n

end A195124

/-! ## A195124.P15752969738068950316

`A028310(2*n+1)%A008619(A022843(n))`
-/

namespace A195124.P15752969738068950316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (2 * n + 1)) (A008619 (A022843 n).toNat)

end

end A195124.P15752969738068950316

namespace A195124

/-- `A028310(2*n+1)%A008619(A022843(n))` -/
def P15752969738068950316.Spec : Prop :=
  ∀ n, P15752969738068950316.a n = A195124 n

end A195124

/-!
# A195125: a(n) = 2*n - floor(n*r), where r=Pi-3.

The programs for A195125, the canonical program `A195125.P8024849299184485481` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195125 has offset 0).

The definition of A195125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195125.P8024849299184485481

`2*n-floor(n*(π-3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195125

/-- `2*n-floor(n*(π-3))` -/
def P8024849299184485481.Spec : Prop :=
  ∀ n, P8024849299184485481.a n = A195125 n

theorem P8024849299184485481.correct : P8024849299184485481.Spec := by
  intro n
  simp only [A195125]

end A195125

/-! ## A195125.P15362645048297447248

`Δ[A000566(n)]%(floor(π*n)+1)`
-/

namespace A195125.P15362645048297447248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (⌊Real.pi * (n : ℝ)⌋ + 1)

end

end A195125.P15362645048297447248

namespace A195125

/-- `Δ[A000566(n)]%(floor(π*n)+1)` -/
def P15362645048297447248.Spec : Prop :=
  ∀ n, P15362645048297447248.a n = A195125 n

end A195125

/-! ## A195125.P15100130764878051262

`A016861(n)%A004084(n+1)`
-/

namespace A195125.P15100130764878051262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016861 n) (A004084 (n + 1))

end

end A195125.P15100130764878051262

namespace A195125

/-- `A016861(n)%A004084(n+1)` -/
def P15100130764878051262.Spec : Prop :=
  ∀ n, P15100130764878051262.a n = A195125 n

end A195125

/-! ## A195125.P15933229058901681839

`(A057365(3*n)+1)%A329051(n+1)`
-/

namespace A195125.P15933229058901681839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057365 (3 * n) + 1) (A329051 (n + 1))

end

end A195125.P15933229058901681839

namespace A195125

/-- `(A057365(3*n)+1)%A329051(n+1)` -/
def P15933229058901681839.Spec : Prop :=
  ∀ n, P15933229058901681839.a n = A195125 n

end A195125

/-! ## A195125.P10090484599915367704

`A003056(A255605(n+1)-A003056(2*(n+1)))`
-/

namespace A195125.P10090484599915367704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A255605 (n + 1) - A003056 (2 * (n + 1))).toNat

end

end A195125.P10090484599915367704

namespace A195125

/-- `A003056(A255605(n+1)-A003056(2*(n+1)))` -/
def P10090484599915367704.Spec : Prop :=
  ∀ n, P10090484599915367704.a n = A195125 n

end A195125

/-!
# A195126: a(n) = 2*n - floor(n*r/4), where r = (1 + sqrt(5))/2.

The programs for A195126, the canonical program `A195126.P1129693599105872537` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195126 has offset 0).

The definition of A195126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195126.P1129693599105872537

`2*n-floor(n*ϕ/4)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195126

/-- `2*n-floor(n*ϕ/4)` -/
def P1129693599105872537.Spec : Prop :=
  ∀ n, P1129693599105872537.a n = A195126 n

theorem P1129693599105872537.correct : P1129693599105872537.Spec := by
  intro n
  simp only [A195126]

end A195126

/-! ## A195126.P5525909692983203034

`comp[comp[A001961(2*(n+1))]+n+1]`
-/

namespace A195126.P5525909692983203034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195126.P5525909692983203034

namespace A195126

/-- `comp[comp[A001961(2*(n+1))]+n+1]` -/
def P5525909692983203034.Spec : Prop :=
  ∀ n, (P5525909692983203034.a n : ℤ) = A195126 n

end A195126

/-! ## A195126.P12347275366752053538

`record[2*A005206(n)-A002265(n)]`
-/

namespace A195126.P12347275366752053538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005206 n - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195126.P12347275366752053538

namespace A195126

/-- `record[2*A005206(n)-A002265(n)]` -/
def P12347275366752053538.Spec : Prop :=
  ∀ n, P12347275366752053538.a n = A195126 n

end A195126

/-! ## A195126.P10243600369435616069

`record[2*A060143(n+1)-A002265(n)]`
-/

namespace A195126.P10243600369435616069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060143 (n + 1) - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195126.P10243600369435616069

namespace A195126

/-- `record[2*A060143(n+1)-A002265(n)]` -/
def P10243600369435616069.Spec : Prop :=
  ∀ n, P10243600369435616069.a n = A195126 n

end A195126

/-! ## A195126.P3217988149894999679

`A004526(A195167(n)+1+n)`
-/

namespace A195126.P3217988149894999679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A195167 n + 1 + (n : ℤ)).toNat

end

end A195126.P3217988149894999679

namespace A195126

/-- `A004526(A195167(n)+1+n)` -/
def P3217988149894999679.Spec : Prop :=
  ∀ n, P3217988149894999679.a n = A195126 n

end A195126

/-!
# A195127: a(n) = 2*n - floor(n*r/5), where r = (1 + sqrt(5))/2.

The programs for A195127, the canonical program `A195127.P16570136897674608989` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195127 has offset 0).

The definition of A195127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195127.P16570136897674608989

`2*n-floor(n*(1+sqrt(5))/10)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195127

/-- `2*n-floor(n*(1+sqrt(5))/10)` -/
def P16570136897674608989.Spec : Prop :=
  ∀ n, P16570136897674608989.a n = A195127 n

theorem P16570136897674608989.correct : P16570136897674608989.Spec := by
  intro n
  simp only [A195127]

end A195127

/-! ## A195127.P126206360570675837

`record[A050140(n+1)-A047253(n+1)]`
-/

namespace A195127.P126206360570675837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (n + 1) - A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195127.P126206360570675837

namespace A195127

/-- `record[A050140(n+1)-A047253(n+1)]` -/
def P126206360570675837.Spec : Prop :=
  ∀ n, P126206360570675837.a n = A195127 n

end A195127

/-! ## A195127.P6150187009445973571

`record[A090223(n)+A060145(n)]`
-/

namespace A195127.P6150187009445973571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + A060145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195127.P6150187009445973571

namespace A195127

/-- `record[A090223(n)+A060145(n)]` -/
def P6150187009445973571.Spec : Prop :=
  ∀ n, P6150187009445973571.a n = A195127 n

end A195127

/-! ## A195127.P17240462591480707765

`record[A060145(n)+A057354(2*n)]`
-/

namespace A195127.P17240462591480707765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 n + A057354 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195127.P17240462591480707765

namespace A195127

/-- `record[A060145(n)+A057354(2*n)]` -/
def P17240462591480707765.Spec : Prop :=
  ∀ n, P17240462591480707765.a n = A195127 n

end A195127

/-! ## A195127.P4924628423411060633

`comp[A047218(n+1)]%A274770(n+1)`
-/

namespace A195127.P4924628423411060633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A274770 (n + 1))

end

end A195127.P4924628423411060633

namespace A195127

/-- `comp[A047218(n+1)]%A274770(n+1)` -/
def P4924628423411060633.Spec : Prop :=
  ∀ n, P4924628423411060633.a n = A195127 n

end A195127

/-!
# A195128: a(n) = 2*n - floor(n*sqrt(1/2)).

The programs for A195128, the canonical program `A195128.P17170821473884310959` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195128 has offset 0).

The definition of A195128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-floor(n*sqrt(1/2))` (program `A195128.P17170821473884310959`, by `A195128.P17170821473884310959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195128.P17170821473884310959

`2*n-floor(n*sqrt(1/2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195128

/-- `2*n-floor(n*sqrt(1/2))` -/
def P17170821473884310959.Spec : Prop :=
  ∀ n, P17170821473884310959.a n = A195128 n

theorem P17170821473884310959.correct : P17170821473884310959.Spec := by
  intro n
  simp only [A195128]

end A195128

/-! ## A195128.P7205388954963548802

`(4*n+2)%(comp[floor(n*sqrt(2))+n+1]+1+n)`
-/

namespace A195128.P7205388954963548802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 2) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n)

end

end A195128.P7205388954963548802

namespace A195128

/-- `(4*n+2)%(comp[floor(n*sqrt(2))+n+1]+1+n)` -/
def P7205388954963548802.Spec : Prop :=
  ∀ n, (P7205388954963548802.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P9723828671299114203

`abs(A049472(n)-2*n)`
-/

namespace A195128.P9723828671299114203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049472 n - (2 * n : ℤ)|

end

end A195128.P9723828671299114203

namespace A195128

/-- `abs(A049472(n)-2*n)` -/
def P9723828671299114203.Spec : Prop :=
  ∀ n, P9723828671299114203.a n = A195128 n

end A195128

/-! ## A195128.P17948200578416637730

`ceil(A195119(n)/2+n)`
-/

namespace A195128.P17948200578416637730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195119 n : ℚ) / 2 + (n : ℚ)⌉

end

end A195128.P17948200578416637730

namespace A195128

/-- `ceil(A195119(n)/2+n)` -/
def P17948200578416637730.Spec : Prop :=
  ∀ n, P17948200578416637730.a n = A195128 n

end A195128

/-! ## A195128.P3917051642868199513

`ceil((A195176(n)+n)/2)`
-/

namespace A195128.P3917051642868199513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195176 n + (n : ℤ) : ℚ) / 2⌉

end

end A195128.P3917051642868199513

namespace A195128

/-- `ceil((A195176(n)+n)/2)` -/
def P3917051642868199513.Spec : Prop :=
  ∀ n, P3917051642868199513.a n = A195128 n

end A195128

/-! ## A195128.P1570126138082386769

`floor(sqrt(∑[A195177(n)])+n)`
-/

namespace A195128.P1570126138082386769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n : ℝ)⌋

end

end A195128.P1570126138082386769

namespace A195128

/-- `floor(sqrt(∑[A195177(n)])+n)` -/
def P1570126138082386769.Spec : Prop :=
  ∀ n, P1570126138082386769.a n = A195128 n

end A195128

/-! ## A195128.P6902296698978152116

`comp[A289037(n+1)-2+n]`
-/

namespace A195128.P6902296698978152116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195128.P6902296698978152116

namespace A195128

/-- `comp[A289037(n+1)-2+n]` -/
def P6902296698978152116.Spec : Prop :=
  ∀ n, (P6902296698978152116.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P16831054451414570197

`comp[A188298(2*n+1)+n]`
-/

namespace A195128.P16831054451414570197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195128.P16831054451414570197

namespace A195128

/-- `comp[A188298(2*n+1)+n]` -/
def P16831054451414570197.Spec : Prop :=
  ∀ n, (P16831054451414570197.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P11192481509861175990

`comp[A016777(n)+floor(n*sqrt(2))]`
-/

namespace A195128.P11192481509861175990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195128.P11192481509861175990

namespace A195128

/-- `comp[A016777(n)+floor(n*sqrt(2))]` -/
def P11192481509861175990.Spec : Prop :=
  ∀ n, (P11192481509861175990.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P8202506231291186825

`comp[A001951(n)+2*n+n+1]`
-/

namespace A195128.P8202506231291186825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (2 * n : ℤ) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195128.P8202506231291186825

namespace A195128

/-- `comp[A001951(n)+2*n+n+1]` -/
def P8202506231291186825.Spec : Prop :=
  ∀ n, (P8202506231291186825.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P3173878356568810974

`ceil(A187328(n)+n/A140868(n+1))`
-/

namespace A195128.P3173878356568810974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187328 n : ℚ) + (n : ℚ) / (A140868 (n + 1) : ℚ)⌉

end

end A195128.P3173878356568810974

namespace A195128

/-- `ceil(A187328(n)+n/A140868(n+1))` -/
def P3173878356568810974.Spec : Prop :=
  ∀ n, P3173878356568810974.a n = A195128 n

end A195128

/-! ## A195128.P2259266942838836630

`comp[comp[A187328(n+1)]+1]`
-/

namespace A195128.P2259266942838836630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195128.P2259266942838836630

namespace A195128

/-- `comp[comp[A187328(n+1)]+1]` -/
def P2259266942838836630.Spec : Prop :=
  ∀ n, (P2259266942838836630.a n : ℤ) = A195128 n

end A195128

/-! ## A195128.P16199745798084860268

`abs(A004526(A001951(n))-2*n)`
-/

namespace A195128.P16199745798084860268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004526 (A001951 n).toNat - (2 * n : ℤ)|

end

end A195128.P16199745798084860268

namespace A195128

/-- `abs(A004526(A001951(n))-2*n)` -/
def P16199745798084860268.Spec : Prop :=
  ∀ n, P16199745798084860268.a n = A195128 n

end A195128

/-! ## A195128.P15678848254991184762

`lt[0, A188038(A188042(n+1))]`
-/

namespace A195128.P15678848254991184762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (A188042 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195128.P15678848254991184762

namespace A195128

/-- `lt[0, A188038(A188042(n+1))]` -/
def P15678848254991184762.Spec : Prop :=
  ∀ n, (P15678848254991184762.a n : ℤ) = A195128 n

end A195128

/-!
# A195129: a(n) = 2*n - floor(n*sqrt(1/3)).

The programs for A195129, the canonical program `A195129.P5321639596681128753` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195129 has offset 0).

The definition of A195129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n-floor(n*sqrt(1/3))` (program `A195129.P5321639596681128753`, by `A195129.P5321639596681128753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195129.P5321639596681128753

`2*n-floor(n*sqrt(1/3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195129

/-- `2*n-floor(n*sqrt(1/3))` -/
def P5321639596681128753.Spec : Prop :=
  ∀ n, P5321639596681128753.a n = A195129 n

theorem P5321639596681128753.correct : P5321639596681128753.Spec := by
  intro n
  simp only [A195129]

end A195129

/-! ## A195129.P13807352760137277966

`comp[comp[A198081(n)]+n]`
-/

namespace A195129.P13807352760137277966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195129.P13807352760137277966

namespace A195129

/-- `comp[comp[A198081(n)]+n]` -/
def P13807352760137277966.Spec : Prop :=
  ∀ n, (P13807352760137277966.a n : ℤ) = A195129 n

end A195129

/-! ## A195129.P17298267612325069939

`comp[n+1+comp[A022838(n+1)]]`
-/

namespace A195129.P17298267612325069939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195129.P17298267612325069939

namespace A195129

/-- `comp[n+1+comp[A022838(n+1)]]` -/
def P17298267612325069939.Spec : Prop :=
  ∀ n, (P17298267612325069939.a n : ℤ) = A195129 n

end A195129

/-! ## A195129.P11981006623789302360

`ceil(A005843(n)-sqrt(A000212(n)))`
-/

namespace A195129.P11981006623789302360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 n : ℝ) - Real.sqrt (A000212 n : ℝ)⌉

end

end A195129.P11981006623789302360

namespace A195129

/-- `ceil(A005843(n)-sqrt(A000212(n)))` -/
def P11981006623789302360.Spec : Prop :=
  ∀ n, P11981006623789302360.a n = A195129 n

end A195129

/-! ## A195129.P8675212339497363973

`lcm(A183142(A000007(n)+n)+n+1, A070750(n+1))`
-/

namespace A195129.P8675212339497363973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A183142 (A000007 n + (n : ℤ)).toNat + (n + 1 : ℤ)) (A070750 (n + 1))

end

end A195129.P8675212339497363973

namespace A195129

/-- `lcm(A183142(A000007(n)+n)+n+1, A070750(n+1))` -/
def P8675212339497363973.Spec : Prop :=
  ∀ n, (P8675212339497363973.a n : ℤ) = A195129 n

end A195129

/-! ## A195129.P991706803780731094

`record[A017137(n)%A054406(n+1)]`
-/

namespace A195129.P991706803780731094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017137 n) (A054406 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195129.P991706803780731094

namespace A195129

/-- `record[A017137(n)%A054406(n+1)]` -/
def P991706803780731094.Spec : Prop :=
  ∀ n, P991706803780731094.a n = A195129 n

end A195129

/-! ## A195129.P2526299741549753760

`record[2*A097337(n+1)-A002264(n)]`
-/

namespace A195129.P2526299741549753760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097337 (n + 1) - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195129.P2526299741549753760

namespace A195129

/-- `record[2*A097337(n+1)-A002264(n)]` -/
def P2526299741549753760.Spec : Prop :=
  ∀ n, P2526299741549753760.a n = A195129 n

end A195129

/-! ## A195129.P8227097586451633417

`A002264(A195120(n)+A016825(n))`
-/

namespace A195129.P8227097586451633417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A195120 n + A016825 n).toNat

end

end A195129.P8227097586451633417

namespace A195129

/-- `A002264(A195120(n)+A016825(n))` -/
def P8227097586451633417.Spec : Prop :=
  ∀ n, P8227097586451633417.a n = A195129 n

end A195129

/-! ## A195129.P14665264497332176539

`(2*n-A038128(n))%A093906(n+1)`
-/

namespace A195129.P14665264497332176539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - A038128 n) (A093906 (n + 1))

end

end A195129.P14665264497332176539

namespace A195129

/-- `(2*n-A038128(n))%A093906(n+1)` -/
def P14665264497332176539.Spec : Prop :=
  ∀ n, P14665264497332176539.a n = A195129 n

end A195129

/-! ## A195129.P5094234005803114186

`A014682(4*n+1-(A276883(n+1)-n))`
-/

namespace A195129.P5094234005803114186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((4 * n + 1 : ℤ) - (A276883 (n + 1) - (n : ℤ))).toNat

end

end A195129.P5094234005803114186

namespace A195129

/-- `A014682(4*n+1-(A276883(n+1)-n))` -/
def P5094234005803114186.Spec : Prop :=
  ∀ n, P5094234005803114186.a n = A195129 n

end A195129

/-!
# A195130: Series inversion of A100130.

The programs for A195130, there is no canonical definition to state claims against.
-/

/-! ## A195130.P8409660669378664894

`abs(A005149(n+1))`
-/

namespace A195130.P8409660669378664894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005149 (n + 1)|

end

end A195130.P8409660669378664894

/-! ## A195130.P15369016208749728903

`gcd(A000038(n), A005149(n+1))`
-/

namespace A195130.P15369016208749728903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A005149 (n + 1))

end

end A195130.P15369016208749728903

/-! ## A195130.P13516235322163524195

`lcm(A005149(n+1), A027642(2*n+3))`
-/

namespace A195130.P13516235322163524195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005149 (n + 1)) (A027642 (2 * n + 3))

end

end A195130.P13516235322163524195

/-! ## A195130.P15417815758783830771

`gcd(-A005149(n+1), A007814(2*n+5))`
-/

namespace A195130.P15417815758783830771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A005149 (n + 1)) (A007814 (2 * n + 5))

end

end A195130.P15417815758783830771

/-! ## A195130.P4073017683619790063

`A005149(n+1)*A014103(n+1)/A100130(n+1)`
-/

namespace A195130.P4073017683619790063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005149 (n + 1) * A014103 (n + 1) : ℚ) / (A100130 (n + 1) : ℚ)

end

end A195130.P4073017683619790063

/-!
# A195131: Numbers k such that 666k-1 is prime.

The programs for A195131, there is no canonical definition to state claims against.
-/

/-! ## A195131.P11723217464874841542

`A000203(A063472(n+1))%665`
-/

namespace A195131.P11723217464874841542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A063472 (n + 1)).toNat) 665

end

end A195131.P11723217464874841542

/-!
# A195133: Partial sums of A194577.

The programs for A195133, there is no canonical definition to state claims against.
-/

/-! ## A195133.P1915731145995816392

`∑[A194577(n+1)]`
-/

namespace A195133.P1915731145995816392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195133.P1915731145995816392

/-! ## A195133.P8541791864092974914

`A194577(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A195133.P8541791864092974914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194577 (n + 1) + a (A023443 n).toNat

end

end A195133.P8541791864092974914

/-! ## A195133.P1728932056158216505

`A194577(n+1)+a(sqrt(A000290(n))-1)` with `a(0)=1`
-/

namespace A195133.P1728932056158216505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194577 (n + 1) + a (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ) - 1)).toNat

end

end A195133.P1728932056158216505

/-! ## A195133.P11560069003595796518

`A194577(n+1)+a(n%A005097(n+2)-1)` with `a(0)=1`
-/

namespace A195133.P11560069003595796518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194577 (n + 1) + a (Int.tmod (n : ℤ) (A005097 (n + 2)) - 1).toNat

end

end A195133.P11560069003595796518

/-! ## A195133.P235960513221878413

`A194577(n+1)+a(A028242(2*n+1)-1)` with `a(0)=1`
-/

namespace A195133.P235960513221878413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194577 (n + 1) + a (A028242 (2 * n + 1) - 1).toNat

end

end A195133.P235960513221878413

/-!
# A195135: E.g.f. A(x) satisfies: A(x) = cos(x/A(x)) + sin(x/A(x)).

The programs for A195135, there is no canonical definition to state claims against.
-/

/-! ## A195135.P12989110205979824489

`A237652(n)+A070824(A263075(n))`
-/

namespace A195135.P12989110205979824489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237652 n + A070824 (A263075 n).toNat

end

end A195135.P12989110205979824489

/-!
# A195136: a(n) = ((n+1)^(n-1) + (n-1)^(n-1))/2 for n>=1.

The programs for A195136, the canonical program `A195136.P15582020837702847714` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195136 has offset 1).

The definition of A195136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195136.P15582020837702847714

`((n+2)^n+n^n)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195136

/-- `((n+2)^n+n^n)/2` -/
def P15582020837702847714.Spec : Prop :=
  ∀ n, P15582020837702847714.a n = (A195136 (n + 1) : ℚ)

end A195136

/-! ## A195136.P10431038642367232354

`A274278(n+1)+A000312(n)`
-/

namespace A195136.P10431038642367232354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274278 (n + 1) + A000312 n

end

end A195136.P10431038642367232354

namespace A195136

/-- `A274278(n+1)+A000312(n)` -/
def P10431038642367232354.Spec : Prop :=
  ∀ n, P10431038642367232354.a n = A195136 (n + 1)

end A195136

/-!
# A195137: Primes of the form abs(2^n - prime(n)^2).

The programs for A195137, there is no canonical definition to state claims against.
-/

/-! ## A195137.P15719971603565704636

`record[p?[abs(2^n-A280076(n+1))]]`
-/

namespace A195137.P15719971603565704636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A280076 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195137.P15719971603565704636

/-! ## A195137.P10713503868799525736

`record[A006530(abs(2^(n+1)-A000040(n+1)²))]`
-/

namespace A195137.P10713503868799525736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |(2 ^ (n + 1) : ℤ) - A000040 (n + 1) ^ 2|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195137.P10713503868799525736

/-!
# A195139: First digit to appear n times in the decimal expansion of the golden ratio phi.

The programs for A195139, there is no canonical definition to state claims against.
-/

/-! ## A195139.P8094501386607741057

`gcd(8, A226350(A000041(n)))`
-/

namespace A195139.P8094501386607741057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A226350 (A000041 n).toNat)

end

end A195139.P8094501386607741057

/-! ## A195139.P608654931359345820

`A143025(A004216(3*n+4)*A181848(n+5))`
-/

namespace A195139.P608654931359345820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 (A004216 (3 * n + 4) * A181848 (n + 5)).toNat

end

end A195139.P608654931359345820

/-!
# A195140: Multiples of 5 and odd numbers interleaved.

The programs for A195140, the canonical program `A195140.P3508360453371235933` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195140 has offset 0).

The definition of A195140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195140.P7905777141388977061

`(7+3*(-1)^n)*n/4`
-/

namespace A195140.P7905777141388977061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 + 3 * (-1) ^ n) * (n : ℤ) : ℚ) / 4

end

end A195140.P7905777141388977061

namespace A195140

/-- `(7+3*(-1)^n)*n/4` -/
def P7905777141388977061.Spec : Prop :=
  ∀ n, P7905777141388977061.a n = (A195140 n : ℚ)

theorem P7905777141388977061.correct : P7905777141388977061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195140, Nat.add_sub_cancel, A195140.P7905777141388977061.a, A195140.P3508360453371235933.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195140, Nat.add_sub_cancel, A195140.P7905777141388977061.a, A195140.P3508360453371235933.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195140

/-! ## A195140.P3508360453371235933

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195140

/-- `2*a(n-2)-a(n-4)` -/
def P3508360453371235933.Spec : Prop :=
  ∀ n, P3508360453371235933.a n = A195140 n

theorem P3508360453371235933.correct : P3508360453371235933.Spec := by
  intro n
  simp only [A195140]

end A195140

/-! ## A195140.P2176066878387001774

`4*n-lcm(2, 3*n)/2`
-/

namespace A195140.P2176066878387001774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) - (Nat.lcm 2 (3 * n) : ℚ) / 2

end

end A195140.P2176066878387001774

namespace A195140

/-- `4*n-lcm(2, 3*n)/2` -/
def P2176066878387001774.Spec : Prop :=
  ∀ n, P2176066878387001774.a n = (A195140 n : ℚ)

end A195140

/-! ## A195140.P13171603396690447483

`ogf((x+5x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A195140.P13171603396690447483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 1] [1, 0, -2, 0, 1] n

end

end A195140.P13171603396690447483

namespace A195140

/-- `ogf((x+5x^2+x^3)/(1-2x^2+x^4))` -/
def P13171603396690447483.Spec : Prop :=
  ∀ n, P13171603396690447483.a n = A195140 n

end A195140

/-! ## A195140.P9791192846938057264

`∑[7-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A195140.P9791192846938057264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A195140.P9791192846938057264

namespace A195140

/-- `∑[7-a(n-1)]-a(n-1)` -/
def P9791192846938057264.Spec : Prop :=
  ∀ n, P9791192846938057264.a n = A195140 n

end A195140

/-! ## A195140.P16121396433509952791

`a(n-2)+(n-a(n-1))%3+4` with `a(0)=0, a(1)=1`
-/

namespace A195140.P16121396433509952791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (Int.tmod ((n : ℤ) - a (n - 1)) 3 + 4)

end

end A195140.P16121396433509952791

namespace A195140

/-- `a(n-2)+(n-a(n-1))%3+4` -/
def P16121396433509952791.Spec : Prop :=
  ∀ n, P16121396433509952791.a n = A195140 n

end A195140

/-! ## A195140.P17187721719526723996

`4-((a(n-1)-n)%3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A195140.P17187721719526723996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - (Int.tmod (a (n - 1) - (n : ℤ)) 3 - a (n - 2))

end

end A195140.P17187721719526723996

namespace A195140

/-- `4-((a(n-1)-n)%3-a(n-2))` -/
def P17187721719526723996.Spec : Prop :=
  ∀ n, P17187721719526723996.a n = A195140 n

end A195140

/-! ## A195140.P9033762618539002195

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A195140.P9033762618539002195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 3] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A195140.P9033762618539002195

namespace A195140

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P9033762618539002195.Spec : Prop :=
  ∀ n, P9033762618539002195.a n = A195140 n

theorem P9033762618539002195.correct : P9033762618539002195.Spec := by
  intro n
  simp only [A195140, Nat.add_sub_cancel, A195140.P9033762618539002195.a, A195140.P3508360453371235933.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195140

/-! ## A195140.P12957123359437490617

`floor(a(n-2)-(a(n-4)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A195140.P12957123359437490617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 3] fun n a =>
  a (n - 2) - (a (n - 4) - a (n - 2))

end

end A195140.P12957123359437490617

namespace A195140

/-- `floor(a(n-2)-(a(n-4)-a(n-2)))` -/
def P12957123359437490617.Spec : Prop :=
  ∀ n, P12957123359437490617.a n = A195140 n

theorem P12957123359437490617.correct : P12957123359437490617.Spec := by
  intro n
  simp only [A195140, Nat.add_sub_cancel, A195140.P12957123359437490617.a, A195140.P3508360453371235933.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195140

/-! ## A195140.P3832332798871441383

`2*n-A176447(n)`
-/

namespace A195140.P3832332798871441383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A176447 n

end

end A195140.P3832332798871441383

namespace A195140

/-- `2*n-A176447(n)` -/
def P3832332798871441383.Spec : Prop :=
  ∀ n, P3832332798871441383.a n = A195140 n

end A195140

/-! ## A195140.P18327301926298044775

`3*n-A064680(n)`
-/

namespace A195140.P18327301926298044775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A064680 n

end

end A195140.P18327301926298044775

namespace A195140

/-- `3*n-A064680(n)` -/
def P18327301926298044775.Spec : Prop :=
  ∀ n, P18327301926298044775.a n = A195140 n

end A195140

/-! ## A195140.P6793798271305288283

`4*n-A165351(n)`
-/

namespace A195140.P6793798271305288283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A165351 n

end

end A195140.P6793798271305288283

namespace A195140

/-- `4*n-A165351(n)` -/
def P6793798271305288283.Spec : Prop :=
  ∀ n, P6793798271305288283.a n = A195140 n

end A195140

/-! ## A195140.P10215909052352052723

`A142150(n)+A022998(n)`
-/

namespace A195140.P10215909052352052723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A022998 n

end

end A195140.P10215909052352052723

namespace A195140

/-- `A142150(n)+A022998(n)` -/
def P10215909052352052723.Spec : Prop :=
  ∀ n, P10215909052352052723.a n = A195140 n

end A195140

/-! ## A195140.P11127210292132456177

`A165355(n)-A008619(n)`
-/

namespace A195140.P11127210292132456177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n - A008619 n

end

end A195140.P11127210292132456177

namespace A195140

/-- `A165355(n)-A008619(n)` -/
def P11127210292132456177.Spec : Prop :=
  ∀ n, P11127210292132456177.a n = A195140 n

end A195140

/-! ## A195140.P7906417292712001381

`A079524(n)-A174474(n)`
-/

namespace A195140.P7906417292712001381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n - A174474 n

end

end A195140.P7906417292712001381

namespace A195140

/-- `A079524(n)-A174474(n)` -/
def P7906417292712001381.Spec : Prop :=
  ∀ n, P7906417292712001381.a n = A195140 n

end A195140

/-!
# A195141: First digit to appear n times in the decimal expansion of square root of 2.

The programs for A195141, there is no canonical definition to state claims against.
-/

/-! ## A195141.P10079038104998285364

`A010075(∑{d}[A355588(2*(n+2)), #])`
-/

namespace A195141.P10079038104998285364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010075 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A195141.P10079038104998285364

/-! ## A195141.P15233068799010934444

`A320036(3^round(2^(ceil(log2(n+1))-2)))`
-/

namespace A195141.P15233068799010934444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320036 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 2 : ℤ)) : ℤ))).toNat

end

end A195141.P15233068799010934444

/-! ## A195141.P2600667201304262451

`A231786(A286865(n))`
-/

namespace A195141.P2600667201304262451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231786 (A286865 n).toNat

end

end A195141.P2600667201304262451

/-!
# A195142: Concentric 10-gonal numbers.

The programs for A195142, the canonical program `A195142.P4354517717115517551` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195142 has offset 0).

The definition of A195142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195142.P4354517717115517551

`a(n-2)+10*(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195142

/-- `a(n-2)+10*(n-1)` -/
def P4354517717115517551.Spec : Prop :=
  ∀ n, P4354517717115517551.a n = A195142 n

theorem P4354517717115517551.correct : P4354517717115517551.Spec := by
  intro n
  simp only [A195142]

end A195142

/-! ## A195142.P1119683281058174779

`(10*n²+3*(-1)^n-3)/4`
-/

namespace A195142.P1119683281058174779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℚ) / 4

end

end A195142.P1119683281058174779

namespace A195142

/-- `(10*n²+3*(-1)^n-3)/4` -/
def P1119683281058174779.Spec : Prop :=
  ∀ n, P1119683281058174779.a n = (A195142 n : ℚ)

theorem P1119683281058174779.correct : P1119683281058174779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A195142, Nat.add_sub_cancel, A195142.P1119683281058174779.a, A195142.P4354517717115517551.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A195142, Nat.add_sub_cancel, A195142.P1119683281058174779.a, A195142.P4354517717115517551.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195142

/-! ## A195142.P8654561680097849750

`∑[a(n-2)+10]` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A195142.P8654561680097849750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195142.P8654561680097849750

namespace A195142

/-- `∑[a(n-2)+10]` -/
def P8654561680097849750.Spec : Prop :=
  ∀ n, (P8654561680097849750.a n : ℤ) = A195142 n

end A195142

/-! ## A195142.P17628922424435062984

`∑[∑[10-a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A195142.P17628922424435062984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195142.P17628922424435062984

namespace A195142

/-- `∑[∑[10-a(n-1)]]` -/
def P17628922424435062984.Spec : Prop :=
  ∀ n, P17628922424435062984.a n = A195142 n

end A195142

/-! ## A195142.P4644259862261061443

`A195015(n)-n`
-/

namespace A195142.P4644259862261061443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 n - (n : ℤ)

end

end A195142.P4644259862261061443

namespace A195142

/-- `A195015(n)-n` -/
def P4644259862261061443.Spec : Prop :=
  ∀ n, P4644259862261061443.a n = A195142 n

end A195142

/-! ## A195142.P14818492863278478316

`ceil(A195148(n)/2)`
-/

namespace A195142.P14818492863278478316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195148 n : ℚ) / 2⌉

end

end A195142.P14818492863278478316

namespace A195142

/-- `ceil(A195148(n)/2)` -/
def P14818492863278478316.Spec : Prop :=
  ∀ n, P14818492863278478316.a n = A195142 n

end A195142

/-! ## A195142.P7161990937257160998

`A319127(n+1)+n²`
-/

namespace A195142.P7161990937257160998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + (n ^ 2 : ℤ)

end

end A195142.P7161990937257160998

namespace A195142

/-- `A319127(n+1)+n²` -/
def P7161990937257160998.Spec : Prop :=
  ∀ n, P7161990937257160998.a n = A195142 n

end A195142

/-! ## A195142.P6828239426186871531

`A077221(n)+A007590(n)`
-/

namespace A195142.P6828239426186871531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n + A007590 n

end

end A195142.P6828239426186871531

namespace A195142

/-- `A077221(n)+A007590(n)` -/
def P6828239426186871531.Spec : Prop :=
  ∀ n, P6828239426186871531.a n = A195142 n

end A195142

/-! ## A195142.P8367832284367080122

`A097063(n)+A056220(n)`
-/

namespace A195142.P8367832284367080122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 n + A056220 n

end

end A195142.P8367832284367080122

namespace A195142

/-- `A097063(n)+A056220(n)` -/
def P8367832284367080122.Spec : Prop :=
  ∀ n, P8367832284367080122.a n = A195142 n

end A195142

/-! ## A195142.P12624104994107532587

`A168237(n)+A000566(n)`
-/

namespace A195142.P12624104994107532587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A000566 n

end

end A195142.P12624104994107532587

namespace A195142

/-- `A168237(n)+A000566(n)` -/
def P12624104994107532587.Spec : Prop :=
  ∀ n, P12624104994107532587.a n = A195142 n

end A195142

/-! ## A195142.P2200875318511439492

`A195042(n)+A002620(n)`
-/

namespace A195142.P2200875318511439492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195042 n + A002620 n

end

end A195142.P2200875318511439492

namespace A195142

/-- `A195042(n)+A002620(n)` -/
def P2200875318511439492.Spec : Prop :=
  ∀ n, P2200875318511439492.a n = A195142 n

end A195142

/-! ## A195142.P16472835723863730681

`A161680(n)+A139591(n)`
-/

namespace A195142.P16472835723863730681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A139591 n

end

end A195142.P16472835723863730681

namespace A195142

/-- `A161680(n)+A139591(n)` -/
def P16472835723863730681.Spec : Prop :=
  ∀ n, P16472835723863730681.a n = A195142 n

end A195142

/-! ## A195142.P12201633245506599793

`A242477(n)+A195041(n)`
-/

namespace A195142.P12201633245506599793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A195041 n

end

end A195142.P12201633245506599793

namespace A195142

/-- `A242477(n)+A195041(n)` -/
def P12201633245506599793.Spec : Prop :=
  ∀ n, P12201633245506599793.a n = A195142 n

end A195142

/-! ## A195142.P8887875422411850750

`A032526(n)-A000035(n)`
-/

namespace A195142.P8887875422411850750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n - A000035 n

end

end A195142.P8887875422411850750

namespace A195142

/-- `A032526(n)-A000035(n)` -/
def P8887875422411850750.Spec : Prop :=
  ∀ n, P8887875422411850750.a n = A195142 n

end A195142

/-! ## A195142.P1483309333692513497

`A005475(n)-A030451(n)`
-/

namespace A195142.P1483309333692513497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A030451 n

end

end A195142.P1483309333692513497

namespace A195142

/-- `A005475(n)-A030451(n)` -/
def P1483309333692513497.Spec : Prop :=
  ∀ n, P1483309333692513497.a n = A195142 n

end A195142

/-! ## A195142.P3712725384091586406

`A116668(n)-A052938(n)`
-/

namespace A195142.P3712725384091586406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n - A052938 n

end

end A195142.P3712725384091586406

namespace A195142

/-- `A116668(n)-A052938(n)` -/
def P3712725384091586406.Spec : Prop :=
  ∀ n, P3712725384091586406.a n = A195142 n

end A195142

/-! ## A195142.P18261129237492727210

`A195043(n)-A002620(n)`
-/

namespace A195142.P18261129237492727210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n - A002620 n

end

end A195142.P18261129237492727210

namespace A195142

/-- `A195043(n)-A002620(n)` -/
def P18261129237492727210.Spec : Prop :=
  ∀ n, P18261129237492727210.a n = A195142 n

end A195142

/-! ## A195142.P2638902072012602205

`A062728(n)-A139597(n)`
-/

namespace A195142.P2638902072012602205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n - A139597 n

end

end A195142.P2638902072012602205

namespace A195142

/-- `A062728(n)-A139597(n)` -/
def P2638902072012602205.Spec : Prop :=
  ∀ n, P2638902072012602205.a n = A195142 n

end A195142

/-! ## A195142.P2460707243623026310

`A195143(n)-A007590(n)`
-/

namespace A195142.P2460707243623026310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n - A007590 n

end

end A195142.P2460707243623026310

namespace A195142

/-- `A195143(n)-A007590(n)` -/
def P2460707243623026310.Spec : Prop :=
  ∀ n, P2460707243623026310.a n = A195142 n

end A195142

/-! ## A195142.P17550945679775630901

`A085490(n)-A212963(n)`
-/

namespace A195142.P17550945679775630901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n - A212963 n

end

end A195142.P17550945679775630901

namespace A195142

/-- `A085490(n)-A212963(n)` -/
def P17550945679775630901.Spec : Prop :=
  ∀ n, P17550945679775630901.a n = A195142 n

end A195142

/-!
# A195143: a(n) = n-th concentric 12-gonal number.

The programs for A195143, the canonical program `A195143.P2466939833330599990` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195143 has offset 0).

The definition of A195143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195143.P2466939833330599990

`3*n²+(-1)^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195143

/-- `3*n²+(-1)^n-1` -/
def P2466939833330599990.Spec : Prop :=
  ∀ n, P2466939833330599990.a n = A195143 n

theorem P2466939833330599990.correct : P2466939833330599990.Spec := by
  intro n
  simp only [A195143]

end A195143

/-! ## A195143.P12004528627893850568

`and(3*n², -3)`
-/

namespace A195143.P12004528627893850568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n ^ 2 : ℤ) (-3)

end

end A195143.P12004528627893850568

namespace A195143

/-- `and(3*n², -3)` -/
def P12004528627893850568.Spec : Prop :=
  ∀ n, P12004528627893850568.a n = A195143 n

end A195143

/-! ## A195143.P15463190378918900942

`xor(2, or(2, 3*n²))`
-/

namespace A195143.P15463190378918900942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (3 * n ^ 2))

end

end A195143.P15463190378918900942

namespace A195143

/-- `xor(2, or(2, 3*n²))` -/
def P15463190378918900942.Spec : Prop :=
  ∀ n, (P15463190378918900942.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P8831515106066383497

`∑[a(n-2)+12]` with `a(0)=0, a(1)=1, a(2)=11`
-/

namespace A195143.P8831515106066383497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195143.P8831515106066383497

namespace A195143

/-- `∑[a(n-2)+12]` -/
def P8831515106066383497.Spec : Prop :=
  ∀ n, (P8831515106066383497.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P10554947587489674663

`xor(2, xor(1, 3*n²)+1)`
-/

namespace A195143.P10554947587489674663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor 1 (3 * n ^ 2) + 1)

end

end A195143.P10554947587489674663

namespace A195143

/-- `xor(2, xor(1, 3*n²)+1)` -/
def P10554947587489674663.Spec : Prop :=
  ∀ n, (P10554947587489674663.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P14493096165863218914

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=1, a(2)=10, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A195143.P14493096165863218914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 10, 2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195143.P14493096165863218914

namespace A195143

/-- `∑[∑[floor(a(n-2))]]` -/
def P14493096165863218914.Spec : Prop :=
  ∀ n, (P14493096165863218914.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P3433426572133717982

`∑[∑[2*gcd(5, a(n-2))]]` with `a(0)=0, a(1)=1`
-/

namespace A195143.P3433426572133717982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * Nat.gcd 5 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195143.P3433426572133717982

namespace A195143

/-- `∑[∑[2*gcd(5, a(n-2))]]` -/
def P3433426572133717982.Spec : Prop :=
  ∀ n, (P3433426572133717982.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P18192256894054655825

`ceil(A195158(n)/2)`
-/

namespace A195143.P18192256894054655825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195158 n : ℚ) / 2⌉

end

end A195143.P18192256894054655825

namespace A195143

/-- `ceil(A195158(n)/2)` -/
def P18192256894054655825.Spec : Prop :=
  ∀ n, P18192256894054655825.a n = A195143 n

end A195143

/-! ## A195143.P7292261527948783908

`∑[record[n*A110161(n)]]`
-/

namespace A195143.P7292261527948783908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A110161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195143.P7292261527948783908

namespace A195143

/-- `∑[record[n*A110161(n)]]` -/
def P7292261527948783908.Spec : Prop :=
  ∀ n, P7292261527948783908.a n = A195143 n

end A195143

/-! ## A195143.P14273154186500982172

`(A195148(n)+n²)/2`
-/

namespace A195143.P14273154186500982172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195148 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A195143.P14273154186500982172

namespace A195143

/-- `(A195148(n)+n²)/2` -/
def P14273154186500982172.Spec : Prop :=
  ∀ n, P14273154186500982172.a n = (A195143 n : ℚ)

end A195143

/-! ## A195143.P4068200606566294543

`A110907(n)%A010002(n)`
-/

namespace A195143.P4068200606566294543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110907 n) (A010002 n)

end

end A195143.P4068200606566294543

namespace A195143

/-- `A110907(n)%A010002(n)` -/
def P4068200606566294543.Spec : Prop :=
  ∀ n, P4068200606566294543.a n = A195143 n

end A195143

/-! ## A195143.P17867409042724057333

`A175112(n)%A010001(n)`
-/

namespace A195143.P17867409042724057333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175112 n) (A010001 n)

end

end A195143.P17867409042724057333

namespace A195143

/-- `A175112(n)%A010001(n)` -/
def P17867409042724057333.Spec : Prop :=
  ∀ n, P17867409042724057333.a n = A195143 n

end A195143

/-! ## A195143.P10463338281547289239

`xor(A010673(n), A033428(n))`
-/

namespace A195143.P10463338281547289239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A033428 n)

end

end A195143.P10463338281547289239

namespace A195143

/-- `xor(A010673(n), A033428(n))` -/
def P10463338281547289239.Spec : Prop :=
  ∀ n, P10463338281547289239.a n = A195143 n

end A195143

/-! ## A195143.P11642064407420339792

`xor(A010686(n), A056107(n))`
-/

namespace A195143.P11642064407420339792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010686 n) (A056107 n)

end

end A195143.P11642064407420339792

namespace A195143

/-- `xor(A010686(n), A056107(n))` -/
def P11642064407420339792.Spec : Prop :=
  ∀ n, P11642064407420339792.a n = A195143 n

end A195143

/-! ## A195143.P14739732545148286719

`xor(A005918(n), A382713(n))`
-/

namespace A195143.P14739732545148286719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005918 n) (A382713 n)

end

end A195143.P14739732545148286719

namespace A195143

/-- `xor(A005918(n), A382713(n))` -/
def P14739732545148286719.Spec : Prop :=
  ∀ n, P14739732545148286719.a n = A195143 n

end A195143

/-! ## A195143.P4088625479331619050

`xor(A010675(n), A397444(n))`
-/

namespace A195143.P4088625479331619050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A397444 n)

end

end A195143.P4088625479331619050

namespace A195143

/-- `xor(A010675(n), A397444(n))` -/
def P4088625479331619050.Spec : Prop :=
  ∀ n, P4088625479331619050.a n = A195143 n

end A195143

/-! ## A195143.P4994365310915299652

`A103532(n)%A382973(n+1)`
-/

namespace A195143.P4994365310915299652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103532 n) (A382973 (n + 1))

end

end A195143.P4994365310915299652

namespace A195143

/-- `A103532(n)%A382973(n+1)` -/
def P4994365310915299652.Spec : Prop :=
  ∀ n, P4994365310915299652.a n = A195143 n

end A195143

/-! ## A195143.P14576144213755554275

`∪[A069190(n+1), A135453(n)]`
-/

namespace A195143.P14576144213755554275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195143.P14576144213755554275

namespace A195143

/-- `∪[A069190(n+1), A135453(n)]` -/
def P14576144213755554275.Spec : Prop :=
  ∀ n, (P14576144213755554275.a n : ℤ) = A195143 n

end A195143

/-! ## A195143.P343440324723370865

`A112652(n²)`
-/

namespace A195143.P343440324723370865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (n ^ 2)

end

end A195143.P343440324723370865

namespace A195143

/-- `A112652(n²)` -/
def P343440324723370865.Spec : Prop :=
  ∀ n, P343440324723370865.a n = A195143 n

end A195143

/-!
# A195145: Concentric 14-gonal numbers.

The programs for A195145, the canonical program `A195145.P5155156773396495180` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195145 has offset 0).

The definition of A195145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195145.P5155156773396495180

`(14*n²+5*(-1)^n-5)/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195145

/-- `(14*n²+5*(-1)^n-5)/4` -/
def P5155156773396495180.Spec : Prop :=
  ∀ n, P5155156773396495180.a n = (A195145 n : ℚ)

end A195145

/-! ## A195145.P9186556820475420348

`∑[a(n-2)+14]` with `a(0)=0, a(1)=1, a(2)=13`
-/

namespace A195145.P9186556820475420348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 13] fun n f1 =>
  f1 (n - 2) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195145.P9186556820475420348

namespace A195145

/-- `∑[a(n-2)+14]` -/
def P9186556820475420348.Spec : Prop :=
  ∀ n, (P9186556820475420348.a n : ℤ) = A195145 n

end A195145

/-! ## A195145.P13372155154958795018

`a(n-2)+2*(n-1)*7` with `a(0)=0, a(1)=1`
-/

namespace A195145.P13372155154958795018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 1) * 7

end

end A195145.P13372155154958795018

namespace A195145

/-- `a(n-2)+2*(n-1)*7` -/
def P13372155154958795018.Spec : Prop :=
  ∀ n, P13372155154958795018.a n = A195145 n

end A195145

/-! ## A195145.P16552404657375503671

`∑[A147832(n+1)]-n`
-/

namespace A195145.P16552404657375503671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A195145.P16552404657375503671

namespace A195145

/-- `∑[A147832(n+1)]-n` -/
def P16552404657375503671.Spec : Prop :=
  ∀ n, P16552404657375503671.a n = A195145 n

end A195145

/-! ## A195145.P10037349936913059495

`∑[(14*n)%A113801(n+1)]`
-/

namespace A195145.P10037349936913059495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (14 * n : ℤ) (A113801 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195145.P10037349936913059495

namespace A195145

/-- `∑[(14*n)%A113801(n+1)]` -/
def P10037349936913059495.Spec : Prop :=
  ∀ n, P10037349936913059495.a n = A195145 n

end A195145

/-! ## A195145.P6753342157559290615

`A195045(n)+A002620(n)`
-/

namespace A195145.P6753342157559290615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195045 n + A002620 n

end

end A195145.P6753342157559290615

namespace A195145

/-- `A195045(n)+A002620(n)` -/
def P6753342157559290615.Spec : Prop :=
  ∀ n, P6753342157559290615.a n = A195145 n

end A195145

/-! ## A195145.P9655874878633370744

`A195143(n)+A007590(n)`
-/

namespace A195145.P9655874878633370744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + A007590 n

end

end A195145.P9655874878633370744

namespace A195145

/-- `A195143(n)+A007590(n)` -/
def P9655874878633370744.Spec : Prop :=
  ∀ n, P9655874878633370744.a n = A195145 n

end A195145

/-! ## A195145.P7662616165767488864

`A242477(n)+A195043(n)`
-/

namespace A195145.P7662616165767488864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A195043 n

end

end A195145.P7662616165767488864

namespace A195145

/-- `A242477(n)+A195043(n)` -/
def P7662616165767488864.Spec : Prop :=
  ∀ n, P7662616165767488864.a n = A195145 n

end A195145

/-! ## A195145.P9689110346519345744

`A032525(n)-A010673(n)`
-/

namespace A195145.P9689110346519345744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n - A010673 n

end

end A195145.P9689110346519345744

namespace A195145

/-- `A032525(n)-A010673(n)` -/
def P9689110346519345744.Spec : Prop :=
  ∀ n, P9689110346519345744.a n = A195145 n

end A195145

/-! ## A195145.P12352349821737997992

`A195046(n)-A002620(n)`
-/

namespace A195145.P12352349821737997992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195046 n - A002620 n

end

end A195145.P12352349821737997992

namespace A195145

/-- `A195046(n)-A002620(n)` -/
def P12352349821737997992.Spec : Prop :=
  ∀ n, P12352349821737997992.a n = A195145 n

end A195145

/-! ## A195145.P3262772483175993689

`A195146(n)-A007590(n)`
-/

namespace A195145.P3262772483175993689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 n - A007590 n

end

end A195145.P3262772483175993689

namespace A195145

/-- `A195146(n)-A007590(n)` -/
def P3262772483175993689.Spec : Prop :=
  ∀ n, P3262772483175993689.a n = A195145 n

end A195145

/-! ## A195145.P18042443471694227934

`A016742(n)-A245581(n)`
-/

namespace A195145.P18042443471694227934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n - A245581 n

end

end A195145.P18042443471694227934

namespace A195145

/-- `A016742(n)-A245581(n)` -/
def P18042443471694227934.Spec : Prop :=
  ∀ n, P18042443471694227934.a n = A195145 n

end A195145

/-! ## A195145.P10448036955716748870

`A204467(n)-A081352(n)`
-/

namespace A195145.P10448036955716748870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 n - A081352 n

end

end A195145.P10448036955716748870

namespace A195145

/-- `A204467(n)-A081352(n)` -/
def P10448036955716748870.Spec : Prop :=
  ∀ n, P10448036955716748870.a n = A195145 n

end A195145

/-! ## A195145.P5568805162338089949

`A195047(n)-A242477(n)`
-/

namespace A195145.P5568805162338089949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195047 n - A242477 n

end

end A195145.P5568805162338089949

namespace A195145

/-- `A195047(n)-A242477(n)` -/
def P5568805162338089949.Spec : Prop :=
  ∀ n, P5568805162338089949.a n = A195145 n

end A195145

/-! ## A195145.P9706933558089753873

`A319127(n+1)+A077221(n)`
-/

namespace A195145.P9706933558089753873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A077221 n

end

end A195145.P9706933558089753873

namespace A195145

/-- `A319127(n+1)+A077221(n)` -/
def P9706933558089753873.Spec : Prop :=
  ∀ n, P9706933558089753873.a n = A195145 n

end A195145

/-! ## A195145.P12563276268748658852

`A024966(n)-A047335(n+1)`
-/

namespace A195145.P12563276268748658852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - A047335 (n + 1)

end

end A195145.P12563276268748658852

namespace A195145

/-- `A024966(n)-A047335(n+1)` -/
def P12563276268748658852.Spec : Prop :=
  ∀ n, P12563276268748658852.a n = A195145 n

end A195145

/-! ## A195145.P4730756050257422910

`A179986(n)-A168284(n+1)`
-/

namespace A195145.P4730756050257422910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n - A168284 (n + 1)

end

end A195145.P4730756050257422910

namespace A195145

/-- `A179986(n)-A168284(n+1)` -/
def P4730756050257422910.Spec : Prop :=
  ∀ n, P4730756050257422910.a n = A195145 n

end A195145

/-! ## A195145.P3813615365226407457

`A195148(n)-A319127(n+1)`
-/

namespace A195145.P3813615365226407457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n - A319127 (n + 1)

end

end A195145.P3813615365226407457

namespace A195145

/-- `A195148(n)-A319127(n+1)` -/
def P3813615365226407457.Spec : Prop :=
  ∀ n, P3813615365226407457.a n = A195145 n

end A195145

/-! ## A195145.P15466920636433134167

`and(1-A010702(n), A032525(n))`
-/

namespace A195145.P15466920636433134167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A010702 n) (A032525 n)

end

end A195145.P15466920636433134167

namespace A195145

/-- `and(1-A010702(n), A032525(n))` -/
def P15466920636433134167.Spec : Prop :=
  ∀ n, P15466920636433134167.a n = A195145 n

end A195145

/-! ## A195145.P2038247782491635217

`∪[A195314(n+1), A144555(n)]`
-/

namespace A195145.P2038247782491635217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195145.P2038247782491635217

namespace A195145

/-- `∪[A195314(n+1), A144555(n)]` -/
def P2038247782491635217.Spec : Prop :=
  ∀ n, (P2038247782491635217.a n : ℤ) = A195145 n

end A195145

/-!
# A195146: Concentric 16-gonal numbers.

The programs for A195146, the canonical program `A195146.P1828332237373484588` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195146 has offset 0).

The definition of A195146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195146.P1828332237373484588

`(8*n²+3*(-1)^n-3)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195146

/-- `(8*n²+3*(-1)^n-3)/2` -/
def P1828332237373484588.Spec : Prop :=
  ∀ n, P1828332237373484588.a n = (A195146 n : ℚ)

end A195146

/-! ## A195146.P8429905022389225646

`∑[a(n-2)+16]` with `a(0)=0, a(1)=1, a(2)=15`
-/

namespace A195146.P8429905022389225646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 15] fun n f1 =>
  f1 (n - 2) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195146.P8429905022389225646

namespace A195146

/-- `∑[a(n-2)+16]` -/
def P8429905022389225646.Spec : Prop :=
  ∀ n, (P8429905022389225646.a n : ℤ) = A195146 n

end A195146

/-! ## A195146.P1176710421885408209

`(2*n)²-3*n%2`
-/

namespace A195146.P1176710421885408209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((3 * (n % 2) : ℕ) : ℤ)

end

end A195146.P1176710421885408209

namespace A195146

/-- `(2*n)²-3*n%2` -/
def P1176710421885408209.Spec : Prop :=
  ∀ n, P1176710421885408209.a n = A195146 n

end A195146

/-! ## A195146.P11892829743223339419

`(2*n)²-3*and(1, n)`
-/

namespace A195146.P11892829743223339419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (3 * Nat.land 1 n : ℤ)

end

end A195146.P11892829743223339419

namespace A195146

/-- `(2*n)²-3*and(1, n)` -/
def P11892829743223339419.Spec : Prop :=
  ∀ n, P11892829743223339419.a n = A195146 n

end A195146

/-! ## A195146.P2679201128781834486

`(2*n)²-xor(2, gcd(2, n))`
-/

namespace A195146.P2679201128781834486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.xor 2 (Nat.gcd 2 n) : ℤ)

end

end A195146.P2679201128781834486

namespace A195146

/-- `(2*n)²-xor(2, gcd(2, n))` -/
def P2679201128781834486.Spec : Prop :=
  ∀ n, P2679201128781834486.a n = A195146 n

end A195146

/-! ## A195146.P17274035120394614419

`xor(5*and(1, n), (2*n)²)`
-/

namespace A195146.P17274035120394614419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 * Nat.land 1 n) ((2 * n) ^ 2)

end

end A195146.P17274035120394614419

namespace A195146

/-- `xor(5*and(1, n), (2*n)²)` -/
def P17274035120394614419.Spec : Prop :=
  ∀ n, (P17274035120394614419.a n : ℤ) = A195146 n

end A195146

/-! ## A195146.P11538848659903431751

`2*∑[record[and(n, -7)]]-n`
-/

namespace A195146.P11538848659903431751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A195146.P11538848659903431751

namespace A195146

/-- `2*∑[record[and(n, -7)]]-n` -/
def P11538848659903431751.Spec : Prop :=
  ∀ n, P11538848659903431751.a n = A195146 n

end A195146

/-! ## A195146.P2143096441670875049

`2*∑[record[or(6, n)-6]]-n`
-/

namespace A195146.P2143096441670875049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A195146.P2143096441670875049

namespace A195146

/-- `2*∑[record[or(6, n)-6]]-n` -/
def P2143096441670875049.Spec : Prop :=
  ∀ n, P2143096441670875049.a n = A195146 n

end A195146

/-! ## A195146.P5079773609569594668

`∑[∑[2*gcd(7, a(n-2))]]` with `a(0)=0, a(1)=1`
-/

namespace A195146.P5079773609569594668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * Nat.gcd 7 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195146.P5079773609569594668

namespace A195146

/-- `∑[∑[2*gcd(7, a(n-2))]]` -/
def P5079773609569594668.Spec : Prop :=
  ∀ n, (P5079773609569594668.a n : ℤ) = A195146 n

end A195146

/-! ## A195146.P4403329892098482626

`(2*n)²-C(3, gcd(4, 2*n))`
-/

namespace A195146.P4403329892098482626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose 3 (Nat.gcd 4 (2 * n)) : ℤ)

end

end A195146.P4403329892098482626

namespace A195146

/-- `(2*n)²-C(3, gcd(4, 2*n))` -/
def P4403329892098482626.Spec : Prop :=
  ∀ n, P4403329892098482626.a n = A195146 n

end A195146

/-! ## A195146.P17125975752564069539

`(2*n)²-∑[-a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A195146.P17125975752564069539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195146.P17125975752564069539

namespace A195146

/-- `(2*n)²-∑[-a(n-1)]` -/
def P17125975752564069539.Spec : Prop :=
  ∀ n, P17125975752564069539.a n = A195146 n

end A195146

/-! ## A195146.P16698046979248763268

`a(n-2)+4*4*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A195146.P16698046979248763268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 4 * (4 * ((n : ℤ) - 1))

end

end A195146.P16698046979248763268

namespace A195146

/-- `a(n-2)+4*4*(n-1)` -/
def P16698046979248763268.Spec : Prop :=
  ∀ n, P16698046979248763268.a n = A195146 n

end A195146

/-! ## A195146.P10183385412410768221

`2*∑[∑[∑[ogf((x+7x^2)/(1+x))]]]-n`
-/

namespace A195146.P10183385412410768221
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A195146.P10183385412410768221

namespace A195146

/-- `2*∑[∑[∑[ogf((x+7x^2)/(1+x))]]]-n` -/
def P10183385412410768221.Spec : Prop :=
  ∀ n, P10183385412410768221.a n = A195146 n

end A195146

/-! ## A195146.P4654407755215920304

`(2*n)²+1-gcd(n+1, n-1)²`
-/

namespace A195146.P4654407755215920304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + (1 - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2 : ℤ))

end

end A195146.P4654407755215920304

namespace A195146

/-- `(2*n)²+1-gcd(n+1, n-1)²` -/
def P4654407755215920304.Spec : Prop :=
  ∀ n, P4654407755215920304.a n = A195146 n

end A195146

/-! ## A195146.P294377614684424955

`2*A139591(n)-n`
-/

namespace A195146.P294377614684424955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139591 n - (n : ℤ)

end

end A195146.P294377614684424955

namespace A195146

/-- `2*A139591(n)-n` -/
def P294377614684424955.Spec : Prop :=
  ∀ n, P294377614684424955.a n = A195146 n

end A195146

/-! ## A195146.P10633342984625639907

`(2*n)²-A010674(n)`
-/

namespace A195146.P10633342984625639907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A010674 n

end

end A195146.P10633342984625639907

namespace A195146

/-- `(2*n)²-A010674(n)` -/
def P10633342984625639907.Spec : Prop :=
  ∀ n, P10633342984625639907.a n = A195146 n

end A195146

/-! ## A195146.P9611835038428516428

`2*A195142(n)-n²`
-/

namespace A195146.P9611835038428516428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195142 n - (n ^ 2 : ℤ)

end

end A195146.P9611835038428516428

namespace A195146

/-- `2*A195142(n)-n²` -/
def P9611835038428516428.Spec : Prop :=
  ∀ n, P9611835038428516428.a n = A195146 n

end A195146

/-! ## A195146.P8748071928415215148

`xor((2*n)², A010676(n))`
-/

namespace A195146.P8748071928415215148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * n) ^ 2 : ℤ) (A010676 n)

end

end A195146.P8748071928415215148

namespace A195146

/-- `xor((2*n)², A010676(n))` -/
def P8748071928415215148.Spec : Prop :=
  ∀ n, P8748071928415215148.a n = A195146 n

end A195146

/-! ## A195146.P3220917505706609295

`n²+2*A319127(n+1)`
-/

namespace A195146.P3220917505706609295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A319127 (n + 1)

end

end A195146.P3220917505706609295

namespace A195146

/-- `n²+2*A319127(n+1)` -/
def P3220917505706609295.Spec : Prop :=
  ∀ n, P3220917505706609295.a n = A195146 n

end A195146

/-! ## A195146.P4972894336168507094

`∑[2*A047393(n+1)]-n`
-/

namespace A195146.P4972894336168507094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A195146.P4972894336168507094

namespace A195146

/-- `∑[2*A047393(n+1)]-n` -/
def P4972894336168507094.Spec : Prop :=
  ∀ n, P4972894336168507094.a n = A195146 n

end A195146

/-!
# A195147: Concentric 18-gonal numbers.

The programs for A195147, the canonical program `A195147.P551270443851648918` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195147 has offset 0).

The definition of A195147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195147.P551270443851648918

`(18*n²+7*(-1)^n-7)/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195147

/-- `(18*n²+7*(-1)^n-7)/4` -/
def P551270443851648918.Spec : Prop :=
  ∀ n, P551270443851648918.a n = (A195147 n : ℚ)

end A195147

/-! ## A195147.P330200562253588664

`∑[a(n-2)+18]` with `a(0)=0, a(1)=1, a(2)=17`
-/

namespace A195147.P330200562253588664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 17] fun n f1 =>
  f1 (n - 2) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195147.P330200562253588664

namespace A195147

/-- `∑[a(n-2)+18]` -/
def P330200562253588664.Spec : Prop :=
  ∀ n, (P330200562253588664.a n : ℤ) = A195147 n

end A195147

/-! ## A195147.P164723209712142507

`∑[∑[A144532(n)]]`
-/

namespace A195147.P164723209712142507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195147.P164723209712142507

namespace A195147

/-- `∑[∑[A144532(n)]]` -/
def P164723209712142507.Spec : Prop :=
  ∀ n, P164723209712142507.a n = A195147 n

end A195147

/-! ## A195147.P9428287731595620234

`2*A195043(n)-n²`
-/

namespace A195147.P9428287731595620234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195043 n - (n ^ 2 : ℤ)

end

end A195147.P9428287731595620234

namespace A195147

/-- `2*A195043(n)-n²` -/
def P9428287731595620234.Spec : Prop :=
  ∀ n, P9428287731595620234.a n = A195147 n

end A195147

/-! ## A195147.P17726327890788066999

`A195047(n)+floor((n/2)²)`
-/

namespace A195147.P17726327890788066999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195047 n + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A195147.P17726327890788066999

namespace A195147

/-- `A195047(n)+floor((n/2)²)` -/
def P17726327890788066999.Spec : Prop :=
  ∀ n, P17726327890788066999.a n = A195147 n

end A195147

/-! ## A195147.P16563491605425783908

`A069131(n)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A195147.P16563491605425783908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A069131 n - a (n - 1)

end

end A195147.P16563491605425783908

namespace A195147

/-- `A069131(n)-a(n-1)` -/
def P16563491605425783908.Spec : Prop :=
  ∀ n, P16563491605425783908.a n = A195147 n

end A195147

/-! ## A195147.P2418870305673805759

`∑[2*A090570(n+1)]-n`
-/

namespace A195147.P2418870305673805759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A195147.P2418870305673805759

namespace A195147

/-- `∑[2*A090570(n+1)]-n` -/
def P2418870305673805759.Spec : Prop :=
  ∀ n, P2418870305673805759.a n = A195147 n

end A195147

/-! ## A195147.P15323494015735908283

`∑[∑[gcd(16, 1-A000045(a(n-1)))]]` with `a(0)=0`
-/

namespace A195147.P15323494015735908283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd 16 (1 - A000045 (f2 (n - 1)))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195147.P15323494015735908283

namespace A195147

/-- `∑[∑[gcd(16, 1-A000045(a(n-1)))]]` -/
def P15323494015735908283.Spec : Prop :=
  ∀ n, (P15323494015735908283.a n : ℤ) = A195147 n

end A195147

/-! ## A195147.P1102701235468482974

`A195146(n)+A007590(n)`
-/

namespace A195147.P1102701235468482974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 n + A007590 n

end

end A195147.P1102701235468482974

namespace A195147

/-- `A195146(n)+A007590(n)` -/
def P1102701235468482974.Spec : Prop :=
  ∀ n, P1102701235468482974.a n = A195147 n

end A195147

/-! ## A195147.P1192327679880710303

`A242477(n)+A195046(n)`
-/

namespace A195147.P1192327679880710303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A195046 n

end

end A195147.P1192327679880710303

namespace A195147

/-- `A242477(n)+A195046(n)` -/
def P1192327679880710303.Spec : Prop :=
  ∀ n, P1192327679880710303.a n = A195147 n

end A195147

/-! ## A195147.P5561328682314396235

`A195048(n)-A002620(n)`
-/

namespace A195147.P5561328682314396235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195048 n - A002620 n

end

end A195147.P5561328682314396235

namespace A195147

/-- `A195048(n)-A002620(n)` -/
def P5561328682314396235.Spec : Prop :=
  ∀ n, P5561328682314396235.a n = A195147 n

end A195147

/-! ## A195147.P5373929342565376366

`A195148(n)-A007590(n)`
-/

namespace A195147.P5373929342565376366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n - A007590 n

end

end A195147.P5373929342565376366

namespace A195147

/-- `A195148(n)-A007590(n)` -/
def P5373929342565376366.Spec : Prop :=
  ∀ n, P5373929342565376366.a n = A195147 n

end A195147

/-! ## A195147.P11163408775158130778

`A298034(n)-A010687(n)`
-/

namespace A195147.P11163408775158130778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 n - A010687 n

end

end A195147.P11163408775158130778

namespace A195147

/-- `A298034(n)-A010687(n)` -/
def P11163408775158130778.Spec : Prop :=
  ∀ n, P11163408775158130778.a n = A195147 n

end A195147

/-! ## A195147.P11674299166090760976

`A195049(n)-A242477(n)`
-/

namespace A195147.P11674299166090760976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195049 n - A242477 n

end

end A195147.P11674299166090760976

namespace A195147

/-- `A195049(n)-A242477(n)` -/
def P11674299166090760976.Spec : Prop :=
  ∀ n, P11674299166090760976.a n = A195147 n

end A195147

/-! ## A195147.P15649058030111451058

`A319127(n+1)+A195143(n)`
-/

namespace A195147.P15649058030111451058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A195143 n

end

end A195147.P15649058030111451058

namespace A195147

/-- `A319127(n+1)+A195143(n)` -/
def P15649058030111451058.Spec : Prop :=
  ∀ n, P15649058030111451058.a n = A195147 n

end A195147

/-! ## A195147.P14366121887568581344

`A081268(n)-A106389(n+1)`
-/

namespace A195147.P14366121887568581344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 n - A106389 (n + 1)

end

end A195147.P14366121887568581344

namespace A195147

/-- `A081268(n)-A106389(n+1)` -/
def P14366121887568581344.Spec : Prop :=
  ∀ n, P14366121887568581344.a n = A195147 n

end A195147

/-! ## A195147.P10658689372385035741

`A022267(n)-A168230(n+1)`
-/

namespace A195147.P10658689372385035741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n - A168230 (n + 1)

end

end A195147.P10658689372385035741

namespace A195147

/-- `A022267(n)-A168230(n+1)` -/
def P10658689372385035741.Spec : Prop :=
  ∀ n, P10658689372385035741.a n = A195147 n

end A195147

/-! ## A195147.P15471948380387250098

`A038764(n)-A168198(n+1)`
-/

namespace A195147.P15471948380387250098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n - A168198 (n + 1)

end

end A195147.P15471948380387250098

namespace A195147

/-- `A038764(n)-A168198(n+1)` -/
def P15471948380387250098.Spec : Prop :=
  ∀ n, P15471948380387250098.a n = A195147 n

end A195147

/-! ## A195147.P2826763065251633194

`A062728(n)-A168374(n+1)`
-/

namespace A195147.P2826763065251633194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n - A168374 (n + 1)

end

end A195147.P2826763065251633194

namespace A195147

/-- `A062728(n)-A168374(n+1)` -/
def P2826763065251633194.Spec : Prop :=
  ∀ n, P2826763065251633194.a n = A195147 n

end A195147

/-! ## A195147.P2259943582296292775

`A081267(n)-A168337(n+1)`
-/

namespace A195147.P2259943582296292775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - A168337 (n + 1)

end

end A195147.P2259943582296292775

namespace A195147

/-- `A081267(n)-A168337(n+1)` -/
def P2259943582296292775.Spec : Prop :=
  ∀ n, P2259943582296292775.a n = A195147 n

end A195147

/-!
# A195148: Concentric 20-gonal numbers.

The programs for A195148, the canonical program `A195148.P2399967165247152681` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195148 has offset 0).

The definition of A195148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195148.P2399967165247152681

`5*n²+2*(-1)^n-2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195148

/-- `5*n²+2*(-1)^n-2` -/
def P2399967165247152681.Spec : Prop :=
  ∀ n, P2399967165247152681.a n = A195148 n

theorem P2399967165247152681.correct : P2399967165247152681.Spec := by
  intro n
  simp only [A195148]

end A195148

/-! ## A195148.P15035570768753345209

`∑[a(n-2)+20]` with `a(0)=0, a(1)=1, a(2)=19`
-/

namespace A195148.P15035570768753345209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 19] fun n f1 =>
  f1 (n - 2) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195148.P15035570768753345209

namespace A195148

/-- `∑[a(n-2)+20]` -/
def P15035570768753345209.Spec : Prop :=
  ∀ n, (P15035570768753345209.a n : ℤ) = A195148 n

end A195148

/-! ## A195148.P5627763932414109173

`∑[∑[2*gcd(3, a(n-2))²]]` with `a(0)=0, a(1)=1`
-/

namespace A195148.P5627763932414109173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * Nat.gcd 3 (f2 (n - 2)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195148.P5627763932414109173

namespace A195148

/-- `∑[∑[2*gcd(3, a(n-2))²]]` -/
def P5627763932414109173.Spec : Prop :=
  ∀ n, (P5627763932414109173.a n : ℤ) = A195148 n

end A195148

/-! ## A195148.P10842559632364125512

`xor(A010675(n), A033429(n))`
-/

namespace A195148.P10842559632364125512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A033429 n)

end

end A195148.P10842559632364125512

namespace A195148

/-- `xor(A010675(n), A033429(n))` -/
def P10842559632364125512.Spec : Prop :=
  ∀ n, P10842559632364125512.a n = A195148 n

end A195148

/-! ## A195148.P17945353970737495475

`xor(A010688(n), A212656(n))`
-/

namespace A195148.P17945353970737495475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010688 n) (A212656 n)

end

end A195148.P17945353970737495475

namespace A195148

/-- `xor(A010688(n), A212656(n))` -/
def P17945353970737495475.Spec : Prop :=
  ∀ n, P17945353970737495475.a n = A195148 n

end A195148

/-! ## A195148.P7773461920203096834

`(A195049(n)+A195048(n))/2`
-/

namespace A195148.P7773461920203096834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195049 n + A195048 n : ℚ) / 2

end

end A195148.P7773461920203096834

namespace A195148

/-- `(A195049(n)+A195048(n))/2` -/
def P7773461920203096834.Spec : Prop :=
  ∀ n, P7773461920203096834.a n = (A195148 n : ℚ)

end A195148

/-! ## A195148.P5721061465346204816

`∪[A195317(n+1), A195322(n)]`
-/

namespace A195148.P5721061465346204816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195148.P5721061465346204816

namespace A195148

/-- `∪[A195317(n+1), A195322(n)]` -/
def P5721061465346204816.Spec : Prop :=
  ∀ n, (P5721061465346204816.a n : ℤ) = A195148 n

end A195148

/-! ## A195148.P15389568848718272650

`A151980(n²+1)`
-/

namespace A195148.P15389568848718272650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151980 (n ^ 2 + 1)

end

end A195148.P15389568848718272650

namespace A195148

/-- `A151980(n²+1)` -/
def P15389568848718272650.Spec : Prop :=
  ∀ n, P15389568848718272650.a n = A195148 n

end A195148

/-! ## A195148.P15981716637866649232

`A197652(n²+1)`
-/

namespace A195148.P15981716637866649232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n ^ 2 + 1)

end

end A195148.P15981716637866649232

namespace A195148

/-- `A197652(n²+1)` -/
def P15981716637866649232.Spec : Prop :=
  ∀ n, P15981716637866649232.a n = A195148 n

end A195148

/-! ## A195148.P3070957398791809136

`abs(3-xor(2, A016861(n²)))`
-/

namespace A195148.P3070957398791809136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - Int.xor 2 (A016861 (n ^ 2))|

end

end A195148.P3070957398791809136

namespace A195148

/-- `abs(3-xor(2, A016861(n²)))` -/
def P3070957398791809136.Spec : Prop :=
  ∀ n, P3070957398791809136.a n = A195148 n

end A195148

/-!
# A195149: Concentric 22-gonal numbers.

The programs for A195149, the canonical program `A195149.P11963823612132181127` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195149 has offset 0).

The definition of A195149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195149.P7660708734136614207

`(22*n²+9*(-1)^n-9)/4`
-/

namespace A195149.P7660708734136614207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * n ^ 2 : ℤ) + 9 * (-1) ^ n - 9 : ℚ) / 4

end

end A195149.P7660708734136614207

namespace A195149

/-- `(22*n²+9*(-1)^n-9)/4` -/
def P7660708734136614207.Spec : Prop :=
  ∀ n, P7660708734136614207.a n = (A195149 n : ℚ)

theorem P7660708734136614207.correct : P7660708734136614207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195149, Nat.add_sub_cancel, A195149.P7660708734136614207.a, A195149.P11963823612132181127.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A195149, Nat.add_sub_cancel, A195149.P7660708734136614207.a, A195149.P11963823612132181127.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195149

/-! ## A195149.P11963823612132181127

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=22, a(3)=45`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195149

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11963823612132181127.Spec : Prop :=
  ∀ n, P11963823612132181127.a n = A195149 n

theorem P11963823612132181127.correct : P11963823612132181127.Spec := by
  intro n
  simp only [A195149]

end A195149

/-! ## A195149.P7916377698851604966

`10*∑[a(n-2)+11]/5-n` with `a(0)=0, a(1)=1`
-/

namespace A195149.P7916377698851604966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5) - (n : ℚ)

end

end A195149.P7916377698851604966

namespace A195149

/-- `10*∑[a(n-2)+11]/5-n` -/
def P7916377698851604966.Spec : Prop :=
  ∀ n, P7916377698851604966.a n = (A195149 n : ℚ)

end A195149

/-! ## A195149.P12961511046937789780

`2*A195045(n)-n²`
-/

namespace A195149.P12961511046937789780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195045 n - (n ^ 2 : ℤ)

end

end A195149.P12961511046937789780

namespace A195149

/-- `2*A195045(n)-n²` -/
def P12961511046937789780.Spec : Prop :=
  ∀ n, P12961511046937789780.a n = A195149 n

end A195149

/-! ## A195149.P8583877963318706065

`A195049(n)+floor((n/2)²)`
-/

namespace A195149.P8583877963318706065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195049 n + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A195149.P8583877963318706065

namespace A195149

/-- `A195049(n)+floor((n/2)²)` -/
def P8583877963318706065.Spec : Prop :=
  ∀ n, P8583877963318706065.a n = A195149 n

end A195149

/-! ## A195149.P15021842290648879313

`A195058(n)-floor((n/2)²)`
-/

namespace A195149.P15021842290648879313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195058 n - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A195149.P15021842290648879313

namespace A195149

/-- `A195058(n)-floor((n/2)²)` -/
def P15021842290648879313.Spec : Prop :=
  ∀ n, P15021842290648879313.a n = A195149 n

end A195149

/-! ## A195149.P1727376318936838240

`∑[2*A112651(n+1)]-n`
-/

namespace A195149.P1727376318936838240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A195149.P1727376318936838240

namespace A195149

/-- `∑[2*A112651(n+1)]-n` -/
def P1727376318936838240.Spec : Prop :=
  ∀ n, P1727376318936838240.a n = A195149 n

end A195149

/-! ## A195149.P17528059844734422397

`A195148(n)+A007590(n)`
-/

namespace A195149.P17528059844734422397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n + A007590 n

end

end A195149.P17528059844734422397

namespace A195149

/-- `A195148(n)+A007590(n)` -/
def P17528059844734422397.Spec : Prop :=
  ∀ n, P17528059844734422397.a n = A195149 n

end A195149

/-! ## A195149.P17765896763283935438

`A242477(n)+A195048(n)`
-/

namespace A195149.P17765896763283935438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A195048 n

end

end A195149.P17765896763283935438

namespace A195149

/-- `A242477(n)+A195048(n)` -/
def P17765896763283935438.Spec : Prop :=
  ∀ n, P17765896763283935438.a n = A195149 n

end A195149

/-! ## A195149.P8131958589640211471

`A195158(n)-A007590(n)`
-/

namespace A195149.P8131958589640211471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195158 n - A007590 n

end

end A195149.P8131958589640211471

namespace A195149

/-- `A195158(n)-A007590(n)` -/
def P8131958589640211471.Spec : Prop :=
  ∀ n, P8131958589640211471.a n = A195149 n

end A195149

/-! ## A195149.P15504845005202716598

`A319127(n+1)+A195146(n)`
-/

namespace A195149.P15504845005202716598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A195146 n

end

end A195149.P15504845005202716598

namespace A195149

/-- `A319127(n+1)+A195146(n)` -/
def P15504845005202716598.Spec : Prop :=
  ∀ n, P15504845005202716598.a n = A195149 n

end A195149

/-! ## A195149.P14595914066910806672

`A211013(n)-A168419(n+1)`
-/

namespace A195149.P14595914066910806672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - A168419 (n + 1)

end

end A195149.P14595914066910806672

namespace A195149

/-- `A211013(n)-A168419(n+1)` -/
def P14595914066910806672.Spec : Prop :=
  ∀ n, P14595914066910806672.a n = A195149 n

end A195149

/-! ## A195149.P5931851047626566276

`A195148(n)+2*A002620(n)`
-/

namespace A195149.P5931851047626566276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195148 n + 2 * A002620 n

end

end A195149.P5931851047626566276

namespace A195149

/-- `A195148(n)+2*A002620(n)` -/
def P5931851047626566276.Spec : Prop :=
  ∀ n, P5931851047626566276.a n = A195149 n

end A195149

/-! ## A195149.P3996458050827136677

`A195147(n)+2*A007590(n)`
-/

namespace A195149.P3996458050827136677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195147 n + 2 * A007590 n

end

end A195149.P3996458050827136677

namespace A195149

/-- `A195147(n)+2*A007590(n)` -/
def P3996458050827136677.Spec : Prop :=
  ∀ n, P3996458050827136677.a n = A195149 n

end A195149

/-! ## A195149.P8668705931564902591

`A195146(n)+2*A242477(n)`
-/

namespace A195149.P8668705931564902591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 n + 2 * A242477 n

end

end A195149.P8668705931564902591

namespace A195149

/-- `A195146(n)+2*A242477(n)` -/
def P8668705931564902591.Spec : Prop :=
  ∀ n, P8668705931564902591.a n = A195149 n

end A195149

/-! ## A195149.P13355688500754170918

`A195158(n)-2*A002620(n)`
-/

namespace A195149.P13355688500754170918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195158 n - 2 * A002620 n

end

end A195149.P13355688500754170918

namespace A195149

/-- `A195158(n)-2*A002620(n)` -/
def P13355688500754170918.Spec : Prop :=
  ∀ n, P13355688500754170918.a n = A195149 n

end A195149

/-! ## A195149.P18093697366314464929

`2*A195145(n)-A032528(n)`
-/

namespace A195149.P18093697366314464929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195145 n - A032528 n

end

end A195149.P18093697366314464929

namespace A195149

/-- `2*A195145(n)-A032528(n)` -/
def P18093697366314464929.Spec : Prop :=
  ∀ n, P18093697366314464929.a n = A195149 n

end A195149

/-! ## A195149.P17846290824812572371

`2*A195046(n)-A077221(n)`
-/

namespace A195149.P17846290824812572371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195046 n - A077221 n

end

end A195149.P17846290824812572371

namespace A195149

/-- `2*A195046(n)-A077221(n)` -/
def P17846290824812572371.Spec : Prop :=
  ∀ n, P17846290824812572371.a n = A195149 n

end A195149

/-! ## A195149.P15728931820080749408

`2*A195047(n)-A195143(n)`
-/

namespace A195149.P15728931820080749408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195047 n - A195143 n

end

end A195149.P15728931820080749408

namespace A195149

/-- `2*A195047(n)-A195143(n)` -/
def P15728931820080749408.Spec : Prop :=
  ∀ n, P15728931820080749408.a n = A195149 n

end A195149

/-! ## A195149.P2169445178573351584

`2*A195049(n)-A195148(n)`
-/

namespace A195149.P2169445178573351584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195049 n - A195148 n

end

end A195149.P2169445178573351584

namespace A195149

/-- `2*A195049(n)-A195148(n)` -/
def P2169445178573351584.Spec : Prop :=
  ∀ n, P2169445178573351584.a n = A195149 n

end A195149

/-!
# A195150: Number of divisors d of n such that d-1 does not divide n.

The programs for A195150, the canonical program `A195150.P8159304006399446490` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195150 has offset 1).

The definition of A195150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137921, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195150.P8159304006399446490

`A137921(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A195150

/-- `A137921(n+1)-1` -/
def P8159304006399446490.Spec : Prop :=
  ∀ n, P8159304006399446490.a n = A195150 (n + 1)

theorem P8159304006399446490.correct : P8159304006399446490.Spec := by
  intro n
  simp only [A195150, Nat.add_sub_cancel]

end A195150

/-! ## A195150.P4132598685197104980

`∑{d}[n+1, A267810(#)]`
-/

namespace A195150.P4132598685197104980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267810 d

end

end A195150.P4132598685197104980

namespace A195150

/-- `∑{d}[n+1, A267810(#)]` -/
def P4132598685197104980.Spec : Prop :=
  ∀ n, P4132598685197104980.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P6972918380150310080

`∑{d}[n+1, A267813(#)]-1`
-/

namespace A195150.P6972918380150310080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267813 d - 1

end

end A195150.P6972918380150310080

namespace A195150

/-- `∑{d}[n+1, A267813(#)]-1` -/
def P6972918380150310080.Spec : Prop :=
  ∀ n, P6972918380150310080.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P8886059264193136470

`∑{d}[n+1, A267814(#-1)]-1`
-/

namespace A195150.P8886059264193136470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267814 (d - 1) - 1

end

end A195150.P8886059264193136470

namespace A195150

/-- `∑{d}[n+1, A267814(#-1)]-1` -/
def P8886059264193136470.Spec : Prop :=
  ∀ n, P8886059264193136470.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P15938666301081876408

`A023443(A137921(n+1))`
-/

namespace A195150.P15938666301081876408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A137921 (n + 1)).toNat

end

end A195150.P15938666301081876408

namespace A195150

/-- `A023443(A137921(n+1))` -/
def P15938666301081876408.Spec : Prop :=
  ∀ n, P15938666301081876408.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P5447036360756668017

`A003984(A337363(n+1))`
-/

namespace A195150.P5447036360756668017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A337363 (n + 1)).toNat

end

end A195150.P5447036360756668017

namespace A195150

/-- `A003984(A337363(n+1))` -/
def P5447036360756668017.Spec : Prop :=
  ∀ n, P5447036360756668017.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P448675633029268259

`A002260(A337362(n+1))-1`
-/

namespace A195150.P448675633029268259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A337362 (n + 1)).toNat - 1

end

end A195150.P448675633029268259

namespace A195150

/-- `A002260(A337362(n+1))-1` -/
def P448675633029268259.Spec : Prop :=
  ∀ n, P448675633029268259.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P16158412770270525087

`Δ[A006218(n)]-A195155(n+1)`
-/

namespace A195150.P16158412770270525087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195155 (n + 1)

end

end A195150.P16158412770270525087

namespace A195150

/-- `Δ[A006218(n)]-A195155(n+1)` -/
def P16158412770270525087.Spec : Prop :=
  ∀ n, P16158412770270525087.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P13278292700253745661

`A023645(n+1)-A088722(n+1)`
-/

namespace A195150.P13278292700253745661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - A088722 (n + 1)

end

end A195150.P13278292700253745661

namespace A195150

/-- `A023645(n+1)-A088722(n+1)` -/
def P13278292700253745661.Spec : Prop :=
  ∀ n, P13278292700253745661.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P3989627033576818984

`A032741(n+1)-A129308(n+1)`
-/

namespace A195150.P3989627033576818984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A129308 (n + 1)

end

end A195150.P3989627033576818984

namespace A195150

/-- `A032741(n+1)-A129308(n+1)` -/
def P3989627033576818984.Spec : Prop :=
  ∀ n, P3989627033576818984.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P4950729682129753236

`A000005(n+1)-A195155(n+1)`
-/

namespace A195150.P4950729682129753236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A195155 (n + 1)

end

end A195150.P4950729682129753236

namespace A195150

/-- `A000005(n+1)-A195155(n+1)` -/
def P4950729682129753236.Spec : Prop :=
  ∀ n, P4950729682129753236.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P2983876679787795360

`A000005(n+1)-(A129308(n+1)+1)`
-/

namespace A195150.P2983876679787795360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A129308 (n + 1) + 1)

end

end A195150.P2983876679787795360

namespace A195150

/-- `A000005(n+1)-(A129308(n+1)+1)` -/
def P2983876679787795360.Spec : Prop :=
  ∀ n, P2983876679787795360.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P6036377960811555751

`A076984(n+1)-(A088722(n+1)+1)`
-/

namespace A195150.P6036377960811555751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - (A088722 (n + 1) + 1)

end

end A195150.P6036377960811555751

namespace A195150

/-- `A076984(n+1)-(A088722(n+1)+1)` -/
def P6036377960811555751.Spec : Prop :=
  ∀ n, P6036377960811555751.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P17396757198553892443

`A337362(n+1)-(A066446(n+1)+1)`
-/

namespace A195150.P17396757198553892443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (n + 1) - (A066446 (n + 1) + 1)

end

end A195150.P17396757198553892443

namespace A195150

/-- `A337362(n+1)-(A066446(n+1)+1)` -/
def P17396757198553892443.Spec : Prop :=
  ∀ n, P17396757198553892443.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P6467683427598696229

`A334954(n+1)-(A195155(n+1)+1)`
-/

namespace A195150.P6467683427598696229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A195155 (n + 1) + 1)

end

end A195150.P6467683427598696229

namespace A195150

/-- `A334954(n+1)-(A195155(n+1)+1)` -/
def P6467683427598696229.Spec : Prop :=
  ∀ n, P6467683427598696229.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P16387551659747537041

`n-(A129308(n+1)+A049820(n+1))`
-/

namespace A195150.P16387551659747537041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A129308 (n + 1) + A049820 (n + 1))

end

end A195150.P16387551659747537041

namespace A195150

/-- `n-(A129308(n+1)+A049820(n+1))` -/
def P16387551659747537041.Spec : Prop :=
  ∀ n, P16387551659747537041.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P13245239783906284075

`A028310(∏{e}[n+1, #+1])-A195155(n+1)`
-/

namespace A195150.P13245239783906284075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - A195155 (n + 1)

end

end A195150.P13245239783906284075

namespace A195150

/-- `A028310(∏{e}[n+1, #+1])-A195155(n+1)` -/
def P13245239783906284075.Spec : Prop :=
  ∀ n, P13245239783906284075.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P2324242161958987447

`A028310(∑{d}[n+1, gcd(n, #)])-A195155(n+1)`
-/

namespace A195150.P2324242161958987447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) - A195155 (n + 1)

end

end A195150.P2324242161958987447

namespace A195150

/-- `A028310(∑{d}[n+1, gcd(n, #)])-A195155(n+1)` -/
def P2324242161958987447.Spec : Prop :=
  ∀ n, P2324242161958987447.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P7802059209448000973

`∑{d}[n+1, A057427(#)]-A195155(n+1)`
-/

namespace A195150.P7802059209448000973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A195155 (n + 1)

end

end A195150.P7802059209448000973

namespace A195150

/-- `∑{d}[n+1, A057427(#)]-A195155(n+1)` -/
def P7802059209448000973.Spec : Prop :=
  ∀ n, P7802059209448000973.a n = A195150 (n + 1)

end A195150

/-! ## A195150.P13711486725103317021

`A200748(n)%A137921(n+1)`
-/

namespace A195150.P13711486725103317021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A137921 (n + 1))

end

end A195150.P13711486725103317021

namespace A195150

/-- `A200748(n)%A137921(n+1)` -/
def P13711486725103317021.Spec : Prop :=
  ∀ n, P13711486725103317021.a n = A195150 (n + 1)

end A195150

/-!
# A195151: Square array read by antidiagonals upwards: T(n,k) = n*((k-2)*(-1)^n+k+2)/4, n >= 0, k >= 0.

The programs for A195151, there is no canonical definition to state claims against.
-/

/-! ## A195151.P11160707497401528177

`A005408(A226405(n))%A004736(n+1)`
-/

namespace A195151.P11160707497401528177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A226405 n).toNat) (A004736 (n + 1))

end

end A195151.P11160707497401528177

/-! ## A195151.P3112924436397372242

`A032741(A000439(n+1))%A004736(n+1)`
-/

namespace A195151.P3112924436397372242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A000439 (n + 1)).toNat) (A004736 (n + 1))

end

end A195151.P3112924436397372242

/-! ## A195151.P8951446570092908691

`A167192(n+1)%A027746(Δ[C(n²+1, 2)])`
-/

namespace A195151.P8951446570092908691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167192 (n + 1)) (A027746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A195151.P8951446570092908691

/-! ## A195151.P1198094828617081536

`A167192(n+1)%A000005(A154816(n))`
-/

namespace A195151.P1198094828617081536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167192 (n + 1)) (A000005 (A154816 n).toNat)

end

end A195151.P1198094828617081536

/-! ## A195151.P18212496901309699198

`A136027(A326079(n))%A004736(n+1)`
-/

namespace A195151.P18212496901309699198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136027 (A326079 n).toNat) (A004736 (n + 1))

end

end A195151.P18212496901309699198

/-!
# A195152: Square array read by antidiagonals with T(n,k) = n*((k+2)*n-k)/2, n=0, +- 1, +- 2,..., k>=0.

The programs for A195152, there is no canonical definition to state claims against.
-/

/-! ## A195152.P9077940000249564005

`A194801(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A195152.P9077940000249564005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194801 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A195152.P9077940000249564005

/-! ## A195152.P8479368022987424970

`A194801(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)`
-/

namespace A195152.P8479368022987424970
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194801 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A195152.P8479368022987424970

/-! ## A195152.P11320343223909541530

`A001222(A090663(2*(n+1))^A308680(n+1))`
-/

namespace A195152.P11320343223909541530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A090663 (2 * (n + 1)) : ℚ) ^ (A308680 (n + 1) : ℤ))).toNat

end

end A195152.P11320343223909541530

/-! ## A195152.P1790618731017435888

`A147952(A268436(n+1))`
-/

namespace A195152.P1790618731017435888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147952 (A268436 (n + 1)).toNat

end

end A195152.P1790618731017435888

/-! ## A195152.P7109083904116140959

`A372361(A263864(n+1))+A060086(n+1)`
-/

namespace A195152.P7109083904116140959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372361 (A263864 (n + 1)).toNat + A060086 (n + 1)

end

end A195152.P7109083904116140959

/-!
# A195153: Irregular triangle read by rows in which row n lists numbers d-1 that do not divide n, where d divides n.

The programs for A195153, the canonical program `A195153.P11953675593454716449` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195153 has offset 3).

The definition of A195153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195153.P2205361326836108706

`A128227(eq[1, A176702(n+1)+2])`
-/

namespace A195153.P2205361326836108706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176702 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195153.P2205361326836108706

namespace A195153

/-- `A128227(eq[1, A176702(n+1)+2])` -/
def P2205361326836108706.Spec : Prop :=
  ∀ n, P2205361326836108706.a n = A195153 (n + 3)

end A195153

/-! ## A195153.P11953675593454716449

`A128227(lt[A051731(n+1), A051731(n+2)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A195153

/-- `A128227(lt[A051731(n+1), A051731(n+2)])` -/
def P11953675593454716449.Spec : Prop :=
  ∀ n, P11953675593454716449.a n = A195153 (n + 3)

theorem P11953675593454716449.correct : P11953675593454716449.Spec := by
  intro n
  simp only [A195153, Nat.add_sub_cancel]

end A195153

/-! ## A195153.P14877662780348996765

`A128227(lt[A054523(n+1), A286563(n+2)])`
-/

namespace A195153.P14877662780348996765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195153.P14877662780348996765

namespace A195153

/-- `A128227(lt[A054523(n+1), A286563(n+2)])` -/
def P14877662780348996765.Spec : Prop :=
  ∀ n, P14877662780348996765.a n = A195153 (n + 3)

end A195153

/-! ## A195153.P17521111200316600723

`A002260(lt[A051731(n+1), A051731(n+2)]+1)`
-/

namespace A195153.P17521111200316600723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A195153.P17521111200316600723

namespace A195153

/-- `A002260(lt[A051731(n+1), A051731(n+2)]+1)` -/
def P17521111200316600723.Spec : Prop :=
  ∀ n, P17521111200316600723.a n = A195153 (n + 3)

end A195153

/-! ## A195153.P3641925688081611952

`A002260(eq[A051731(n+1)+1, A051731(n+2)]+1)`
-/

namespace A195153.P3641925688081611952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A195153.P3641925688081611952

namespace A195153

/-- `A002260(eq[A051731(n+1)+1, A051731(n+2)]+1)` -/
def P3641925688081611952.Spec : Prop :=
  ∀ n, P3641925688081611952.a n = A195153 (n + 3)

end A195153

/-!
# A195155: Number of divisors d of n such that d-1 also divides n or d-1 = 0.

The programs for A195155, the canonical program `A195155.P6480177575131545009` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195155 has offset 1).

The definition of A195155 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A195155.P6480177575131545009

`1+A129308(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A195155

/-- `1+A129308(n+1)` -/
def P6480177575131545009.Spec : Prop :=
  ∀ n, P6480177575131545009.a n = A195155 (n + 1)

theorem P6480177575131545009.correct : P6480177575131545009.Spec := by
  intro n
  simp only [A195155, Nat.add_sub_cancel]

end A195155

/-! ## A195155.P7497096961727217748

`A000005(n+1)-A195150(n+1)`
-/

namespace A195155.P7497096961727217748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A195150 (n + 1)

end

end A195155.P7497096961727217748

namespace A195155

/-- `A000005(n+1)-A195150(n+1)` -/
def P7497096961727217748.Spec : Prop :=
  ∀ n, P7497096961727217748.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P13178169255039834978

`∑{d}[n+1, val(#², n+1+#)]+1`
-/

namespace A195155.P13178169255039834978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d) + 1

end

end A195155.P13178169255039834978

namespace A195155

/-- `∑{d}[n+1, val(#², n+1+#)]+1` -/
def P13178169255039834978.Spec : Prop :=
  ∀ n, (P13178169255039834978.a n : ℤ) = A195155 (n + 1)

end A195155

/-! ## A195155.P2450572255867075693

`A004736(A337362(n+1))`
-/

namespace A195155.P2450572255867075693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A337362 (n + 1)).toNat

end

end A195155.P2450572255867075693

namespace A195155

/-- `A004736(A337362(n+1))` -/
def P2450572255867075693.Spec : Prop :=
  ∀ n, P2450572255867075693.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P18165551438036413378

`A088722(n+1)+A000034(n)`
-/

namespace A195155.P18165551438036413378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + A000034 n

end

end A195155.P18165551438036413378

namespace A195155

/-- `A088722(n+1)+A000034(n)` -/
def P18165551438036413378.Spec : Prop :=
  ∀ n, P18165551438036413378.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P14269447561904514484

`Δ[A006218(n)]-A195150(n+1)`
-/

namespace A195155.P14269447561904514484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195150 (n + 1)

end

end A195155.P14269447561904514484

namespace A195155

/-- `Δ[A006218(n)]-A195150(n+1)` -/
def P14269447561904514484.Spec : Prop :=
  ∀ n, P14269447561904514484.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P16055837066666562178

`A088722(n+1)+A000035(n)+1`
-/

namespace A195155.P16055837066666562178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + (A000035 n + 1)

end

end A195155.P16055837066666562178

namespace A195155

/-- `A088722(n+1)+A000035(n)+1` -/
def P16055837066666562178.Spec : Prop :=
  ∀ n, P16055837066666562178.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P10642319095711837983

`A239930(n+1)-A071325(n+1)`
-/

namespace A195155.P10642319095711837983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (n + 1) - A071325 (n + 1)

end

end A195155.P10642319095711837983

namespace A195155

/-- `A239930(n+1)-A071325(n+1)` -/
def P10642319095711837983.Spec : Prop :=
  ∀ n, P10642319095711837983.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P1849194262591423407

`A334954(n+1)-A137921(n+1)`
-/

namespace A195155.P1849194262591423407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A137921 (n + 1)

end

end A195155.P1849194262591423407

namespace A195155

/-- `A334954(n+1)-A137921(n+1)` -/
def P1849194262591423407.Spec : Prop :=
  ∀ n, P1849194262591423407.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P13763864698538540372

`A000005(n+1)+1-A137921(n+1)`
-/

namespace A195155.P13763864698538540372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A137921 (n + 1))

end

end A195155.P13763864698538540372

namespace A195155

/-- `A000005(n+1)+1-A137921(n+1)` -/
def P13763864698538540372.Spec : Prop :=
  ∀ n, P13763864698538540372.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P2397604639767889912

`A239930(n+1)+1-A046951(n+1)`
-/

namespace A195155.P2397604639767889912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (n + 1) + (1 - A046951 (n + 1))

end

end A195155.P2397604639767889912

namespace A195155

/-- `A239930(n+1)+1-A046951(n+1)` -/
def P2397604639767889912.Spec : Prop :=
  ∀ n, P2397604639767889912.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P14891604432867951674

`A066446(n+1)+1-A337363(n+1)`
-/

namespace A195155.P14891604432867951674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + (1 - A337363 (n + 1))

end

end A195155.P14891604432867951674

namespace A195155

/-- `A066446(n+1)+1-A337363(n+1)` -/
def P14891604432867951674.Spec : Prop :=
  ∀ n, P14891604432867951674.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P3413496939644415569

`A184389(n+1)+1-A337362(n+1)`
-/

namespace A195155.P3413496939644415569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + (1 - A337362 (n + 1))

end

end A195155.P3413496939644415569

namespace A195155

/-- `A184389(n+1)+1-A337362(n+1)` -/
def P3413496939644415569.Spec : Prop :=
  ∀ n, P3413496939644415569.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P14929957872292221344

`A028310(∏{e}[n+1, #+1]-A195150(n+1))`
-/

namespace A195155.P14929957872292221344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A195150 (n + 1)).toNat

end

end A195155.P14929957872292221344

namespace A195155

/-- `A028310(∏{e}[n+1, #+1]-A195150(n+1))` -/
def P14929957872292221344.Spec : Prop :=
  ∀ n, P14929957872292221344.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P17407559286260969999

`A088722(n+1)+A124625(A124625(n))+1`
-/

namespace A195155.P17407559286260969999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + (A124625 (A124625 n).toNat + 1)

end

end A195155.P17407559286260969999

namespace A195155

/-- `A088722(n+1)+A124625(A124625(n))+1` -/
def P17407559286260969999.Spec : Prop :=
  ∀ n, P17407559286260969999.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P6661067358369579706

`A324826(n+1)+A324827(n+1)-A195150(n+1)`
-/

namespace A195155.P6661067358369579706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A195150 (n + 1))

end

end A195155.P6661067358369579706

namespace A195155

/-- `A324826(n+1)+A324827(n+1)-A195150(n+1)` -/
def P6661067358369579706.Spec : Prop :=
  ∀ n, P6661067358369579706.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P16512347605989630631

`A336041(n+1)+A349658(n+1)-A195150(n+1)`
-/

namespace A195155.P16512347605989630631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A195150 (n + 1))

end

end A195155.P16512347605989630631

namespace A195155

/-- `A336041(n+1)+A349658(n+1)-A195150(n+1)` -/
def P16512347605989630631.Spec : Prop :=
  ∀ n, P16512347605989630631.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P17260153818174777791

`A353351(n+1)+A353352(n+1)-A195150(n+1)`
-/

namespace A195155.P17260153818174777791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A195150 (n + 1))

end

end A195155.P17260153818174777791

namespace A195155

/-- `A353351(n+1)+A353352(n+1)-A195150(n+1)` -/
def P17260153818174777791.Spec : Prop :=
  ∀ n, P17260153818174777791.a n = A195155 (n + 1)

end A195155

/-! ## A195155.P8028692318716112228

`∑{d}[n+1, A057427(#)]-A195150(n+1)`
-/

namespace A195155.P8028692318716112228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A195150 (n + 1)

end

end A195155.P8028692318716112228

namespace A195155

/-- `∑{d}[n+1, A057427(#)]-A195150(n+1)` -/
def P8028692318716112228.Spec : Prop :=
  ∀ n, P8028692318716112228.a n = A195155 (n + 1)

end A195155

/-!
# A195156: a(n) = (16^n-1)/3.

The programs for A195156, the canonical program `A195156.P10027544278641878220` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195156 has offset 0).

The definition of A195156 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n-1)/3` (program `A195156.P7597220359218679695`, by `A195156.P7597220359218679695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195156.P7597220359218679695

`(16^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195156.P7597220359218679695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ n : ℤ) - 1 : ℚ) / 3

end

end A195156.P7597220359218679695

namespace A195156

/-- `(16^n-1)/3` -/
def P7597220359218679695.Spec : Prop :=
  ∀ n, P7597220359218679695.a n = (A195156 n : ℚ)

theorem P7597220359218679695.correct : P7597220359218679695.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A195156, Nat.add_sub_cancel, A195156.P7597220359218679695.a, A195156.P10027544278641878220.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A195156, Nat.add_sub_cancel, A195156.P7597220359218679695.a, A195156.P10027544278641878220.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195156

/-! ## A195156.P10027544278641878220

`16*a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195156

/-- `16*a(n-1)+5` -/
def P10027544278641878220.Spec : Prop :=
  ∀ n, (P10027544278641878220.a n : ℤ) = A195156 n

theorem P10027544278641878220.correct : P10027544278641878220.Spec := by
  intro n
  simp only [A195156]

end A195156

/-! ## A195156.P8804579677337582531

`A002450(2*n)`
-/

namespace A195156.P8804579677337582531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (2 * n)

end

end A195156.P8804579677337582531

namespace A195156

/-- `A002450(2*n)` -/
def P8804579677337582531.Spec : Prop :=
  ∀ n, P8804579677337582531.a n = A195156 n

end A195156

/-! ## A195156.P11123583005710360772

`A001045(4*n)`
-/

namespace A195156.P11123583005710360772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (4 * n)

end

end A195156.P11123583005710360772

namespace A195156

/-- `A001045(4*n)` -/
def P11123583005710360772.Spec : Prop :=
  ∀ n, P11123583005710360772.a n = A195156 n

end A195156

/-! ## A195156.P9895238809691042747

`ogf(5x/(1-17x+16x^2))`
-/

namespace A195156.P9895238809691042747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -17, 16] n

end

end A195156.P9895238809691042747

namespace A195156

/-- `ogf(5x/(1-17x+16x^2))` -/
def P9895238809691042747.Spec : Prop :=
  ∀ n, P9895238809691042747.a n = A195156 n

end A195156

/-! ## A195156.P11008342330392862566

`record[floor((-4)^n/3)]`
-/

namespace A195156.P11008342330392862566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-4) ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195156.P11008342330392862566

namespace A195156

/-- `record[floor((-4)^n/3)]` -/
def P11008342330392862566.Spec : Prop :=
  ∀ n, P11008342330392862566.a n = A195156 n

end A195156

/-! ## A195156.P2137725349498864998

`round(record[(-4)^n/3])`
-/

namespace A195156.P2137725349498864998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-4) ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A195156.P2137725349498864998

namespace A195156

/-- `round(record[(-4)^n/3])` -/
def P2137725349498864998.Spec : Prop :=
  ∀ n, P2137725349498864998.a n = A195156 n

end A195156

/-! ## A195156.P894809388313054251

`lcm(16, a(n-1))+5` with `a(0)=0`
-/

namespace A195156.P894809388313054251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 16 (a (n - 1)) + 5

end

end A195156.P894809388313054251

namespace A195156

/-- `lcm(16, a(n-1))+5` -/
def P894809388313054251.Spec : Prop :=
  ∀ n, (P894809388313054251.a n : ℤ) = A195156 n

end A195156

/-! ## A195156.P6223889202432800197

`or(5, 16*a(n-1))` with `a(0)=0`
-/

namespace A195156.P6223889202432800197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 5 (16 * a (n - 1))

end

end A195156.P6223889202432800197

namespace A195156

/-- `or(5, 16*a(n-1))` -/
def P6223889202432800197.Spec : Prop :=
  ∀ n, (P6223889202432800197.a n : ℤ) = A195156 n

end A195156

/-! ## A195156.P2251503921200317693

`xor(5, 16*a(n-1))` with `a(0)=0`
-/

namespace A195156.P2251503921200317693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 5 (16 * a (n - 1))

end

end A195156.P2251503921200317693

namespace A195156

/-- `xor(5, 16*a(n-1))` -/
def P2251503921200317693.Spec : Prop :=
  ∀ n, (P2251503921200317693.a n : ℤ) = A195156 n

end A195156

/-!
# A195157: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,2,0,1,0,2 for x=0,1,2,3,4,5,6.

The programs for A195157, there is no canonical definition to state claims against.
-/

/-! ## A195157.P12266086989761468644

`xor(A006927(A000096(n)), A207151(n+1))`
-/

namespace A195157.P12266086989761468644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006927 (A000096 n).toNat) (A207151 (n + 1))

end

end A195157.P12266086989761468644

/-!
# A195158: Concentric 24-gonal numbers.

The programs for A195158, the canonical program `A195158.P10262175725787316458` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195158 has offset 0).

The definition of A195158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195158.P10262175725787316458

`6*n²+5*((-1)^n-1)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195158

/-- `6*n²+5*((-1)^n-1)/2` -/
def P10262175725787316458.Spec : Prop :=
  ∀ n, P10262175725787316458.a n = (A195158 n : ℚ)

end A195158

/-! ## A195158.P13050559516540298230

`∑[∑[A350086(a(n-1))]]` with `a(0)=0, a(1)=1`
-/

namespace A195158.P13050559516540298230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A350086 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195158.P13050559516540298230

namespace A195158

/-- `∑[∑[A350086(a(n-1))]]` -/
def P13050559516540298230.Spec : Prop :=
  ∀ n, P13050559516540298230.a n = A195158 n

end A195158

/-! ## A195158.P7229465732654196196

`xor(A010678(n), A033581(n))`
-/

namespace A195158.P7229465732654196196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010678 n) (A033581 n)

end

end A195158.P7229465732654196196

namespace A195158

/-- `xor(A010678(n), A033581(n))` -/
def P7229465732654196196.Spec : Prop :=
  ∀ n, P7229465732654196196.a n = A195158 n

end A195158

/-! ## A195158.P16705041052709081311

`xor(A010706(n), A097803(n))`
-/

namespace A195158.P16705041052709081311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010706 n) (A097803 n)

end

end A195158.P16705041052709081311

namespace A195158

/-- `xor(A010706(n), A097803(n))` -/
def P16705041052709081311.Spec : Prop :=
  ∀ n, P16705041052709081311.a n = A195158 n

end A195158

/-! ## A195158.P4287204818709791151

`xor(A010687(n), A227776(n))`
-/

namespace A195158.P4287204818709791151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010687 n) (A227776 n)

end

end A195158.P4287204818709791151

namespace A195158

/-- `xor(A010687(n), A227776(n))` -/
def P4287204818709791151.Spec : Prop :=
  ∀ n, P4287204818709791151.a n = A195158 n

end A195158

/-! ## A195158.P16648346160815727124

`xor(2*A195143(n), A010674(n))`
-/

namespace A195158.P16648346160815727124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A195143 n) (A010674 n)

end

end A195158.P16648346160815727124

namespace A195158

/-- `xor(2*A195143(n), A010674(n))` -/
def P16648346160815727124.Spec : Prop :=
  ∀ n, P16648346160815727124.a n = A195158 n

end A195158

/-! ## A195158.P924030634460448752

`A151973(n²+1)`
-/

namespace A195158.P924030634460448752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151973 (n ^ 2 + 1)

end

end A195158.P924030634460448752

namespace A195158

/-- `A151973(n²+1)` -/
def P924030634460448752.Spec : Prop :=
  ∀ n, P924030634460448752.a n = A195158 n

end A195158

/-! ## A195158.P17773480767416011840

`A047393(A001651(n²+1))`
-/

namespace A195158.P17773480767416011840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A001651 (n ^ 2 + 1)).toNat

end

end A195158.P17773480767416011840

namespace A195158

/-- `A047393(A001651(n²+1))` -/
def P17773480767416011840.Spec : Prop :=
  ∀ n, P17773480767416011840.a n = A195158 n

end A195158

/-! ## A195158.P14025740192820504121

`A112652(A077221(n))`
-/

namespace A195158.P14025740192820504121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A077221 n).toNat

end

end A195158.P14025740192820504121

namespace A195158

/-- `A112652(A077221(n))` -/
def P14025740192820504121.Spec : Prop :=
  ∀ n, P14025740192820504121.a n = A195158 n

end A195158

/-! ## A195158.P9267068198894057413

`A112652(A042948(n²))`
-/

namespace A195158.P9267068198894057413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A042948 (n ^ 2)).toNat

end

end A195158.P9267068198894057413

namespace A195158

/-- `A112652(A042948(n²))` -/
def P9267068198894057413.Spec : Prop :=
  ∀ n, P9267068198894057413.a n = A195158 n

end A195158

/-!
# A195159: Multiples of 7 and odd numbers interleaved.

The programs for A195159, the canonical program `A195159.P1530607772894240542` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195159 has offset 0).

The definition of A195159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195159.P1530607772894240542

`(5*(-1)^n+9)*n/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195159

/-- `(5*(-1)^n+9)*n/4` -/
def P1530607772894240542.Spec : Prop :=
  ∀ n, P1530607772894240542.a n = (A195159 n : ℚ)

end A195159

/-! ## A195159.P4497638529575502095

`5*(n-lcm(2, n)/2)+n`
-/

namespace A195159.P4497638529575502095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2) + (n : ℚ)

end

end A195159.P4497638529575502095

namespace A195159

/-- `5*(n-lcm(2, n)/2)+n` -/
def P4497638529575502095.Spec : Prop :=
  ∀ n, P4497638529575502095.a n = (A195159 n : ℚ)

end A195159

/-! ## A195159.P17635176427093691999

`5*∑[∑[ogf(x^2/(1+2x+x^2))]]+n`
-/

namespace A195159.P17635176427093691999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A195159.P17635176427093691999

namespace A195159

/-- `5*∑[∑[ogf(x^2/(1+2x+x^2))]]+n` -/
def P17635176427093691999.Spec : Prop :=
  ∀ n, P17635176427093691999.a n = A195159 n

end A195159

/-! ## A195159.P179676936625772947

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=3`
-/

namespace A195159.P179676936625772947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A195159.P179676936625772947

namespace A195159

/-- `2*a(n-2)-a(n-4)` -/
def P179676936625772947.Spec : Prop :=
  ∀ n, P179676936625772947.a n = A195159 n

end A195159

/-! ## A195159.P17088646603558267747

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=3`
-/

namespace A195159.P17088646603558267747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 3] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A195159.P17088646603558267747

namespace A195159

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P17088646603558267747.Spec : Prop :=
  ∀ n, P17088646603558267747.a n = A195159 n

end A195159

/-! ## A195159.P6210019710687989499

`5*A142150(n)+n`
-/

namespace A195159.P6210019710687989499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A142150 n + (n : ℤ)

end

end A195159.P6210019710687989499

namespace A195159

/-- `5*A142150(n)+n` -/
def P6210019710687989499.Spec : Prop :=
  ∀ n, P6210019710687989499.a n = A195159 n

end A195159

/-! ## A195159.P5369754003945435187

`A047335(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A195159.P5369754003945435187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047335 n - a (n - 1) + (n : ℤ)

end

end A195159.P5369754003945435187

namespace A195159

/-- `A047335(n)-a(n-1)+n` -/
def P5369754003945435187.Spec : Prop :=
  ∀ n, P5369754003945435187.a n = A195159 n

end A195159

/-! ## A195159.P17697969296515864653

`n*C(5, A010690(n))/2+n`
-/

namespace A195159.P17697969296515864653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.choose 5 (A010690 n).toNat : ℚ) / 2) + (n : ℚ)

end

end A195159.P17697969296515864653

namespace A195159

/-- `n*C(5, A010690(n))/2+n` -/
def P17697969296515864653.Spec : Prop :=
  ∀ n, P17697969296515864653.a n = (A195159 n : ℚ)

end A195159

/-! ## A195159.P17354865564776204893

`5*char[2*n]*A014682(n)+n`
-/

namespace A195159.P17354865564776204893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) * A014682 n + (n : ℤ)

end

end A195159.P17354865564776204893

namespace A195159

/-- `5*char[2*n]*A014682(n)+n` -/
def P17354865564776204893.Spec : Prop :=
  ∀ n, P17354865564776204893.a n = A195159 n

end A195159

/-! ## A195159.P12519733173228428053

`(∑[char[A004277(n)+1]]+2*n)*char[2*n]+n`
-/

namespace A195159.P12519733173228428053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n) * (if ∃ j, f3 j = n then 1 else 0) + n

end

end A195159.P12519733173228428053

namespace A195159

/-- `(∑[char[A004277(n)+1]]+2*n)*char[2*n]+n` -/
def P12519733173228428053.Spec : Prop :=
  ∀ n, (P12519733173228428053.a n : ℤ) = A195159 n

end A195159

/-! ## A195159.P10270417293373074926

`A237420(n)+A195140(n)`
-/

namespace A195159.P10270417293373074926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A195140 n

end

end A195159.P10270417293373074926

namespace A195159

/-- `A237420(n)+A195140(n)` -/
def P10270417293373074926.Spec : Prop :=
  ∀ n, P10270417293373074926.a n = A195159 n

end A195159

/-! ## A195159.P10914806635406291924

`A195161(n)-A142150(n)`
-/

namespace A195159.P10914806635406291924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n - A142150 n

end

end A195159.P10914806635406291924

namespace A195159

/-- `A195161(n)-A142150(n)` -/
def P10914806635406291924.Spec : Prop :=
  ∀ n, P10914806635406291924.a n = A195159 n

end A195159

/-! ## A195159.P5133408776804171512

`A195312(n)-A237420(n)`
-/

namespace A195159.P5133408776804171512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n - A237420 n

end

end A195159.P5133408776804171512

namespace A195159

/-- `A195312(n)-A237420(n)` -/
def P5133408776804171512.Spec : Prop :=
  ∀ n, P5133408776804171512.a n = A195159 n

end A195159

/-! ## A195159.P18194916615883628868

`A182455(n)-A266594(n)`
-/

namespace A195159.P18194916615883628868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 n - A266594 n

end

end A195159.P18194916615883628868

namespace A195159

/-- `A182455(n)-A266594(n)` -/
def P18194916615883628868.Spec : Prop :=
  ∀ n, P18194916615883628868.a n = A195159 n

end A195159

/-! ## A195159.P2366575903323168327

`A298028(n)-A184418(n)`
-/

namespace A195159.P2366575903323168327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n - A184418 n

end

end A195159.P2366575903323168327

namespace A195159

/-- `A298028(n)-A184418(n)` -/
def P2366575903323168327.Spec : Prop :=
  ∀ n, P2366575903323168327.a n = A195159 n

end A195159

/-!
# A195160: Generalized 11-gonal (or hendecagonal) numbers: m*(9*m - 7)/2 with m = 0, 1, -1, 2, -2, 3, -3, ...

The programs for A195160, the canonical program `A195160.P6788095328231958283` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195160 has offset 0).

The definition of A195160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195160.P6788095328231958283

`(18*n*(n+1)+5*(2*n+1)*(-1)^n-5)/16`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195160

/-- `(18*n*(n+1)+5*(2*n+1)*(-1)^n-5)/16` -/
def P6788095328231958283.Spec : Prop :=
  ∀ n, P6788095328231958283.a n = (A195160 n : ℚ)

end A195160

/-! ## A195160.P2012985149792182274

`∑[n*(6-5/gcd(2, n))]`
-/

namespace A195160.P2012985149792182274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 - 5 / (Nat.gcd 2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P2012985149792182274

namespace A195160

/-- `∑[n*(6-5/gcd(2, n))]` -/
def P2012985149792182274.Spec : Prop :=
  ∀ n, P2012985149792182274.a n = (A195160 n : ℚ)

end A195160

/-! ## A195160.P10429901582477249994

`∑[eq[n, n*dr(n²)]]-a(n-1)` with `a(0)=0`
-/

namespace A195160.P10429901582477249994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A195160.P10429901582477249994

namespace A195160

/-- `∑[eq[n, n*dr(n²)]]-a(n-1)` -/
def P10429901582477249994.Spec : Prop :=
  ∀ n, P10429901582477249994.a n = A195160 n

end A195160

/-! ## A195160.P3811378288471332981

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=7, a(3)=3`
-/

namespace A195160.P3811378288471332981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P3811378288471332981

namespace A195160

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P3811378288471332981.Spec : Prop :=
  ∀ n, P3811378288471332981.a n = A195160 n

end A195160

/-! ## A195160.P1306844134575466497

`∑[A195159(n)]`
-/

namespace A195160.P1306844134575466497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P1306844134575466497

namespace A195160

/-- `∑[A195159(n)]` -/
def P1306844134575466497.Spec : Prop :=
  ∀ n, P1306844134575466497.a n = A195160 n

end A195160

/-! ## A195160.P5243378867681803151

`∑[2*n]-A317301(n)`
-/

namespace A195160.P5243378867681803151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A317301 n

end

end A195160.P5243378867681803151

namespace A195160

/-- `∑[2*n]-A317301(n)` -/
def P5243378867681803151.Spec : Prop :=
  ∀ n, P5243378867681803151.a n = A195160 n

end A195160

/-! ## A195160.P10877730301416115216

`∑[(A317312(n)+n)/2]`
-/

namespace A195160.P10877730301416115216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317312 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P10877730301416115216

namespace A195160

/-- `∑[(A317312(n)+n)/2]` -/
def P10877730301416115216.Spec : Prop :=
  ∀ n, P10877730301416115216.a n = (A195160 n : ℚ)

end A195160

/-! ## A195160.P1955071979291107372

`∑[A317314(n)/gcd(2, n)]`
-/

namespace A195160.P1955071979291107372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317314 n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P1955071979291107372

namespace A195160

/-- `∑[A317314(n)/gcd(2, n)]` -/
def P1955071979291107372.Spec : Prop :=
  ∀ n, P1955071979291107372.a n = (A195160 n : ℚ)

end A195160

/-! ## A195160.P15267883564710091962

`A195042(n)-a(n-1)` with `a(0)=0`
-/

namespace A195160.P15267883564710091962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195042 n - a (n - 1)

end

end A195160.P15267883564710091962

namespace A195160

/-- `A195042(n)-a(n-1)` -/
def P15267883564710091962.Spec : Prop :=
  ∀ n, P15267883564710091962.a n = A195160 n

end A195160

/-! ## A195160.P17976432699298559224

`A118277(n)+A110660(n)`
-/

namespace A195160.P17976432699298559224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n + A110660 n

end

end A195160.P17976432699298559224

namespace A195160

/-- `A118277(n)+A110660(n)` -/
def P17976432699298559224.Spec : Prop :=
  ∀ n, P17976432699298559224.a n = A195160 n

end A195160

/-! ## A195160.P12302558769603812577

`A210981(n)+A142150(n)`
-/

namespace A195160.P12302558769603812577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 n + A142150 n

end

end A195160.P12302558769603812577

namespace A195160

/-- `A210981(n)+A142150(n)` -/
def P12302558769603812577.Spec : Prop :=
  ∀ n, P12302558769603812577.a n = A195160 n

end A195160

/-! ## A195160.P628221010633021586

`A195313(n)-A110660(n)`
-/

namespace A195160.P628221010633021586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n - A110660 n

end

end A195160.P628221010633021586

namespace A195160

/-- `A195313(n)-A110660(n)` -/
def P628221010633021586.Spec : Prop :=
  ∀ n, P628221010633021586.a n = A195160 n

end A195160

/-! ## A195160.P16967047484722458577

`A186424(n)-A319390(n)`
-/

namespace A195160.P16967047484722458577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - A319390 n

end

end A195160.P16967047484722458577

namespace A195160

/-- `A186424(n)-A319390(n)` -/
def P16967047484722458577.Spec : Prop :=
  ∀ n, P16967047484722458577.a n = A195160 n

end A195160

/-! ## A195160.P9868615399555203771

`A198392(n)-A321220(n)`
-/

namespace A195160.P9868615399555203771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198392 n - A321220 n

end

end A195160.P9868615399555203771

namespace A195160

/-- `A198392(n)-A321220(n)` -/
def P9868615399555203771.Spec : Prop :=
  ∀ n, P9868615399555203771.a n = A195160 n

end A195160

/-! ## A195160.P13125250198587459595

`∪[A051682(n), A062728(n)]`
-/

namespace A195160.P13125250198587459595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195160.P13125250198587459595

namespace A195160

/-- `∪[A051682(n), A062728(n)]` -/
def P13125250198587459595.Spec : Prop :=
  ∀ n, (P13125250198587459595.a n : ℤ) = A195160 n

end A195160

/-! ## A195160.P12875846381637319363

`∑[gcd(A317314(n), A317321(n))]`
-/

namespace A195160.P12875846381637319363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317314 n) (A317321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195160.P12875846381637319363

namespace A195160

/-- `∑[gcd(A317314(n), A317321(n))]` -/
def P12875846381637319363.Spec : Prop :=
  ∀ n, (P12875846381637319363.a n : ℤ) = A195160 n

end A195160

/-! ## A195160.P15344359884245606345

`A046092(n)-A057570(n+1)`
-/

namespace A195160.P15344359884245606345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - A057570 (n + 1)

end

end A195160.P15344359884245606345

namespace A195160

/-- `A046092(n)-A057570(n+1)` -/
def P15344359884245606345.Spec : Prop :=
  ∀ n, P15344359884245606345.a n = A195160 n

end A195160

/-! ## A195160.P2619710713471771839

`A186424(n)-(A001318(n)+1)`
-/

namespace A195160.P2619710713471771839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n - (A001318 n + 1)

end

end A195160.P2619710713471771839

namespace A195160

/-- `A186424(n)-(A001318(n)+1)` -/
def P2619710713471771839.Spec : Prop :=
  ∀ n, P2619710713471771839.a n = A195160 n

end A195160

/-! ## A195160.P445632599309281731

`A213479(n)-A114753(n+1)`
-/

namespace A195160.P445632599309281731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n - A114753 (n + 1)

end

end A195160.P445632599309281731

namespace A195160

/-- `A213479(n)-A114753(n+1)` -/
def P445632599309281731.Spec : Prop :=
  ∀ n, P445632599309281731.a n = A195160 n

end A195160

/-! ## A195160.P8254077469666260292

`A274830(n+1)-A317300(n)`
-/

namespace A195160.P8254077469666260292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) - A317300 n

end

end A195160.P8254077469666260292

namespace A195160

/-- `A274830(n+1)-A317300(n)` -/
def P8254077469666260292.Spec : Prop :=
  ∀ n, P8254077469666260292.a n = A195160 n

end A195160

/-!
# A195161: Multiples of 8 and odd numbers interleaved.

The programs for A195161, the canonical program `A195161.P14193269120271702246` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195161 has offset 0).

The definition of A195161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195161.P17733634060697244733

`(6*(-1)^n+10)*n/4`
-/

namespace A195161.P17733634060697244733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (-1) ^ n + 10) * (n : ℤ) : ℚ) / 4

end

end A195161.P17733634060697244733

namespace A195161

/-- `(6*(-1)^n+10)*n/4` -/
def P17733634060697244733.Spec : Prop :=
  ∀ n, P17733634060697244733.a n = (A195161 n : ℚ)

theorem P17733634060697244733.correct : P17733634060697244733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195161, Nat.add_sub_cancel, A195161.P17733634060697244733.a, A195161.P14193269120271702246.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195161, Nat.add_sub_cancel, A195161.P17733634060697244733.a, A195161.P14193269120271702246.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195161

/-! ## A195161.P14193269120271702246

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195161

/-- `2*a(n-2)-a(n-4)` -/
def P14193269120271702246.Spec : Prop :=
  ∀ n, P14193269120271702246.a n = A195161 n

theorem P14193269120271702246.correct : P14193269120271702246.Spec := by
  intro n
  simp only [A195161]

end A195161

/-! ## A195161.P1811545913810119548

`gcd(4*n, n^3)`
-/

namespace A195161.P1811545913810119548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n) (n ^ 3)

end

end A195161.P1811545913810119548

namespace A195161

/-- `gcd(4*n, n^3)` -/
def P1811545913810119548.Spec : Prop :=
  ∀ n, (P1811545913810119548.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P13770049842504147629

`n*(2-n%2)²`
-/

namespace A195161.P13770049842504147629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) ^ 2

end

end A195161.P13770049842504147629

namespace A195161

/-- `n*(2-n%2)²` -/
def P13770049842504147629.Spec : Prop :=
  ∀ n, P13770049842504147629.a n = A195161 n

end A195161

/-! ## A195161.P15386263947912348376

`∑{d}[or(2*n, -3), n*#]`
-/

namespace A195161.P15386263947912348376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A195161.P15386263947912348376

namespace A195161

/-- `∑{d}[or(2*n, -3), n*#]` -/
def P15386263947912348376.Spec : Prop :=
  ∀ n, (P15386263947912348376.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P8457488836518055582

`3*n*(n+1)%2+n`
-/

namespace A195161.P8457488836518055582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * ((n + 1) % 2)) + n

end

end A195161.P8457488836518055582

namespace A195161

/-- `3*n*(n+1)%2+n` -/
def P8457488836518055582.Spec : Prop :=
  ∀ n, (P8457488836518055582.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P18169502821827634351

`3*n*and(1, n+1)+n`
-/

namespace A195161.P18169502821827634351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * Nat.land 1 (n + 1) + n

end

end A195161.P18169502821827634351

namespace A195161

/-- `3*n*and(1, n+1)+n` -/
def P18169502821827634351.Spec : Prop :=
  ∀ n, (P18169502821827634351.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P9086478422206473560

`lcm(n, gcd(2*2*n, and(1, n)))`
-/

namespace A195161.P9086478422206473560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd (2 * (2 * n)) (Nat.land 1 n))

end

end A195161.P9086478422206473560

namespace A195161

/-- `lcm(n, gcd(2*2*n, and(1, n)))` -/
def P9086478422206473560.Spec : Prop :=
  ∀ n, (P9086478422206473560.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P15275968834166796092

`∑{d}[2-a(n-1), n*#]` with `a(0)=3`
-/

namespace A195161.P15275968834166796092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A195161.P15275968834166796092

namespace A195161

/-- `∑{d}[2-a(n-1), n*#]` -/
def P15275968834166796092.Spec : Prop :=
  ∀ n, (P15275968834166796092.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P6255136893277495083

`∑{digits}[3-a(n-1), n*#]` with `a(0)=4`
-/

namespace A195161.P6255136893277495083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n * x).sum

end

end A195161.P6255136893277495083

namespace A195161

/-- `∑{digits}[3-a(n-1), n*#]` -/
def P6255136893277495083.Spec : Prop :=
  ∀ n, (P6255136893277495083.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P1057829942005085342

`∏{digits}[3-a(n-1), n*#]` with `a(0)=4`
-/

namespace A195161.P1057829942005085342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n * x).prod

end

end A195161.P1057829942005085342

namespace A195161

/-- `∏{digits}[3-a(n-1), n*#]` -/
def P1057829942005085342.Spec : Prop :=
  ∀ n, (P1057829942005085342.a n : ℤ) = A195161 n

end A195161

/-! ## A195161.P1464324624185030268

`n*∑[-a(n-1)]+n` with `a(0)=3`
-/

namespace A195161.P1464324624185030268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A195161.P1464324624185030268

namespace A195161

/-- `n*∑[-a(n-1)]+n` -/
def P1464324624185030268.Spec : Prop :=
  ∀ n, P1464324624185030268.a n = A195161 n

end A195161

/-! ## A195161.P3216490993314608304

`n*∑[2-a(n-1)]-n²` with `a(0)=4`
-/

namespace A195161.P3216490993314608304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n ^ 2 : ℤ)

end

end A195161.P3216490993314608304

namespace A195161

/-- `n*∑[2-a(n-1)]-n²` -/
def P3216490993314608304.Spec : Prop :=
  ∀ n, P3216490993314608304.a n = A195161 n

end A195161

/-! ## A195161.P17263795222125165144

`floor(n*(∑[2-a(n-1)]-n))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A195161.P17263795222125165144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A195161.P17263795222125165144

namespace A195161

/-- `floor(n*(∑[2-a(n-1)]-n))` -/
def P17263795222125165144.Spec : Prop :=
  ∀ n, P17263795222125165144.a n = A195161 n

end A195161

/-! ## A195161.P18018693116537890129

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=3`
-/

namespace A195161.P18018693116537890129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 3] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A195161.P18018693116537890129

namespace A195161

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P18018693116537890129.Spec : Prop :=
  ∀ n, P18018693116537890129.a n = A195161 n

theorem P18018693116537890129.correct : P18018693116537890129.Spec := by
  intro n
  simp only [A195161, Nat.add_sub_cancel, A195161.P18018693116537890129.a, A195161.P14193269120271702246.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195161

/-!
# A195162: Generalized 12-gonal numbers: k*(5*k-4) for k = 0, +-1, +-2, ...

The programs for A195162, the canonical program `A195162.P14419393006521997069` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195162 has offset 0).

The definition of A195162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195162.P9393596654436376850

`(10*n*(n+1)+3*(2*n+1)*(-1)^n-3)/8`
-/

namespace A195162.P9393596654436376850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n * (n + 1) : ℤ) + (3 * (2 * n + 1) : ℤ) * (-1) ^ n - 3 : ℚ) / 8

end

end A195162.P9393596654436376850

namespace A195162

/-- `(10*n*(n+1)+3*(2*n+1)*(-1)^n-3)/8` -/
def P9393596654436376850.Spec : Prop :=
  ∀ n, P9393596654436376850.a n = (A195162 n : ℚ)

theorem P9393596654436376850.correct : P9393596654436376850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A195162, Nat.add_sub_cancel, A195162.P9393596654436376850.a, A195162.P14419393006521997069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A195162, Nat.add_sub_cancel, A195162.P9393596654436376850.a, A195162.P14419393006521997069.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195162

/-! ## A195162.P14419393006521997069

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=12, a(4)=28`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195162

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14419393006521997069.Spec : Prop :=
  ∀ n, P14419393006521997069.a n = A195162 n

theorem P14419393006521997069.correct : P14419393006521997069.Spec := by
  intro n
  simp only [A195162]

end A195162

/-! ## A195162.P8114301450119339422

`∑[n*gcd(2, n)²]`
-/

namespace A195162.P8114301450119339422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P8114301450119339422

namespace A195162

/-- `∑[n*gcd(2, n)²]` -/
def P8114301450119339422.Spec : Prop :=
  ∀ n, (P8114301450119339422.a n : ℤ) = A195162 n

end A195162

/-! ## A195162.P5630930960445215436

`∑[gcd(4*n, n^3)]`
-/

namespace A195162.P5630930960445215436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n) (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P5630930960445215436

namespace A195162

/-- `∑[gcd(4*n, n^3)]` -/
def P5630930960445215436.Spec : Prop :=
  ∀ n, (P5630930960445215436.a n : ℤ) = A195162 n

end A195162

/-! ## A195162.P17174103576629582321

`∑[n*or(n, -2)²]`
-/

namespace A195162.P17174103576629582321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P17174103576629582321

namespace A195162

/-- `∑[n*or(n, -2)²]` -/
def P17174103576629582321.Spec : Prop :=
  ∀ n, P17174103576629582321.a n = A195162 n

end A195162

/-! ## A195162.P653548826233070184

`∑[n*(2-n%2)²]`
-/

namespace A195162.P653548826233070184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P653548826233070184

namespace A195162

/-- `∑[n*(2-n%2)²]` -/
def P653548826233070184.Spec : Prop :=
  ∀ n, P653548826233070184.a n = A195162 n

end A195162

/-! ## A195162.P12439702230300037575

`∑[n*(and(1, n)-2)²]`
-/

namespace A195162.P12439702230300037575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 1 n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P12439702230300037575

namespace A195162

/-- `∑[n*(and(1, n)-2)²]` -/
def P12439702230300037575.Spec : Prop :=
  ∀ n, P12439702230300037575.a n = A195162 n

end A195162

/-! ## A195162.P6167156177320627141

`∑[n*4^and(1, n+1)]`
-/

namespace A195162.P6167156177320627141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P6167156177320627141

namespace A195162

/-- `∑[n*4^and(1, n+1)]` -/
def P6167156177320627141.Spec : Prop :=
  ∀ n, (P6167156177320627141.a n : ℤ) = A195162 n

end A195162

/-! ## A195162.P13691199633247788219

`∑[n*gcd(4, n*(n+2))]`
-/

namespace A195162.P13691199633247788219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 4 (n * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P13691199633247788219

namespace A195162

/-- `∑[n*gcd(4, n*(n+2))]` -/
def P13691199633247788219.Spec : Prop :=
  ∀ n, (P13691199633247788219.a n : ℤ) = A195162 n

end A195162

/-! ## A195162.P6482599849267486460

`floor(∑[5-a(n-1)]²/5)` with `a(0)=2, a(1)=1`
-/

namespace A195162.P6482599849267486460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 5⌋

end

end A195162.P6482599849267486460

namespace A195162

/-- `floor(∑[5-a(n-1)]²/5)` -/
def P6482599849267486460.Spec : Prop :=
  ∀ n, P6482599849267486460.a n = A195162 n

end A195162

/-! ## A195162.P9748128268333802268

`∑[n*(lcm(2, n+1)/(n+1))²]`
-/

namespace A195162.P9748128268333802268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lcm 2 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P9748128268333802268

namespace A195162

/-- `∑[n*(lcm(2, n+1)/(n+1))²]` -/
def P9748128268333802268.Spec : Prop :=
  ∀ n, P9748128268333802268.a n = (A195162 n : ℚ)

end A195162

/-! ## A195162.P11052966161708693758

`∑[n/(gcd(n+1, n-1)/2)²]`
-/

namespace A195162.P11052966161708693758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P11052966161708693758

namespace A195162

/-- `∑[n/(gcd(n+1, n-1)/2)²]` -/
def P11052966161708693758.Spec : Prop :=
  ∀ n, P11052966161708693758.a n = (A195162 n : ℚ)

end A195162

/-! ## A195162.P2593844272931252826

`∑[n*(∑[2-a(n-1)]-n)]` with `a(0)=4`
-/

namespace A195162.P2593844272931252826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P2593844272931252826

namespace A195162

/-- `∑[n*(∑[2-a(n-1)]-n)]` -/
def P2593844272931252826.Spec : Prop :=
  ∀ n, P2593844272931252826.a n = A195162 n

end A195162

/-! ## A195162.P9796117030361346848

`a(n-1)+n*gcd(2*n, (n+2)²)` with `a(0)=0`
-/

namespace A195162.P9796117030361346848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * Nat.gcd (2 * n) ((n + 2) ^ 2)

end

end A195162.P9796117030361346848

namespace A195162

/-- `a(n-1)+n*gcd(2*n, (n+2)²)` -/
def P9796117030361346848.Spec : Prop :=
  ∀ n, (P9796117030361346848.a n : ℤ) = A195162 n

end A195162

/-! ## A195162.P1628517617457633356

`∑[A195161(n)]`
-/

namespace A195162.P1628517617457633356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P1628517617457633356

namespace A195162

/-- `∑[A195161(n)]` -/
def P1628517617457633356.Spec : Prop :=
  ∀ n, P1628517617457633356.a n = A195162 n

end A195162

/-! ## A195162.P18315388250430657688

`∑[n*A040005(n)]`
-/

namespace A195162.P18315388250430657688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P18315388250430657688

namespace A195162

/-- `∑[n*A040005(n)]` -/
def P18315388250430657688.Spec : Prop :=
  ∀ n, P18315388250430657688.a n = A195162 n

end A195162

/-! ## A195162.P13536249088117150910

`A062317(n+1)-1`
-/

namespace A195162.P13536249088117150910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (n + 1) - 1

end

end A195162.P13536249088117150910

namespace A195162

/-- `A062317(n+1)-1` -/
def P13536249088117150910.Spec : Prop :=
  ∀ n, P13536249088117150910.a n = A195162 n

end A195162

/-! ## A195162.P9550045621403422348

`∑[n*A040001(n)²]`
-/

namespace A195162.P9550045621403422348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040001 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P9550045621403422348

namespace A195162

/-- `∑[n*A040001(n)²]` -/
def P9550045621403422348.Spec : Prop :=
  ∀ n, P9550045621403422348.a n = A195162 n

end A195162

/-! ## A195162.P4805013780088844337

`∑[n*A134451(n)²]`
-/

namespace A195162.P4805013780088844337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134451 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P4805013780088844337

namespace A195162

/-- `∑[n*A134451(n)²]` -/
def P4805013780088844337.Spec : Prop :=
  ∀ n, P4805013780088844337.a n = A195162 n

end A195162

/-! ## A195162.P1027030227185283437

`∑[n*A228826(n)²]`
-/

namespace A195162.P1027030227185283437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228826 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195162.P1027030227185283437

namespace A195162

/-- `∑[n*A228826(n)²]` -/
def P1027030227185283437.Spec : Prop :=
  ∀ n, P1027030227185283437.a n = A195162 n

end A195162

/-!
# A195163: 1000-gonal numbers: a(n) = n*(499*n - 498).

The programs for A195163, the canonical program `A195163.P9909769284361871532` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195163 has offset 0).

The definition of A195163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(499*n-498)` (program `A195163.P9909769284361871532`, by `A195163.P9909769284361871532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195163.P9909769284361871532

`n*(499*n-498)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195163

/-- `n*(499*n-498)` -/
def P9909769284361871532.Spec : Prop :=
  ∀ n, P9909769284361871532.a n = A195163 n

theorem P9909769284361871532.correct : P9909769284361871532.Spec := by
  intro n
  simp only [A195163]

end A195163

/-! ## A195163.P4548406719984257816

`∑[998+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A195163.P4548406719984257816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  998 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195163.P4548406719984257816

namespace A195163

/-- `∑[998+a(n-1)]` -/
def P4548406719984257816.Spec : Prop :=
  ∀ n, (P4548406719984257816.a n : ℤ) = A195163 n

end A195163

/-!
# A195164: a(n) = column number of Stolarsky array that contains n with column count beginning at 1.

The programs for A195164, there is no canonical definition to state claims against.
-/

/-! ## A195164.P1548969483973443246

`A098862(n+1)+1`
-/

namespace A195164.P1548969483973443246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098862 (n + 1) + 1

end

end A195164.P1548969483973443246

/-! ## A195164.P9924857314953709174

`floor(log(A255973(n+1)²))+1`
-/

namespace A195164.P9924857314953709174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A255973 (n + 1) ^ 2 : ℝ)⌋ + 1

end

end A195164.P9924857314953709174

/-! ## A195164.P14084579752560469689

`val(A200714(n+1)+1, 2)+1`
-/

namespace A195164.P14084579752560469689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200714 (n + 1) + 1).toNat 2 + 1

end

end A195164.P14084579752560469689

/-! ## A195164.P9451927737167830224

`A004736(A064357(n+1))`
-/

namespace A195164.P9451927737167830224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064357 (n + 1)).toNat

end

end A195164.P9451927737167830224

/-! ## A195164.P369003537183042799

`A035612(A256662(n+1))`
-/

namespace A195164.P369003537183042799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A256662 (n + 1)).toNat

end

end A195164.P369003537183042799

/-! ## A195164.P236646644995228893

`A001511(A200714(n+1)+1)`
-/

namespace A195164.P236646644995228893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A200714 (n + 1) + 1).toNat

end

end A195164.P236646644995228893

/-! ## A195164.P8459465693989136362

`A004233(A255973(n+1)²+1)`
-/

namespace A195164.P8459465693989136362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A255973 (n + 1) ^ 2 + 1).toNat

end

end A195164.P8459465693989136362

/-! ## A195164.P3775710342771126750

`A348553(round(log(A255973(n+1)²)))`
-/

namespace A195164.P3775710342771126750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (SequenceMachineLib.roundAway (Real.log (A255973 (n + 1) ^ 2 : ℝ))).toNat

end

end A195164.P3775710342771126750

/-! ## A195164.P5498364600616166681

`A035614(A256662(n+1)-1)+1`
-/

namespace A195164.P5498364600616166681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (A256662 (n + 1) - 1).toNat + 1

end

end A195164.P5498364600616166681

/-! ## A195164.P17461120436073471162

`A000027(round(log(A255973(n+1)²))+1)`
-/

namespace A195164.P17461120436073471162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.log (A255973 (n + 1) ^ 2 : ℝ)) + 1).toNat

end

end A195164.P17461120436073471162

/-!
# A195166: Numbers expressible as 2^a - 2^b, with 0 <= b < a, such that n^a - n^b is divisible by 2^a - 2^b for all n.

The programs for A195166, there is no canonical definition to state claims against.
-/

/-! ## A195166.P13030580703242179765

`A361477(A231303(n+1))`
-/

namespace A195166.P13030580703242179765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361477 (A231303 (n + 1)).toNat

end

end A195166.P13030580703242179765

/-! ## A195166.P6614345902753726921

`A046523(and(A000984(n), A005809(n)))`
-/

namespace A195166.P6614345902753726921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.land (A000984 n) (A005809 n)).toNat

end

end A195166.P6614345902753726921

/-! ## A195166.P7022307401854853649

`A278523(A122975(n+1)*A122993(n))`
-/

namespace A195166.P7022307401854853649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A122975 (n + 1) * A122993 n).toNat

end

end A195166.P7022307401854853649

/-! ## A195166.P1784689745838063834

`A005811(A292078(n+1))*A018703(n+1)`
-/

namespace A195166.P1784689745838063834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A292078 (n + 1)).toNat * A018703 (n + 1)

end

end A195166.P1784689745838063834

/-!
# A195167: a(n) = 3*n - floor(n*r/2), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195167, the canonical program `A195167.P17142565667869507811` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195167 has offset 0).

The definition of A195167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195167.P17142565667869507811

`3*n-floor(n*(1+sqrt(5))/4)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195167

/-- `3*n-floor(n*(1+sqrt(5))/4)` -/
def P17142565667869507811.Spec : Prop :=
  ∀ n, P17142565667869507811.a n = A195167 n

theorem P17142565667869507811.correct : P17142565667869507811.Spec := by
  intro n
  simp only [A195167]

end A195167

/-! ## A195167.P14238675309809869666

`round(A195123(3*n)/2)`
-/

namespace A195167.P14238675309809869666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195123 (3 * n) : ℚ) / 2)

end

end A195167.P14238675309809869666

namespace A195167

/-- `round(A195123(3*n)/2)` -/
def P14238675309809869666.Spec : Prop :=
  ∀ n, P14238675309809869666.a n = A195167 n

end A195167

/-! ## A195167.P15424239439799732887

`A110654(A195171(n)+n)`
-/

namespace A195167.P15424239439799732887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A195171 n + (n : ℤ)).toNat

end

end A195167.P15424239439799732887

namespace A195167

/-- `A110654(A195171(n)+n)` -/
def P15424239439799732887.Spec : Prop :=
  ∀ n, P15424239439799732887.a n = A195167 n

end A195167

/-! ## A195167.P14852522703905249885

`A004526(A189663(n+1)+A004273(2*n+1))`
-/

namespace A195167.P14852522703905249885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189663 (n + 1) + A004273 (2 * n + 1)).toNat

end

end A195167.P14852522703905249885

namespace A195167

/-- `A004526(A189663(n+1)+A004273(2*n+1))` -/
def P14852522703905249885.Spec : Prop :=
  ∀ n, P14852522703905249885.a n = A195167 n

end A195167

/-! ## A195167.P14654154036306067340

`A131209(A172278(n))`
-/

namespace A195167.P14654154036306067340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A172278 n).toNat

end

end A195167.P14654154036306067340

namespace A195167

/-- `A131209(A172278(n))` -/
def P14654154036306067340.Spec : Prop :=
  ∀ n, P14654154036306067340.a n = A195167 n

end A195167

/-!
# A195168: a(n) = 3*n - floor(n*r/3), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195168, the canonical program `A195168.P1378177063111106929` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195168 has offset 0).

The definition of A195168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195168.P1378177063111106929

`3*n-floor(n*(1+sqrt(5))/6)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195168

/-- `3*n-floor(n*(1+sqrt(5))/6)` -/
def P1378177063111106929.Spec : Prop :=
  ∀ n, P1378177063111106929.a n = A195168 n

theorem P1378177063111106929.correct : P1378177063111106929.Spec := by
  intro n
  simp only [A195168]

end A195168

/-! ## A195168.P761264281587665527

`A002264(3*A016777(n)-A026351(n))`
-/

namespace A195168.P761264281587665527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A016777 n - A026351 n).toNat

end

end A195168.P761264281587665527

namespace A195168

/-- `A002264(3*A016777(n)-A026351(n))` -/
def P761264281587665527.Spec : Prop :=
  ∀ n, P761264281587665527.a n = A195168 n

end A195168

/-! ## A195168.P6652214468652620927

`A003056(n*A118003(3*n+4))`
-/

namespace A195168.P6652214468652620927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((n : ℤ) * A118003 (3 * n + 4)).toNat

end

end A195168.P6652214468652620927

namespace A195168

/-- `A003056(n*A118003(3*n+4))` -/
def P6652214468652620927.Spec : Prop :=
  ∀ n, P6652214468652620927.a n = A195168 n

end A195168

/-! ## A195168.P17348101869946953391

`A003056(A140676(n)%A260094(n+3))`
-/

namespace A195168.P17348101869946953391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A140676 n) (A260094 (n + 3))).toNat

end

end A195168.P17348101869946953391

namespace A195168

/-- `A003056(A140676(n)%A260094(n+3))` -/
def P17348101869946953391.Spec : Prop :=
  ∀ n, P17348101869946953391.a n = A195168 n

end A195168

/-! ## A195168.P1143753656760724958

`A003056(A140676(n))%A350141(n+1)`
-/

namespace A195168.P1143753656760724958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A140676 n).toNat) (A350141 (n + 1))

end

end A195168.P1143753656760724958

namespace A195168

/-- `A003056(A140676(n))%A350141(n+1)` -/
def P1143753656760724958.Spec : Prop :=
  ∀ n, P1143753656760724958.a n = A195168 n

end A195168

/-!
# A195169: a(n) = 3*n - floor(2*n*r/3), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195169, the canonical program `A195169.P9511558670231736998` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195169 has offset 0).

The definition of A195169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195169.P9511558670231736998

`3*n-floor(n*(1+sqrt(5))/3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195169

/-- `3*n-floor(n*(1+sqrt(5))/3)` -/
def P9511558670231736998.Spec : Prop :=
  ∀ n, P9511558670231736998.a n = A195169 n

theorem P9511558670231736998.correct : P9511558670231736998.Spec := by
  intro n
  simp only [A195169]

end A195169

/-! ## A195169.P4138045523665419254

`abs(A195123(2*n)-n)`
-/

namespace A195169.P4138045523665419254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195123 (2 * n) - (n : ℤ)|

end

end A195169.P4138045523665419254

namespace A195169

/-- `abs(A195123(2*n)-n)` -/
def P4138045523665419254.Spec : Prop :=
  ∀ n, P4138045523665419254.a n = A195169 n

end A195169

/-! ## A195169.P1124259303959108631

`record[A195123(n)-A001281(n)]`
-/

namespace A195169.P1124259303959108631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195123 n - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195169.P1124259303959108631

namespace A195169

/-- `record[A195123(n)-A001281(n)]` -/
def P1124259303959108631.Spec : Prop :=
  ∀ n, P1124259303959108631.a n = A195169 n

end A195169

/-! ## A195169.P14071979902704145135

`A002264(A195121(2*n)+A016789(n))`
-/

namespace A195169.P14071979902704145135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A195121 (2 * n) + A016789 n).toNat

end

end A195169.P14071979902704145135

namespace A195169

/-- `A002264(A195121(2*n)+A016789(n))` -/
def P14071979902704145135.Spec : Prop :=
  ∀ n, P14071979902704145135.a n = A195169 n

end A195169

/-! ## A195169.P1920911822664632370

`A195124(3*n)%A086361(n+1)`
-/

namespace A195169.P1920911822664632370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195124 (3 * n)) (A086361 (n + 1))

end

end A195169.P1920911822664632370

namespace A195169

/-- `A195124(3*n)%A086361(n+1)` -/
def P1920911822664632370.Spec : Prop :=
  ∀ n, P1920911822664632370.a n = A195169 n

end A195169

/-!
# A195170: a(n) = 4*n - floor(n*r), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195170, the canonical program `A195170.P6294937364221952630` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195170 has offset 0).

The definition of A195170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195170.P6294937364221952630

`4*n-floor(n*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195170

/-- `4*n-floor(n*(1+sqrt(5))/2)` -/
def P6294937364221952630.Spec : Prop :=
  ∀ n, P6294937364221952630.a n = A195170 n

theorem P6294937364221952630.correct : P6294937364221952630.Spec := by
  intro n
  simp only [A195170]

end A195170

/-! ## A195170.P5078970312650930001

`A016885(n)%A022413(n)`
-/

namespace A195170.P5078970312650930001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016885 n) (A022413 n)

end

end A195170.P5078970312650930001

namespace A195170

/-- `A016885(n)%A022413(n)` -/
def P5078970312650930001.Spec : Prop :=
  ∀ n, P5078970312650930001.a n = A195170 n

end A195170

/-! ## A195170.P15481250801292214728

`A016873(n)%A007066(n+1)`
-/

namespace A195170.P15481250801292214728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016873 n) (A007066 (n + 1))

end

end A195170.P15481250801292214728

namespace A195170

/-- `A016873(n)%A007066(n+1)` -/
def P15481250801292214728.Spec : Prop :=
  ∀ n, P15481250801292214728.a n = A195170 n

end A195170

/-! ## A195170.P7111030728562644883

`A016933(n)%A284624(n+1)`
-/

namespace A195170.P7111030728562644883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016933 n) (A284624 (n + 1))

end

end A195170.P7111030728562644883

namespace A195170

/-- `A016933(n)%A284624(n+1)` -/
def P7111030728562644883.Spec : Prop :=
  ∀ n, P7111030728562644883.a n = A195170 n

end A195170

/-! ## A195170.P8321208499798900384

`ceil(A195172(n)+A050508(n)/A028310(n))`
-/

namespace A195170.P8321208499798900384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195172 n : ℚ) + (A050508 n : ℚ) / (A028310 n : ℚ)⌉

end

end A195170.P8321208499798900384

namespace A195170

/-- `ceil(A195172(n)+A050508(n)/A028310(n))` -/
def P8321208499798900384.Spec : Prop :=
  ∀ n, P8321208499798900384.a n = A195170 n

end A195170

/-! ## A195170.P7810301625192016770

`A195122(2*n)`
-/

namespace A195170.P7810301625192016770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 (2 * n)

end

end A195170.P7810301625192016770

namespace A195170

/-- `A195122(2*n)` -/
def P7810301625192016770.Spec : Prop :=
  ∀ n, P7810301625192016770.a n = A195170 n

end A195170

/-! ## A195170.P9402475116993209834

`abs(A022959(2*n+3)-ceil(n/ϕ²))`
-/

namespace A195170.P9402475116993209834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022959 (2 * n + 3) - ⌈(n : ℝ) / Real.goldenRatio ^ 2⌉|

end

end A195170.P9402475116993209834

namespace A195170

/-- `abs(A022959(2*n+3)-ceil(n/ϕ²))` -/
def P9402475116993209834.Spec : Prop :=
  ∀ n, P9402475116993209834.a n = A195170 n

end A195170

/-! ## A195170.P16148603363742627929

`lt[Δ[Δ[A285680(n+1)]], 1]`
-/

namespace A195170.P16148603363742627929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A195170.P16148603363742627929

namespace A195170

/-- `lt[Δ[Δ[A285680(n+1)]], 1]` -/
def P16148603363742627929.Spec : Prop :=
  ∀ n, (P16148603363742627929.a n : ℤ) = A195170 n

end A195170

/-! ## A195170.P307411576939808266

`A016921(n)%A214971(n+1)`
-/

namespace A195170.P307411576939808266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016921 n) (A214971 (n + 1))

end

end A195170.P307411576939808266

namespace A195170

/-- `A016921(n)%A214971(n+1)` -/
def P307411576939808266.Spec : Prop :=
  ∀ n, P307411576939808266.a n = A195170 n

end A195170

/-! ## A195170.P3326640321738140776

`A271114(n)%A214971(n+1)`
-/

namespace A195170.P3326640321738140776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271114 n) (A214971 (n + 1))

end

end A195170.P3326640321738140776

namespace A195170

/-- `A271114(n)%A214971(n+1)` -/
def P3326640321738140776.Spec : Prop :=
  ∀ n, P3326640321738140776.a n = A195170 n

end A195170

/-!
# A195171: a(n) = 5*n - floor(n*r), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195171, the canonical program `A195171.P4088353901745982545` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195171 has offset 0).

The definition of A195171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195171.P4088353901745982545

`5*n-floor(n*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195171

/-- `5*n-floor(n*(1+sqrt(5))/2)` -/
def P4088353901745982545.Spec : Prop :=
  ∀ n, P4088353901745982545.a n = A195171 n

theorem P4088353901745982545.correct : P4088353901745982545.Spec := by
  intro n
  simp only [A195171]

end A195171

/-! ## A195171.P6294377393367511967

`A017005(n)%A284624(n+1)`
-/

namespace A195171.P6294377393367511967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017005 n) (A284624 (n + 1))

end

end A195171.P6294377393367511967

namespace A195171

/-- `A017005(n)%A284624(n+1)` -/
def P6294377393367511967.Spec : Prop :=
  ∀ n, P6294377393367511967.a n = A195171 n

end A195171

/-! ## A195171.P8255320363294299065

`abs(A007310(2*n+1)-A026352(n))`
-/

namespace A195171.P8255320363294299065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007310 (2 * n + 1) - A026352 n|

end

end A195171.P8255320363294299065

namespace A195171

/-- `abs(A007310(2*n+1)-A026352(n))` -/
def P8255320363294299065.Spec : Prop :=
  ∀ n, P8255320363294299065.a n = A195171 n

end A195171

/-! ## A195171.P3515782028691463625

`abs(A047202(3*n+1)-A099267(n+1))`
-/

namespace A195171.P3515782028691463625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047202 (3 * n + 1) - A099267 (n + 1)|

end

end A195171.P3515782028691463625

namespace A195171

/-- `abs(A047202(3*n+1)-A099267(n+1))` -/
def P3515782028691463625.Spec : Prop :=
  ∀ n, P3515782028691463625.a n = A195171 n

end A195171

/-!
# A195172: a(n) = 4*n - floor(2*n*r), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195172, the canonical program `A195172.P3774427057211869333` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195172 has offset 0).

The definition of A195172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195172.P3774427057211869333

`4*n-floor(n*(1+sqrt(5)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195172

/-- `4*n-floor(n*(1+sqrt(5)))` -/
def P3774427057211869333.Spec : Prop :=
  ∀ n, P3774427057211869333.a n = A195172 n

theorem P3774427057211869333.correct : P3774427057211869333.Spec := by
  intro n
  simp only [A195172]

end A195172

/-! ## A195172.P2226792509472277063

`A189663(2*n+1)`
-/

namespace A195172.P2226792509472277063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (2 * n + 1)

end

end A195172.P2226792509472277063

namespace A195172

/-- `A189663(2*n+1)` -/
def P2226792509472277063.Spec : Prop :=
  ∀ n, P2226792509472277063.a n = A195172 n

end A195172

/-! ## A195172.P13586835824773221139

`∑[3%Δ[floor((n-1)*sqrt(5))]]`
-/

namespace A195172.P13586835824773221139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195172.P13586835824773221139

namespace A195172

/-- `∑[3%Δ[floor((n-1)*sqrt(5))]]` -/
def P13586835824773221139.Spec : Prop :=
  ∀ n, P13586835824773221139.a n = A195172 n

end A195172

/-! ## A195172.P8957573275459699564

`ceil(2*n/ϕ²)%(n+1)`
-/

namespace A195172.P8957573275459699564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n : ℝ) / Real.goldenRatio ^ 2⌉ (n + 1 : ℤ)

end

end A195172.P8957573275459699564

namespace A195172

/-- `ceil(2*n/ϕ²)%(n+1)` -/
def P8957573275459699564.Spec : Prop :=
  ∀ n, P8957573275459699564.a n = A195172 n

end A195172

/-! ## A195172.P18257310090341176176

`∑[char[A188188(n+1)]]`
-/

namespace A195172.P18257310090341176176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195172.P18257310090341176176

namespace A195172

/-- `∑[char[A188188(n+1)]]` -/
def P18257310090341176176.Spec : Prop :=
  ∀ n, (P18257310090341176176.a n : ℤ) = A195172 n

end A195172

/-! ## A195172.P3415840521874154435

`A110654(A195175(n))`
-/

namespace A195172.P3415840521874154435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A195175 n).toNat

end

end A195172.P3415840521874154435

namespace A195172

/-- `A110654(A195175(n))` -/
def P3415840521874154435.Spec : Prop :=
  ∀ n, P3415840521874154435.a n = A195172 n

end A195172

/-! ## A195172.P5776821584727822992

`A060144(A282162(2*n)+2*n)`
-/

namespace A195172.P5776821584727822992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A282162 (2 * n) + (2 * n : ℤ)).toNat

end

end A195172.P5776821584727822992

namespace A195172

/-- `A060144(A282162(2*n)+2*n)` -/
def P5776821584727822992.Spec : Prop :=
  ∀ n, P5776821584727822992.a n = A195172 n

end A195172

/-! ## A195172.P1261148185677039389

`A060144(A001468(2*n)+2*n+1)`
-/

namespace A195172.P1261148185677039389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A001468 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A195172.P1261148185677039389

namespace A195172

/-- `A060144(A001468(2*n)+2*n+1)` -/
def P1261148185677039389.Spec : Prop :=
  ∀ n, P1261148185677039389.a n = A195172 n

end A195172

/-! ## A195172.P1390674668084990703

`A300763(A026351(2*n+1)-2)`
-/

namespace A195172.P1390674668084990703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A026351 (2 * n + 1) - 2).toNat

end

end A195172.P1390674668084990703

namespace A195172

/-- `A300763(A026351(2*n+1)-2)` -/
def P1390674668084990703.Spec : Prop :=
  ∀ n, P1390674668084990703.a n = A195172 n

end A195172

/-! ## A195172.P4301281539907070687

`A300763(A005206(2*n)+2*n)`
-/

namespace A195172.P4301281539907070687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A005206 (2 * n) + (2 * n : ℤ)).toNat

end

end A195172.P4301281539907070687

namespace A195172

/-- `A300763(A005206(2*n)+2*n)` -/
def P4301281539907070687.Spec : Prop :=
  ∀ n, P4301281539907070687.a n = A195172 n

end A195172

/-!
# A195173: a(n) = 5*n - floor(2n*r), where r=(1+sqrt(5))/2 (the golden ratio).

The programs for A195173, the canonical program `A195173.P5525217484699142708` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195173 has offset 0).

The definition of A195173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195173.P5525217484699142708

`5*n-floor(n*(1+sqrt(5)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195173

/-- `5*n-floor(n*(1+sqrt(5)))` -/
def P5525217484699142708.Spec : Prop :=
  ∀ n, P5525217484699142708.a n = A195173 n

theorem P5525217484699142708.correct : P5525217484699142708.Spec := by
  intro n
  simp only [A195173]

end A195173

/-! ## A195173.P410498943425699369

`comp[comp[A004958(n)]+n]`
-/

namespace A195173.P410498943425699369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195173.P410498943425699369

namespace A195173

/-- `comp[comp[A004958(n)]+n]` -/
def P410498943425699369.Spec : Prop :=
  ∀ n, (P410498943425699369.a n : ℤ) = A195173 n

end A195173

/-! ## A195173.P10790541726983997268

`comp[A188188(n+1)+n]`
-/

namespace A195173.P10790541726983997268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195173.P10790541726983997268

namespace A195173

/-- `comp[A188188(n+1)+n]` -/
def P10790541726983997268.Spec : Prop :=
  ∀ n, (P10790541726983997268.a n : ℤ) = A195173 n

end A195173

/-! ## A195173.P3030611290946433211

`abs(comp[A007064(n+1)]-A195171(n))`
-/

namespace A195173.P3030611290946433211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A195171 n|

end

end A195173.P3030611290946433211

namespace A195173

/-- `abs(comp[A007064(n+1)]-A195171(n))` -/
def P3030611290946433211.Spec : Prop :=
  ∀ n, P3030611290946433211.a n = A195173 n

end A195173

/-! ## A195173.P12546923179091982673

`ceil(A195171(n)-A050508(n)/A028310(n))`
-/

namespace A195173.P12546923179091982673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195171 n : ℚ) - (A050508 n : ℚ) / (A028310 n : ℚ)⌉

end

end A195173.P12546923179091982673

namespace A195173

/-- `ceil(A195171(n)-A050508(n)/A028310(n))` -/
def P12546923179091982673.Spec : Prop :=
  ∀ n, P12546923179091982673.a n = A195173 n

end A195173

/-! ## A195173.P17021621701117371933

`record[2*n-floor(n/ϕ)-A001281(n)]`
-/

namespace A195173.P17021621701117371933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(n : ℝ) / Real.goldenRatio⌋ - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195173.P17021621701117371933

namespace A195173

/-- `record[2*n-floor(n/ϕ)-A001281(n)]` -/
def P17021621701117371933.Spec : Prop :=
  ∀ n, P17021621701117371933.a n = A195173 n

end A195173

/-! ## A195173.P12757295127993530949

`A300763(A134859(2*n+1)-(n+1))`
-/

namespace A195173.P12757295127993530949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A134859 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A195173.P12757295127993530949

namespace A195173

/-- `A300763(A134859(2*n+1)-(n+1))` -/
def P12757295127993530949.Spec : Prop :=
  ∀ n, P12757295127993530949.a n = A195173 n

end A195173

/-!
# A195174: a(n) = 5*n - floor(3*n*r), where r=(1+sqrt(5))/2 (the golden ratio.)

The programs for A195174, the canonical program `A195174.P17306231674566011983` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195174 has offset 0).

The definition of A195174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195174.P17306231674566011983

`5*n-floor(3*n*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195174

/-- `5*n-floor(3*n*(1+sqrt(5))/2)` -/
def P17306231674566011983.Spec : Prop :=
  ∀ n, P17306231674566011983.a n = A195174 n

theorem P17306231674566011983.correct : P17306231674566011983.Spec := by
  intro n
  simp only [A195174]

end A195174

/-! ## A195174.P3300654425444180836

`∑[char[A004919(n)+1]]`
-/

namespace A195174.P3300654425444180836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004919 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195174.P3300654425444180836

namespace A195174

/-- `∑[char[A004919(n)+1]]` -/
def P3300654425444180836.Spec : Prop :=
  ∀ n, (P3300654425444180836.a n : ℤ) = A195174 n

end A195174

/-! ## A195174.P5075127684676855573

`∑[char[A004959(n)]]%(n+1)`
-/

namespace A195174.P5075127684676855573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004959 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A195174.P5075127684676855573

namespace A195174

/-- `∑[char[A004959(n)]]%(n+1)` -/
def P5075127684676855573.Spec : Prop :=
  ∀ n, (P5075127684676855573.a n : ℤ) = A195174 n

end A195174

/-! ## A195174.P8593236864926075997

`abs(A189663(3*n+1)-n)`
-/

namespace A195174.P8593236864926075997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189663 (3 * n + 1) - (n : ℤ)|

end

end A195174.P8593236864926075997

namespace A195174

/-- `abs(A189663(3*n+1)-n)` -/
def P8593236864926075997.Spec : Prop :=
  ∀ n, P8593236864926075997.a n = A195174 n

end A195174

/-! ## A195174.P5500754681898696125

`ceil(A045925(n)/A000045(n+4))`
-/

namespace A195174.P5500754681898696125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045925 n : ℚ) / (A000045 (n + 4) : ℚ)⌉

end

end A195174.P5500754681898696125

namespace A195174

/-- `ceil(A045925(n)/A000045(n+4))` -/
def P5500754681898696125.Spec : Prop :=
  ∀ n, P5500754681898696125.a n = A195174 n

end A195174

/-! ## A195174.P17429869217253698841

`A121900(A306677(n+1))`
-/

namespace A195174.P17429869217253698841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A306677 (n + 1)).toNat

end

end A195174.P17429869217253698841

namespace A195174

/-- `A121900(A306677(n+1))` -/
def P17429869217253698841.Spec : Prop :=
  ∀ n, P17429869217253698841.a n = A195174 n

end A195174

/-!
# A195175: a(n) = 8*n - floor(4*n*r), where r=(1+sqrt(5))/2 (the golden ratio.)

The programs for A195175, the canonical program `A195175.P9347037866918536876` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195175 has offset 0).

The definition of A195175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195175.P9347037866918536876

`8*n-floor(2*n*(1+sqrt(5)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195175

/-- `8*n-floor(2*n*(1+sqrt(5)))` -/
def P9347037866918536876.Spec : Prop :=
  ∀ n, P9347037866918536876.a n = A195175 n

theorem P9347037866918536876.correct : P9347037866918536876.Spec := by
  intro n
  simp only [A195175]

end A195175

/-! ## A195175.P14101438225393836748

`record[(-1)^n*ceil(n*(3-sqrt(5)))]`
-/

namespace A195175.P14101438225393836748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌈(n : ℝ) * (3 - Real.sqrt (5 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195175.P14101438225393836748

namespace A195175

/-- `record[(-1)^n*ceil(n*(3-sqrt(5)))]` -/
def P14101438225393836748.Spec : Prop :=
  ∀ n, P14101438225393836748.a n = A195175 n

end A195175

/-! ## A195175.P6253135955013920082

`comp[comp[A189935(n+1)]+1]`
-/

namespace A195175.P6253135955013920082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189935 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A195175.P6253135955013920082

namespace A195175

/-- `comp[comp[A189935(n+1)]+1]` -/
def P6253135955013920082.Spec : Prop :=
  ∀ n, (P6253135955013920082.a n : ℤ) = A195175 n

end A195175

/-! ## A195175.P13249190559278349197

`A195172(2*n)`
-/

namespace A195175.P13249190559278349197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (2 * n)

end

end A195175.P13249190559278349197

namespace A195175

/-- `A195172(2*n)` -/
def P13249190559278349197.Spec : Prop :=
  ∀ n, P13249190559278349197.a n = A195175 n

end A195175

/-! ## A195175.P880377226468785674

`A087156(A187329(2*n)+1)`
-/

namespace A195175.P880377226468785674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A187329 (2 * n) + 1).toNat

end

end A195175.P880377226468785674

namespace A195175

/-- `A087156(A187329(2*n)+1)` -/
def P880377226468785674.Spec : Prop :=
  ∀ n, P880377226468785674.a n = A195175 n

end A195175

/-! ## A195175.P15823464823073155670

`A189663(4*n+1)`
-/

namespace A195175.P15823464823073155670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (4 * n + 1)

end

end A195175.P15823464823073155670

namespace A195175

/-- `A189663(4*n+1)` -/
def P15823464823073155670.Spec : Prop :=
  ∀ n, P15823464823073155670.a n = A195175 n

end A195175

/-! ## A195175.P8922795435898811173

`A085141(A198017(n))`
-/

namespace A195175.P8922795435898811173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A198017 n).toNat

end

end A195175.P8922795435898811173

namespace A195175

/-- `A085141(A198017(n))` -/
def P8922795435898811173.Spec : Prop :=
  ∀ n, P8922795435898811173.a n = A195175 n

end A195175

/-!
# A195176: a(n) = 3*n - floor(n*sqrt(2)).

The programs for A195176, the canonical program `A195176.P10049885742152514298` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195176 has offset 0).

The definition of A195176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n-floor(n*sqrt(2))` (program `A195176.P10049885742152514298`, by `A195176.P10049885742152514298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195176.P10049885742152514298

`3*n-floor(n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195176

/-- `3*n-floor(n*sqrt(2))` -/
def P10049885742152514298.Spec : Prop :=
  ∀ n, P10049885742152514298.a n = A195176 n

theorem P10049885742152514298.correct : P10049885742152514298.Spec := by
  intro n
  simp only [A195176]

end A195176

/-! ## A195176.P17475939723350211587

`(4*n+1)%(floor(n*sqrt(2))+1+n)`
-/

namespace A195176.P17475939723350211587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n + 1 : ℤ) (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1 + (n : ℤ))

end

end A195176.P17475939723350211587

namespace A195176

/-- `(4*n+1)%(floor(n*sqrt(2))+1+n)` -/
def P17475939723350211587.Spec : Prop :=
  ∀ n, P17475939723350211587.a n = A195176 n

end A195176

/-! ## A195176.P13360410112824586522

`round(A195178(n)/2+n)`
-/

namespace A195176.P13360410112824586522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195178 n : ℚ) / 2 + (n : ℚ))

end

end A195176.P13360410112824586522

namespace A195176

/-- `round(A195178(n)/2+n)` -/
def P13360410112824586522.Spec : Prop :=
  ∀ n, P13360410112824586522.a n = A195176 n

end A195176

/-! ## A195176.P1643378098194786571

`comp[A285077(n+1)-1+n]`
-/

namespace A195176.P1643378098194786571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195176.P1643378098194786571

namespace A195176

/-- `comp[A285077(n+1)-1+n]` -/
def P1643378098194786571.Spec : Prop :=
  ∀ n, (P1643378098194786571.a n : ℤ) = A195176 n

end A195176

/-!
# A195177: a(n) = 3*n - floor(2*n*sqrt(2)).

The programs for A195177, the canonical program `A195177.P651983526202513123` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195177 has offset 0).

The definition of A195177 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n-floor(2*n*sqrt(2))` (program `A195177.P651983526202513123`, by `A195177.P651983526202513123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195177.P651983526202513123

`3*n-floor(2*n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195177

/-- `3*n-floor(2*n*sqrt(2))` -/
def P651983526202513123.Spec : Prop :=
  ∀ n, P651983526202513123.a n = A195177 n

theorem P651983526202513123.correct : P651983526202513123.Spec := by
  intro n
  simp only [A195177]

end A195177

/-! ## A195177.P4699407515805376552

`∑[char[A285075(Δ[n²])+n-1]]`
-/

namespace A195177.P4699407515805376552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat + ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195177.P4699407515805376552

namespace A195177

/-- `∑[char[A285075(Δ[n²])+n-1]]` -/
def P4699407515805376552.Spec : Prop :=
  ∀ n, (P4699407515805376552.a n : ℤ) = A195177 n

end A195177

/-! ## A195177.P16161323271148819345

`A195179(n)%A004277(n)`
-/

namespace A195177.P16161323271148819345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195179 n) (A004277 n)

end

end A195177.P16161323271148819345

namespace A195177

/-- `A195179(n)%A004277(n)` -/
def P16161323271148819345.Spec : Prop :=
  ∀ n, P16161323271148819345.a n = A195177 n

end A195177

/-! ## A195177.P7218379418120085043

`∑[A004277(n+1)]%A245207(n)`
-/

namespace A195177.P7218379418120085043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A245207 n)

end

end A195177.P7218379418120085043

namespace A195177

/-- `∑[A004277(n+1)]%A245207(n)` -/
def P7218379418120085043.Spec : Prop :=
  ∀ n, P7218379418120085043.a n = A195177 n

end A195177

/-! ## A195177.P9685899477418787862

`(A195179(n)+2)%A160356(n+1)`
-/

namespace A195177.P9685899477418787862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195179 n + 2) (A160356 (n + 1))

end

end A195177.P9685899477418787862

namespace A195177

/-- `(A195179(n)+2)%A160356(n+1)` -/
def P9685899477418787862.Spec : Prop :=
  ∀ n, P9685899477418787862.a n = A195177 n

end A195177

/-! ## A195177.P7946638041133049818

`abs(A195119(2*n)-n)`
-/

namespace A195177.P7946638041133049818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195119 (2 * n) - (n : ℤ)|

end

end A195177.P7946638041133049818

namespace A195177

/-- `abs(A195119(2*n)-n)` -/
def P7946638041133049818.Spec : Prop :=
  ∀ n, P7946638041133049818.a n = A195177 n

end A195177

/-! ## A195177.P18280467191559746494

`abs(A097508(A005843(n))-n)`
-/

namespace A195177.P18280467191559746494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097508 (A005843 n).toNat - (n : ℤ)|

end

end A195177.P18280467191559746494

namespace A195177

/-- `abs(A097508(A005843(n))-n)` -/
def P18280467191559746494.Spec : Prop :=
  ∀ n, P18280467191559746494.a n = A195177 n

end A195177

/-! ## A195177.P5717133013243492515

`A053616(A055999(n)-A001951(2*n))`
-/

namespace A195177.P5717133013243492515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A055999 n - A001951 (2 * n)).toNat

end

end A195177.P5717133013243492515

namespace A195177

/-- `A053616(A055999(n)-A001951(2*n))` -/
def P5717133013243492515.Spec : Prop :=
  ∀ n, P5717133013243492515.a n = A195177 n

end A195177

/-! ## A195177.P10596314537213069215

`A053615(A245207(n))`
-/

namespace A195177.P10596314537213069215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A245207 n).toNat

end

end A195177.P10596314537213069215

namespace A195177

/-- `A053615(A245207(n))` -/
def P10596314537213069215.Spec : Prop :=
  ∀ n, P10596314537213069215.a n = A195177 n

end A195177

/-!
# A195178: a(n) = 4*n - floor(2*n*sqrt(2)).

The programs for A195178, the canonical program `A195178.P13129221249738795055` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195178 has offset 0).

The definition of A195178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n-floor(2*n*sqrt(2))` (program `A195178.P13129221249738795055`, by `A195178.P13129221249738795055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195178.P13129221249738795055

`4*n-floor(2*n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195178

/-- `4*n-floor(2*n*sqrt(2))` -/
def P13129221249738795055.Spec : Prop :=
  ∀ n, P13129221249738795055.a n = A195178 n

theorem P13129221249738795055.correct : P13129221249738795055.Spec := by
  intro n
  simp only [A195178]

end A195178

/-! ## A195178.P18249979313823639034

`comp[A289037(2*n+1)-2]`
-/

namespace A195178.P18249979313823639034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195178.P18249979313823639034

namespace A195178

/-- `comp[A289037(2*n+1)-2]` -/
def P18249979313823639034.Spec : Prop :=
  ∀ n, (P18249979313823639034.a n : ℤ) = A195178 n

end A195178

/-! ## A195178.P13713669000766203827

`comp[A157142(n)+A001951(n)]`
-/

namespace A195178.P13713669000766203827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n + A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A195178.P13713669000766203827

namespace A195178

/-- `comp[A157142(n)+A001951(n)]` -/
def P13713669000766203827.Spec : Prop :=
  ∀ n, (P13713669000766203827.a n : ℤ) = A195178 n

end A195178

/-! ## A195178.P8653393370836378515

`A195119(2*n)`
-/

namespace A195178.P8653393370836378515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (2 * n)

end

end A195178.P8653393370836378515

namespace A195178

/-- `A195119(2*n)` -/
def P8653393370836378515.Spec : Prop :=
  ∀ n, P8653393370836378515.a n = A195178 n

end A195178

/-! ## A195178.P9828942660888760844

`A016813(n)%(A001951(2*n)+1)`
-/

namespace A195178.P9828942660888760844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 n) (A001951 (2 * n) + 1)

end

end A195178.P9828942660888760844

namespace A195178

/-- `A016813(n)%(A001951(2*n)+1)` -/
def P9828942660888760844.Spec : Prop :=
  ∀ n, P9828942660888760844.a n = A195178 n

end A195178

/-! ## A195178.P13360434460067213753

`A195119(A004277(n))%A080978(n)`
-/

namespace A195178.P13360434460067213753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195119 (A004277 n).toNat) (A080978 n)

end

end A195178.P13360434460067213753

namespace A195178

/-- `A195119(A004277(n))%A080978(n)` -/
def P13360434460067213753.Spec : Prop :=
  ∀ n, P13360434460067213753.a n = A195178 n

end A195178

/-! ## A195178.P12855337030142476759

`A195177(A258834(2*n))`
-/

namespace A195178.P12855337030142476759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A258834 (2 * n)).toNat

end

end A195178.P12855337030142476759

namespace A195178

/-- `A195177(A258834(2*n))` -/
def P12855337030142476759.Spec : Prop :=
  ∀ n, P12855337030142476759.a n = A195178 n

end A195178

/-! ## A195178.P1962856445418061517

`A394301((2*n)²)`
-/

namespace A195178.P1962856445418061517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394301 ((2 * n) ^ 2)

end

end A195178.P1962856445418061517

namespace A195178

/-- `A394301((2*n)²)` -/
def P1962856445418061517.Spec : Prop :=
  ∀ n, P1962856445418061517.a n = A195178 n

end A195178

/-!
# A195179: a(n) = 5*n - floor(2*n*sqrt(2)).

The programs for A195179, the canonical program `A195179.P15459766949902108573` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195179 has offset 0).

The definition of A195179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n-floor(2*n*sqrt(2))` (program `A195179.P15459766949902108573`, by `A195179.P15459766949902108573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195179.P15459766949902108573

`5*n-floor(2*n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195179

/-- `5*n-floor(2*n*sqrt(2))` -/
def P15459766949902108573.Spec : Prop :=
  ∀ n, P15459766949902108573.a n = A195179 n

theorem P15459766949902108573.correct : P15459766949902108573.Spec := by
  intro n
  simp only [A195179]

end A195179

/-! ## A195179.P2448399507116369136

`record[A195119(n)-A195084(n+3)]`
-/

namespace A195179.P2448399507116369136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n - A195084 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195179.P2448399507116369136

namespace A195179

/-- `record[A195119(n)-A195084(n+3)]` -/
def P2448399507116369136.Spec : Prop :=
  ∀ n, P2448399507116369136.a n = A195179 n

end A195179

/-! ## A195179.P1745918942485962730

`ceil((A179184(A327472(n))+26*n)/12)`
-/

namespace A195179.P1745918942485962730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179184 (A327472 n).toNat + (26 * n : ℤ) : ℚ) / 12⌉

end

end A195179.P1745918942485962730

namespace A195179

/-- `ceil((A179184(A327472(n))+26*n)/12)` -/
def P1745918942485962730.Spec : Prop :=
  ∀ n, P1745918942485962730.a n = A195179 n

end A195179

/-! ## A195179.P1906954844223689209

`A113763(2*n+1)%A247761(A367401(2*(n+1)))`
-/

namespace A195179.P1906954844223689209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113763 (2 * n + 1)) (A247761 (A367401 (2 * (n + 1))).toNat)

end

end A195179.P1906954844223689209

namespace A195179

/-- `A113763(2*n+1)%A247761(A367401(2*(n+1)))` -/
def P1906954844223689209.Spec : Prop :=
  ∀ n, P1906954844223689209.a n = A195179 n

end A195179

/-!
# A195180: a(n) = 5*n - floor(3*n*sqrt(2)).

The programs for A195180, the canonical program `A195180.P11712917834602884078` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195180 has offset 0).

The definition of A195180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n-floor(3*n*sqrt(2))` (program `A195180.P11712917834602884078`, by `A195180.P11712917834602884078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195180.P11712917834602884078

`5*n-floor(3*n*sqrt(2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195180

/-- `5*n-floor(3*n*sqrt(2))` -/
def P11712917834602884078.Spec : Prop :=
  ∀ n, P11712917834602884078.a n = A195180 n

theorem P11712917834602884078.correct : P11712917834602884078.Spec := by
  intro n
  simp only [A195180]

end A195180

/-! ## A195180.P11731090944924469254

`abs(abs(A097508(3*n)-n)-n)`
-/

namespace A195180.P11731090944924469254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A097508 (3 * n) - (n : ℤ)| - (n : ℤ))|

end

end A195180.P11731090944924469254

namespace A195180

/-- `abs(abs(A097508(3*n)-n)-n)` -/
def P11731090944924469254.Spec : Prop :=
  ∀ n, P11731090944924469254.a n = A195180 n

end A195180

/-! ## A195180.P9634799168006764487

`A037915(n)%∑[A342763(n)]`
-/

namespace A195180.P9634799168006764487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037915 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195180.P9634799168006764487

namespace A195180

/-- `A037915(n)%∑[A342763(n)]` -/
def P9634799168006764487.Spec : Prop :=
  ∀ n, P9634799168006764487.a n = A195180 n

end A195180

/-! ## A195180.P8456378987877800348

`A008621(3*n)%A003307(n+1)`
-/

namespace A195180.P8456378987877800348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 (3 * n)) (A003307 (n + 1))

end

end A195180.P8456378987877800348

namespace A195180

/-- `A008621(3*n)%A003307(n+1)` -/
def P8456378987877800348.Spec : Prop :=
  ∀ n, P8456378987877800348.a n = A195180 n

end A195180

/-!
# A195181: a(n) = 6*n - floor(3*n*sqrt(3)).

The programs for A195181, the canonical program `A195181.P17617609807910786818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195181 has offset 0).

The definition of A195181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195181.P62232934845950744

`6*n-floor(3*n*sqrt(3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195181.P62232934845950744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - ⌊(3 * n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A195181.P62232934845950744

namespace A195181

/-- `6*n-floor(3*n*sqrt(3))` -/
def P62232934845950744.Spec : Prop :=
  ∀ n, P62232934845950744.a n = A195181 n

end A195181

/-! ## A195181.P17617609807910786818

`A195120(3*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195181

/-- `A195120(3*n)` -/
def P17617609807910786818.Spec : Prop :=
  ∀ n, P17617609807910786818.a n = A195181 n

theorem P17617609807910786818.correct : P17617609807910786818.Spec := by
  intro n
  simp only [A195181]

end A195181

/-! ## A195181.P16749864287741775259

`A195120(n+n+n)%(n+1)`
-/

namespace A195181.P16749864287741775259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195120 (n + n + n)) (n + 1 : ℤ)

end

end A195181.P16749864287741775259

namespace A195181

/-- `A195120(n+n+n)%(n+1)` -/
def P16749864287741775259.Spec : Prop :=
  ∀ n, P16749864287741775259.a n = A195181 n

end A195181

/-! ## A195181.P3886838856672341957

`A288156(2*(n+1))%A102824(n+1)`
-/

namespace A195181.P3886838856672341957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288156 (2 * (n + 1))) (A102824 (n + 1))

end

end A195181.P3886838856672341957

namespace A195181

/-- `A288156(2*(n+1))%A102824(n+1)` -/
def P3886838856672341957.Spec : Prop :=
  ∀ n, P3886838856672341957.a n = A195181 n

end A195181

/-! ## A195181.P6877234618075723343

`A004396(A057354(3*(n+1))%A342742(n+1))`
-/

namespace A195181.P6877234618075723343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (A057354 (3 * (n + 1))) (A342742 (n + 1))).toNat

end

end A195181.P6877234618075723343

namespace A195181

/-- `A004396(A057354(3*(n+1))%A342742(n+1))` -/
def P6877234618075723343.Spec : Prop :=
  ∀ n, P6877234618075723343.a n = A195181 n

end A195181

/-! ## A195181.P12320798077448392908

`∑[A011558(3*n+2)]%A340020(n+1)`
-/

namespace A195181.P12320798077448392908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A340020 (n + 1))

end

end A195181.P12320798077448392908

namespace A195181

/-- `∑[A011558(3*n+2)]%A340020(n+1)` -/
def P12320798077448392908.Spec : Prop :=
  ∀ n, P12320798077448392908.a n = A195181 n

end A195181

/-!
# A195182: a(n) = 6*n - floor(2*n*e).

The programs for A195182, the canonical program `A195182.P2082398744835701677` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195182 has offset 0).

The definition of A195182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n-floor(2*n*e)` (program `A195182.P2082398744835701677`, by `A195182.P2082398744835701677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195182.P2082398744835701677

`6*n-floor(2*n*e)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195182

/-- `6*n-floor(2*n*e)` -/
def P2082398744835701677.Spec : Prop :=
  ∀ n, P2082398744835701677.a n = A195182 n

theorem P2082398744835701677.correct : P2082398744835701677.Spec := by
  intro n
  simp only [A195182]

end A195182

/-! ## A195182.P16874157257918515439

`∑[char[A327211(n)+1+n]]`
-/

namespace A195182.P16874157257918515439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195182.P16874157257918515439

namespace A195182

/-- `∑[char[A327211(n)+1+n]]` -/
def P16874157257918515439.Spec : Prop :=
  ∀ n, (P16874157257918515439.a n : ℤ) = A195182 n

end A195182

/-! ## A195182.P2363415269107341605

`∑[char[char[A327213(n+1)]+n+1]]`
-/

namespace A195182.P2363415269107341605
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327213 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195182.P2363415269107341605

namespace A195182

/-- `∑[char[char[A327213(n+1)]+n+1]]` -/
def P2363415269107341605.Spec : Prop :=
  ∀ n, (P2363415269107341605.a n : ℤ) = A195182 n

end A195182

/-! ## A195182.P1831454564109387412

`A095861(A170907(n+2)-A095861(n+2))`
-/

namespace A195182.P1831454564109387412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A170907 (n + 2) - A095861 (n + 2)).toNat

end

end A195182.P1831454564109387412

namespace A195182

/-- `A095861(A170907(n+2)-A095861(n+2))` -/
def P1831454564109387412.Spec : Prop :=
  ∀ n, P1831454564109387412.a n = A195182 n

end A195182

/-! ## A195182.P15961965303962749762

`A008621(A057353(3*n))%A032563(n+1)`
-/

namespace A195182.P15961965303962749762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 (A057353 (3 * n)).toNat) (A032563 (n + 1))

end

end A195182.P15961965303962749762

namespace A195182

/-- `A008621(A057353(3*n))%A032563(n+1)` -/
def P15961965303962749762.Spec : Prop :=
  ∀ n, P15961965303962749762.a n = A195182 n

end A195182

/-! ## A195182.P2425856910793856789

`ceil(2*n*∑[(n+1)/(n+3)!])`
-/

namespace A195182.P2425856910793856789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (n + 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A195182.P2425856910793856789

namespace A195182

/-- `ceil(2*n*∑[(n+1)/(n+3)!])` -/
def P2425856910793856789.Spec : Prop :=
  ∀ n, P2425856910793856789.a n = A195182 n

end A195182

/-! ## A195182.P11775461244254569938

`A151934(A151934(n))*A226190(n+1)`
-/

namespace A195182.P11775461244254569938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A151934 n).toNat * A226190 (n + 1)

end

end A195182.P11775461244254569938

namespace A195182

/-- `A151934(A151934(n))*A226190(n+1)` -/
def P11775461244254569938.Spec : Prop :=
  ∀ n, P11775461244254569938.a n = A195182 n

end A195182

/-! ## A195182.P1100300838178702424

`A151935(A151935(n))*A226190(n+1)`
-/

namespace A195182.P1100300838178702424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (A151935 n).toNat * A226190 (n + 1)

end

end A195182.P1100300838178702424

namespace A195182

/-- `A151935(A151935(n))*A226190(n+1)` -/
def P1100300838178702424.Spec : Prop :=
  ∀ n, P1100300838178702424.a n = A195182 n

end A195182

/-! ## A195182.P14707742818281286089

`A151810(A151810(n))*A226190(n+1)`
-/

namespace A195182.P14707742818281286089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 (A151810 n).toNat * A226190 (n + 1)

end

end A195182.P14707742818281286089

namespace A195182

/-- `A151810(A151810(n))*A226190(n+1)` -/
def P14707742818281286089.Spec : Prop :=
  ∀ n, P14707742818281286089.a n = A195182 n

end A195182

/-!
# A195183: Fractalization of the prime marker sequence A089026.

The programs for A195183, there is no canonical definition to state claims against.
-/

/-! ## A195183.P12442310710408699016

`A002260(A195185(n+1))`
-/

namespace A195183.P12442310710408699016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195185 (n + 1)).toNat

end

end A195183.P12442310710408699016

/-! ## A195183.P466129644396540443

`A195185(n+1)-A057944(n)`
-/

namespace A195183.P466129644396540443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (n + 1) - A057944 n

end

end A195183.P466129644396540443

/-! ## A195183.P11904822310283183522

`A002262(A195185(n+1)-1)+1`
-/

namespace A195183.P11904822310283183522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195185 (n + 1) - 1).toNat + 1

end

end A195183.P11904822310283183522

/-! ## A195183.P9565003010990301594

`A195185(n+1)-A000217(A003056(n))`
-/

namespace A195183.P9565003010990301594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (n + 1) - A000217 (A003056 n).toNat

end

end A195183.P9565003010990301594

/-! ## A195183.P17022735485532319657

`A002262(A195185(n+1)+A002024(n+1))`
-/

namespace A195183.P17022735485532319657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A195185 (n + 1) + A002024 (n + 1)).toNat

end

end A195183.P17022735485532319657

/-! ## A195183.P1923090580428405996

`A194959(n+1)+A195185(n+1)-A064578(n+1)`
-/

namespace A195183.P1923090580428405996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) + (A195185 (n + 1) - A064578 (n + 1))

end

end A195183.P1923090580428405996

/-! ## A195183.P16700169857314998120

`A000005(A059268(A195185(n+1)-1))`
-/

namespace A195183.P16700169857314998120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 (A195185 (n + 1) - 1).toNat).toNat

end

end A195183.P16700169857314998120

/-!
# A195185: Inverse permutation of A195184; every positive integer occurs exactly once.

The programs for A195185, there is no canonical definition to state claims against.
-/

/-! ## A195185.P16626966224462016833

`A195183(n+1)+A057944(n)`
-/

namespace A195185.P16626966224462016833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (n + 1) + A057944 n

end

end A195185.P16626966224462016833

/-! ## A195185.P921405132646660626

`A195183(n+1)+n+1-A002260(n+1)`
-/

namespace A195185.P921405132646660626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A195185.P921405132646660626

/-! ## A195185.P890902645414389641

`A195183(n+1)+A000217(A003056(n))`
-/

namespace A195185.P890902645414389641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (n + 1) + A000217 (A003056 n).toNat

end

end A195185.P890902645414389641

/-! ## A195185.P8009640935127799087

`A195183(n+1)+A161680(A002024(n+1))`
-/

namespace A195185.P8009640935127799087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A195185.P8009640935127799087

/-! ## A195185.P13236490062420441623

`A195183(n+1)+A083920(A025581(n)+n)`
-/

namespace A195185.P13236490062420441623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (n + 1) + A083920 (A025581 n + (n : ℤ)).toNat

end

end A195185.P13236490062420441623

/-! ## A195185.P10689488260374065283

`A194963(n+1)+A195183(n+1)-A194961(n+1)`
-/

namespace A195185.P10689488260374065283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + (A195183 (n + 1) - A194961 (n + 1))

end

end A195185.P10689488260374065283

/-! ## A195185.P2999320785401044773

`A195071(n+1)+A195183(n+1)-A194921(n+1)`
-/

namespace A195185.P2999320785401044773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (n + 1) + (A195183 (n + 1) - A194921 (n + 1))

end

end A195185.P2999320785401044773

/-! ## A195185.P18146393330111176719

`A194916(n+1)+A195183(n+1)-A194914(n+1)`
-/

namespace A195185.P18146393330111176719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A195183 (n + 1) - A194914 (n + 1))

end

end A195185.P18146393330111176719

/-! ## A195185.P7082229421231681833

`A194978(n+1)+A195183(n+1)-A194976(n+1)`
-/

namespace A195185.P7082229421231681833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (n + 1) + (A195183 (n + 1) - A194976 (n + 1))

end

end A195185.P7082229421231681833

/-! ## A195185.P3173955018247274841

`A194985(n+1)+A195183(n+1)-A194983(n+1)`
-/

namespace A195185.P3173955018247274841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) + (A195183 (n + 1) - A194983 (n + 1))

end

end A195185.P3173955018247274841

/-!
# A195186: Number of palindromic double occurrence words of length 2n.

The programs for A195186, there is no canonical definition to state claims against.
-/

/-! ## A195186.P12748744129454935137

`∑[A328596(a(n-1)+n)]` with `a(0)=1, a(1)=1`
-/

namespace A195186.P12748744129454935137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A328596 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195186.P12748744129454935137

/-! ## A195186.P2259557606406625463

`A178210(A360186(n))`
-/

namespace A195186.P2259557606406625463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A360186 n).toNat

end

end A195186.P2259557606406625463

/-!
# A195188: Number of decimal digits in n-th ultraprimorial.

The programs for A195188, there is no canonical definition to state claims against.
-/

/-! ## A195188.P7914978977921191810

`A066022(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A195188.P7914978977921191810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A195188.P7914978977921191810

/-! ## A195188.P13994177226064167068

`A066022(A002110(n))`
-/

namespace A195188.P13994177226064167068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A002110 n).toNat

end

end A195188.P13994177226064167068

/-!
# A195189: Denominators of a sequence leading to gamma = A001620.

The programs for A195189, there is no canonical definition to state claims against.
-/

/-! ## A195189.P14983372409992242364

`(n+1)²*A002689(n)`
-/

namespace A195189.P14983372409992242364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002689 n

end

end A195189.P14983372409992242364

/-! ## A195189.P11074952501565291897

`A002689(n)*A131805(2*(n+1))`
-/

namespace A195189.P11074952501565291897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002689 n * A131805 (2 * (n + 1))

end

end A195189.P11074952501565291897

/-! ## A195189.P4311317264313562814

`(n+1)*A000027(n+1)*A002689(n)`
-/

namespace A195189.P4311317264313562814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000027 (n + 1) * A002689 n)

end

end A195189.P4311317264313562814

/-!
# A195190: Primes p such that there is only one prime number between semiprime(p) and semiprime(p+1).

The programs for A195190, the canonical program `A195190.P15708243835452511698` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195190 has offset 1).

The definition of A195190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195190.P15708243835452511698

`p?[(n+1)*A088700(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A195190

/-- `p?[(n+1)*A088700(n+1)]` -/
def P15708243835452511698.Spec : Prop :=
  ∀ n, P15708243835452511698.a n = A195190 (n + 1)

theorem P15708243835452511698.correct : P15708243835452511698.Spec := by
  intro n
  simp only [A195190, Nat.add_sub_cancel]

end A195190

/-! ## A195190.P1134111976325291991

`p?[A072000(A214520(n+1))]`
-/

namespace A195190.P1134111976325291991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A214520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195190.P1134111976325291991

namespace A195190

/-- `p?[A072000(A214520(n+1))]` -/
def P1134111976325291991.Spec : Prop :=
  ∀ n, P1134111976325291991.a n = A195190 (n + 1)

end A195190

/-! ## A195190.P4526815767159815735

`eq[A003415(n), A176451(n+1)]`
-/

namespace A195190.P4526815767159815735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195190.P4526815767159815735

namespace A195190

/-- `eq[A003415(n), A176451(n+1)]` -/
def P4526815767159815735.Spec : Prop :=
  ∀ n, (P4526815767159815735.a n : ℤ) = A195190 (n + 1)

end A195190

/-! ## A195190.P9217399217409152618

`eq[A176451(n+1), A210442(n)]`
-/

namespace A195190.P9217399217409152618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195190.P9217399217409152618

namespace A195190

/-- `eq[A176451(n+1), A210442(n)]` -/
def P9217399217409152618.Spec : Prop :=
  ∀ n, (P9217399217409152618.a n : ℤ) = A195190 (n + 1)

end A195190

/-! ## A195190.P14263675377270577646

`eq[A176451(n+1), A302055(n)]`
-/

namespace A195190.P14263675377270577646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195190.P14263675377270577646

namespace A195190

/-- `eq[A176451(n+1), A302055(n)]` -/
def P14263675377270577646.Spec : Prop :=
  ∀ n, (P14263675377270577646.a n : ℤ) = A195190 (n + 1)

end A195190

/-!
# A195192: G.f.: A(x) = x + x*ITERATE^2(x + x*ITERATE^3(x + x*ITERATE^4(x + x*ITERATE^5(x + ...)))), where ITERATE^n(F(x)) denotes the n-th iteration of F(x), and the nested iterations continue indefinitely.

The programs for A195192, there is no canonical definition to state claims against.
-/

/-! ## A195192.P4820469465195534576

`A247498(2*n²)`
-/

namespace A195192.P4820469465195534576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247498 (2 * n ^ 2)

end

end A195192.P4820469465195534576

/-! ## A195192.P11732227589709412400

`A241317(∑[∑[n]]+1)+1`
-/

namespace A195192.P11732227589709412400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A195192.P11732227589709412400

/-!
# A195193: G.f.: A(x) = x + x*ITERATE^2(x + 2*x*ITERATE^2(x + 3*x*ITERATE^2(x + 4*x*ITERATE^2(x + ...)))), where ITERATE^2(F(x)) = F(F(x)), and the nested iterations continue indefinitely.

The programs for A195193, there is no canonical definition to state claims against.
-/

/-! ## A195193.P14453300388096416130

`xor(A377730(A377735(n)), A377737(n))`
-/

namespace A195193.P14453300388096416130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A377730 (A377735 n).toNat) (A377737 n)

end

end A195193.P14453300388096416130

/-! ## A195193.P13631496495587851431

`A000010(A194456(n+1))-A194491(n+1)`
-/

namespace A195193.P13631496495587851431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A194456 (n + 1)).toNat - A194491 (n + 1)

end

end A195193.P13631496495587851431

/-!
# A195194: G.f.: A(x) = INV(x - x*INV(x - 2*x*INV(x - 3*x*INV(x - 4*x*INV(x - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A195194, there is no canonical definition to state claims against.
-/

/-! ## A195194.P5104426179206729843

`A332579(A211861(3*n))+A324806(n)`
-/

namespace A195194.P5104426179206729843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332579 (A211861 (3 * n)).toNat + A324806 n

end

end A195194.P5104426179206729843

/-! ## A195194.P8079935900117120750

`xor(A054908(A339296(n+1)), A201627(n))`
-/

namespace A195194.P8079935900117120750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054908 (A339296 (n + 1)).toNat) (A201627 n)

end

end A195194.P8079935900117120750

/-!
# A195195: G.f. A(x) satisfies: A( x - x*A(2*x)/2 ) = x.

The programs for A195195, there is no canonical definition to state claims against.
-/

/-! ## A195195.P5025831945756376149

`A082359(n!²)`
-/

namespace A195195.P5025831945756376149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 (Nat.factorial n ^ 2)

end

end A195195.P5025831945756376149

/-!
# A195196: G.f.: A(x) = INV(x - x*INV(x - 3*x*INV(x - 3^2*x*INV(x - 3^3*x*INV(x - 3^4*x*INV(x - ...)))))), where INV(F(x)) = series reversion of F(x).

The programs for A195196, there is no canonical definition to state claims against.
-/

/-! ## A195196.P5758074825923536703

`A329825(A192665(∑[n]))`
-/

namespace A195196.P5758074825923536703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (A192665 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A195196.P5758074825923536703

/-!
# A195198: Characteristic function of squares or three times squares.

The programs for A195198, the canonical program `A195198.P16259848613954439039` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195198 has offset 0).

The definition of A195198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195198.P16259848613954439039

`char[∪[3*n², n²]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195198

/-- `char[∪[3*n², n²]]` -/
def P16259848613954439039.Spec : Prop :=
  ∀ n, (P16259848613954439039.a n : ℤ) = A195198 n

theorem P16259848613954439039.correct : P16259848613954439039.Spec := by
  intro n
  simp only [A195198]

end A195198

/-! ## A195198.P1278577641745923621

`char[floor(n/2)²*3^(n%2)]`
-/

namespace A195198.P1278577641745923621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 * (3 ^ (n % 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A195198.P1278577641745923621

namespace A195198

/-- `char[floor(n/2)²*3^(n%2)]` -/
def P1278577641745923621.Spec : Prop :=
  ∀ n, (P1278577641745923621.a n : ℤ) = A195198 n

end A195198

/-! ## A195198.P6346883516897947478

`char[(n²-1)%Δ[n²]*floor(n/2)]`
-/

namespace A195198.P6346883516897947478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A195198.P6346883516897947478

namespace A195198

/-- `char[(n²-1)%Δ[n²]*floor(n/2)]` -/
def P6346883516897947478.Spec : Prop :=
  ∀ n, (P6346883516897947478.a n : ℤ) = A195198 n

end A195198

/-! ## A195198.P10852542195169384140

`char[Δ[A029906(n)²]]`
-/

namespace A195198.P10852542195169384140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A195198.P10852542195169384140

namespace A195198

/-- `char[Δ[A029906(n)²]]` -/
def P10852542195169384140.Spec : Prop :=
  ∀ n, (P10852542195169384140.a n : ℤ) = A195198 n

end A195198

/-! ## A195198.P7719807201471304086

`and(2, -A033716(n))/2`
-/

namespace A195198.P7719807201471304086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (-A033716 n) : ℚ) / 2

end

end A195198.P7719807201471304086

namespace A195198

/-- `and(2, -A033716(n))/2` -/
def P7719807201471304086.Spec : Prop :=
  ∀ n, P7719807201471304086.a n = (A195198 n : ℚ)

end A195198

/-! ## A195198.P15964422287165959307

`ceil(A004016(n)/2)%2`
-/

namespace A195198.P15964422287165959307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A004016 n : ℚ) / 2⌉ 2

end

end A195198.P15964422287165959307

namespace A195198

/-- `ceil(A004016(n)/2)%2` -/
def P15964422287165959307.Spec : Prop :=
  ∀ n, P15964422287165959307.a n = A195198 n

end A195198

/-! ## A195198.P89732883787875897

`or(char[n²], char[A033428(n)])`
-/

namespace A195198.P89732883787875897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A195198.P89732883787875897

namespace A195198

/-- `or(char[n²], char[A033428(n)])` -/
def P89732883787875897.Spec : Prop :=
  ∀ n, (P89732883787875897.a n : ℤ) = A195198 n

end A195198

/-! ## A195198.P14208542741435063027

`a(a(n-1))*A145377(n)` with `a(0)=1, a(1)=1`
-/

namespace A195198.P14208542741435063027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1)).toNat * A145377 n

end

end A195198.P14208542741435063027

namespace A195198

/-- `a(a(n-1))*A145377(n)` -/
def P14208542741435063027.Spec : Prop :=
  ∀ n, P14208542741435063027.a n = A195198 n

end A195198

/-! ## A195198.P15817446146220109545

`A145377(A008486(n))`
-/

namespace A195198.P15817446146220109545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (A008486 n).toNat

end

end A195198.P15817446146220109545

namespace A195198

/-- `A145377(A008486(n))` -/
def P15817446146220109545.Spec : Prop :=
  ∀ n, P15817446146220109545.a n = A195198 n

end A195198

/-! ## A195198.P4920171265116232000

`A145377(A008574(n))`
-/

namespace A195198.P4920171265116232000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (A008574 n).toNat

end

end A195198.P4920171265116232000

namespace A195198

/-- `A145377(A008574(n))` -/
def P4920171265116232000.Spec : Prop :=
  ∀ n, P4920171265116232000.a n = A195198 n

end A195198

/-! ## A195198.P4389451051334294136

`A145377(A028310(n))`
-/

namespace A195198.P4389451051334294136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (A028310 n).toNat

end

end A195198.P4389451051334294136

namespace A195198

/-- `A145377(A028310(n))` -/
def P4389451051334294136.Spec : Prop :=
  ∀ n, P4389451051334294136.a n = A195198 n

end A195198

/-! ## A195198.P3425617359512485363

`A145377(A257174(n))`
-/

namespace A195198.P3425617359512485363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (A257174 n).toNat

end

end A195198.P3425617359512485363

namespace A195198

/-- `A145377(A257174(n))` -/
def P3425617359512485363.Spec : Prop :=
  ∀ n, P3425617359512485363.a n = A195198 n

end A195198

/-! ## A195198.P5633205423104859204

`A112690(A004016(n))²`
-/

namespace A195198.P5633205423104859204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A004016 n).toNat ^ 2

end

end A195198.P5633205423104859204

namespace A195198

/-- `A112690(A004016(n))²` -/
def P5633205423104859204.Spec : Prop :=
  ∀ n, P5633205423104859204.a n = A195198 n

end A195198

/-! ## A195198.P616170257100750135

`A112690(A014453(n))²`
-/

namespace A195198.P616170257100750135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A014453 n).toNat ^ 2

end

end A195198.P616170257100750135

namespace A195198

/-- `A112690(A014453(n))²` -/
def P616170257100750135.Spec : Prop :=
  ∀ n, P616170257100750135.a n = A195198 n

end A195198

/-! ## A195198.P16569156178351203464

`A112690(A261394(n))²`
-/

namespace A195198.P16569156178351203464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A261394 n).toNat ^ 2

end

end A195198.P16569156178351203464

namespace A195198

/-- `A112690(A261394(n))²` -/
def P16569156178351203464.Spec : Prop :=
  ∀ n, P16569156178351203464.a n = A195198 n

end A195198

/-! ## A195198.P5475189576149270904

`A145377(A143051(n+1))`
-/

namespace A195198.P5475189576149270904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (A143051 (n + 1)).toNat

end

end A195198.P5475189576149270904

namespace A195198

/-- `A145377(A143051(n+1))` -/
def P5475189576149270904.Spec : Prop :=
  ∀ n, P5475189576149270904.a n = A195198 n

end A195198

/-! ## A195198.P16677398728119861424

`A014707(A123330(n)+4)`
-/

namespace A195198.P16677398728119861424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A123330 n + 4).toNat

end

end A195198.P16677398728119861424

namespace A195198

/-- `A014707(A123330(n)+4)` -/
def P16677398728119861424.Spec : Prop :=
  ∀ n, P16677398728119861424.a n = A195198 n

end A195198

/-! ## A195198.P15234111411697745892

`and(1, A309217(A033716(n)))`
-/

namespace A195198.P15234111411697745892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A309217 (A033716 n).toNat)

end

end A195198.P15234111411697745892

namespace A195198

/-- `and(1, A309217(A033716(n)))` -/
def P15234111411697745892.Spec : Prop :=
  ∀ n, P15234111411697745892.a n = A195198 n

end A195198

/-! ## A195198.P7913112614078889664

`A000045(and(3, A164272(n)))`
-/

namespace A195198.P7913112614078889664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (A164272 n)).toNat

end

end A195198.P7913112614078889664

namespace A195198

/-- `A000045(and(3, A164272(n)))` -/
def P7913112614078889664.Spec : Prop :=
  ∀ n, P7913112614078889664.a n = A195198 n

end A195198

/-!
# A195199: Smallest multiple of n with more than twice as many divisors as n.

The programs for A195199, there is no canonical definition to state claims against.
-/

/-! ## A195199.P13472990613746062003

`(n+1)*A351126(n+1)`
-/

namespace A195199.P13472990613746062003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351126 (n + 1)

end

end A195199.P13472990613746062003

/-! ## A195199.P4669951346528719796

`(n+1)*A031131(A060395(n)%A136175(3*n+5))`
-/

namespace A195199.P4669951346528719796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A031131 (Int.tmod (A060395 n) (A136175 (3 * n + 5))).toNat

end

end A195199.P4669951346528719796

/-! ## A195199.P1791419204536126909

`(n+1)*A127018(A334730(n+1))`
-/

namespace A195199.P1791419204536126909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127018 (A334730 (n + 1)).toNat

end

end A195199.P1791419204536126909

/-! ## A195199.P18428599514588776123

`(n+1)*A301337(A060395(n)+6)`
-/

namespace A195199.P18428599514588776123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A301337 (A060395 n + 6).toNat

end

end A195199.P18428599514588776123

/-! ## A195199.P2397463243617357217

`(n+1)*A226294(A114647(n))`
-/

namespace A195199.P2397463243617357217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A226294 (A114647 n).toNat

end

end A195199.P2397463243617357217

