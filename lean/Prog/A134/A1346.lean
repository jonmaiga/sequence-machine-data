import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
# A134600: Composite numbers such that the square mean of their prime factors is an integer (where the prime factors are taken with multiplicity and the square mean of c and d is sqrt((c^2+d^2)/2)).

The programs for A134600, there is no canonical definition to state claims against.
-/

/-! ## A134600.P3175948454705160167

`∪[A134601(n+1), A134602(n+1)]`
-/

namespace A134600.P3175948454705160167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134600.P3175948454705160167

/-! ## A134600.P5989076618090181572

`∪[A134601(n+1), A134603(n+1)]`
-/

namespace A134600.P5989076618090181572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134600.P5989076618090181572

/-! ## A134600.P1472098267690858925

`∪[A134603(n+1), A025475(n+2)]`
-/

namespace A134600.P1472098267690858925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134600.P1472098267690858925

/-! ## A134600.P1535746448268790620

`A171181(2*A134601(n+1))`
-/

namespace A134600.P1535746448268790620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (2 * A134601 (n + 1)).toNat

end

end A134600.P1535746448268790620

/-!
# A134603: Numbers (excluding primes and powers of primes) such that the square mean of their prime factors is an integer (where the square mean of c and d is sqrt((c^2+d^2)/2)).

The programs for A134603, there is no canonical definition to state claims against.
-/

/-! ## A134603.P10123585180837795875

`∪[A134602(n+1), A134604(n+1)]`
-/

namespace A134603.P10123585180837795875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134603.P10123585180837795875

/-! ## A134603.P5497543163200214384

`filter[A134600(n+1), A132350(#)]`
-/

namespace A134603.P5497543163200214384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A134603.P5497543163200214384

/-! ## A134603.P2349223402246956010

`filter[A134600(n+1), A143731(#)]`
-/

namespace A134603.P2349223402246956010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A134603.P2349223402246956010

/-!
# A134604: Numbers (excluding primes and powers of primes) such that the square mean of their prime factors is a prime (where the square mean of c and d is sqrt((c^2+d^2)/2)).

The programs for A134604, there is no canonical definition to state claims against.
-/

/-! ## A134604.P17591763343076945205

`∩[A134601(n+1), A134603(n+1)]`
-/

namespace A134604.P17591763343076945205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134604.P17591763343076945205

/-! ## A134604.P11700477422146937833

`filter[A134601(n+1), A132350(#)]`
-/

namespace A134604.P11700477422146937833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A134604.P11700477422146937833

/-! ## A134604.P4629324262694370183

`filter[A134601(n+1), A143731(#)]`
-/

namespace A134604.P4629324262694370183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A134604.P4629324262694370183

/-!
# A134605: Composite numbers such that the square root of the sum of squares of their prime factors (with multiplicity) is an integer.

The programs for A134605, there is no canonical definition to state claims against.
-/

/-! ## A134605.P10974816822852696610

`∪[A134606(n+1), A134607(n+1)]`
-/

namespace A134605.P10974816822852696610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134605.P10974816822852696610

/-!
# A134606: Numbers such that the square root of the sum of squares of their prime factors is a nonprime integer.

The programs for A134606, there is no canonical definition to state claims against.
-/

/-! ## A134606.P7895010350008261804

`A134605(lt[A215635(n), A255006(n)])`
-/

namespace A134606.P7895010350008261804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134606.P7895010350008261804

/-! ## A134606.P17413522875668339549

`A134605(lt[A113084(2*n+3), A241023(n)])`
-/

namespace A134606.P17413522875668339549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134606.P17413522875668339549

/-! ## A134606.P13183803009801356200

`A134605(lt[A340954(n+9), A217350(n+1)])`
-/

namespace A134606.P13183803009801356200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340954 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134606.P13183803009801356200

/-! ## A134606.P3249442135354758870

`A134605(lt[A007814(n+4), A066017(n+1)])`
-/

namespace A134606.P3249442135354758870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134606.P3249442135354758870

/-! ## A134606.P10506403229167847760

`A134605(lt[A188653(3*n+4), A307391(n+1)])`
-/

namespace A134606.P10506403229167847760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134606.P10506403229167847760

/-!
# A134608: Composite numbers such that the cube root of the sum of cubes of their prime factors is an integer.

The programs for A134608, there is no canonical definition to state claims against.
-/

/-! ## A134608.P9148546085982157022

`∪[A134609(n+1), A134610(n+1)]%A134610(n+1)`
-/

namespace A134608.P9148546085982157022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A134610 (n + 1))

end

end A134608.P9148546085982157022

/-!
# A134609: Numbers such that the cube root of the sum of cubes of their prime factors is a nonprime integer.

The programs for A134609, there is no canonical definition to state claims against.
-/

/-! ## A134609.P1524445540097853349

`A134608(eq[A248394(n+3), A308920(n)])`
-/

namespace A134609.P1524445540097853349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134608 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134609.P1524445540097853349

/-! ## A134609.P2619501731742382761

`A134608(A028986(n+1))`
-/

namespace A134609.P2619501731742382761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134608 (A028986 (n + 1)).toNat

end

end A134609.P2619501731742382761

/-!
# A134611: Nonprime numbers such that the root mean cube of their prime factors is an integer (where the root mean cube of c and d is ((c^3+d^3)/2)^(1/3)).

The programs for A134611, there is no canonical definition to state claims against.
-/

/-! ## A134611.P13300461723320712738

`∪[A025475(n+1), A134614(n+1)]`
-/

namespace A134611.P13300461723320712738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134611.P13300461723320712738

/-! ## A134611.P119129075382843717

`∪[A134612(n+1), A134613(n+1)]`
-/

namespace A134611.P119129075382843717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134611.P119129075382843717

/-! ## A134611.P6811510584052558683

`A000027(∪[A025475(n+1), A134613(n+1)])`
-/

namespace A134611.P6811510584052558683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134613 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A134611.P6811510584052558683

/-! ## A134611.P11968268704012792033

`A000027(∪[A134613(n+1), A249435(n+1)+1])`
-/

namespace A134611.P11968268704012792033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A134611.P11968268704012792033

/-! ## A134611.P6322435013678055293

`∪[A025475(n+1), A134613(n+1)]%A134615(n+1)`
-/

namespace A134611.P6322435013678055293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134613 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A134615 (n + 1))

end

end A134611.P6322435013678055293

/-!
# A134616: Numbers such that the sum of squares of their prime factors (taken with multiplicity) is a prime.

The programs for A134616, there is no canonical definition to state claims against.
-/

/-! ## A134616.P17417368114863584248

`eq[1, A032741(A067666(n+1))]+1`
-/

namespace A134616.P17417368114863584248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A067666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134616.P17417368114863584248

/-!
# A134622: Products pq ("semiprimes") of two primes p and q >= p such that q+2 is a prime.

The programs for A134622, there is no canonical definition to state claims against.
-/

/-! ## A134622.P7633663747486079089

`A178378(A043317(n+2))`
-/

namespace A134622.P7633663747486079089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178378 (A043317 (n + 2)).toNat

end

end A134622.P7633663747486079089

/-! ## A134622.P4503218494915784284

`A178378(A044914(n+2))`
-/

namespace A134622.P4503218494915784284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178378 (A044914 (n + 2)).toNat

end

end A134622.P4503218494915784284

/-! ## A134622.P8492241117542290857

`A097449(A178378(n+2))`
-/

namespace A134622.P8492241117542290857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A178378 (n + 2)).toNat

end

end A134622.P8492241117542290857

/-! ## A134622.P14351996478460151106

`A178378(A132378(n+2))`
-/

namespace A134622.P14351996478460151106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178378 (A132378 (n + 2)).toNat

end

end A134622.P14351996478460151106

/-! ## A134622.P17143825805693427392

`eq[1, A071558(A327642(n))]`
-/

namespace A134622.P17143825805693427392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A327642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134622.P17143825805693427392

/-!
# A134623: a(n) = the n-th positive integer which is missing from A134624.

The programs for A134623, there is no canonical definition to state claims against.
-/

/-! ## A134623.P549564126886577546

`comp[A134624(n+1)-1]+1`
-/

namespace A134623.P549564126886577546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A134623.P549564126886577546

/-! ## A134623.P3295145958082603890

`eq[char[A134624(n+1)], A000007(n)]`
-/

namespace A134623.P3295145958082603890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134623.P3295145958082603890

/-! ## A134623.P4613920740379738974

`eq[char[A134624(n+1)], A000038(n)]`
-/

namespace A134623.P4613920740379738974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134623.P4613920740379738974

/-! ## A134623.P5854230275409650279

`eq[A008458(n)%2, char[A134624(n+1)]]`
-/

namespace A134623.P5854230275409650279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A134623.P5854230275409650279

/-! ## A134623.P3866990795534279118

`eq[char[A134624(n+1)], A209229(2*n+1)]`
-/

namespace A134623.P3866990795534279118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134623.P3866990795534279118

/-! ## A134623.P11954341675454421058

`eq[char[A134624(n+1)], A151933(n)]`
-/

namespace A134623.P11954341675454421058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134624 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134623.P11954341675454421058

/-!
# A134624: a(1) = 1. a(n) = the smallest integer which is > a(n-1) and is different from and not coprime to A134623(n-1).

The programs for A134624, there is no canonical definition to state claims against.
-/

/-! ## A134624.P17423408359511996410

`lt[n*char[A134623(n+1)], n]`
-/

namespace A134624.P17423408359511996410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A134624.P17423408359511996410

/-! ## A134624.P8912337865074017668

`eq[char[A134623(n+1)], A000007(n)]`
-/

namespace A134624.P8912337865074017668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134624.P8912337865074017668

/-! ## A134624.P14954142303880417536

`eq[char[A134623(n+1)], A000038(n)]`
-/

namespace A134624.P14954142303880417536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134624.P14954142303880417536

/-! ## A134624.P15428834858820535655

`lt[char[A134623(n+1)], 1/A179741(n)]`
-/

namespace A134624.P15428834858820535655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A179741 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A134624.P15428834858820535655

/-! ## A134624.P1058855930748912313

`lt[char[A134623(n+1)], n/A253909(n)]`
-/

namespace A134624.P1058855930748912313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A134624.P1058855930748912313

/-! ## A134624.P17433077951609243418

`lt[char[A134623(n+1)], n/A273408(n)]`
-/

namespace A134624.P17433077951609243418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A273408 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A134624.P17433077951609243418

/-! ## A134624.P7908571668615661148

`lt[char[A134623(n+1)], n/A285416(n+1)]`
-/

namespace A134624.P7908571668615661148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A285416 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A134624.P7908571668615661148

/-!
# A134625: Sum-fill array starting with (1,2,3,4,...).

The programs for A134625, there is no canonical definition to state claims against.
-/

/-! ## A134625.P16369157473960271921

`A054531(C(A003964(n+1), n))`
-/

namespace A134625.P16369157473960271921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (Nat.choose (A003964 (n + 1)).toNat n)

end

end A134625.P16369157473960271921

/-! ## A134625.P1148719278347386094

`dr(A002024((n+1)^A071919(n)))`
-/

namespace A134625.P1148719278347386094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002024 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A071919 n : ℤ))).toNat)

end

end A134625.P1148719278347386094

/-! ## A134625.P15452622390609288955

`A054531(n+1)-A010893(A038207(n))`
-/

namespace A134625.P15452622390609288955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A010893 ((A038207 n).toNat + 13)

end

end A134625.P15452622390609288955

/-! ## A134625.P12120867358735320558

`A054531(n+1)-A025441(A079968(n))`
-/

namespace A134625.P12120867358735320558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A025441 (A079968 n).toNat

end

end A134625.P12120867358735320558

/-! ## A134625.P9987591259481974976

`A054531(n+1)-A179391(A126796(n))`
-/

namespace A134625.P9987591259481974976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A179391 (A126796 n).toNat

end

end A134625.P9987591259481974976

/-!
# A134626: Sum-fill array starting with (1,2,4,8,16,...), powers of 2.

The programs for A134626, there is no canonical definition to state claims against.
-/

/-! ## A134626.P5200927871429960855

`A067410(n)%A000005(A026395(n+2))`
-/

namespace A134626.P5200927871429960855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067410 n) (A000005 (A026395 (n + 2)).toNat)

end

end A134626.P5200927871429960855

/-! ## A134626.P15200160982647893752

`gcd(A067410(n), A235942(A219209(n)))`
-/

namespace A134626.P15200160982647893752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067410 n) (A235942 (A219209 n).toNat)

end

end A134626.P15200160982647893752

/-! ## A134626.P17737443658090594265

`xor(A068932(A340970(n)), A091918(n))`
-/

namespace A134626.P17737443658090594265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068932 (A340970 n).toNat) (A091918 n)

end

end A134626.P17737443658090594265

/-! ## A134626.P8930496980331737549

`A247023(n)%A100587(A294740(n+1))`
-/

namespace A134626.P8930496980331737549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247023 n) (A100587 (A294740 (n + 1)).toNat)

end

end A134626.P8930496980331737549

/-!
# A134627: Sum-fill array starting with (1,2).

The programs for A134627, there is no canonical definition to state claims against.
-/

/-! ## A134627.P17684150288990858515

`A064881(∑[A269301(A249576(n))])`
-/

namespace A134627.P17684150288990858515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269301 (A249576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134627.P17684150288990858515

/-! ## A134627.P9428535619709012164

`A064881(n+1)-A292372(A184955(n))`
-/

namespace A134627.P9428535619709012164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) - A292372 (A184955 n).toNat

end

end A134627.P9428535619709012164

/-!
# A134628: Sum-fill array starting with (2,1).

The programs for A134628, there is no canonical definition to state claims against.
-/

/-! ## A134628.P4907348677848233852

`A064882(∑[A272901(A025487(n+1))])`
-/

namespace A134628.P4907348677848233852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134628.P4907348677848233852

/-! ## A134628.P2816936886946973580

`A064882(lt[A185044(n), ∑{e}[n+1, #]])`
-/

namespace A134628.P2816936886946973580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A134628.P2816936886946973580

/-! ## A134628.P2404626047905882950

`A064882(lt[A185044(n), A000120(n)])`
-/

namespace A134628.P2404626047905882950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A134628.P2404626047905882950

/-! ## A134628.P17733688692921471461

`A064882(A187829(n+1))`
-/

namespace A134628.P17733688692921471461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (A187829 (n + 1)).toNat

end

end A134628.P17733688692921471461

/-! ## A134628.P16015759766861036967

`A064882(n+1)%A000766(n+1)`
-/

namespace A134628.P16015759766861036967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064882 (n + 1)) (A000766 (n + 1))

end

end A134628.P16015759766861036967

/-!
# A134630: a(n) = 5*n^5 - 3*n^3 - 2*n^2.

The programs for A134630, the canonical program `A134630.P7620688415718307541` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134630 has offset 0).

The definition of A134630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^5-3*n^3-2*n²` (program `A134630.P7620688415718307541`, by `A134630.P7620688415718307541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134630.P7620688415718307541

`5*n^5-3*n^3-2*n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134630

/-- `5*n^5-3*n^3-2*n²` -/
def P7620688415718307541.Spec : Prop :=
  ∀ n, P7620688415718307541.a n = A134630 n

theorem P7620688415718307541.correct : P7620688415718307541.Spec := by
  intro n
  simp only [A134630]

end A134630

/-! ## A134630.P8705023013051655448

`n*2*n*(A063522(n)-1)`
-/

namespace A134630.P8705023013051655448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) * (A063522 n - 1))

end

end A134630.P8705023013051655448

namespace A134630

/-- `n*2*n*(A063522(n)-1)` -/
def P8705023013051655448.Spec : Prop :=
  ∀ n, P8705023013051655448.a n = A134630 n

theorem P8705023013051655448.correct : P8705023013051655448.Spec := by
  intro n
  simp only [A134630, Nat.add_sub_cancel, A134630.P8705023013051655448.a, A134630.P7620688415718307541.a, A063522, A063522.P5785404417260397752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134630

/-! ## A134630.P12854855097999580654

`2*A005891(n)*A045991(n)`
-/

namespace A134630.P12854855097999580654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005891 n * A045991 n)

end

end A134630.P12854855097999580654

namespace A134630

/-- `2*A005891(n)*A045991(n)` -/
def P12854855097999580654.Spec : Prop :=
  ∀ n, P12854855097999580654.a n = A134630 n

end A134630

/-! ## A134630.P5061657181528990996

`(A015237(n)-n²)*A005891(n)`
-/

namespace A134630.P5061657181528990996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015237 n - (n ^ 2 : ℤ)) * A005891 n

end

end A134630.P5061657181528990996

namespace A134630

/-- `(A015237(n)-n²)*A005891(n)` -/
def P5061657181528990996.Spec : Prop :=
  ∀ n, P5061657181528990996.a n = A134630 n

end A134630

/-! ## A134630.P6386759038585687673

`(A011379(n+1)-A045991(n))*A045991(n)`
-/

namespace A134630.P6386759038585687673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 (n + 1) - A045991 n) * A045991 n

end

end A134630.P6386759038585687673

namespace A134630

/-- `(A011379(n+1)-A045991(n))*A045991(n)` -/
def P6386759038585687673.Spec : Prop :=
  ∀ n, P6386759038585687673.a n = A134630 n

theorem P6386759038585687673.correct : P6386759038585687673.Spec := by
  intro n
  simp only [A134630, Nat.add_sub_cancel, A134630.P6386759038585687673.a, A134630.P7620688415718307541.a, A011379, A011379.P13170028565952122956.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134630

/-! ## A134630.P4386757666951179826

`(A168297(n+1)-A153257(n))*A045991(n)`
-/

namespace A134630.P4386757666951179826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168297 (n + 1) - A153257 n) * A045991 n

end

end A134630.P4386757666951179826

namespace A134630

/-- `(A168297(n+1)-A153257(n))*A045991(n)` -/
def P4386757666951179826.Spec : Prop :=
  ∀ n, P4386757666951179826.a n = A134630 n

theorem P4386757666951179826.correct : P4386757666951179826.Spec := by
  intro n
  simp only [A134630, Nat.add_sub_cancel, A134630.P4386757666951179826.a, A134630.P7620688415718307541.a, A045991, A045991.P16915764248010155243.a, A153257, A153257.P10992381773923415324.a, A168297, A168297.P10015316482910448573.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134630

/-! ## A134630.P13931755427089240169

`(A011379(n+1)-A111384(2*n))*A111384(2*n)`
-/

namespace A134630.P13931755427089240169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 (n + 1) - A111384 (2 * n)) * A111384 (2 * n)

end

end A134630.P13931755427089240169

namespace A134630

/-- `(A011379(n+1)-A111384(2*n))*A111384(2*n)` -/
def P13931755427089240169.Spec : Prop :=
  ∀ n, P13931755427089240169.a n = A134630 n

end A134630

/-! ## A134630.P15653986388296165844

`(A002378(2*n)+A002378(n+1))*A111384(2*n)`
-/

namespace A134630.P15653986388296165844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 (2 * n) + A002378 (n + 1)) * A111384 (2 * n)

end

end A134630.P15653986388296165844

namespace A134630

/-- `(A002378(2*n)+A002378(n+1))*A111384(2*n)` -/
def P15653986388296165844.Spec : Prop :=
  ∀ n, P15653986388296165844.a n = A134630 n

end A134630

/-! ## A134630.P7008082512196151979

`(A046092(2*n)+A046092(n+1))*A028724(2*n+1)`
-/

namespace A134630.P7008082512196151979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (2 * n) + A046092 (n + 1)) * A028724 (2 * n + 1)

end

end A134630.P7008082512196151979

namespace A134630

/-- `(A046092(2*n)+A046092(n+1))*A028724(2*n+1)` -/
def P7008082512196151979.Spec : Prop :=
  ∀ n, P7008082512196151979.a n = A134630 n

end A134630

/-! ## A134630.P5388847344513148875

`n*(A168668(n²)-A168668(n))`
-/

namespace A134630.P5388847344513148875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A168668 (n ^ 2) - A168668 n)

end

end A134630.P5388847344513148875

namespace A134630

/-- `n*(A168668(n²)-A168668(n))` -/
def P5388847344513148875.Spec : Prop :=
  ∀ n, P5388847344513148875.a n = A134630 n

theorem P5388847344513148875.correct : P5388847344513148875.Spec := by
  intro n
  simp only [A134630, Nat.add_sub_cancel, A134630.P5388847344513148875.a, A134630.P7620688415718307541.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134630

/-! ## A134630.P13155009594103918516

`n*(A145995(n²+1)-(n+1)²)`
-/

namespace A134630.P13155009594103918516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A145995 (n ^ 2 + 1) - ((n + 1) ^ 2 : ℤ))

end

end A134630.P13155009594103918516

namespace A134630

/-- `n*(A145995(n²+1)-(n+1)²)` -/
def P13155009594103918516.Spec : Prop :=
  ∀ n, P13155009594103918516.a n = A134630 n

theorem P13155009594103918516.correct : P13155009594103918516.Spec := by
  intro n
  simp only [A134630, Nat.add_sub_cancel, A134630.P13155009594103918516.a, A134630.P7620688415718307541.a, A145995, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134630

/-!
# A134631: a(n) = 5*n^5 - 3*n^3 + 2*n^2. Coefficients and exponents are the prime numbers in decreasing order.

The programs for A134631, the canonical program `A134631.P12871885290913111396` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134631 has offset 0).

The definition of A134631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^5-3*n^3+2*n²` (program `A134631.P12871885290913111396`, by `A134631.P12871885290913111396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134631.P12871885290913111396

`5*n^5-3*n^3+2*n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134631

/-- `5*n^5-3*n^3+2*n²` -/
def P12871885290913111396.Spec : Prop :=
  ∀ n, P12871885290913111396.a n = A134631 n

theorem P12871885290913111396.correct : P12871885290913111396.Spec := by
  intro n
  simp only [A134631]

end A134631

/-! ## A134631.P8665333695199574474

`n*(A063522(n)+1)*2*n`
-/

namespace A134631.P8665333695199574474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A063522 n + 1) * (2 * n : ℤ)

end

end A134631.P8665333695199574474

namespace A134631

/-- `n*(A063522(n)+1)*2*n` -/
def P8665333695199574474.Spec : Prop :=
  ∀ n, P8665333695199574474.a n = A134631 n

theorem P8665333695199574474.correct : P8665333695199574474.Spec := by
  intro n
  simp only [A134631, Nat.add_sub_cancel, A134631.P8665333695199574474.a, A134631.P12871885290913111396.a, A063522, A063522.P5785404417260397752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134631

/-! ## A134631.P7773756331205414444

`2*n*(n+1)*n*(A192136(n)-n)`
-/

namespace A134631.P7773756331205414444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((n + 1 : ℤ) * ((n : ℤ) * (A192136 n - (n : ℤ))))

end

end A134631.P7773756331205414444

namespace A134631

/-- `2*n*(n+1)*n*(A192136(n)-n)` -/
def P7773756331205414444.Spec : Prop :=
  ∀ n, P7773756331205414444.a n = A134631 n

end A134631

/-! ## A134631.P17476181796762602195

`A011379(n)*A386485(n)`
-/

namespace A134631.P17476181796762602195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n * A386485 n

end

end A134631.P17476181796762602195

namespace A134631

/-- `A011379(n)*A386485(n)` -/
def P17476181796762602195.Spec : Prop :=
  ∀ n, P17476181796762602195.a n = A134631 n

end A134631

/-! ## A134631.P2915003831018055584

`∑[4*n]*A006564(A028310(n))`
-/

namespace A134631.P2915003831018055584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006564 (A028310 n).toNat

end

end A134631.P2915003831018055584

namespace A134631

/-- `∑[4*n]*A006564(A028310(n))` -/
def P2915003831018055584.Spec : Prop :=
  ∀ n, P2915003831018055584.a n = A134631 n

end A134631

/-! ## A134631.P4533696157116909537

`A006564(A028310(n))*A046092(n)`
-/

namespace A134631.P4533696157116909537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (A028310 n).toNat * A046092 n

end

end A134631.P4533696157116909537

namespace A134631

/-- `A006564(A028310(n))*A046092(n)` -/
def P4533696157116909537.Spec : Prop :=
  ∀ n, P4533696157116909537.a n = A134631 n

end A134631

/-! ## A134631.P14094939425867173175

`A002411(n)*A008253(A004273(n))`
-/

namespace A134631.P14094939425867173175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A008253 (A004273 n).toNat

end

end A134631.P14094939425867173175

namespace A134631

/-- `A002411(n)*A008253(A004273(n))` -/
def P14094939425867173175.Spec : Prop :=
  ∀ n, P14094939425867173175.a n = A134631 n

end A134631

/-! ## A134631.P1907056852702659422

`∑[A033579(n)]*A113497((1-n)²+n)`
-/

namespace A134631.P1907056852702659422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A113497 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A134631.P1907056852702659422

namespace A134631

/-- `∑[A033579(n)]*A113497((1-n)²+n)` -/
def P1907056852702659422.Spec : Prop :=
  ∀ n, P1907056852702659422.a n = A134631 n

end A134631

/-!
# A134632: a(n) = 5*n^5 + 3*n^3 - 2*n^2. Coefficients and exponents are the prime numbers in decreasing order.

The programs for A134632, the canonical program `A134632.P4644913458203915527` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134632 has offset 0).

The definition of A134632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^5+3*n^3-2*n²` (program `A134632.P4644913458203915527`, by `A134632.P4644913458203915527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134632.P4644913458203915527

`5*n^5+3*n^3-2*n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134632

/-- `5*n^5+3*n^3-2*n²` -/
def P4644913458203915527.Spec : Prop :=
  ∀ n, P4644913458203915527.a n = A134632 n

theorem P4644913458203915527.correct : P4644913458203915527.Spec := by
  intro n
  simp only [A134632]

end A134632

/-! ## A134632.P1824999868406190261

`abs((2*n)²-A134633(n))`
-/

namespace A134632.P1824999868406190261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - A134633 n|

end

end A134632.P1824999868406190261

namespace A134632

/-- `abs((2*n)²-A134633(n))` -/
def P1824999868406190261.Spec : Prop :=
  ∀ n, P1824999868406190261.a n = A134632 n

end A134632

/-! ## A134632.P904794340530564423

`(n*A010001(n)+n-2)*n²`
-/

namespace A134632.P904794340530564423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A010001 n + ((n : ℤ) - 2)) * (n ^ 2 : ℤ)

end

end A134632.P904794340530564423

namespace A134632

/-- `(n*A010001(n)+n-2)*n²` -/
def P904794340530564423.Spec : Prop :=
  ∀ n, P904794340530564423.a n = A134632 n

end A134632

/-! ## A134632.P16195295205009249702

`lcm((2*n)²-A134633(n), A000034(n))`
-/

namespace A134632.P16195295205009249702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 * n) ^ 2 : ℤ) - A134633 n) (A000034 n)

end

end A134632.P16195295205009249702

namespace A134632

/-- `lcm((2*n)²-A134633(n), A000034(n))` -/
def P16195295205009249702.Spec : Prop :=
  ∀ n, (P16195295205009249702.a n : ℤ) = A134632 n

end A134632

/-!
# A134633: 5*n^5 + 3*n^3 + 2*n^2. Coefficients and exponents are the prime numbers in decreasing order.

The programs for A134633, the canonical program `A134633.P3083950150692814969` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134633 has offset 0).

The definition of A134633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^5+3*n^3+2*n²` (program `A134633.P3083950150692814969`, by `A134633.P3083950150692814969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134633.P3083950150692814969

`5*n^5+3*n^3+2*n²`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134633

/-- `5*n^5+3*n^3+2*n²` -/
def P3083950150692814969.Spec : Prop :=
  ∀ n, (P3083950150692814969.a n : ℤ) = A134633 n

theorem P3083950150692814969.correct : P3083950150692814969.Spec := by
  intro n
  simp only [A134633]

end A134633

/-!
# A134634: Triangle formed by Pascal's rule with borders = A000108.

The programs for A134634, there is no canonical definition to state claims against.
-/

/-! ## A134634.P17320830773128791727

`A204553(A157050(n))`
-/

namespace A134634.P17320830773128791727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A157050 n).toNat

end

end A134634.P17320830773128791727

/-! ## A134634.P15472287253879424231

`A107631(2*A346500(n))`
-/

namespace A134634.P15472287253879424231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (2 * A346500 n).toNat

end

end A134634.P15472287253879424231

/-! ## A134634.P6871955844501306223

`A163352(A115255(n)-and(1, n))`
-/

namespace A134634.P6871955844501306223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A115255 n - (Nat.land 1 n : ℤ)).toNat

end

end A134634.P6871955844501306223

/-! ## A134634.P8023139191968999646

`A056811(A020711(A073254(n)))`
-/

namespace A134634.P8023139191968999646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A020711 (A073254 n).toNat).toNat

end

end A134634.P8023139191968999646

/-! ## A134634.P6267743128298384730

`A347933(A137688(n)-A051601(n))`
-/

namespace A134634.P6267743128298384730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347933 (A137688 n - A051601 n).toNat

end

end A134634.P6267743128298384730

/-!
# A134635: Row sums of triangle A134634.

The programs for A134635, the canonical program `A134635.P8371608749489723551` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134635 has offset 0).

The definition of A134635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134635.P8371608749489723551

`2*A000108(n)-A126966(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134635

/-- `2*A000108(n)-A126966(n)` -/
def P8371608749489723551.Spec : Prop :=
  ∀ n, P8371608749489723551.a n = A134635 n

theorem P8371608749489723551.correct : P8371608749489723551.Spec := by
  intro n
  simp only [A134635]

end A134635

/-! ## A134635.P11371782068745249324

`abs(Δ[A126966(n)])`
-/

namespace A134635.P11371782068745249324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134635.P11371782068745249324

namespace A134635

/-- `abs(Δ[A126966(n)])` -/
def P11371782068745249324.Spec : Prop :=
  ∀ n, P11371782068745249324.a n = A134635 n

end A134635

/-! ## A134635.P13706222673032533000

`gcd(Δ[A126966(n)], A000038(n))`
-/

namespace A134635.P13706222673032533000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A134635.P13706222673032533000

namespace A134635

/-- `gcd(Δ[A126966(n)], A000038(n))` -/
def P13706222673032533000.Spec : Prop :=
  ∀ n, (P13706222673032533000.a n : ℤ) = A134635 n

end A134635

/-! ## A134635.P11624910488416746429

`lcm(Δ[A126966(n)], A033999(n))`
-/

namespace A134635.P11624910488416746429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A134635.P11624910488416746429

namespace A134635

/-- `lcm(Δ[A126966(n)], A033999(n))` -/
def P11624910488416746429.Spec : Prop :=
  ∀ n, (P11624910488416746429.a n : ℤ) = A134635 n

end A134635

/-! ## A134635.P834156730208870612

`A126966(n)-A126966(n+1)`
-/

namespace A134635.P834156730208870612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n - A126966 (n + 1)

end

end A134635.P834156730208870612

namespace A134635

/-- `A126966(n)-A126966(n+1)` -/
def P834156730208870612.Spec : Prop :=
  ∀ n, P834156730208870612.a n = A134635 n

end A134635

/-! ## A134635.P3734739617942551604

`Δ[A000051(n)-2*A158499(n)]`
-/

namespace A134635.P3734739617942551604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - 2 * A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P3734739617942551604

namespace A134635

/-- `Δ[A000051(n)-2*A158499(n)]` -/
def P3734739617942551604.Spec : Prop :=
  ∀ n, P3734739617942551604.a n = A134635 n

end A134635

/-! ## A134635.P2014075799873449835

`Δ[A000079(n)-2*A158499(n)]`
-/

namespace A134635.P2014075799873449835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - 2 * A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P2014075799873449835

namespace A134635

/-- `Δ[A000079(n)-2*A158499(n)]` -/
def P2014075799873449835.Spec : Prop :=
  ∀ n, P2014075799873449835.a n = A134635 n

end A134635

/-! ## A134635.P16839039329998352953

`Δ[A000225(n)-2*A158499(n)]`
-/

namespace A134635.P16839039329998352953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 2 * A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P16839039329998352953

namespace A134635

/-- `Δ[A000225(n)-2*A158499(n)]` -/
def P16839039329998352953.Spec : Prop :=
  ∀ n, P16839039329998352953.a n = A134635 n

end A134635

/-! ## A134635.P16387859747640058287

`Δ[A000918(n)-2*A158499(n)]`
-/

namespace A134635.P16387859747640058287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - 2 * A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P16387859747640058287

namespace A134635

/-- `Δ[A000918(n)-2*A158499(n)]` -/
def P16387859747640058287.Spec : Prop :=
  ∀ n, P16387859747640058287.a n = A134635 n

end A134635

/-! ## A134635.P18015121489715626723

`Δ[A033999(2*n)-A126966(n)]`
-/

namespace A134635.P18015121489715626723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) - A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P18015121489715626723

namespace A134635

/-- `Δ[A033999(2*n)-A126966(n)]` -/
def P18015121489715626723.Spec : Prop :=
  ∀ n, P18015121489715626723.a n = A134635 n

end A134635

/-! ## A134635.P5018136013816604480

`Δ[A033999(2*n+1)*A126966(n)]`
-/

namespace A134635.P5018136013816604480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A126966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P5018136013816604480

namespace A134635

/-- `Δ[A033999(2*n+1)*A126966(n)]` -/
def P5018136013816604480.Spec : Prop :=
  ∀ n, P5018136013816604480.a n = A134635 n

end A134635

/-! ## A134635.P10477652463462133149

`A000108(n)+A014318(n)-A000079(n)`
-/

namespace A134635.P10477652463462133149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A014318 n - A000079 n)

end

end A134635.P10477652463462133149

namespace A134635

/-- `A000108(n)+A014318(n)-A000079(n)` -/
def P10477652463462133149.Spec : Prop :=
  ∀ n, P10477652463462133149.a n = A134635 n

end A134635

/-! ## A134635.P18247263034806998758

`A220902(n+2)-A228343(n)`
-/

namespace A134635.P18247263034806998758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220902 (n + 2) - A228343 n

end

end A134635.P18247263034806998758

namespace A134635

/-- `A220902(n+2)-A228343(n)` -/
def P18247263034806998758.Spec : Prop :=
  ∀ n, P18247263034806998758.a n = A134635 n

end A134635

/-! ## A134635.P6540523215632535210

`A082590(n)-A162551(n)`
-/

namespace A134635.P6540523215632535210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n - A162551 n

end

end A134635.P6540523215632535210

namespace A134635

/-- `A082590(n)-A162551(n)` -/
def P6540523215632535210.Spec : Prop :=
  ∀ n, P6540523215632535210.a n = A134635 n

end A134635

/-! ## A134635.P15575172904979637017

`A028329(n)-A029759(n+1)`
-/

namespace A134635.P15575172904979637017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A029759 (n + 1)

end

end A134635.P15575172904979637017

namespace A134635

/-- `A028329(n)-A029759(n+1)` -/
def P15575172904979637017.Spec : Prop :=
  ∀ n, P15575172904979637017.a n = A134635 n

end A134635

/-! ## A134635.P3988903943523971012

`A088854(n+1)-A051944(n)`
-/

namespace A134635.P3988903943523971012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088854 (n + 1) - A051944 n

end

end A134635.P3988903943523971012

namespace A134635

/-- `A088854(n+1)-A051944(n)` -/
def P3988903943523971012.Spec : Prop :=
  ∀ n, P3988903943523971012.a n = A134635 n

end A134635

/-! ## A134635.P10527204734747431197

`Δ[A000984(n)-2*A029759(n)]`
-/

namespace A134635.P10527204734747431197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - 2 * A029759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134635.P10527204734747431197

namespace A134635

/-- `Δ[A000984(n)-2*A029759(n)]` -/
def P10527204734747431197.Spec : Prop :=
  ∀ n, P10527204734747431197.a n = A134635 n

end A134635

/-! ## A134635.P5184474244700026940

`2*A001405(2*n)-A029759(n+1)`
-/

namespace A134635.P5184474244700026940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 (2 * n) - A029759 (n + 1)

end

end A134635.P5184474244700026940

namespace A134635

/-- `2*A001405(2*n)-A029759(n+1)` -/
def P5184474244700026940.Spec : Prop :=
  ∀ n, P5184474244700026940.a n = A134635 n

end A134635

/-! ## A134635.P6093187960000953036

`A000108(n)+A082590(n)-A001700(n)`
-/

namespace A134635.P6093187960000953036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A082590 n - A001700 n)

end

end A134635.P6093187960000953036

namespace A134635

/-- `A000108(n)+A082590(n)-A001700(n)` -/
def P6093187960000953036.Spec : Prop :=
  ∀ n, P6093187960000953036.a n = A134635 n

end A134635

/-! ## A134635.P17380558360072945141

`A000984(n)+A000984(n)-A029759(n+1)`
-/

namespace A134635.P17380558360072945141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A000984 n - A029759 (n + 1))

end

end A134635.P17380558360072945141

namespace A134635

/-- `A000984(n)+A000984(n)-A029759(n+1)` -/
def P17380558360072945141.Spec : Prop :=
  ∀ n, P17380558360072945141.a n = A134635 n

end A134635

/-!
# A134636: Triangle formed by Pascal's rule given borders = 2n+1.

The programs for A134636, the canonical program `A134636.P14217444213641303487` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134636 has offset 0).

The definition of A134636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134636.P14217444213641303487

`A051632(n)+A028263(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134636

/-- `A051632(n)+A028263(n)` -/
def P14217444213641303487.Spec : Prop :=
  ∀ n, P14217444213641303487.a n = A134636 n

theorem P14217444213641303487.correct : P14217444213641303487.Spec := by
  intro n
  simp only [A134636]

end A134636

/-! ## A134636.P11036370549516763291

`A053207(n)+A029653(n)`
-/

namespace A134636.P11036370549516763291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053207 n + A029653 n

end

end A134636.P11036370549516763291

namespace A134636

/-- `A053207(n)+A029653(n)` -/
def P11036370549516763291.Spec : Prop :=
  ∀ n, P11036370549516763291.a n = A134636 n

end A134636

/-! ## A134636.P12624872828364510391

`A051601(n)+A051597(n)`
-/

namespace A134636.P12624872828364510391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A051597 n

end

end A134636.P12624872828364510391

namespace A134636

/-- `A051601(n)+A051597(n)` -/
def P12624872828364510391.Spec : Prop :=
  ∀ n, P12624872828364510391.a n = A134636 n

end A134636

/-! ## A134636.P2856157063397325817

`A051668(n)-A051666(n)`
-/

namespace A134636.P2856157063397325817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A051666 n

end

end A134636.P2856157063397325817

namespace A134636

/-- `A051668(n)-A051666(n)` -/
def P2856157063397325817.Spec : Prop :=
  ∀ n, P2856157063397325817.a n = A134636 n

theorem P2856157063397325817.correct : P2856157063397325817.Spec := by
  intro n
  simp only [A134636, Nat.add_sub_cancel, A134636.P2856157063397325817.a, A134636.P14217444213641303487.a, A028263, A028263.P3177418721069471964.a, A051632, A051632.P5030505018056849433.a, A051666, A051666.P8179550014341494216.a, A051668, A051668.P17142553008796260612.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A051601, A051601.P8807190257128102919.a, A051631, A051631.P14444125950979056489.a, A222404, A222404.P14214754150695596768.a, A222403, A222403.P3020155544965014607.a, A028327, A028327.P9835590816428302231.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134636

/-! ## A134636.P3762359036931028594

`A051631(n)+A014410(n+2)`
-/

namespace A134636.P3762359036931028594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + A014410 (n + 2)

end

end A134636.P3762359036931028594

namespace A134636

/-- `A051631(n)+A014410(n+2)` -/
def P3762359036931028594.Spec : Prop :=
  ∀ n, P3762359036931028594.a n = A134636 n

end A134636

/-! ## A134636.P17896115056244812257

`A007318(n)+2*A051601(n)`
-/

namespace A134636.P17896115056244812257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A051601 n

end

end A134636.P17896115056244812257

namespace A134636

/-- `A007318(n)+2*A051601(n)` -/
def P17896115056244812257.Spec : Prop :=
  ∀ n, P17896115056244812257.a n = A134636 n

end A134636

/-! ## A134636.P12567385719354755879

`2*A051597(n)-A007318(n)`
-/

namespace A134636.P12567385719354755879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A007318 n

end

end A134636.P12567385719354755879

namespace A134636

/-- `2*A051597(n)-A007318(n)` -/
def P12567385719354755879.Spec : Prop :=
  ∀ n, P12567385719354755879.a n = A134636 n

end A134636

/-! ## A134636.P6938774901810193069

`A051631(n)+A028327(n)/2`
-/

namespace A134636.P6938774901810193069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051631 n : ℚ) + (A028327 n : ℚ) / 2

end

end A134636.P6938774901810193069

namespace A134636

/-- `A051631(n)+A028327(n)/2` -/
def P6938774901810193069.Spec : Prop :=
  ∀ n, P6938774901810193069.a n = (A134636 n : ℚ)

theorem P6938774901810193069.correct : P6938774901810193069.Spec := by
  intro n
  simp only [A134636, Nat.add_sub_cancel, A134636.P6938774901810193069.a, A134636.P14217444213641303487.a, A028263, A028263.P3177418721069471964.a, A028327, A028327.P9835590816428302231.a, A051631, A051631.P14444125950979056489.a, A051632, A051632.P5030505018056849433.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A134636

/-! ## A134636.P9233819433828151667

`A028327(n)-3*A007318(n)`
-/

namespace A134636.P9233819433828151667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - 3 * A007318 n

end

end A134636.P9233819433828151667

namespace A134636

/-- `A028327(n)-3*A007318(n)` -/
def P9233819433828151667.Spec : Prop :=
  ∀ n, P9233819433828151667.a n = A134636 n

end A134636

/-! ## A134636.P7487215986800576328

`2*A028263(n)-A135089(A028310(n))`
-/

namespace A134636.P7487215986800576328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028263 n - A135089 (A028310 n).toNat

end

end A134636.P7487215986800576328

namespace A134636

/-- `2*A028263(n)-A135089(A028310(n))` -/
def P7487215986800576328.Spec : Prop :=
  ∀ n, P7487215986800576328.a n = A134636 n

end A134636

/-! ## A134636.P12059902189382464392

`A028327(n)-(A028326(n)+A007318(n))`
-/

namespace A134636.P12059902189382464392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - (A028326 n + A007318 n)

end

end A134636.P12059902189382464392

namespace A134636

/-- `A028327(n)-(A028326(n)+A007318(n))` -/
def P12059902189382464392.Spec : Prop :=
  ∀ n, P12059902189382464392.a n = A134636 n

end A134636

/-! ## A134636.P3052452355325669662

`A051597(n)+A051597(n)-A007318(A028310(n))`
-/

namespace A134636.P3052452355325669662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051597 n - A007318 (A028310 n).toNat)

end

end A134636.P3052452355325669662

namespace A134636

/-- `A051597(n)+A051597(n)-A007318(A028310(n))` -/
def P3052452355325669662.Spec : Prop :=
  ∀ n, P3052452355325669662.a n = A134636 n

end A134636

/-! ## A134636.P2119783550201327593

`A028263(n)+A051597(n)-A134059(A028310(n))`
-/

namespace A134636.P2119783550201327593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + (A051597 n - A134059 (A028310 n).toNat)

end

end A134636.P2119783550201327593

namespace A134636

/-- `A028263(n)+A051597(n)-A134059(A028310(n))` -/
def P2119783550201327593.Spec : Prop :=
  ∀ n, P2119783550201327593.a n = A134636 n

end A134636

/-! ## A134636.P1184241419784421918

`A028276(n)+A051601(n)-A134059(A028310(n))`
-/

namespace A134636.P1184241419784421918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + (A051601 n - A134059 (A028310 n).toNat)

end

end A134636.P1184241419784421918

namespace A134636

/-- `A028276(n)+A051601(n)-A134059(A028310(n))` -/
def P1184241419784421918.Spec : Prop :=
  ∀ n, P1184241419784421918.a n = A134636 n

end A134636

/-! ## A134636.P10731765522599497094

`A004273(A014430(n)-A014473(n))-A014473(n)`
-/

namespace A134636.P10731765522599497094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A014430 n - A014473 n).toNat - A014473 n

end

end A134636.P10731765522599497094

namespace A134636

/-- `A004273(A014430(n)-A014473(n))-A014473(n)` -/
def P10731765522599497094.Spec : Prop :=
  ∀ n, P10731765522599497094.a n = A134636 n

end A134636

/-! ## A134636.P6874758920753735790

`A028310(A051597(n)-(A007318(n)-A051597(n)))`
-/

namespace A134636.P6874758920753735790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051597 n - (A007318 n - A051597 n)).toNat

end

end A134636.P6874758920753735790

namespace A134636

/-- `A028310(A051597(n)-(A007318(n)-A051597(n)))` -/
def P6874758920753735790.Spec : Prop :=
  ∀ n, P6874758920753735790.a n = A134636 n

end A134636

/-!
# A134637: Triangle, T(n,k) = T(n-1,k) + T(n-1,k-1), 1<k<n with borders given by the Tetrahedral numbers.

The programs for A134637, there is no canonical definition to state claims against.
-/

/-! ## A134637.P1749628499494473976

`A194119(n)-A007318(n)`
-/

namespace A134637.P1749628499494473976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - A007318 n

end

end A134637.P1749628499494473976

/-! ## A134637.P7070511620433164044

`A194119(n)-abs(A108086(n))`
-/

namespace A134637.P7070511620433164044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - |A108086 n|

end

end A134637.P7070511620433164044

/-! ## A134637.P6576534427401382765

`A194119(n)-abs(A117440(n))`
-/

namespace A134637.P6576534427401382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - |A117440 n|

end

end A134637.P6576534427401382765

/-! ## A134637.P10454838749451369902

`A194119(n)-abs(A130595(n))`
-/

namespace A134637.P10454838749451369902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - |A130595 n|

end

end A134637.P10454838749451369902

/-! ## A134637.P16885727012696448682

`A194119(n)-sqrt(A008459(n))`
-/

namespace A134637.P16885727012696448682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194119 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A134637.P16885727012696448682

/-! ## A134637.P8096795992524039851

`A194119(n)-Δ[A102363(n)]`
-/

namespace A134637.P8096795992524039851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - (f1 (n + 1) - f1 n)

end

end A134637.P8096795992524039851

/-! ## A134637.P6786703014574127833

`A194119(n)-(A014473(n)+1)`
-/

namespace A134637.P6786703014574127833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - (A014473 n + 1)

end

end A134637.P6786703014574127833

/-! ## A134637.P5604820091577004805

`A194119(n)-A028326(n)/2`
-/

namespace A134637.P5604820091577004805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194119 n : ℚ) - (A028326 n : ℚ) / 2

end

end A134637.P5604820091577004805

/-! ## A134637.P12285562177316373529

`A222403(2*comp[∑[n]]-n)-A007318(n)`
-/

namespace A134637.P12285562177316373529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A007318 n

end

end A134637.P12285562177316373529

/-! ## A134637.P17615752475091446802

`A194119(n)-A001281(A028326(n))`
-/

namespace A134637.P17615752475091446802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n - A001281 (A028326 n).toNat

end

end A134637.P17615752475091446802

/-!
# A134638: Row sums of triangle A134637.

The programs for A134638, the canonical program `A134638.P12858469521327861519` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134638 has offset 1).

The definition of A134638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134638.P12858469521327861519

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=8, a(2)=28, a(3)=76`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134638

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P12858469521327861519.Spec : Prop :=
  ∀ n, P12858469521327861519.a n = A134638 (n + 1)

theorem P12858469521327861519.correct : P12858469521327861519.Spec := by
  intro n
  simp only [A134638, Nat.add_sub_cancel]

end A134638

/-! ## A134638.P17155673372998365600

`2*(∑[n+1]+a(n-1))` with `a(0)=1`
-/

namespace A134638.P17155673372998365600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A134638.P17155673372998365600

namespace A134638

/-- `2*(∑[n+1]+a(n-1))` -/
def P17155673372998365600.Spec : Prop :=
  ∀ n, (P17155673372998365600.a n : ℤ) = A134638 (n + 1)

end A134638

/-! ## A134638.P11205338646398265295

`∑[∑[∑[2^(n+1)]]]-2^n`
-/

namespace A134638.P11205338646398265295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A134638.P11205338646398265295

namespace A134638

/-- `∑[∑[∑[2^(n+1)]]]-2^n` -/
def P11205338646398265295.Spec : Prop :=
  ∀ n, P11205338646398265295.a n = A134638 (n + 1)

end A134638

/-! ## A134638.P6548590604086062118

`2*(a(n-1)+C(n+2, 2))` with `a(0)=1`
-/

namespace A134638.P6548590604086062118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + Nat.choose (n + 2) 2)

end

end A134638.P6548590604086062118

namespace A134638

/-- `2*(a(n-1)+C(n+2, 2))` -/
def P6548590604086062118.Spec : Prop :=
  ∀ n, (P6548590604086062118.a n : ℤ) = A134638 (n + 1)

end A134638

/-! ## A134638.P7645243171878985823

`2*(a(n-1)-∑[xor(n, -1)])` with `a(0)=1`
-/

namespace A134638.P7645243171878985823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134638.P7645243171878985823

namespace A134638

/-- `2*(a(n-1)-∑[xor(n, -1)])` -/
def P7645243171878985823.Spec : Prop :=
  ∀ n, P7645243171878985823.a n = A134638 (n + 1)

end A134638

/-! ## A134638.P6806306493372074527

`floor(2*a(n-1)+(n+1)*(n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134638.P6806306493372074527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n + 1) * (n + 2)

end

end A134638.P6806306493372074527

namespace A134638

/-- `floor(2*a(n-1)+(n+1)*(n+2))` -/
def P6806306493372074527.Spec : Prop :=
  ∀ n, (P6806306493372074527.a n : ℤ) = A134638 (n + 1)

end A134638

/-! ## A134638.P4069859960321382327

`round(2*a(n-1)+(n+1)*(n+2))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A134638.P4069859960321382327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n + 1) * (n + 2)

end

end A134638.P4069859960321382327

namespace A134638

/-- `round(2*a(n-1)+(n+1)*(n+2))` -/
def P4069859960321382327.Spec : Prop :=
  ∀ n, (P4069859960321382327.a n : ℤ) = A134638 (n + 1)

end A134638

/-! ## A134638.P17431478489678163460

`2*(a(n-1)-∑[n-1-2*n])` with `a(0)=1`
-/

namespace A134638.P17431478489678163460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134638.P17431478489678163460

namespace A134638

/-- `2*(a(n-1)-∑[n-1-2*n])` -/
def P17431478489678163460.Spec : Prop :=
  ∀ n, P17431478489678163460.a n = A134638 (n + 1)

end A134638

/-! ## A134638.P92498379364213734

`floor(n+1+a(n-1)+a(n-1)+(n+1)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134638.P92498379364213734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + (a (n - 1) + (a (n - 1) + (n + 1) ^ 2))

end

end A134638.P92498379364213734

namespace A134638

/-- `floor(n+1+a(n-1)+a(n-1)+(n+1)²)` -/
def P92498379364213734.Spec : Prop :=
  ∀ n, (P92498379364213734.a n : ℤ) = A134638 (n + 1)

end A134638

/-! ## A134638.P12739511438031952059

`∑[∑[A060182(n)]+round(n/(n+1))]`
-/

namespace A134638.P12739511438031952059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134638.P12739511438031952059

namespace A134638

/-- `∑[∑[A060182(n)]+round(n/(n+1))]` -/
def P12739511438031952059.Spec : Prop :=
  ∀ n, P12739511438031952059.a n = A134638 (n + 1)

end A134638

/-!
# A134639: Conjectured number of numbers k such that sigma(k)/k = n.

The programs for A134639, there is no canonical definition to state claims against.
-/

/-! ## A134639.P6764918347425747212

`A003352(A270339(n+1))-A007843(n)`
-/

namespace A134639.P6764918347425747212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (A270339 (n + 1)).toNat - A007843 n

end

end A134639.P6764918347425747212

/-!
# A134640: Permutational numbers (numbers with k different digits in k-positional system).

The programs for A134640, there is no canonical definition to state claims against.
-/

/-! ## A134640.P8054617012215504244

`A134749(n)+a(n-1)` with `a(0)=0`
-/

namespace A134640.P8054617012215504244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134749 n + a (n - 1)

end

end A134640.P8054617012215504244

/-! ## A134640.P15179862389571043667

`∑[A134749(floor(acot(n)+n))]-1`
-/

namespace A134640.P15179862389571043667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A134640.P15179862389571043667

/-! ## A134640.P3869291708362257462

`∑[A134749(round(acot(n)+n))]-1`
-/

namespace A134640.P3869291708362257462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A134640.P3869291708362257462

/-! ## A134640.P5872526040920566

`∑[A134749(abs(1-n)+1)]-1`
-/

namespace A134640.P5872526040920566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A134640.P5872526040920566

/-! ## A134640.P2175361657711334161

`∑[A134749(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A134640.P2175361657711334161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A134749 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134640.P2175361657711334161

/-! ## A134640.P15464835390033517972

`abs(∑[A134749(A028310(n))]-1)`
-/

namespace A134640.P15464835390033517972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A134640.P15464835390033517972

/-! ## A134640.P18316933861561933682

`∑[A057427(n)*A134749(A028310(n))]`
-/

namespace A134640.P18316933861561933682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A134749 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134640.P18316933861561933682

/-! ## A134640.P9538390404329096423

`∑[A134749(A028310(n))*A178334(n)]`
-/

namespace A134640.P9538390404329096423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (A028310 n).toNat * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134640.P9538390404329096423

/-! ## A134640.P3516638132514117534

`∑[A019430(2*n)*A134749(A028310(n))]`
-/

namespace A134640.P3516638132514117534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (2 * n) * A134749 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134640.P3516638132514117534

/-! ## A134640.P10658628776174209454

`∑[A134749(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A134640.P10658628776174209454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134749 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134640.P10658628776174209454

/-!
# A134643: Odd permutational numbers A134640.

The programs for A134643, there is no canonical definition to state claims against.
-/

/-! ## A134643.P7678638732282411096

`record[A093178(A134640(n+1))]`
-/

namespace A134643.P7678638732282411096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A134640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134643.P7678638732282411096

/-! ## A134643.P10159463826234244023

`record[A193356(A134640(n+2))]`
-/

namespace A134643.P10159463826234244023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A134640 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134643.P10159463826234244023

/-! ## A134643.P15481685443424291944

`filter[A134640(n+1), A000035(#)]`
-/

namespace A134643.P15481685443424291944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A134643.P15481685443424291944

/-! ## A134643.P17822972378080876939

`eq[char[A134640(n+1)], A040236(n)]`
-/

namespace A134643.P17822972378080876939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134643.P17822972378080876939

/-! ## A134643.P17893114126550472022

`eq[char[A134640(n+1)], A040238(n)]`
-/

namespace A134643.P17893114126550472022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A134643.P17893114126550472022

/-!
# A134644: Even permutational numbers A134640.

The programs for A134644, there is no canonical definition to state claims against.
-/

/-! ## A134644.P18362052256336805947

`filter[A134640(n+1), A059841(#)]`
-/

namespace A134644.P18362052256336805947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A134644.P18362052256336805947

/-! ## A134644.P13507137827624332934

`A024731(n+1)*A056239(A004987(n))`
-/

namespace A134644.P13507137827624332934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024731 (n + 1) * A056239 (A004987 n).toNat

end

end A134644.P13507137827624332934

/-!
# A134647: Let a(1) = 0, a(2) = 1; and a(n) = a(n-1) + [the two-digit integer split by the comma which separates a(n-1) and a(n-2)].

The programs for A134647, there is no canonical definition to state claims against.
-/

/-! ## A134647.P13550026862419159043

`∑[A367357(n+1)]-A367357(n+1)`
-/

namespace A134647.P13550026862419159043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367357 (n + 1)

end

end A134647.P13550026862419159043

/-!
# A134651: Numbers which are the sum of two terms from A001043.

The programs for A134651, there is no canonical definition to state claims against.
-/

/-! ## A134651.P4387356884059790559

`A135548(A043317(n+1))`
-/

namespace A134651.P4387356884059790559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135548 (A043317 (n + 1)).toNat

end

end A134651.P4387356884059790559

/-! ## A134651.P101880054897422562

`A135548(A044914(n+1))`
-/

namespace A134651.P101880054897422562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135548 (A044914 (n + 1)).toNat

end

end A134651.P101880054897422562

/-! ## A134651.P3273311137214861528

`A135548(A049872(n)+1)`
-/

namespace A134651.P3273311137214861528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135548 (A049872 n + 1).toNat

end

end A134651.P3273311137214861528

/-! ## A134651.P6185115912975150690

`A135548(A055648(n+1))`
-/

namespace A134651.P6185115912975150690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135548 (A055648 (n + 1)).toNat

end

end A134651.P6185115912975150690

/-! ## A134651.P15161117518831205267

`A135548(A062003(n)+1)`
-/

namespace A134651.P15161117518831205267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135548 (A062003 n + 1).toNat

end

end A134651.P15161117518831205267

/-!
# A134653: Number of Gaussian primes a+b*i in the first quadrant (a>0,b>=0) such that n<norm<=1+n.

The programs for A134653, there is no canonical definition to state claims against.
-/

/-! ## A134653.P5535383054167520155

`Δ[A062711(A051903(A007283(n)))]`
-/

namespace A134653.P5535383054167520155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (A051903 (A007283 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134653.P5535383054167520155

/-! ## A134653.P16647227219387085458

`Δ[A062711(A187829(A028310(n)))]`
-/

namespace A134653.P16647227219387085458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (A187829 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134653.P16647227219387085458

/-! ## A134653.P10116999912497398689

`A062711(A187829(n+1))-A062711(A028310(n))`
-/

namespace A134653.P10116999912497398689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (A187829 (n + 1)).toNat - A062711 (A028310 n).toNat

end

end A134653.P10116999912497398689

/-! ## A134653.P7417760478245580715

`A000120(A004525(n)*A076992(n+1))`
-/

namespace A134653.P7417760478245580715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004525 n * A076992 (n + 1)).toNat

end

end A134653.P7417760478245580715

/-! ## A134653.P15363062363958227756

`A000120(n*A076992(n+1)*A000120(n))`
-/

namespace A134653.P15363062363958227756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) * A076992 (n + 1) * A000120 n).toNat

end

end A134653.P15363062363958227756

/-!
# A134659: Total number of odd coefficients in (1+x+x^2)^k for k=0,...,n.

The programs for A134659, there is no canonical definition to state claims against.
-/

/-! ## A134659.P10174494849015259669

`∑[A071053(n)]`
-/

namespace A134659.P10174494849015259669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P10174494849015259669

/-! ## A134659.P4738537003267082096

`∑[sqrt(A246035(n))]`
-/

namespace A134659.P4738537003267082096
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246035 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P4738537003267082096

/-! ## A134659.P2108812567990627048

`(n+1)²-A265223(n)`
-/

namespace A134659.P2108812567990627048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265223 n

end

end A134659.P2108812567990627048

/-! ## A134659.P17489815871234433483

`(n+1)²-∑[A071052(n)]`
-/

namespace A134659.P17489815871234433483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P17489815871234433483

/-! ## A134659.P16168297896986453145

`∑[A246037(n)/A001316(n)]`
-/

namespace A134659.P16168297896986453145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246037 n : ℚ) / (A001316 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P16168297896986453145

/-! ## A134659.P14620274983531831523

`∑[gcd(A246035(n), A246037(n))]`
-/

namespace A134659.P14620274983531831523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246035 n) (A246037 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P14620274983531831523

/-! ## A134659.P15501015247217940971

`A071053(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A134659.P15501015247217940971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071053 (2 * n) + a (n - 1)

end

end A134659.P15501015247217940971

/-! ## A134659.P6351744766053185122

`∑[A267148(A109043(n))]`
-/

namespace A134659.P6351744766053185122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (A109043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P6351744766053185122

/-! ## A134659.P12778619471728264386

`∑[A118911(2*n)]`
-/

namespace A134659.P12778619471728264386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P12778619471728264386

/-! ## A134659.P7683980930322332042

`∑[A267148(2*n)]`
-/

namespace A134659.P7683980930322332042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P7683980930322332042

/-! ## A134659.P17346054921883090611

`∑[A237120(2*n)+1]`
-/

namespace A134659.P17346054921883090611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237120 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P17346054921883090611

/-! ## A134659.P16128979473502439098

`∑[A000265(A246037(n))]`
-/

namespace A134659.P16128979473502439098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A246037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134659.P16128979473502439098

/-!
# A134660: Number of odd coefficients in (1 + x + x^2 + x^3)^n.

The programs for A134660, the canonical program `A134660.P16903168388043380188` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134660 has offset 0).

The definition of A134660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134660.P16903168388043380188

`2^A036555(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134660

/-- `2^A036555(n)` -/
def P16903168388043380188.Spec : Prop :=
  ∀ n, P16903168388043380188.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P14978189921385534701

`2^A000120(3*n)`
-/

namespace A134660.P14978189921385534701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (3 * n) : ℤ)

end

end A134660.P14978189921385534701

namespace A134660

/-- `2^A000120(3*n)` -/
def P14978189921385534701.Spec : Prop :=
  ∀ n, P14978189921385534701.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P16342659040007597349

`gcd(4^n, C(4*n, n))`
-/

namespace A134660.P16342659040007597349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 ^ n) (Nat.choose (4 * n) n)

end

end A134660.P16342659040007597349

namespace A134660

/-- `gcd(4^n, C(4*n, n))` -/
def P16342659040007597349.Spec : Prop :=
  ∀ n, (P16342659040007597349.a n : ℤ) = A134660 n

end A134660

/-! ## A134660.P4147397799989743036

`A001316(3*n)`
-/

namespace A134660.P4147397799989743036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

end

end A134660.P4147397799989743036

namespace A134660

/-- `A001316(3*n)` -/
def P4147397799989743036.Spec : Prop :=
  ∀ n, P4147397799989743036.a n = A134660 n

end A134660

/-! ## A134660.P18176811468601113536

`A060632(6*n)`
-/

namespace A134660.P18176811468601113536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (6 * n)

end

end A134660.P18176811468601113536

namespace A134660

/-- `A060632(6*n)` -/
def P18176811468601113536.Spec : Prop :=
  ∀ n, P18176811468601113536.a n = A134660 n

end A134660

/-! ## A134660.P11021979195171371775

`A000079(A036555(n))`
-/

namespace A134660.P11021979195171371775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A036555 n).toNat

end

end A134660.P11021979195171371775

namespace A134660

/-- `A000079(A036555(n))` -/
def P11021979195171371775.Spec : Prop :=
  ∀ n, P11021979195171371775.a n = A134660 n

end A134660

/-! ## A134660.P2931496578836056933

`A011782(A036555(n)+1)`
-/

namespace A134660.P2931496578836056933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A036555 n + 1).toNat

end

end A134660.P2931496578836056933

namespace A134660

/-- `A011782(A036555(n)+1)` -/
def P2931496578836056933.Spec : Prop :=
  ∀ n, P2931496578836056933.a n = A134660 n

end A134660

/-! ## A134660.P2603984968147716222

`A001316(A008458(n)+1)/2`
-/

namespace A134660.P2603984968147716222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (A008458 n + 1).toNat : ℚ) / 2

end

end A134660.P2603984968147716222

namespace A134660

/-- `A001316(A008458(n)+1)/2` -/
def P2603984968147716222.Spec : Prop :=
  ∀ n, P2603984968147716222.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P9267662542056511607

`A053644(A209639(3*n))`
-/

namespace A134660.P9267662542056511607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A209639 (3 * n)).toNat

end

end A134660.P9267662542056511607

namespace A134660

/-- `A053644(A209639(3*n))` -/
def P9267662542056511607.Spec : Prop :=
  ∀ n, P9267662542056511607.a n = A134660 n

end A134660

/-! ## A134660.P740682028787323067

`2^A240883(2*n)`
-/

namespace A134660.P740682028787323067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A240883 (2 * n) : ℤ)

end

end A134660.P740682028787323067

namespace A134660

/-- `2^A240883(2*n)` -/
def P740682028787323067.Spec : Prop :=
  ∀ n, P740682028787323067.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P14419538684625816834

`A011782(A046818(2*n))`
-/

namespace A134660.P14419538684625816834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A046818 (2 * n)).toNat

end

end A134660.P14419538684625816834

namespace A134660

/-- `A011782(A046818(2*n))` -/
def P14419538684625816834.Spec : Prop :=
  ∀ n, P14419538684625816834.a n = A134660 n

end A134660

/-! ## A134660.P3139862886485505867

`A000079(A240883(2*n))`
-/

namespace A134660.P3139862886485505867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A240883 (2 * n)).toNat

end

end A134660.P3139862886485505867

namespace A134660

/-- `A000079(A240883(2*n))` -/
def P3139862886485505867.Spec : Prop :=
  ∀ n, P3139862886485505867.a n = A134660 n

end A134660

/-! ## A134660.P4704453221355301355

`A351864(2*n)`
-/

namespace A134660.P4704453221355301355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351864 (2 * n)

end

end A134660.P4704453221355301355

namespace A134660

/-- `A351864(2*n)` -/
def P4704453221355301355.Spec : Prop :=
  ∀ n, P4704453221355301355.a n = A134660 n

end A134660

/-! ## A134660.P11960522358802116040

`sqrt(A102376(3*n))`
-/

namespace A134660.P11960522358802116040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (3 * n) : ℝ)

end

end A134660.P11960522358802116040

namespace A134660

/-- `sqrt(A102376(3*n))` -/
def P11960522358802116040.Spec : Prop :=
  ∀ n, P11960522358802116040.a n = (A134660 n : ℝ)

end A134660

/-! ## A134660.P14284346569111682094

`A038573(3*n)+1`
-/

namespace A134660.P14284346569111682094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (3 * n) + 1

end

end A134660.P14284346569111682094

namespace A134660

/-- `A038573(3*n)+1` -/
def P14284346569111682094.Spec : Prop :=
  ∀ n, P14284346569111682094.a n = A134660 n

end A134660

/-! ## A134660.P4354058407074508014

`A117973(3*n)/2`
-/

namespace A134660.P4354058407074508014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117973 (3 * n) : ℚ) / 2

end

end A134660.P4354058407074508014

namespace A134660

/-- `A117973(3*n)/2` -/
def P4354058407074508014.Spec : Prop :=
  ∀ n, P4354058407074508014.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P14047793132569698109

`A160713(3*n)/3`
-/

namespace A134660.P14047793132569698109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 (3 * n) : ℚ) / 3

end

end A134660.P14047793132569698109

namespace A134660

/-- `A160713(3*n)/3` -/
def P14047793132569698109.Spec : Prop :=
  ∀ n, P14047793132569698109.a n = (A134660 n : ℚ)

end A134660

/-! ## A134660.P14276073613523875613

`A000079(A000120(3*n))`
-/

namespace A134660.P14276073613523875613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 (3 * n)).toNat

end

end A134660.P14276073613523875613

namespace A134660

/-- `A000079(A000120(3*n))` -/
def P14276073613523875613.Spec : Prop :=
  ∀ n, P14276073613523875613.a n = A134660 n

end A134660

/-! ## A134660.P9793999564860196725

`A000010(A167275(3*n))`
-/

namespace A134660.P9793999564860196725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167275 (3 * n)).toNat

end

end A134660.P9793999564860196725

namespace A134660

/-- `A000010(A167275(3*n))` -/
def P9793999564860196725.Spec : Prop :=
  ∀ n, P9793999564860196725.a n = A134660 n

end A134660

/-!
# A134661: Number of odd coefficients in (1 + x + x^3)^n.

The programs for A134661, there is no canonical definition to state claims against.
-/

/-! ## A134661.P10097890959959735225

`A003056(A246039(n))%A128335(n+1)`
-/

namespace A134661.P10097890959959735225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A246039 n).toNat) (A128335 (n + 1))

end

end A134661.P10097890959959735225

/-! ## A134661.P16294002768204468030

`A066207(A246029(n))%A128335(n+1)`
-/

namespace A134661.P16294002768204468030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066207 (A246029 n).toNat) (A128335 (n + 1))

end

end A134661.P16294002768204468030

/-!
# A134664: Number of 3-stack sortable permutations on n letters.

The programs for A134664, there is no canonical definition to state claims against.
-/

/-! ## A134664.P7139631061402209474

`A028310(A375913(n+1))`
-/

namespace A134664.P7139631061402209474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A375913 (n + 1)).toNat

end

end A134664.P7139631061402209474

/-! ## A134664.P12224477986328135231

`A026741(2*A375913(n+1))`
-/

namespace A134664.P12224477986328135231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A375913 (n + 1)).toNat

end

end A134664.P12224477986328135231

/-! ## A134664.P8016180797016388974

`A078898(2*A375913(n+1))`
-/

namespace A134664.P8016180797016388974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A375913 (n + 1)).toNat

end

end A134664.P8016180797016388974

/-!
# A134665: Exponent of highest power of 2 dividing the n-th multiply perfect number A007691.

The programs for A134665, there is no canonical definition to state claims against.
-/

/-! ## A134665.P8602102639409940858

`val(A098204(n+1), 2)`
-/

namespace A134665.P8602102639409940858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A098204 (n + 1)).toNat 2

end

end A134665.P8602102639409940858

/-! ## A134665.P5644203883249965208

`val(A007691(n+1), 2)`
-/

namespace A134665.P5644203883249965208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007691 (n + 1)).toNat 2

end

end A134665.P5644203883249965208

/-! ## A134665.P15776101811635340136

`val(record[A007691(A065648(n))], 2)`
-/

namespace A134665.P15776101811635340136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (A065648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A134665.P15776101811635340136

/-! ## A134665.P10447697790955091344

`log2(A007691(n+1)/A320024(n+1))`
-/

namespace A134665.P10447697790955091344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A007691 (n + 1) : ℚ) / (A320024 (n + 1) : ℚ) : ℝ)

end

end A134665.P10447697790955091344

/-! ## A134665.P9142910239155989362

`log2(gcd(A000079(n), A007691(n+1)))`
-/

namespace A134665.P9142910239155989362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A007691 (n + 1)) : ℝ)

end

end A134665.P9142910239155989362

/-!
# A134667: Period 6: repeat [0, 1, 0, 0, 0, -1].

The programs for A134667, the canonical program `A134667.P10516386716138511071` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134667 has offset 0).

The definition of A134667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134667.P10516386716138511071

`n%2*round(sin(n%6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134667

/-- `n%2*round(sin(n%6))` -/
def P10516386716138511071.Spec : Prop :=
  ∀ n, P10516386716138511071.a n = A134667 n

theorem P10516386716138511071.correct : P10516386716138511071.Spec := by
  intro n
  simp only [A134667]

end A134667

/-!
# A134668: Period 6: repeat [1, -1, 0, 0, -1, 1].

The programs for A134668, the canonical program `A134668.P4078157608500164562` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134668 has offset 0).

The definition of A134668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134668.P4078157608500164562

`round(cos(10*n%6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134668

/-- `round(cos(10*n%6))` -/
def P4078157608500164562.Spec : Prop :=
  ∀ n, P4078157608500164562.a n = A134668 n

theorem P4078157608500164562.correct : P4078157608500164562.Spec := by
  intro n
  simp only [A134668]

end A134668

/-!
# A134669: Numbers n such that n * n# + 1 is prime, where n# = A034386.

The programs for A134669, there is no canonical definition to state claims against.
-/

/-! ## A134669.P2964616607973820236

`lt[A000695(A001156(n+1)), A111267(n+1)]`
-/

namespace A134669.P2964616607973820236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A001156 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134669.P2964616607973820236

/-! ## A134669.P2286889005160982511

`∑[A102354(A084457(n)²)]`
-/

namespace A134669.P2286889005160982511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (A084457 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134669.P2286889005160982511

/-! ## A134669.P6418979261438416431

`∑[A198069(∑[A192951(n)])]`
-/

namespace A134669.P6418979261438416431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198069 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134669.P6418979261438416431

/-! ## A134669.P2132369114051379499

`∑[A336570(A336038(3*n+1)+1)]`
-/

namespace A134669.P2132369114051379499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (A336038 (3 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134669.P2132369114051379499

/-! ## A134669.P9149240142932329262

`∑[gcd(A289676(n+1), A360362(n+1))]`
-/

namespace A134669.P9149240142932329262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289676 (n + 1)) (A360362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134669.P9149240142932329262

/-!
# A134671: Primes of the form 2m*691 - 1.

The programs for A134671, the canonical program `A134671.P6636177411666722606` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134671 has offset 1).

The definition of A134671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134671.P6636177411666722606

`p?[23*30*(n+1)+n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134671

/-- `p?[23*30*(n+1)+n]` -/
def P6636177411666722606.Spec : Prop :=
  ∀ n, (P6636177411666722606.a n : ℤ) = A134671 (n + 1)

theorem P6636177411666722606.correct : P6636177411666722606.Spec := by
  intro n
  simp only [A134671, Nat.add_sub_cancel]

end A134671

/-!
# A134672: Inverse Mobius transform of the superabundant numbers, A051731 * A004394.

The programs for A134672, there is no canonical definition to state claims against.
-/

/-! ## A134672.P799866202505728384

`∑{d}[n+1, A004394(#)]`
-/

namespace A134672.P799866202505728384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004394 d

end

end A134672.P799866202505728384

/-! ## A134672.P3141818271709485776

`record[∑{d}[A023443(n), A004394(#)]]`
-/

namespace A134672.P3141818271709485776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A004394 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134672.P3141818271709485776

/-! ## A134672.P18218197133195796866

`∑{d}[n+1, A025487(A293635(#))]`
-/

namespace A134672.P18218197133195796866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025487 (A293635 d).toNat

end

end A134672.P18218197133195796866

/-! ## A134672.P2701841055069012633

`record[∑{d}[A133310(n), A025487(A293635(#))]]`
-/

namespace A134672.P2701841055069012633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A025487 (A293635 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134672.P2701841055069012633

/-! ## A134672.P10837862201865300365

`∑{d}[n+1, A055932(A332035(#))]`
-/

namespace A134672.P10837862201865300365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055932 (A332035 d).toNat

end

end A134672.P10837862201865300365

/-!
# A134673: A051731 + A127448 - I where I is the Identity matrix (A023531).

The programs for A134673, the canonical program `A134673.P11906740047459928108` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134673 has offset 1).

The definition of A134673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134673.P11906740047459928108

`A051731(n+1)+A127448(n+1)-A023531(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A134673

/-- `A051731(n+1)+A127448(n+1)-A023531(n)` -/
def P11906740047459928108.Spec : Prop :=
  ∀ n, P11906740047459928108.a n = A134673 (n + 1)

theorem P11906740047459928108.correct : P11906740047459928108.Spec := by
  intro n
  simp only [A134673, Nat.add_sub_cancel]

end A134673

/-! ## A134673.P11761676001610175064

`A157928(A126988(n+1))+A127448(n+1)`
-/

namespace A134673.P11761676001610175064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A126988 (n + 1)).toNat + A127448 (n + 1)

end

end A134673.P11761676001610175064

namespace A134673

/-- `A157928(A126988(n+1))+A127448(n+1)` -/
def P11761676001610175064.Spec : Prop :=
  ∀ n, P11761676001610175064.a n = A134673 (n + 1)

end A134673

/-! ## A134673.P7385744410844821330

`A157928(A129559(n+1))+A127448(n+1)`
-/

namespace A134673.P7385744410844821330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A129559 (n + 1)).toNat + A127448 (n + 1)

end

end A134673.P7385744410844821330

namespace A134673

/-- `A157928(A129559(n+1))+A127448(n+1)` -/
def P7385744410844821330.Spec : Prop :=
  ∀ n, P7385744410844821330.a n = A134673 (n + 1)

end A134673

/-! ## A134673.P14498368503682646605

`A127448(n+1)+A000007(A049828(n+1)+A023531(n))`
-/

namespace A134673.P14498368503682646605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 1) + A000007 (A049828 (n + 1) + A023531 n).toNat

end

end A134673.P14498368503682646605

namespace A134673

/-- `A127448(n+1)+A000007(A049828(n+1)+A023531(n))` -/
def P14498368503682646605.Spec : Prop :=
  ∀ n, P14498368503682646605.a n = A134673 (n + 1)

end A134673

/-! ## A134673.P1136823345946315940

`A175992(n+1)+A054525(n+1)*A112544(n+1)`
-/

namespace A134673.P1136823345946315940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (n + 1) + A054525 (n + 1) * A112544 (n + 1)

end

end A134673.P1136823345946315940

namespace A134673

/-- `A175992(n+1)+A054525(n+1)*A112544(n+1)` -/
def P1136823345946315940.Spec : Prop :=
  ∀ n, P1136823345946315940.a n = A134673 (n + 1)

end A134673

/-!
# A134675: Row sums of triangle A134674.

The programs for A134675, the canonical program `A134675.P852948724655989853` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134675 has offset 1).

The definition of A134675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134675.P852948724655989853

`A007434(n+1)+A001065(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134675

/-- `A007434(n+1)+A001065(n+1)` -/
def P852948724655989853.Spec : Prop :=
  ∀ n, P852948724655989853.a n = A134675 (n + 1)

theorem P852948724655989853.correct : P852948724655989853.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel]

end A134675

/-! ## A134675.P554945944809246574

`n+1+A033880(n+1)+A007434(n+1)`
-/

namespace A134675.P554945944809246574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A033880 (n + 1) + A007434 (n + 1))

end

end A134675.P554945944809246574

namespace A134675

/-- `n+1+A033880(n+1)+A007434(n+1)` -/
def P554945944809246574.Spec : Prop :=
  ∀ n, P554945944809246574.a n = A134675 (n + 1)

theorem P554945944809246574.correct : P554945944809246574.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel, A134675.P554945944809246574.a, A134675.P852948724655989853.a, A001065, A001065.P4097147489331274860.a, A007434, A007434.P3432859153295839493.a, A033880, A033880.P6005875780263802708.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134675

/-! ## A134675.P11474880289757933975

`A000203(n+1)+A007434(n+1)-(n+1)`
-/

namespace A134675.P11474880289757933975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A007434 (n + 1) - (n + 1 : ℤ))

end

end A134675.P11474880289757933975

namespace A134675

/-- `A000203(n+1)+A007434(n+1)-(n+1)` -/
def P11474880289757933975.Spec : Prop :=
  ∀ n, P11474880289757933975.a n = A134675 (n + 1)

theorem P11474880289757933975.correct : P11474880289757933975.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel, A134675.P11474880289757933975.a, A134675.P852948724655989853.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007434, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134675

/-! ## A134675.P11636924821645309497

`(n+1)²+A001065(n+1)-A064279(n+1)`
-/

namespace A134675.P11636924821645309497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A001065 (n + 1) - A064279 (n + 1))

end

end A134675.P11636924821645309497

namespace A134675

/-- `(n+1)²+A001065(n+1)-A064279(n+1)` -/
def P11636924821645309497.Spec : Prop :=
  ∀ n, P11636924821645309497.a n = A134675 (n + 1)

theorem P11636924821645309497.correct : P11636924821645309497.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel, A134675.P11636924821645309497.a, A134675.P852948724655989853.a, A001065, A001065.P4097147489331274860.a, A007434, A007434.P3432859153295839493.a, A064279, A064279.P12022089793920685943.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134675

/-! ## A134675.P15266016362155698364

`A001065(n+1)+A321879(n+1)-A321879(n)`
-/

namespace A134675.P15266016362155698364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A321879 (n + 1) - A321879 n)

end

end A134675.P15266016362155698364

namespace A134675

/-- `A001065(n+1)+A321879(n+1)-A321879(n)` -/
def P15266016362155698364.Spec : Prop :=
  ∀ n, P15266016362155698364.a n = A134675 (n + 1)

end A134675

/-! ## A134675.P3706107753712448436

`A001615(n+1)+A007434(n+1)-A344705(n+1)`
-/

namespace A134675.P3706107753712448436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A007434 (n + 1) - A344705 (n + 1))

end

end A134675.P3706107753712448436

namespace A134675

/-- `A001615(n+1)+A007434(n+1)-A344705(n+1)` -/
def P3706107753712448436.Spec : Prop :=
  ∀ n, P3706107753712448436.a n = A134675 (n + 1)

theorem P3706107753712448436.correct : P3706107753712448436.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel, A134675.P3706107753712448436.a, A134675.P852948724655989853.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A344705, A344705.P1217591774318848897.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134675

/-! ## A134675.P17332396259303756941

`A001065(n+1)+A000010(n+1)*A001615(n+1)`
-/

namespace A134675.P17332396259303756941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A000010 (n + 1) * A001615 (n + 1)

end

end A134675.P17332396259303756941

namespace A134675

/-- `A001065(n+1)+A000010(n+1)*A001615(n+1)` -/
def P17332396259303756941.Spec : Prop :=
  ∀ n, P17332396259303756941.a n = A134675 (n + 1)

theorem P17332396259303756941.correct : P17332396259303756941.Spec := by
  intro n
  simp only [A134675, Nat.add_sub_cancel, A134675.P17332396259303756941.a, A134675.P852948724655989853.a, A000010, A000010.P4673923239450215316.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A007434, A007434.P3432859153295839493.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A134675

/-! ## A134675.P7818690803200021345

`A319699(A103517(n))+A007434(n+1)`
-/

namespace A134675.P7818690803200021345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A103517 n).toNat + A007434 (n + 1)

end

end A134675.P7818690803200021345

namespace A134675

/-- `A319699(A103517(n))+A007434(n+1)` -/
def P7818690803200021345.Spec : Prop :=
  ∀ n, P7818690803200021345.a n = A134675 (n + 1)

end A134675

/-!
# A134676: Triangle read by rows: A127172 * A127648 as infinite lower triangular matrices.

The programs for A134676, the canonical program `A134676.P11721118199451395300` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134676 has offset 1).

The definition of A134676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134676.P3306817656623065102

`A002260(n+1)*A127172(n+1)`
-/

namespace A134676.P3306817656623065102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127172 (n + 1)

end

end A134676.P3306817656623065102

namespace A134676

/-- `A002260(n+1)*A127172(n+1)` -/
def P3306817656623065102.Spec : Prop :=
  ∀ n, P3306817656623065102.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P14652573313901059622

`A050873(n+1)*A127172(n+1)`
-/

namespace A134676.P14652573313901059622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127172 (n + 1)

end

end A134676.P14652573313901059622

namespace A134676

/-- `A050873(n+1)*A127172(n+1)` -/
def P14652573313901059622.Spec : Prop :=
  ∀ n, P14652573313901059622.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P1472016690211644243

`A112544(n+1)*A127172(n+1)`
-/

namespace A134676.P1472016690211644243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A127172 (n + 1)

end

end A134676.P1472016690211644243

namespace A134676

/-- `A112544(n+1)*A127172(n+1)` -/
def P1472016690211644243.Spec : Prop :=
  ∀ n, P1472016690211644243.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P18424604118098093123

`A123275(n+1)*A127172(n+1)`
-/

namespace A134676.P18424604118098093123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127172 (n + 1)

end

end A134676.P18424604118098093123

namespace A134676

/-- `A123275(n+1)*A127172(n+1)` -/
def P18424604118098093123.Spec : Prop :=
  ∀ n, P18424604118098093123.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P13472395553632282941

`A127093(n+1)*A127172(n+1)`
-/

namespace A134676.P13472395553632282941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127172 (n + 1)

end

end A134676.P13472395553632282941

namespace A134676

/-- `A127093(n+1)*A127172(n+1)` -/
def P13472395553632282941.Spec : Prop :=
  ∀ n, P13472395553632282941.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P2386824947058415076

`A127172(n+1)*A307662(n+1)`
-/

namespace A134676.P2386824947058415076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A307662 (n + 1)

end

end A134676.P2386824947058415076

namespace A134676

/-- `A127172(n+1)*A307662(n+1)` -/
def P2386824947058415076.Spec : Prop :=
  ∀ n, P2386824947058415076.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P13638893974316281117

`A127172(n+1)*A334230(n+1)`
-/

namespace A134676.P13638893974316281117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A334230 (n + 1)

end

end A134676.P13638893974316281117

namespace A134676

/-- `A127172(n+1)*A334230(n+1)` -/
def P13638893974316281117.Spec : Prop :=
  ∀ n, P13638893974316281117.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P14228905377898643523

`A127172(n+1)*A357554(n+1)`
-/

namespace A134676.P14228905377898643523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127172 (n + 1) * A357554 (n + 1)

end

end A134676.P14228905377898643523

namespace A134676

/-- `A127172(n+1)*A357554(n+1)` -/
def P14228905377898643523.Spec : Prop :=
  ∀ n, P14228905377898643523.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P11721118199451395300

`A007425(A010766(n+1))*A127093(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134676

/-- `A007425(A010766(n+1))*A127093(n+1)` -/
def P11721118199451395300.Spec : Prop :=
  ∀ n, P11721118199451395300.a n = A134676 (n + 1)

theorem P11721118199451395300.correct : P11721118199451395300.Spec := by
  intro n
  simp only [A134676, Nat.add_sub_cancel]

end A134676

/-! ## A134676.P10996155947590174874

`A007425(A049834(n+1))*A127093(n+1)`
-/

namespace A134676.P10996155947590174874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A049834 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P10996155947590174874

namespace A134676

/-- `A007425(A049834(n+1))*A127093(n+1)` -/
def P10996155947590174874.Spec : Prop :=
  ∀ n, P10996155947590174874.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P1090641677741967643

`A007425(A051537(n+1))*A127093(n+1)`
-/

namespace A134676.P1090641677741967643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A051537 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P1090641677741967643

namespace A134676

/-- `A007425(A051537(n+1))*A127093(n+1)` -/
def P1090641677741967643.Spec : Prop :=
  ∀ n, P1090641677741967643.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P8488784434128235923

`A007425(A054531(n+1))*A127093(n+1)`
-/

namespace A134676.P8488784434128235923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A054531 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P8488784434128235923

namespace A134676

/-- `A007425(A054531(n+1))*A127093(n+1)` -/
def P8488784434128235923.Spec : Prop :=
  ∀ n, P8488784434128235923.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P7606260155586238602

`A007425(A059026(n+1))*A127093(n+1)`
-/

namespace A134676.P7606260155586238602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A059026 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P7606260155586238602

namespace A134676

/-- `A007425(A059026(n+1))*A127093(n+1)` -/
def P7606260155586238602.Spec : Prop :=
  ∀ n, P7606260155586238602.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P16315184773134988854

`A007425(A219158(n+1))*A127093(n+1)`
-/

namespace A134676.P16315184773134988854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A219158 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P16315184773134988854

namespace A134676

/-- `A007425(A219158(n+1))*A127093(n+1)` -/
def P16315184773134988854.Spec : Prop :=
  ∀ n, P16315184773134988854.a n = A134676 (n + 1)

end A134676

/-! ## A134676.P17745075375696909921

`A007425(A234575(n+1))*A127093(n+1)`
-/

namespace A134676.P17745075375696909921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A234575 (n + 1)).toNat * A127093 (n + 1)

end

end A134676.P17745075375696909921

namespace A134676

/-- `A007425(A234575(n+1))*A127093(n+1)` -/
def P17745075375696909921.Spec : Prop :=
  ∀ n, P17745075375696909921.a n = A134676 (n + 1)

end A134676

/-!
# A134677: Records in A069360.

The programs for A134677, there is no canonical definition to state claims against.
-/

/-! ## A134677.P10564631430197144943

`record[A061357(2*(n+1))]`
-/

namespace A134677.P10564631430197144943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P10564631430197144943

/-! ## A134677.P4742161337075111627

`record[A002375(2*(n+1))]`
-/

namespace A134677.P4742161337075111627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P4742161337075111627

/-! ## A134677.P13502273453142543704

`record[A045917(n+1)/gcd(2, n)]`
-/

namespace A134677.P13502273453142543704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045917 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P13502273453142543704

/-! ## A134677.P18022659385471441920

`record[A045917(A005153(n+1))]`
-/

namespace A134677.P18022659385471441920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A005153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P18022659385471441920

/-! ## A134677.P1280898032430362787

`record[A045917(A151999(n+1))]`
-/

namespace A134677.P1280898032430362787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A151999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P1280898032430362787

/-! ## A134677.P11101659705295445566

`record[A069360(n+2)-A010051(2*(n+1))]`
-/

namespace A134677.P11101659705295445566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (n + 2) - A010051 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P11101659705295445566

/-! ## A134677.P2942019245494092293

`record[2/A020639(n+1)*A045917(n+1)]`
-/

namespace A134677.P2942019245494092293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A020639 (n + 1) : ℚ) * (A045917 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134677.P2942019245494092293

/-!
# A134678: Where records occur in A069360.

The programs for A134678, there is no canonical definition to state claims against.
-/

/-! ## A134678.P2898460228317400596

`A143587(n+3)+A001222(A002201(n+1))`
-/

namespace A134678.P2898460228317400596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143587 (n + 3) + A001222 (A002201 (n + 1)).toNat

end

end A134678.P2898460228317400596

/-!
# A134679: a(1) = ... = a(6) = 1; a(n)=a(n-a(n-1))+a(n-a(n-6)).

The programs for A134679, there is no canonical definition to state claims against.
-/

/-! ## A134679.P1605983278156196551

`∑[A286487(p?[A339675(n+1)])]`
-/

namespace A134679.P1605983278156196551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339675 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134679.P1605983278156196551

/-! ## A134679.P14009696121656978977

`∑[A010051(A043276(A172439(n)))]`
-/

namespace A134679.P14009696121656978977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A043276 (A172439 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134679.P14009696121656978977

/-!
# A134680: a(n) = length (or lifetime) of the meta-Fibonacci sequence {f(1) = ... = f(n) = 1; f(k)=f(k-f(k-1))+f(k-f(k-n))} if that sequence is only defined for finitely many terms, or 0 if that sequence is infinite.

The programs for A134680, there is no canonical definition to state claims against.
-/

/-! ## A134680.P12242990705940046710

`A240813(∑[n]+1)`
-/

namespace A134680.P12242990705940046710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134680.P12242990705940046710

/-! ## A134680.P13738619087771272240

`and(-1, A240813(A000124(n)))`
-/

namespace A134680.P13738619087771272240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240813 (A000124 n).toNat)

end

end A134680.P13738619087771272240

/-! ## A134680.P6316912206407177451

`A240813(A000124(n))%A061224(n)`
-/

namespace A134680.P6316912206407177451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240813 (A000124 n).toNat) (A061224 n)

end

end A134680.P6316912206407177451

/-! ## A134680.P7642692910506656397

`A240813(A000124(n))+A000007(n+1)`
-/

namespace A134680.P7642692910506656397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A000124 n).toNat + A000007 (n + 1)

end

end A134680.P7642692910506656397

/-! ## A134680.P17871330662961766857

`A240813(A000124(n))+A000038(n+1)`
-/

namespace A134680.P17871330662961766857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A000124 n).toNat + A000038 (n + 1)

end

end A134680.P17871330662961766857

/-! ## A134680.P986680882381061342

`A240813(A000124(n))+A000035(2*n)`
-/

namespace A134680.P986680882381061342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A000124 n).toNat + A000035 (2 * n)

end

end A134680.P986680882381061342

/-! ## A134680.P2564397504523714313

`A240813(A000124(n))+val(A005408(n), 4)`
-/

namespace A134680.P2564397504523714313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A000124 n).toNat + (SequenceMachineLib.valuation (A005408 n).toNat 4 : ℤ)

end

end A134680.P2564397504523714313

/-! ## A134680.P3496769535313614504

`A000041(C(2, n))*A240813(A000124(n))`
-/

namespace A134680.P3496769535313614504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A240813 (A000124 n).toNat

end

end A134680.P3496769535313614504

/-! ## A134680.P10194663965404944497

`A007318(C(2, n))*A240813(A000124(n))`
-/

namespace A134680.P10194663965404944497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A240813 (A000124 n).toNat

end

end A134680.P10194663965404944497

/-! ## A134680.P9455564112685771778

`A240813(A000124(n))+char[A045130(n+1)]`
-/

namespace A134680.P9455564112685771778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045130 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240813 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134680.P9455564112685771778

/-! ## A134680.P8938342843985300332

`A014963(A008458(n))*A240813(A000124(n))`
-/

namespace A134680.P8938342843985300332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A240813 (A000124 n).toNat

end

end A134680.P8938342843985300332

/-!
# A134681: Number of digits of all the divisors of n.

The programs for A134681, the canonical program `A134681.P3582013729530348155` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134681 has offset 1).

The definition of A134681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134681.P3582013729530348155

`∑{d}[n+1, A055642(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134681

/-- `∑{d}[n+1, A055642(#)]` -/
def P3582013729530348155.Spec : Prop :=
  ∀ n, P3582013729530348155.a n = A134681 (n + 1)

theorem P3582013729530348155.correct : P3582013729530348155.Spec := by
  intro n
  simp only [A134681, Nat.add_sub_cancel]

end A134681

/-! ## A134681.P5143004406184084066

`∑{d}[n+1, A004216(#)+1]`
-/

namespace A134681.P5143004406184084066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A004216 d + 1)

end

end A134681.P5143004406184084066

namespace A134681

/-- `∑{d}[n+1, A004216(#)+1]` -/
def P5143004406184084066.Spec : Prop :=
  ∀ n, P5143004406184084066.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P12171959887322315487

`∑{d}[n+1, A107846(#)+A043537(#)]`
-/

namespace A134681.P12171959887322315487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A107846 d + A043537 d)

end

end A134681.P12171959887322315487

namespace A134681

/-- `∑{d}[n+1, A107846(#)+A043537(#)]` -/
def P12171959887322315487.Spec : Prop :=
  ∀ n, P12171959887322315487.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P13033801544987384719

`∑{d}[n+1, A076649(#)-A280827(#)]`
-/

namespace A134681.P13033801544987384719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A076649 d - A280827 d)

end

end A134681.P13033801544987384719

namespace A134681

/-- `∑{d}[n+1, A076649(#)-A280827(#)]` -/
def P13033801544987384719.Spec : Prop :=
  ∀ n, P13033801544987384719.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P6199114886236565232

`∑{d}[n+1, A004218(#+1)]`
-/

namespace A134681.P6199114886236565232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004218 (d + 1)

end

end A134681.P6199114886236565232

namespace A134681

/-- `∑{d}[n+1, A004218(#+1)]` -/
def P6199114886236565232.Spec : Prop :=
  ∀ n, P6199114886236565232.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P9733111867340077114

`∑{d}[n+1, A276502(A010054(A191352(#))+#)]`
-/

namespace A134681.P9733111867340077114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276502 (A010054 (A191352 d).toNat + (d : ℤ)).toNat

end

end A134681.P9733111867340077114

namespace A134681

/-- `∑{d}[n+1, A276502(A010054(A191352(#))+#)]` -/
def P9733111867340077114.Spec : Prop :=
  ∀ n, P9733111867340077114.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P1804214581495369376

`A338653(A020338(n+1))`
-/

namespace A134681.P1804214581495369376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A020338 (n + 1)).toNat

end

end A134681.P1804214581495369376

namespace A134681

/-- `A338653(A020338(n+1))` -/
def P1804214581495369376.Spec : Prop :=
  ∀ n, P1804214581495369376.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P9906497309652139697

`∑{d}[n+1, A276502(or(#, A276502(#)))]`
-/

namespace A134681.P9906497309652139697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276502 (Int.lor (d : ℤ) (A276502 d)).toNat

end

end A134681.P9906497309652139697

namespace A134681

/-- `∑{d}[n+1, A276502(or(#, A276502(#)))]` -/
def P9906497309652139697.Spec : Prop :=
  ∀ n, P9906497309652139697.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P13488523869926583722

`A338653(A134297(n+1))`
-/

namespace A134681.P13488523869926583722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A134297 (n + 1)).toNat

end

end A134681.P13488523869926583722

namespace A134681

/-- `A338653(A134297(n+1))` -/
def P13488523869926583722.Spec : Prop :=
  ∀ n, P13488523869926583722.a n = A134681 (n + 1)

end A134681

/-! ## A134681.P2507247737100862339

`A338653(A138127(n+1))`
-/

namespace A134681.P2507247737100862339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338653 (A138127 (n + 1)).toNat

end

end A134681.P2507247737100862339

namespace A134681

/-- `A338653(A138127(n+1))` -/
def P2507247737100862339.Spec : Prop :=
  ∀ n, P2507247737100862339.a n = A134681 (n + 1)

end A134681

/-!
# A134682: Smallest number such that in base 10 the concatenation of its divisors has n digits.

The programs for A134682, there is no canonical definition to state claims against.
-/

/-! ## A134682.P3914268467372947540

`A000010(A320921(n)+A022910(2*(n+2)))`
-/

namespace A134682.P3914268467372947540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A320921 n + A022910 (2 * (n + 2))).toNat

end

end A134682.P3914268467372947540

/-! ## A134682.P17041584795707977880

`A072088(A000043(n+1))-A046222(A304133(n+1))`
-/

namespace A134682.P17041584795707977880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A000043 (n + 1)).toNat - A046222 (A304133 (n + 1)).toNat

end

end A134682.P17041584795707977880

/-!
# A134683: Expansion of 1+x*(2+3*x)/(1-4*x^2).

The programs for A134683, the canonical program `A134683.P11125802794986698461` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134683 has offset 0).

The definition of A134683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-4x^2))` (program `A134683.P11125802794986698461`, by `A134683.P11125802794986698461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134683.P11125802794986698461

`ogf((1+2x-x^2)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134683

/-- `ogf((1+2x-x^2)/(1-4x^2))` -/
def P11125802794986698461.Spec : Prop :=
  ∀ n, P11125802794986698461.a n = A134683 n

theorem P11125802794986698461.correct : P11125802794986698461.Spec := by
  intro n
  simp only [A134683]

end A134683

/-! ## A134683.P11708915038602680550

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134683.P11708915038602680550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  4 * a (n - 2)

end

end A134683.P11708915038602680550

namespace A134683

/-- `4*a(n-2)` -/
def P11708915038602680550.Spec : Prop :=
  ∀ n, (P11708915038602680550.a n : ℤ) = A134683 n

end A134683

/-! ## A134683.P6981399479964724686

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134683.P6981399479964724686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A134683.P6981399479964724686

namespace A134683

/-- `a(n-2)/(1/2)²` -/
def P6981399479964724686.Spec : Prop :=
  ∀ n, P6981399479964724686.a n = (A134683 n : ℚ)

end A134683

/-! ## A134683.P508635524376578828

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134683.P508635524376578828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A134683.P508635524376578828

namespace A134683

/-- `floor(a(n-2)/(1-3/4))` -/
def P508635524376578828.Spec : Prop :=
  ∀ n, P508635524376578828.a n = A134683 n

end A134683

/-! ## A134683.P9085674588952755901

`lcm(5, a(n-2))-a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134683.P9085674588952755901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.lcm 5 (a (n - 2)) : ℤ) - a (n - 2)

end

end A134683.P9085674588952755901

namespace A134683

/-- `lcm(5, a(n-2))-a(n-2)` -/
def P9085674588952755901.Spec : Prop :=
  ∀ n, P9085674588952755901.a n = A134683 n

end A134683

/-! ## A134683.P13960275039977346995

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A134683.P13960275039977346995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A134683.P13960275039977346995

namespace A134683

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P13960275039977346995.Spec : Prop :=
  ∀ n, (P13960275039977346995.a n : ℤ) = A134683 n

end A134683

/-! ## A134683.P4766678449138067989

`floor(2^(n-1))+A158780(n+1)²`
-/

namespace A134683.P4766678449138067989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + A158780 (n + 1) ^ 2

end

end A134683.P4766678449138067989

namespace A134683

/-- `floor(2^(n-1))+A158780(n+1)²` -/
def P4766678449138067989.Spec : Prop :=
  ∀ n, P4766678449138067989.a n = A134683 n

end A134683

/-! ## A134683.P6861029370577234441

`A029744(A053438(n))`
-/

namespace A134683.P6861029370577234441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A053438 n).toNat

end

end A134683.P6861029370577234441

namespace A134683

/-- `A029744(A053438(n))` -/
def P6861029370577234441.Spec : Prop :=
  ∀ n, P6861029370577234441.a n = A134683 n

end A134683

/-! ## A134683.P15838614267506518462

`A131577(n)+A117575(n)²`
-/

namespace A134683.P15838614267506518462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A117575 n ^ 2

end

end A134683.P15838614267506518462

namespace A134683

/-- `A131577(n)+A117575(n)²` -/
def P15838614267506518462.Spec : Prop :=
  ∀ n, P15838614267506518462.a n = A134683 n

end A134683

/-! ## A134683.P2832801679921073820

`A180516(A294732(n+2))+1`
-/

namespace A134683.P2832801679921073820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180516 (A294732 (n + 2)).toNat + 1

end

end A134683.P2832801679921073820

namespace A134683

/-- `A180516(A294732(n+2))+1` -/
def P2832801679921073820.Spec : Prop :=
  ∀ n, P2832801679921073820.a n = A134683 n

end A134683

/-! ## A134683.P5212462262327090322

`A158780(2*n)+A117575(n)²`
-/

namespace A134683.P5212462262327090322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) + A117575 n ^ 2

end

end A134683.P5212462262327090322

namespace A134683

/-- `A158780(2*n)+A117575(n)²` -/
def P5212462262327090322.Spec : Prop :=
  ∀ n, P5212462262327090322.a n = A134683 n

end A134683

/-! ## A134683.P17227270149720312711

`A029744(n+1)*A158780(n+1)`
-/

namespace A134683.P17227270149720312711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A158780 (n + 1)

end

end A134683.P17227270149720312711

namespace A134683

/-- `A029744(n+1)*A158780(n+1)` -/
def P17227270149720312711.Spec : Prop :=
  ∀ n, P17227270149720312711.a n = A134683 n

end A134683

/-! ## A134683.P14918585924261468596

`A131577(n)+A131577(A065033(n))²`
-/

namespace A134683.P14918585924261468596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A131577 (A065033 n).toNat ^ 2

end

end A134683.P14918585924261468596

namespace A134683

/-- `A131577(n)+A131577(A065033(n))²` -/
def P14918585924261468596.Spec : Prop :=
  ∀ n, P14918585924261468596.a n = A134683 n

end A134683

/-! ## A134683.P16705864348437362669

`A000079(n)/A068911(n)*A038754(n)`
-/

namespace A134683.P16705864348437362669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A068911 n : ℚ) * (A038754 n : ℚ)

end

end A134683.P16705864348437362669

namespace A134683

/-- `A000079(n)/A068911(n)*A038754(n)` -/
def P16705864348437362669.Spec : Prop :=
  ∀ n, P16705864348437362669.a n = (A134683 n : ℚ)

end A134683

/-! ## A134683.P13521224710968569105

`A000079(n)-(A016116(n)-A074323(n))²`
-/

namespace A134683.P13521224710968569105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A016116 n - A074323 n) ^ 2

end

end A134683.P13521224710968569105

namespace A134683

/-- `A000079(n)-(A016116(n)-A074323(n))²` -/
def P13521224710968569105.Spec : Prop :=
  ∀ n, P13521224710968569105.a n = A134683 n

end A134683

/-! ## A134683.P2525144040372423682

`A153284(n+1)/A040001(n)*A158302(n)`
-/

namespace A134683.P2525144040372423682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153284 (n + 1) : ℚ) / (A040001 n : ℚ) * (A158302 n : ℚ)

end

end A134683.P2525144040372423682

namespace A134683

/-- `A153284(n+1)/A040001(n)*A158302(n)` -/
def P2525144040372423682.Spec : Prop :=
  ∀ n, P2525144040372423682.a n = (A134683 n : ℚ)

end A134683

/-! ## A134683.P10472333761992524203

`A011782(n)+(A005418(n+1)-A011782(n))²`
-/

namespace A134683.P10472333761992524203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A005418 (n + 1) - A011782 n) ^ 2

end

end A134683.P10472333761992524203

namespace A134683

/-- `A011782(n)+(A005418(n+1)-A011782(n))²` -/
def P10472333761992524203.Spec : Prop :=
  ∀ n, P10472333761992524203.a n = A134683 n

end A134683

/-! ## A134683.P17287204657213873254

`A011782(n)+(A113980(n+1)-A011782(n))²`
-/

namespace A134683.P17287204657213873254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A113980 (n + 1) - A011782 n) ^ 2

end

end A134683.P17287204657213873254

namespace A134683

/-- `A011782(n)+(A113980(n+1)-A011782(n))²` -/
def P17287204657213873254.Spec : Prop :=
  ∀ n, P17287204657213873254.a n = A134683 n

end A134683

/-! ## A134683.P11632586474367189410

`(A158780(n+1)+A131572(n))*A158780(n+1)`
-/

namespace A134683.P11632586474367189410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158780 (n + 1) + A131572 n) * A158780 (n + 1)

end

end A134683.P11632586474367189410

namespace A134683

/-- `(A158780(n+1)+A131572(n))*A158780(n+1)` -/
def P11632586474367189410.Spec : Prop :=
  ∀ n, P11632586474367189410.a n = A134683 n

end A134683

/-! ## A134683.P8666393976849749559

`A131577(n)+A158780(n+1)*A158780(n+1)`
-/

namespace A134683.P8666393976849749559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A158780 (n + 1) * A158780 (n + 1)

end

end A134683.P8666393976849749559

namespace A134683

/-- `A131577(n)+A158780(n+1)*A158780(n+1)` -/
def P8666393976849749559.Spec : Prop :=
  ∀ n, P8666393976849749559.a n = A134683 n

end A134683

/-!
# A134684: a(n) = n^(n+9).

The programs for A134684, the canonical program `A134684.P3646620663563910589` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134684 has offset 0).

The definition of A134684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+9)` (program `A134684.P3646620663563910589`, by `A134684.P3646620663563910589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134684.P3646620663563910589

`n^(n+9)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A134684

/-- `n^(n+9)` -/
def P3646620663563910589.Spec : Prop :=
  ∀ n, (P3646620663563910589.a n : ℤ) = A134684 n

theorem P3646620663563910589.correct : P3646620663563910589.Spec := by
  intro n
  simp only [A134684]

end A134684

/-!
# A134685: Irregular triangle read by rows: coefficients C(j,k) of a partition transform for direct Lagrange inversion.

The programs for A134685, there is no canonical definition to state claims against.
-/

/-! ## A134685.P11930286006411975792

`A008836(A106303(n+3))*A181996(n)`
-/

namespace A134685.P11930286006411975792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A106303 (n + 3)).toNat * A181996 n

end

end A134685.P11930286006411975792

/-!
# A134687: Successive digits of the numbers A000005(n).

The programs for A134687, there is no canonical definition to state claims against.
-/

/-! ## A134687.P17692565985758084908

`∏{e}[n+1, #+1]%A096582(2*(n+2))`
-/

namespace A134687.P17692565985758084908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A096582 (2 * (n + 2)))

end

end A134687.P17692565985758084908

/-! ## A134687.P15377557192182281442

`(2^∑{e}[n+1, log2(#+1)])%A178884(n+5)`
-/

namespace A134687.P15377557192182281442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)))) (A178884 (n + 5))

end

end A134687.P15377557192182281442

/-! ## A134687.P12443939539462783270

`Δ[A006218(n)]%A178884(n+5)`
-/

namespace A134687.P12443939539462783270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A178884 (n + 5))

end

end A134687.P12443939539462783270

/-! ## A134687.P1195704101917194066

`Δ[A054519(n)]%A178884(n+5)`
-/

namespace A134687.P1195704101917194066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A178884 (n + 5))

end

end A134687.P1195704101917194066

/-! ## A134687.P18283804942809669669

`A000005(n+1)%A178884(n+5)`
-/

namespace A134687.P18283804942809669669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (A178884 (n + 5))

end

end A134687.P18283804942809669669

/-!
# A134689: Successive digits of the numbers A001065(n).

The programs for A134689, there is no canonical definition to state claims against.
-/

/-! ## A134689.P10728814077837104383

`A001065(∑[∏[A303534(n)!]])`
-/

namespace A134689.P10728814077837104383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A303534 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134689.P10728814077837104383

/-! ## A134689.P18252442396983076117

`A001065(comp[xor(1, n+7)+5]+1)`
-/

namespace A134689.P18252442396983076117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 7) + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A134689.P18252442396983076117

/-! ## A134689.P10501189474711318708

`A001065(∑[∑{digits}[n, #]^(n-∑{digits}[n, #])])`
-/

namespace A134689.P10501189474711318708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ ((n : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134689.P10501189474711318708

/-! ## A134689.P9327200250404473076

`(∑{d}[n+1, #]-(n+1))%(A260826(n)+3)`
-/

namespace A134689.P9327200250404473076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A260826 n + 3)

end

end A134689.P9327200250404473076

/-! ## A134689.P15765676391575790794

`gcd(∑{d}[n+1, #]-(n+1), A361854(C(n, 9)+1))`
-/

namespace A134689.P15765676391575790794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A361854 (Nat.choose n 9 + 1))

end

end A134689.P15765676391575790794

/-!
# A134693: a(n)=A133806(n)+A133806(n+6).

The programs for A134693, the canonical program `A134693.P17907923423065045904` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134693 has offset 0).

The definition of A134693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133806, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134693.P5963125183912950160

`3*A074323(n+1)`
-/

namespace A134693.P5963125183912950160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074323 (n + 1)

end

end A134693.P5963125183912950160

namespace A134693

/-- `3*A074323(n+1)` -/
def P5963125183912950160.Spec : Prop :=
  ∀ n, P5963125183912950160.a n = A134693 n

end A134693

/-! ## A134693.P17907923423065045904

`A133806(n)+A133806(n+6)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A134693

/-- `A133806(n)+A133806(n+6)` -/
def P17907923423065045904.Spec : Prop :=
  ∀ n, P17907923423065045904.a n = A134693 n

theorem P17907923423065045904.correct : P17907923423065045904.Spec := by
  intro n
  simp only [A134693]

end A134693

/-! ## A134693.P12743265864371685162

`ogf((3+9x)/(1-2x^2))`
-/

namespace A134693.P12743265864371685162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9] [1, 0, -2] n

end

end A134693.P12743265864371685162

namespace A134693

/-- `ogf((3+9x)/(1-2x^2))` -/
def P12743265864371685162.Spec : Prop :=
  ∀ n, P12743265864371685162.a n = A134693 n

end A134693

/-! ## A134693.P9303071527828111587

`2*a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A134693.P9303071527828111587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  2 * a (n - 2)

end

end A134693.P9303071527828111587

namespace A134693

/-- `2*a(n-2)` -/
def P9303071527828111587.Spec : Prop :=
  ∀ n, (P9303071527828111587.a n : ℤ) = A134693 n

end A134693

/-! ## A134693.P5742160605171834727

`∏[2/a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A134693.P5742160605171834727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A134693.P5742160605171834727

namespace A134693

/-- `∏[2/a(n-1)]` -/
def P5742160605171834727.Spec : Prop :=
  ∀ n, P5742160605171834727.a n = (A134693 n : ℚ)

end A134693

/-! ## A134693.P3882441118248613589

`a(n-2)/sqrt(1/4)` with `a(0)=3, a(1)=9`
-/

namespace A134693.P3882441118248613589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A134693.P3882441118248613589

namespace A134693

/-- `a(n-2)/sqrt(1/4)` -/
def P3882441118248613589.Spec : Prop :=
  ∀ n, P3882441118248613589.a n = (A134693 n : ℝ)

end A134693

/-! ## A134693.P3034652419380105769

`a(n-2)+a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A134693.P3034652419380105769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 2) + a (n - 2)

end

end A134693.P3034652419380105769

namespace A134693

/-- `a(n-2)+a(n-2)` -/
def P3034652419380105769.Spec : Prop :=
  ∀ n, (P3034652419380105769.a n : ℤ) = A134693 n

end A134693

/-! ## A134693.P14812214129418125864

`3*A164073(n+1)`
-/

namespace A134693.P14812214129418125864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A164073 (n + 1)

end

end A134693.P14812214129418125864

namespace A134693

/-- `3*A164073(n+1)` -/
def P14812214129418125864.Spec : Prop :=
  ∀ n, P14812214129418125864.a n = A134693 n

end A134693

/-! ## A134693.P9487709029978739003

`3/2*A072946(n+1)`
-/

namespace A134693.P9487709029978739003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A072946 (n + 1) : ℚ)

end

end A134693.P9487709029978739003

namespace A134693

/-- `3/2*A072946(n+1)` -/
def P9487709029978739003.Spec : Prop :=
  ∀ n, P9487709029978739003.a n = (A134693 n : ℚ)

end A134693

/-! ## A134693.P14687223817333511144

`3/2*A162255(n+2)`
-/

namespace A134693.P14687223817333511144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A162255 (n + 2) : ℚ)

end

end A134693.P14687223817333511144

namespace A134693

/-- `3/2*A162255(n+2)` -/
def P14687223817333511144.Spec : Prop :=
  ∀ n, P14687223817333511144.a n = (A134693 n : ℚ)

end A134693

/-! ## A134693.P13498031079976360770

`A354785(A065190(n+1))`
-/

namespace A134693.P13498031079976360770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354785 (A065190 (n + 1)).toNat

end

end A134693.P13498031079976360770

namespace A134693

/-- `A354785(A065190(n+1))` -/
def P13498031079976360770.Spec : Prop :=
  ∀ n, P13498031079976360770.a n = A134693 n

end A134693

/-! ## A134693.P18039482246359934474

`A010707(n)*A016116(n)`
-/

namespace A134693.P18039482246359934474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n * A016116 n

end

end A134693.P18039482246359934474

namespace A134693

/-- `A010707(n)*A016116(n)` -/
def P18039482246359934474.Spec : Prop :=
  ∀ n, P18039482246359934474.a n = A134693 n

end A134693

/-! ## A134693.P13889365732215281712

`A164587(n+1)+A135530(n)`
-/

namespace A134693.P13889365732215281712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (n + 1) + A135530 n

end

end A134693.P13889365732215281712

namespace A134693

/-- `A164587(n+1)+A135530(n)` -/
def P13889365732215281712.Spec : Prop :=
  ∀ n, P13889365732215281712.a n = A134693 n

end A134693

/-! ## A134693.P6184489908049977403

`A143095(n+2)+A016116(n)`
-/

namespace A134693.P6184489908049977403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 2) + A016116 n

end

end A134693.P6184489908049977403

namespace A134693

/-- `A143095(n+2)+A016116(n)` -/
def P6184489908049977403.Spec : Prop :=
  ∀ n, P6184489908049977403.a n = A134693 n

end A134693

/-! ## A134693.P5228077990347385371

`A135530(n+3)+A016116(n)`
-/

namespace A134693.P5228077990347385371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 3) + A016116 n

end

end A134693.P5228077990347385371

namespace A134693

/-- `A135530(n+3)+A016116(n)` -/
def P5228077990347385371.Spec : Prop :=
  ∀ n, P5228077990347385371.a n = A134693 n

end A134693

/-! ## A134693.P10272027050398856106

`A029746(n+2)-A152166(n)`
-/

namespace A134693.P10272027050398856106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (n + 2) - A152166 n

end

end A134693.P10272027050398856106

namespace A134693

/-- `A029746(n+2)-A152166(n)` -/
def P10272027050398856106.Spec : Prop :=
  ∀ n, P10272027050398856106.a n = A134693 n

end A134693

/-! ## A134693.P7380479509818421926

`A074323(n+1)+A072946(n+1)`
-/

namespace A134693.P7380479509818421926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 1) + A072946 (n + 1)

end

end A134693.P7380479509818421926

namespace A134693

/-- `A074323(n+1)+A072946(n+1)` -/
def P7380479509818421926.Spec : Prop :=
  ∀ n, P7380479509818421926.a n = A134693 n

end A134693

/-! ## A134693.P6168803655343485921

`A164073(n+1)+A072946(n+1)`
-/

namespace A134693.P6168803655343485921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) + A072946 (n + 1)

end

end A134693.P6168803655343485921

namespace A134693

/-- `A164073(n+1)+A072946(n+1)` -/
def P6168803655343485921.Spec : Prop :=
  ∀ n, P6168803655343485921.a n = A134693 n

end A134693

/-! ## A134693.P17527247911929134918

`A164090(n+1)+A163864(n+1)`
-/

namespace A134693.P17527247911929134918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A163864 (n + 1)

end

end A134693.P17527247911929134918

namespace A134693

/-- `A164090(n+1)+A163864(n+1)` -/
def P17527247911929134918.Spec : Prop :=
  ∀ n, P17527247911929134918.a n = A134693 n

end A134693

/-! ## A134693.P7971442787799062195

`A162255(n+2)+A074323(n+1)`
-/

namespace A134693.P7971442787799062195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162255 (n + 2) + A074323 (n + 1)

end

end A134693.P7971442787799062195

namespace A134693

/-- `A162255(n+2)+A074323(n+1)` -/
def P7971442787799062195.Spec : Prop :=
  ∀ n, P7971442787799062195.a n = A134693 n

end A134693

/-!
# A134694: a(0) = 2; a(n) = least prime p such that p >= a(n-1) + 2^n.

The programs for A134694, there is no canonical definition to state claims against.
-/

/-! ## A134694.P9991604966702460874

`A151800(a(n-1)+2^n-1)` with `a(0)=2`
-/

namespace A134694.P9991604966702460874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + ((2 ^ n : ℤ) - 1)).toNat

end

end A134694.P9991604966702460874

/-! ## A134694.P627638344969794724

`A151800(xor(1, a(n-1))-or(1, -2^n))` with `a(0)=2`
-/

namespace A134694.P627638344969794724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (Int.xor 1 (a (n - 1)) - Int.lor 1 (-(2 ^ n : ℤ))).toNat

end

end A134694.P627638344969794724

/-! ## A134694.P14730714404226954939

`A151800(A036563(n)+a(n-1)+1)` with `a(0)=2, a(1)=5`
-/

namespace A134694.P14730714404226954939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A151800 (A036563 n + a (n - 1) + 1).toNat

end

end A134694.P14730714404226954939

/-! ## A134694.P7300691842771480828

`A151800(A092754(a(n-1)))` with `a(0)=2`
-/

namespace A134694.P7300691842771480828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A092754 (a (n - 1)).toNat).toNat

end

end A134694.P7300691842771480828

/-! ## A134694.P10944951936396195950

`A007918(a(n-1)+2^n)` with `a(0)=2`
-/

namespace A134694.P10944951936396195950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + (2 ^ n : ℤ)).toNat

end

end A134694.P10944951936396195950

/-!
# A134695: Numbers n such that n*Lucas(n) - 1 is prime.

The programs for A134695, there is no canonical definition to state claims against.
-/

/-! ## A134695.P325082597611171157

`∑[A032662(A271518(n)^A053264(2*(n+2)))]`
-/

namespace A134695.P325082597611171157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (SequenceMachineLib.roundAway ((A271518 n : ℚ) ^ (A053264 (2 * (n + 2)) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134695.P325082597611171157

/-!
# A134699: Triangle read by rows: A051731^2 * A000012.

The programs for A134699, there is no canonical definition to state claims against.
-/

/-! ## A134699.P15187253490229209456

`A196383(2*A140704(n+1))`
-/

namespace A134699.P15187253490229209456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196383 (2 * A140704 (n + 1)).toNat

end

end A134699.P15187253490229209456

/-! ## A134699.P5695893543904591231

`A225644(2*A140704(n+1))`
-/

namespace A134699.P5695893543904591231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (2 * A140704 (n + 1)).toNat

end

end A134699.P5695893543904591231

/-! ## A134699.P7774344620212088821

`A111890(3*A140704(n+1))`
-/

namespace A134699.P7774344620212088821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (3 * A140704 (n + 1)).toNat

end

end A134699.P7774344620212088821

/-! ## A134699.P12637692001502575743

`A175589(A135539(n+1)%A268660(n+1))`
-/

namespace A134699.P12637692001502575743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175589 (Int.tmod (A135539 (n + 1)) (A268660 (n + 1))).toNat

end

end A134699.P12637692001502575743

/-! ## A134699.P12304089282879481122

`A323375(A176088(n))`
-/

namespace A134699.P12304089282879481122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323375 (A176088 n).toNat

end

end A134699.P12304089282879481122

