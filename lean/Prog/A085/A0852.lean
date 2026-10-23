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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A085200: Inverse function of N -> N injection A071155.

The programs for A085200, there is no canonical definition to state claims against.
-/

/-! ## A085200.P8222286569792889753

`A057164(A085199(n))`
-/

namespace A085200.P8222286569792889753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085199 n).toNat

end

end A085200.P8222286569792889753

/-! ## A085200.P15837984811944954517

`A085199(A071155(A085199(A085199(A071156(n)))))`
-/

namespace A085200.P15837984811944954517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 (A071155 (A085199 (A085199 (A071156 n).toNat).toNat).toNat).toNat

end

end A085200.P15837984811944954517

/-! ## A085200.P69686825985875483

`A085199(A071155(A085199(A080300(A014486(n)))))`
-/

namespace A085200.P69686825985875483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 (A071155 (A085199 (A080300 (A014486 n).toNat).toNat).toNat).toNat

end

end A085200.P69686825985875483

/-! ## A085200.P10180465199308897975

`A057508(A085199(n)^A304042(n))`
-/

namespace A085200.P10180465199308897975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (SequenceMachineLib.roundAway ((A085199 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A085200.P10180465199308897975

/-! ## A085200.P14836082435869082984

`A000120(C(A006530(2*(n+2)), A005206(n+4)))`
-/

namespace A085200.P14836082435869082984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A006530 (2 * (n + 2))).toNat (A005206 (n + 4)).toNat)

end

end A085200.P14836082435869082984

/-!
# A085201: Array A(x,y): Position of the concatenation of binary strings A014486(x) & A014486(y) in A014486, listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A085201, there is no canonical definition to state claims against.
-/

/-! ## A085201.P17223725876800476121

`A085202(∑[2*n]%comp[∑[n]])`
-/

namespace A085201.P17223725876800476121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085201.P17223725876800476121

/-! ## A085201.P14273706420963880913

`A085202(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085201.P14273706420963880913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085201.P14273706420963880913

/-! ## A085201.P12342449736558823947

`or(char[1], A085202(A061579(n)))`
-/

namespace A085201.P12342449736558823947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085202 (A061579 n).toNat)

end

end A085201.P12342449736558823947

/-! ## A085201.P11209326275608005662

`A057427(n)*A085202(A061579(n))`
-/

namespace A085201.P11209326275608005662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085202 (A061579 n).toNat

end

end A085201.P11209326275608005662

/-! ## A085201.P13969658487318492362

`A085202(A061579(n))%A081436(n)`
-/

namespace A085201.P13969658487318492362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085202 (A061579 n).toNat) (A081436 n)

end

end A085201.P13969658487318492362

/-! ## A085201.P3555640348439658989

`∑{d}[A085202(A061579(n)), A000010(#)]`
-/

namespace A085201.P3555640348439658989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085201.P3555640348439658989

/-! ## A085201.P17723197258185545804

`A007318(C(2, n))*A085202(A061579(n))`
-/

namespace A085201.P17723197258185545804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A085202 (A061579 n).toNat

end

end A085201.P17723197258185545804

/-! ## A085201.P6791089439603822680

`A085202(A061579(n))+A008683(4*(n+1))`
-/

namespace A085201.P6791089439603822680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A085201.P6791089439603822680

/-! ## A085201.P6616349289895070009

`A014963(4*n+2)*A085202(A061579(n))`
-/

namespace A085201.P6616349289895070009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A085202 (A061579 n).toNat

end

end A085201.P6616349289895070009

/-!
# A085202: Transpose of A085201.

The programs for A085202, there is no canonical definition to state claims against.
-/

/-! ## A085202.P13458180759727062849

`A085201(∑[2*n]%comp[∑[n]])`
-/

namespace A085202.P13458180759727062849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085201 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085202.P13458180759727062849

/-! ## A085202.P10829076619059244833

`A085201(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085202.P10829076619059244833
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085201 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085202.P10829076619059244833

/-! ## A085202.P7457406386460537268

`or(char[1], A085201(A061579(n)))`
-/

namespace A085202.P7457406386460537268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085201 (A061579 n).toNat)

end

end A085202.P7457406386460537268

/-! ## A085202.P5026592742903105306

`A057427(n)*A085201(A061579(n))`
-/

namespace A085202.P5026592742903105306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085201 (A061579 n).toNat

end

end A085202.P5026592742903105306

/-! ## A085202.P13180725890092134546

`lcm(A033999(n), A085201(A061579(n)))`
-/

namespace A085202.P13180725890092134546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A085201 (A061579 n).toNat)

end

end A085202.P13180725890092134546

/-! ## A085202.P12810617791470765844

`and(A057428(n), A085201(A061579(n)))`
-/

namespace A085202.P12810617791470765844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A085201 (A061579 n).toNat)

end

end A085202.P12810617791470765844

/-! ## A085202.P16150681364952744490

`A085201(A061579(n))%A000230(n)`
-/

namespace A085202.P16150681364952744490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085201 (A061579 n).toNat) (A000230 n)

end

end A085202.P16150681364952744490

/-! ## A085202.P6089315910326831503

`and(A085201(A061579(n)), A281482(n))`
-/

namespace A085202.P6089315910326831503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085201 (A061579 n).toNat) (A281482 n)

end

end A085202.P6089315910326831503

/-!
# A085203: Array A(x,y): Position of the totally balanced binary string obtained by concatenating the binary strings A014486(x) & A014486(y) in such a way that the latter is inserted after the least significant 1-bit of the former, followed by the remaining 0-bits, if any. Listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A085203, there is no canonical definition to state claims against.
-/

/-! ## A085203.P12450632175472380756

`A085204(A056943(n)+A003056(n))`
-/

namespace A085203.P12450632175472380756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 (A056943 n + A003056 n).toNat

end

end A085203.P12450632175472380756

/-! ## A085203.P10680304049171469772

`A085204(A056942(n)-A083920(n))`
-/

namespace A085203.P10680304049171469772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 (A056942 n - A083920 n).toNat

end

end A085203.P10680304049171469772

/-! ## A085203.P15218441795451753071

`A085204(∑[2*n]%comp[∑[n]])`
-/

namespace A085203.P15218441795451753071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085203.P15218441795451753071

/-! ## A085203.P18080991126585663519

`A085204(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085203.P18080991126585663519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085203.P18080991126585663519

/-! ## A085203.P3788096999130539402

`A057427(n)*A085204(A061579(n))`
-/

namespace A085203.P3788096999130539402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085204 (A061579 n).toNat

end

end A085203.P3788096999130539402

/-! ## A085203.P190506711633607101

`∑{d}[A085204(A061579(n)), A000010(#)]`
-/

namespace A085203.P190506711633607101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085203.P190506711633607101

/-! ## A085203.P9056318380350532245

`A000040(n+1)%2*A085204(A061579(n))`
-/

namespace A085203.P9056318380350532245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A085204 (A061579 n).toNat

end

end A085203.P9056318380350532245

/-! ## A085203.P1899727214740890931

`A085204(A061579(n))/(A020639(2*(n+1))-1)`
-/

namespace A085203.P1899727214740890931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085204 (A061579 n).toNat : ℚ) / (A020639 (2 * (n + 1)) - 1 : ℚ)

end

end A085203.P1899727214740890931

/-!
# A085204: Transpose of A085203.

The programs for A085204, there is no canonical definition to state claims against.
-/

/-! ## A085204.P16757785268198479493

`A085203(A056943(n)+A003056(n))`
-/

namespace A085204.P16757785268198479493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 (A056943 n + A003056 n).toNat

end

end A085204.P16757785268198479493

/-! ## A085204.P10636524095641508539

`A085203(A056942(n)-A083920(n))`
-/

namespace A085204.P10636524095641508539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 (A056942 n - A083920 n).toNat

end

end A085204.P10636524095641508539

/-! ## A085204.P7038179231904725676

`A085203(∑[2*n]%comp[∑[n]])`
-/

namespace A085204.P7038179231904725676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085204.P7038179231904725676

/-! ## A085204.P7006427196119397788

`A085203(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085204.P7006427196119397788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085204.P7006427196119397788

/-! ## A085204.P3580277402027938887

`A085203(A061579(n))%(∑[n+2]-1)`
-/

namespace A085204.P3580277402027938887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085203 (A061579 n).toNat) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A085204.P3580277402027938887

/-!
# A085205: Array A(x,y): induced by the 2-ary form of the list-function 'list' present in the programming languages Lisp and Scheme, in the same way as A085201 is induced by the 2-ary 'append'-function. Listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A085205, there is no canonical definition to state claims against.
-/

/-! ## A085205.P18218623043078478023

`A085206(A061579(n))`
-/

namespace A085205.P18218623043078478023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085206 (A061579 n).toNat

end

end A085205.P18218623043078478023

/-! ## A085205.P7192304793776663777

`A057518(A072764(n+1))`
-/

namespace A085205.P7192304793776663777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (A072764 (n + 1)).toNat

end

end A085205.P7192304793776663777

/-! ## A085205.P3338474348301857228

`A057508(A085206(n))`
-/

namespace A085205.P3338474348301857228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085206 n).toNat

end

end A085205.P3338474348301857228

/-! ## A085205.P15573202546303813311

`A130945(root(A085206(n), 2)²)`
-/

namespace A085205.P15573202546303813311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (SequenceMachineLib.roundAway (((A085206 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A085205.P15573202546303813311

/-! ## A085205.P1614621617855905198

`A130946(root(A085206(n), 2)²)`
-/

namespace A085205.P1614621617855905198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (SequenceMachineLib.roundAway (((A085206 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A085205.P1614621617855905198

/-! ## A085205.P15915704832143415403

`A130945(or(char[1], A085206(n)))`
-/

namespace A085205.P15915704832143415403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085206 n)).toNat

end

end A085205.P15915704832143415403

/-! ## A085205.P3573761658667040523

`A130946(or(char[1], A085206(n)))`
-/

namespace A085205.P3573761658667040523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085206 n)).toNat

end

end A085205.P3573761658667040523

/-! ## A085205.P4366493167166868160

`A130946(A085206(n)^A304042(n))`
-/

namespace A085205.P4366493167166868160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (SequenceMachineLib.roundAway ((A085206 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A085205.P4366493167166868160

/-!
# A085206: Transpose of A085205.

The programs for A085206, there is no canonical definition to state claims against.
-/

/-! ## A085206.P9363185279789742095

`A085205(A061579(n))`
-/

namespace A085206.P9363185279789742095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085205 (A061579 n).toNat

end

end A085206.P9363185279789742095

/-! ## A085206.P12760965661117928325

`A057518(A072766(n+1))`
-/

namespace A085206.P12760965661117928325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (A072766 (n + 1)).toNat

end

end A085206.P12760965661117928325

/-! ## A085206.P13801304558593128580

`A057508(A085205(n))`
-/

namespace A085206.P13801304558593128580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085205 n).toNat

end

end A085206.P13801304558593128580

/-! ## A085206.P3287345828420811725

`A130945(root(A085205(n), 2)²)`
-/

namespace A085206.P3287345828420811725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (SequenceMachineLib.roundAway (((A085205 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A085206.P3287345828420811725

/-! ## A085206.P10964534784892998647

`A130946(root(A085205(n), 2)²)`
-/

namespace A085206.P10964534784892998647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (SequenceMachineLib.roundAway (((A085205 n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A085206.P10964534784892998647

/-! ## A085206.P15184803669866551912

`A130945(A085205(or(n, char[1])))`
-/

namespace A085206.P15184803669866551912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (A085205 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A085206.P15184803669866551912

/-! ## A085206.P10016027580124253958

`A130946(or(char[2], A085205(n)))`
-/

namespace A085206.P10016027580124253958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085205 n)).toNat

end

end A085206.P10016027580124253958

/-! ## A085206.P12453004462568955365

`A130374(A085205(n)%A020721(n))`
-/

namespace A085206.P12453004462568955365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130374 (Int.tmod (A085205 n) (A020721 n)).toNat

end

end A085206.P12453004462568955365

/-! ## A085206.P16688582501330472366

`A130946(A085205(n)^A304042(n))`
-/

namespace A085206.P16688582501330472366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 (SequenceMachineLib.roundAway ((A085205 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A085206.P16688582501330472366

/-!
# A085207: Array A(x,y): concatenation of binary expansions of x & y, listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ... Zero is expanded as an empty string.

The programs for A085207, there is no canonical definition to state claims against.
-/

/-! ## A085207.P11860872196198924483

`A085208(∑[2*n]%comp[∑[n]])`
-/

namespace A085207.P11860872196198924483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085208 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085207.P11860872196198924483

/-! ## A085207.P9648182545801205480

`A085208(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085207.P9648182545801205480
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085208 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085207.P9648182545801205480

/-! ## A085207.P14460457621106366378

`A054977(n)*A085208(A061579(n))`
-/

namespace A085207.P14460457621106366378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A085208 (A061579 n).toNat

end

end A085207.P14460457621106366378

/-! ## A085207.P14577548317295065228

`A057427(n)*A085208(A061579(n))`
-/

namespace A085207.P14577548317295065228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085208 (A061579 n).toNat

end

end A085207.P14577548317295065228

/-! ## A085207.P8004621338796290494

`lcm(A033999(n), A085208(A061579(n)))`
-/

namespace A085207.P8004621338796290494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A085208 (A061579 n).toNat)

end

end A085207.P8004621338796290494

/-! ## A085207.P18128894111862666417

`or(A002262(n), A085208(A061579(n)))`
-/

namespace A085207.P18128894111862666417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A085208 (A061579 n).toNat)

end

end A085207.P18128894111862666417

/-! ## A085207.P10964519412259301490

`∑{d}[A085208(A061579(n)), A000010(#)]`
-/

namespace A085207.P10964519412259301490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085208 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085207.P10964519412259301490

/-! ## A085207.P5938527017076429574

`A014963((n+2)²+n)*A085208(A061579(n))`
-/

namespace A085207.P5938527017076429574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 2) ^ 2 + n) * A085208 (A061579 n).toNat

end

end A085207.P5938527017076429574

/-!
# A085208: Transpose of A085207.

The programs for A085208, there is no canonical definition to state claims against.
-/

/-! ## A085208.P5039427439211297046

`A085207(∑[2*n]%comp[∑[n]])`
-/

namespace A085208.P5039427439211297046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085208.P5039427439211297046

/-! ## A085208.P4675017823004427594

`A085207(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085208.P4675017823004427594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085208.P4675017823004427594

/-! ## A085208.P1581800801188179115

`A054977(n)*A085207(A061579(n))`
-/

namespace A085208.P1581800801188179115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A085207 (A061579 n).toNat

end

end A085208.P1581800801188179115

/-! ## A085208.P7209894943596435693

`A057427(n)*A085207(A061579(n))`
-/

namespace A085208.P7209894943596435693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085207 (A061579 n).toNat

end

end A085208.P7209894943596435693

/-! ## A085208.P564944609660278000

`A085207(A061579(n))*A158388(n)`
-/

namespace A085208.P564944609660278000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (A061579 n).toNat * A158388 n

end

end A085208.P564944609660278000

/-! ## A085208.P18079699744777016193

`lcm(A033999(n), A085207(A061579(n)))`
-/

namespace A085208.P18079699744777016193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A085207 (A061579 n).toNat)

end

end A085208.P18079699744777016193

/-! ## A085208.P14722079518061697577

`and(A057428(n), A085207(A061579(n)))`
-/

namespace A085208.P14722079518061697577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A085207 (A061579 n).toNat)

end

end A085208.P14722079518061697577

/-! ## A085208.P15597850530258380654

`A007318(C(2, n))*A085207(A061579(n))`
-/

namespace A085208.P15597850530258380654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A085207 (A061579 n).toNat

end

end A085208.P15597850530258380654

/-! ## A085208.P2605480808940272252

`A085207(A061579(n))+A008683(4*(n+1))`
-/

namespace A085208.P2605480808940272252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A085208.P2605480808940272252

/-!
# A085209: Array A085207 in binary.

The programs for A085209, there is no canonical definition to state claims against.
-/

/-! ## A085209.P11885221767529747344

`A007088(A085207(n))`
-/

namespace A085209.P11885221767529747344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A085207 n).toNat

end

end A085209.P11885221767529747344

/-! ## A085209.P3898946173951167815

`A085210(A056943(n)+A003056(n))`
-/

namespace A085209.P3898946173951167815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085210 (A056943 n + A003056 n).toNat

end

end A085209.P3898946173951167815

/-! ## A085209.P10614162437968338446

`A085210(A061579(n))`
-/

namespace A085209.P10614162437968338446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085210 (A061579 n).toNat

end

end A085209.P10614162437968338446

/-! ## A085209.P12142520185460135750

`A185544(2*A085207(n))`
-/

namespace A085209.P12142520185460135750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A085207 n).toNat

end

end A085209.P12142520185460135750

/-! ## A085209.P1464230284934312547

`A185544(A085207(n)+A085207(n))`
-/

namespace A085209.P1464230284934312547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A085207 n + A085207 n).toNat

end

end A085209.P1464230284934312547

/-!
# A085210: Array A085208 in binary.

The programs for A085210, there is no canonical definition to state claims against.
-/

/-! ## A085210.P2608473621434993770

`A007088(A085208(n))`
-/

namespace A085210.P2608473621434993770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A085208 n).toNat

end

end A085210.P2608473621434993770

/-! ## A085210.P11121807356835027617

`A085209(A056943(n)+A003056(n))`
-/

namespace A085210.P11121807356835027617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (A056943 n + A003056 n).toNat

end

end A085210.P11121807356835027617

/-! ## A085210.P1372868349617026445

`A085209(A056942(n)-A083920(n))`
-/

namespace A085210.P1372868349617026445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (A056942 n - A083920 n).toNat

end

end A085210.P1372868349617026445

/-! ## A085210.P6375752279888652918

`A085209(A061579(n))`
-/

namespace A085210.P6375752279888652918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085209 (A061579 n).toNat

end

end A085210.P6375752279888652918

/-! ## A085210.P15186921960429998608

`A185544(2*A085208(n))`
-/

namespace A085210.P15186921960429998608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A085208 n).toNat

end

end A085210.P15186921960429998608

/-! ## A085210.P5989339711216698533

`A185544(A085208(n)+A085208(n))`
-/

namespace A085210.P5989339711216698533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A085208 n + A085208 n).toNat

end

end A085210.P5989339711216698533

/-!
# A085211: Array A(x,y): concatenation of the binary expansions of x & y in such a way that 'y' is inserted after the least significant 1-bit of 'x', followed by the remaining 0-bits, if any. Listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ... Zero is expanded as an empty string.

The programs for A085211, there is no canonical definition to state claims against.
-/

/-! ## A085211.P6325399459168594842

`A085212(∑[2*n]%comp[∑[n]])`
-/

namespace A085211.P6325399459168594842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085211.P6325399459168594842

/-! ## A085211.P4112889486020574804

`A085212(∑[char[∑[n]]]²-n-1)`
-/

namespace A085211.P4112889486020574804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A085211.P4112889486020574804

/-! ## A085211.P1219460049499805158

`∑{d}[A085212(A061579(n)), A000010(#)]`
-/

namespace A085211.P1219460049499805158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085211.P1219460049499805158

/-! ## A085211.P16054916529221859725

`A085212(A061579(n))*A093178(2*n)`
-/

namespace A085211.P16054916529221859725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 (A061579 n).toNat * A093178 (2 * n)

end

end A085211.P16054916529221859725

/-! ## A085211.P14063334364063304157

`A085212(A061579(n))^gcd(2, A000040(n+1))`
-/

namespace A085211.P14063334364063304157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 (A061579 n).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A085211.P14063334364063304157

/-! ## A085211.P6454247841255137717

`A020639(8*n+4)+A085212(A061579(n))-2`
-/

namespace A085211.P6454247841255137717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 4) + (A085212 (A061579 n).toNat - 2)

end

end A085211.P6454247841255137717

/-! ## A085211.P1095326636576469528

`A027907(n²)*A085212(A061579(n))`
-/

namespace A085211.P1095326636576469528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (n ^ 2) * A085212 (A061579 n).toNat

end

end A085211.P1095326636576469528

/-! ## A085211.P12105853587823960625

`A007318(A151933(n))*A085212(A061579(n))`
-/

namespace A085211.P12105853587823960625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A151933 n).toNat * A085212 (A061579 n).toNat

end

end A085211.P12105853587823960625

/-!
# A085212: Transpose of A085211.

The programs for A085212, there is no canonical definition to state claims against.
-/

/-! ## A085212.P9967921111386969103

`A085211(∑[2*n]%comp[∑[n]])`
-/

namespace A085212.P9967921111386969103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085211 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085212.P9967921111386969103

/-! ## A085212.P4894654867801765172

`A085211(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085212.P4894654867801765172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085211 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085212.P4894654867801765172

/-! ## A085212.P16405005297713486233

`A007318(C(2, n))*A085211(A061579(n))`
-/

namespace A085212.P16405005297713486233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A085211 (A061579 n).toNat

end

end A085212.P16405005297713486233

/-! ## A085212.P11456320690245627063

`A085211(A061579(n))^A000041(C(2, n))`
-/

namespace A085212.P11456320690245627063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085211 (A061579 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A085212.P11456320690245627063

/-! ## A085212.P5449540297348101803

`A008683(gcd(n, n+1))*A085211(A061579(n))`
-/

namespace A085212.P5449540297348101803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A085211 (A061579 n).toNat

end

end A085212.P5449540297348101803

/-! ## A085212.P10456251597945787853

`C(2, A000040(n+1))!*A085211(A061579(n))`
-/

namespace A085212.P10456251597945787853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000040 (n + 1)).toNat) : ℤ) * A085211 (A061579 n).toNat

end

end A085212.P10456251597945787853

/-! ## A085212.P13782992909864058429

`A008683(A014963(n+1))²*A085211(A061579(n))`
-/

namespace A085212.P13782992909864058429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A085211 (A061579 n).toNat

end

end A085212.P13782992909864058429

/-!
# A085213: Array A085211 in binary.

The programs for A085213, there is no canonical definition to state claims against.
-/

/-! ## A085213.P18327796044553630247

`A007088(A085211(n))`
-/

namespace A085213.P18327796044553630247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A085211 n).toNat

end

end A085213.P18327796044553630247

/-! ## A085213.P12972212856235623815

`A085214(A056943(n)+A003056(n))`
-/

namespace A085213.P12972212856235623815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085214 (A056943 n + A003056 n).toNat

end

end A085213.P12972212856235623815

/-! ## A085213.P6923813616414220807

`A085214(A056942(n)-A083920(n))`
-/

namespace A085213.P6923813616414220807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085214 (A056942 n - A083920 n).toNat

end

end A085213.P6923813616414220807

/-! ## A085213.P13632171292700724451

`A085214(A061579(n))`
-/

namespace A085213.P13632171292700724451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085214 (A061579 n).toNat

end

end A085213.P13632171292700724451

/-! ## A085213.P18064732145975161010

`A185544(2*A085211(n))`
-/

namespace A085213.P18064732145975161010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A085211 n).toNat

end

end A085213.P18064732145975161010

/-! ## A085213.P17370386261264006209

`A185544(A085211(n)+A085211(n))`
-/

namespace A085213.P17370386261264006209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A085211 n + A085211 n).toNat

end

end A085213.P17370386261264006209

/-!
# A085214: Array A085212 in binary.

The programs for A085214, there is no canonical definition to state claims against.
-/

/-! ## A085214.P12302338762159637973

`A007088(A085212(n))`
-/

namespace A085214.P12302338762159637973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A085212 n).toNat

end

end A085214.P12302338762159637973

/-! ## A085214.P11328750385904947360

`A085213(A056943(n)+A003056(n))`
-/

namespace A085214.P11328750385904947360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085213 (A056943 n + A003056 n).toNat

end

end A085214.P11328750385904947360

/-! ## A085214.P467773170151545349

`A085213(A056942(n)-A083920(n))`
-/

namespace A085214.P467773170151545349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085213 (A056942 n - A083920 n).toNat

end

end A085214.P467773170151545349

/-! ## A085214.P4963367639145312216

`A085213(A061579(n))`
-/

namespace A085214.P4963367639145312216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085213 (A061579 n).toNat

end

end A085214.P4963367639145312216

/-! ## A085214.P13571885990592037747

`A185544(2*A085212(n))`
-/

namespace A085214.P13571885990592037747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A085212 n).toNat

end

end A085214.P13571885990592037747

/-! ## A085214.P6373651463530670768

`A185544(A085212(n)+A085212(n))`
-/

namespace A085214.P6373651463530670768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A085212 n + A085212 n).toNat

end

end A085214.P6373651463530670768

/-!
# A085215: Square array A(x,y) = the number whose factorial expansion A007623 is that of x and y concatenated; zero expanded as empty string; read by ascending antidiagonals: A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ...

The programs for A085215, there is no canonical definition to state claims against.
-/

/-! ## A085215.P15315144815014098030

`A085216(A056943(n)+A003056(n))`
-/

namespace A085215.P15315144815014098030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085216 (A056943 n + A003056 n).toNat

end

end A085215.P15315144815014098030

/-! ## A085215.P1706395676833369992

`A085216(A056942(n)-A083920(n))`
-/

namespace A085215.P1706395676833369992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085216 (A056942 n - A083920 n).toNat

end

end A085215.P1706395676833369992

/-! ## A085215.P17419496718466234359

`A085216(∑[2*n]%comp[∑[n]])`
-/

namespace A085215.P17419496718466234359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085216 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085215.P17419496718466234359

/-! ## A085215.P10726902215906943930

`A085216(∑[char[∑[n]]]²-n-1)`
-/

namespace A085215.P10726902215906943930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085216 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A085215.P10726902215906943930

/-! ## A085215.P11165902105787310600

`ceil(acot(n))*A085216(A061579(n))`
-/

namespace A085215.P11165902105787310600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A085216 (A061579 n).toNat

end

end A085215.P11165902105787310600

/-! ## A085215.P5248289545682577870

`A057427(n)*A085216(A061579(n))`
-/

namespace A085215.P5248289545682577870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085216 (A061579 n).toNat

end

end A085215.P5248289545682577870

/-! ## A085215.P920569014101029261

`A085216(A061579(n))%A000124(n)`
-/

namespace A085215.P920569014101029261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085216 (A061579 n).toNat) (A000124 n)

end

end A085215.P920569014101029261

/-! ## A085215.P16950582922663208441

`and(A085216(A061579(n)), A290683(n))`
-/

namespace A085215.P16950582922663208441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085216 (A061579 n).toNat) (A290683 n)

end

end A085215.P16950582922663208441

/-!
# A085216: Transpose of A085215.

The programs for A085216, there is no canonical definition to state claims against.
-/

/-! ## A085216.P5680653742208633380

`A085215(∑[2*n]%comp[∑[n]])`
-/

namespace A085216.P5680653742208633380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085215 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085216.P5680653742208633380

/-! ## A085216.P12570517406939386600

`A085215(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085216.P12570517406939386600
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085215 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085216.P12570517406939386600

/-! ## A085216.P7083872005559094366

`or(char[1], A085215(A061579(n)))`
-/

namespace A085216.P7083872005559094366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085215 (A061579 n).toNat)

end

end A085216.P7083872005559094366

/-! ## A085216.P12015315043994848466

`A057427(n)*A085215(A061579(n))`
-/

namespace A085216.P12015315043994848466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085215 (A061579 n).toNat

end

end A085216.P12015315043994848466

/-! ## A085216.P2250623709066015322

`A085215(A061579(n))%A000124(n)`
-/

namespace A085216.P2250623709066015322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085215 (A061579 n).toNat) (A000124 n)

end

end A085216.P2250623709066015322

/-! ## A085216.P2160020794690550921

`and(A057428(n), A085215(A061579(n)))`
-/

namespace A085216.P2160020794690550921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A085215 (A061579 n).toNat)

end

end A085216.P2160020794690550921

/-!
# A085217: Factorial expansions of the entries in A085216.

The programs for A085217, there is no canonical definition to state claims against.
-/

/-! ## A085217.P7588776738561963578

`A007623(A085216(n))`
-/

namespace A085217.P7588776738561963578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085216 n).toNat

end

end A085217.P7588776738561963578

/-! ## A085217.P363127785393498761

`A007623(A085215(∑[2*n]%comp[∑[n]]))`
-/

namespace A085217.P363127785393498761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085215 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A085217.P363127785393498761

/-! ## A085217.P3905054828920723607

`A007623(A085215(A061579(n)))`
-/

namespace A085217.P3905054828920723607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085215 (A061579 n).toNat).toNat

end

end A085217.P3905054828920723607

/-! ## A085217.P15312264264043686133

`A085221(C(A085216(n)+1, 2))`
-/

namespace A085217.P15312264264043686133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 (Nat.choose (A085216 n + 1).toNat 2)

end

end A085217.P15312264264043686133

/-! ## A085217.P18263319321128097968

`A085210(n)/A317933(A005338(2*n+11))`
-/

namespace A085217.P18263319321128097968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085210 n : ℚ) / (A317933 (A005338 (2 * n + 11)).toNat : ℚ)

end

end A085217.P18263319321128097968

/-!
# A085218: Factorial expansions of the entries in A085217.

The programs for A085218, there is no canonical definition to state claims against.
-/

/-! ## A085218.P18054112845582959421

`A007623(A085217(n))`
-/

namespace A085218.P18054112845582959421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085217 n).toNat

end

end A085218.P18054112845582959421

/-! ## A085218.P1119157859042437670

`A007623(A007623(A085216(n)))`
-/

namespace A085218.P1119157859042437670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A007623 (A085216 n).toNat).toNat

end

end A085218.P1119157859042437670

/-! ## A085218.P877376207088516519

`A007623(A085210(n))%A292476(3*n)`
-/

namespace A085218.P877376207088516519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007623 (A085210 n).toNat) (A292476 (3 * n))

end

end A085218.P877376207088516519

/-! ## A085218.P17471873808101459362

`A007623(A085210(n)^A046601(n+1))`
-/

namespace A085218.P17471873808101459362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway ((A085210 n : ℚ) ^ (A046601 (n + 1) : ℤ))).toNat

end

end A085218.P17471873808101459362

/-! ## A085218.P16893331888892664292

`A007623(A085210(n)^A046622(n+1))`
-/

namespace A085218.P16893331888892664292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway ((A085210 n : ℚ) ^ (A046622 (n + 1) : ℤ))).toNat

end

end A085218.P16893331888892664292

/-!
# A085219: Array A(x,y): "rised concatenation" of factorial expansions of x & y, listed antidiagonalwise as A(0,0), A(1,0), A(0,1), A(2,0), A(1,1), A(0,2), ... Zero is expanded as an empty string.

The programs for A085219, there is no canonical definition to state claims against.
-/

/-! ## A085219.P10462230068875406925

`A085220(A056943(n)+A003056(n))`
-/

namespace A085219.P10462230068875406925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 (A056943 n + A003056 n).toNat

end

end A085219.P10462230068875406925

/-! ## A085219.P12635295388240727144

`A085220(A056942(n)-A083920(n))`
-/

namespace A085219.P12635295388240727144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 (A056942 n - A083920 n).toNat

end

end A085219.P12635295388240727144

/-! ## A085219.P7601338615979886041

`A085220(∑[2*n]%comp[∑[n]])`
-/

namespace A085219.P7601338615979886041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085219.P7601338615979886041

/-! ## A085219.P5271706395846840261

`A085220(∑[char[∑[n]]]²-n-1)`
-/

namespace A085219.P5271706395846840261
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085220 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A085219.P5271706395846840261

/-! ## A085219.P12029877149513521062

`lcm((-1)^n, A085220(A061579(n)))`
-/

namespace A085219.P12029877149513521062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A085220 (A061579 n).toNat)

end

end A085219.P12029877149513521062

/-! ## A085219.P2637537369435210419

`A057427(n)*A085220(A061579(n))`
-/

namespace A085219.P2637537369435210419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085220 (A061579 n).toNat

end

end A085219.P2637537369435210419

/-! ## A085219.P91044070794357807

`A085220(A061579(n))%A000125(n)`
-/

namespace A085219.P91044070794357807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085220 (A061579 n).toNat) (A000125 n)

end

end A085219.P91044070794357807

/-!
# A085220: Transpose of A085219.

The programs for A085220, there is no canonical definition to state claims against.
-/

/-! ## A085220.P13117531520961585256

`A085219(A056943(n)+A003056(n))`
-/

namespace A085220.P13117531520961585256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 (A056943 n + A003056 n).toNat

end

end A085220.P13117531520961585256

/-! ## A085220.P11725317384684283621

`A085219(A056942(n)-A083920(n))`
-/

namespace A085220.P11725317384684283621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 (A056942 n - A083920 n).toNat

end

end A085220.P11725317384684283621

/-! ## A085220.P13727934243555485898

`A085219(∑[2*n]%comp[∑[n]])`
-/

namespace A085220.P13727934243555485898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085220.P13727934243555485898

/-! ## A085220.P5175412720381495024

`A085219(∑[char[∑[n]]]²-(n+1))`
-/

namespace A085220.P5175412720381495024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085219 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A085220.P5175412720381495024

/-! ## A085220.P10380750371287430151

`lcm((-1)^n, A085219(A061579(n)))`
-/

namespace A085220.P10380750371287430151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A085219 (A061579 n).toNat)

end

end A085220.P10380750371287430151

/-! ## A085220.P9701331721590870132

`A057427(n)*A085219(A061579(n))`
-/

namespace A085220.P9701331721590870132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A085219 (A061579 n).toNat

end

end A085220.P9701331721590870132

/-! ## A085220.P7053655738984553505

`A085219(A061579(n))%A000125(n)`
-/

namespace A085220.P7053655738984553505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085219 (A061579 n).toNat) (A000125 n)

end

end A085220.P7053655738984553505

/-! ## A085220.P10071162415243767143

`and(A057428(n), A085219(A061579(n)))`
-/

namespace A085220.P10071162415243767143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A085219 (A061579 n).toNat)

end

end A085220.P10071162415243767143

/-!
# A085221: Factorial expansions of the entries in A085219.

The programs for A085221, there is no canonical definition to state claims against.
-/

/-! ## A085221.P9998655111822781101

`A085222(A056943(n)+A003056(n))`
-/

namespace A085221.P9998655111822781101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085222 (A056943 n + A003056 n).toNat

end

end A085221.P9998655111822781101

/-! ## A085221.P3920779853694901125

`A085222(A056942(n)-A083920(n))`
-/

namespace A085221.P3920779853694901125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085222 (A056942 n - A083920 n).toNat

end

end A085221.P3920779853694901125

/-! ## A085221.P5620060186045926663

`A085222(A061579(n))`
-/

namespace A085221.P5620060186045926663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085222 (A061579 n).toNat

end

end A085221.P5620060186045926663

/-! ## A085221.P3301832081183992928

`A007623(A085219(n))`
-/

namespace A085221.P3301832081183992928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085219 n).toNat

end

end A085221.P3301832081183992928

/-! ## A085221.P5867683640581697362

`A007623(A085220(∑[2*n]%comp[∑[n]]))`
-/

namespace A085221.P5867683640581697362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085220 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A085221.P5867683640581697362

/-! ## A085221.P14041203627473434972

`A007623(A085220(∑[char[∑[n]]]²-n-1))`
-/

namespace A085221.P14041203627473434972
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085220 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat).toNat

end

end A085221.P14041203627473434972

/-!
# A085222: Factorial expansions of the entries in A085220.

The programs for A085222, there is no canonical definition to state claims against.
-/

/-! ## A085222.P15319958296675364779

`A085221(A056943(n)+A003056(n))`
-/

namespace A085222.P15319958296675364779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 (A056943 n + A003056 n).toNat

end

end A085222.P15319958296675364779

/-! ## A085222.P1966447197958775090

`A085221(A056942(n)-A083920(n))`
-/

namespace A085222.P1966447197958775090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 (A056942 n - A083920 n).toNat

end

end A085222.P1966447197958775090

/-! ## A085222.P9935568483292110693

`A085221(∑[2*n]%comp[∑[n]])`
-/

namespace A085222.P9935568483292110693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A085222.P9935568483292110693

/-! ## A085222.P11013459301365141025

`A085221(∑[char[∑[n]]]²-n-1)`
-/

namespace A085222.P11013459301365141025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085221 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A085222.P11013459301365141025

/-! ## A085222.P6200632438489336942

`A007623(A085220(n))`
-/

namespace A085222.P6200632438489336942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085220 n).toNat

end

end A085222.P6200632438489336942

/-!
# A085223: Row 1 of A085201.

The programs for A085223, there is no canonical definition to state claims against.
-/

/-! ## A085223.P3525932530886050182

`A057164(A072795(A057164(n)))`
-/

namespace A085223.P3525932530886050182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A072795 (A057164 n).toNat).toNat

end

end A085223.P3525932530886050182

/-! ## A085223.P16782121828861282622

`A057508(A072795(A057508(n)))`
-/

namespace A085223.P16782121828861282622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A072795 (A057508 n).toNat).toNat

end

end A085223.P16782121828861282622

/-! ## A085223.P13617447786136008013

`A080300(A085224(n))`
-/

namespace A085223.P13617447786136008013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A085224 n).toNat

end

end A085223.P13617447786136008013

/-! ## A085223.P12059551149181243631

`A085196(n)+A072795(n)`
-/

namespace A085223.P12059551149181243631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 n + A072795 n

end

end A085223.P12059551149181243631

/-! ## A085223.P13939121128259799635

`eq[1, A080237(n+1)]+1`
-/

namespace A085223.P13939121128259799635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085223.P13939121128259799635

/-! ## A085223.P15406610106529265293

`eq[2, A295568(n+1)]+1`
-/

namespace A085223.P15406610106529265293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085223.P15406610106529265293

/-! ## A085223.P17529598923052756498

`A057509(A072795(n))`
-/

namespace A085223.P17529598923052756498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A072795 n).toNat

end

end A085223.P17529598923052756498

/-! ## A085223.P4829447088009007690

`eq[2, A085191(n)]`
-/

namespace A085223.P4829447088009007690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085223.P4829447088009007690

/-! ## A085223.P9778644333918169356

`lt[1, A057551(n)]+1`
-/

namespace A085223.P9778644333918169356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085223.P9778644333918169356

/-! ## A085223.P5849206280265962848

`eq[1, gcd(2, A059985(n))]`
-/

namespace A085223.P5849206280265962848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A059985 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085223.P5849206280265962848

/-! ## A085223.P10965468550090309313

`eq[A080237(n+1), A130130(n)]`
-/

namespace A085223.P10965468550090309313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085223.P10965468550090309313

/-! ## A085223.P3751546392262555344

`eq[A057551(n), A226478(n+1)]`
-/

namespace A085223.P3751546392262555344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085223.P3751546392262555344

/-! ## A085223.P4294723139390667898

`eq[A158799(n), A295568(n+1)]`
-/

namespace A085223.P4294723139390667898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085223.P4294723139390667898

/-! ## A085223.P6123381254350256770

`A085159(A085168(A085225(n)))`
-/

namespace A085223.P6123381254350256770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A085168 (A085225 n).toNat).toNat

end

end A085223.P6123381254350256770

/-! ## A085223.P4923078125099366877

`A057501(A057548(n))`
-/

namespace A085223.P4923078125099366877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057548 n).toNat

end

end A085223.P4923078125099366877

/-! ## A085223.P18390097727023998857

`A082332(A080067(n))`
-/

namespace A085223.P18390097727023998857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082332 (A080067 n).toNat

end

end A085223.P18390097727023998857

/-! ## A085223.P12201437588216076697

`A057501(record[A057501(n+1)])`
-/

namespace A085223.P12201437588216076697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085223.P12201437588216076697

/-! ## A085223.P13219617561015163414

`A072094(record[A072094(n+1)])`
-/

namespace A085223.P13219617561015163414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085223.P13219617561015163414

/-! ## A085223.P3196131257234571347

`A057503(A057548(2*n-n))`
-/

namespace A085223.P3196131257234571347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A057548 (2 * n - n)).toNat

end

end A085223.P3196131257234571347

/-!
# A085224: A014486-encodings of the plane general trees whose rightmost subtree (branching from the root) is just a stick: /.

The programs for A085224, there is no canonical definition to state claims against.
-/

/-! ## A085224.P10649710704583941727

`4*A014486(n)+2`
-/

namespace A085224.P10649710704583941727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014486 n + 2

end

end A085224.P10649710704583941727

/-! ## A085224.P11097035028351696449

`A014486(A085223(n))`
-/

namespace A085224.P11097035028351696449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A085223 n).toNat

end

end A085224.P11097035028351696449

/-! ## A085224.P2300866908441474443

`2*(A194045(n)+1)`
-/

namespace A085224.P2300866908441474443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194045 n + 1)

end

end A085224.P2300866908441474443

/-! ## A085224.P6249688808747465902

`8*A057520(n)+2`
-/

namespace A085224.P6249688808747465902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A057520 n + 2

end

end A085224.P6249688808747465902

/-! ## A085224.P7748358880001963171

`record[lcm(2, A057520(n+1))]`
-/

namespace A085224.P7748358880001963171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A057520 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085224.P7748358880001963171

/-! ## A085224.P12705839468510125050

`A014486(A057508(A072795(A057508(n))))`
-/

namespace A085224.P12705839468510125050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057508 (A072795 (A057508 n).toNat).toNat).toNat

end

end A085224.P12705839468510125050

/-! ## A085224.P5199935542048602775

`A014486(A057501(A057548(n)))`
-/

namespace A085224.P5199935542048602775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057501 (A057548 n).toNat).toNat

end

end A085224.P5199935542048602775

/-! ## A085224.P12750113254263010794

`A014486(A057503(A057548(A069770(A069770(n)))))`
-/

namespace A085224.P12750113254263010794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057503 (A057548 (A069770 (A069770 n).toNat).toNat).toNat).toNat

end

end A085224.P12750113254263010794

/-! ## A085224.P15434987631461411725

`A016825(A014486(n))`
-/

namespace A085224.P15434987631461411725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A014486 n).toNat

end

end A085224.P15434987631461411725

/-! ## A085224.P13360194584944644959

`A017089(A057520(n))`
-/

namespace A085224.P13360194584944644959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A057520 n).toNat

end

end A085224.P13360194584944644959

/-! ## A085224.P1549957005218338737

`A017089(A014486(n)/2)`
-/

namespace A085224.P1549957005218338737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A085224.P1549957005218338737

/-! ## A085224.P5777738109196639159

`filter[A017089(n), A080116(#)]`
-/

namespace A085224.P5777738109196639159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A085224.P5777738109196639159

/-! ## A085224.P12632210533233683855

`filter[A014486(n), A098725(#)]`
-/

namespace A085224.P12632210533233683855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A085224.P12632210533233683855

/-! ## A085224.P6736035334663214655

`filter[A014486(n), A166486(#)]`
-/

namespace A085224.P6736035334663214655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A085224.P6736035334663214655

/-! ## A085224.P17305208707036375476

`filter[A014486(n), A359820(#)]`
-/

namespace A085224.P17305208707036375476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A085224.P17305208707036375476

/-! ## A085224.P7455392124815235165

`∩[A014486(n), A017089(n)]`
-/

namespace A085224.P7455392124815235165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085224.P7455392124815235165

/-! ## A085224.P5069302457556173276

`filter[A014486(n+1), A353491(#)]`
-/

namespace A085224.P5069302457556173276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A085224.P5069302457556173276

/-! ## A085224.P2887261675334421439

`filter[A014486(n+1), A359374(#)]`
-/

namespace A085224.P2887261675334421439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A085224.P2887261675334421439

/-! ## A085224.P3392876194720772253

`filter[A014486(n+1), A391844(#)]`
-/

namespace A085224.P3392876194720772253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A085224.P3392876194720772253

/-! ## A085224.P9584100541408240528

`filter[A016825(2*n), A080116(#)]`
-/

namespace A085224.P9584100541408240528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A085224.P9584100541408240528

/-!
# A085225: Row 1 of A085203.

The programs for A085225, there is no canonical definition to state claims against.
-/

/-! ## A085225.P3261786274232197170

`∑[val(A057547(n), 2)]`
-/

namespace A085225.P3261786274232197170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057547 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085225.P3261786274232197170

/-! ## A085225.P11561784339041080817

`A295568(n)+a(n-1)` with `a(0)=1`
-/

namespace A085225.P11561784339041080817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295568 n + a (n - 1)

end

end A085225.P11561784339041080817

/-! ## A085225.P422044643808177312

`A085223(n+1)-1`
-/

namespace A085225.P422044643808177312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 (n + 1) - 1

end

end A085225.P422044643808177312

/-! ## A085225.P14387678158959823048

`eq[2, A085192(n+1)]`
-/

namespace A085225.P14387678158959823048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085225.P14387678158959823048

/-! ## A085225.P16894792140319588092

`eq[2, A080237(n+2)]`
-/

namespace A085225.P16894792140319588092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085225.P16894792140319588092

/-! ## A085225.P15962880194107304007

`eq[3, A295568(n+2)]`
-/

namespace A085225.P15962880194107304007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295568 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085225.P15962880194107304007

/-! ## A085225.P11519346490241822071

`record[A085167(n+1)]`
-/

namespace A085225.P11519346490241822071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085225.P11519346490241822071

/-! ## A085225.P3065204619074614037

`A085167(A072795(n))`
-/

namespace A085225.P3065204619074614037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 (A072795 n).toNat

end

end A085225.P3065204619074614037

/-! ## A085225.P9536792897802852369

`A082315(A072795(n+1))-1`
-/

namespace A085225.P9536792897802852369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 (A072795 (n + 1)).toNat - 1

end

end A085225.P9536792897802852369

/-! ## A085225.P14513165316353699239

`lt[1, A057550(n)]`
-/

namespace A085225.P14513165316353699239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085225.P14513165316353699239

/-! ## A085225.P2222803000719395983

`lt[Δ[A057551(n)], 0]`
-/

namespace A085225.P2222803000719395983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A085225.P2222803000719395983

/-! ## A085225.P12261128508431191663

`lt[1, Δ[A057549(n)]]`
-/

namespace A085225.P12261128508431191663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057549 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085225.P12261128508431191663

/-! ## A085225.P6564380375954011780

`eq[1, A226478(n+2)]`
-/

namespace A085225.P6564380375954011780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085225.P6564380375954011780

/-! ## A085225.P5861071762757190832

`eq[2, Δ[A014486(n+1)]]`
-/

namespace A085225.P5861071762757190832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085225.P5861071762757190832

/-! ## A085225.P11591973205417004294

`A023443(A085223(n+1))`
-/

namespace A085225.P11591973205417004294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085223 (n + 1)).toNat

end

end A085225.P11591973205417004294

/-! ## A085225.P4849941216471210385

`A085159(A057548(n))`
-/

namespace A085225.P4849941216471210385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A057548 n).toNat

end

end A085225.P4849941216471210385

/-! ## A085225.P14717733637177198997

`A057501(A057548(n+1))-1`
-/

namespace A085225.P14717733637177198997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057548 (n + 1)).toNat - 1

end

end A085225.P14717733637177198997

/-! ## A085225.P7098732881584655315

`lt[1, Δ[A130922(n)]]`
-/

namespace A085225.P7098732881584655315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085225.P7098732881584655315

/-! ## A085225.P13607319123121347628

`A085203(∑[n+1]+1)`
-/

namespace A085225.P13607319123121347628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085225.P13607319123121347628

/-! ## A085225.P6478086669726218456

`A085204(∑[n+1]+n)`
-/

namespace A085225.P6478086669726218456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085204 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A085225.P6478086669726218456

/-!
# A085226: Row 0 of A085205.

The programs for A085226, there is no canonical definition to state claims against.
-/

/-! ## A085226.P14710984629069916765

`A057548(A085223(n))-1`
-/

namespace A085226.P14710984629069916765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A085223 n).toNat - 1

end

end A085226.P14710984629069916765

/-! ## A085226.P8555921465598880817

`A057518(A057548(n))`
-/

namespace A085226.P8555921465598880817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (A057548 n).toNat

end

end A085226.P8555921465598880817

/-! ## A085226.P2862591301518158473

`A057518(eq[1, A057515(n)])`
-/

namespace A085226.P2862591301518158473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085226.P2862591301518158473

/-! ## A085226.P3474696673939999770

`A057518(eq[1, A083923(n)])`
-/

namespace A085226.P3474696673939999770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085226.P3474696673939999770

/-! ## A085226.P16649878563223604732

`A057518(record[A057161(n+1)])`
-/

namespace A085226.P16649878563223604732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085226.P16649878563223604732

/-! ## A085226.P2081227305155945474

`A057518(record[A057501(n+1)])`
-/

namespace A085226.P2081227305155945474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085226.P2081227305155945474

/-! ## A085226.P5285318939841828490

`A057518(record[A057502(n+1)])`
-/

namespace A085226.P5285318939841828490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085226.P5285318939841828490

/-! ## A085226.P12238803473665405260

`∩[A057518(n+1), A085223(n)]`
-/

namespace A085226.P12238803473665405260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085226.P12238803473665405260

/-! ## A085226.P5331617557180690051

`A057508(A085227(n))`
-/

namespace A085226.P5331617557180690051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085227 n).toNat

end

end A085226.P5331617557180690051

/-! ## A085226.P18166144102659049557

`A057164(A072795(A057548(A057164(n))))`
-/

namespace A085226.P18166144102659049557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A072795 (A057548 (A057164 n).toNat).toNat).toNat

end

end A085226.P18166144102659049557

/-! ## A085226.P7897934877637320848

`A057161(A057548(A072795(n)))`
-/

namespace A085226.P7897934877637320848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A057548 (A072795 n).toNat).toNat

end

end A085226.P7897934877637320848

/-! ## A085226.P16864305241313780020

`A057164(A057163(A057548(A080067(n))))`
-/

namespace A085226.P16864305241313780020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057163 (A057548 (A080067 n).toNat).toNat).toNat

end

end A085226.P16864305241313780020

/-! ## A085226.P7749851147536193711

`A085159(A085168(A057548(A085225(n))))`
-/

namespace A085226.P7749851147536193711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A085168 (A057548 (A085225 n).toNat).toNat).toNat

end

end A085226.P7749851147536193711

/-! ## A085226.P15533609309044764593

`A057503(A057548(A057548(A069770(A069770(n)))))`
-/

namespace A085226.P15533609309044764593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A057548 (A057548 (A069770 (A069770 n).toNat).toNat).toNat).toNat

end

end A085226.P15533609309044764593

/-! ## A085226.P5095751647528489755

`A072764(∑[n+1]+2)`
-/

namespace A085226.P5095751647528489755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A085226.P5095751647528489755

/-! ## A085226.P4738815522073379514

`A072766(∑[n+2])`
-/

namespace A085226.P4738815522073379514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085226.P4738815522073379514

/-! ## A085226.P8925314492929251469

`A085205(∑[n])`
-/

namespace A085226.P8925314492929251469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085205 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085226.P8925314492929251469

/-! ## A085226.P16740925596269393999

`A085206(∑[n]+n)`
-/

namespace A085226.P16740925596269393999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085206 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A085226.P16740925596269393999

/-!
# A085227: Column 0 of A085205.

The programs for A085227, there is no canonical definition to state claims against.
-/

/-! ## A085227.P7062444336266050113

`A057518(A072795(n))`
-/

namespace A085227.P7062444336266050113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (A072795 n).toNat

end

end A085227.P7062444336266050113

/-! ## A085227.P10428658858180190527

`A057518(eq[1, A083924(n)])`
-/

namespace A085227.P10428658858180190527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085227.P10428658858180190527

/-! ## A085227.P10804949721651162840

`A072795(A057548(n))`
-/

namespace A085227.P10804949721651162840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 (A057548 n).toNat

end

end A085227.P10804949721651162840

/-! ## A085227.P5529472689733325064

`A057508(A085226(n))`
-/

namespace A085227.P5529472689733325064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085226 n).toNat

end

end A085227.P5529472689733325064

/-! ## A085227.P1981597432939871962

`record[A057504(A057548(n+1))]`
-/

namespace A085227.P1981597432939871962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (A057548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085227.P1981597432939871962

/-! ## A085227.P15222418758623560856

`A085168(A057548(A085225(n)))`
-/

namespace A085227.P15222418758623560856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A057548 (A085225 n).toNat).toNat

end

end A085227.P15222418758623560856

/-! ## A085227.P6981078557973099859

`A057163(A057548(A080067(A057164(n))))`
-/

namespace A085227.P6981078557973099859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057548 (A080067 (A057164 n).toNat).toNat).toNat

end

end A085227.P6981078557973099859

/-! ## A085227.P11556876325177704624

`A072795(A127292(A072795(A127291(n))))`
-/

namespace A085227.P11556876325177704624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 (A127292 (A072795 (A127291 n).toNat).toNat).toNat

end

end A085227.P11556876325177704624

/-! ## A085227.P3344921802935511191

`A069770(A057548(A057548(A069770(A069770(n)))))`
-/

namespace A085227.P3344921802935511191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057548 (A057548 (A069770 (A069770 n).toNat).toNat).toNat).toNat

end

end A085227.P3344921802935511191

/-! ## A085227.P10294957492611252883

`A057162(record[A129604(n+2)])`
-/

namespace A085227.P10294957492611252883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129604 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P10294957492611252883

/-! ## A085227.P6562937408732954283

`A057162(record[A130359(n+2)])`
-/

namespace A085227.P6562937408732954283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P6562937408732954283

/-! ## A085227.P11054655215830954630

`A057162(record[A130361(n+2)])`
-/

namespace A085227.P11054655215830954630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P11054655215830954630

/-! ## A085227.P5797191586183881902

`A057162(record[A130397(n+2)])`
-/

namespace A085227.P5797191586183881902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130397 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P5797191586183881902

/-! ## A085227.P12235573436850466732

`A057162(record[A130958(n+2)])`
-/

namespace A085227.P12235573436850466732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P12235573436850466732

/-! ## A085227.P17560660264323098904

`A154457(record[A154457(n+2)])`
-/

namespace A085227.P17560660264323098904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085227.P17560660264323098904

/-! ## A085227.P4170111554467402593

`A085203(∑[n+3])`
-/

namespace A085227.P4170111554467402593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085227.P4170111554467402593

/-! ## A085227.P13408858692815764925

`A085206(∑[n])`
-/

namespace A085227.P13408858692815764925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085227.P13408858692815764925

/-! ## A085227.P12027786750687601312

`A085205(∑[n]+n)`
-/

namespace A085227.P12027786750687601312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085205 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A085227.P12027786750687601312

/-!
# A085228: Diagonal of array A085205.

The programs for A085228, there is no canonical definition to state claims against.
-/

/-! ## A085228.P14183875602648502520

`A085205(∑[4*n])`
-/

namespace A085228.P14183875602648502520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085205 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085228.P14183875602648502520

/-! ## A085228.P15544201716772084991

`A085206(∑[4*n])`
-/

namespace A085228.P15544201716772084991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085228.P15544201716772084991

/-! ## A085228.P15500244152026949409

`A057518(A083938(n+1))`
-/

namespace A085228.P15500244152026949409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057518 (A083938 (n + 1)).toNat

end

end A085228.P15500244152026949409

/-!
# A085229: Smallest number which is coprime to n and to a(n-1), and is not yet in the sequence; a(1)=1.

The programs for A085229, there is no canonical definition to state claims against.
-/

/-! ## A085229.P6688744567994750984

`A123882(A171905(n+1)+n)`
-/

namespace A085229.P6688744567994750984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (A171905 (n + 1) + (n : ℤ)).toNat

end

end A085229.P6688744567994750984

/-! ## A085229.P13981109905757029819

`xor(char[A024028(n)], A123882(n+1))`
-/

namespace A085229.P13981109905757029819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024028 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123882 (n + 1))

end

end A085229.P13981109905757029819

/-! ## A085229.P15846599847495485511

`xor(char[A024030(n)], A123882(n+1))`
-/

namespace A085229.P15846599847495485511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123882 (n + 1))

end

end A085229.P15846599847495485511

/-! ## A085229.P11586715737336591231

`A123882(xor(n+1, A171386(n+1)))`
-/

namespace A085229.P11586715737336591231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (Int.xor (n + 1 : ℤ) (A171386 (n + 1))).toNat

end

end A085229.P11586715737336591231

/-! ## A085229.P7418358440670691783

`xor(A010051(A123882(n+1)+n), A123882(n+1))`
-/

namespace A085229.P7418358440670691783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A123882 (n + 1) + (n : ℤ)).toNat) (A123882 (n + 1))

end

end A085229.P7418358440670691783

/-! ## A085229.P3323229074191945298

`xor(A010051(A027379(n)-n), A123882(n+1))`
-/

namespace A085229.P3323229074191945298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A027379 n - (n : ℤ)).toNat) (A123882 (n + 1))

end

end A085229.P3323229074191945298

/-! ## A085229.P12221481202158127776

`xor(A010051(A027379(n)), A123882(n+1))`
-/

namespace A085229.P12221481202158127776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A027379 n).toNat) (A123882 (n + 1))

end

end A085229.P12221481202158127776

/-! ## A085229.P11741829913974857953

`xor(A010051(A048840(n)), A123882(n+1))`
-/

namespace A085229.P11741829913974857953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A048840 n).toNat) (A123882 (n + 1))

end

end A085229.P11741829913974857953

/-! ## A085229.P11236453502091004091

`xor(A102460(n²), A123882(n+1))`
-/

namespace A085229.P11236453502091004091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102460 (n ^ 2)) (A123882 (n + 1))

end

end A085229.P11236453502091004091

/-! ## A085229.P15799494640984816643

`xor(A123882(n+1), A209229(A000292(n)))`
-/

namespace A085229.P15799494640984816643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123882 (n + 1)) (A209229 (A000292 n).toNat)

end

end A085229.P15799494640984816643

/-!
# A085230: Inverse of A085229.

The programs for A085230, there is no canonical definition to state claims against.
-/

/-! ## A085230.P6252876268652876496

`A123883(A171905(n+1)+n)`
-/

namespace A085230.P6252876268652876496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (A171905 (n + 1) + (n : ℤ)).toNat

end

end A085230.P6252876268652876496

/-! ## A085230.P14126299919018712347

`xor(A102460(n²), A123883(n+1))`
-/

namespace A085230.P14126299919018712347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102460 (n ^ 2)) (A123883 (n + 1))

end

end A085230.P14126299919018712347

/-! ## A085230.P6977910764127116061

`xor(char[A015189(n)], A123883(n+1))`
-/

namespace A085230.P6977910764127116061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015189 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123883 (n + 1))

end

end A085230.P6977910764127116061

/-! ## A085230.P18130973985094097077

`xor(char[A024028(n)], A123883(n+1))`
-/

namespace A085230.P18130973985094097077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024028 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123883 (n + 1))

end

end A085230.P18130973985094097077

/-! ## A085230.P16267002846844583231

`xor(char[A024030(n)], A123883(n+1))`
-/

namespace A085230.P16267002846844583231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123883 (n + 1))

end

end A085230.P16267002846844583231

/-! ## A085230.P16817586079987647573

`xor(char[A168244(n)], A123883(n+1))`
-/

namespace A085230.P16817586079987647573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A123883 (n + 1))

end

end A085230.P16817586079987647573

/-! ## A085230.P8125597448454505511

`A123883(xor(n+1, A171386(n+1)))`
-/

namespace A085230.P8125597448454505511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (Int.xor (n + 1 : ℤ) (A171386 (n + 1))).toNat

end

end A085230.P8125597448454505511

/-! ## A085230.P16287739911902296844

`A123883(n+1)-A056594(A076273(n))`
-/

namespace A085230.P16287739911902296844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (n + 1) - A056594 (A076273 n).toNat

end

end A085230.P16287739911902296844

/-! ## A085230.P9439266852578704106

`xor(A010051(A027379(n)), A123883(n+1))`
-/

namespace A085230.P9439266852578704106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A027379 n).toNat) (A123883 (n + 1))

end

end A085230.P9439266852578704106

/-! ## A085230.P15498411700584792432

`xor(A010051(A048840(n)), A123883(n+1))`
-/

namespace A085230.P15498411700584792432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A048840 n).toNat) (A123883 (n + 1))

end

end A085230.P15498411700584792432

/-!
# A085231: Numbers k in whose canonical factorization the power of the smallest prime factor is greater than the power of the greatest prime factor.

The programs for A085231, there is no canonical definition to state claims against.
-/

/-! ## A085231.P1216342428871001819

`lt[A028234(n+1), A051119(n+1)]+1`
-/

namespace A085231.P1216342428871001819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085231.P1216342428871001819

/-! ## A085231.P17341608730574747972

`lt[A053585(n+1), A028233(n+1)]+1`
-/

namespace A085231.P17341608730574747972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085231.P17341608730574747972

/-! ## A085231.P15175168093350772065

`A020725(lt[A053585(n+1), A028233(n+1)])`
-/

namespace A085231.P15175168093350772065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085231.P15175168093350772065

/-! ## A085231.P12891107169380738881

`A061767(lt[A053585(n+1), A028233(n+1)])`
-/

namespace A085231.P12891107169380738881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085231.P12891107169380738881

/-! ## A085231.P10125399053767445757

`A153152(lt[A028234(n+1), A051119(n+1)])`
-/

namespace A085231.P10125399053767445757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085231.P10125399053767445757

/-! ## A085231.P13715428869245298651

`A153152(lt[A053585(n+1), A028233(n+1)])`
-/

namespace A085231.P13715428869245298651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085231.P13715428869245298651

/-! ## A085231.P16875207367648612035

`A113484(lt[A053585(n+1), A028233(n+1)])`
-/

namespace A085231.P16875207367648612035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085231.P16875207367648612035

/-!
# A085232: In canonical prime factorization: power of smallest prime factor is less than power of greatest prime factor.

The programs for A085232, there is no canonical definition to state claims against.
-/

/-! ## A085232.P4382828678701162510

`lt[A051119(n+1), A028234(n+1)]+1`
-/

namespace A085232.P4382828678701162510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085232.P4382828678701162510

/-! ## A085232.P3525634397486597153

`lt[A028233(n+1), A053585(n+1)]+1`
-/

namespace A085232.P3525634397486597153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085232.P3525634397486597153

/-! ## A085232.P7686769636222163093

`A020725(lt[A028233(n+1), A053585(n+1)])`
-/

namespace A085232.P7686769636222163093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085232.P7686769636222163093

/-! ## A085232.P12304058716044497700

`A061767(lt[A028233(n+1), A053585(n+1)])`
-/

namespace A085232.P12304058716044497700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085232.P12304058716044497700

/-! ## A085232.P2560037703759111500

`A153152(lt[A028233(n+1), A053585(n+1)])`
-/

namespace A085232.P2560037703759111500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085232.P2560037703759111500

/-! ## A085232.P18254245186080436942

`A113484(lt[A028233(n+1), A053585(n+1)])`
-/

namespace A085232.P18254245186080436942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085232.P18254245186080436942

/-! ## A085232.P8583207757239110208

`∩[A357759(n+1), A357850(n+1)]`
-/

namespace A085232.P8583207757239110208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085232.P8583207757239110208

/-! ## A085232.P4687111096345424564

`lt[A028233((n+1)²), n]+1`
-/

namespace A085232.P4687111096345424564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085232.P4687111096345424564

/-! ## A085232.P4845257811328088390

`A020725(lt[A028233((n+1)²), n])`
-/

namespace A085232.P4845257811328088390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085232.P4845257811328088390

/-!
# A085233: Numbers k such that k is divisible by a power of its smallest prime factor that exceeds its square root.

The programs for A085233, there is no canonical definition to state claims against.
-/

/-! ## A085233.P17565155697101232471

`eq[A020639(n+1), A318884(A354933(n+1))]+1`
-/

namespace A085233.P17565155697101232471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (A354933 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A085233.P17565155697101232471

/-! ## A085233.P15524272125249542919

`lt[sqrt(n+1), A028233(n+1)]+1`
-/

namespace A085233.P15524272125249542919
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A085233.P15524272125249542919

/-! ## A085233.P3897502413436149347

`record[A028233(n+2)*A052128(n+2)]`
-/

namespace A085233.P3897502413436149347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 2) * A052128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085233.P3897502413436149347

/-! ## A085233.P2026729561808920779

`lt[A028310(n), A028233(n+1)²]+1`
-/

namespace A085233.P2026729561808920779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085233.P2026729561808920779

/-! ## A085233.P1791745789769017203

`lt[A020725(n+1), A028233(n+1)²]+1`
-/

namespace A085233.P1791745789769017203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085233.P1791745789769017203

/-! ## A085233.P2418014472391681687

`lt[A065475(n+1), A028233(n+1)²]+1`
-/

namespace A085233.P2418014472391681687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085233.P2418014472391681687

/-! ## A085233.P9620355695514511247

`lt[A028310(n), A028233(A028310(n))²]`
-/

namespace A085233.P9620355695514511247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085233.P9620355695514511247

/-! ## A085233.P8460593753681486450

`lt[A000196(n+1), A028233(A028310(n))]`
-/

namespace A085233.P8460593753681486450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085233.P8460593753681486450

/-! ## A085233.P17624085183935008717

`lt[A137735(n+1), A028233(A028310(n))]`
-/

namespace A085233.P17624085183935008717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085233.P17624085183935008717

/-! ## A085233.P14041778389912398025

`A020725(lt[A028234(n+1), A028233(n+1)])`
-/

namespace A085233.P14041778389912398025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085233.P14041778389912398025

/-! ## A085233.P5733853631570948443

`A020725(lt[A020725(n+1), A028233(n+1)²])`
-/

namespace A085233.P5733853631570948443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085233.P5733853631570948443

/-!
# A085234: (Greatest power of smallest prime factor of n) < square root(n).

The programs for A085234, there is no canonical definition to state claims against.
-/

/-! ## A085234.P16042712778557682015

`lt[A028233(n+1)², n]+1`
-/

namespace A085234.P16042712778557682015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085234.P16042712778557682015

/-! ## A085234.P16786071460837749983

`A020725(lt[A028233(n+1)², n])`
-/

namespace A085234.P16786071460837749983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085234.P16786071460837749983

/-! ## A085234.P1631760226551389007

`∪[A115036(n+1), A143907(n+1)]`
-/

namespace A085234.P1631760226551389007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085234.P1631760226551389007

/-!
# A085235: (Greatest power of greatest prime factor of n) > square root(n).

The programs for A085235, there is no canonical definition to state claims against.
-/

/-! ## A085235.P10328369622973518032

`lt[A051119(n^ceil(atan(n))), n]`
-/

namespace A085235.P10328369622973518032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085235.P10328369622973518032

/-! ## A085235.P2899854938921930781

`lt[n, A053585((n+2)²)]+2`
-/

namespace A085235.P2899854938921930781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A085235.P2899854938921930781

/-! ## A085235.P5864565934524516754

`lt[A051119((abs(1-n)+1)²), n]`
-/

namespace A085235.P5864565934524516754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 ((|1 - (n : ℤ)| + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085235.P5864565934524516754

/-! ## A085235.P10091579812594631973

`lt[n+1, A053585(A253909(n))]`
-/

namespace A085235.P10091579812594631973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085235.P10091579812594631973

/-! ## A085235.P272027407914980445

`lt[A028310(n), A053585(A028310(n²))]`
-/

namespace A085235.P272027407914980445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A028310 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085235.P272027407914980445

/-!
# A085236: (Greatest power of greatest prime factor of n) < square root(n).

The programs for A085236, there is no canonical definition to state claims against.
-/

/-! ## A085236.P7457135284101746374

`∪[A051283(n+1), A102749(n+1)]`
-/

namespace A085236.P7457135284101746374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085236.P7457135284101746374

/-! ## A085236.P807517374881567599

`lt[A053585(n+1)², n]+1`
-/

namespace A085236.P807517374881567599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085236.P807517374881567599

/-! ## A085236.P773953788754187436

`lt[n+1, A051119(n+1)²]+1`
-/

namespace A085236.P773953788754187436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085236.P773953788754187436

/-! ## A085236.P13957783871892538820

`lt[A053585(A028310(n))², n]`
-/

namespace A085236.P13957783871892538820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085236.P13957783871892538820

/-! ## A085236.P15242468801410168685

`A020725(lt[A053585(n+1)², n])`
-/

namespace A085236.P15242468801410168685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085236.P15242468801410168685

/-! ## A085236.P10017195896779638099

`A061767(lt[A053585(n+1)², n])`
-/

namespace A085236.P10017195896779638099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085236.P10017195896779638099

/-! ## A085236.P18145297900883611755

`A153152(lt[A053585(n+1)², n])`
-/

namespace A085236.P18145297900883611755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085236.P18145297900883611755

/-! ## A085236.P16542143673910017980

`lt[A053585(n+1), A051119(n+1)]+1`
-/

namespace A085236.P16542143673910017980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085236.P16542143673910017980

/-! ## A085236.P17611210492903903609

`A020725(lt[A053585(n+1), A051119(n+1)])`
-/

namespace A085236.P17611210492903903609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085236.P17611210492903903609

/-! ## A085236.P16855318589556806775

`A061767(lt[A053585(n+1), A051119(n+1)])`
-/

namespace A085236.P16855318589556806775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085236.P16855318589556806775

/-! ## A085236.P2433403846993420495

`lt[A253909(A053585(n+1)), A028310(n)]+1`
-/

namespace A085236.P2433403846993420495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A053585 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085236.P2433403846993420495

/-! ## A085236.P3984244241722108786

`A020725(lt[A053585(n+1), n/A053585(n+1)])`
-/

namespace A085236.P3984244241722108786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A053585 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A085236.P3984244241722108786

/-! ## A085236.P9553106817889171901

`A061767(lt[A053585(n+1), n/A053585(n+1)])`
-/

namespace A085236.P9553106817889171901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A053585 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A085236.P9553106817889171901

/-! ## A085236.P13358702642832402833

`A153152(lt[A053585(n+1), n/A053585(n+1)])`
-/

namespace A085236.P13358702642832402833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A053585 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A085236.P13358702642832402833

/-! ## A085236.P13081817236406726015

`A020725(lt[(n+1)/A051119(n+1), A051119(n+1)])`
-/

namespace A085236.P13081817236406726015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051119 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A085236.P13081817236406726015

/-! ## A085236.P7018471306708749396

`A020725(lt[gcd(n+1, A068795(n+1)), A051119(n+1)])`
-/

namespace A085236.P7018471306708749396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068795 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085236.P7018471306708749396

/-! ## A085236.P13267636925263307149

`A113484(lt[A053585(n+1)², n])`
-/

namespace A085236.P13267636925263307149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085236.P13267636925263307149

/-! ## A085236.P14364701305831166018

`A113484(lt[A053585(n+1), n/A053585(n+1)])`
-/

namespace A085236.P14364701305831166018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A053585 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A085236.P14364701305831166018

/-! ## A085236.P9935555856368708473

`lt[A053585(A233583(n+1))², n]`
-/

namespace A085236.P9935555856368708473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085236.P9935555856368708473

/-!
# A085237: Nondecreasing gaps between primes.

The programs for A085237, there is no canonical definition to state claims against.
-/

/-! ## A085237.P13533399190320230851

`A361823(n+1)-A134266(n+1)`
-/

namespace A085237.P13533399190320230851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361823 (n + 1) - A134266 (n + 1)

end

end A085237.P13533399190320230851

/-! ## A085237.P6077001883486269962

`A001223(A085500(n+1))`
-/

namespace A085237.P6077001883486269962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A085500 (n + 1)).toNat

end

end A085237.P6077001883486269962

/-! ## A085237.P12834181642532331027

`A001223(∑[A348178(n+1)])`
-/

namespace A085237.P12834181642532331027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085237.P12834181642532331027

/-! ## A085237.P414836440462474609

`A166597(A134266(n+1))`
-/

namespace A085237.P414836440462474609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A134266 (n + 1)).toNat

end

end A085237.P414836440462474609

/-! ## A085237.P13253198108394293399

`A356165(A361823(n+1))`
-/

namespace A085237.P13253198108394293399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356165 (A361823 (n + 1)).toNat

end

end A085237.P13253198108394293399

/-!
# A085238: Sort the numbers 2^i and 3^j. Then a(n) is the exponent of the n-th term.

The programs for A085238, there is no canonical definition to state claims against.
-/

/-! ## A085238.P1483515972947616747

`val(A006899(n+1), or(2, A085239(n+1)))`
-/

namespace A085238.P1483515972947616747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006899 (n + 1)).toNat (Int.lor 2 (A085239 (n + 1))).toNat

end

end A085238.P1483515972947616747

/-! ## A085238.P7007450540186989552

`val(A006899(n+1), A085239(n+1)+A000007(n))`
-/

namespace A085238.P7007450540186989552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006899 (n + 1)).toNat (A085239 (n + 1) + A000007 n).toNat

end

end A085238.P7007450540186989552

/-! ## A085238.P13806161029149548101

`A069352(A374484(n+1))`
-/

namespace A085238.P13806161029149548101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (A374484 (n + 1)).toNat

end

end A085238.P13806161029149548101

/-! ## A085238.P4960868001954687046

`A069352(eq[A069352(n+1), A086414(n+1)]+1)`
-/

namespace A085238.P4960868001954687046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A085238.P4960868001954687046

/-! ## A085238.P11464001681953017869

`A069352(eq[A069352(n+1), A086415(n+1)]+1)`
-/

namespace A085238.P11464001681953017869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A085238.P11464001681953017869

/-! ## A085238.P17119352207397191971

`∑{p}[A033845(n+1), val(A006899(n+1), #)]`
-/

namespace A085238.P17119352207397191971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A006899 (n + 1)).toNat p

end

end A085238.P17119352207397191971

/-!
# A085239: Sort the numbers 2^i and 3^j. Then a(n) is the base of the n-th term. Set a(1)=1.

The programs for A085239, there is no canonical definition to state claims against.
-/

/-! ## A085239.P3237583297688244713

`A099656(and(1, A108906(n)+a(n-1)))` with `a(0)=1`
-/

namespace A085239.P3237583297688244713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099656 (Int.land 1 (A108906 n + a (n - 1))).toNat

end

end A085239.P3237583297688244713

/-!
# A085241: a(n) = A085239(n+1) - A085239(n).

The programs for A085241, there is no canonical definition to state claims against.
-/

/-! ## A085241.P3423153488941981480

`A085242(n+2)-A085242(n+1)`
-/

namespace A085241.P3423153488941981480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085242 (n + 2) - A085242 (n + 1)

end

end A085241.P3423153488941981480

/-!
# A085242: a(n) = A085239(n+1) - 2.

The programs for A085242, there is no canonical definition to state claims against.
-/

/-! ## A085242.P15842619068418615555

`A085239(n+2)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085242.P15842619068418615555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085239 (n + 2) - 2

end

end A085242.P15842619068418615555

/-!
# A085243: a(n) = A085238(n+1) - A085238(n).

The programs for A085243, there is no canonical definition to state claims against.
-/

/-! ## A085243.P7122561938769050722

`Δ[A085238(n+2)]`
-/

namespace A085243.P7122561938769050722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085238 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085243.P7122561938769050722

/-! ## A085243.P7194089280841811167

`A085238(n+3)-A085238(n+2)`
-/

namespace A085243.P7194089280841811167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085238 (n + 3) - A085238 (n + 2)

end

end A085243.P7194089280841811167

/-! ## A085243.P13690072699926153267

`Δ[∑{e}[A006899(n+2), #]]`
-/

namespace A085243.P13690072699926153267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A085243.P13690072699926153267

/-! ## A085243.P4588122366203138916

`Δ[∑{e}[Δ[A170803(n+1)], #]]`
-/

namespace A085243.P4588122366203138916
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A085243.P4588122366203138916

/-! ## A085243.P2273454187915778632

`Δ[A000005(A006899(n+2))]`
-/

namespace A085243.P2273454187915778632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006899 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085243.P2273454187915778632

/-!
# A085244: Permanent of the symmetric n X n matrix M defined by M(i,j) = gcd(i,j) for 1 <= i,j <= n.

The programs for A085244, there is no canonical definition to state claims against.
-/

/-! ## A085244.P14849470661041283836

`A275440(∑[∑[A275329(n)]])`
-/

namespace A085244.P14849470661041283836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085244.P14849470661041283836

/-!
# A085246: Satisfies a(1)=1, a(A026835(n+1)) = a(n)+1, with a(m)=0 for all m not found in A026835, where A026835(n+2)=A026835(n+1)+a(n)+1.

The programs for A085246, there is no canonical definition to state claims against.
-/

/-! ## A085246.P5773038255276079572

`Δ[A085262(n+2)]-1`
-/

namespace A085246.P5773038255276079572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A085246.P5773038255276079572

/-! ## A085246.P8816274404957098568

`A272729(A054429(n+1)+1)-1`
-/

namespace A085246.P8816274404957098568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (A054429 (n + 1) + 1).toNat - 1

end

end A085246.P8816274404957098568

/-! ## A085246.P13716489054246548150

`A285884(Δ[A085262(n+2)])%A096518(2*n+5)`
-/

namespace A085246.P13716489054246548150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085262 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285884 (f1 (n + 1) - f1 n).toNat) (A096518 (2 * n + 5))

end

end A085246.P13716489054246548150

/-!
# A085249: Terms k of A002977 such that both (k-1)/2 and (k-1)/3 are also terms of A002977.

The programs for A085249, there is no canonical definition to state claims against.
-/

/-! ## A085249.P15412380883533786511

`6*A088349(n+1)+1`
-/

namespace A085249.P15412380883533786511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A088349 (n + 1) + 1

end

end A085249.P15412380883533786511

/-! ## A085249.P9874156191317917452

`A019429(A088349(n+1))+3`
-/

namespace A085249.P9874156191317917452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A088349 (n + 1)).toNat + 3

end

end A085249.P9874156191317917452

/-! ## A085249.P10748468317845873723

`A019429(24*A088350(n+1)+5)+3`
-/

namespace A085249.P10748468317845873723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (24 * A088350 (n + 1) + 5).toNat + 3

end

end A085249.P10748468317845873723

/-! ## A085249.P8550091972263789893

`A016921(A088349(n+1))`
-/

namespace A085249.P8550091972263789893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A088349 (n + 1)).toNat

end

end A085249.P8550091972263789893

/-! ## A085249.P11082999373169848851

`A092899(A088349(n+1)+1)`
-/

namespace A085249.P11082999373169848851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 (A088349 (n + 1) + 1).toNat

end

end A085249.P11082999373169848851

/-!
# A085250: 4 times hexagonal numbers: a(n) = 4*n*(2*n-1).

The programs for A085250, the canonical program `A085250.P6274301986790995116` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085250 has offset 0).

The definition of A085250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(2*n-1)` (program `A085250.P6274301986790995116`, by `A085250.P6274301986790995116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085250.P7751211119025046

`8*n²-4*n`
-/

namespace A085250.P7751211119025046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - (4 * n : ℤ)

end

end A085250.P7751211119025046

namespace A085250

/-- `8*n²-4*n` -/
def P7751211119025046.Spec : Prop :=
  ∀ n, P7751211119025046.a n = A085250 n

theorem P7751211119025046.correct : P7751211119025046.Spec := by
  intro n
  simp only [A085250, Nat.add_sub_cancel, A085250.P7751211119025046.a, A085250.P6274301986790995116.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A085250

/-! ## A085250.P6274301986790995116

`4*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085250

/-- `4*n*(2*n-1)` -/
def P6274301986790995116.Spec : Prop :=
  ∀ n, P6274301986790995116.a n = A085250 n

theorem P6274301986790995116.correct : P6274301986790995116.Spec := by
  intro n
  simp only [A085250]

end A085250

/-! ## A085250.P18294079242563344222

`∑[a(n-1)+16]` with `a(0)=0, a(1)=4`
-/

namespace A085250.P18294079242563344222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085250.P18294079242563344222

namespace A085250

/-- `∑[a(n-1)+16]` -/
def P18294079242563344222.Spec : Prop :=
  ∀ n, (P18294079242563344222.a n : ℤ) = A085250 n

end A085250

/-! ## A085250.P6508765873695288283

`lcm(4*n, or(1, -(2*n)))`
-/

namespace A085250.P6508765873695288283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * n : ℤ) (Int.lor 1 (-(2 * n : ℤ)))

end

end A085250.P6508765873695288283

namespace A085250

/-- `lcm(4*n, or(1, -(2*n)))` -/
def P6508765873695288283.Spec : Prop :=
  ∀ n, (P6508765873695288283.a n : ℤ) = A085250 n

end A085250

/-! ## A085250.P4207955227936651331

`record[2*n*(n+1)*and(1, n)]`
-/

namespace A085250.P4207955227936651331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085250.P4207955227936651331

namespace A085250

/-- `record[2*n*(n+1)*and(1, n)]` -/
def P4207955227936651331.Spec : Prop :=
  ∀ n, (P4207955227936651331.a n : ℤ) = A085250 n

end A085250

/-! ## A085250.P14305673461540135032

`lcm(n-1+n, eq[n, and(n, n+3)])`
-/

namespace A085250.P14305673461540135032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A085250.P14305673461540135032

namespace A085250

/-- `lcm(n-1+n, eq[n, and(n, n+3)])` -/
def P14305673461540135032.Spec : Prop :=
  ∀ n, (P14305673461540135032.a n : ℤ) = A085250 n

end A085250

/-! ## A085250.P11496618146811990936

`record[2*n*(n+1)/gcd(4, n+2)]`
-/

namespace A085250.P11496618146811990936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n + 1 : ℚ) / (Nat.gcd 4 (n + 2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085250.P11496618146811990936

namespace A085250

/-- `record[2*n*(n+1)/gcd(4, n+2)]` -/
def P11496618146811990936.Spec : Prop :=
  ∀ n, P11496618146811990936.a n = (A085250 n : ℚ)

end A085250

/-! ## A085250.P17563589884276591576

`lcm((n+1)²-(n-1)², Δ[(n-1)²])`
-/

namespace A085250.P17563589884276591576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) ^ 2 : ℤ) - ((n : ℤ) - 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A085250.P17563589884276591576

namespace A085250

/-- `lcm((n+1)²-(n-1)², Δ[(n-1)²])` -/
def P17563589884276591576.Spec : Prop :=
  ∀ n, (P17563589884276591576.a n : ℤ) = A085250 n

end A085250

/-! ## A085250.P4116076806786239529

`record[2*n*(n+1)/xor(n+1, n+2)]`
-/

namespace A085250.P4116076806786239529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n + 1 : ℚ) / (Nat.xor (n + 1) (n + 2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085250.P4116076806786239529

namespace A085250

/-- `record[2*n*(n+1)/xor(n+1, n+2)]` -/
def P4116076806786239529.Spec : Prop :=
  ∀ n, P4116076806786239529.a n = (A085250 n : ℚ)

end A085250

/-! ## A085250.P8279176726080313000

`A152750(n)/2`
-/

namespace A085250.P8279176726080313000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152750 n : ℚ) / 2

end

end A085250.P8279176726080313000

namespace A085250

/-- `A152750(n)/2` -/
def P8279176726080313000.Spec : Prop :=
  ∀ n, P8279176726080313000.a n = (A085250 n : ℚ)

end A085250

/-! ## A085250.P10724163994068988550

`A143698(n)/3`
-/

namespace A085250.P10724163994068988550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / 3

end

end A085250.P10724163994068988550

namespace A085250

/-- `A143698(n)/3` -/
def P10724163994068988550.Spec : Prop :=
  ∀ n, P10724163994068988550.a n = (A085250 n : ℚ)

end A085250

/-! ## A085250.P7520463616107141678

`(A081593(n)-1)/4`
-/

namespace A085250.P7520463616107141678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081593 n - 1 : ℚ) / 4

end

end A085250.P7520463616107141678

namespace A085250

/-- `(A081593(n)-1)/4` -/
def P7520463616107141678.Spec : Prop :=
  ∀ n, P7520463616107141678.a n = (A085250 n : ℚ)

end A085250

/-! ## A085250.P7872013217211246526

`A022145(n)%A005914(n)`
-/

namespace A085250.P7872013217211246526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022145 n) (A005914 n)

end

end A085250.P7872013217211246526

namespace A085250

/-- `A022145(n)%A005914(n)` -/
def P7872013217211246526.Spec : Prop :=
  ∀ n, P7872013217211246526.a n = A085250 n

end A085250

/-! ## A085250.P5090717949402226574

`A017090(n)%A033572(n)`
-/

namespace A085250.P5090717949402226574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017090 n) (A033572 n)

end

end A085250.P5090717949402226574

namespace A085250

/-- `A017090(n)%A033572(n)` -/
def P5090717949402226574.Spec : Prop :=
  ∀ n, P5090717949402226574.a n = A085250 n

end A085250

/-! ## A085250.P4039605139560655149

`A010014(n)%A188135(n)`
-/

namespace A085250.P4039605139560655149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010014 n) (A188135 n)

end

end A085250.P4039605139560655149

namespace A085250

/-- `A010014(n)%A188135(n)` -/
def P4039605139560655149.Spec : Prop :=
  ∀ n, P4039605139560655149.a n = A085250 n

end A085250

/-! ## A085250.P11146817722164138098

`A010021(n)%A194454(n)`
-/

namespace A085250.P11146817722164138098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010021 n) (A194454 n)

end

end A085250.P11146817722164138098

namespace A085250

/-- `A010021(n)%A194454(n)` -/
def P11146817722164138098.Spec : Prop :=
  ∀ n, P11146817722164138098.a n = A085250 n

end A085250

/-! ## A085250.P13014561471480729580

`A143698(n)%A067239(n)`
-/

namespace A085250.P13014561471480729580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143698 n) (A067239 n)

end

end A085250.P13014561471480729580

namespace A085250

/-- `A143698(n)%A067239(n)` -/
def P13014561471480729580.Spec : Prop :=
  ∀ n, P13014561471480729580.a n = A085250 n

end A085250

/-! ## A085250.P17793290050103646548

`A010022(n)%A204675(n)`
-/

namespace A085250.P17793290050103646548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010022 n) (A204675 n)

end

end A085250.P17793290050103646548

namespace A085250

/-- `A010022(n)%A204675(n)` -/
def P17793290050103646548.Spec : Prop :=
  ∀ n, P17793290050103646548.a n = A085250 n

end A085250

/-! ## A085250.P4762300847068869217

`A204675(n)%A014634(n)`
-/

namespace A085250.P4762300847068869217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204675 n) (A014634 n)

end

end A085250.P4762300847068869217

namespace A085250

/-- `A204675(n)%A014634(n)` -/
def P4762300847068869217.Spec : Prop :=
  ∀ n, P4762300847068869217.a n = A085250 n

end A085250

/-! ## A085250.P12206010112414156557

`A158547(n)%A082041(n)`
-/

namespace A085250.P12206010112414156557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158547 n) (A082041 n)

end

end A085250.P12206010112414156557

namespace A085250

/-- `A158547(n)%A082041(n)` -/
def P12206010112414156557.Spec : Prop :=
  ∀ n, P12206010112414156557.a n = A085250 n

end A085250

/-!
# A085251: Numbers that are the sum of the squares of some substring decomposition of themselves.

The programs for A085251, there is no canonical definition to state claims against.
-/

/-! ## A085251.P8843483489827832265

`A178530(A001096(n+1))`
-/

namespace A085251.P8843483489827832265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178530 (A001096 (n + 1)).toNat

end

end A085251.P8843483489827832265

/-!
# A085252: Number of ways to write n as sum of two powerful numbers (A001694).

The programs for A085252, there is no canonical definition to state claims against.
-/

/-! ## A085252.P3401646600191481011

`A362422(n+1)+A000007(A304682(n+6))`
-/

namespace A085252.P3401646600191481011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (n + 1) + A000007 (A304682 (n + 6)).toNat

end

end A085252.P3401646600191481011

/-! ## A085252.P10670218509609750987

`lcm(A071936(A065766(n+1)+1), A362422(n+1))`
-/

namespace A085252.P10670218509609750987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071936 (A065766 (n + 1) + 1).toNat) (A362422 (n + 1))

end

end A085252.P10670218509609750987

/-! ## A085252.P2943202920162523478

`A362422(n+1)/A071936(A065766(n+2))`
-/

namespace A085252.P2943202920162523478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362422 (n + 1) : ℚ) / (A071936 (A065766 (n + 2)).toNat : ℚ)

end

end A085252.P2943202920162523478

/-! ## A085252.P833048959374341823

`A362422(n+1)+A066503(A202301(n+1))`
-/

namespace A085252.P833048959374341823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (n + 1) + A066503 (A202301 (n + 1)).toNat

end

end A085252.P833048959374341823

/-! ## A085252.P16660492426155857668

`A362422(n+1)+A000007(A358848(n+1))`
-/

namespace A085252.P16660492426155857668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (n + 1) + A000007 (A358848 (n + 1)).toNat

end

end A085252.P16660492426155857668

/-! ## A085252.P11143804737725765713

`A362422(n+1)+A000007(A361144(n+1))`
-/

namespace A085252.P11143804737725765713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (n + 1) + A000007 (A361144 (n + 1)).toNat

end

end A085252.P11143804737725765713

/-! ## A085252.P2009819576876236000

`A052409(A287300(n+1))*A362422(n+1)`
-/

namespace A085252.P2009819576876236000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A287300 (n + 1)).toNat * A362422 (n + 1)

end

end A085252.P2009819576876236000

/-! ## A085252.P12948387034193596917

`A362422(n+1)+A000007(A358874(n+1))`
-/

namespace A085252.P12948387034193596917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (n + 1) + A000007 (A358874 (n + 1)).toNat

end

end A085252.P12948387034193596917

/-! ## A085252.P4680065155196208742

`A362422(A301573(A175050(n+1))+n+1)`
-/

namespace A085252.P4680065155196208742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (A301573 (A175050 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A085252.P4680065155196208742

/-!
# A085253: Numbers having no representation as sum of two powerful numbers (A001694).

The programs for A085253, there is no canonical definition to state claims against.
-/

/-! ## A085253.P4734386400977993055

`∩[A075434(n+1), comp[A076871(n+1)]]`
-/

namespace A085253.P4734386400977993055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075434 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076871 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A085253.P4734386400977993055

/-! ## A085253.P1162353779138818741

`eq[2, sqrt(a(A085252(n)))]` with `a(0)=4`
-/

namespace A085253.P1162353779138818741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.sqrt (f2 (A085252 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A085253.P1162353779138818741

/-! ## A085253.P16992268055178761869

`eq[0, A085252(n+1)]+1`
-/

namespace A085253.P16992268055178761869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085253.P16992268055178761869

/-! ## A085253.P5487069035712884115

`eq[2, A000032(a(A085252(n)))]` with `a(0)=0`
-/

namespace A085253.P5487069035712884115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085253.P5487069035712884115

/-! ## A085253.P7646069376363653870

`eq[2, A000040(a(A085252(n)))]` with `a(0)=1`
-/

namespace A085253.P7646069376363653870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085253.P7646069376363653870

/-! ## A085253.P10183568642148742123

`eq[2, A000010(a(A085252(n)))]` with `a(0)=3`
-/

namespace A085253.P10183568642148742123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085253.P10183568642148742123

/-! ## A085253.P14334400176010633157

`eq[2, A000045(a(A085252(n)))]` with `a(0)=3`
-/

namespace A085253.P14334400176010633157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085253.P14334400176010633157

/-!
# A085254: Numbers having a unique representation as sum of two powerful numbers (A001694).

The programs for A085254, there is no canonical definition to state claims against.
-/

/-! ## A085254.P12786137234811425857

`eq[1, A085252(n+1)]+1`
-/

namespace A085254.P12786137234811425857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085254.P12786137234811425857

/-! ## A085254.P12451563473271849296

`eq[2, sqrt(a(A085252(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A085254.P12451563473271849296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  Real.sqrt (f2 (A085252 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A085254.P12451563473271849296

/-! ## A085254.P5122198930659650246

`eq[2, A000032(a(A085252(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A085254.P5122198930659650246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000032 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085254.P5122198930659650246

/-! ## A085254.P11094709739974512176

`eq[2, A000045(a(A085252(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A085254.P11094709739974512176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085254.P11094709739974512176

/-! ## A085254.P6612058840342534916

`eq[2, A000010(a(A085252(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A085254.P6612058840342534916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085254.P6612058840342534916

/-! ## A085254.P1961026203487053382

`lt[2, A089608(a(A085252(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A085254.P1961026203487053382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A089608 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085254.P1961026203487053382

/-! ## A085254.P1976825774633209680

`eq[1, A002262(a(A085252(n)))]` with `a(0)=3, a(1)=4`
-/

namespace A085254.P1976825774633209680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  A002262 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085254.P1976825774633209680

/-! ## A085254.P4209037883169965798

`record[A076871(n+1)/A085252(A076871(n+1))]`
-/

namespace A085254.P4209037883169965798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076871 (n + 1) : ℚ) / (A085252 (A076871 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085254.P4209037883169965798

/-!
# A085255: Numbers having at least two representations as a sum of two powerful numbers (A001694).

The programs for A085255, there is no canonical definition to state claims against.
-/

/-! ## A085255.P2820465372099282180

`lt[1, A085252(n+1)]+1`
-/

namespace A085255.P2820465372099282180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A085255.P2820465372099282180

/-! ## A085255.P8275415900473065273

`eq[1, log2(a(A085252(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A085255.P8275415900473065273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  Real.logb 2 (f2 (A085252 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A085255.P8275415900473065273

/-! ## A085255.P11262197026656703612

`eq[1, A010054(a(A085252(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A085255.P11262197026656703612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A010054 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P11262197026656703612

/-! ## A085255.P7567024374934852925

`eq[1, A328599(a(A085252(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A085255.P7567024374934852925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A328599 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P7567024374934852925

/-! ## A085255.P2842301355033722766

`eq[1, A001222(a(A085252(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A085255.P2842301355033722766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A001222 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P2842301355033722766

/-! ## A085255.P17073298886157099238

`eq[2, A000045(a(A085252(n)))]` with `a(0)=4, a(1)=4, a(2)=3`
-/

namespace A085255.P17073298886157099238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 3] fun n f2 =>
  A000045 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P17073298886157099238

/-! ## A085255.P17578657256942465158

`eq[2, A000010(a(A085252(n)))]` with `a(0)=5, a(1)=5, a(2)=3`
-/

namespace A085255.P17578657256942465158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 3] fun n f2 =>
  A000010 (f2 (A085252 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P17578657256942465158

/-! ## A085255.P14433831184651231876

`eq[0, A295306(a(A085252(n))²)]` with `a(0)=2, a(1)=3`
-/

namespace A085255.P14433831184651231876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A295306 (f2 (A085252 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P14433831184651231876

/-! ## A085255.P5191956703356044914

`eq[3, A031035(a(A085252(n))+1)]` with `a(0)=1, a(1)=1`
-/

namespace A085255.P5191956703356044914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A031035 (f2 (A085252 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P5191956703356044914

/-! ## A085255.P3000875824258921513

`eq[1, A002262(a(A085252(n))+2)]` with `a(0)=3, a(1)=4`
-/

namespace A085255.P3000875824258921513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  A002262 (f2 (A085252 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085255.P3000875824258921513

/-!
# A085256: 3-smooth numbers whose arithmetic derivatives are also 3-smooth.

The programs for A085256, there is no canonical definition to state claims against.
-/

/-! ## A085256.P7418591638652583310

`A003586(lt[A317245(n), A238444(n+1)])`
-/

namespace A085256.P7418591638652583310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A085256.P7418591638652583310

/-! ## A085256.P8929707758402218627

`A262609(A351038(n+1))`
-/

namespace A085256.P8929707758402218627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (A351038 (n + 1)).toNat

end

end A085256.P8929707758402218627

/-! ## A085256.P3049422090770513847

`eq[A126760(n), A137893(A125161(n+1))]`
-/

namespace A085256.P3049422090770513847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A125161 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085256.P3049422090770513847

/-!
# A085257: Number of ways to write n as sum of a powerful and a squarefree number.

The programs for A085257, there is no canonical definition to state claims against.
-/

/-! ## A085257.P5717427754850720807

`A275850(A155720(n)-A069916(n))`
-/

namespace A085257.P5717427754850720807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A155720 n - A069916 n).toNat

end

end A085257.P5717427754850720807

/-! ## A085257.P9910071335966167339

`A001221(xor(A006452(n), A195021(n)))`
-/

namespace A085257.P9910071335966167339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A006452 n) (A195021 n)).toNat

end

end A085257.P9910071335966167339

/-! ## A085257.P15055987974472663292

`A352825(A247500(n)+A117578(n+1))`
-/

namespace A085257.P15055987974472663292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A247500 n + A117578 (n + 1)).toNat

end

end A085257.P15055987974472663292

/-! ## A085257.P4342757392904391437

`A160385(A022381(n))-A304972(n+1)`
-/

namespace A085257.P4342757392904391437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A022381 n).toNat - A304972 (n + 1)

end

end A085257.P4342757392904391437

/-! ## A085257.P17182592831711351154

`A280737(A125742(n+1))-A193592(n)`
-/

namespace A085257.P17182592831711351154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A125742 (n + 1)).toNat - A193592 n

end

end A085257.P17182592831711351154

/-!
# A085259: Integer part of the conversion from Celsius to Fahrenheit.

The programs for A085259, the canonical program `A085259.P130799474644936207` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085259 has offset 0).

The definition of A085259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177154, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A085259.P130799474644936207

`A029925(n)-floor(A177154(n)/5)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A085259

/-- `A029925(n)-floor(A177154(n)/5)` -/
def P130799474644936207.Spec : Prop :=
  ∀ n, P130799474644936207.a n = A085259 n

theorem P130799474644936207.correct : P130799474644936207.Spec := by
  intro n
  simp only [A085259]

end A085259

/-! ## A085259.P15567534957578116270

`floor(9*n/5)+32`
-/

namespace A085259.P15567534957578116270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 5)⌋ + 32

end

end A085259.P15567534957578116270

namespace A085259

/-- `floor(9*n/5)+32` -/
def P15567534957578116270.Spec : Prop :=
  ∀ n, P15567534957578116270.a n = A085259 n

end A085259

/-! ## A085259.P12132369003873235861

`record[32-n*(-1)^dr(n)]`
-/

namespace A085259.P12132369003873235861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - (n : ℤ) * (-1) ^ SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085259.P12132369003873235861

namespace A085259

/-- `record[32-n*(-1)^dr(n)]` -/
def P12132369003873235861.Spec : Prop :=
  ∀ n, P12132369003873235861.a n = A085259 n

end A085259

/-! ## A085259.P12357347879864712319

`∑[A053737(a(n-5))]` with `a(0)=32, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A085259.P12357347879864712319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32, 1, 2, 2, 2] fun n f1 =>
  A053737 (f1 (n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085259.P12357347879864712319

namespace A085259

/-- `∑[A053737(a(n-5))]` -/
def P12357347879864712319.Spec : Prop :=
  ∀ n, P12357347879864712319.a n = A085259 n

end A085259

/-! ## A085259.P17675933370060054477

`abs(4-A029925(n+2))`
-/

namespace A085259.P17675933370060054477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A029925 (n + 2)|

end

end A085259.P17675933370060054477

namespace A085259

/-- `abs(4-A029925(n+2))` -/
def P17675933370060054477.Spec : Prop :=
  ∀ n, P17675933370060054477.a n = A085259 n

end A085259

/-! ## A085259.P7228079648959100071

`A000027(A029925(n+2)-4)`
-/

namespace A085259.P7228079648959100071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A029925 (n + 2) - 4).toNat

end

end A085259.P7228079648959100071

namespace A085259

/-- `A000027(A029925(n+2)-4)` -/
def P7228079648959100071.Spec : Prop :=
  ∀ n, P7228079648959100071.a n = A085259 n

end A085259

/-! ## A085259.P14112752475951590489

`(A029925(n+2)-4)%A017057(n)`
-/

namespace A085259.P14112752475951590489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029925 (n + 2) - 4) (A017057 n)

end

end A085259.P14112752475951590489

namespace A085259

/-- `(A029925(n+2)-4)%A017057(n)` -/
def P14112752475951590489.Spec : Prop :=
  ∀ n, P14112752475951590489.a n = A085259 n

end A085259

/-! ## A085259.P1086970009193168234

`∑{d}[4-A029925(n+2), A000010(#)]`
-/

namespace A085259.P1086970009193168234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A029925 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085259.P1086970009193168234

namespace A085259

/-- `∑{d}[4-A029925(n+2), A000010(#)]` -/
def P1086970009193168234.Spec : Prop :=
  ∀ n, P1086970009193168234.a n = A085259 n

end A085259

/-! ## A085259.P10013628651384280496

`A028310(A029925(n+2)-4)`
-/

namespace A085259.P10013628651384280496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A029925 (n + 2) - 4).toNat

end

end A085259.P10013628651384280496

namespace A085259

/-- `A028310(A029925(n+2)-4)` -/
def P10013628651384280496.Spec : Prop :=
  ∀ n, P10013628651384280496.a n = A085259 n

end A085259

/-! ## A085259.P8330506516525117960

`A023446(A029925(n+2))`
-/

namespace A085259.P8330506516525117960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A029925 (n + 2)).toNat

end

end A085259.P8330506516525117960

namespace A085259

/-- `A023446(A029925(n+2))` -/
def P8330506516525117960.Spec : Prop :=
  ∀ n, P8330506516525117960.a n = A085259 n

end A085259

/-! ## A085259.P14564453207804476417

`A108356(A250120(n)+82)`
-/

namespace A085259.P14564453207804476417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108356 (A250120 n + 82).toNat

end

end A085259.P14564453207804476417

namespace A085259

/-- `A108356(A250120(n)+82)` -/
def P14564453207804476417.Spec : Prop :=
  ∀ n, P14564453207804476417.a n = A085259 n

end A085259

/-!
# A085260: Ratio-determined insertion sequence I(0.0833344) (see the link below).

The programs for A085260, there is no canonical definition to state claims against.
-/

/-! ## A085260.P16635190550543137938

`ogf((1-x)/(1-13x+x^2))`
-/

namespace A085260.P16635190550543137938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -13, 1] n

end

end A085260.P16635190550543137938

/-! ## A085260.P4418961556378900913

`13*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A085260.P4418961556378900913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  13 * a (n - 1) - a (n - 2)

end

end A085260.P4418961556378900913

/-! ## A085260.P13008256237546035955

`A098310(n+1)+A098310(n)`
-/

namespace A085260.P13008256237546035955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098310 (n + 1) + A098310 n

end

end A085260.P13008256237546035955

/-! ## A085260.P703458827283021292

`abs(Δ[A033999(n)*A098310(n)])`
-/

namespace A085260.P703458827283021292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A085260.P703458827283021292

/-! ## A085260.P7545226565332555109

`abs(a(n-1)-A078363(n))` with `a(0)=1`
-/

namespace A085260.P7545226565332555109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A078363 n|

end

end A085260.P7545226565332555109

/-!
# A085261: Expansion of chi(x) / phi(x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A085261, there is no canonical definition to state claims against.
-/

/-! ## A085261.P2342157188146052690

`A097566(n)-2*A190101(n)`
-/

namespace A085261.P2342157188146052690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097566 n - 2 * A190101 n

end

end A085261.P2342157188146052690

/-! ## A085261.P11726531495560326695

`2*A097566(n)-A000041(n)`
-/

namespace A085261.P11726531495560326695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097566 n - A000041 n

end

end A085261.P11726531495560326695

/-! ## A085261.P5835269633074903031

`A000041(n)-4*A190101(n)`
-/

namespace A085261.P5835269633074903031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 4 * A190101 n

end

end A085261.P5835269633074903031

/-! ## A085261.P11491350577430138734

`A097566(n)-A005843(A190101(n))`
-/

namespace A085261.P11491350577430138734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097566 n - A005843 (A190101 n).toNat

end

end A085261.P11491350577430138734

/-! ## A085261.P14496569743645765636

`A000041(n)-A005843(A000041(n)-A097566(n))`
-/

namespace A085261.P14496569743645765636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A005843 (A000041 n - A097566 n).toNat

end

end A085261.P14496569743645765636

/-!
# A085262: Indices of nonzero terms of A085246, where a(n+2)=a(n+1)+A085246(n)+1 and a(2^(n-1)+1)=2^n.

The programs for A085262, there is no canonical definition to state claims against.
-/

/-! ## A085262.P1472057373103456591

`record[C(A367039(n+2), n)]`
-/

namespace A085262.P1472057373103456591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A367039 (n + 2)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085262.P1472057373103456591

/-! ## A085262.P14403381593095371765

`eq[0, A028310(n)-A367039(n+1)]`
-/

namespace A085262.P14403381593095371765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A367039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085262.P14403381593095371765

/-! ## A085262.P7424254896046170708

`a(A227386(n))+n` with `a(0)=1`
-/

namespace A085262.P7424254896046170708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A227386 n).toNat + n

end

end A085262.P7424254896046170708

/-! ## A085262.P2269407982989818734

`eq[0, A123679(n+1)]`
-/

namespace A085262.P2269407982989818734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085262.P2269407982989818734

/-!
# A085263: Number of ways to write n as the sum of a squarefree number (A005117) and a positive square (A000290).

The programs for A085263, there is no canonical definition to state claims against.
-/

/-! ## A085263.P17314436546908791892

`A334671(n+1)-char[∏{p}[n, #]-1]`
-/

namespace A085263.P17314436546908791892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A085263.P17314436546908791892

/-! ## A085263.P8959444550709945116

`A334671(n+1)-A008966(n+1)`
-/

namespace A085263.P8959444550709945116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - A008966 (n + 1)

end

end A085263.P8959444550709945116

/-! ## A085263.P16104439627182736441

`A334671(n+1)-abs(A008683(n+1))`
-/

namespace A085263.P16104439627182736441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - |A008683 (n + 1)|

end

end A085263.P16104439627182736441

/-! ## A085263.P3336065077301429671

`A334671(n+1)-abs(A080323(n+1))`
-/

namespace A085263.P3336065077301429671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - |A080323 (n + 1)|

end

end A085263.P3336065077301429671

/-! ## A085263.P7672616231318937504

`A334671(n+1)-Δ[A013928(n+1)]`
-/

namespace A085263.P7672616231318937504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - (f1 (n + 1) - f1 n)

end

end A085263.P7672616231318937504

/-! ## A085263.P6147638964915803094

`A334671(n+1)-Δ[A107079(n+1)]`
-/

namespace A085263.P6147638964915803094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - (f1 (n + 1) - f1 n)

end

end A085263.P6147638964915803094

/-! ## A085263.P14750150933244486839

`A334671(n+1)-A008683(A008477(n+1))`
-/

namespace A085263.P14750150933244486839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - A008683 (A008477 (n + 1)).toNat

end

end A085263.P14750150933244486839

/-! ## A085263.P3971717957629079993

`A334671(n+1)-A008683(A008833(n+1))`
-/

namespace A085263.P3971717957629079993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - A008683 (A008833 (n + 1)).toNat

end

end A085263.P3971717957629079993

/-! ## A085263.P7466399268598542853

`A334671(n+1)-A008683(A057521(n+1))`
-/

namespace A085263.P7466399268598542853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - A008683 (A057521 (n + 1)).toNat

end

end A085263.P7466399268598542853

/-! ## A085263.P7699867289173111771

`A334671(n+1)-A008683(A052938(2*n))²`
-/

namespace A085263.P7699867289173111771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334671 (n + 1) - A008683 (A052938 (2 * n)).toNat ^ 2

end

end A085263.P7699867289173111771

/-!
# A085264: Smallest number with exactly n representations as sum of a squarefree number (A005117) and a square (A000290).

The programs for A085264, there is no canonical definition to state claims against.
-/

/-! ## A085264.P960552073694547072

`∑[A319226(∑[A299421(n)])]`
-/

namespace A085264.P960552073694547072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319226 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085264.P960552073694547072

/-!
# A085265: Numbers that can be written as sum of a positive squarefree number and a positive square.

The programs for A085265, the canonical program `A085265.P9458554115264240880` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085265 has offset 1).

The definition of A085265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085265.P9458554115264240880

`round(atan(n+4)+n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085265

/-- `round(atan(n+4)+n+1)` -/
def P9458554115264240880.Spec : Prop :=
  ∀ n, P9458554115264240880.a n = A085265 (n + 1)

theorem P9458554115264240880.correct : P9458554115264240880.Spec := by
  intro n
  simp only [A085265, Nat.add_sub_cancel]

end A085265

/-!
# A085266: Numbers having a unique representation as sum of a squarefree number and a square.

The programs for A085266, there is no canonical definition to state claims against.
-/

/-! ## A085266.P7586014020234460710

`eq[1, A085263(n+1)]+1`
-/

namespace A085266.P7586014020234460710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085266.P7586014020234460710

/-! ## A085266.P15795740906061843929

`eq[1, A085263(or(n, C(n, n²)))]`
-/

namespace A085266.P15795740906061843929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (Nat.lor n (Nat.choose n (n ^ 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085266.P15795740906061843929

/-! ## A085266.P3956245531376137468

`eq[1, A085263(A028310(n))]`
-/

namespace A085266.P3956245531376137468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085266.P3956245531376137468

/-! ## A085266.P13280048458836463802

`eq[1, A085263(A137734(n²))]`
-/

namespace A085266.P13280048458836463802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085266.P13280048458836463802

/-! ## A085266.P12681144272281548648

`A186764(n)+∑[A323352(n)]`
-/

namespace A085266.P12681144272281548648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085266.P12681144272281548648

/-!
# A085267: Numbers having at least two representations as sum of a squarefree number and a nonzero square.

The programs for A085267, there is no canonical definition to state claims against.
-/

/-! ## A085267.P8041194971969876444

`lt[1, A085263(n^A178334(n))]`
-/

namespace A085267.P8041194971969876444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085263 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A085267.P8041194971969876444

/-!
# A085268: Integer part of the conversion from Fahrenheit to Celsius.

The programs for A085268, the canonical program `A085268.P11043705551415320012` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085268 has offset 32).

The definition of A085268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085268.P11043705551415320012

`floor(5/9*n)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085268

/-- `floor(5/9*n)` -/
def P11043705551415320012.Spec : Prop :=
  ∀ n, P11043705551415320012.a n = A085268 (n + 32)

theorem P11043705551415320012.correct : P11043705551415320012.Spec := by
  intro n
  simp only [A085268, Nat.add_sub_cancel]

end A085268

/-! ## A085268.P14425402881907358638

`∑[dr(8*n)%2]`
-/

namespace A085268.P14425402881907358638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (8 * n : ℤ) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085268.P14425402881907358638

namespace A085268

/-- `∑[dr(8*n)%2]` -/
def P14425402881907358638.Spec : Prop :=
  ∀ n, (P14425402881907358638.a n : ℤ) = A085268 (n + 32)

end A085268

/-! ## A085268.P12238986728278363736

`∑[and(1, dr(8*n))]`
-/

namespace A085268.P12238986728278363736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (8 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085268.P12238986728278363736

namespace A085268

/-- `∑[and(1, dr(8*n))]` -/
def P12238986728278363736.Spec : Prop :=
  ∀ n, (P12238986728278363736.a n : ℤ) = A085268 (n + 32)

end A085268

/-! ## A085268.P3939746160165552558

`n-∑[(n%9)%2]`
-/

namespace A085268.P3939746160165552558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 9 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A085268.P3939746160165552558

namespace A085268

/-- `n-∑[(n%9)%2]` -/
def P3939746160165552558.Spec : Prop :=
  ∀ n, P3939746160165552558.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P12619142397478753314

`round(∑[dr(2*n)/9])`
-/

namespace A085268.P12619142397478753314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085268.P12619142397478753314

namespace A085268

/-- `round(∑[dr(2*n)/9])` -/
def P12619142397478753314.Spec : Prop :=
  ∀ n, P12619142397478753314.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P5084947431609418059

`∑[and(1, dr(n+1))]-1`
-/

namespace A085268.P5084947431609418059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.digitalRoot (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085268.P5084947431609418059

namespace A085268

/-- `∑[and(1, dr(n+1))]-1` -/
def P5084947431609418059.Spec : Prop :=
  ∀ n, P5084947431609418059.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P10390242948606858911

`∑[and(1, comp[10*n])]-1`
-/

namespace A085268.P10390242948606858911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085268.P10390242948606858911

namespace A085268

/-- `∑[and(1, comp[10*n])]-1` -/
def P10390242948606858911.Spec : Prop :=
  ∀ n, P10390242948606858911.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P11910059724284052271

`A008618(n)+n-A008619(n)`
-/

namespace A085268.P11910059724284052271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n + ((n : ℤ) - A008619 n)

end

end A085268.P11910059724284052271

namespace A085268

/-- `A008618(n)+n-A008619(n)` -/
def P11910059724284052271.Spec : Prop :=
  ∀ n, P11910059724284052271.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P3629323971081218777

`∑[A113217(n+1)]-1`
-/

namespace A085268.P3629323971081218777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085268.P3629323971081218777

namespace A085268

/-- `∑[A113217(n+1)]-1` -/
def P3629323971081218777.Spec : Prop :=
  ∀ n, P3629323971081218777.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P13306807246409962560

`A004526(A343609(n)+n)`
-/

namespace A085268.P13306807246409962560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A343609 n + (n : ℤ)).toNat

end

end A085268.P13306807246409962560

namespace A085268

/-- `A004526(A343609(n)+n)` -/
def P13306807246409962560.Spec : Prop :=
  ∀ n, P13306807246409962560.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P752189017798479602

`A004526(A067251(n+1)-1)`
-/

namespace A085268.P752189017798479602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067251 (n + 1) - 1).toNat

end

end A085268.P752189017798479602

namespace A085268

/-- `A004526(A067251(n+1)-1)` -/
def P752189017798479602.Spec : Prop :=
  ∀ n, P752189017798479602.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P1821098901503413783

`A004526(A002264(A002264(n))+n)`
-/

namespace A085268.P1821098901503413783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002264 (A002264 n).toNat + (n : ℤ)).toNat

end

end A085268.P1821098901503413783

namespace A085268

/-- `A004526(A002264(A002264(n))+n)` -/
def P1821098901503413783.Spec : Prop :=
  ∀ n, P1821098901503413783.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P15691641277532494816

`n-A002264(A004773(n+2))`
-/

namespace A085268.P15691641277532494816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002264 (A004773 (n + 2)).toNat

end

end A085268.P15691641277532494816

namespace A085268

/-- `n-A002264(A004773(n+2))` -/
def P15691641277532494816.Spec : Prop :=
  ∀ n, P15691641277532494816.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P2973898078320496982

`A057362(A004396(A004396(n))+n)`
-/

namespace A085268.P2973898078320496982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A004396 (A004396 n).toNat + (n : ℤ)).toNat

end

end A085268.P2973898078320496982

namespace A085268

/-- `A057362(A004396(A004396(n))+n)` -/
def P2973898078320496982.Spec : Prop :=
  ∀ n, P2973898078320496982.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P826339258087677644

`A057362(A004523(A004523(n+1))+n)`
-/

namespace A085268.P826339258087677644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A004523 (A004523 (n + 1)).toNat + (n : ℤ)).toNat

end

end A085268.P826339258087677644

namespace A085268

/-- `A057362(A004523(A004523(n+1))+n)` -/
def P826339258087677644.Spec : Prop :=
  ∀ n, P826339258087677644.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P14367667305582558831

`A002264(A004523(n)+n)`
-/

namespace A085268.P14367667305582558831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004523 n + (n : ℤ)).toNat

end

end A085268.P14367667305582558831

namespace A085268

/-- `A002264(A004523(n)+n)` -/
def P14367667305582558831.Spec : Prop :=
  ∀ n, P14367667305582558831.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P16238798800880920299

`A002264(A032793(n+1)-1)`
-/

namespace A085268.P16238798800880920299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A032793 (n + 1) - 1).toNat

end

end A085268.P16238798800880920299

namespace A085268

/-- `A002264(A032793(n+1)-1)` -/
def P16238798800880920299.Spec : Prop :=
  ∀ n, P16238798800880920299.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P12073020123325555179

`A002264(A343028(n)-2*n)`
-/

namespace A085268.P12073020123325555179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A343028 n - (2 * n : ℤ)).toNat

end

end A085268.P12073020123325555179

namespace A085268

/-- `A002264(A343028(n)-2*n)` -/
def P12073020123325555179.Spec : Prop :=
  ∀ n, P12073020123325555179.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P17419940227785754356

`A004773(A047220(n+1))-A047220(n+1)`
-/

namespace A085268.P17419940227785754356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A047220 (n + 1)).toNat - A047220 (n + 1)

end

end A085268.P17419940227785754356

namespace A085268

/-- `A004773(A047220(n+1))-A047220(n+1)` -/
def P17419940227785754356.Spec : Prop :=
  ∀ n, P17419940227785754356.a n = A085268 (n + 32)

end A085268

/-! ## A085268.P17559061739988225350

`A004526(A004523(A004523(n)+n))`
-/

namespace A085268.P17559061739988225350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004523 (A004523 n + (n : ℤ)).toNat).toNat

end

end A085268.P17559061739988225350

namespace A085268

/-- `A004526(A004523(A004523(n)+n))` -/
def P17559061739988225350.Spec : Prop :=
  ∀ n, P17559061739988225350.a n = A085268 (n + 32)

end A085268

/-!
# A085269: Integer part of the conversion from centimeters to inches.

The programs for A085269, there is no canonical definition to state claims against.
-/

/-! ## A085269.P6328357857004019195

`A023416(2^floor(A078174(2*(n+1))/9))`
-/

namespace A085269.P6328357857004019195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(A078174 (2 * (n + 1)) : ℚ) / 9⌋ : ℤ))).toNat

end

end A085269.P6328357857004019195

/-! ## A085269.P3553726714823194686

`floor(A276876(2*n+1)/8)`
-/

namespace A085269.P3553726714823194686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276876 (2 * n + 1) : ℚ) / 8⌋

end

end A085269.P3553726714823194686

/-! ## A085269.P16270250391446457569

`round(((1-n)²+n)/A359908(2*(n+1)))`
-/

namespace A085269.P16270250391446457569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ) / (A359908 (2 * (n + 1)) : ℚ))

end

end A085269.P16270250391446457569

/-! ## A085269.P6566942259082014678

`A099396(A018123(n+1))`
-/

namespace A085269.P6566942259082014678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A018123 (n + 1)).toNat

end

end A085269.P6566942259082014678

/-! ## A085269.P5795303634805838885

`A099396(A018124(n+1))`
-/

namespace A085269.P5795303634805838885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099396 (A018124 (n + 1)).toNat

end

end A085269.P5795303634805838885

/-!
# A085270: Integer part of the conversion from miles to kilometers.

The programs for A085270, the canonical program `A085270.P372733221411449555` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085270 has offset 0).

The definition of A085270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085270.P372733221411449555

`round(log(A005053(n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A085270

/-- `round(log(A005053(n)))` -/
def P372733221411449555.Spec : Prop :=
  ∀ n, P372733221411449555.a n = A085270 n

theorem P372733221411449555.correct : P372733221411449555.Spec := by
  intro n
  simp only [A085270]

end A085270

/-! ## A085270.P4480782550744996676

`round(log(A249512(2*n)))`
-/

namespace A085270.P4480782550744996676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A249512 (2 * n) : ℝ))

end

end A085270.P4480782550744996676

namespace A085270

/-- `round(log(A249512(2*n)))` -/
def P4480782550744996676.Spec : Prop :=
  ∀ n, P4480782550744996676.a n = A085270 n

end A085270

/-! ## A085270.P12884439539571995097

`round(log(A151252(n)))`
-/

namespace A085270.P12884439539571995097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A151252 n : ℝ))

end

end A085270.P12884439539571995097

namespace A085270

/-- `round(log(A151252(n)))` -/
def P12884439539571995097.Spec : Prop :=
  ∀ n, P12884439539571995097.a n = A085270 n

end A085270

/-! ## A085270.P7464467297274052937

`A002264(A184415(A184478(2*n+1)))`
-/

namespace A085270.P7464467297274052937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A184415 (A184478 (2 * n + 1)).toNat).toNat

end

end A085270.P7464467297274052937

namespace A085270

/-- `A002264(A184415(A184478(2*n+1)))` -/
def P7464467297274052937.Spec : Prop :=
  ∀ n, P7464467297274052937.a n = A085270 n

end A085270

/-! ## A085270.P17344156050578617338

`A121902(A022286(n))`
-/

namespace A085270.P17344156050578617338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A022286 n).toNat

end

end A085270.P17344156050578617338

namespace A085270

/-- `A121902(A022286(n))` -/
def P17344156050578617338.Spec : Prop :=
  ∀ n, P17344156050578617338.a n = A085270 n

end A085270

/-!
# A085271: Difference between n-th composite number and its smallest prime divisor.

The programs for A085271, there is no canonical definition to state claims against.
-/

/-! ## A085271.P7286501927853225019

`A002808(n+1)-A056608(n+1)`
-/

namespace A085271.P7286501927853225019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A056608 (n + 1)

end

end A085271.P7286501927853225019

/-! ## A085271.P11769786411119079006

`A046666(Δ[A053767(n)])`
-/

namespace A085271.P11769786411119079006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (f1 (n + 1) - f1 n).toNat

end

end A085271.P11769786411119079006

/-! ## A085271.P10913555882067381003

`A046666(A002808(n+1))`
-/

namespace A085271.P10913555882067381003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A002808 (n + 1)).toNat

end

end A085271.P10913555882067381003

/-! ## A085271.P16769733484709274815

`A046666(A018252(n+2))`
-/

namespace A085271.P16769733484709274815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A018252 (n + 2)).toNat

end

end A085271.P16769733484709274815

/-! ## A085271.P10680796183930259393

`A046666(A141468(n+3))`
-/

namespace A085271.P10680796183930259393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A141468 (n + 3)).toNat

end

end A085271.P10680796183930259393

/-! ## A085271.P13111437338162055390

`A046666(lt[1, A107463(n)])`
-/

namespace A085271.P13111437338162055390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085271.P13111437338162055390

/-! ## A085271.P8757430080531621606

`A046666(lt[1, A175126(n)])`
-/

namespace A085271.P8757430080531621606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085271.P8757430080531621606

/-! ## A085271.P2889628682006176353

`A046666(A282671(n+1)/2)`
-/

namespace A085271.P2889628682006176353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A085271.P2889628682006176353

/-! ## A085271.P12866787967851361467

`A085275(n+1)-A085428(n)`
-/

namespace A085271.P12866787967851361467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085275 (n + 1) - A085428 n

end

end A085271.P12866787967851361467

/-! ## A085271.P12313684217265492704

`A282671(n+1)-A079772(n+1)`
-/

namespace A085271.P12313684217265492704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A079772 (n + 1)

end

end A085271.P12313684217265492704

/-! ## A085271.P12398230314543541775

`A018252(n+2)-A056608(n+1)`
-/

namespace A085271.P12398230314543541775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A056608 (n + 1)

end

end A085271.P12398230314543541775

/-! ## A085271.P1536026496407468560

`A002808(n+1)+A002808(n+1)-A079772(n+1)`
-/

namespace A085271.P1536026496407468560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A002808 (n + 1) - A079772 (n + 1))

end

end A085271.P1536026496407468560

/-! ## A085271.P335449216500379143

`A085273(n+1)+A085275(n+1)-A079772(n+1)`
-/

namespace A085271.P335449216500379143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085273 (n + 1) + (A085275 (n + 1) - A079772 (n + 1))

end

end A085271.P335449216500379143

/-! ## A085271.P10265207796698239110

`A161986(n+1)-(A161849(n+1)+A056608(n+1))`
-/

namespace A085271.P10265207796698239110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - (A161849 (n + 1) + A056608 (n + 1))

end

end A085271.P10265207796698239110

/-! ## A085271.P3073122591448263402

`A079772(n+1)-A056608(n+1)-A056608(n+1)`
-/

namespace A085271.P3073122591448263402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) - A056608 (n + 1) - A056608 (n + 1)

end

end A085271.P3073122591448263402

/-! ## A085271.P1654535878826831580

`A052369(n+1)*A161003(n+1)-A056608(n+1)`
-/

namespace A085271.P1654535878826831580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) * A161003 (n + 1) - A056608 (n + 1)

end

end A085271.P1654535878826831580

/-! ## A085271.P16503320007295015484

`A056608(n+1)*A160180(n+1)-A056608(n+1)`
-/

namespace A085271.P16503320007295015484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) * A160180 (n + 1) - A056608 (n + 1)

end

end A085271.P16503320007295015484

/-! ## A085271.P8140698888183943087

`A002808(n+1)-A002808(n+1)/A160180(n+1)`
-/

namespace A085271.P8140698888183943087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) - (A002808 (n + 1) : ℚ) / (A160180 (n + 1) : ℚ)

end

end A085271.P8140698888183943087

/-! ## A085271.P12855291079438243322

`filter[A046666(n+3), A043545(#)]`
-/

namespace A085271.P12855291079438243322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A085271.P12855291079438243322

/-! ## A085271.P13138748465656188607

`filter[A046666(n+3), A178226(#)]`
-/

namespace A085271.P13138748465656188607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A085271.P13138748465656188607

/-!
# A085272: a(n) = lcm_{k=1..n} (prime(k) + 1).

The programs for A085272, the canonical program `A085272.P12938843479145579173` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085272 has offset 1).

The definition of A085272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085272.P12938843479145579173

`lcm(p?[xor(1, n)+1]+1, a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085272

/-- `lcm(p?[xor(1, n)+1]+1, a(n-1))` -/
def P12938843479145579173.Spec : Prop :=
  ∀ n, (P12938843479145579173.a n : ℤ) = A085272 (n + 1)

theorem P12938843479145579173.correct : P12938843479145579173.Spec := by
  intro n
  simp only [A085272, Nat.add_sub_cancel]

end A085272

/-! ## A085272.P13232093931430395984

`lcm(p?[round(8*n/7)]+1, -a(n-1))` with `a(0)=3`
-/

namespace A085272.P13232093931430395984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) (-(a (n - 1) : ℤ))

end

end A085272.P13232093931430395984

namespace A085272

/-- `lcm(p?[round(8*n/7)]+1, -a(n-1))` -/
def P13232093931430395984.Spec : Prop :=
  ∀ n, (P13232093931430395984.a n : ℤ) = A085272 (n + 1)

end A085272

/-! ## A085272.P11091821613838091979

`lcm(a(n-1), A008864(n+1))` with `a(0)=3`
-/

namespace A085272.P11091821613838091979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A008864 (n + 1))

end

end A085272.P11091821613838091979

namespace A085272

/-- `lcm(a(n-1), A008864(n+1))` -/
def P11091821613838091979.Spec : Prop :=
  ∀ n, (P11091821613838091979.a n : ℤ) = A085272 (n + 1)

end A085272

/-! ## A085272.P8842478602209318947

`lcm(abs(a(n-1)), A055670(n+1))` with `a(0)=3`
-/

namespace A085272.P8842478602209318947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A055670 (n + 1))

end

end A085272.P8842478602209318947

namespace A085272

/-- `lcm(abs(a(n-1)), A055670(n+1))` -/
def P8842478602209318947.Spec : Prop :=
  ∀ n, (P8842478602209318947.a n : ℤ) = A085272 (n + 1)

end A085272

/-! ## A085272.P560624119720429617

`lcm(-a(n-1), A299763(n+2))` with `a(0)=3`
-/

namespace A085272.P560624119720429617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A299763 (n + 2))

end

end A085272.P560624119720429617

namespace A085272

/-- `lcm(-a(n-1), A299763(n+2))` -/
def P560624119720429617.Spec : Prop :=
  ∀ n, (P560624119720429617.a n : ℤ) = A085272 (n + 1)

end A085272

/-!
# A085273: Difference between n-th composite number and its largest prime divisor.

The programs for A085273, the canonical program `A085273.P3425494677370618901` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085273 has offset 1).

The definition of A085273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085273.P12877618379495413047

`A079772(n+1)-A085428(n)`
-/

namespace A085273.P12877618379495413047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) - A085428 n

end

end A085273.P12877618379495413047

namespace A085273

/-- `A079772(n+1)-A085428(n)` -/
def P12877618379495413047.Spec : Prop :=
  ∀ n, P12877618379495413047.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P3425494677370618901

`A002808(n+1)-A052369(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A085273

/-- `A002808(n+1)-A052369(n+1)` -/
def P3425494677370618901.Spec : Prop :=
  ∀ n, P3425494677370618901.a n = A085273 (n + 1)

theorem P3425494677370618901.correct : P3425494677370618901.Spec := by
  intro n
  simp only [A085273, Nat.add_sub_cancel]

end A085273

/-! ## A085273.P9501866264040409896

`A282671(n+1)-A085275(n+1)`
-/

namespace A085273.P9501866264040409896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A085275 (n + 1)

end

end A085273.P9501866264040409896

namespace A085273

/-- `A282671(n+1)-A085275(n+1)` -/
def P9501866264040409896.Spec : Prop :=
  ∀ n, P9501866264040409896.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P4946068308783501583

`A018252(n+2)-A052369(n+1)`
-/

namespace A085273.P4946068308783501583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A052369 (n + 1)

end

end A085273.P4946068308783501583

namespace A085273

/-- `A018252(n+2)-A052369(n+1)` -/
def P4946068308783501583.Spec : Prop :=
  ∀ n, P4946068308783501583.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P6927037790943978392

`(A161003(n+1)-1)*A052369(n+1)`
-/

namespace A085273.P6927037790943978392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161003 (n + 1) - 1) * A052369 (n + 1)

end

end A085273.P6927037790943978392

namespace A085273

/-- `(A161003(n+1)-1)*A052369(n+1)` -/
def P6927037790943978392.Spec : Prop :=
  ∀ n, P6927037790943978392.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P17747357877072259253

`A141468(n+3)-A006530(A141468(n+3))`
-/

namespace A085273.P17747357877072259253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A006530 (A141468 (n + 3)).toNat

end

end A085273.P17747357877072259253

namespace A085273

/-- `A141468(n+3)-A006530(A141468(n+3))` -/
def P17747357877072259253.Spec : Prop :=
  ∀ n, P17747357877072259253.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P12186257488927464871

`A002808(n+1)-A006530(lt[1, A328847(n)])`
-/

namespace A085273.P12186257488927464871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085273.P12186257488927464871

namespace A085273

/-- `A002808(n+1)-A006530(lt[1, A328847(n)])` -/
def P12186257488927464871.Spec : Prop :=
  ∀ n, P12186257488927464871.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P6678081082314633388

`lt[1, A001222(n+1)]+1-A006530(A002808(n+1))`
-/

namespace A085273.P6678081082314633388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A006530 (A002808 (n + 1)).toNat

end

end A085273.P6678081082314633388

namespace A085273

/-- `lt[1, A001222(n+1)]+1-A006530(A002808(n+1))` -/
def P6678081082314633388.Spec : Prop :=
  ∀ n, P6678081082314633388.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P7387292818573755568

`lt[2, A000005(n+1)]+1-A006530(A002808(n+1))`
-/

namespace A085273.P7387292818573755568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A006530 (A002808 (n + 1)).toNat

end

end A085273.P7387292818573755568

namespace A085273

/-- `lt[2, A000005(n+1)]+1-A006530(A002808(n+1))` -/
def P7387292818573755568.Spec : Prop :=
  ∀ n, P7387292818573755568.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P2776017152701157219

`A002808(n+1)+A002808(n+1)-A085275(n+1)`
-/

namespace A085273.P2776017152701157219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A002808 (n + 1) - A085275 (n + 1))

end

end A085273.P2776017152701157219

namespace A085273

/-- `A002808(n+1)+A002808(n+1)-A085275(n+1)` -/
def P2776017152701157219.Spec : Prop :=
  ∀ n, P2776017152701157219.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P7970354825757767233

`A079772(n+1)+A085271(n+1)-A085275(n+1)`
-/

namespace A085273.P7970354825757767233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) + (A085271 (n + 1) - A085275 (n + 1))

end

end A085273.P7970354825757767233

namespace A085273

/-- `A079772(n+1)+A085271(n+1)-A085275(n+1)` -/
def P7970354825757767233.Spec : Prop :=
  ∀ n, P7970354825757767233.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P17707957618168420659

`A161986(n+1)-(A161849(n+1)+A052369(n+1))`
-/

namespace A085273.P17707957618168420659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161986 (n + 1) - (A161849 (n + 1) + A052369 (n + 1))

end

end A085273.P17707957618168420659

namespace A085273

/-- `A161986(n+1)-(A161849(n+1)+A052369(n+1))` -/
def P17707957618168420659.Spec : Prop :=
  ∀ n, P17707957618168420659.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P1962732466373751790

`A056608(n+1)*A160180(n+1)-A052369(n+1)`
-/

namespace A085273.P1962732466373751790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) * A160180 (n + 1) - A052369 (n + 1)

end

end A085273.P1962732466373751790

namespace A085273

/-- `A056608(n+1)*A160180(n+1)-A052369(n+1)` -/
def P1962732466373751790.Spec : Prop :=
  ∀ n, P1962732466373751790.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P14430471165182066687

`A002808(n+1)-A002808(n+1)/A161003(n+1)`
-/

namespace A085273.P14430471165182066687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) - (A002808 (n + 1) : ℚ) / (A161003 (n + 1) : ℚ)

end

end A085273.P14430471165182066687

namespace A085273

/-- `A002808(n+1)-A002808(n+1)/A161003(n+1)` -/
def P14430471165182066687.Spec : Prop :=
  ∀ n, P14430471165182066687.a n = (A085273 (n + 1) : ℚ)

end A085273

/-! ## A085273.P12094959032515048105

`lt[A000010(n+1), n]+1-A006530(A002808(n+1))`
-/

namespace A085273.P12094959032515048105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A006530 (A002808 (n + 1)).toNat

end

end A085273.P12094959032515048105

namespace A085273

/-- `lt[A000010(n+1), n]+1-A006530(A002808(n+1))` -/
def P12094959032515048105.Spec : Prop :=
  ∀ n, P12094959032515048105.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P15635854428758492586

`A002808(n+1)-A006530(lt[A006530(n+1), n]+1)`
-/

namespace A085273.P15635854428758492586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085273.P15635854428758492586

namespace A085273

/-- `A002808(n+1)-A006530(lt[A006530(n+1), n]+1)` -/
def P15635854428758492586.Spec : Prop :=
  ∀ n, P15635854428758492586.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P11512011183794809471

`A002808(2*(n+1)-(n+1))-A006530(A002808(n+1))`
-/

namespace A085273.P11512011183794809471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (n + 1) - (n + 1)) - A006530 (A002808 (n + 1)).toNat

end

end A085273.P11512011183794809471

namespace A085273

/-- `A002808(2*(n+1)-(n+1))-A006530(A002808(n+1))` -/
def P11512011183794809471.Spec : Prop :=
  ∀ n, P11512011183794809471.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P9410563346265868788

`A076563(A002808(n+1))`
-/

namespace A085273.P9410563346265868788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (A002808 (n + 1)).toNat

end

end A085273.P9410563346265868788

namespace A085273

/-- `A076563(A002808(n+1))` -/
def P9410563346265868788.Spec : Prop :=
  ∀ n, P9410563346265868788.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P17492727151311279284

`A076563(A018252(n+2))`
-/

namespace A085273.P17492727151311279284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (A018252 (n + 2)).toNat

end

end A085273.P17492727151311279284

namespace A085273

/-- `A076563(A018252(n+2))` -/
def P17492727151311279284.Spec : Prop :=
  ∀ n, P17492727151311279284.a n = A085273 (n + 1)

end A085273

/-! ## A085273.P14022130275762556957

`A002808(n+1)-A006530(lt[1, A223135(n)])`
-/

namespace A085273.P14022130275762556957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085273.P14022130275762556957

namespace A085273

/-- `A002808(n+1)-A006530(lt[1, A223135(n)])` -/
def P14022130275762556957.Spec : Prop :=
  ∀ n, P14022130275762556957.a n = A085273 (n + 1)

end A085273

/-!
# A085275: a(n) = Sum of n-th composite number and its largest prime divisor.

The programs for A085275, the canonical program `A085275.P13689628955370853305` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085275 has offset 1).

The definition of A085275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085275.P5722099298671133066

`A085428(n)+A085271(n+1)`
-/

namespace A085275.P5722099298671133066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085428 n + A085271 (n + 1)

end

end A085275.P5722099298671133066

namespace A085275

/-- `A085428(n)+A085271(n+1)` -/
def P5722099298671133066.Spec : Prop :=
  ∀ n, P5722099298671133066.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P13689628955370853305

`A052369(n+1)+A002808(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A085275

/-- `A052369(n+1)+A002808(n+1)` -/
def P13689628955370853305.Spec : Prop :=
  ∀ n, P13689628955370853305.a n = A085275 (n + 1)

theorem P13689628955370853305.correct : P13689628955370853305.Spec := by
  intro n
  simp only [A085275, Nat.add_sub_cancel]

end A085275

/-! ## A085275.P4502042265781793427

`A052369(n+1)+A018252(n+2)`
-/

namespace A085275.P4502042265781793427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + A018252 (n + 2)

end

end A085275.P4502042265781793427

namespace A085275

/-- `A052369(n+1)+A018252(n+2)` -/
def P4502042265781793427.Spec : Prop :=
  ∀ n, P4502042265781793427.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P2119767082487286792

`A282671(n+1)-A085273(n+1)`
-/

namespace A085275.P2119767082487286792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) - A085273 (n + 1)

end

end A085275.P2119767082487286792

namespace A085275

/-- `A282671(n+1)-A085273(n+1)` -/
def P2119767082487286792.Spec : Prop :=
  ∀ n, P2119767082487286792.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P5830840821099090197

`A002808(n+1)+A002808(n+1)-A085273(n+1)`
-/

namespace A085275.P5830840821099090197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A002808 (n + 1) - A085273 (n + 1))

end

end A085275.P5830840821099090197

namespace A085275

/-- `A002808(n+1)+A002808(n+1)-A085273(n+1)` -/
def P5830840821099090197.Spec : Prop :=
  ∀ n, P5830840821099090197.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P15357497102592564149

`A079772(n+1)+A085271(n+1)-A085273(n+1)`
-/

namespace A085275.P15357497102592564149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079772 (n + 1) + (A085271 (n + 1) - A085273 (n + 1))

end

end A085275.P15357497102592564149

namespace A085275

/-- `A079772(n+1)+A085271(n+1)-A085273(n+1)` -/
def P15357497102592564149.Spec : Prop :=
  ∀ n, P15357497102592564149.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P6060091367040537001

`A052369(n+1)+A161986(n+1)-A161849(n+1)`
-/

namespace A085275.P6060091367040537001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + (A161986 (n + 1) - A161849 (n + 1))

end

end A085275.P6060091367040537001

namespace A085275

/-- `A052369(n+1)+A161986(n+1)-A161849(n+1)` -/
def P6060091367040537001.Spec : Prop :=
  ∀ n, P6060091367040537001.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P6137094710355141285

`A052369(n+1)+A052369(n+1)*A161003(n+1)`
-/

namespace A085275.P6137094710355141285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + A052369 (n + 1) * A161003 (n + 1)

end

end A085275.P6137094710355141285

namespace A085275

/-- `A052369(n+1)+A052369(n+1)*A161003(n+1)` -/
def P6137094710355141285.Spec : Prop :=
  ∀ n, P6137094710355141285.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P15339818929162743380

`A002808(n+1)+A002808(n+1)/A161003(n+1)`
-/

namespace A085275.P15339818929162743380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) + (A002808 (n + 1) : ℚ) / (A161003 (n + 1) : ℚ)

end

end A085275.P15339818929162743380

namespace A085275

/-- `A002808(n+1)+A002808(n+1)/A161003(n+1)` -/
def P15339818929162743380.Spec : Prop :=
  ∀ n, P15339818929162743380.a n = (A085275 (n + 1) : ℚ)

end A085275

/-! ## A085275.P11256083620345286134

`A070229(comp[A351078(n)])`
-/

namespace A085275.P11256083620345286134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A085275.P11256083620345286134

namespace A085275

/-- `A070229(comp[A351078(n)])` -/
def P11256083620345286134.Spec : Prop :=
  ∀ n, P11256083620345286134.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P16213896887428778875

`A070229(A002808(n+1))`
-/

namespace A085275.P16213896887428778875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A002808 (n + 1)).toNat

end

end A085275.P16213896887428778875

namespace A085275

/-- `A070229(A002808(n+1))` -/
def P16213896887428778875.Spec : Prop :=
  ∀ n, P16213896887428778875.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P7910158943498594441

`A070229(A018252(n+2))`
-/

namespace A085275.P7910158943498594441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A018252 (n + 2)).toNat

end

end A085275.P7910158943498594441

namespace A085275

/-- `A070229(A018252(n+2))` -/
def P7910158943498594441.Spec : Prop :=
  ∀ n, P7910158943498594441.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P18349537517075352879

`A070229(A141468(n+3))`
-/

namespace A085275.P18349537517075352879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A141468 (n + 3)).toNat

end

end A085275.P18349537517075352879

namespace A085275

/-- `A070229(A141468(n+3))` -/
def P18349537517075352879.Spec : Prop :=
  ∀ n, P18349537517075352879.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P11668087677573107831

`A070229(lt[1, A032741(n)])`
-/

namespace A085275.P11668087677573107831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085275.P11668087677573107831

namespace A085275

/-- `A070229(lt[1, A032741(n)])` -/
def P11668087677573107831.Spec : Prop :=
  ∀ n, P11668087677573107831.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P14419205067590714366

`A070229(lt[1, A107286(n)])`
-/

namespace A085275.P14419205067590714366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085275.P14419205067590714366

namespace A085275

/-- `A070229(lt[1, A107286(n)])` -/
def P14419205067590714366.Spec : Prop :=
  ∀ n, P14419205067590714366.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P253901807347536707

`A070229(lt[2, A225244(n)])`
-/

namespace A085275.P253901807347536707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085275.P253901807347536707

namespace A085275

/-- `A070229(lt[2, A225244(n)])` -/
def P253901807347536707.Spec : Prop :=
  ∀ n, P253901807347536707.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P18220794435346766240

`A070229(lt[2, A304442(n)])`
-/

namespace A085275.P18220794435346766240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085275.P18220794435346766240

namespace A085275

/-- `A070229(lt[2, A304442(n)])` -/
def P18220794435346766240.Spec : Prop :=
  ∀ n, P18220794435346766240.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P3541645892561883768

`A070229(A006255(A297022(n+2)))`
-/

namespace A085275.P3541645892561883768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A006255 (A297022 (n + 2)).toNat).toNat

end

end A085275.P3541645892561883768

namespace A085275

/-- `A070229(A006255(A297022(n+2)))` -/
def P3541645892561883768.Spec : Prop :=
  ∀ n, P3541645892561883768.a n = A085275 (n + 1)

end A085275

/-! ## A085275.P8672568733512023797

`A111426(n+1)+A079772(n+1)`
-/

namespace A085275.P8672568733512023797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111426 (n + 1) + A079772 (n + 1)

end

end A085275.P8672568733512023797

namespace A085275

/-- `A111426(n+1)+A079772(n+1)` -/
def P8672568733512023797.Spec : Prop :=
  ∀ n, P8672568733512023797.a n = A085275 (n + 1)

end A085275

/-!
# A085277: Expansion of (1+x)^2/((1-2x)(1-3x)).

The programs for A085277, the canonical program `A085277.P11106104755742680718` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085277 has offset 0).

The definition of A085277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-5x+6x^2))` (program `A085277.P11106104755742680718`, by `A085277.P11106104755742680718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085277.P11106104755742680718

`ogf((1+2x+x^2)/(1-5x+6x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085277

/-- `ogf((1+2x+x^2)/(1-5x+6x^2))` -/
def P11106104755742680718.Spec : Prop :=
  ∀ n, P11106104755742680718.a n = A085277 n

theorem P11106104755742680718.correct : P11106104755742680718.Spec := by
  intro n
  simp only [A085277]

end A085277

/-! ## A085277.P14111934115199690840

`5*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=7, a(2)=30`
-/

namespace A085277.P14111934115199690840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 30] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A085277.P14111934115199690840

namespace A085277

/-- `5*a(n-1)-6*a(n-2)` -/
def P14111934115199690840.Spec : Prop :=
  ∀ n, P14111934115199690840.a n = A085277 n

end A085277

/-! ## A085277.P514457668850944277

`A145563(n)+A053581(n)`
-/

namespace A085277.P514457668850944277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145563 n + A053581 n

end

end A085277.P514457668850944277

namespace A085277

/-- `A145563(n)+A053581(n)` -/
def P514457668850944277.Spec : Prop :=
  ∀ n, P514457668850944277.a n = A085277 n

end A085277

/-! ## A085277.P6400819656491099446

`A102485(n)+Δ[A000392(n)]`
-/

namespace A085277.P6400819656491099446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102485 n + (f1 (n + 1) - f1 n)

end

end A085277.P6400819656491099446

namespace A085277

/-- `A102485(n)+Δ[A000392(n)]` -/
def P6400819656491099446.Spec : Prop :=
  ∀ n, P6400819656491099446.a n = A085277 n

end A085277

/-! ## A085277.P8207316567204180779

`A053581(n)+4*A001047(n)`
-/

namespace A085277.P8207316567204180779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n + 4 * A001047 n

end

end A085277.P8207316567204180779

namespace A085277

/-- `A053581(n)+4*A001047(n)` -/
def P8207316567204180779.Spec : Prop :=
  ∀ n, P8207316567204180779.a n = A085277 n

end A085277

/-! ## A085277.P13911579625873271297

`A001047(n)+A210448(n)+A053581(n)`
-/

namespace A085277.P13911579625873271297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n + (A210448 n + A053581 n)

end

end A085277.P13911579625873271297

namespace A085277

/-- `A001047(n)+A210448(n)+A053581(n)` -/
def P13911579625873271297.Spec : Prop :=
  ∀ n, P13911579625873271297.a n = A085277 n

end A085277

/-! ## A085277.P6709675125922167137

`Δ[A291012(n)-A020707(n)]`
-/

namespace A085277.P6709675125922167137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291012 n - A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085277.P6709675125922167137

namespace A085277

/-- `Δ[A291012(n)-A020707(n)]` -/
def P6709675125922167137.Spec : Prop :=
  ∀ n, P6709675125922167137.a n = A085277 n

end A085277

/-! ## A085277.P2952581061126145939

`Δ[A291012(n)-A020737(n)]`
-/

namespace A085277.P2952581061126145939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291012 n - A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085277.P2952581061126145939

namespace A085277

/-- `Δ[A291012(n)-A020737(n)]` -/
def P2952581061126145939.Spec : Prop :=
  ∀ n, P2952581061126145939.a n = A085277 n

end A085277

/-! ## A085277.P13707610118822893080

`A245804(n+1)-A245804(A289207(n+1))`
-/

namespace A085277.P13707610118822893080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 (n + 1) - A245804 (A289207 (n + 1)).toNat

end

end A085277.P13707610118822893080

namespace A085277

/-- `A245804(n+1)-A245804(A289207(n+1))` -/
def P13707610118822893080.Spec : Prop :=
  ∀ n, P13707610118822893080.a n = A085277 n

end A085277

/-! ## A085277.P10597167570823096877

`A091344(n+1)-(A000392(n+1)+A000392(n))`
-/

namespace A085277.P10597167570823096877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091344 (n + 1) - (A000392 (n + 1) + A000392 n)

end

end A085277.P10597167570823096877

namespace A085277

/-- `A091344(n+1)-(A000392(n+1)+A000392(n))` -/
def P10597167570823096877.Spec : Prop :=
  ∀ n, P10597167570823096877.a n = A085277 n

end A085277

/-!
# A085278: Expansion of (1+2x)^2/((1-x^2)(1-2x)).

The programs for A085278, the canonical program `A085278.P16616370329092200018` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085278 has offset 0).

The definition of A085278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+4x^2)/(1-2x-x^2+2x^3))` (program `A085278.P16616370329092200018`, by `A085278.P16616370329092200018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085278.P16616370329092200018

`ogf((1+4x+4x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085278

/-- `ogf((1+4x+4x^2)/(1-2x-x^2+2x^3))` -/
def P16616370329092200018.Spec : Prop :=
  ∀ n, P16616370329092200018.a n = A085278 n

theorem P16616370329092200018.correct : P16616370329092200018.Spec := by
  intro n
  simp only [A085278]

end A085278

/-! ## A085278.P15522548389732429580

`16*2^n/3+(-1)^n/6-9/2`
-/

namespace A085278.P15522548389732429580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 2 ^ n : ℚ) / 3 + ((-1) ^ n : ℚ) / 6 - (9 : ℚ) / 2

end

end A085278.P15522548389732429580

namespace A085278

/-- `16*2^n/3+(-1)^n/6-9/2` -/
def P15522548389732429580.Spec : Prop :=
  ∀ n, P15522548389732429580.a n = (A085278 n : ℚ)

end A085278

/-! ## A085278.P16155012760931368454

`∑[4*2^n-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A085278.P16155012760931368454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (4 * 2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P16155012760931368454

namespace A085278

/-- `∑[4*2^n-a(n-1)]` -/
def P16155012760931368454.Spec : Prop :=
  ∀ n, P16155012760931368454.a n = A085278 n

end A085278

/-! ## A085278.P4722752066903379300

`∑[xor(3*(2^n-1)+1, round(2^n/3))]`
-/

namespace A085278.P4722752066903379300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * ((2 ^ n : ℤ) - 1) + 1) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P4722752066903379300

namespace A085278

/-- `∑[xor(3*(2^n-1)+1, round(2^n/3))]` -/
def P4722752066903379300.Spec : Prop :=
  ∀ n, P4722752066903379300.a n = A085278 n

end A085278

/-! ## A085278.P11782482306799101153

`∑[A168642(n)]`
-/

namespace A085278.P11782482306799101153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P11782482306799101153

namespace A085278

/-- `∑[A168642(n)]` -/
def P11782482306799101153.Spec : Prop :=
  ∀ n, P11782482306799101153.a n = A085278 n

end A085278

/-! ## A085278.P4413363424902038459

`∑[record[A112031(n+1)]]`
-/

namespace A085278.P4413363424902038459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P4413363424902038459

namespace A085278

/-- `∑[record[A112031(n+1)]]` -/
def P4413363424902038459.Spec : Prop :=
  ∀ n, P4413363424902038459.a n = A085278 n

end A085278

/-! ## A085278.P3995304107711095280

`∑[record[A112447(n+3)]]`
-/

namespace A085278.P3995304107711095280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P3995304107711095280

namespace A085278

/-- `∑[record[A112447(n+3)]]` -/
def P3995304107711095280.Spec : Prop :=
  ∀ n, P3995304107711095280.a n = A085278 n

end A085278

/-! ## A085278.P17065758252108835183

`∑[A169969(2*n+1)]`
-/

namespace A085278.P17065758252108835183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085278.P17065758252108835183

namespace A085278

/-- `∑[A169969(2*n+1)]` -/
def P17065758252108835183.Spec : Prop :=
  ∀ n, P17065758252108835183.a n = A085278 n

end A085278

/-!
# A085279: Expansion of (1 - 2*x - 2*x^2)/((1 - 2*x)*(1 - 3*x)).

The programs for A085279, the canonical program `A085279.P3698221855780300432` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085279 has offset 0).

The definition of A085279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-2x^2)/(1-5x+6x^2))` (program `A085279.P3698221855780300432`, by `A085279.P3698221855780300432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085279.P3698221855780300432

`ogf((1-2x-2x^2)/(1-5x+6x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085279

/-- `ogf((1-2x-2x^2)/(1-5x+6x^2))` -/
def P3698221855780300432.Spec : Prop :=
  ∀ n, P3698221855780300432.a n = A085279 n

theorem P3698221855780300432.correct : P3698221855780300432.Spec := by
  intro n
  simp only [A085279]

end A085279

/-! ## A085279.P11342537575199387999

`5*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A085279.P11342537575199387999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A085279.P11342537575199387999

namespace A085279

/-- `5*a(n-1)-6*a(n-2)` -/
def P11342537575199387999.Spec : Prop :=
  ∀ n, P11342537575199387999.a n = A085279 n

end A085279

/-! ## A085279.P4817446425812210820

`floor(2^n+3^(n-1))`
-/

namespace A085279.P4817446425812210820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A085279.P4817446425812210820

namespace A085279

/-- `floor(2^n+3^(n-1))` -/
def P4817446425812210820.Spec : Prop :=
  ∀ n, P4817446425812210820.a n = A085279 n

end A085279

/-! ## A085279.P15475952038237897827

`ceil(3^(n-1))+and(-2, 2^n)`
-/

namespace A085279.P15475952038237897827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + Int.land (-2) (2 ^ n : ℤ)

end

end A085279.P15475952038237897827

namespace A085279

/-- `ceil(3^(n-1))+and(-2, 2^n)` -/
def P15475952038237897827.Spec : Prop :=
  ∀ n, P15475952038237897827.a n = A085279 n

end A085279

/-! ## A085279.P6743175157845359037

`3^(n-2)+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A085279.P6743175157845359037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 2 * a (n - 1)

end

end A085279.P6743175157845359037

namespace A085279

/-- `3^(n-2)+2*a(n-1)` -/
def P6743175157845359037.Spec : Prop :=
  ∀ n, P6743175157845359037.a n = (A085279 n : ℚ)

end A085279

/-! ## A085279.P16982898777122925397

`A140429(n)+2^n`
-/

namespace A085279.P16982898777122925397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (2 ^ n : ℤ)

end

end A085279.P16982898777122925397

namespace A085279

/-- `A140429(n)+2^n` -/
def P16982898777122925397.Spec : Prop :=
  ∀ n, P16982898777122925397.a n = A085279 n

end A085279

/-! ## A085279.P8987622179249163131

`Δ[A124302(n)+2^n]`
-/

namespace A085279.P8987622179249163131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085279.P8987622179249163131

namespace A085279

/-- `Δ[A124302(n)+2^n]` -/
def P8987622179249163131.Spec : Prop :=
  ∀ n, P8987622179249163131.a n = A085279 n

end A085279

/-! ## A085279.P14925104462659904202

`A000079(n)+floor(3^(n-1))`
-/

namespace A085279.P14925104462659904202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A085279.P14925104462659904202

namespace A085279

/-- `A000079(n)+floor(3^(n-1))` -/
def P14925104462659904202.Spec : Prop :=
  ∀ n, P14925104462659904202.a n = A085279 n

end A085279

/-! ## A085279.P10695306823232480417

`∑[A306293(A004275(n))]`
-/

namespace A085279.P10695306823232480417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306293 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085279.P10695306823232480417

namespace A085279

/-- `∑[A306293(A004275(n))]` -/
def P10695306823232480417.Spec : Prop :=
  ∀ n, P10695306823232480417.a n = A085279 n

end A085279

/-! ## A085279.P1768833495088555312

`A094388(n)+A000225(n)`
-/

namespace A085279.P1768833495088555312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n + A000225 n

end

end A085279.P1768833495088555312

namespace A085279

/-- `A094388(n)+A000225(n)` -/
def P1768833495088555312.Spec : Prop :=
  ∀ n, P1768833495088555312.a n = A085279 n

end A085279

/-! ## A085279.P7907411545792423004

`A140431(n)+A052992(n)`
-/

namespace A085279.P7907411545792423004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140431 n + A052992 n

end

end A085279.P7907411545792423004

namespace A085279

/-- `A140431(n)+A052992(n)` -/
def P7907411545792423004.Spec : Prop :=
  ∀ n, P7907411545792423004.a n = A085279 n

end A085279

/-! ## A085279.P7434656757880902536

`A131577(n)+A085281(n)`
-/

namespace A085279.P7434656757880902536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A085281 n

end

end A085279.P7434656757880902536

namespace A085279

/-- `A131577(n)+A085281(n)` -/
def P7434656757880902536.Spec : Prop :=
  ∀ n, P7434656757880902536.a n = A085279 n

end A085279

/-! ## A085279.P14243103022439366611

`A155559(n)+A133494(n)`
-/

namespace A085279.P14243103022439366611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A133494 n

end

end A085279.P14243103022439366611

namespace A085279

/-- `A155559(n)+A133494(n)` -/
def P14243103022439366611.Spec : Prop :=
  ∀ n, P14243103022439366611.a n = A085279 n

end A085279

/-! ## A085279.P17689845751810660052

`A099754(n)-A124302(n)`
-/

namespace A085279.P17689845751810660052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A124302 n

end

end A085279.P17689845751810660052

namespace A085279

/-- `A099754(n)-A124302(n)` -/
def P17689845751810660052.Spec : Prop :=
  ∀ n, P17689845751810660052.a n = A085279 n

end A085279

/-! ## A085279.P13696436955488410558

`Δ[A087432(n)+A000975(n)]`
-/

namespace A085279.P13696436955488410558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n + A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085279.P13696436955488410558

namespace A085279

/-- `Δ[A087432(n)+A000975(n)]` -/
def P13696436955488410558.Spec : Prop :=
  ∀ n, P13696436955488410558.a n = A085279 n

end A085279

/-! ## A085279.P14001723579971439002

`A085281(n)+Δ[A011782(n)]`
-/

namespace A085279.P14001723579971439002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n + (f1 (n + 1) - f1 n)

end

end A085279.P14001723579971439002

namespace A085279

/-- `A085281(n)+Δ[A011782(n)]` -/
def P14001723579971439002.Spec : Prop :=
  ∀ n, P14001723579971439002.a n = A085279 n

end A085279

/-! ## A085279.P18014833875526993211

`A085281(n)+A034008(n+1)`
-/

namespace A085279.P18014833875526993211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n + A034008 (n + 1)

end

end A085279.P18014833875526993211

namespace A085279

/-- `A085281(n)+A034008(n+1)` -/
def P18014833875526993211.Spec : Prop :=
  ∀ n, P18014833875526993211.a n = A085279 n

end A085279

/-! ## A085279.P14768894868880922384

`A000225(n)+A140429(n)+1`
-/

namespace A085279.P14768894868880922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A140429 n + 1)

end

end A085279.P14768894868880922384

namespace A085279

/-- `A000225(n)+A140429(n)+1` -/
def P14768894868880922384.Spec : Prop :=
  ∀ n, P14768894868880922384.a n = A085279 n

end A085279

/-! ## A085279.P12693945056768174792

`A093379(n+1)+A093379(n)`
-/

namespace A085279.P12693945056768174792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093379 (n + 1) + A093379 n

end

end A085279.P12693945056768174792

namespace A085279

/-- `A093379(n+1)+A093379(n)` -/
def P12693945056768174792.Spec : Prop :=
  ∀ n, P12693945056768174792.a n = A085279 n

end A085279

/-! ## A085279.P933789318771593981

`A123183(n+1)+A099754(n)`
-/

namespace A085279.P933789318771593981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 1) + A099754 n

end

end A085279.P933789318771593981

namespace A085279

/-- `A123183(n+1)+A099754(n)` -/
def P933789318771593981.Spec : Prop :=
  ∀ n, P933789318771593981.a n = A085279 n

end A085279

/-!
# A085280: Expansion of (1-4x+x^2)/((1-x)(1-3x)(1-4x)).

The programs for A085280, the canonical program `A085280.P13430092261660577923` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085280 has offset 0).

The definition of A085280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+x^2)/(1-8x+19x^2-12x^3))` (program `A085280.P13430092261660577923`, by `A085280.P13430092261660577923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085280.P13430092261660577923

`ogf((1-4x+x^2)/(1-8x+19x^2-12x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085280

/-- `ogf((1-4x+x^2)/(1-8x+19x^2-12x^3))` -/
def P13430092261660577923.Spec : Prop :=
  ∀ n, P13430092261660577923.a n = A085280 n

theorem P13430092261660577923.correct : P13430092261660577923.Spec := by
  intro n
  simp only [A085280]

end A085280

/-! ## A085280.P3063761641924568043

`3^n+4^n/3-1/3`
-/

namespace A085280.P3063761641924568043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) + (4 ^ n : ℚ) / 3 - (1 : ℚ) / 3

end

end A085280.P3063761641924568043

namespace A085280

/-- `3^n+4^n/3-1/3` -/
def P3063761641924568043.Spec : Prop :=
  ∀ n, P3063761641924568043.a n = (A085280 n : ℚ)

end A085280

/-! ## A085280.P1526905412471055976

`A079947(A155602(n))`
-/

namespace A085280.P1526905412471055976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079947 (A155602 n).toNat

end

end A085280.P1526905412471055976

namespace A085280

/-- `A079947(A155602(n))` -/
def P1526905412471055976.Spec : Prop :=
  ∀ n, P1526905412471055976.a n = A085280 n

end A085280

/-!
# A085281: Expansion of (1 - 3*x + x^2)/((1-2*x)*(1-3*x)).

The programs for A085281, the canonical program `A085281.P8686399843652668186` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085281 has offset 0).

The definition of A085281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-5x+6x^2))` (program `A085281.P8686399843652668186`, by `A085281.P8686399843652668186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085281.P8686399843652668186

`ogf((1-3x+x^2)/(1-5x+6x^2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085281

/-- `ogf((1-3x+x^2)/(1-5x+6x^2))` -/
def P8686399843652668186.Spec : Prop :=
  ∀ n, P8686399843652668186.a n = A085281 n

theorem P8686399843652668186.correct : P8686399843652668186.Spec := by
  intro n
  simp only [A085281]

end A085281

/-! ## A085281.P9557865631393772857

`ceil(2^(n-1)+3^(n-1))`
-/

namespace A085281.P9557865631393772857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085281.P9557865631393772857

namespace A085281

/-- `ceil(2^(n-1)+3^(n-1))` -/
def P9557865631393772857.Spec : Prop :=
  ∀ n, P9557865631393772857.a n = A085281 n

end A085281

/-! ## A085281.P5491311658318579102

`3^(n-2)+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A085281.P5491311658318579102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 2 * a (n - 1)

end

end A085281.P5491311658318579102

namespace A085281

/-- `3^(n-2)+2*a(n-1)` -/
def P5491311658318579102.Spec : Prop :=
  ∀ n, P5491311658318579102.a n = (A085281 n : ℚ)

end A085281

/-! ## A085281.P1733009219005389698

`3*a(n-1)-2^(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A085281.P1733009219005389698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A085281.P1733009219005389698

namespace A085281

/-- `3*a(n-1)-2^(n-2)` -/
def P1733009219005389698.Spec : Prop :=
  ∀ n, P1733009219005389698.a n = (A085281 n : ℚ)

end A085281

/-! ## A085281.P17032886047116987953

`5*(a(n-1)-a(n-2))-a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A085281.P17032886047116987953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  5 * (a (n - 1) - a (n - 2)) - a (n - 2)

end

end A085281.P17032886047116987953

namespace A085281

/-- `5*(a(n-1)-a(n-2))-a(n-2)` -/
def P17032886047116987953.Spec : Prop :=
  ∀ n, P17032886047116987953.a n = A085281 n

end A085281

/-! ## A085281.P10414632551287930525

`A229194(Δ[n²])`
-/

namespace A085281.P10414632551287930525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085281.P10414632551287930525

namespace A085281

/-- `A229194(Δ[n²])` -/
def P10414632551287930525.Spec : Prop :=
  ∀ n, P10414632551287930525.a n = A085281 n

end A085281

/-! ## A085281.P1821485305931285239

`Δ[A000392(n)+2^n]`
-/

namespace A085281.P1821485305931285239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085281.P1821485305931285239

namespace A085281

/-- `Δ[A000392(n)+2^n]` -/
def P1821485305931285239.Spec : Prop :=
  ∀ n, P1821485305931285239.a n = A085281 n

end A085281

/-! ## A085281.P10806614897844285010

`A011782(n)+floor(3^(n-1))`
-/

namespace A085281.P10806614897844285010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A085281.P10806614897844285010

namespace A085281

/-- `A011782(n)+floor(3^(n-1))` -/
def P10806614897844285010.Spec : Prop :=
  ∀ n, P10806614897844285010.a n = A085281 n

end A085281

/-! ## A085281.P15477484783044412138

`A131577(n)+ceil(3^(n-1))`
-/

namespace A085281.P15477484783044412138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085281.P15477484783044412138

namespace A085281

/-- `A131577(n)+ceil(3^(n-1))` -/
def P15477484783044412138.Spec : Prop :=
  ∀ n, P15477484783044412138.a n = A085281 n

end A085281

/-! ## A085281.P8151029956190317208

`record[A229194(and(n, n-1)+1)]`
-/

namespace A085281.P8151029956190317208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085281.P8151029956190317208

namespace A085281

/-- `record[A229194(and(n, n-1)+1)]` -/
def P8151029956190317208.Spec : Prop :=
  ∀ n, P8151029956190317208.a n = A085281 n

end A085281

/-! ## A085281.P4319776357014456276

`record[A229194(A026741(n))]`
-/

namespace A085281.P4319776357014456276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085281.P4319776357014456276

namespace A085281

/-- `record[A229194(A026741(n))]` -/
def P4319776357014456276.Spec : Prop :=
  ∀ n, P4319776357014456276.a n = A085281 n

end A085281

/-! ## A085281.P10231834353399068981

`A140429(n)+A011782(n)`
-/

namespace A085281.P10231834353399068981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A011782 n

end

end A085281.P10231834353399068981

namespace A085281

/-- `A140429(n)+A011782(n)` -/
def P10231834353399068981.Spec : Prop :=
  ∀ n, P10231834353399068981.a n = A085281 n

end A085281

/-! ## A085281.P16107234259086841928

`A094039(n)+A087432(n)`
-/

namespace A085281.P16107234259086841928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094039 n + A087432 n

end

end A085281.P16107234259086841928

namespace A085281

/-- `A094039(n)+A087432(n)` -/
def P16107234259086841928.Spec : Prop :=
  ∀ n, P16107234259086841928.a n = A085281 n

end A085281

/-! ## A085281.P11728930809070571838

`A133494(n)+A131577(n)`
-/

namespace A085281.P11728930809070571838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + A131577 n

end

end A085281.P11728930809070571838

namespace A085281

/-- `A133494(n)+A131577(n)` -/
def P11728930809070571838.Spec : Prop :=
  ∀ n, P11728930809070571838.a n = A085281 n

end A085281

/-! ## A085281.P3449314599402333051

`A007051(n)-A000392(n)`
-/

namespace A085281.P3449314599402333051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A000392 n

end

end A085281.P3449314599402333051

namespace A085281

/-- `A007051(n)-A000392(n)` -/
def P3449314599402333051.Spec : Prop :=
  ∀ n, P3449314599402333051.a n = A085281 n

end A085281

/-! ## A085281.P13992754535098846093

`A085279(n)-A131577(n)`
-/

namespace A085281.P13992754535098846093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n - A131577 n

end

end A085281.P13992754535098846093

namespace A085281

/-- `A085279(n)-A131577(n)` -/
def P13992754535098846093.Spec : Prop :=
  ∀ n, P13992754535098846093.a n = A085281 n

end A085281

/-! ## A085281.P2673325052519778032

`A000079(n)+Δ[A000392(n)]`
-/

namespace A085281.P2673325052519778032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (f1 (n + 1) - f1 n)

end

end A085281.P2673325052519778032

namespace A085281

/-- `A000079(n)+Δ[A000392(n)]` -/
def P2673325052519778032.Spec : Prop :=
  ∀ n, P2673325052519778032.a n = A085281 n

end A085281

/-! ## A085281.P14581858889365898622

`A003462(n)+1-A000392(n)`
-/

namespace A085281.P14581858889365898622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (1 - A000392 n)

end

end A085281.P14581858889365898622

namespace A085281

/-- `A003462(n)+1-A000392(n)` -/
def P14581858889365898622.Spec : Prop :=
  ∀ n, P14581858889365898622.a n = A085281 n

end A085281

/-! ## A085281.P9968403538865392065

`A115098(n)-(A000392(n)+1)`
-/

namespace A085281.P9968403538865392065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - (A000392 n + 1)

end

end A085281.P9968403538865392065

namespace A085281

/-- `A115098(n)-(A000392(n)+1)` -/
def P9968403538865392065.Spec : Prop :=
  ∀ n, P9968403538865392065.a n = A085281 n

end A085281

/-! ## A085281.P17675131734507294479

`A124302(n+1)-A000392(n)`
-/

namespace A085281.P17675131734507294479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) - A000392 n

end

end A085281.P17675131734507294479

namespace A085281

/-- `A124302(n+1)-A000392(n)` -/
def P17675131734507294479.Spec : Prop :=
  ∀ n, P17675131734507294479.a n = A085281 n

end A085281

/-!
# A085282: Expansion of (1 - 5*x + 5*x^2)/((1-x)*(1-3*x)*(1-4*x)).

The programs for A085282, the canonical program `A085282.P8512132947445766878` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085282 has offset 0).

The definition of A085282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+5x^2)/(1-8x+19x^2-12x^3))` (program `A085282.P8512132947445766878`, by `A085282.P8512132947445766878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085282.P8512132947445766878

`ogf((1-5x+5x^2)/(1-8x+19x^2-12x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085282

/-- `ogf((1-5x+5x^2)/(1-8x+19x^2-12x^3))` -/
def P8512132947445766878.Spec : Prop :=
  ∀ n, P8512132947445766878.a n = A085282 n

theorem P8512132947445766878.correct : P8512132947445766878.Spec := by
  intro n
  simp only [A085282]

end A085282

/-! ## A085282.P13054607877749245730

`4^n/3+3^n/2+1/6`
-/

namespace A085282.P13054607877749245730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 3 + (3 ^ n : ℚ) / 2 + (1 : ℚ) / 6

end

end A085282.P13054607877749245730

namespace A085282

/-- `4^n/3+3^n/2+1/6` -/
def P13054607877749245730.Spec : Prop :=
  ∀ n, P13054607877749245730.a n = (A085282 n : ℚ)

end A085282

/-! ## A085282.P14169930332460250888

`A036557(Δ[n²])`
-/

namespace A085282.P14169930332460250888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085282.P14169930332460250888

namespace A085282

/-- `A036557(Δ[n²])` -/
def P14169930332460250888.Spec : Prop :=
  ∀ n, P14169930332460250888.a n = A085282 n

end A085282

/-! ## A085282.P8688834202317344230

`A087433(n+1)/2`
-/

namespace A085282.P8688834202317344230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (n + 1) : ℚ) / 2

end

end A085282.P8688834202317344230

namespace A085282

/-- `A087433(n+1)/2` -/
def P8688834202317344230.Spec : Prop :=
  ∀ n, P8688834202317344230.a n = (A085282 n : ℚ)

end A085282

/-! ## A085282.P17792149802744130004

`A036557(2*(n+1))/2`
-/

namespace A085282.P17792149802744130004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036557 (2 * (n + 1)) : ℚ) / 2

end

end A085282.P17792149802744130004

namespace A085282

/-- `A036557(2*(n+1))/2` -/
def P17792149802744130004.Spec : Prop :=
  ∀ n, P17792149802744130004.a n = (A085282 n : ℚ)

end A085282

/-! ## A085282.P484374443333604053

`record[A036557((n+1)*n%2+1)]`
-/

namespace A085282.P484374443333604053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 ((n + 1) * (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085282.P484374443333604053

namespace A085282

/-- `record[A036557((n+1)*n%2+1)]` -/
def P484374443333604053.Spec : Prop :=
  ∀ n, P484374443333604053.a n = A085282 n

end A085282

/-! ## A085282.P6293952014005896329

`A036557(2*n+1)%(4*a(n-1)+1)` with `a(0)=1`
-/

namespace A085282.P6293952014005896329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A036557 (2 * n + 1)) (4 * a (n - 1) + 1)

end

end A085282.P6293952014005896329

namespace A085282

/-- `A036557(2*n+1)%(4*a(n-1)+1)` -/
def P6293952014005896329.Spec : Prop :=
  ∀ n, P6293952014005896329.a n = A085282 n

end A085282

/-! ## A085282.P15589850707201312137

`record[A036557(A006257(n))]`
-/

namespace A085282.P15589850707201312137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085282.P15589850707201312137

namespace A085282

/-- `record[A036557(A006257(n))]` -/
def P15589850707201312137.Spec : Prop :=
  ∀ n, P15589850707201312137.a n = A085282 n

end A085282

/-! ## A085282.P5270562168588803825

`record[A036557(A093411(n))]`
-/

namespace A085282.P5270562168588803825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085282.P5270562168588803825

namespace A085282

/-- `record[A036557(A093411(n))]` -/
def P5270562168588803825.Spec : Prop :=
  ∀ n, P5270562168588803825.a n = A085282 n

end A085282

/-! ## A085282.P13998079119976978434

`record[A036557(A014681(n)+1)]`
-/

namespace A085282.P13998079119976978434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085282.P13998079119976978434

namespace A085282

/-- `record[A036557(A014681(n)+1)]` -/
def P13998079119976978434.Spec : Prop :=
  ∀ n, P13998079119976978434.a n = A085282 n

end A085282

/-! ## A085282.P14007414139236330111

`record[A036557(A153733(n)+1)]`
-/

namespace A085282.P14007414139236330111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (A153733 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085282.P14007414139236330111

namespace A085282

/-- `record[A036557(A153733(n)+1)]` -/
def P14007414139236330111.Spec : Prop :=
  ∀ n, P14007414139236330111.a n = A085282 n

end A085282

/-!
# A085283: a(n) = n*n^n - (n-1)*(n-1)^n.

The programs for A085283, the canonical program `A085283.P5394755465249716377` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085283 has offset 0).

The definition of A085283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*n^n-(n-1)*(n-1)^n` (program `A085283.P5394755465249716377`, by `A085283.P5394755465249716377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085283.P5394755465249716377

`n*n^n-(n-1)*(n-1)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085283

/-- `n*n^n-(n-1)*(n-1)^n` -/
def P5394755465249716377.Spec : Prop :=
  ∀ n, P5394755465249716377.a n = A085283 n

theorem P5394755465249716377.correct : P5394755465249716377.Spec := by
  intro n
  simp only [A085283]

end A085283

/-! ## A085283.P11958625852413733389

`A199656(A212342(n+1))`
-/

namespace A085283.P11958625852413733389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199656 (A212342 (n + 1)).toNat

end

end A085283.P11958625852413733389

namespace A085283

/-- `A199656(A212342(n+1))` -/
def P11958625852413733389.Spec : Prop :=
  ∀ n, P11958625852413733389.a n = A085283 n

end A085283

/-! ## A085283.P7624524231802374208

`A199656(A347553(n+3))`
-/

namespace A085283.P7624524231802374208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199656 (A347553 (n + 3)).toNat

end

end A085283.P7624524231802374208

namespace A085283

/-- `A199656(A347553(n+3))` -/
def P7624524231802374208.Spec : Prop :=
  ∀ n, P7624524231802374208.a n = A085283 n

end A085283

/-! ## A085283.P17778651561174429510

`A047969(2*n²)`
-/

namespace A085283.P17778651561174429510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (2 * n ^ 2)

end

end A085283.P17778651561174429510

namespace A085283

/-- `A047969(2*n²)` -/
def P17778651561174429510.Spec : Prop :=
  ∀ n, P17778651561174429510.a n = A085283 n

end A085283

/-! ## A085283.P2785478378617818066

`A343237(A004273(n²))`
-/

namespace A085283.P2785478378617818066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 (A004273 (n ^ 2)).toNat

end

end A085283.P2785478378617818066

namespace A085283

/-- `A343237(A004273(n²))` -/
def P2785478378617818066.Spec : Prop :=
  ∀ n, P2785478378617818066.a n = A085283 n

end A085283

/-!
# A085284: a(n) = C(n+3,3)*n^3/4.

The programs for A085284, the canonical program `A085284.P6320177522718712070` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085284 has offset 0).

The definition of A085284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085284.P6320177522718712070

`C(n+3, 3)*n^3/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085284

/-- `C(n+3, 3)*n^3/4` -/
def P6320177522718712070.Spec : Prop :=
  ∀ n, P6320177522718712070.a n = (A085284 n : ℚ)

end A085284

/-! ## A085284.P12962079113889637692

`n²*∑[∑[∑[n]]]`
-/

namespace A085284.P12962079113889637692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085284.P12962079113889637692

namespace A085284

/-- `n²*∑[∑[∑[n]]]` -/
def P12962079113889637692.Spec : Prop :=
  ∀ n, (P12962079113889637692.a n : ℤ) = A085284 n

end A085284

/-! ## A085284.P7074366316799092668

`lcm(n, n^2*∑[∑[∑[n]]])`
-/

namespace A085284.P7074366316799092668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A085284.P7074366316799092668

namespace A085284

/-- `lcm(n, n^2*∑[∑[∑[n]]])` -/
def P7074366316799092668.Spec : Prop :=
  ∀ n, (P7074366316799092668.a n : ℤ) = A085284 n

end A085284

/-! ## A085284.P11663270844685874805

`floor(n*n*∑[∑[a(n-1)+n]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A085284.P11663270844685874805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A085284.P11663270844685874805

namespace A085284

/-- `floor(n*n*∑[∑[a(n-1)+n]])` -/
def P11663270844685874805.Spec : Prop :=
  ∀ n, (P11663270844685874805.a n : ℤ) = A085284 n

end A085284

/-! ## A085284.P16860397710598424421

`abs((A145126(n)-1)*n²)`
-/

namespace A085284.P16860397710598424421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A145126 n - 1) * (n ^ 2 : ℤ)|

end

end A085284.P16860397710598424421

namespace A085284

/-- `abs((A145126(n)-1)*n²)` -/
def P16860397710598424421.Spec : Prop :=
  ∀ n, P16860397710598424421.a n = A085284 n

end A085284

/-! ## A085284.P8876601479663497118

`n*n/2*A162668(n)/4`
-/

namespace A085284.P8876601479663497118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / 2 * (A162668 n : ℚ)) / 4

end

end A085284.P8876601479663497118

namespace A085284

/-- `n*n/2*A162668(n)/4` -/
def P8876601479663497118.Spec : Prop :=
  ∀ n, P8876601479663497118.a n = (A085284 n : ℚ)

end A085284

/-! ## A085284.P8668958759259149411

`n*A256859(n+1)-A174002(n)`
-/

namespace A085284.P8668958759259149411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A256859 (n + 1) - A174002 n

end

end A085284.P8668958759259149411

namespace A085284

/-- `n*A256859(n+1)-A174002(n)` -/
def P8668958759259149411.Spec : Prop :=
  ∀ n, P8668958759259149411.a n = A085284 n

end A085284

/-! ## A085284.P4294243828998673000

`A001297(n)*A004277(n)/(n+1)`
-/

namespace A085284.P4294243828998673000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001297 n * A004277 n : ℚ) / (n + 1 : ℚ)

end

end A085284.P4294243828998673000

namespace A085284

/-- `A001297(n)*A004277(n)/(n+1)` -/
def P4294243828998673000.Spec : Prop :=
  ∀ n, P4294243828998673000.a n = (A085284 n : ℚ)

end A085284

/-! ## A085284.P1986770352996739715

`n*A174002(n)²/A027764(n+3)`
-/

namespace A085284.P1986770352996739715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A174002 n ^ 2 : ℚ) / (A027764 (n + 3) : ℚ)

end

end A085284.P1986770352996739715

namespace A085284

/-- `n*A174002(n)²/A027764(n+3)` -/
def P1986770352996739715.Spec : Prop :=
  ∀ n, P1986770352996739715.a n = (A085284 n : ℚ)

end A085284

/-! ## A085284.P4017982362801799112

`A000096(n)*A001296(n)-A001297(n)`
-/

namespace A085284.P4017982362801799112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A001296 n - A001297 n

end

end A085284.P4017982362801799112

namespace A085284

/-- `A000096(n)*A001296(n)-A001297(n)` -/
def P4017982362801799112.Spec : Prop :=
  ∀ n, P4017982362801799112.a n = A085284 n

end A085284

/-! ## A085284.P6087602360992406618

`A337899(n+1)-A000332(n+2)`
-/

namespace A085284.P6087602360992406618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337899 (n + 1) - A000332 (n + 2)

end

end A085284.P6087602360992406618

namespace A085284

/-- `A337899(n+1)-A000332(n+2)` -/
def P6087602360992406618.Spec : Prop :=
  ∀ n, P6087602360992406618.a n = A085284 n

end A085284

/-! ## A085284.P7599673499125489696

`n²*A096338(2*n)/2`
-/

namespace A085284.P7599673499125489696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A096338 (2 * n) : ℚ) / 2

end

end A085284.P7599673499125489696

namespace A085284

/-- `n²*A096338(2*n)/2` -/
def P7599673499125489696.Spec : Prop :=
  ∀ n, P7599673499125489696.a n = (A085284 n : ℚ)

end A085284

/-!
# A085285: Positions where records occur in A072340.

The programs for A085285, there is no canonical definition to state claims against.
-/

/-! ## A085285.P18397074439339543347

`A155801(∑[A155804(n)])-n`
-/

namespace A085285.P18397074439339543347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155801 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A085285.P18397074439339543347

/-!
# A085287: Expansion of g.f. (1+4*x)/((1-x)*(1+x)*(1-3*x)).

The programs for A085287, the canonical program `A085287.P9621194022171775730` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085287 has offset 0).

The definition of A085287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-3x-x^2+3x^3))` (program `A085287.P9621194022171775730`, by `A085287.P9621194022171775730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A085287.P9621194022171775730

`ogf((1+4x)/(1-3x-x^2+3x^3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085287

/-- `ogf((1+4x)/(1-3x-x^2+3x^3))` -/
def P9621194022171775730.Spec : Prop :=
  ∀ n, P9621194022171775730.a n = A085287 n

theorem P9621194022171775730.correct : P9621194022171775730.Spec := by
  intro n
  simp only [A085287]

end A085287

/-! ## A085287.P2772705139193229045

`2*a(n-1)+3*a(n-2)+5` with `a(0)=1, a(1)=7`
-/

namespace A085287.P2772705139193229045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 5

end

end A085287.P2772705139193229045

namespace A085287

/-- `2*a(n-1)+3*a(n-2)+5` -/
def P2772705139193229045.Spec : Prop :=
  ∀ n, (P2772705139193229045.a n : ℤ) = A085287 n

end A085287

/-! ## A085287.P2649325751639031583

`floor(∑[7*3^n/4])`
-/

namespace A085287.P2649325751639031583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((3 ^ n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A085287.P2649325751639031583

namespace A085287

/-- `floor(∑[7*3^n/4])` -/
def P2649325751639031583.Spec : Prop :=
  ∀ n, P2649325751639031583.a n = A085287 n

end A085287

/-! ## A085287.P14651581242718157948

`∑[3*(a(n-1)-(-1)^n)]` with `a(0)=1`
-/

namespace A085287.P14651581242718157948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085287.P14651581242718157948

namespace A085287

/-- `∑[3*(a(n-1)-(-1)^n)]` -/
def P14651581242718157948.Spec : Prop :=
  ∀ n, P14651581242718157948.a n = A085287 n

end A085287

/-! ## A085287.P6590885036606606805

`3*(a(n-1)+n%2)+1` with `a(0)=1`
-/

namespace A085287.P6590885036606606805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + n % 2) + 1

end

end A085287.P6590885036606606805

namespace A085287

/-- `3*(a(n-1)+n%2)+1` -/
def P6590885036606606805.Spec : Prop :=
  ∀ n, (P6590885036606606805.a n : ℤ) = A085287 n

end A085287

/-! ## A085287.P8946809516232683660

`gcd(2, n+1)²+3*a(n-1)` with `a(0)=1`
-/

namespace A085287.P8946809516232683660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) ^ 2 + 3 * a (n - 1)

end

end A085287.P8946809516232683660

namespace A085287

/-- `gcd(2, n+1)²+3*a(n-1)` -/
def P8946809516232683660.Spec : Prop :=
  ∀ n, (P8946809516232683660.a n : ℤ) = A085287 n

end A085287

/-! ## A085287.P10906126990883837257

`floor(21*3^n/8)-(n+1)%2`
-/

namespace A085287.P10906126990883837257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊21 * ((3 ^ n : ℚ) / 8)⌋ - (((n + 1) % 2 : ℕ) : ℤ)

end

end A085287.P10906126990883837257

namespace A085287

/-- `floor(21*3^n/8)-(n+1)%2` -/
def P10906126990883837257.Spec : Prop :=
  ∀ n, P10906126990883837257.a n = A085287 n

end A085287

/-! ## A085287.P21323245456723707

`∑[3*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A085287.P21323245456723707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A085287.P21323245456723707

namespace A085287

/-- `∑[3*a(n-1)]-a(n-1)` -/
def P21323245456723707.Spec : Prop :=
  ∀ n, P21323245456723707.a n = A085287 n

end A085287

/-! ## A085287.P17333965294558892761

`record[3*a(n-2)]+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A085287.P17333965294558892761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A085287.P17333965294558892761

namespace A085287

/-- `record[3*a(n-2)]+a(n-2)` -/
def P17333965294558892761.Spec : Prop :=
  ∀ n, (P17333965294558892761.a n : ℤ) = A085287 n

end A085287

/-! ## A085287.P12071957051709828837

`3*A153774(n+1)-2`
-/

namespace A085287.P12071957051709828837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153774 (n + 1) - 2

end

end A085287.P12071957051709828837

namespace A085287

/-- `3*A153774(n+1)-2` -/
def P12071957051709828837.Spec : Prop :=
  ∀ n, P12071957051709828837.a n = A085287 n

end A085287

/-! ## A085287.P4273937271008990264

`A116952(n)-a(n-1)` with `a(0)=1`
-/

namespace A085287.P4273937271008990264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116952 n - a (n - 1)

end

end A085287.P4273937271008990264

namespace A085287

/-- `A116952(n)-a(n-1)` -/
def P4273937271008990264.Spec : Prop :=
  ∀ n, P4273937271008990264.a n = A085287 n

end A085287

/-! ## A085287.P8805632151352000906

`A082541(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A085287.P8805632151352000906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A082541 n + a (n - 2)

end

end A085287.P8805632151352000906

namespace A085287

/-- `A082541(n)+a(n-2)` -/
def P8805632151352000906.Spec : Prop :=
  ∀ n, P8805632151352000906.a n = A085287 n

end A085287

/-! ## A085287.P7818595359212387292

`A237930(n)-(a(n-1)+2)` with `a(0)=1`
-/

namespace A085287.P7818595359212387292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237930 n - (a (n - 1) + 2)

end

end A085287.P7818595359212387292

namespace A085287

/-- `A237930(n)-(a(n-1)+2)` -/
def P7818595359212387292.Spec : Prop :=
  ∀ n, P7818595359212387292.a n = A085287 n

end A085287

/-! ## A085287.P11937453541110432541

`A010685(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A085287.P11937453541110432541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010685 n + 3 * a (n - 1)

end

end A085287.P11937453541110432541

namespace A085287

/-- `A010685(n)+3*a(n-1)` -/
def P11937453541110432541.Spec : Prop :=
  ∀ n, P11937453541110432541.a n = A085287 n

end A085287

/-! ## A085287.P18026822964519593938

`A177499(2*n)+3*a(n-1)` with `a(0)=1`
-/

namespace A085287.P18026822964519593938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177499 (2 * n) + 3 * a (n - 1)

end

end A085287.P18026822964519593938

namespace A085287

/-- `A177499(2*n)+3*a(n-1)` -/
def P18026822964519593938.Spec : Prop :=
  ∀ n, P18026822964519593938.a n = A085287 n

end A085287

/-! ## A085287.P2643651607920835132

`A037488(n+1)-A059841(n)`
-/

namespace A085287.P2643651607920835132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037488 (n + 1) - A059841 n

end

end A085287.P2643651607920835132

namespace A085287

/-- `A037488(n+1)-A059841(n)` -/
def P2643651607920835132.Spec : Prop :=
  ∀ n, P2643651607920835132.a n = A085287 n

end A085287

/-! ## A085287.P17706614937340960254

`∑[A054878(n+1)+A000244(n)]`
-/

namespace A085287.P17706614937340960254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (n + 1) + A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085287.P17706614937340960254

namespace A085287

/-- `∑[A054878(n+1)+A000244(n)]` -/
def P17706614937340960254.Spec : Prop :=
  ∀ n, P17706614937340960254.a n = A085287 n

end A085287

/-! ## A085287.P4387844607580809160

`∑[2*A000244(n)-A054878(n)]`
-/

namespace A085287.P4387844607580809160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n - A054878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085287.P4387844607580809160

namespace A085287

/-- `∑[2*A000244(n)-A054878(n)]` -/
def P4387844607580809160.Spec : Prop :=
  ∀ n, P4387844607580809160.a n = A085287 n

end A085287

/-! ## A085287.P8936588152518527210

`Δ[A039300(n+1)]+A039300(n)-2`
-/

namespace A085287.P8936588152518527210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A039300 n - 2)

end

end A085287.P8936588152518527210

namespace A085287

/-- `Δ[A039300(n+1)]+A039300(n)-2` -/
def P8936588152518527210.Spec : Prop :=
  ∀ n, P8936588152518527210.a n = A085287 n

end A085287

/-! ## A085287.P8082382440562757153

`3*(A067742(A020639(n+1))+a(n-1))+1` with `a(0)=1`
-/

namespace A085287.P8082382440562757153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (A067742 (A020639 (n + 1)).toNat + a (n - 1)) + 1

end

end A085287.P8082382440562757153

namespace A085287

/-- `3*(A067742(A020639(n+1))+a(n-1))+1` -/
def P8082382440562757153.Spec : Prop :=
  ∀ n, P8082382440562757153.a n = A085287 n

end A085287

/-!
# A085288: Number of sorted multiplicative partitions of n!.

The programs for A085288, there is no canonical definition to state claims against.
-/

/-! ## A085288.P12381948077492145630

`A050360(A098718(n+2))`
-/

namespace A085288.P12381948077492145630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A098718 (n + 2)).toNat

end

end A085288.P12381948077492145630

/-! ## A085288.P18235675828340463536

`∏{e}[A242456(n+2), A000041(#)]`
-/

namespace A085288.P18235675828340463536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242456 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A085288.P18235675828340463536

/-!
# A085289: Number of sorted multiplicative partitions of n! of length n.

The programs for A085289, there is no canonical definition to state claims against.
-/

/-! ## A085289.P769483422192513531

`A077556(∑[A342877(2*(∑[n]+3))])`
-/

namespace A085289.P769483422192513531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342877 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085289.P769483422192513531

/-! ## A085289.P7422256993006090491

`A195177(A109004(n)*A227415(n))`
-/

namespace A085289.P7422256993006090491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A109004 n * A227415 n).toNat

end

end A085289.P7422256993006090491

/-! ## A085289.P14312661339912184849

`A185216(A053264(n+2)*A353864(n))`
-/

namespace A085289.P14312661339912184849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A053264 (n + 2) * A353864 n).toNat

end

end A085289.P14312661339912184849

/-! ## A085289.P14345264668537133339

`A236966(A162306(3*(n+1))+A099155(n))`
-/

namespace A085289.P14345264668537133339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (A162306 (3 * (n + 1)) + A099155 n).toNat

end

end A085289.P14345264668537133339

/-!
# A085290: Max[p1^b1] over all sorted multiplicative partitions of n! of length n.

The programs for A085290, there is no canonical definition to state claims against.
-/

/-! ## A085290.P15254717225365991885

`A007978(∏[A032742(A027750(n+3))])`
-/

namespace A085290.P15254717225365991885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A027750 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085290.P15254717225365991885

/-! ## A085290.P17790003810190701585

`A003106(floor(sqrt(A355761(2*n+3))))+1`
-/

namespace A085290.P17790003810190701585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (Int.sqrt (A355761 (2 * n + 3))).toNat + 1

end

end A085290.P17790003810190701585

/-!
# A085292: Product of Lucas (A000204) and a Pell companion series (A001333).

The programs for A085292, the canonical program `A085292.P6282254255585165855` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085292 has offset 1).

The definition of A085292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085292.P6282254255585165855

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=28, a(3)=119`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085292

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6282254255585165855.Spec : Prop :=
  ∀ n, P6282254255585165855.a n = A085292 (n + 1)

theorem P6282254255585165855.correct : P6282254255585165855.Spec := by
  intro n
  simp only [A085292, Nat.add_sub_cancel]

end A085292

/-! ## A085292.P10654061966983549910

`A000204(n+1)*A001333(n+1)`
-/

namespace A085292.P10654061966983549910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A001333 (n + 1)

end

end A085292.P10654061966983549910

namespace A085292

/-- `A000204(n+1)*A001333(n+1)` -/
def P10654061966983549910.Spec : Prop :=
  ∀ n, P10654061966983549910.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P14404080639342943415

`A000032(n+1)*A078057(n)`
-/

namespace A085292.P14404080639342943415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A078057 n

end

end A085292.P14404080639342943415

namespace A085292

/-- `A000032(n+1)*A078057(n)` -/
def P14404080639342943415.Spec : Prop :=
  ∀ n, P14404080639342943415.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P8233962487208478022

`A000204(n+1)*A078057(n)`
-/

namespace A085292.P8233962487208478022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A078057 n

end

end A085292.P8233962487208478022

namespace A085292

/-- `A000204(n+1)*A078057(n)` -/
def P8233962487208478022.Spec : Prop :=
  ∀ n, P8233962487208478022.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P436924722995475036

`A022112(n)/2*A078057(n)`
-/

namespace A085292.P436924722995475036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 n : ℚ) / 2 * (A078057 n : ℚ)

end

end A085292.P436924722995475036

namespace A085292

/-- `A022112(n)/2*A078057(n)` -/
def P436924722995475036.Spec : Prop :=
  ∀ n, P436924722995475036.a n = (A085292 (n + 1) : ℚ)

end A085292

/-! ## A085292.P2347382591119553174

`A000032(n+1)*∑[A052542(n)]`
-/

namespace A085292.P2347382591119553174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085292.P2347382591119553174

namespace A085292

/-- `A000032(n+1)*∑[A052542(n)]` -/
def P2347382591119553174.Spec : Prop :=
  ∀ n, P2347382591119553174.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P17292642944014409212

`∑[A052542(n)]*A000204(n+1)`
-/

namespace A085292.P17292642944014409212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000204 (n + 1)

end

end A085292.P17292642944014409212

namespace A085292

/-- `∑[A052542(n)]*A000204(n+1)` -/
def P17292642944014409212.Spec : Prop :=
  ∀ n, P17292642944014409212.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P1293775892737739734

`A022112(n)/2*∑[A052542(n)]`
-/

namespace A085292.P1293775892737739734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A085292.P1293775892737739734

namespace A085292

/-- `A022112(n)/2*∑[A052542(n)]` -/
def P1293775892737739734.Spec : Prop :=
  ∀ n, P1293775892737739734.a n = (A085292 (n + 1) : ℚ)

end A085292

/-! ## A085292.P13613981789828841947

`A022112(n)/2*Δ[A052937(n)]`
-/

namespace A085292.P13613981789828841947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022112 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A085292.P13613981789828841947

namespace A085292

/-- `A022112(n)/2*Δ[A052937(n)]` -/
def P13613981789828841947.Spec : Prop :=
  ∀ n, P13613981789828841947.a n = (A085292 (n + 1) : ℚ)

end A085292

/-! ## A085292.P1973295178479750668

`A000032(n+1)*A001333(n+1)`
-/

namespace A085292.P1973295178479750668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A001333 (n + 1)

end

end A085292.P1973295178479750668

namespace A085292

/-- `A000032(n+1)*A001333(n+1)` -/
def P1973295178479750668.Spec : Prop :=
  ∀ n, P1973295178479750668.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P7285861611094016435

`A000032(n+1)*Δ[A000129(n+1)]`
-/

namespace A085292.P7285861611094016435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A085292.P7285861611094016435

namespace A085292

/-- `A000032(n+1)*Δ[A000129(n+1)]` -/
def P7285861611094016435.Spec : Prop :=
  ∀ n, P7285861611094016435.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P1614159683330071831

`Δ[A000129(n+1)]*A000204(n+1)`
-/

namespace A085292.P1614159683330071831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000204 (n + 1)

end

end A085292.P1614159683330071831

namespace A085292

/-- `Δ[A000129(n+1)]*A000204(n+1)` -/
def P1614159683330071831.Spec : Prop :=
  ∀ n, P1614159683330071831.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P5547023968647068385

`Δ[A000129(n+1)]*(A001610(n)+1)`
-/

namespace A085292.P5547023968647068385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A001610 n + 1)

end

end A085292.P5547023968647068385

namespace A085292

/-- `Δ[A000129(n+1)]*(A001610(n)+1)` -/
def P5547023968647068385.Spec : Prop :=
  ∀ n, P5547023968647068385.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P5540181526335272407

`A192882(n+1)+2*A192880(n+1)`
-/

namespace A085292.P5540181526335272407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192882 (n + 1) + 2 * A192880 (n + 1)

end

end A085292.P5540181526335272407

namespace A085292

/-- `A192882(n+1)+2*A192880(n+1)` -/
def P5540181526335272407.Spec : Prop :=
  ∀ n, P5540181526335272407.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P14033243811720677116

`A000032(n+1)*A082766(2*(n+1))`
-/

namespace A085292.P14033243811720677116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A082766 (2 * (n + 1))

end

end A085292.P14033243811720677116

namespace A085292

/-- `A000032(n+1)*A082766(2*(n+1))` -/
def P14033243811720677116.Spec : Prop :=
  ∀ n, P14033243811720677116.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P1807187283091007810

`A000204(n+1)*A152113(2*(n+1))`
-/

namespace A085292.P1807187283091007810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A152113 (2 * (n + 1))

end

end A085292.P1807187283091007810

namespace A085292

/-- `A000204(n+1)*A152113(2*(n+1))` -/
def P1807187283091007810.Spec : Prop :=
  ∀ n, P1807187283091007810.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P2369543249472323804

`A000032(n+1)/2*A002203(n+1)`
-/

namespace A085292.P2369543249472323804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / 2 * (A002203 (n + 1) : ℚ)

end

end A085292.P2369543249472323804

namespace A085292

/-- `A000032(n+1)/2*A002203(n+1)` -/
def P2369543249472323804.Spec : Prop :=
  ∀ n, P2369543249472323804.a n = (A085292 (n + 1) : ℚ)

end A085292

/-! ## A085292.P2843811477554335164

`A000032(n+1)/2*A099425(n+1)`
-/

namespace A085292.P2843811477554335164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / 2 * (A099425 (n + 1) : ℚ)

end

end A085292.P2843811477554335164

namespace A085292

/-- `A000032(n+1)/2*A099425(n+1)` -/
def P2843811477554335164.Spec : Prop :=
  ∀ n, P2843811477554335164.a n = (A085292 (n + 1) : ℚ)

end A085292

/-! ## A085292.P2935368217138652491

`A000032(n+1)*Δ[Δ[A171842(n+1)]]`
-/

namespace A085292.P2935368217138652491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A085292.P2935368217138652491

namespace A085292

/-- `A000032(n+1)*Δ[Δ[A171842(n+1)]]` -/
def P2935368217138652491.Spec : Prop :=
  ∀ n, P2935368217138652491.a n = A085292 (n + 1)

end A085292

/-! ## A085292.P7449210452181884867

`(A000129(n+1)+A000129(n))*A000032(n+1)`
-/

namespace A085292.P7449210452181884867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) + A000129 n) * A000032 (n + 1)

end

end A085292.P7449210452181884867

namespace A085292

/-- `(A000129(n+1)+A000129(n))*A000032(n+1)` -/
def P7449210452181884867.Spec : Prop :=
  ∀ n, P7449210452181884867.a n = A085292 (n + 1)

end A085292

/-!
# A085293: Product of Lucas (A000204) and a Pell Companion series (A002203).

The programs for A085293, the canonical program `A085293.P18115489300845647417` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085293 has offset 1).

The definition of A085293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085293.P18115489300845647417

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=18, a(2)=56, a(3)=238`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A085293

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P18115489300845647417.Spec : Prop :=
  ∀ n, P18115489300845647417.a n = A085293 (n + 1)

theorem P18115489300845647417.correct : P18115489300845647417.Spec := by
  intro n
  simp only [A085293, Nat.add_sub_cancel]

end A085293

/-! ## A085293.P12419788518013110930

`2*A085292(n+1)`
-/

namespace A085293.P12419788518013110930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085292 (n + 1)

end

end A085293.P12419788518013110930

namespace A085293

/-- `2*A085292(n+1)` -/
def P12419788518013110930.Spec : Prop :=
  ∀ n, P12419788518013110930.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P2841622980797664635

`A000204(n+1)*A002203(n+1)`
-/

namespace A085293.P2841622980797664635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A002203 (n + 1)

end

end A085293.P2841622980797664635

namespace A085293

/-- `A000204(n+1)*A002203(n+1)` -/
def P2841622980797664635.Spec : Prop :=
  ∀ n, P2841622980797664635.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P16766661846293897961

`A022112(n)*A078057(n)`
-/

namespace A085293.P16766661846293897961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n * A078057 n

end

end A085293.P16766661846293897961

namespace A085293

/-- `A022112(n)*A078057(n)` -/
def P16766661846293897961.Spec : Prop :=
  ∀ n, P16766661846293897961.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P4788522934831271490

`∑[A052542(n)]*A022112(n)`
-/

namespace A085293.P4788522934831271490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A022112 n

end

end A085293.P4788522934831271490

namespace A085293

/-- `∑[A052542(n)]*A022112(n)` -/
def P4788522934831271490.Spec : Prop :=
  ∀ n, P4788522934831271490.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P4122398804641148877

`Δ[A052937(n)]*A022112(n)`
-/

namespace A085293.P4122398804641148877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022112 n

end

end A085293.P4122398804641148877

namespace A085293

/-- `Δ[A052937(n)]*A022112(n)` -/
def P4122398804641148877.Spec : Prop :=
  ∀ n, P4122398804641148877.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P16023689305128589636

`A001333(n+1)*A022112(n)`
-/

namespace A085293.P16023689305128589636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) * A022112 n

end

end A085293.P16023689305128589636

namespace A085293

/-- `A001333(n+1)*A022112(n)` -/
def P16023689305128589636.Spec : Prop :=
  ∀ n, P16023689305128589636.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P15726569041753280817

`lcm(A022112(n), A085292(n+1))`
-/

namespace A085293.P15726569041753280817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022112 n) (A085292 (n + 1))

end

end A085293.P15726569041753280817

namespace A085293

/-- `lcm(A022112(n), A085292(n+1))` -/
def P15726569041753280817.Spec : Prop :=
  ∀ n, (P15726569041753280817.a n : ℤ) = A085293 (n + 1)

end A085293

/-! ## A085293.P4020932175470849703

`Δ[A000129(n+1)]*A022112(n)`
-/

namespace A085293.P4020932175470849703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022112 n

end

end A085293.P4020932175470849703

namespace A085293

/-- `Δ[A000129(n+1)]*A022112(n)` -/
def P4020932175470849703.Spec : Prop :=
  ∀ n, P4020932175470849703.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P17413042712689098163

`A000032(n+1)*A002203(n+1)`
-/

namespace A085293.P17413042712689098163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A002203 (n + 1)

end

end A085293.P17413042712689098163

namespace A085293

/-- `A000032(n+1)*A002203(n+1)` -/
def P17413042712689098163.Spec : Prop :=
  ∀ n, P17413042712689098163.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P1275926083009181043

`A000032(n+1)*A099425(n+1)`
-/

namespace A085293.P1275926083009181043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A099425 (n + 1)

end

end A085293.P1275926083009181043

namespace A085293

/-- `A000032(n+1)*A099425(n+1)` -/
def P1275926083009181043.Spec : Prop :=
  ∀ n, P1275926083009181043.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P11816218281456084458

`A000204(n+1)*A099425(n+1)`
-/

namespace A085293.P11816218281456084458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A099425 (n + 1)

end

end A085293.P11816218281456084458

namespace A085293

/-- `A000204(n+1)*A099425(n+1)` -/
def P11816218281456084458.Spec : Prop :=
  ∀ n, P11816218281456084458.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P3598884568627063238

`2*A078057(n)*A000032(n+1)`
-/

namespace A085293.P3598884568627063238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078057 n * A000032 (n + 1)

end

end A085293.P3598884568627063238

namespace A085293

/-- `2*A078057(n)*A000032(n+1)` -/
def P3598884568627063238.Spec : Prop :=
  ∀ n, P3598884568627063238.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P15666962153228949556

`2*A000204(n+1)*A078057(n)`
-/

namespace A085293.P15666962153228949556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000204 (n + 1) * A078057 n)

end

end A085293.P15666962153228949556

namespace A085293

/-- `2*A000204(n+1)*A078057(n)` -/
def P15666962153228949556.Spec : Prop :=
  ∀ n, P15666962153228949556.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P1786584865312514255

`A000032(n+1)*Δ[A133654(n+1)]`
-/

namespace A085293.P1786584865312514255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * (f1 (n + 1) - f1 n)

end

end A085293.P1786584865312514255

namespace A085293

/-- `A000032(n+1)*Δ[A133654(n+1)]` -/
def P1786584865312514255.Spec : Prop :=
  ∀ n, P1786584865312514255.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P8115721702422431842

`2*A000204(n+1)*∑[A052542(n)]`
-/

namespace A085293.P8115721702422431842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000204 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A085293.P8115721702422431842

namespace A085293

/-- `2*A000204(n+1)*∑[A052542(n)]` -/
def P8115721702422431842.Spec : Prop :=
  ∀ n, P8115721702422431842.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P11908390988969325871

`2*A000032(n+1)*A001333(n+1)`
-/

namespace A085293.P11908390988969325871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 1) * A001333 (n + 1))

end

end A085293.P11908390988969325871

namespace A085293

/-- `2*A000032(n+1)*A001333(n+1)` -/
def P11908390988969325871.Spec : Prop :=
  ∀ n, P11908390988969325871.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P2386163399892885042

`2*A000204(n+1)*A001333(n+1)`
-/

namespace A085293.P2386163399892885042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000204 (n + 1) * A001333 (n + 1))

end

end A085293.P2386163399892885042

namespace A085293

/-- `2*A000204(n+1)*A001333(n+1)` -/
def P2386163399892885042.Spec : Prop :=
  ∀ n, P2386163399892885042.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P18199604923799848351

`2*A082766(2*(n+1))*A000032(n+1)`
-/

namespace A085293.P18199604923799848351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082766 (2 * (n + 1)) * A000032 (n + 1)

end

end A085293.P18199604923799848351

namespace A085293

/-- `2*A082766(2*(n+1))*A000032(n+1)` -/
def P18199604923799848351.Spec : Prop :=
  ∀ n, P18199604923799848351.a n = A085293 (n + 1)

end A085293

/-! ## A085293.P17310399279216585024

`A000032(n+1)*A124696(n+1)-A000032(n+1)`
-/

namespace A085293.P17310399279216585024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A124696 (n + 1) - A000032 (n + 1)

end

end A085293.P17310399279216585024

namespace A085293

/-- `A000032(n+1)*A124696(n+1)-A000032(n+1)` -/
def P17310399279216585024.Spec : Prop :=
  ∀ n, P17310399279216585024.a n = A085293 (n + 1)

end A085293

/-!
# A085294: Integer ceiling of coefficients of exp(x*A(x)).

The programs for A085294, there is no canonical definition to state claims against.
-/

/-! ## A085294.P9368346451696379738

`ceil(A085295(n)/n!)`
-/

namespace A085294.P9368346451696379738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085295 n : ℚ) / (Nat.factorial n : ℚ)⌉

end

end A085294.P9368346451696379738

/-! ## A085294.P17786475762765232999

`ceil(A085295(n)/A000142(n))`
-/

namespace A085294.P17786475762765232999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085295 n : ℚ) / (A000142 n : ℚ)⌉

end

end A085294.P17786475762765232999

/-! ## A085294.P10219868906687171744

`A000006(A056272(n)+n)`
-/

namespace A085294.P10219868906687171744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A056272 n + (n : ℤ)).toNat

end

end A085294.P10219868906687171744

/-! ## A085294.P17805168707756383866

`A172471(A213226(n)+A001465(n))`
-/

namespace A085294.P17805168707756383866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A213226 n + A001465 n).toNat

end

end A085294.P17805168707756383866

/-! ## A085294.P16286849777958874960

`A073188(or(A000389(n), A171450(n)))`
-/

namespace A085294.P16286849777958874960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (Int.lor (A000389 n) (A171450 n)).toNat

end

end A085294.P16286849777958874960

/-!
# A085295: E.g.f. satisfies exp(x*Sum_{n>=0} ceiling(a(n)/n!)*x^n) = Sum_{n>=0} a(n)*x^n/n!.

The programs for A085295, there is no canonical definition to state claims against.
-/

/-! ## A085295.P9627004338123432280

`filter[A059280(n), A011558(#)]`
-/

namespace A085295.P9627004338123432280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A085295.P9627004338123432280

/-! ## A085295.P15820331833870299560

`filter[A059280(n), A035263(#)]`
-/

namespace A085295.P15820331833870299560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A085295.P15820331833870299560

/-! ## A085295.P11546139791073925350

`filter[A059280(n), A039982(#)]`
-/

namespace A085295.P11546139791073925350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A085295.P11546139791073925350

/-!
# A085296: Runs of zeros in Catalan sequence modulo 3: consecutive occurrences of binomial(2*k,k)/(k+1) == 0 (mod 3).

The programs for A085296, the canonical program `A085296.P17068606846671607086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085296 has offset 1).

The definition of A085296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085296.P17068606846671607086

`(9*3^A007814(n+1)-1)/2-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085296

/-- `(9*3^A007814(n+1)-1)/2-1` -/
def P17068606846671607086.Spec : Prop :=
  ∀ n, P17068606846671607086.a n = (A085296 (n + 1) : ℚ)

end A085296

/-! ## A085296.P11069785989395873712

`3*Δ[3*a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A085296.P11069785989395873712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A085296.P11069785989395873712

namespace A085296

/-- `3*Δ[3*a(floor(n/2))+n]` -/
def P11069785989395873712.Spec : Prop :=
  ∀ n, P11069785989395873712.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P13842614508964716646

`3*(n%2*a(floor(n/2))+1)` with `a(0)=3`
-/

namespace A085296.P13842614508964716646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * (n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A085296.P13842614508964716646

namespace A085296

/-- `3*(n%2*a(floor(n/2))+1)` -/
def P13842614508964716646.Spec : Prop :=
  ∀ n, (P13842614508964716646.a n : ℤ) = A085296 (n + 1)

end A085296

/-! ## A085296.P3901378234432415512

`A029858(val(n+1, 2)+2)`
-/

namespace A085296.P3901378234432415512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (SequenceMachineLib.valuation (n + 1) 2 + 2)

end

end A085296.P3901378234432415512

namespace A085296

/-- `A029858(val(n+1, 2)+2)` -/
def P3901378234432415512.Spec : Prop :=
  ∀ n, P3901378234432415512.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P6248732843227501841

`3*A342633(xor(n, n+1))`
-/

namespace A085296.P6248732843227501841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A342633 (Nat.xor n (n + 1))

end

end A085296.P6248732843227501841

namespace A085296

/-- `3*A342633(xor(n, n+1))` -/
def P6248732843227501841.Spec : Prop :=
  ∀ n, P6248732843227501841.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P3867415492641934607

`3*A003462(val(n+1, 2)+1)`
-/

namespace A085296.P3867415492641934607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003462 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A085296.P3867415492641934607

namespace A085296

/-- `3*A003462(val(n+1, 2)+1)` -/
def P3867415492641934607.Spec : Prop :=
  ∀ n, P3867415492641934607.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P13827049706555023211

`3*A003973(2^val(n+1, 2))`
-/

namespace A085296.P13827049706555023211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003973 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A085296.P13827049706555023211

namespace A085296

/-- `3*A003973(2^val(n+1, 2))` -/
def P13827049706555023211.Spec : Prop :=
  ∀ n, P13827049706555023211.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P8871634008998191218

`3*A168066(xor(n, n+1)+1)`
-/

namespace A085296.P8871634008998191218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168066 (Nat.xor n (n + 1) + 1)

end

end A085296.P8871634008998191218

namespace A085296

/-- `3*A168066(xor(n, n+1)+1)` -/
def P8871634008998191218.Spec : Prop :=
  ∀ n, P8871634008998191218.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P12548829524470702061

`(3^(A007814(n+1)+2)-3)/2`
-/

namespace A085296.P12548829524470702061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A007814 (n + 1) + 2 : ℤ) - 3) / 2

end

end A085296.P12548829524470702061

namespace A085296

/-- `(3^(A007814(n+1)+2)-3)/2` -/
def P12548829524470702061.Spec : Prop :=
  ∀ n, P12548829524470702061.a n = (A085296 (n + 1) : ℚ)

end A085296

/-! ## A085296.P14075084985533911383

`A029858(A085058(n))`
-/

namespace A085296.P14075084985533911383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (A085058 n).toNat

end

end A085296.P14075084985533911383

namespace A085296

/-- `A029858(A085058(n))` -/
def P14075084985533911383.Spec : Prop :=
  ∀ n, P14075084985533911383.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P12117621717166779562

`A085060(A135481(n))`
-/

namespace A085296.P12117621717166779562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085060 (A135481 n).toNat

end

end A085296.P12117621717166779562

namespace A085296

/-- `A085060(A135481(n))` -/
def P12117621717166779562.Spec : Prop :=
  ∀ n, P12117621717166779562.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P9990448474845905474

`A123109(A001511(n+1))`
-/

namespace A085296.P9990448474845905474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 (A001511 (n + 1)).toNat

end

end A085296.P9990448474845905474

namespace A085296

/-- `A123109(A001511(n+1))` -/
def P9990448474845905474.Spec : Prop :=
  ∀ n, P9990448474845905474.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P15447274052099708224

`A087503(A037227(n+1))`
-/

namespace A085296.P15447274052099708224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 (A037227 (n + 1)).toNat

end

end A085296.P15447274052099708224

namespace A085296

/-- `A087503(A037227(n+1))` -/
def P15447274052099708224.Spec : Prop :=
  ∀ n, P15447274052099708224.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P952519858244385624

`A029858(A089080(n+2))`
-/

namespace A085296.P952519858244385624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (A089080 (n + 2)).toNat

end

end A085296.P952519858244385624

namespace A085296

/-- `A029858(A089080(n+2))` -/
def P952519858244385624.Spec : Prop :=
  ∀ n, P952519858244385624.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P5855088249881147821

`A029858(A007814(n+1)+2)`
-/

namespace A085296.P5855088249881147821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (A007814 (n + 1) + 2).toNat

end

end A085296.P5855088249881147821

namespace A085296

/-- `A029858(A007814(n+1)+2)` -/
def P5855088249881147821.Spec : Prop :=
  ∀ n, P5855088249881147821.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P11841623502813494017

`A007051(A001511(n+1)+1)-2`
-/

namespace A085296.P11841623502813494017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A001511 (n + 1) + 1).toNat - 2

end

end A085296.P11841623502813494017

namespace A085296

/-- `A007051(A001511(n+1)+1)-2` -/
def P11841623502813494017.Spec : Prop :=
  ∀ n, P11841623502813494017.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P12934036965395794090

`A007051(A007814(n+1)+2)-2`
-/

namespace A085296.P12934036965395794090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A007814 (n + 1) + 2).toNat - 2

end

end A085296.P12934036965395794090

namespace A085296

/-- `A007051(A007814(n+1)+2)-2` -/
def P12934036965395794090.Spec : Prop :=
  ∀ n, P12934036965395794090.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P3942784310069077854

`3*(A033162(xor(n, n+1)+1)-3)`
-/

namespace A085296.P3942784310069077854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033162 (Nat.xor n (n + 1) + 1) - 3)

end

end A085296.P3942784310069077854

namespace A085296

/-- `3*(A033162(xor(n, n+1)+1)-3)` -/
def P3942784310069077854.Spec : Prop :=
  ∀ n, P3942784310069077854.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P10444812002281185958

`A061559(A115364(n+1))`
-/

namespace A085296.P10444812002281185958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061559 (A115364 (n + 1)).toNat

end

end A085296.P10444812002281185958

namespace A085296

/-- `A061559(A115364(n+1))` -/
def P10444812002281185958.Spec : Prop :=
  ∀ n, P10444812002281185958.a n = A085296 (n + 1)

end A085296

/-! ## A085296.P12936672028751796939

`A081601(A171977(n+1))`
-/

namespace A085296.P12936672028751796939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (A171977 (n + 1)).toNat

end

end A085296.P12936672028751796939

namespace A085296

/-- `A081601(A171977(n+1))` -/
def P12936672028751796939.Spec : Prop :=
  ∀ n, P12936672028751796939.a n = A085296 (n + 1)

end A085296

/-!
# A085297: Nonzero residues of Catalan sequence modulo 3; related to the Thue-Morse sequence (A001285).

The programs for A085297, the canonical program `A085297.P10081021779170976826` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085297 has offset 1).

The definition of A085297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085297.P10081021779170976826

`A001285(round(n/3))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A085297

/-- `A001285(round(n/3))` -/
def P10081021779170976826.Spec : Prop :=
  ∀ n, P10081021779170976826.a n = A085297 (n + 1)

theorem P10081021779170976826.correct : P10081021779170976826.Spec := by
  intro n
  simp only [A085297, Nat.add_sub_cancel]

end A085297

/-! ## A085297.P12145266293767711638

`A010060(round(n/3))+1`
-/

namespace A085297.P12145266293767711638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + 1

end

end A085297.P12145266293767711638

namespace A085297

/-- `A010060(round(n/3))+1` -/
def P12145266293767711638.Spec : Prop :=
  ∀ n, P12145266293767711638.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P12074757768687945143

`2-A010059(round(n/3))`
-/

namespace A085297.P12074757768687945143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010059 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A085297.P12074757768687945143

namespace A085297

/-- `2-A010059(round(n/3))` -/
def P12074757768687945143.Spec : Prop :=
  ∀ n, P12074757768687945143.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P5532160171332430759

`A001316(round(n/3))%3`
-/

namespace A085297.P5532160171332430759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat) 3

end

end A085297.P5532160171332430759

namespace A085297

/-- `A001316(round(n/3))%3` -/
def P5532160171332430759.Spec : Prop :=
  ∀ n, P5532160171332430759.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P3432756811961732411

`A082446(2*(n+1))+1`
-/

namespace A085297.P3432756811961732411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082446 (2 * (n + 1)) + 1

end

end A085297.P3432756811961732411

namespace A085297

/-- `A082446(2*(n+1))+1` -/
def P3432756811961732411.Spec : Prop :=
  ∀ n, P3432756811961732411.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P16289853454767563893

`2-A082446(Δ[(n+1)²])`
-/

namespace A085297.P16289853454767563893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A082446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A085297.P16289853454767563893

namespace A085297

/-- `2-A082446(Δ[(n+1)²])` -/
def P16289853454767563893.Spec : Prop :=
  ∀ n, P16289853454767563893.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P4695622810276889944

`A001285(floor((n+1)/3))!`
-/

namespace A085297.P4695622810276889944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001285 ⌊(n + 1 : ℚ) / 3⌋.toNat).toNat

end

end A085297.P4695622810276889944

namespace A085297

/-- `A001285(floor((n+1)/3))!` -/
def P4695622810276889944.Spec : Prop :=
  ∀ n, (P4695622810276889944.a n : ℤ) = A085297 (n + 1)

end A085297

/-! ## A085297.P10596011881920039146

`2-A010060(∑[(n+1)²%3+2]+1)`
-/

namespace A085297.P10596011881920039146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A085297.P10596011881920039146

namespace A085297

/-- `2-A010060(∑[(n+1)²%3+2]+1)` -/
def P10596011881920039146.Spec : Prop :=
  ∀ n, P10596011881920039146.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P6267219374849299703

`A161175(A226122(n+1))`
-/

namespace A085297.P6267219374849299703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161175 (A226122 (n + 1)).toNat

end

end A085297.P6267219374849299703

namespace A085297

/-- `A161175(A226122(n+1))` -/
def P6267219374849299703.Spec : Prop :=
  ∀ n, P6267219374849299703.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P1202715803490504197

`A161175(A047465(n+2))`
-/

namespace A085297.P1202715803490504197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161175 (A047465 (n + 2)).toNat

end

end A085297.P1202715803490504197

namespace A085297

/-- `A161175(A047465(n+2))` -/
def P1202715803490504197.Spec : Prop :=
  ∀ n, P1202715803490504197.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P9927827021638034420

`A161175(A047526(n+2))`
-/

namespace A085297.P9927827021638034420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161175 (A047526 (n + 2)).toNat

end

end A085297.P9927827021638034420

namespace A085297

/-- `A161175(A047526(n+2))` -/
def P9927827021638034420.Spec : Prop :=
  ∀ n, P9927827021638034420.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P14334402615171898471

`A036582(A063218(n+2))`
-/

namespace A085297.P14334402615171898471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (A063218 (n + 2)).toNat

end

end A085297.P14334402615171898471

namespace A085297

/-- `A036582(A063218(n+2))` -/
def P14334402615171898471.Spec : Prop :=
  ∀ n, P14334402615171898471.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P4792317881858907002

`∏[(and(n, ∑[n%3])%3)!]%3`
-/

namespace A085297.P4792317881858907002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A085297.P4792317881858907002

namespace A085297

/-- `∏[(and(n, ∑[n%3])%3)!]%3` -/
def P4792317881858907002.Spec : Prop :=
  ∀ n, (P4792317881858907002.a n : ℤ) = A085297 (n + 1)

end A085297

/-! ## A085297.P15253571617831812750

`∏[A085006(n+1)]%3`
-/

namespace A085297.P15253571617831812750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) 3

end

end A085297.P15253571617831812750

namespace A085297

/-- `∏[A085006(n+1)]%3` -/
def P15253571617831812750.Spec : Prop :=
  ∀ n, P15253571617831812750.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P1273042264202390055

`A005680(A063236(n+2))`
-/

namespace A085297.P1273042264202390055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (A063236 (n + 2)).toNat

end

end A085297.P1273042264202390055

namespace A085297

/-- `A005680(A063236(n+2))` -/
def P1273042264202390055.Spec : Prop :=
  ∀ n, P1273042264202390055.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P1743398399980636283

`p?[A039969(n)+1]-1`
-/

namespace A085297.P1743398399980636283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A085297.P1743398399980636283

namespace A085297

/-- `p?[A039969(n)+1]-1` -/
def P1743398399980636283.Spec : Prop :=
  ∀ n, P1743398399980636283.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P620289465475391331

`A039969(A370662(n+1))`
-/

namespace A085297.P620289465475391331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (A370662 (n + 1)).toNat

end

end A085297.P620289465475391331

namespace A085297

/-- `A039969(A370662(n+1))` -/
def P620289465475391331.Spec : Prop :=
  ∀ n, P620289465475391331.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P13715880699953644272

`A135265(A096304(n+1))`
-/

namespace A085297.P13715880699953644272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135265 (A096304 (n + 1)).toNat

end

end A085297.P13715880699953644272

namespace A085297

/-- `A135265(A096304(n+1))` -/
def P13715880699953644272.Spec : Prop :=
  ∀ n, P13715880699953644272.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P17108521699583130003

`A000034(A073750(n+1))`
-/

namespace A085297.P17108521699583130003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A073750 (n + 1)).toNat

end

end A085297.P17108521699583130003

namespace A085297

/-- `A000034(A073750(n+1))` -/
def P17108521699583130003.Spec : Prop :=
  ∀ n, P17108521699583130003.a n = A085297 (n + 1)

end A085297

/-! ## A085297.P18183309947568441094

`A214210(n+1)+1`
-/

namespace A085297.P18183309947568441094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214210 (n + 1) + 1

end

end A085297.P18183309947568441094

namespace A085297

/-- `A214210(n+1)+1` -/
def P18183309947568441094.Spec : Prop :=
  ∀ n, P18183309947568441094.a n = A085297 (n + 1)

end A085297

/-!
# A085298: a(n) is the smallest exponent x such that prime(n)^x when reversed is a prime.

The programs for A085298, there is no canonical definition to state claims against.
-/

/-! ## A085298.P3057160597252754516

`A085324(Δ[A007504(n)])`
-/

namespace A085298.P3057160597252754516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (f1 (n + 1) - f1 n).toNat

end

end A085298.P3057160597252754516

/-! ## A085298.P3833640519862496754

`A085324(A000040(n+1))`
-/

namespace A085298.P3833640519862496754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (A000040 (n + 1)).toNat

end

end A085298.P3833640519862496754

/-! ## A085298.P5463069603055483638

`A085324(A077359(n+1))`
-/

namespace A085298.P5463069603055483638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (A077359 (n + 1)).toNat

end

end A085298.P5463069603055483638

/-! ## A085298.P13683180347599909313

`A085324(A095320(n+1))`
-/

namespace A085298.P13683180347599909313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (A095320 (n + 1)).toNat

end

end A085298.P13683180347599909313

/-! ## A085298.P7833166295838634845

`A085324(A216883(n+1))`
-/

namespace A085298.P7833166295838634845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (A216883 (n + 1)).toNat

end

end A085298.P7833166295838634845

