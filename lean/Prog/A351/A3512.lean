import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A351200: Number of patterns of length n with all distinct runs.

The programs for A351200, there is no canonical definition to state claims against.
-/

/-! ## A351200.P900768453000203557

`A016232(n)+A007095(A187249(n))`
-/

namespace A351200.P900768453000203557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 n + A007095 (A187249 n).toNat

end

end A351200.P900768453000203557

/-! ## A351200.P7429289574332636840

`and(-A054336(A000153(n)), A000255(n))`
-/

namespace A351200.P7429289574332636840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A054336 (A000153 n).toNat) (A000255 n)

end

end A351200.P7429289574332636840

/-! ## A351200.P1193878399635425516

`and(A000255(n), A251682(A341374(n+1)))`
-/

namespace A351200.P1193878399635425516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000255 n) (A251682 (A341374 (n + 1)).toNat)

end

end A351200.P1193878399635425516

/-!
# A351201: Numbers whose multiset of prime factors has a permutation without all distinct runs.

The programs for A351201, there is no canonical definition to state claims against.
-/

/-! ## A351201.P13230628691043722603

`∪[A036785(n+1), A070011(n+1)]`
-/

namespace A351201.P13230628691043722603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P13230628691043722603

/-! ## A351201.P6311061913062548938

`∪[A070011(n+1), A072413(n+1)]`
-/

namespace A351201.P6311061913062548938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P6311061913062548938

/-! ## A351201.P4330864512687637256

`∪[A072588(n+1), A188633(n+1)]`
-/

namespace A351201.P4330864512687637256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P4330864512687637256

/-! ## A351201.P12427046619133531569

`∪[A070011(n+1), A335463(n+1)]`
-/

namespace A351201.P12427046619133531569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P12427046619133531569

/-! ## A351201.P18440061414519492159

`∪[A070011(n+1), A347960(n+1)]`
-/

namespace A351201.P18440061414519492159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P18440061414519492159

/-! ## A351201.P14632474394504047759

`∪[A070011(n+1), A355462(n+1)]`
-/

namespace A351201.P14632474394504047759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P14632474394504047759

/-! ## A351201.P16490627052180704157

`∪[A070011(n+1), A363216(n+1)]`
-/

namespace A351201.P16490627052180704157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351201.P16490627052180704157

/-!
# A351202: Number of permutations of the multiset of prime factors of n (or ordered prime factorizations of n) with all distinct runs.

The programs for A351202, there is no canonical definition to state claims against.
-/

/-! ## A351202.P17447548210513545188

`∑{p}[n+1, gcd(n, #)]!^∏{e}[n+1, ceil(#/2)]`
-/

namespace A351202.P17447548210513545188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ⌈(Nat.factorization (f2 n) p : ℚ) / 2⌉ : ℤ)

end

end A351202.P17447548210513545188

/-! ## A351202.P17743352448646260468

`∑{e}[∏{p}[n+1, #], #]!^∏{e}[n+1, floor(#/3)+1]`
-/

namespace A351202.P17743352448646260468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f3 n), (⌊(Nat.factorization (f3 n) p : ℚ) / 3⌋ + 1) : ℤ)

end

end A351202.P17743352448646260468

/-! ## A351202.P15816909235272206351

`∑{p}[n+1, C(#%n, #)]!^∏{e}[n+1, floor(#/3)+1]`
-/

namespace A351202.P15816909235272206351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 3⌋ + 1) : ℤ)

end

end A351202.P15816909235272206351

/-! ## A351202.P6005720690402208530

`∑{p}[n+1, gcd(n, #)]!^A061704(n+1)`
-/

namespace A351202.P6005720690402208530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℚ) ^ (A061704 (n + 1) : ℤ)

end

end A351202.P6005720690402208530

/-! ## A351202.P10380824197762870400

`A001221(n+1)!^∏{e}[n+1, ceil(#/2)]`
-/

namespace A351202.P10380824197762870400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (n + 1)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉ : ℤ)

end

end A351202.P10380824197762870400

/-! ## A351202.P7358373386600383464

`A001222(∏{p}[n+1, #])!^∏{e}[n+1, floor(#/3)+1]`
-/

namespace A351202.P7358373386600383464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 3⌋ + 1) : ℤ)

end

end A351202.P7358373386600383464

/-! ## A351202.P14973670550666520220

`A004795(A061389(n+1))`
-/

namespace A351202.P14973670550666520220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004795 (A061389 (n + 1)).toNat

end

end A351202.P14973670550666520220

/-! ## A351202.P6580334878114074653

`A008480(A350390(n+1))`
-/

namespace A351202.P6580334878114074653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A350390 (n + 1)).toNat

end

end A351202.P6580334878114074653

/-! ## A351202.P15289780334806614266

`A004795(A372380(n+1))`
-/

namespace A351202.P15289780334806614266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004795 (A372380 (n + 1)).toNat

end

end A351202.P15289780334806614266

/-! ## A351202.P5361324602252950790

`A008480(A372379(n+1))`
-/

namespace A351202.P5361324602252950790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A372379 (n + 1)).toNat

end

end A351202.P5361324602252950790

/-!
# A351203: Number of integer partitions of n of whose permutations do not all have distinct runs.

The programs for A351203, there is no canonical definition to state claims against.
-/

/-! ## A351203.P299374610350221673

`A000041(n)-A351204(n)`
-/

namespace A351203.P299374610350221673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A351204 n

end

end A351203.P299374610350221673

/-! ## A351203.P513142710225964255

`sqrt(A001255(n))-A351204(n)`
-/

namespace A351203.P513142710225964255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A351204 n : ℝ)

end

end A351203.P513142710225964255

/-! ## A351203.P15019360871328777944

`∑[A002865(n)]-A351204(n)`
-/

namespace A351203.P15019360871328777944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A351204 n

end

end A351203.P15019360871328777944

/-! ## A351203.P9514799306591399755

`A119620(2*n)-A351204(n)`
-/

namespace A351203.P9514799306591399755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A351204 n

end

end A351203.P9514799306591399755

/-! ## A351203.P4241987654194849416

`A238121(A000217(n))-A351204(n)`
-/

namespace A351203.P4241987654194849416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 n).toNat - A351204 n

end

end A351203.P4241987654194849416

/-!
# A351204: Number of integer partitions of n such that every permutation has all distinct runs.

The programs for A351204, there is no canonical definition to state claims against.
-/

/-! ## A351204.P5131174188743763324

`A000041(n)-A351203(n)`
-/

namespace A351204.P5131174188743763324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A351203 n

end

end A351204.P5131174188743763324

/-! ## A351204.P15432969731343369784

`∑[A002865(n)]-A351203(n)`
-/

namespace A351204.P15432969731343369784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A351203 n

end

end A351204.P15432969731343369784

/-! ## A351204.P15756782351392539089

`A035363(2*n)-A351203(n)`
-/

namespace A351204.P15756782351392539089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A351203 n

end

end A351204.P15756782351392539089

/-! ## A351204.P7399411860837767020

`A144074(∑[n+2]-1)-A351203(n)`
-/

namespace A351204.P7399411860837767020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A351203 n

end

end A351204.P7399411860837767020

/-! ## A351204.P2321585244735536416

`A001055(A000079(n))-A351203(n)`
-/

namespace A351204.P2321585244735536416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A351203 n

end

end A351204.P2321585244735536416

/-!
# A351205: Numbers whose binary expansion does not have all distinct runs.

The programs for A351205, there is no canonical definition to state claims against.
-/

/-! ## A351205.P16756157635731668827

`comp[A175413(n+1)-1]+1`
-/

namespace A351205.P16756157635731668827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A351205.P16756157635731668827

/-! ## A351205.P10820147053362149616

`comp[A035327(A175413(n+1))]`
-/

namespace A351205.P10820147053362149616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A175413 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351205.P10820147053362149616

/-! ## A351205.P5753767549412905773

`comp[A175413(n+1)%A204581(n)]`
-/

namespace A351205.P5753767549412905773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175413 (n + 1)) (A204581 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351205.P5753767549412905773

/-! ## A351205.P11550586355144745981

`eq[char[A175413(n+1)], A000007(n)]`
-/

namespace A351205.P11550586355144745981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351205.P11550586355144745981

/-! ## A351205.P10919320372426463493

`eq[char[A175413(n+1)], A000038(n)]`
-/

namespace A351205.P10919320372426463493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351205.P10919320372426463493

/-! ## A351205.P18325965616384802357

`comp[∪[A175413(n+1), A001014(n)]]`
-/

namespace A351205.P18325965616384802357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351205.P18325965616384802357

/-! ## A351205.P7520554652651093108

`comp[∪[A175413(n+1), A001015(n)]]`
-/

namespace A351205.P7520554652651093108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351205.P7520554652651093108

/-! ## A351205.P11999863560638794550

`eq[char[A175413(n+1)], A073531(n+7)]`
-/

namespace A351205.P11999863560638794550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073531 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351205.P11999863560638794550

/-! ## A351205.P17140732255139849301

`eq[char[A175413(n+1)], A073532(n+7)]`
-/

namespace A351205.P17140732255139849301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073532 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A351205.P17140732255139849301

/-! ## A351205.P11168705263897896217

`eq[A011782(n+1)%2, char[A175413(n+1)]]`
-/

namespace A351205.P11168705263897896217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A351205.P11168705263897896217

/-!
# A351218: a(n) = Sum_{k=0..n} (-k)^k * Stirling2(n,k).

The programs for A351218, there is no canonical definition to state claims against.
-/

/-! ## A351218.P9953767414866592368

`(-1)^n*A203302(n!)`
-/

namespace A351218.P9953767414866592368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A203302 (Nat.factorial n)

end

end A351218.P9953767414866592368

/-!
# A351219: Multiplicative with a(p^e) = Fibonacci(e+1).

The programs for A351219, the canonical program `A351219.P13138103287685954575` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351219 has offset 1).

The definition of A351219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351219.P6275982285159005829

`∏{e}[n+1, A185357(#)]`
-/

namespace A351219.P6275982285159005829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A185357 (Nat.factorization (f1 n) p)

end

end A351219.P6275982285159005829

namespace A351219

/-- `∏{e}[n+1, A185357(#)]` -/
def P6275982285159005829.Spec : Prop :=
  ∀ n, P6275982285159005829.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P13138103287685954575

`∏{e}[n+1, A000045(#+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351219

/-- `∏{e}[n+1, A000045(#+1)]` -/
def P13138103287685954575.Spec : Prop :=
  ∀ n, P13138103287685954575.a n = A351219 (n + 1)

theorem P13138103287685954575.correct : P13138103287685954575.Spec := by
  intro n
  simp only [A351219, Nat.add_sub_cancel]

end A351219

/-! ## A351219.P8910887909943121009

`∏{e}[n+1, A212804(#+2)]`
-/

namespace A351219.P8910887909943121009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A212804 (Nat.factorization (f1 n) p + 2)

end

end A351219.P8910887909943121009

namespace A351219

/-- `∏{e}[n+1, A212804(#+2)]` -/
def P8910887909943121009.Spec : Prop :=
  ∀ n, P8910887909943121009.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P11065596375027828149

`∏{e}[n+1, A001611(#+1)-1]`
-/

namespace A351219.P11065596375027828149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001611 (Nat.factorization (f1 n) p + 1) - 1)

end

end A351219.P11065596375027828149

namespace A351219

/-- `∏{e}[n+1, A001611(#+1)-1]` -/
def P11065596375027828149.Spec : Prop :=
  ∀ n, P11065596375027828149.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P18056105965478870390

`∏{e}[n+1, A053602(A103517(#))]`
-/

namespace A351219.P18056105965478870390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A053602 (A103517 (Nat.factorization (f1 n) p)).toNat

end

end A351219.P18056105965478870390

namespace A351219

/-- `∏{e}[n+1, A053602(A103517(#))]` -/
def P18056105965478870390.Spec : Prop :=
  ∀ n, P18056105965478870390.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P8322933788885297865

`∏{e}[n+1, A163227(A005408(#))]`
-/

namespace A351219.P8322933788885297865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A163227 (A005408 (Nat.factorization (f1 n) p)).toNat

end

end A351219.P8322933788885297865

namespace A351219

/-- `∏{e}[n+1, A163227(A005408(#))]` -/
def P8322933788885297865.Spec : Prop :=
  ∀ n, P8322933788885297865.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P5394697039944641272

`∑{d}[n+1, A165872(#)*A351348((n+1)/#)]`
-/

namespace A351219.P5394697039944641272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A165872 d * A351348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351219.P5394697039944641272

namespace A351219

/-- `∑{d}[n+1, A165872(#)*A351348((n+1)/#)]` -/
def P5394697039944641272.Spec : Prop :=
  ∀ n, P5394697039944641272.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P12865077190165936622

`∏{e}[A131738(n), A301662(A000217(#))]`
-/

namespace A351219.P12865077190165936622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301662 (A000217 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A351219.P12865077190165936622

namespace A351219

/-- `∏{e}[A131738(n), A301662(A000217(#))]` -/
def P12865077190165936622.Spec : Prop :=
  ∀ n, P12865077190165936622.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P14165591779863530250

`A245564(A292380(n+1))`
-/

namespace A351219.P14165591779863530250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A292380 (n + 1)).toNat

end

end A351219.P14165591779863530250

namespace A351219

/-- `A245564(A292380(n+1))` -/
def P14165591779863530250.Spec : Prop :=
  ∀ n, P14165591779863530250.a n = A351219 (n + 1)

end A351219

/-! ## A351219.P353254990381843111

`∑{d}[A062378(A064549(n+1)), A294333(#)]`
-/

namespace A351219.P353254990381843111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A294333 d

end

end A351219.P353254990381843111

namespace A351219

/-- `∑{d}[A062378(A064549(n+1)), A294333(#)]` -/
def P353254990381843111.Spec : Prop :=
  ∀ n, P353254990381843111.a n = A351219 (n + 1)

end A351219

/-!
# A351220: Numbers k such that sigma(L(k)) > 2*L(K), where L(k) is the k-th Lucas number.

The programs for A351220, there is no canonical definition to state claims against.
-/

/-! ## A351220.P12828960120579235532

`∩[A091011(n+1), A235991(n+2)]`
-/

namespace A351220.P12828960120579235532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351220.P12828960120579235532

/-! ## A351220.P4144334266640264453

`∩[A047449(n+1), A091011(n+1)]`
-/

namespace A351220.P4144334266640264453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351220.P4144334266640264453

/-! ## A351220.P7831368600649511813

`∩[A091011(n+1), A359782(n+1)]`
-/

namespace A351220.P7831368600649511813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351220.P7831368600649511813

/-!
# A351223: a(n) is the number of triangular arrays containing the first 3*(n - 1) positive integers arranged with number n on each side and having different set of the sets of the side integers.

The programs for A351223, there is no canonical definition to state claims against.
-/

/-! ## A351223.P5380575650562944539

`(n+1)^3*A060542(n+1)`
-/

namespace A351223.P5380575650562944539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A060542 (n + 1)

end

end A351223.P5380575650562944539

/-! ## A351223.P15980601260816749159

`A318107(A167614(n+2))`
-/

namespace A351223.P15980601260816749159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (A167614 (n + 2)).toNat

end

end A351223.P15980601260816749159

/-! ## A351223.P11902242529967261899

`A318107(A052905(n)+8)`
-/

namespace A351223.P11902242529967261899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (A052905 n + 8).toNat

end

end A351223.P11902242529967261899

/-! ## A351223.P14516946410617467722

`A318107(eq[3, A002262(n)])`
-/

namespace A351223.P14516946410617467722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351223.P14516946410617467722

/-! ## A351223.P1832309466475861015

`A014606(n+1)/A014606(n)*A006480(n)`
-/

namespace A351223.P1832309466475861015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014606 (n + 1) : ℚ) / (A014606 n : ℚ) * (A006480 n : ℚ)

end

end A351223.P1832309466475861015

/-!
# A351224: Length of record run of consecutive numbers having the same Collatz trajectory length.

The programs for A351224, there is no canonical definition to state claims against.
-/

/-! ## A351224.P1169319149286605168

`eq[A000546(n+1), A078441(n+1)]+1`
-/

namespace A351224.P1169319149286605168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351224.P1169319149286605168

/-!
# A351225: a(n) = A276086(n) - n, where A276086 is the primorial base exp-function.

The programs for A351225, there is no canonical definition to state claims against.
-/

/-! ## A351225.P10708990294611385540

`A276086(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351225.P10708990294611385540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n - (n : ℤ)

end

end A351225.P10708990294611385540

/-! ## A351225.P10723975133647071894

`A373849(n)+A168036(n)`
-/

namespace A351225.P10723975133647071894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n + A168036 n

end

end A351225.P10723975133647071894

/-! ## A351225.P6861776125395105239

`A003415(n)+A373849(n)-n`
-/

namespace A351225.P6861776125395105239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + (A373849 n - (n : ℤ))

end

end A351225.P6861776125395105239

/-! ## A351225.P11505546061052661776

`A328843(n)+A328844(n)-n`
-/

namespace A351225.P11505546061052661776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328843 n + (A328844 n - (n : ℤ))

end

end A351225.P11505546061052661776

/-! ## A351225.P14823618549273157394

`A327860(n)-(A342016(n)+n)`
-/

namespace A351225.P14823618549273157394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - (A342016 n + (n : ℤ))

end

end A351225.P14823618549273157394

/-! ## A351225.P15891692550451042370

`A324895(n)+A358764(n)-n`
-/

namespace A351225.P15891692550451042370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n + (A358764 n - (n : ℤ))

end

end A351225.P15891692550451042370

/-! ## A351225.P10747747445952274771

`A348949(n)-(A348950(n)+n)`
-/

namespace A351225.P10747747445952274771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - (A348950 n + (n : ℤ))

end

end A351225.P10747747445952274771

/-! ## A351225.P8177571759352782740

`A328571(n)*A328572(n)-n`
-/

namespace A351225.P8177571759352782740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 n - (n : ℤ)

end

end A351225.P8177571759352782740

/-! ## A351225.P9364860204580073553

`A324198(n)*A351251(n)-n`
-/

namespace A351225.P9364860204580073553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A351251 n - (n : ℤ)

end

end A351225.P9364860204580073553

/-! ## A351225.P18410578047754144268

`A327858(n)*A351231(n)-n`
-/

namespace A351225.P18410578047754144268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n - (n : ℤ)

end

end A351225.P18410578047754144268

/-! ## A351225.P1091886801096382828

`lcm(A324895(n), A351251(n))-n`
-/

namespace A351225.P1091886801096382828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A324895 n) (A351251 n) : ℤ) - (n : ℤ)

end

end A351225.P1091886801096382828

/-! ## A351225.P1763898608758122215

`A346101(A289234(n))-n`
-/

namespace A351225.P1763898608758122215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat - (n : ℤ)

end

end A351225.P1763898608758122215

/-! ## A351225.P8621338740165907576

`A328476(n)+A328580(n)-n`
-/

namespace A351225.P8621338740165907576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328476 n + (A328580 n - (n : ℤ))

end

end A351225.P8621338740165907576

/-! ## A351225.P17092753561501785294

`A328475(n)*A328580(n)-n`
-/

namespace A351225.P17092753561501785294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 n * A328580 n - (n : ℤ)

end

end A351225.P17092753561501785294

/-! ## A351225.P8828112286916305178

`A328627(A328625(n))-n`
-/

namespace A351225.P8828112286916305178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat - (n : ℤ)

end

end A351225.P8828112286916305178

/-! ## A351225.P4703636643712438038

`A328624(A328626(n))-n`
-/

namespace A351225.P4703636643712438038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat - (n : ℤ)

end

end A351225.P4703636643712438038

/-! ## A351225.P4008754031634158154

`A346102(A328623(n))-n`
-/

namespace A351225.P4008754031634158154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346102 (A328623 n).toNat - (n : ℤ)

end

end A351225.P4008754031634158154

/-! ## A351225.P3333202698581048151

`A054842(A049345(n))-n`
-/

namespace A351225.P3333202698581048151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A049345 n).toNat - (n : ℤ)

end

end A351225.P3333202698581048151

/-! ## A351225.P8196708938398686324

`A332815(A277022(n))-n`
-/

namespace A351225.P8196708938398686324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (A277022 n).toNat - (n : ℤ)

end

end A351225.P8196708938398686324

/-!
# A351226: Numbers k for which A276086(k) < k, where A276086 is the primorial base exp-function.

The programs for A351226, there is no canonical definition to state claims against.
-/

/-! ## A351226.P1099199953724086039

`eq[0, A351089(n)]`
-/

namespace A351226.P1099199953724086039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351226.P1099199953724086039

/-! ## A351226.P2958164468896273871

`lt[A351225(n), 0]`
-/

namespace A351226.P2958164468896273871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351226.P2958164468896273871

/-! ## A351226.P54358681820477314

`lt[A276086(n), n]`
-/

namespace A351226.P54358681820477314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351226.P54358681820477314

/-! ## A351226.P6185700238341025275

`lt[A324580(n), n²]`
-/

namespace A351226.P6185700238341025275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324580 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351226.P6185700238341025275

/-! ## A351226.P1400018707878356393

`lt[A348949(n), A348950(n)+n]`
-/

namespace A351226.P1400018707878356393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351226.P1400018707878356393

/-! ## A351226.P5154320628142122371

`lt[A327858(n)*A351231(n), n]`
-/

namespace A351226.P5154320628142122371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351226.P5154320628142122371

/-! ## A351226.P14270830768995110347

`eq[A351225(n)+n, (A351225(n)+n)%A028242(2*n)]`
-/

namespace A351226.P14270830768995110347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351225 n + (n : ℤ)) (A028242 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351226.P14270830768995110347

/-!
# A351227: Numbers k for which A276086(k) > k, where A276086 is the primorial base exp-function.

The programs for A351227, there is no canonical definition to state claims against.
-/

/-! ## A351227.P1249990773480697969

`lt[0, A351225(n)]`
-/

namespace A351227.P1249990773480697969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351227.P1249990773480697969

/-! ## A351227.P1511608130436403456

`comp[A351226(n+1)]`
-/

namespace A351227.P1511608130436403456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351227.P1511608130436403456

/-! ## A351227.P10567675598918272521

`comp[eq[0, A351089(n)]]`
-/

namespace A351227.P10567675598918272521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351089 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351227.P10567675598918272521

/-! ## A351227.P9171641988205051954

`lt[A348950(n)+n, A348949(n)]`
-/

namespace A351227.P9171641988205051954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348950 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351227.P9171641988205051954

/-! ## A351227.P5902136395651509151

`lt[n, A327858(n)*A351231(n)]`
-/

namespace A351227.P5902136395651509151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351227.P5902136395651509151

/-! ## A351227.P858145092124196610

`lt[n, A276086(n)]`
-/

namespace A351227.P858145092124196610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351227.P858145092124196610

/-!
# A351228: Numbers k for which A003415(k) >= A276086(k), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A351228, there is no canonical definition to state claims against.
-/

/-! ## A351228.P18233138573014581208

`lt[A276086(n), A003415(n)+1]`
-/

namespace A351228.P18233138573014581208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351228.P18233138573014581208

/-! ## A351228.P11179778697618244609

`eq[A276086(n), A328099(A028310(n))]`
-/

namespace A351228.P11179778697618244609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351228.P11179778697618244609

/-! ## A351228.P14395344801083284456

`∩[A240911(n+1), A351226(n+1)]`
-/

namespace A351228.P14395344801083284456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351228.P14395344801083284456

/-! ## A351228.P12466428930689939773

`lt[A276086(n), A153152(A003415(n))]`
-/

namespace A351228.P12466428930689939773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351228.P12466428930689939773

/-! ## A351228.P16905668838652206357

`lt[A276086(n), A001065(A233583(n+1))]`
-/

namespace A351228.P16905668838652206357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351228.P16905668838652206357

/-!
# A351230: Numerator of A003415(n) / A276086(n), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A351230, there is no canonical definition to state claims against.
-/

/-! ## A351230.P2397995033262306742

`A003415(n)/A327858(n)`
-/

namespace A351230.P2397995033262306742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 n : ℚ) / (A327858 n : ℚ)

end

end A351230.P2397995033262306742

/-! ## A351230.P11926776890190070816

`A359423(n)/A276086(n)`
-/

namespace A351230.P11926776890190070816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359423 n : ℚ) / (A276086 n : ℚ)

end

end A351230.P11926776890190070816

/-! ## A351230.P14213885431551865412

`(A168036(n)+n)/A327858(n)`
-/

namespace A351230.P14213885431551865412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 n + (n : ℤ) : ℚ) / (A327858 n : ℚ)

end

end A351230.P14213885431551865412

/-! ## A351230.P18272956690230387316

`(A129283(n)-n)/A327858(n)`
-/

namespace A351230.P18272956690230387316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 n - (n : ℤ) : ℚ) / (A327858 n : ℚ)

end

end A351230.P18272956690230387316

/-! ## A351230.P6778071325808154684

`A003415(n)/A276086(A351234(n))`
-/

namespace A351230.P6778071325808154684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 n : ℚ) / (A276086 (A351234 n).toNat : ℚ)

end

end A351230.P6778071325808154684

/-! ## A351230.P11731143490746077096

`(A276086(n)-A373849(n))/A327858(n)`
-/

namespace A351230.P11731143490746077096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n - A373849 n : ℚ) / (A327858 n : ℚ)

end

end A351230.P11731143490746077096

/-! ## A351230.P8724102993387567303

`A003415(n)/A276086(n)*A351231(n)`
-/

namespace A351230.P8724102993387567303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 n : ℚ) / (A276086 n : ℚ) * (A351231 n : ℚ)

end

end A351230.P8724102993387567303

/-! ## A351230.P7722359667816579592

`A358669(n)/(A276086(n)*A327858(n))`
-/

namespace A351230.P7722359667816579592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358669 n : ℚ) / (A276086 n * A327858 n : ℚ)

end

end A351230.P7722359667816579592

/-! ## A351230.P7918087138864504893

`∑[A258057(A028310(n)-1)]/A327858(n)`
-/

namespace A351230.P7918087138864504893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (A028310 n - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A327858 n : ℚ)

end

end A351230.P7918087138864504893

/-! ## A351230.P17263968396253883820

`abs(A129283(n)+A001489(n))/A327858(n)`
-/

namespace A351230.P17263968396253883820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A129283 n + A001489 n| : ℚ) / (A327858 n : ℚ)

end

end A351230.P17263968396253883820

/-! ## A351230.P477416988515402121

`(∑[A258057(n)]-A258057(n))/A327858(n)`
-/

namespace A351230.P477416988515402121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A258057 n : ℤ) : ℚ) / (A327858 n : ℚ)

end

end A351230.P477416988515402121

/-! ## A351230.P9682561138923811794

`(A168036(n)-A001489(n))/A000027(A327858(n))`
-/

namespace A351230.P9682561138923811794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 n - A001489 n : ℚ) / (A000027 (A327858 n).toNat : ℚ)

end

end A351230.P9682561138923811794

/-! ## A351230.P5945074771726422042

`A319703(n-(1-n)%(n+1)+1)/A327858(n)`
-/

namespace A351230.P5945074771726422042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P5945074771726422042

/-! ## A351230.P9599995753107429423

`A319703(A004277(n))/A327858(n)`
-/

namespace A351230.P9599995753107429423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (A004277 n).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P9599995753107429423

/-! ## A351230.P15499011390060233342

`A319703(A004275(n+1))/A327858(n)`
-/

namespace A351230.P15499011390060233342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (A004275 (n + 1)).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P15499011390060233342

/-! ## A351230.P8182003546987440234

`A319703(2*A028310(n))/A327858(n)`
-/

namespace A351230.P8182003546987440234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (2 * A028310 n).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P8182003546987440234

/-! ## A351230.P7769683312979827359

`A319703(A028310(n)+n)/A327858(n)`
-/

namespace A351230.P7769683312979827359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319703 (A028310 n + (n : ℤ)).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P7769683312979827359

/-! ## A351230.P10853777532912949448

`A258197(A000124(n))/A327858(n)`
-/

namespace A351230.P10853777532912949448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258197 (A000124 n).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P10853777532912949448

/-! ## A351230.P7708848397524666403

`A258651(A034856(n+1))/A327858(n)`
-/

namespace A351230.P7708848397524666403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258651 (A034856 (n + 1)).toNat : ℚ) / (A327858 n : ℚ)

end

end A351230.P7708848397524666403

/-!
# A351231: Denominator of A003415(n) / A276086(n), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A351231, there is no canonical definition to state claims against.
-/

/-! ## A351231.P15763732388716686367

`A276086(A351233(n))`
-/

namespace A351231.P15763732388716686367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351233 n).toNat

end

end A351231.P15763732388716686367

/-! ## A351231.P10827617011829116723

`A276086(n)/A327858(n)`
-/

namespace A351231.P10827617011829116723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A327858 n : ℚ)

end

end A351231.P10827617011829116723

/-! ## A351231.P2647738080825477474

`A276086(n-A351234(n))`
-/

namespace A351231.P2647738080825477474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A351234 n).toNat

end

end A351231.P2647738080825477474

/-! ## A351231.P446314378895671320

`A276086(n)/A276086(A351234(n))`
-/

namespace A351231.P446314378895671320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A351234 n).toNat : ℚ)

end

end A351231.P446314378895671320

/-! ## A351231.P16848229578389130256

`(A373849(n)+A003415(n))/A327858(n)`
-/

namespace A351231.P16848229578389130256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373849 n + A003415 n : ℚ) / (A327858 n : ℚ)

end

end A351231.P16848229578389130256

/-! ## A351231.P219043302786402591

`A276086(n)/gcd(A003415(n), A276086(n))`
-/

namespace A351231.P219043302786402591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (Int.gcd (A003415 n) (A276086 n) : ℚ)

end

end A351231.P219043302786402591

/-! ## A351231.P6347980468704098632

`A351225(n-A351234(n))+n-A351234(n)`
-/

namespace A351231.P6347980468704098632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 ((n : ℤ) - A351234 n).toNat + ((n : ℤ) - A351234 n)

end

end A351231.P6347980468704098632

/-! ## A351231.P4916386376876363736

`A276086(n-A276085(A327858(n)))`
-/

namespace A351231.P4916386376876363736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A276085 (A327858 n).toNat).toNat

end

end A351231.P4916386376876363736

/-!
# A351232: a(n) = floor(A276086(n) / A003415(n)), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A351232, there is no canonical definition to state claims against.
-/

/-! ## A351232.P6006534170400614642

`floor(A351231(n+2)/A351230(n+2))`
-/

namespace A351232.P6006534170400614642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351231 (n + 2) : ℚ) / (A351230 (n + 2) : ℚ)⌋

end

end A351232.P6006534170400614642

/-! ## A351232.P1565197615898931278

`floor(A276086(n+2)/A003415(n+2))`
-/

namespace A351232.P1565197615898931278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276086 (n + 2) : ℚ) / (A003415 (n + 2) : ℚ)⌋

end

end A351232.P1565197615898931278

/-! ## A351232.P7768024634675307435

`floor(A328624(A328626(n+2))/A003415(n+2))`
-/

namespace A351232.P7768024634675307435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A328624 (A328626 (n + 2)).toNat : ℚ) / (A003415 (n + 2) : ℚ)⌋

end

end A351232.P7768024634675307435

/-!
# A351233: a(n) = A276085(A351231(n)).

The programs for A351233, there is no canonical definition to state claims against.
-/

/-! ## A351233.P18320492718568669944

`n-A351234(n)`
-/

namespace A351233.P18320492718568669944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351234 n

end

end A351233.P18320492718568669944

/-! ## A351233.P11506735104886082096

`abs(A351234(n)+A001489(n))`
-/

namespace A351233.P11506735104886082096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351234 n + A001489 n|

end

end A351233.P11506735104886082096

/-! ## A351233.P14229126649524603998

`A289234(A289234(n))+A001489(A351234(n))`
-/

namespace A351233.P14229126649524603998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A289234 n).toNat + A001489 (A351234 n).toNat

end

end A351233.P14229126649524603998

/-! ## A351233.P9861717534323030206

`n-A276085(A327858(n))`
-/

namespace A351233.P9861717534323030206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (A327858 n).toNat

end

end A351233.P9861717534323030206

/-! ## A351233.P12282076059984772518

`n-A276085(A276086(n)/A351231(n))`
-/

namespace A351233.P12282076059984772518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A351233.P12282076059984772518

/-! ## A351233.P15819220015621498928

`n-A276085(gcd(A003415(n), A276086(n)))`
-/

namespace A351233.P15819220015621498928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (Int.gcd (A003415 n) (A276086 n))

end

end A351233.P15819220015621498928

/-! ## A351233.P10898108750032999555

`A372576(A351231(n))`
-/

namespace A351233.P10898108750032999555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A351231 n).toNat

end

end A351233.P10898108750032999555

/-!
# A351234: a(n) = A276085(gcd(A003415(n), A276086(n))).

The programs for A351234, there is no canonical definition to state claims against.
-/

/-! ## A351234.P8581262887755851185

`n-A351233(n)`
-/

namespace A351234.P8581262887755851185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351233 n

end

end A351234.P8581262887755851185

/-! ## A351234.P2693941298848717393

`A276085(A327858(n))`
-/

namespace A351234.P2693941298848717393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A327858 n).toNat

end

end A351234.P2693941298848717393

/-! ## A351234.P48093710763687613

`abs(A351233(n)+A001489(n))`
-/

namespace A351234.P48093710763687613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351233 n + A001489 n|

end

end A351234.P48093710763687613

/-! ## A351234.P16773825936821271259

`A289234(A289234(n))+A001489(A351233(n))`
-/

namespace A351234.P16773825936821271259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A289234 n).toNat + A001489 (A351233 n).toNat

end

end A351234.P16773825936821271259

/-! ## A351234.P17977998420328815224

`A276085(A276086(n)/A351231(n))`
-/

namespace A351234.P17977998420328815224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A351234.P17977998420328815224

/-! ## A351234.P8586845088624271478

`A276085(gcd(A003415(n), A276086(n)))`
-/

namespace A351234.P8586845088624271478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A003415 n) (A276086 n))

end

end A351234.P8586845088624271478

/-! ## A351234.P17561819220223147661

`n-A372576(A351231(n))`
-/

namespace A351234.P17561819220223147661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A372576 (A351231 n).toNat

end

end A351234.P17561819220223147661

/-!
# A351235: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j), A327858(i) = A327858(j) and A345000(i) = A345000(j) for all i, j >= 1.

The programs for A351235, there is no canonical definition to state claims against.
-/

/-! ## A351235.P15874498807413116718

`A300833(n+1)%A001462(A080558(n))`
-/

namespace A351235.P15874498807413116718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300833 (n + 1)) (A001462 (A080558 n).toNat)

end

end A351235.P15874498807413116718

/-! ## A351235.P16470691653227913096

`and(A158035(A005893(n)), A305800(n+1))`
-/

namespace A351235.P16470691653227913096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158035 (A005893 n).toNat) (A305800 (n + 1))

end

end A351235.P16470691653227913096

/-! ## A351235.P10999197418301943992

`and(A158035(A005893(n)), A317943(n+1))`
-/

namespace A351235.P10999197418301943992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158035 (A005893 n).toNat) (A317943 (n + 1))

end

end A351235.P10999197418301943992

/-!
# A351236: Lexicographically earliest infinite sequence such that a(i) = a(j) => A344025(i) = A344025(j) and A351085(i) = A351085(j) for all i, j >= 1.

The programs for A351236, there is no canonical definition to state claims against.
-/

/-! ## A351236.P7698810851554148896

`A373268(n+1)+A000007(A007318(n+1))`
-/

namespace A351236.P7698810851554148896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) + A000007 (A007318 (n + 1)).toNat

end

end A351236.P7698810851554148896

/-! ## A351236.P15151619675502207259

`C(A373268(n+1), A095141(∑[n]))`
-/

namespace A351236.P15151619675502207259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373268 (n + 1)).toNat (A095141 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351236.P15151619675502207259

/-! ## A351236.P2735910183123106121

`A373268(n+1)+A051775(A000217(n))`
-/

namespace A351236.P2735910183123106121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) + A051775 (A000217 n).toNat

end

end A351236.P2735910183123106121

/-! ## A351236.P8338264502192476078

`A373268(n+1)%A000040(A000124(n))`
-/

namespace A351236.P8338264502192476078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373268 (n + 1)) (A000040 (A000124 n).toNat)

end

end A351236.P8338264502192476078

/-! ## A351236.P8946594068079615499

`A373268(n+1)/A003989(A000217(n)+1)`
-/

namespace A351236.P8946594068079615499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373268 (n + 1) : ℚ) / (A003989 (A000217 n + 1).toNat : ℚ)

end

end A351236.P8946594068079615499

/-! ## A351236.P1735048554513556720

`A373268(A003056(∑[n+1]))`
-/

namespace A351236.P1735048554513556720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351236.P1735048554513556720

/-! ## A351236.P11123616278487624287

`A373268(n+1)+A000122(A045710(n+1))`
-/

namespace A351236.P11123616278487624287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) + A000122 (A045710 (n + 1)).toNat

end

end A351236.P11123616278487624287

/-! ## A351236.P7278086348802701497

`A373268(n+1)+A113704(A161680(n+3))`
-/

namespace A351236.P7278086348802701497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) + A113704 (A161680 (n + 3)).toNat

end

end A351236.P7278086348802701497

/-! ## A351236.P2545674378176444751

`A052409(A002049(2*(n+2)))*A373268(n+1)`
-/

namespace A351236.P2545674378176444751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A002049 (2 * (n + 2))).toNat * A373268 (n + 1)

end

end A351236.P2545674378176444751

/-! ## A351236.P18016291121742612380

`A373268(n+1)-A373264(A216315(n+1))`
-/

namespace A351236.P18016291121742612380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) - A373264 (A216315 (n + 1)).toNat

end

end A351236.P18016291121742612380

/-! ## A351236.P11812656262021785820

`A373268(n+1)-A373264(A061246(n+1))`
-/

namespace A351236.P11812656262021785820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373268 (n + 1) - A373264 (A061246 (n + 1)).toNat

end

end A351236.P11812656262021785820

/-! ## A351236.P6051732710955223835

`A083345(A061246(n+2))*A373268(n+1)`
-/

namespace A351236.P6051732710955223835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A061246 (n + 2)).toNat * A373268 (n + 1)

end

end A351236.P6051732710955223835

/-! ## A351236.P13986180143703103409

`A373268(n+1)%A254731(n)`
-/

namespace A351236.P13986180143703103409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373268 (n + 1)) (A254731 n)

end

end A351236.P13986180143703103409

/-! ## A351236.P5192700388550154590

`A004737(∏{p}[n+1, #²])*A373268(n+1)`
-/

namespace A351236.P5192700388550154590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) * A373268 (n + 1)

end

end A351236.P5192700388550154590

/-!
# A351242: a(n) = n^3 * Sum_{p|n, p prime} 1/p^3.

The programs for A351242, the canonical program `A351242.P14853341259505198668` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351242 has offset 1).

The definition of A351242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351242.P14853341259505198668

`∑{p}[n+1, ceil(n/#)^3]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351242

/-- `∑{p}[n+1, ceil(n/#)^3]` -/
def P14853341259505198668.Spec : Prop :=
  ∀ n, P14853341259505198668.a n = A351242 (n + 1)

theorem P14853341259505198668.correct : P14853341259505198668.Spec := by
  intro n
  simp only [A351242, Nat.add_sub_cancel]

end A351242

/-! ## A351242.P12438959533711527131

`floor(∑{p}[n+1, ((n+1)/#)^3])`
-/

namespace A351242.P12438959533711527131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 3⌋

end

end A351242.P12438959533711527131

namespace A351242

/-- `floor(∑{p}[n+1, ((n+1)/#)^3])` -/
def P12438959533711527131.Spec : Prop :=
  ∀ n, P12438959533711527131.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P14445217622969484698

`round(∑{p}[n+1, ((n+1)/#)^3])`
-/

namespace A351242.P14445217622969484698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 3)

end

end A351242.P14445217622969484698

namespace A351242

/-- `round(∑{p}[n+1, ((n+1)/#)^3])` -/
def P14445217622969484698.Spec : Prop :=
  ∀ n, P14445217622969484698.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P35050073101528644

`∑{d}[n+1, A001221(#)*A059376((n+1)/#)]`
-/

namespace A351242.P35050073101528644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P35050073101528644

namespace A351242

/-- `∑{d}[n+1, A001221(#)*A059376((n+1)/#)]` -/
def P35050073101528644.Spec : Prop :=
  ∀ n, P35050073101528644.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P14712207619814341305

`∑{d}[n+1, A000056(#)*A069359((n+1)/#)]`
-/

namespace A351242.P14712207619814341305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P14712207619814341305

namespace A351242

/-- `∑{d}[n+1, A000056(#)*A069359((n+1)/#)]` -/
def P14712207619814341305.Spec : Prop :=
  ∀ n, P14712207619814341305.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P3220471965907044086

`∑{d}[n+1, A001158(#)*A143519((n+1)/#)]`
-/

namespace A351242.P3220471965907044086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P3220471965907044086

namespace A351242

/-- `∑{d}[n+1, A001158(#)*A143519((n+1)/#)]` -/
def P3220471965907044086.Spec : Prop :=
  ∀ n, P3220471965907044086.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P1945501901569943779

`∑{d}[n+1, A053191(#)*A322078((n+1)/#)]`
-/

namespace A351242.P1945501901569943779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P1945501901569943779

namespace A351242

/-- `∑{d}[n+1, A053191(#)*A322078((n+1)/#)]` -/
def P1945501901569943779.Spec : Prop :=
  ∀ n, P1945501901569943779.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P16672201779876146888

`∑{d}[n+1, A065959(#)*A392285((n+1)/#)]`
-/

namespace A351242.P16672201779876146888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P16672201779876146888

namespace A351242

/-- `∑{d}[n+1, A065959(#)*A392285((n+1)/#)]` -/
def P16672201779876146888.Spec : Prop :=
  ∀ n, P16672201779876146888.a n = A351242 (n + 1)

end A351242

/-! ## A351242.P16668861473045236315

`∑{d}[n+1, A117494(#)*A350156((n+1)/#)]`
-/

namespace A351242.P16668861473045236315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351242.P16668861473045236315

namespace A351242

/-- `∑{d}[n+1, A117494(#)*A350156((n+1)/#)]` -/
def P16668861473045236315.Spec : Prop :=
  ∀ n, P16668861473045236315.a n = A351242 (n + 1)

end A351242

/-!
# A351244: a(n) = n^4 * Sum_{p|n, p prime} 1/p^4.

The programs for A351244, the canonical program `A351244.P1727268070167272414` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351244 has offset 1).

The definition of A351244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351244.P1727268070167272414

`∑{p}[n+1, ceil(n/#)^4]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351244

/-- `∑{p}[n+1, ceil(n/#)^4]` -/
def P1727268070167272414.Spec : Prop :=
  ∀ n, P1727268070167272414.a n = A351244 (n + 1)

theorem P1727268070167272414.correct : P1727268070167272414.Spec := by
  intro n
  simp only [A351244, Nat.add_sub_cancel]

end A351244

/-! ## A351244.P5055940857754325970

`floor(∑{p}[n+1, ((n+1)/#)^4])`
-/

namespace A351244.P5055940857754325970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 4⌋

end

end A351244.P5055940857754325970

namespace A351244

/-- `floor(∑{p}[n+1, ((n+1)/#)^4])` -/
def P5055940857754325970.Spec : Prop :=
  ∀ n, P5055940857754325970.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P3371630748432414440

`round(∑{p}[n+1, ((n+1)/#)^4])`
-/

namespace A351244.P3371630748432414440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 4)

end

end A351244.P3371630748432414440

namespace A351244

/-- `round(∑{p}[n+1, ((n+1)/#)^4])` -/
def P3371630748432414440.Spec : Prop :=
  ∀ n, P3371630748432414440.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P7217586656897910738

`ceil(∑{p}[n+1, ((n+1)/#)²²])`
-/

namespace A351244.P7217586656897910738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (((n + 1 : ℚ) / (p : ℚ)) ^ 2) ^ 2⌉

end

end A351244.P7217586656897910738

namespace A351244

/-- `ceil(∑{p}[n+1, ((n+1)/#)²²])` -/
def P7217586656897910738.Spec : Prop :=
  ∀ n, P7217586656897910738.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P2244422357872856998

`∑{d}[n+1, A001221(#)*A059377((n+1)/#)]`
-/

namespace A351244.P2244422357872856998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A059377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P2244422357872856998

namespace A351244

/-- `∑{d}[n+1, A001221(#)*A059377((n+1)/#)]` -/
def P2244422357872856998.Spec : Prop :=
  ∀ n, P2244422357872856998.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P12114263429716427419

`∑{d}[n+1, A001159(#)*A143519((n+1)/#)]`
-/

namespace A351244.P12114263429716427419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P12114263429716427419

namespace A351244

/-- `∑{d}[n+1, A001159(#)*A143519((n+1)/#)]` -/
def P12114263429716427419.Spec : Prop :=
  ∀ n, P12114263429716427419.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P14243003034709336938

`∑{d}[n+1, A065960(#)*A392285((n+1)/#)]`
-/

namespace A351244.P14243003034709336938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065960 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P14243003034709336938

namespace A351244

/-- `∑{d}[n+1, A065960(#)*A392285((n+1)/#)]` -/
def P14243003034709336938.Spec : Prop :=
  ∀ n, P14243003034709336938.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P15996577021014829618

`∑{d}[n+1, A117494(#)*A372952((n+1)/#)]`
-/

namespace A351244.P15996577021014829618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P15996577021014829618

namespace A351244

/-- `∑{d}[n+1, A117494(#)*A372952((n+1)/#)]` -/
def P15996577021014829618.Spec : Prop :=
  ∀ n, P15996577021014829618.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P12621583425855330400

`∑{d}[n+1, A189393(#)*A351242((n+1)/#)]`
-/

namespace A351244.P12621583425855330400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A351242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P12621583425855330400

namespace A351244

/-- `∑{d}[n+1, A189393(#)*A351242((n+1)/#)]` -/
def P12621583425855330400.Spec : Prop :=
  ∀ n, P12621583425855330400.a n = A351244 (n + 1)

end A351244

/-! ## A351244.P14779501910702807831

`∑{d}[n+1, A322078(#)*A379833((n+1)/#)]`
-/

namespace A351244.P14779501910702807831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322078 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351244.P14779501910702807831

namespace A351244

/-- `∑{d}[n+1, A322078(#)*A379833((n+1)/#)]` -/
def P14779501910702807831.Spec : Prop :=
  ∀ n, P14779501910702807831.a n = A351244 (n + 1)

end A351244

/-!
# A351245: a(n) = n^5 * Sum_{p|n, p prime} 1/p^5.

The programs for A351245, the canonical program `A351245.P16290755739757824585` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351245 has offset 1).

The definition of A351245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351245.P16290755739757824585

`∑{p}[n+1, ceil(n/#)^5]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351245

/-- `∑{p}[n+1, ceil(n/#)^5]` -/
def P16290755739757824585.Spec : Prop :=
  ∀ n, P16290755739757824585.a n = A351245 (n + 1)

theorem P16290755739757824585.correct : P16290755739757824585.Spec := by
  intro n
  simp only [A351245, Nat.add_sub_cancel]

end A351245

/-! ## A351245.P7875070428820601949

`floor(∑{p}[n+1, ((n+1)/#)^5])`
-/

namespace A351245.P7875070428820601949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 5⌋

end

end A351245.P7875070428820601949

namespace A351245

/-- `floor(∑{p}[n+1, ((n+1)/#)^5])` -/
def P7875070428820601949.Spec : Prop :=
  ∀ n, P7875070428820601949.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P9487501133251834716

`round(∑{p}[n+1, ((n+1)/#)^5])`
-/

namespace A351245.P9487501133251834716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 5)

end

end A351245.P9487501133251834716

namespace A351245

/-- `round(∑{p}[n+1, ((n+1)/#)^5])` -/
def P9487501133251834716.Spec : Prop :=
  ∀ n, P9487501133251834716.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P16676440779456129446

`∑{d}[n+1, A001221(#)*A059378((n+1)/#)]`
-/

namespace A351245.P16676440779456129446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A059378 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P16676440779456129446

namespace A351245

/-- `∑{d}[n+1, A001221(#)*A059378((n+1)/#)]` -/
def P16676440779456129446.Spec : Prop :=
  ∀ n, P16676440779456129446.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P9096740323050440528

`∑{d}[n+1, A001160(#)*A143519((n+1)/#)]`
-/

namespace A351245.P9096740323050440528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P9096740323050440528

namespace A351245

/-- `∑{d}[n+1, A001160(#)*A143519((n+1)/#)]` -/
def P9096740323050440528.Spec : Prop :=
  ∀ n, P9096740323050440528.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P1130738616139838426

`∑{d}[n+1, A115224(#)*A322078((n+1)/#)]`
-/

namespace A351245.P1130738616139838426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P1130738616139838426

namespace A351245

/-- `∑{d}[n+1, A115224(#)*A322078((n+1)/#)]` -/
def P1130738616139838426.Spec : Prop :=
  ∀ n, P1130738616139838426.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P7834370640779317170

`∑{d}[n+1, A117494(#)*A372961((n+1)/#)]`
-/

namespace A351245.P7834370640779317170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P7834370640779317170

namespace A351245

/-- `∑{d}[n+1, A117494(#)*A372961((n+1)/#)]` -/
def P7834370640779317170.Spec : Prop :=
  ∀ n, P7834370640779317170.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P301743323758430511

`∑{d}[n+1, A238533(#)*A351244((n+1)/#)]`
-/

namespace A351245.P301743323758430511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A351244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P301743323758430511

namespace A351245

/-- `∑{d}[n+1, A238533(#)*A351244((n+1)/#)]` -/
def P301743323758430511.Spec : Prop :=
  ∀ n, P301743323758430511.a n = A351245 (n + 1)

end A351245

/-! ## A351245.P12521882266760816736

`∑{d}[n+1, A351300(#)*A392285((n+1)/#)]`
-/

namespace A351245.P12521882266760816736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351300 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351245.P12521882266760816736

namespace A351245

/-- `∑{d}[n+1, A351300(#)*A392285((n+1)/#)]` -/
def P12521882266760816736.Spec : Prop :=
  ∀ n, P12521882266760816736.a n = A351245 (n + 1)

end A351245

/-!
# A351246: a(n) = n^6 * Sum_{p|n, p prime} 1/p^6.

The programs for A351246, the canonical program `A351246.P6585149693211895413` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351246 has offset 1).

The definition of A351246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351246.P3173946995390204281

`∑{p}[n+1, ((n+1)/#)^6]`
-/

namespace A351246.P3173946995390204281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 6

end

end A351246.P3173946995390204281

namespace A351246

/-- `∑{p}[n+1, ((n+1)/#)^6]` -/
def P3173946995390204281.Spec : Prop :=
  ∀ n, P3173946995390204281.a n = (A351246 (n + 1) : ℚ)

end A351246

/-! ## A351246.P10444644635314788715

`∑{d}[n+1, A001221(#)*A069091((n+1)/#)]`
-/

namespace A351246.P10444644635314788715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069091 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351246.P10444644635314788715

namespace A351246

/-- `∑{d}[n+1, A001221(#)*A069091((n+1)/#)]` -/
def P10444644635314788715.Spec : Prop :=
  ∀ n, P10444644635314788715.a n = A351246 (n + 1)

end A351246

/-! ## A351246.P10925190157120927837

`∑{d}[n+1, A013954(#)*A143519((n+1)/#)]`
-/

namespace A351246.P10925190157120927837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351246.P10925190157120927837

namespace A351246

/-- `∑{d}[n+1, A013954(#)*A143519((n+1)/#)]` -/
def P10925190157120927837.Spec : Prop :=
  ∀ n, P10925190157120927837.a n = A351246 (n + 1)

end A351246

/-! ## A351246.P17198235875767257034

`∑{d}[n+1, A117494(#)*A371878((n+1)/#)]`
-/

namespace A351246.P17198235875767257034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A371878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351246.P17198235875767257034

namespace A351246

/-- `∑{d}[n+1, A117494(#)*A371878((n+1)/#)]` -/
def P17198235875767257034.Spec : Prop :=
  ∀ n, P17198235875767257034.a n = A351246 (n + 1)

end A351246

/-! ## A351246.P6585149693211895413

`∑{d}[n+1, A306411(#)*A351245((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A351246

/-- `∑{d}[n+1, A306411(#)*A351245((n+1)/#)]` -/
def P6585149693211895413.Spec : Prop :=
  ∀ n, P6585149693211895413.a n = A351246 (n + 1)

theorem P6585149693211895413.correct : P6585149693211895413.Spec := by
  intro n
  simp only [A351246, Nat.add_sub_cancel]

end A351246

/-! ## A351246.P10800198822148787343

`∑{d}[n+1, A351301(#)*A392285((n+1)/#)]`
-/

namespace A351246.P10800198822148787343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351301 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351246.P10800198822148787343

namespace A351246

/-- `∑{d}[n+1, A351301(#)*A392285((n+1)/#)]` -/
def P10800198822148787343.Spec : Prop :=
  ∀ n, P10800198822148787343.a n = A351246 (n + 1)

end A351246

/-!
# A351247: a(n) = n^7 * Sum_{p|n, p prime} 1/p^7.

The programs for A351247, the canonical program `A351247.P9442226858346152668` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351247 has offset 1).

The definition of A351247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351247.P5233659664661607250

`∑{p}[n+1, ((n+1)/#)^7]`
-/

namespace A351247.P5233659664661607250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 7

end

end A351247.P5233659664661607250

namespace A351247

/-- `∑{p}[n+1, ((n+1)/#)^7]` -/
def P5233659664661607250.Spec : Prop :=
  ∀ n, P5233659664661607250.a n = (A351247 (n + 1) : ℚ)

end A351247

/-! ## A351247.P5255427501126252739

`∑{d}[n+1, A001221(#)*A069092((n+1)/#)]`
-/

namespace A351247.P5255427501126252739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P5255427501126252739

namespace A351247

/-- `∑{d}[n+1, A001221(#)*A069092((n+1)/#)]` -/
def P5255427501126252739.Spec : Prop :=
  ∀ n, P5255427501126252739.a n = A351247 (n + 1)

end A351247

/-! ## A351247.P12534114754050066119

`∑{d}[n+1, A013955(#)*A143519((n+1)/#)]`
-/

namespace A351247.P12534114754050066119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P12534114754050066119

namespace A351247

/-- `∑{d}[n+1, A013955(#)*A143519((n+1)/#)]` -/
def P12534114754050066119.Spec : Prop :=
  ∀ n, P12534114754050066119.a n = A351247 (n + 1)

end A351247

/-! ## A351247.P9442226858346152668

`∑{d}[n+1, A239442(#)*A351246((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351247

/-- `∑{d}[n+1, A239442(#)*A351246((n+1)/#)]` -/
def P9442226858346152668.Spec : Prop :=
  ∀ n, P9442226858346152668.a n = A351247 (n + 1)

theorem P9442226858346152668.correct : P9442226858346152668.Spec := by
  intro n
  simp only [A351247, Nat.add_sub_cancel]

end A351247

/-! ## A351247.P16976377898343022752

`∑{d}[n+1, A351302(#)*A392285((n+1)/#)]`
-/

namespace A351247.P16976377898343022752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351302 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351247.P16976377898343022752

namespace A351247

/-- `∑{d}[n+1, A351302(#)*A392285((n+1)/#)]` -/
def P16976377898343022752.Spec : Prop :=
  ∀ n, P16976377898343022752.a n = A351247 (n + 1)

end A351247

/-!
# A351248: a(n) = n^8 * Sum_{p|n, p prime} 1/p^8.

The programs for A351248, the canonical program `A351248.P522734873764076311` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351248 has offset 1).

The definition of A351248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351248.P6249244571000070490

`∑{p}[n+1, ((n+1)/#)^8]`
-/

namespace A351248.P6249244571000070490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 8

end

end A351248.P6249244571000070490

namespace A351248

/-- `∑{p}[n+1, ((n+1)/#)^8]` -/
def P6249244571000070490.Spec : Prop :=
  ∀ n, P6249244571000070490.a n = (A351248 (n + 1) : ℚ)

end A351248

/-! ## A351248.P522734873764076311

`floor(∑{p}[n+1, ((n+1)/#)²²²])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351248

/-- `floor(∑{p}[n+1, ((n+1)/#)²²²])` -/
def P522734873764076311.Spec : Prop :=
  ∀ n, P522734873764076311.a n = A351248 (n + 1)

theorem P522734873764076311.correct : P522734873764076311.Spec := by
  intro n
  simp only [A351248, Nat.add_sub_cancel]

end A351248

/-! ## A351248.P13148374482875530257

`ceil(∑{p}[n+1, ((n+1)/#)²²²])`
-/

namespace A351248.P13148374482875530257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), ((((n + 1 : ℚ) / (p : ℚ)) ^ 2) ^ 2) ^ 2⌉

end

end A351248.P13148374482875530257

namespace A351248

/-- `ceil(∑{p}[n+1, ((n+1)/#)²²²])` -/
def P13148374482875530257.Spec : Prop :=
  ∀ n, P13148374482875530257.a n = A351248 (n + 1)

end A351248

/-! ## A351248.P16354571812425425839

`∑{d}[n+1, A001221(#)*A069093((n+1)/#)]`
-/

namespace A351248.P16354571812425425839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351248.P16354571812425425839

namespace A351248

/-- `∑{d}[n+1, A001221(#)*A069093((n+1)/#)]` -/
def P16354571812425425839.Spec : Prop :=
  ∀ n, P16354571812425425839.a n = A351248 (n + 1)

end A351248

/-! ## A351248.P14514191978983005065

`∑{d}[n+1, A013956(#)*A143519((n+1)/#)]`
-/

namespace A351248.P14514191978983005065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351248.P14514191978983005065

namespace A351248

/-- `∑{d}[n+1, A013956(#)*A143519((n+1)/#)]` -/
def P14514191978983005065.Spec : Prop :=
  ∀ n, P14514191978983005065.a n = A351248 (n + 1)

end A351248

/-! ## A351248.P17827109119318415405

`∑{d}[n+1, A351303(#)*A392285((n+1)/#)]`
-/

namespace A351248.P17827109119318415405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351303 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351248.P17827109119318415405

namespace A351248

/-- `∑{d}[n+1, A351303(#)*A392285((n+1)/#)]` -/
def P17827109119318415405.Spec : Prop :=
  ∀ n, P17827109119318415405.a n = A351248 (n + 1)

end A351248

/-!
# A351249: a(n) = n^9 * Sum_{p|n, p prime} 1/p^9.

The programs for A351249, the canonical program `A351249.P17573828479424842793` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351249 has offset 1).

The definition of A351249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351249.P9710898369110780513

`∑{p}[n+1, ((n+1)/#)^9]`
-/

namespace A351249.P9710898369110780513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 9

end

end A351249.P9710898369110780513

namespace A351249

/-- `∑{p}[n+1, ((n+1)/#)^9]` -/
def P9710898369110780513.Spec : Prop :=
  ∀ n, P9710898369110780513.a n = (A351249 (n + 1) : ℚ)

end A351249

/-! ## A351249.P7409648265893309596

`∑{d}[n+1, A001221(#)*A069094((n+1)/#)]`
-/

namespace A351249.P7409648265893309596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351249.P7409648265893309596

namespace A351249

/-- `∑{d}[n+1, A001221(#)*A069094((n+1)/#)]` -/
def P7409648265893309596.Spec : Prop :=
  ∀ n, P7409648265893309596.a n = A351249 (n + 1)

end A351249

/-! ## A351249.P17573828479424842793

`∑{d}[n+1, A013957(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351249

/-- `∑{d}[n+1, A013957(#)*A143519((n+1)/#)]` -/
def P17573828479424842793.Spec : Prop :=
  ∀ n, P17573828479424842793.a n = A351249 (n + 1)

theorem P17573828479424842793.correct : P17573828479424842793.Spec := by
  intro n
  simp only [A351249, Nat.add_sub_cancel]

end A351249

/-! ## A351249.P2455996048825126648

`∑{d}[n+1, A351304(#)*A392285((n+1)/#)]`
-/

namespace A351249.P2455996048825126648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351304 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351249.P2455996048825126648

namespace A351249

/-- `∑{d}[n+1, A351304(#)*A392285((n+1)/#)]` -/
def P2455996048825126648.Spec : Prop :=
  ∀ n, P2455996048825126648.a n = A351249 (n + 1)

end A351249

/-!
# A351250: Numerator of n / A276086(n).

The programs for A351250, there is no canonical definition to state claims against.
-/

/-! ## A351250.P14198797930315912341

`n/A324198(n)`
-/

namespace A351250.P14198797930315912341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A324198 n : ℚ)

end

end A351250.P14198797930315912341

/-! ## A351250.P9218951893814692416

`n/gcd(n, A276086(n))`
-/

namespace A351250.P9218951893814692416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (n : ℤ) (A276086 n) : ℚ)

end

end A351250.P9218951893814692416

/-! ## A351250.P13101634881171832680

`A328584(n)/A276086(n)`
-/

namespace A351250.P13101634881171832680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328584 n : ℚ) / (A276086 n : ℚ)

end

end A351250.P13101634881171832680

/-! ## A351250.P15798648682373283326

`n/A276086(A351254(n))`
-/

namespace A351250.P15798648682373283326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A276086 (A351254 n).toNat : ℚ)

end

end A351250.P15798648682373283326

/-! ## A351250.P14019265630278917050

`n/A276086(n-A351253(n))`
-/

namespace A351250.P14019265630278917050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A276086 ((n : ℤ) - A351253 n).toNat : ℚ)

end

end A351250.P14019265630278917050

/-! ## A351250.P14992285070751167151

`n/A276086(n)*A351251(n)`
-/

namespace A351250.P14992285070751167151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A276086 n : ℚ) * (A351251 n : ℚ)

end

end A351250.P14992285070751167151

/-! ## A351250.P7352992588928660701

`n/gcd(A005843(n), A324895(n))`
-/

namespace A351250.P7352992588928660701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A005843 n) (A324895 n) : ℚ)

end

end A351250.P7352992588928660701

/-! ## A351250.P6517867564552642206

`n/gcd(A004277(n), A351225(n))`
-/

namespace A351250.P6517867564552642206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd (A004277 n) (A351225 n) : ℚ)

end

end A351250.P6517867564552642206

/-! ## A351250.P12548170447650612000

`A328584(n)/(A328844(n)+A328843(n))`
-/

namespace A351250.P12548170447650612000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328584 n : ℚ) / (A328844 n + A328843 n : ℚ)

end

end A351250.P12548170447650612000

/-! ## A351250.P15257428256077250791

`n/A276086(n)*A276086(A351253(n))`
-/

namespace A351250.P15257428256077250791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A276086 n : ℚ) * (A276086 (A351253 n).toNat : ℚ)

end

end A351250.P15257428256077250791

/-! ## A351250.P16541748115628333476

`A328584(n)/A328627(A328625(n))`
-/

namespace A351250.P16541748115628333476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328584 n : ℚ) / (A328627 (A328625 n).toNat : ℚ)

end

end A351250.P16541748115628333476

/-! ## A351250.P16395318862279684395

`A328584(n)/A328624(A328626(n))`
-/

namespace A351250.P16395318862279684395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328584 n : ℚ) / (A328624 (A328626 n).toNat : ℚ)

end

end A351250.P16395318862279684395

/-!
# A351251: Denominator of n / A276086(n).

The programs for A351251, there is no canonical definition to state claims against.
-/

/-! ## A351251.P4370521775507455181

`A276086(A351253(n))`
-/

namespace A351251.P4370521775507455181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351253 n).toNat

end

end A351251.P4370521775507455181

/-! ## A351251.P15802282679971771165

`A276086(n)/A324198(n)`
-/

namespace A351251.P15802282679971771165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A324198 n : ℚ)

end

end A351251.P15802282679971771165

/-! ## A351251.P13515185332569537797

`A276086(n-A351254(n))`
-/

namespace A351251.P13515185332569537797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A351254 n).toNat

end

end A351251.P13515185332569537797

/-! ## A351251.P17758937369084251564

`A276086(n)/A276086(A351254(n))`
-/

namespace A351251.P17758937369084251564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A351254 n).toNat : ℚ)

end

end A351251.P17758937369084251564

/-! ## A351251.P15179920871388870577

`A327858(n)/A324198(n)*A351231(n)`
-/

namespace A351251.P15179920871388870577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327858 n : ℚ) / (A324198 n : ℚ) * (A351231 n : ℚ)

end

end A351251.P15179920871388870577

/-! ## A351251.P3408308780123877761

`A276086(n)/gcd(A022998(n), A276086(n))`
-/

namespace A351251.P3408308780123877761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (Int.gcd (A022998 n) (A276086 n) : ℚ)

end

end A351251.P3408308780123877761

/-! ## A351251.P13788938188855657058

`A276086(n-A276085(A324198(n)))`
-/

namespace A351251.P13788938188855657058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A276085 (A324198 n).toNat).toNat

end

end A351251.P13788938188855657058

/-!
# A351252: a(n) = sigma(n) * A276086(n), pointwise product of the sum of divisors function and the primorial base exp-function.

The programs for A351252, there is no canonical definition to state claims against.
-/

/-! ## A351252.P11121721031820148625

`∑{d}[n+1, 1/#]*A324580(n+1)`
-/

namespace A351252.P11121721031820148625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)) * (A324580 (n + 1) : ℚ)

end

end A351252.P11121721031820148625

/-! ## A351252.P9298827679705371572

`(A351225(n+1)+n+1)*∑{d}[n+1, #]`
-/

namespace A351252.P9298827679705371572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351225 (n + 1) + (n : ℤ) + 1) * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A351252.P9298827679705371572

/-! ## A351252.P1181597637923623729

`A324580(n+1)/(n+1)*A000203(n+1)`
-/

namespace A351252.P1181597637923623729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324580 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000203 (n + 1) : ℚ)

end

end A351252.P1181597637923623729

/-! ## A351252.P7318913110091563406

`A000203(n+1)*A324644(n+1)*A369446(n+1)`
-/

namespace A351252.P7318913110091563406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A324644 (n + 1) * A369446 (n + 1)

end

end A351252.P7318913110091563406

/-! ## A351252.P16913121718668013034

`A000203(n+1)/A379493(n+1)*A388282(n+1)`
-/

namespace A351252.P16913121718668013034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A379493 (n + 1) : ℚ) * (A388282 (n + 1) : ℚ)

end

end A351252.P16913121718668013034

/-! ## A351252.P13347317526119186527

`∑{d}[n+1, #*A276086(n+1)]`
-/

namespace A351252.P13347317526119186527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A276086 (n + 1)

end

end A351252.P13347317526119186527

/-! ## A351252.P5309498714856039154

`Δ[A160664(n)]*A276086(n+1)`
-/

namespace A351252.P5309498714856039154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A276086 (n + 1)

end

end A351252.P5309498714856039154

/-! ## A351252.P8473676555862948568

`A000203(n+1)*A276086(n+1)`
-/

namespace A351252.P8473676555862948568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A276086 (n + 1)

end

end A351252.P8473676555862948568

/-! ## A351252.P496600956685928099

`abs(Δ[A330725(n)])*A276086(n+1)`
-/

namespace A351252.P496600956685928099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A276086 (n + 1)

end

end A351252.P496600956685928099

/-! ## A351252.P11422070414887370010

`A245092(Δ[n²])*A276086(n+1)`
-/

namespace A351252.P11422070414887370010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A276086 (n + 1)

end

end A351252.P11422070414887370010

/-! ## A351252.P914450729735848447

`abs(A143348(n+1))*A276086(n+1)`
-/

namespace A351252.P914450729735848447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| * A276086 (n + 1)

end

end A351252.P914450729735848447

/-! ## A351252.P18115633221228477292

`A276086(n+1)*A324644(n+1)*A369445(n+1)`
-/

namespace A351252.P18115633221228477292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A324644 (n + 1) * A369445 (n + 1)

end

end A351252.P18115633221228477292

/-!
# A351253: a(n) = A276085(A351251(n)).

The programs for A351253, there is no canonical definition to state claims against.
-/

/-! ## A351253.P17457977430019027342

`n-A351254(n)`
-/

namespace A351253.P17457977430019027342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351254 n

end

end A351253.P17457977430019027342

/-! ## A351253.P222456633979479317

`abs(A351254(n)+A001489(n))`
-/

namespace A351253.P222456633979479317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351254 n + A001489 n|

end

end A351253.P222456633979479317

/-! ## A351253.P8887318674410241996

`A289234(A289234(n))+A001489(A351254(n))`
-/

namespace A351253.P8887318674410241996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A289234 n).toNat + A001489 (A351254 n).toNat

end

end A351253.P8887318674410241996

/-! ## A351253.P3403471932129354906

`n-A276085(A324198(n))`
-/

namespace A351253.P3403471932129354906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (A324198 n).toNat

end

end A351253.P3403471932129354906

/-! ## A351253.P14695905573363199882

`n-A276085(gcd(n, A276086(n)))`
-/

namespace A351253.P14695905573363199882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (Int.gcd (n : ℤ) (A276086 n))

end

end A351253.P14695905573363199882

/-! ## A351253.P1782613993467066061

`n-A276085(A276086(n)/A351251(n))`
-/

namespace A351253.P1782613993467066061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A351251 n : ℚ))).toNat

end

end A351253.P1782613993467066061

/-! ## A351253.P15631870075074679457

`n-A276085(gcd(A005843(n), A324895(n)))`
-/

namespace A351253.P15631870075074679457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276085 (Int.gcd (A005843 n) (A324895 n))

end

end A351253.P15631870075074679457

/-! ## A351253.P5375698608237017261

`A372576(A351251(n))`
-/

namespace A351253.P5375698608237017261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A351251 n).toNat

end

end A351253.P5375698608237017261

/-!
# A351254: a(n) = A276085(gcd(n, A276086(n))).

The programs for A351254, there is no canonical definition to state claims against.
-/

/-! ## A351254.P77888451721937285

`n-A351253(n)`
-/

namespace A351254.P77888451721937285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351253 n

end

end A351254.P77888451721937285

/-! ## A351254.P10673059123630337280

`A276085(A324198(n))`
-/

namespace A351254.P10673059123630337280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A324198 n).toNat

end

end A351254.P10673059123630337280

/-! ## A351254.P11131871396321163023

`A276085(gcd(n, A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351254.P11131871396321163023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (n : ℤ) (A276086 n))

end

end A351254.P11131871396321163023

/-! ## A351254.P4051651437587414677

`abs(A351253(n)+A001489(n))`
-/

namespace A351254.P4051651437587414677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351253 n + A001489 n|

end

end A351254.P4051651437587414677

/-! ## A351254.P820419852332808484

`A276085(A276086(n)/A351251(n))`
-/

namespace A351254.P820419852332808484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A351251 n : ℚ))).toNat

end

end A351254.P820419852332808484

/-! ## A351254.P17454825045276629053

`A276085(gcd(A005843(n), A324895(n)))`
-/

namespace A351254.P17454825045276629053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A005843 n) (A324895 n))

end

end A351254.P17454825045276629053

/-! ## A351254.P7521273837936256332

`A276085(A373361(A276086(n)))`
-/

namespace A351254.P7521273837936256332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A373361 (A276086 n).toNat).toNat

end

end A351254.P7521273837936256332

/-! ## A351254.P2770248906204251171

`n-A372576(A351251(n))`
-/

namespace A351254.P2770248906204251171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A372576 (A351251 n).toNat

end

end A351254.P2770248906204251171

/-!
# A351255: Numbers whose k-th arithmetic derivative is zero for some k>0, ordered by their position in A276086.

The programs for A351255, there is no canonical definition to state claims against.
-/

/-! ## A351255.P2322910347276603989

`A276086(A328116(n+1))`
-/

namespace A351255.P2322910347276603989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328116 (n + 1)).toNat

end

end A351255.P2322910347276603989

/-! ## A351255.P5417286180577606726

`A276086(eq[1, A328306(n)])`
-/

namespace A351255.P5417286180577606726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351255.P5417286180577606726

/-! ## A351255.P12553275398320428800

`filter[A276086(n), A328308(#)]`
-/

namespace A351255.P12553275398320428800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A351255.P12553275398320428800

/-! ## A351255.P15130828340136236160

`filter[A101942(n), A328308(#)]`
-/

namespace A351255.P15130828340136236160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328308 (f1 j).toNat = 1) n)

end

end A351255.P15130828340136236160

/-! ## A351255.P11536045443187732758

`A276086(lt[A241319(n), A047726(n+1)])`
-/

namespace A351255.P11536045443187732758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A351255.P11536045443187732758

/-!
# A351256: Maximal exponent in the prime factorization of A351255(n).

The programs for A351256, there is no canonical definition to state claims against.
-/

/-! ## A351256.P1430643684315736494

`A328114(A328116(n+1))`
-/

namespace A351256.P1430643684315736494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328116 (n + 1)).toNat

end

end A351256.P1430643684315736494

/-! ## A351256.P4416294300705950956

`A351257(n+1)-A351258(n+1)`
-/

namespace A351256.P4416294300705950956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1) - A351258 (n + 1)

end

end A351256.P4416294300705950956

/-! ## A351256.P17748109620120012890

`A328114(lt[0, A328306(n)])`
-/

namespace A351256.P17748109620120012890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A351256.P17748109620120012890

/-! ## A351256.P17304319726124704810

`A328114(eq[1, A328306(n)])`
-/

namespace A351256.P17304319726124704810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351256.P17304319726124704810

/-! ## A351256.P1916564494943876956

`A328114(record[n*A328306(n)])`
-/

namespace A351256.P1916564494943876956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351256.P1916564494943876956

/-!
# A351257: Least k such that the k-th arithmetic derivative of A351255(n) is zero.

The programs for A351257, there is no canonical definition to state claims against.
-/

/-! ## A351257.P13629714468522135711

`A351258(n+1)+A351256(n+1)`
-/

namespace A351257.P13629714468522135711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351258 (n + 1) + A351256 (n + 1)

end

end A351257.P13629714468522135711

/-! ## A351257.P878735498359631403

`A351258(n+1)+A328114(A328116(n+1))`
-/

namespace A351257.P878735498359631403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351258 (n + 1) + A328114 (A328116 (n + 1)).toNat

end

end A351257.P878735498359631403

/-! ## A351257.P7265008825672636970

`A351258(n+1)+A328114(eq[1, A328306(n)])`
-/

namespace A351257.P7265008825672636970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351258 (n + 1) + A328114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351257.P7265008825672636970

/-! ## A351257.P10022852260007274814

`A351258(n+1)+A328114(record[n*A328306(n)])`
-/

namespace A351257.P10022852260007274814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351258 (n + 1) + A328114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351257.P10022852260007274814

/-! ## A351257.P3555199908295859134

`A327966(A351255(n+1)%A001248(2*n+1))`
-/

namespace A351257.P3555199908295859134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (Int.tmod (A351255 (n + 1)) (A001248 (2 * n + 1))).toNat

end

end A351257.P3555199908295859134

/-!
# A351258: a(n) = A099307(A351255(n)) - A051903(A351255(n)).

The programs for A351258, there is no canonical definition to state claims against.
-/

/-! ## A351258.P112453008339334188

`A351257(n+1)-A351256(n+1)`
-/

namespace A351258.P112453008339334188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1) - A351256 (n + 1)

end

end A351258.P112453008339334188

/-! ## A351258.P9526373429533535426

`A351257(n+1)-A328114(A328116(n+1))`
-/

namespace A351258.P9526373429533535426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1) - A328114 (A328116 (n + 1)).toNat

end

end A351258.P9526373429533535426

/-! ## A351258.P948490446428483419

`A351257(n+1)-A328114(record[n*A328306(n)])`
-/

namespace A351258.P948490446428483419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1) - A328114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351258.P948490446428483419

/-! ## A351258.P12235321725771890278

`A351257(n+1)-A051903(A351255(n+1))`
-/

namespace A351258.P12235321725771890278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351257 (n + 1) - A051903 (A351255 (n + 1)).toNat

end

end A351258.P12235321725771890278

/-! ## A351258.P14353623753910197779

`A256750(A351255(n+1))-A351256(n+1)`
-/

namespace A351258.P14353623753910197779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A351255 (n + 1)).toNat - A351256 (n + 1)

end

end A351258.P14353623753910197779

/-!
# A351259: First noncomposite number reached when iterating the map x -> x', when starting from x = A351255(n). Here x' is the arithmetic derivative of x, A003415.

The programs for A351259, there is no canonical definition to state claims against.
-/

/-! ## A351259.P3278515654107037009

`A351078(A351255(n+1))`
-/

namespace A351259.P3278515654107037009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A351255 (n + 1)).toNat

end

end A351259.P3278515654107037009

/-! ## A351259.P14315295943759492928

`A351078(A276086(A328116(n+1)))`
-/

namespace A351259.P14315295943759492928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A276086 (A328116 (n + 1)).toNat).toNat

end

end A351259.P14315295943759492928

/-! ## A351259.P11784942692198504909

`A351078(A351261(n+1))`
-/

namespace A351259.P11784942692198504909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A351261 (n + 1)).toNat

end

end A351259.P11784942692198504909

/-! ## A351259.P2722447442336281837

`A269400(A141310(n)+3^n)`
-/

namespace A351259.P2722447442336281837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269400 (A141310 n + (3 ^ n : ℤ)).toNat

end

end A351259.P2722447442336281837

/-! ## A351259.P8846115703114947034

`A006530(A353764(∑[2*n]+1))`
-/

namespace A351259.P8846115703114947034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A353764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A351259.P8846115703114947034

/-!
# A351261: a(n) is the largest term encountered on the path to 0 when iterating the map x -> x', and starting from x = A351255(n). Here x' means the arithmetic derivative of x, A003415.

The programs for A351261, there is no canonical definition to state claims against.
-/

/-! ## A351261.P1367530414185929918

`A351079(A351255(n+1))`
-/

namespace A351261.P1367530414185929918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351079 (A351255 (n + 1)).toNat

end

end A351261.P1367530414185929918

/-!
# A351262: a(n) = n^10 * Sum_{p|n, p prime} 1/p^10.

The programs for A351262, the canonical program `A351262.P4449826971361662987` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351262 has offset 1).

The definition of A351262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351262.P2132742506488499875

`∑{p}[n+1, ((n+1)/#)^10]`
-/

namespace A351262.P2132742506488499875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 10

end

end A351262.P2132742506488499875

namespace A351262

/-- `∑{p}[n+1, ((n+1)/#)^10]` -/
def P2132742506488499875.Spec : Prop :=
  ∀ n, P2132742506488499875.a n = (A351262 (n + 1) : ℚ)

end A351262

/-! ## A351262.P14543941481096669356

`∑{d}[n+1, A001221(#)*A069095((n+1)/#)]`
-/

namespace A351262.P14543941481096669356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351262.P14543941481096669356

namespace A351262

/-- `∑{d}[n+1, A001221(#)*A069095((n+1)/#)]` -/
def P14543941481096669356.Spec : Prop :=
  ∀ n, P14543941481096669356.a n = A351262 (n + 1)

end A351262

/-! ## A351262.P4449826971361662987

`∑{d}[n+1, A013958(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351262

/-- `∑{d}[n+1, A013958(#)*A143519((n+1)/#)]` -/
def P4449826971361662987.Spec : Prop :=
  ∀ n, P4449826971361662987.a n = A351262 (n + 1)

theorem P4449826971361662987.correct : P4449826971361662987.Spec := by
  intro n
  simp only [A351262, Nat.add_sub_cancel]

end A351262

/-! ## A351262.P9110489695098327013

`∑{d}[n+1, A351305(#)*A392285((n+1)/#)]`
-/

namespace A351262.P9110489695098327013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351305 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351262.P9110489695098327013

namespace A351262

/-- `∑{d}[n+1, A351305(#)*A392285((n+1)/#)]` -/
def P9110489695098327013.Spec : Prop :=
  ∀ n, P9110489695098327013.a n = A351262 (n + 1)

end A351262

/-!
# A351263: Triangle read by rows: T(n,k) is the number of oriented graphs on n labeled nodes whose underlying graph is k-regular, k = 0..n-1.

The programs for A351263, there is no canonical definition to state claims against.
-/

/-! ## A351263.P12116906700233105678

`and((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!), A276378(C(n, floor(n/2))²))`
-/

namespace A351263.P12116906700233105678
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

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ))) (A276378 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2))

end

end A351263.P12116906700233105678

/-! ## A351263.P11195060925579852267

`and(A290753(ceil((10/3)^n/3)), A319511(n))`
-/

namespace A351263.P11195060925579852267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290753 ⌈((10 : ℚ) / 3) ^ n / 3⌉.toNat) (A319511 n)

end

end A351263.P11195060925579852267

/-! ## A351263.P5422317942031713311

`A025581(A148858(n)/A193592(n))`
-/

namespace A351263.P5422317942031713311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A148858 n : ℚ) / (A193592 n : ℚ))).toNat

end

end A351263.P5422317942031713311

/-! ## A351263.P11070759233719536281

`and(A018800(A088218(n)), A113025(n))`
-/

namespace A351263.P11070759233719536281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018800 (A088218 n).toNat) (A113025 n)

end

end A351263.P11070759233719536281

/-! ## A351263.P9366734482973966435

`and(A113025(n), A123578(A001790(n)))`
-/

namespace A351263.P9366734482973966435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113025 n) (A123578 (A001790 n).toNat)

end

end A351263.P9366734482973966435

/-!
# A351264: Number of oriented graphs on n labeled nodes whose underlying graph is regular.

The programs for A351264, there is no canonical definition to state claims against.
-/

/-! ## A351264.P1924101081817564548

`xor(A026300(n+1), A364536(2*n²-n))`
-/

namespace A351264.P1924101081817564548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026300 (n + 1)) (A364536 (2 * n ^ 2 - n))

end

end A351264.P1924101081817564548

/-! ## A351264.P2019285744770427467

`A006257(A311936(xor(1, 3*a(n-1)--n%3)))` with `a(0)=1, a(1)=1`
-/

namespace A351264.P2019285744770427467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006257 (A311936 (Int.xor 1 (3 * a (n - 1) - Int.tmod (-(n : ℤ)) 3)).toNat).toNat

end

end A351264.P2019285744770427467

/-!
# A351265: Sum of the squares of the squarefree divisors of n.

The programs for A351265, the canonical program `A351265.P14147045059802980430` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351265 has offset 1).

The definition of A351265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351265.P14147045059802980430

`abs(A328639(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A351265

/-- `abs(A328639(n+1))` -/
def P14147045059802980430.Spec : Prop :=
  ∀ n, P14147045059802980430.a n = A351265 (n + 1)

theorem P14147045059802980430.correct : P14147045059802980430.Spec := by
  intro n
  simp only [A351265, Nat.add_sub_cancel]

end A351265

/-! ## A351265.P3865445808628508105

`∏{p}[n+1, #²+1]`
-/

namespace A351265.P3865445808628508105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 + 1)

end

end A351265.P3865445808628508105

namespace A351265

/-- `∏{p}[n+1, #²+1]` -/
def P3865445808628508105.Spec : Prop :=
  ∀ n, (P3865445808628508105.a n : ℤ) = A351265 (n + 1)

end A351265

/-! ## A351265.P4230097113644902543

`∑{d}[∏{p}[2*n-(n-1), #], #²]`
-/

namespace A351265.P4230097113644902543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A351265.P4230097113644902543

namespace A351265

/-- `∑{d}[∏{p}[2*n-(n-1), #], #²]` -/
def P4230097113644902543.Spec : Prop :=
  ∀ n, (P4230097113644902543.a n : ℤ) = A351265 (n + 1)

end A351265

/-! ## A351265.P9713464642557821576

`A001157(∏{p}[n+1, #])`
-/

namespace A351265.P9713464642557821576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P9713464642557821576

namespace A351265

/-- `A001157(∏{p}[n+1, #])` -/
def P9713464642557821576.Spec : Prop :=
  ∀ n, P9713464642557821576.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P1788091754830836290

`A034676(∏{p}[n+1, #])`
-/

namespace A351265.P1788091754830836290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P1788091754830836290

namespace A351265

/-- `A034676(∏{p}[n+1, #])` -/
def P1788091754830836290.Spec : Prop :=
  ∀ n, P1788091754830836290.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P15559111620582666978

`A065958(∏{p}[n+1, #])`
-/

namespace A351265.P15559111620582666978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P15559111620582666978

namespace A351265

/-- `A065958(∏{p}[n+1, #])` -/
def P15559111620582666978.Spec : Prop :=
  ∀ n, P15559111620582666978.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P14598652380613865254

`A076598(∏{p}[n+1, #])`
-/

namespace A351265.P14598652380613865254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076598 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P14598652380613865254

namespace A351265

/-- `A076598(∏{p}[n+1, #])` -/
def P14598652380613865254.Spec : Prop :=
  ∀ n, P14598652380613865254.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P535095459307053567

`A091306(∏{p}[n+1, #])`
-/

namespace A351265.P535095459307053567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091306 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P535095459307053567

namespace A351265

/-- `A091306(∏{p}[n+1, #])` -/
def P535095459307053567.Spec : Prop :=
  ∀ n, P535095459307053567.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P9576046321105020698

`A198286(∏{p}[n+1, #])`
-/

namespace A351265.P9576046321105020698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198286 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P9576046321105020698

namespace A351265

/-- `A198286(∏{p}[n+1, #])` -/
def P9576046321105020698.Spec : Prop :=
  ∀ n, P9576046321105020698.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P11993707972591084330

`A289320(∏{p}[n+1, #])`
-/

namespace A351265.P11993707972591084330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289320 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P11993707972591084330

namespace A351265

/-- `A289320(∏{p}[n+1, #])` -/
def P11993707972591084330.Spec : Prop :=
  ∀ n, P11993707972591084330.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P3527383400175278687

`A328667(∏{p}[n+1, #])`
-/

namespace A351265.P3527383400175278687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328667 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P3527383400175278687

namespace A351265

/-- `A328667(∏{p}[n+1, #])` -/
def P3527383400175278687.Spec : Prop :=
  ∀ n, P3527383400175278687.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P14776355520999626278

`A374539(∏{p}[n+1, #])`
-/

namespace A351265.P14776355520999626278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374539 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351265.P14776355520999626278

namespace A351265

/-- `A374539(∏{p}[n+1, #])` -/
def P14776355520999626278.Spec : Prop :=
  ∀ n, P14776355520999626278.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P18338342810813496251

`∑{d}[A007947(n+1), #²]`
-/

namespace A351265.P18338342810813496251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A351265.P18338342810813496251

namespace A351265

/-- `∑{d}[A007947(n+1), #²]` -/
def P18338342810813496251.Spec : Prop :=
  ∀ n, (P18338342810813496251.a n : ℤ) = A351265 (n + 1)

end A351265

/-! ## A351265.P13986854026600465873

`∑{d}[A062953(n+1), #²]`
-/

namespace A351265.P13986854026600465873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A351265.P13986854026600465873

namespace A351265

/-- `∑{d}[A062953(n+1), #²]` -/
def P13986854026600465873.Spec : Prop :=
  ∀ n, (P13986854026600465873.a n : ℤ) = A351265 (n + 1)

end A351265

/-! ## A351265.P10005784168195981299

`∑{d}[sqrt(A078615(n+1)), #²]`
-/

namespace A351265.P10005784168195981299
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A351265.P10005784168195981299

namespace A351265

/-- `∑{d}[sqrt(A078615(n+1)), #²]` -/
def P10005784168195981299.Spec : Prop :=
  ∀ n, (P10005784168195981299.a n : ℤ) = A351265 (n + 1)

end A351265

/-! ## A351265.P17657915608050243006

`∑{d}[n+1, (#*A008683(#))²]`
-/

namespace A351265.P17657915608050243006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A008683 d) ^ 2

end

end A351265.P17657915608050243006

namespace A351265

/-- `∑{d}[n+1, (#*A008683(#))²]` -/
def P17657915608050243006.Spec : Prop :=
  ∀ n, P17657915608050243006.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P835871433923221040

`A001157(A007947(n+1))`
-/

namespace A351265.P835871433923221040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A007947 (n + 1)).toNat

end

end A351265.P835871433923221040

namespace A351265

/-- `A001157(A007947(n+1))` -/
def P835871433923221040.Spec : Prop :=
  ∀ n, P835871433923221040.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P6758863781624266099

`A365479(A007948(n+1))`
-/

namespace A351265.P6758863781624266099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A007948 (n + 1)).toNat

end

end A351265.P6758863781624266099

namespace A351265

/-- `A365479(A007948(n+1))` -/
def P6758863781624266099.Spec : Prop :=
  ∀ n, P6758863781624266099.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P6561067058408020256

`A365479(A066990(n+1))`
-/

namespace A351265.P6561067058408020256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A066990 (n + 1)).toNat

end

end A351265.P6561067058408020256

namespace A351265

/-- `A365479(A066990(n+1))` -/
def P6561067058408020256.Spec : Prop :=
  ∀ n, P6561067058408020256.a n = A351265 (n + 1)

end A351265

/-! ## A351265.P5094276003561686053

`gcd(A000038(n), A328639(n+1))`
-/

namespace A351265.P5094276003561686053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328639 (n + 1))

end

end A351265.P5094276003561686053

namespace A351265

/-- `gcd(A000038(n), A328639(n+1))` -/
def P5094276003561686053.Spec : Prop :=
  ∀ n, (P5094276003561686053.a n : ℤ) = A351265 (n + 1)

end A351265

/-!
# A351266: Sum of the cubes of the squarefree divisors of n.

The programs for A351266, the canonical program `A351266.P8932586286856207349` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351266 has offset 1).

The definition of A351266 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328640, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351266.P8932586286856207349

`abs(A328640(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A351266

/-- `abs(A328640(n+1))` -/
def P8932586286856207349.Spec : Prop :=
  ∀ n, P8932586286856207349.a n = A351266 (n + 1)

theorem P8932586286856207349.correct : P8932586286856207349.Spec := by
  intro n
  simp only [A351266, Nat.add_sub_cancel]

end A351266

/-! ## A351266.P9169436608518546655

`∏{p}[n+1, #^3+1]`
-/

namespace A351266.P9169436608518546655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ 3 + 1)

end

end A351266.P9169436608518546655

namespace A351266

/-- `∏{p}[n+1, #^3+1]` -/
def P9169436608518546655.Spec : Prop :=
  ∀ n, (P9169436608518546655.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P5295117347325532548

`∑{d}[∏{p}[n+1, #], #*#²]`
-/

namespace A351266.P5295117347325532548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * d ^ 2

end

end A351266.P5295117347325532548

namespace A351266

/-- `∑{d}[∏{p}[n+1, #], #*#²]` -/
def P5295117347325532548.Spec : Prop :=
  ∀ n, (P5295117347325532548.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P14973301025747779370

`A001158(∏{p}[n+1, #])`
-/

namespace A351266.P14973301025747779370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P14973301025747779370

namespace A351266

/-- `A001158(∏{p}[n+1, #])` -/
def P14973301025747779370.Spec : Prop :=
  ∀ n, P14973301025747779370.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P12692855803379673301

`A034677(∏{p}[n+1, #])`
-/

namespace A351266.P12692855803379673301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P12692855803379673301

namespace A351266

/-- `A034677(∏{p}[n+1, #])` -/
def P12692855803379673301.Spec : Prop :=
  ∀ n, P12692855803379673301.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P5953299330312979463

`A065959(∏{p}[n+1, #])`
-/

namespace A351266.P5953299330312979463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065959 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P5953299330312979463

namespace A351266

/-- `A065959(∏{p}[n+1, #])` -/
def P5953299330312979463.Spec : Prop :=
  ∀ n, P5953299330312979463.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P13734733177330587043

`A369721(∏{p}[n+1, #])`
-/

namespace A351266.P13734733177330587043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P13734733177330587043

namespace A351266

/-- `A369721(∏{p}[n+1, #])` -/
def P13734733177330587043.Spec : Prop :=
  ∀ n, P13734733177330587043.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P16261493128968029335

`A369759(∏{p}[n+1, #])`
-/

namespace A351266.P16261493128968029335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369759 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P16261493128968029335

namespace A351266

/-- `A369759(∏{p}[n+1, #])` -/
def P16261493128968029335.Spec : Prop :=
  ∀ n, P16261493128968029335.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P11968959212534619514

`A390665(∏{p}[n+1, #])`
-/

namespace A351266.P11968959212534619514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390665 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351266.P11968959212534619514

namespace A351266

/-- `A390665(∏{p}[n+1, #])` -/
def P11968959212534619514.Spec : Prop :=
  ∀ n, P11968959212534619514.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P3098787883712887125

`∑{d}[A007947(n+1), #*#²]`
-/

namespace A351266.P3098787883712887125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * d ^ 2

end

end A351266.P3098787883712887125

namespace A351266

/-- `∑{d}[A007947(n+1), #*#²]` -/
def P3098787883712887125.Spec : Prop :=
  ∀ n, (P3098787883712887125.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P10615336093223281825

`∑{d}[A062953(n+1), #*#²]`
-/

namespace A351266.P10615336093223281825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * d ^ 2

end

end A351266.P10615336093223281825

namespace A351266

/-- `∑{d}[A062953(n+1), #*#²]` -/
def P10615336093223281825.Spec : Prop :=
  ∀ n, (P10615336093223281825.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P972491924768266833

`A001158(A007947(n+1))`
-/

namespace A351266.P972491924768266833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A007947 (n + 1)).toNat

end

end A351266.P972491924768266833

namespace A351266

/-- `A001158(A007947(n+1))` -/
def P972491924768266833.Spec : Prop :=
  ∀ n, P972491924768266833.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P3629903168653344971

`A369721(A007948(n+1))`
-/

namespace A351266.P3629903168653344971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A007948 (n + 1)).toNat

end

end A351266.P3629903168653344971

namespace A351266

/-- `A369721(A007948(n+1))` -/
def P3629903168653344971.Spec : Prop :=
  ∀ n, P3629903168653344971.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P4567421365637207954

`A369721(A058035(n+1))`
-/

namespace A351266.P4567421365637207954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A058035 (n + 1)).toNat

end

end A351266.P4567421365637207954

namespace A351266

/-- `A369721(A058035(n+1))` -/
def P4567421365637207954.Spec : Prop :=
  ∀ n, P4567421365637207954.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P14169600840443479056

`A369721(A066990(n+1))`
-/

namespace A351266.P14169600840443479056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A066990 (n + 1)).toNat

end

end A351266.P14169600840443479056

namespace A351266

/-- `A369721(A066990(n+1))` -/
def P14169600840443479056.Spec : Prop :=
  ∀ n, P14169600840443479056.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P17834530856179317838

`A369721(A375240(n+1))`
-/

namespace A351266.P17834530856179317838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369721 (A375240 (n + 1)).toNat

end

end A351266.P17834530856179317838

namespace A351266

/-- `A369721(A375240(n+1))` -/
def P17834530856179317838.Spec : Prop :=
  ∀ n, P17834530856179317838.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P10555489267756620046

`gcd(A000038(n), A328640(n+1))`
-/

namespace A351266.P10555489267756620046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328640 (n + 1))

end

end A351266.P10555489267756620046

namespace A351266

/-- `gcd(A000038(n), A328640(n+1))` -/
def P10555489267756620046.Spec : Prop :=
  ∀ n, (P10555489267756620046.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P4144410138654949108

`lcm(A006466(n), A328640(n+1))`
-/

namespace A351266.P4144410138654949108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A328640 (n + 1))

end

end A351266.P4144410138654949108

namespace A351266

/-- `lcm(A006466(n), A328640(n+1))` -/
def P4144410138654949108.Spec : Prop :=
  ∀ n, (P4144410138654949108.a n : ℤ) = A351266 (n + 1)

end A351266

/-! ## A351266.P11337831990078081133

`A008836(n+1)*A328640(n+1)`
-/

namespace A351266.P11337831990078081133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A328640 (n + 1)

end

end A351266.P11337831990078081133

namespace A351266

/-- `A008836(n+1)*A328640(n+1)` -/
def P11337831990078081133.Spec : Prop :=
  ∀ n, P11337831990078081133.a n = A351266 (n + 1)

end A351266

/-! ## A351266.P696240527734476878

`A048250(n+1)*A367865(n+1)`
-/

namespace A351266.P696240527734476878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A367865 (n + 1)

end

end A351266.P696240527734476878

namespace A351266

/-- `A048250(n+1)*A367865(n+1)` -/
def P696240527734476878.Spec : Prop :=
  ∀ n, P696240527734476878.a n = A351266 (n + 1)

end A351266

/-!
# A351267: Sum of the 4th powers of the squarefree divisors of n.

The programs for A351267, the canonical program `A351267.P13854892171206440395` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351267 has offset 1).

The definition of A351267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351267.P13854892171206440395

`∏{p}[n+1, #^4+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351267

/-- `∏{p}[n+1, #^4+1]` -/
def P13854892171206440395.Spec : Prop :=
  ∀ n, (P13854892171206440395.a n : ℤ) = A351267 (n + 1)

theorem P13854892171206440395.correct : P13854892171206440395.Spec := by
  intro n
  simp only [A351267, Nat.add_sub_cancel]

end A351267

/-! ## A351267.P16911129650647446584

`∑{d}[∏{p}[n+1, #], #²²]`
-/

namespace A351267.P16911129650647446584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2) ^ 2

end

end A351267.P16911129650647446584

namespace A351267

/-- `∑{d}[∏{p}[n+1, #], #²²]` -/
def P16911129650647446584.Spec : Prop :=
  ∀ n, (P16911129650647446584.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P11541245567596032958

`A001159(∏{p}[n+1, #])`
-/

namespace A351267.P11541245567596032958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351267.P11541245567596032958

namespace A351267

/-- `A001159(∏{p}[n+1, #])` -/
def P11541245567596032958.Spec : Prop :=
  ∀ n, P11541245567596032958.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P14621785537421231695

`A034678(∏{p}[n+1, #])`
-/

namespace A351267.P14621785537421231695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034678 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351267.P14621785537421231695

namespace A351267

/-- `A034678(∏{p}[n+1, #])` -/
def P14621785537421231695.Spec : Prop :=
  ∀ n, P14621785537421231695.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P2637323715266780918

`A065960(∏{p}[n+1, #])`
-/

namespace A351267.P2637323715266780918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065960 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351267.P2637323715266780918

namespace A351267

/-- `A065960(∏{p}[n+1, #])` -/
def P2637323715266780918.Spec : Prop :=
  ∀ n, P2637323715266780918.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P4930542666715623699

`∑{d}[n+1, A334657(#)²]`
-/

namespace A351267.P4930542666715623699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d ^ 2

end

end A351267.P4930542666715623699

namespace A351267

/-- `∑{d}[n+1, A334657(#)²]` -/
def P4930542666715623699.Spec : Prop :=
  ∀ n, P4930542666715623699.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P3303944778572345710

`∑{d}[A007947(n+1), #²²]`
-/

namespace A351267.P3303944778572345710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351267.P3303944778572345710

namespace A351267

/-- `∑{d}[A007947(n+1), #²²]` -/
def P3303944778572345710.Spec : Prop :=
  ∀ n, (P3303944778572345710.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P3561830522879563848

`∑{d}[A062953(n+1), #²²]`
-/

namespace A351267.P3561830522879563848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351267.P3561830522879563848

namespace A351267

/-- `∑{d}[A062953(n+1), #²²]` -/
def P3561830522879563848.Spec : Prop :=
  ∀ n, (P3561830522879563848.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P3219699818062371793

`∑{d}[sqrt(A078615(n+1)), #²²]`
-/

namespace A351267.P3219699818062371793
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (d ^ 2) ^ 2

end

end A351267.P3219699818062371793

namespace A351267

/-- `∑{d}[sqrt(A078615(n+1)), #²²]` -/
def P3219699818062371793.Spec : Prop :=
  ∀ n, (P3219699818062371793.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P722178460256683223

`∑{d}[n+1, (#*A008683(#))^4]`
-/

namespace A351267.P722178460256683223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A008683 d) ^ 4

end

end A351267.P722178460256683223

namespace A351267

/-- `∑{d}[n+1, (#*A008683(#))^4]` -/
def P722178460256683223.Spec : Prop :=
  ∀ n, P722178460256683223.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P4550152057313543999

`A001159(A007947(n+1))`
-/

namespace A351267.P4550152057313543999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (A007947 (n + 1)).toNat

end

end A351267.P4550152057313543999

namespace A351267

/-- `A001159(A007947(n+1))` -/
def P4550152057313543999.Spec : Prop :=
  ∀ n, P4550152057313543999.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P1381304788656654576

`A065960((n+1)/A003557(n+1))`
-/

namespace A351267.P1381304788656654576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A351267.P1381304788656654576

namespace A351267

/-- `A065960((n+1)/A003557(n+1))` -/
def P1381304788656654576.Spec : Prop :=
  ∀ n, P1381304788656654576.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P4074523046166128588

`∑{d}[A053166(A053166(n+1)), #²²]`
-/

namespace A351267.P4074523046166128588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351267.P4074523046166128588

namespace A351267

/-- `∑{d}[A053166(A053166(n+1)), #²²]` -/
def P4074523046166128588.Spec : Prop :=
  ∀ n, (P4074523046166128588.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P5247596581547034600

`A065960(A206778(∑[A034444(n+1)]))`
-/

namespace A351267.P5247596581547034600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065960 (A206778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A351267.P5247596581547034600

namespace A351267

/-- `A065960(A206778(∑[A034444(n+1)]))` -/
def P5247596581547034600.Spec : Prop :=
  ∀ n, P5247596581547034600.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P2923196540316552399

`∑{d}[A003961(n+1), A349125(#)²²]`
-/

namespace A351267.P2923196540316552399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A349125 d ^ 2) ^ 2

end

end A351267.P2923196540316552399

namespace A351267

/-- `∑{d}[A003961(n+1), A349125(#)²²]` -/
def P2923196540316552399.Spec : Prop :=
  ∀ n, P2923196540316552399.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P17427083352592466117

`∑{d}[A336643((n+1)²), #²²]`
-/

namespace A351267.P17427083352592466117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2) ^ 2

end

end A351267.P17427083352592466117

namespace A351267

/-- `∑{d}[A336643((n+1)²), #²²]` -/
def P17427083352592466117.Spec : Prop :=
  ∀ n, (P17427083352592466117.a n : ℤ) = A351267 (n + 1)

end A351267

/-! ## A351267.P13917790741916952900

`A034676(A078615(n+1))`
-/

namespace A351267.P13917790741916952900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A078615 (n + 1)).toNat

end

end A351267.P13917790741916952900

namespace A351267

/-- `A034676(A078615(n+1))` -/
def P13917790741916952900.Spec : Prop :=
  ∀ n, P13917790741916952900.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P2628454526270776329

`A034676(A007947(n+1)²)`
-/

namespace A351267.P2628454526270776329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A007947 (n + 1) ^ 2).toNat

end

end A351267.P2628454526270776329

namespace A351267

/-- `A034676(A007947(n+1)²)` -/
def P2628454526270776329.Spec : Prop :=
  ∀ n, P2628454526270776329.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P13183318880466129662

`A351307(A007947(n+1)²)`
-/

namespace A351267.P13183318880466129662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351307 (A007947 (n + 1) ^ 2).toNat

end

end A351267.P13183318880466129662

namespace A351267

/-- `A351307(A007947(n+1)²)` -/
def P13183318880466129662.Spec : Prop :=
  ∀ n, P13183318880466129662.a n = A351267 (n + 1)

end A351267

/-! ## A351267.P11332584774005548835

`A034676(A007947(n+1)*A007947(n+1))`
-/

namespace A351267.P11332584774005548835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A351267.P11332584774005548835

namespace A351267

/-- `A034676(A007947(n+1)*A007947(n+1))` -/
def P11332584774005548835.Spec : Prop :=
  ∀ n, P11332584774005548835.a n = A351267 (n + 1)

end A351267

/-!
# A351268: Sum of the 5th powers of the squarefree divisors of n.

The programs for A351268, the canonical program `A351268.P947706650174775941` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351268 has offset 1).

The definition of A351268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351268.P947706650174775941

`∏{p}[n+1, #^5+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351268

/-- `∏{p}[n+1, #^5+1]` -/
def P947706650174775941.Spec : Prop :=
  ∀ n, (P947706650174775941.a n : ℤ) = A351268 (n + 1)

theorem P947706650174775941.correct : P947706650174775941.Spec := by
  intro n
  simp only [A351268, Nat.add_sub_cancel]

end A351268

/-! ## A351268.P17182955884403936819

`A001160(∏{p}[n+1, #])`
-/

namespace A351268.P17182955884403936819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351268.P17182955884403936819

namespace A351268

/-- `A001160(∏{p}[n+1, #])` -/
def P17182955884403936819.Spec : Prop :=
  ∀ n, P17182955884403936819.a n = A351268 (n + 1)

end A351268

/-! ## A351268.P7343072756163619201

`A034679(∏{p}[n+1, #])`
-/

namespace A351268.P7343072756163619201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034679 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351268.P7343072756163619201

namespace A351268

/-- `A034679(∏{p}[n+1, #])` -/
def P7343072756163619201.Spec : Prop :=
  ∀ n, P7343072756163619201.a n = A351268 (n + 1)

end A351268

/-! ## A351268.P14067617953476463794

`A351300(∏{p}[n+1, #])`
-/

namespace A351268.P14067617953476463794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351300 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351268.P14067617953476463794

namespace A351268

/-- `A351300(∏{p}[n+1, #])` -/
def P14067617953476463794.Spec : Prop :=
  ∀ n, P14067617953476463794.a n = A351268 (n + 1)

end A351268

/-! ## A351268.P17316631976905705431

`A001160(A007947(n+1))`
-/

namespace A351268.P17316631976905705431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (A007947 (n + 1)).toNat

end

end A351268.P17316631976905705431

namespace A351268

/-- `A001160(A007947(n+1))` -/
def P17316631976905705431.Spec : Prop :=
  ∀ n, P17316631976905705431.a n = A351268 (n + 1)

end A351268

/-! ## A351268.P10496353432143369963

`∑{d}[n+1, A178448(#²)]`
-/

namespace A351268.P10496353432143369963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 (d ^ 2)

end

end A351268.P10496353432143369963

namespace A351268

/-- `∑{d}[n+1, A178448(#²)]` -/
def P10496353432143369963.Spec : Prop :=
  ∀ n, P10496353432143369963.a n = A351268 (n + 1)

end A351268

/-!
# A351269: Sum of the 6th powers of the squarefree divisors of n.

The programs for A351269, the canonical program `A351269.P3867990474595369772` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351269 has offset 1).

The definition of A351269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351269.P3867990474595369772

`∏{p}[n+1, #^6+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351269

/-- `∏{p}[n+1, #^6+1]` -/
def P3867990474595369772.Spec : Prop :=
  ∀ n, (P3867990474595369772.a n : ℤ) = A351269 (n + 1)

theorem P3867990474595369772.correct : P3867990474595369772.Spec := by
  intro n
  simp only [A351269, Nat.add_sub_cancel]

end A351269

/-! ## A351269.P5206643382739215846

`A013954(∏{p}[n+1, #])`
-/

namespace A351269.P5206643382739215846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351269.P5206643382739215846

namespace A351269

/-- `A013954(∏{p}[n+1, #])` -/
def P5206643382739215846.Spec : Prop :=
  ∀ n, P5206643382739215846.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P17671474300263495379

`A034680(∏{p}[n+1, #])`
-/

namespace A351269.P17671474300263495379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034680 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351269.P17671474300263495379

namespace A351269

/-- `A034680(∏{p}[n+1, #])` -/
def P17671474300263495379.Spec : Prop :=
  ∀ n, P17671474300263495379.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P18141381055235937832

`A351301(∏{p}[n+1, #])`
-/

namespace A351269.P18141381055235937832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351301 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351269.P18141381055235937832

namespace A351269

/-- `A351301(∏{p}[n+1, #])` -/
def P18141381055235937832.Spec : Prop :=
  ∀ n, P18141381055235937832.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P14253982290905637486

`A013954(A007947(n+1))`
-/

namespace A351269.P14253982290905637486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013954 (A007947 (n + 1)).toNat

end

end A351269.P14253982290905637486

namespace A351269

/-- `A013954(A007947(n+1))` -/
def P14253982290905637486.Spec : Prop :=
  ∀ n, P14253982290905637486.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P16849007324691869459

`∑{d}[A007947(n+1), A182938(#)^6]`
-/

namespace A351269.P16849007324691869459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A182938 d ^ 6

end

end A351269.P16849007324691869459

namespace A351269

/-- `∑{d}[A007947(n+1), A182938(#)^6]` -/
def P16849007324691869459.Spec : Prop :=
  ∀ n, P16849007324691869459.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P6967495793081749670

`A034677(∏{p}[n+1, #²])`
-/

namespace A351269.P6967495793081749670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351269.P6967495793081749670

namespace A351269

/-- `A034677(∏{p}[n+1, #²])` -/
def P6967495793081749670.Spec : Prop :=
  ∀ n, P6967495793081749670.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P4785899832089668001

`A351308(∏{p}[n+1, #²])`
-/

namespace A351269.P4785899832089668001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351269.P4785899832089668001

namespace A351269

/-- `A351308(∏{p}[n+1, #²])` -/
def P4785899832089668001.Spec : Prop :=
  ∀ n, P4785899832089668001.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P12105367157385694802

`A034677(A078615(n+1))`
-/

namespace A351269.P12105367157385694802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A078615 (n + 1)).toNat

end

end A351269.P12105367157385694802

namespace A351269

/-- `A034677(A078615(n+1))` -/
def P12105367157385694802.Spec : Prop :=
  ∀ n, P12105367157385694802.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P8375741995294409916

`A034677(A007947(n+1)²)`
-/

namespace A351269.P8375741995294409916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A007947 (n + 1) ^ 2).toNat

end

end A351269.P8375741995294409916

namespace A351269

/-- `A034677(A007947(n+1)²)` -/
def P8375741995294409916.Spec : Prop :=
  ∀ n, P8375741995294409916.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P3337049090251567283

`A351308(A007947(n+1)²)`
-/

namespace A351269.P3337049090251567283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A007947 (n + 1) ^ 2).toNat

end

end A351269.P3337049090251567283

namespace A351269

/-- `A351308(A007947(n+1)²)` -/
def P3337049090251567283.Spec : Prop :=
  ∀ n, P3337049090251567283.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P2438975464583545973

`∑{d}[A007947(n+1), A064549(#²)²]`
-/

namespace A351269.P2438975464583545973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064549 (d ^ 2) ^ 2

end

end A351269.P2438975464583545973

namespace A351269

/-- `∑{d}[A007947(n+1), A064549(#²)²]` -/
def P2438975464583545973.Spec : Prop :=
  ∀ n, P2438975464583545973.a n = A351269 (n + 1)

end A351269

/-! ## A351269.P2590968245756208942

`A351308(A007947(n+1)*A007947(n+1))`
-/

namespace A351269.P2590968245756208942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A351269.P2590968245756208942

namespace A351269

/-- `A351308(A007947(n+1)*A007947(n+1))` -/
def P2590968245756208942.Spec : Prop :=
  ∀ n, P2590968245756208942.a n = A351269 (n + 1)

end A351269

/-!
# A351270: Sum of the 7th powers of the squarefree divisors of n.

The programs for A351270, the canonical program `A351270.P6975453853126183551` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351270 has offset 1).

The definition of A351270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351270.P6975453853126183551

`∏{p}[n+1, #^7+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351270

/-- `∏{p}[n+1, #^7+1]` -/
def P6975453853126183551.Spec : Prop :=
  ∀ n, (P6975453853126183551.a n : ℤ) = A351270 (n + 1)

theorem P6975453853126183551.correct : P6975453853126183551.Spec := by
  intro n
  simp only [A351270, Nat.add_sub_cancel]

end A351270

/-! ## A351270.P3137077715816872228

`A013955(∏{p}[n+1, #])`
-/

namespace A351270.P3137077715816872228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351270.P3137077715816872228

namespace A351270

/-- `A013955(∏{p}[n+1, #])` -/
def P3137077715816872228.Spec : Prop :=
  ∀ n, P3137077715816872228.a n = A351270 (n + 1)

end A351270

/-! ## A351270.P13489189517219063073

`A034681(∏{p}[n+1, #])`
-/

namespace A351270.P13489189517219063073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034681 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351270.P13489189517219063073

namespace A351270

/-- `A034681(∏{p}[n+1, #])` -/
def P13489189517219063073.Spec : Prop :=
  ∀ n, P13489189517219063073.a n = A351270 (n + 1)

end A351270

/-! ## A351270.P6225088530077409928

`A351302(∏{p}[n+1, #])`
-/

namespace A351270.P6225088530077409928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351302 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351270.P6225088530077409928

namespace A351270

/-- `A351302(∏{p}[n+1, #])` -/
def P6225088530077409928.Spec : Prop :=
  ∀ n, P6225088530077409928.a n = A351270 (n + 1)

end A351270

/-! ## A351270.P16383365752127548105

`A013955(A007947(n+1))`
-/

namespace A351270.P16383365752127548105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013955 (A007947 (n + 1)).toNat

end

end A351270.P16383365752127548105

namespace A351270

/-- `A013955(A007947(n+1))` -/
def P16383365752127548105.Spec : Prop :=
  ∀ n, P16383365752127548105.a n = A351270 (n + 1)

end A351270

/-!
# A351271: Sum of the 8th powers of the squarefree divisors of n.

The programs for A351271, the canonical program `A351271.P7331128670900877763` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351271 has offset 1).

The definition of A351271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351271.P7331128670900877763

`∏{p}[n+1, #^8+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351271

/-- `∏{p}[n+1, #^8+1]` -/
def P7331128670900877763.Spec : Prop :=
  ∀ n, (P7331128670900877763.a n : ℤ) = A351271 (n + 1)

theorem P7331128670900877763.correct : P7331128670900877763.Spec := by
  intro n
  simp only [A351271, Nat.add_sub_cancel]

end A351271

/-! ## A351271.P314586092110470690

`∑{d}[∏{p}[n+1, #], #²²²]`
-/

namespace A351271.P314586092110470690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2) ^ 2) ^ 2

end

end A351271.P314586092110470690

namespace A351271

/-- `∑{d}[∏{p}[n+1, #], #²²²]` -/
def P314586092110470690.Spec : Prop :=
  ∀ n, (P314586092110470690.a n : ℤ) = A351271 (n + 1)

end A351271

/-! ## A351271.P6815980466298607203

`A013956(∏{p}[n+1, #])`
-/

namespace A351271.P6815980466298607203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351271.P6815980466298607203

namespace A351271

/-- `A013956(∏{p}[n+1, #])` -/
def P6815980466298607203.Spec : Prop :=
  ∀ n, P6815980466298607203.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P8356967684465440059

`A034682(∏{p}[n+1, #])`
-/

namespace A351271.P8356967684465440059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034682 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351271.P8356967684465440059

namespace A351271

/-- `A034682(∏{p}[n+1, #])` -/
def P8356967684465440059.Spec : Prop :=
  ∀ n, P8356967684465440059.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P1572907736508559182

`A351303(∏{p}[n+1, #])`
-/

namespace A351271.P1572907736508559182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351303 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351271.P1572907736508559182

namespace A351271

/-- `A351303(∏{p}[n+1, #])` -/
def P1572907736508559182.Spec : Prop :=
  ∀ n, P1572907736508559182.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P7176070862270302317

`∑{d}[A007947(n+1), #²²²]`
-/

namespace A351271.P7176070862270302317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 2) ^ 2) ^ 2

end

end A351271.P7176070862270302317

namespace A351271

/-- `∑{d}[A007947(n+1), #²²²]` -/
def P7176070862270302317.Spec : Prop :=
  ∀ n, (P7176070862270302317.a n : ℤ) = A351271 (n + 1)

end A351271

/-! ## A351271.P397960683147160915

`∑{d}[A062953(n+1), #²²²]`
-/

namespace A351271.P397960683147160915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d ^ 2) ^ 2) ^ 2

end

end A351271.P397960683147160915

namespace A351271

/-- `∑{d}[A062953(n+1), #²²²]` -/
def P397960683147160915.Spec : Prop :=
  ∀ n, (P397960683147160915.a n : ℤ) = A351271 (n + 1)

end A351271

/-! ## A351271.P7490919125326147737

`A013956(A007947(n+1))`
-/

namespace A351271.P7490919125326147737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013956 (A007947 (n + 1)).toNat

end

end A351271.P7490919125326147737

namespace A351271

/-- `A013956(A007947(n+1))` -/
def P7490919125326147737.Spec : Prop :=
  ∀ n, P7490919125326147737.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P528669949835080157

`A034678(∏{p}[n+1, #²])`
-/

namespace A351271.P528669949835080157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034678 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351271.P528669949835080157

namespace A351271

/-- `A034678(∏{p}[n+1, #²])` -/
def P528669949835080157.Spec : Prop :=
  ∀ n, P528669949835080157.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P15801929842829802632

`A351309(∏{p}[n+1, #²])`
-/

namespace A351271.P15801929842829802632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351271.P15801929842829802632

namespace A351271

/-- `A351309(∏{p}[n+1, #²])` -/
def P15801929842829802632.Spec : Prop :=
  ∀ n, P15801929842829802632.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P16075084681424918306

`A034678(A078615(n+1))`
-/

namespace A351271.P16075084681424918306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034678 (A078615 (n + 1)).toNat

end

end A351271.P16075084681424918306

namespace A351271

/-- `A034678(A078615(n+1))` -/
def P16075084681424918306.Spec : Prop :=
  ∀ n, P16075084681424918306.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P11794451365374694391

`A351309(A007947(n+1)²)`
-/

namespace A351271.P11794451365374694391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (A007947 (n + 1) ^ 2).toNat

end

end A351271.P11794451365374694391

namespace A351271

/-- `A351309(A007947(n+1)²)` -/
def P11794451365374694391.Spec : Prop :=
  ∀ n, P11794451365374694391.a n = A351271 (n + 1)

end A351271

/-! ## A351271.P13993611297400809597

`A351309(A007947(n+1)*A007947(n+1))`
-/

namespace A351271.P13993611297400809597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A351271.P13993611297400809597

namespace A351271

/-- `A351309(A007947(n+1)*A007947(n+1))` -/
def P13993611297400809597.Spec : Prop :=
  ∀ n, P13993611297400809597.a n = A351271 (n + 1)

end A351271

/-!
# A351272: Sum of the 9th powers of the squarefree divisors of n.

The programs for A351272, the canonical program `A351272.P8713376517957732113` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351272 has offset 1).

The definition of A351272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351272.P8713376517957732113

`∏{p}[n+1, #^9+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351272

/-- `∏{p}[n+1, #^9+1]` -/
def P8713376517957732113.Spec : Prop :=
  ∀ n, (P8713376517957732113.a n : ℤ) = A351272 (n + 1)

theorem P8713376517957732113.correct : P8713376517957732113.Spec := by
  intro n
  simp only [A351272, Nat.add_sub_cancel]

end A351272

/-! ## A351272.P4239063174736524258

`A013957(∏{p}[n+1, #])`
-/

namespace A351272.P4239063174736524258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013957 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351272.P4239063174736524258

namespace A351272

/-- `A013957(∏{p}[n+1, #])` -/
def P4239063174736524258.Spec : Prop :=
  ∀ n, P4239063174736524258.a n = A351272 (n + 1)

end A351272

/-! ## A351272.P1056238691412106710

`A351304(∏{p}[n+1, #])`
-/

namespace A351272.P1056238691412106710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351304 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351272.P1056238691412106710

namespace A351272

/-- `A351304(∏{p}[n+1, #])` -/
def P1056238691412106710.Spec : Prop :=
  ∀ n, P1056238691412106710.a n = A351272 (n + 1)

end A351272

/-! ## A351272.P10031721508249023500

`abs(A321565(∏{p}[n+1, #]))`
-/

namespace A351272.P10031721508249023500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321565 (∏ p ∈ Nat.primeFactors (f1 n), p)|

end

end A351272.P10031721508249023500

namespace A351272

/-- `abs(A321565(∏{p}[n+1, #]))` -/
def P10031721508249023500.Spec : Prop :=
  ∀ n, P10031721508249023500.a n = A351272 (n + 1)

end A351272

/-! ## A351272.P7246686493327821351

`A013957(A007947(n+1))`
-/

namespace A351272.P7246686493327821351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013957 (A007947 (n + 1)).toNat

end

end A351272.P7246686493327821351

namespace A351272

/-- `A013957(A007947(n+1))` -/
def P7246686493327821351.Spec : Prop :=
  ∀ n, P7246686493327821351.a n = A351272 (n + 1)

end A351272

/-!
# A351273: Sum of the 10th powers of the squarefree divisors of n.

The programs for A351273, the canonical program `A351273.P3308488621041777236` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351273 has offset 1).

The definition of A351273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351273.P3308488621041777236

`∏{p}[n+1, #^10+1]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A351273

/-- `∏{p}[n+1, #^10+1]` -/
def P3308488621041777236.Spec : Prop :=
  ∀ n, (P3308488621041777236.a n : ℤ) = A351273 (n + 1)

theorem P3308488621041777236.correct : P3308488621041777236.Spec := by
  intro n
  simp only [A351273, Nat.add_sub_cancel]

end A351273

/-! ## A351273.P10075814667515030378

`A013958(∏{p}[n+1, #])`
-/

namespace A351273.P10075814667515030378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351273.P10075814667515030378

namespace A351273

/-- `A013958(∏{p}[n+1, #])` -/
def P10075814667515030378.Spec : Prop :=
  ∀ n, P10075814667515030378.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P9123309636152134927

`A351305(∏{p}[n+1, #])`
-/

namespace A351273.P9123309636152134927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351305 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A351273.P9123309636152134927

namespace A351273

/-- `A351305(∏{p}[n+1, #])` -/
def P9123309636152134927.Spec : Prop :=
  ∀ n, P9123309636152134927.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P4754365900413608101

`A013958(A007947(n+1))`
-/

namespace A351273.P4754365900413608101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (A007947 (n + 1)).toNat

end

end A351273.P4754365900413608101

namespace A351273

/-- `A013958(A007947(n+1))` -/
def P4754365900413608101.Spec : Prop :=
  ∀ n, P4754365900413608101.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P595479916050904522

`A034679(∏{p}[n+1, #²])`
-/

namespace A351273.P595479916050904522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034679 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351273.P595479916050904522

namespace A351273

/-- `A034679(∏{p}[n+1, #²])` -/
def P595479916050904522.Spec : Prop :=
  ∀ n, P595479916050904522.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P258348450562151434

`A351310(∏{p}[n+1, #²])`
-/

namespace A351273.P258348450562151434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A351273.P258348450562151434

namespace A351273

/-- `A351310(∏{p}[n+1, #²])` -/
def P258348450562151434.Spec : Prop :=
  ∀ n, P258348450562151434.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P2967951267744548996

`A034679(A078615(n+1))`
-/

namespace A351273.P2967951267744548996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034679 (A078615 (n + 1)).toNat

end

end A351273.P2967951267744548996

namespace A351273

/-- `A034679(A078615(n+1))` -/
def P2967951267744548996.Spec : Prop :=
  ∀ n, P2967951267744548996.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P13170400500086854436

`A034679(A007947(n+1)²)`
-/

namespace A351273.P13170400500086854436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034679 (A007947 (n + 1) ^ 2).toNat

end

end A351273.P13170400500086854436

namespace A351273

/-- `A034679(A007947(n+1)²)` -/
def P13170400500086854436.Spec : Prop :=
  ∀ n, P13170400500086854436.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P5336134172911312088

`A351310(A007947(n+1)²)`
-/

namespace A351273.P5336134172911312088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (A007947 (n + 1) ^ 2).toNat

end

end A351273.P5336134172911312088

namespace A351273

/-- `A351310(A007947(n+1)²)` -/
def P5336134172911312088.Spec : Prop :=
  ∀ n, P5336134172911312088.a n = A351273 (n + 1)

end A351273

/-! ## A351273.P9565473812074282667

`A351310(A007947(n+1)*A007947(n+1))`
-/

namespace A351273.P9565473812074282667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351310 (A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A351273.P9565473812074282667

namespace A351273

/-- `A351310(A007947(n+1)*A007947(n+1))` -/
def P9565473812074282667.Spec : Prop :=
  ∀ n, P9565473812074282667.a n = A351273 (n + 1)

end A351273

/-!
# A351274: a(0) = 1; thereafter a(n) = Sum_{k=1..n} (2*k)^k * Stirling1(n,k).

The programs for A351274, there is no canonical definition to state claims against.
-/

/-! ## A351274.P610181789850786532

`A310241(n*a(n-1))-n` with `a(0)=1`
-/

namespace A351274.P610181789850786532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310241 ((n : ℤ) * a (n - 1)).toNat - (n : ℤ)

end

end A351274.P610181789850786532

/-!
# A351279: a(n) = Sum_{k=0..n} 2^k * k^(n-k).

The programs for A351279, there is no canonical definition to state claims against.
-/

/-! ## A351279.P4343107535873779492

`A351339(∑[n+3])`
-/

namespace A351279.P4343107535873779492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351279.P4343107535873779492

/-! ## A351279.P10275502112011082529

`record[A351339(A069981(n))]`
-/

namespace A351279.P10275502112011082529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351279.P10275502112011082529

/-! ## A351279.P12459742474349486550

`record[A351339(A165157(n))]`
-/

namespace A351279.P12459742474349486550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351279.P12459742474349486550

/-! ## A351279.P7754183302480971152

`record[lcm(A141679(n+1), A351339(n))]`
-/

namespace A351279.P7754183302480971152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141679 (n + 1)) (A351339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351279.P7754183302480971152

/-! ## A351279.P4294778186787368667

`record[A351339(A198463(n+1))]`
-/

namespace A351279.P4294778186787368667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (A198463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351279.P4294778186787368667

/-!
# A351280: a(n) = Sum_{k=0..n} k! * k^k * Stirling1(n,k).

The programs for A351280, there is no canonical definition to state claims against.
-/

/-! ## A351280.P9226122106218419198

`xor(or(1, n), A212102(A002866(n)))`
-/

namespace A351280.P9226122106218419198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lor 1 n : ℤ) (A212102 (A002866 n).toNat)

end

end A351280.P9226122106218419198

/-!
# A351281: a(n) = Sum_{k=0..n} k! * k^k * Stirling2(n,k).

The programs for A351281, there is no canonical definition to state claims against.
-/

/-! ## A351281.P18080708044977656870

`A323369(A001615(comp[2*(n+1)]!))`
-/

namespace A351281.P18080708044977656870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323369 (A001615 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))).toNat

end

end A351281.P18080708044977656870

/-!
# A351282: a(n) = Sum_{k=0..n} 3^k * k^(n-k).

The programs for A351282, there is no canonical definition to state claims against.
-/

/-! ## A351282.P270201435620135163

`A351339(∑[n+3]+n+3)`
-/

namespace A351282.P270201435620135163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A351282.P270201435620135163

/-! ## A351282.P14450471204085652305

`record[A351339(abs(A046691(n)))]`
-/

namespace A351282.P14450471204085652305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351339 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351282.P14450471204085652305

/-!
# A351283: G.f. A(x) satisfies: A(x) = 1 + x + x^2 * A(x/(1 - x)) / (1 - x)^4.

The programs for A351283, there is no canonical definition to state claims against.
-/

/-! ## A351283.P1152852741352647794

`A184415(A101786(n))`
-/

namespace A351283.P1152852741352647794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184415 (A101786 n).toNat

end

end A351283.P1152852741352647794

/-! ## A351283.P4092952798023335058

`A182195(A396311(n))`
-/

namespace A351283.P4092952798023335058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (A396311 n).toNat

end

end A351283.P4092952798023335058

/-! ## A351283.P4576301230689423833

`A319242(A360782(n))-1`
-/

namespace A351283.P4576301230689423833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319242 (A360782 n).toNat - 1

end

end A351283.P4576301230689423833

/-!
# A351284: Irregular triangle read by rows: the n-th row gives the x-values of the solutions of the equation 2*(x - 1)*y - (x - 3)*x = 2*n for 0 < x <= y.

The programs for A351284, there is no canonical definition to state claims against.
-/

/-! ## A351284.P17862304250396942614

`A341674(n+5)+A324883(A028321(n+2))`
-/

namespace A351284.P17862304250396942614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (n + 5) + A324883 (A028321 (n + 2)).toNat

end

end A351284.P17862304250396942614

/-! ## A351284.P8812375444755341607

`A065033(A072670(38*n²))+1`
-/

namespace A351284.P8812375444755341607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A072670 (38 * n ^ 2)).toNat + 1

end

end A351284.P8812375444755341607

/-! ## A351284.P7394492397741673609

`A001221(xor(A001878(n), A233031(n+1)))`
-/

namespace A351284.P7394492397741673609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A001878 n) (A233031 (n + 1))).toNat

end

end A351284.P7394492397741673609

/-! ## A351284.P17418629144347383465

`A335451(A077509(n+2))+A226444(n+1)`
-/

namespace A351284.P17418629144347383465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335451 (A077509 (n + 2)).toNat + A226444 (n + 1)

end

end A351284.P17418629144347383465

/-!
# A351287: Number of symmetric 0-1 matrices with zero main diagonal and nondecreasing number of ones in the rows.

The programs for A351287, there is no canonical definition to state claims against.
-/

/-! ## A351287.P6435625071749026831

`A117910(∑[A303211(n+1)])`
-/

namespace A351287.P6435625071749026831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351287.P6435625071749026831

/-! ## A351287.P4080483759360813930

`A036234(∏[record[A161136(n+1)]])`
-/

namespace A351287.P4080483759360813930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351287.P4080483759360813930

/-!
# A351288: Number of symmetric 0-1 matrices with nondecreasing row sums.

The programs for A351288, there is no canonical definition to state claims against.
-/

/-! ## A351288.P2555041503837295892

`A039265(A060639(n)+2^n)`
-/

namespace A351288.P2555041503837295892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039265 (A060639 n + (2 ^ n : ℤ)).toNat

end

end A351288.P2555041503837295892

/-! ## A351288.P15938838672857137462

`A039269(A060639(n)+2^n)`
-/

namespace A351288.P15938838672857137462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039269 (A060639 n + (2 ^ n : ℤ)).toNat

end

end A351288.P15938838672857137462

/-!
# A351289: Square array read by descending antidiagonals: A(n,k) is the smallest m such that the base-n expansion of m contains the base-n expansions of the k-th row of A048793 as substrings.

The programs for A351289, there is no canonical definition to state claims against.
-/

/-! ## A351289.P12395514187263149927

`A090552(A048494(n))%9`
-/

namespace A351289.P12395514187263149927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090552 (A048494 n).toNat) 9

end

end A351289.P12395514187263149927

/-! ## A351289.P10908329186241234993

`A325277(A047848(n)%A165340(n+3))`
-/

namespace A351289.P10908329186241234993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (Int.tmod (A047848 n) (A165340 (n + 3))).toNat

end

end A351289.P10908329186241234993

/-! ## A351289.P11078476143721098553

`A341049(or(A341059(n+1), A341096(n)))`
-/

namespace A351289.P11078476143721098553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341049 (Int.lor (A341059 (n + 1)) (A341096 (n + 45))).toNat

end

end A351289.P11078476143721098553

/-! ## A351289.P4065104695292276202

`A267825(A325534(n+2))`
-/

namespace A351289.P4065104695292276202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267825 (A325534 (n + 2)).toNat

end

end A351289.P4065104695292276202

/-! ## A351289.P793058864230073208

`A267825(A325713(n+2))`
-/

namespace A351289.P793058864230073208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267825 (A325713 (n + 2)).toNat

end

end A351289.P793058864230073208

/-!
# A351290: Numbers k such that the k-th composition in standard order has all distinct runs.

The programs for A351290, there is no canonical definition to state claims against.
-/

/-! ## A351290.P11983936825258174745

`comp[A351291(n+1)]`
-/

namespace A351290.P11983936825258174745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351290.P11983936825258174745

/-! ## A351290.P10232817237622841036

`eq[A124767(n), A351014(n)]`
-/

namespace A351290.P10232817237622841036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351290.P10232817237622841036

/-! ## A351290.P11700195886140070839

`comp[record[A351291(A152271(n))]]`
-/

namespace A351290.P11700195886140070839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351291 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351290.P11700195886140070839

/-! ## A351290.P235965218942582242

`comp[record[A351291(A328764(n))]]`
-/

namespace A351290.P235965218942582242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351291 (A328764 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A351290.P235965218942582242

/-! ## A351290.P4869274696266253992

`∪[A077471(n+1), A353852(n)]`
-/

namespace A351290.P4869274696266253992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A351290.P4869274696266253992

/-! ## A351290.P13815633639479225561

`eq[A124766(n)+A124760(n), A351014(n)]`
-/

namespace A351290.P13815633639479225561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351290.P13815633639479225561

/-!
# A351291: Numbers k such that the k-th composition in standard order does not have all distinct runs.

The programs for A351291, there is no canonical definition to state claims against.
-/

/-! ## A351291.P1896941427012570061

`lt[A351014(n), A124767(n)]`
-/

namespace A351291.P1896941427012570061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351291.P1896941427012570061

/-! ## A351291.P3660884306926331337

`lt[A351014(n), n-(A124762(n)+A011371(n))]`
-/

namespace A351291.P3660884306926331337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A124762 n + A011371 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351291.P3660884306926331337

/-! ## A351291.P7562050933968537672

`lt[A351014(n), A000120(A333627(n))]`
-/

namespace A351291.P7562050933968537672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351291.P7562050933968537672

/-! ## A351291.P6429178596522414132

`eq[A122445(A335465(n)), A351014(n)]`
-/

namespace A351291.P6429178596522414132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A335465 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351291.P6429178596522414132

/-! ## A351291.P4584448392278997151

`lt[A351014(n), A000120(A353847(n))]`
-/

namespace A351291.P4584448392278997151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A353847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351291.P4584448392278997151

/-!
# A351293: Number of non-Look-and-Say partitions of n. Number of integer partitions of n such that there is no way to choose a disjoint strict integer partition of each multiplicity.

The programs for A351293, there is no canonical definition to state claims against.
-/

/-! ## A351293.P9278521950488125793

`A336866(n)-A351592(n)`
-/

namespace A351293.P9278521950488125793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336866 n - A351592 n

end

end A351293.P9278521950488125793

/-! ## A351293.P5534312505556066129

`record[A035363(n+1)]-A239455(n)`
-/

namespace A351293.P5534312505556066129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239455 n

end

end A351293.P5534312505556066129

/-! ## A351293.P1550706954326198769

`record[A035444(n+1)]-A239455(n)`
-/

namespace A351293.P1550706954326198769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239455 n

end

end A351293.P1550706954326198769

/-! ## A351293.P7730747790967420992

`record[A114099(n+1)]-A239455(n)`
-/

namespace A351293.P7730747790967420992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239455 n

end

end A351293.P7730747790967420992

/-! ## A351293.P14752750538862560276

`A000041(n)-A239455(A028310(n))`
-/

namespace A351293.P14752750538862560276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239455 (A028310 n).toNat

end

end A351293.P14752750538862560276

/-!
# A351294: Numbers whose multiset of prime factors has at least one permutation with all distinct run-lengths.

The programs for A351294, there is no canonical definition to state claims against.
-/

/-! ## A351294.P14374611910941869100

`A130091(n+1)%110`
-/

namespace A351294.P14374611910941869100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130091 (n + 1)) 110

end

end A351294.P14374611910941869100

/-! ## A351294.P17188318919623249636

`record[A327498(n+1)]%125`
-/

namespace A351294.P17188318919623249636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 125

end

end A351294.P17188318919623249636

/-! ## A351294.P8903884282311883286

`lt[A335452(n+1), 2]+1`
-/

namespace A351294.P8903884282311883286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351294.P8903884282311883286

/-! ## A351294.P8046275808993525087

`record[n/a(A335452(n))]` with `a(0)=1, a(1)=1`
-/

namespace A351294.P8046275808993525087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A335452 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351294.P8046275808993525087

/-! ## A351294.P5302012368546621520

`eq[1, dr(A353693(n+1))]+1`
-/

namespace A351294.P5302012368546621520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A353693 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351294.P5302012368546621520

/-! ## A351294.P13871413666775400768

`comp[lt[1, A327499(n+1)]]+1`
-/

namespace A351294.P13871413666775400768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A351294.P13871413666775400768

/-! ## A351294.P5932749924676914933

`record[gcd(n+1, A322075(n+1))]`
-/

namespace A351294.P5932749924676914933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A322075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351294.P5932749924676914933

/-! ## A351294.P10891987050913621053

`filter[A070915(n+1), A351564(#)]`
-/

namespace A351294.P10891987050913621053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A351294.P10891987050913621053

/-!
# A351295: Numbers whose multiset of prime factors has no permutation with all distinct run-lengths.

The programs for A351295, there is no canonical definition to state claims against.
-/

/-! ## A351295.P855369316359064210

`A130092(n+1)%226`
-/

namespace A351295.P855369316359064210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130092 (n + 1)) 226

end

end A351295.P855369316359064210

/-! ## A351295.P8167328485596259858

`comp[C(A327498(n+1), n)]`
-/

namespace A351295.P8167328485596259858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327498 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A351295.P8167328485596259858

/-! ## A351295.P16170387602002205515

`lt[1, A335452(n+1)]+1`
-/

namespace A351295.P16170387602002205515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A351295.P16170387602002205515

/-! ## A351295.P6658389361656726051

`eq[2, A327500(n^ceil(atan(n)))]`
-/

namespace A351295.P6658389361656726051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351295.P6658389361656726051

/-! ## A351295.P14822421687837860749

`comp[A359178(n+1)-2]+2`
-/

namespace A351295.P14822421687837860749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359178 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A351295.P14822421687837860749

/-! ## A351295.P9491376262294552072

`lt[1, abs(A355817(n+1))]+1`
-/

namespace A351295.P9491376262294552072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355817 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A351295.P9491376262294552072

/-! ## A351295.P2335388363482592925

`eq[2, A327500((n+1)²)]+1`
-/

namespace A351295.P2335388363482592925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351295.P2335388363482592925

/-! ## A351295.P12554577357204383101

`lt[1, A335452(A028310(n))]`
-/

namespace A351295.P12554577357204383101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A351295.P12554577357204383101

/-! ## A351295.P1033384945356113107

`eq[2, A327500(A028310(n)²)]`
-/

namespace A351295.P1033384945356113107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351295.P1033384945356113107

/-!
# A351296: The sum of the next n digits of Pi.

The programs for A351296, there is no canonical definition to state claims against.
-/

/-! ## A351296.P4227456221180273538

`Δ[A059582(∑[n])]`
-/

namespace A351296.P4227456221180273538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351296.P4227456221180273538

/-! ## A351296.P7520832781093667897

`∑{digits}[A090897(n+1), #]`
-/

namespace A351296.P7520832781093667897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A351296.P7520832781093667897

/-! ## A351296.P8236520370973221947

`abs(Δ[A059582(C(n+1, 2))])`
-/

namespace A351296.P8236520370973221947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A351296.P8236520370973221947

/-! ## A351296.P17608182092578119083

`abs(Δ[A059582((n²+n)/2)])`
-/

namespace A351296.P17608182092578119083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A351296.P17608182092578119083

/-! ## A351296.P15579745240823017724

`A000027(Δ[A059582(C(n+1, 2))])`
-/

namespace A351296.P15579745240823017724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A351296.P15579745240823017724

/-! ## A351296.P2373255252160338121

`Δ[A059582(C(n+1, 2))]%A000040(n+1)²`
-/

namespace A351296.P2373255252160338121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1) ^ 2)

end

end A351296.P2373255252160338121

/-! ## A351296.P1180548685997259923

`Δ[A059582(C(n+1, 2))]+A008683(4*(n+1))`
-/

namespace A351296.P1180548685997259923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 (4 * (n + 1))

end

end A351296.P1180548685997259923

/-! ## A351296.P1208436144034246551

`Δ[A059582(C(n+1, 2))+A014963(42*(n+1))]`
-/

namespace A351296.P1208436144034246551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (Nat.choose (n + 1) 2) + A014963 (42 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351296.P1208436144034246551

/-!
# A351299: a(n) is the number of distinct bipartitions of a solid triangular array of edge n, discounting inversions, reflections, and rotations.

The programs for A351299, there is no canonical definition to state claims against.
-/

/-! ## A351299.P5949645459005594822

`xor(∏[A003560(3*n)], A003713(n))`
-/

namespace A351299.P5949645459005594822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003560 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ j ∈ Finset.range (n + 1), f1 j) (A003713 n)

end

end A351299.P5949645459005594822

