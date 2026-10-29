import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A305900: Filter sequence for a(primes > 3) = constant sequences.

The programs for A305900, there is no canonical definition to state claims against.
-/

/-! ## A305900.P5781431738980624154

`A374478(n+1)%A186983(2*n)`
-/

namespace A305900.P5781431738980624154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374478 (n + 1)) (A186983 (2 * n + 13))

end

end A305900.P5781431738980624154

/-! ## A305900.P16471619211225713464

`and(A058000(n+1), A374478(n+1))`
-/

namespace A305900.P16471619211225713464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A374478 (n + 1))

end

end A305900.P16471619211225713464

/-! ## A305900.P1566029827512802179

`C(A374478(n+1), A294886(A127589(3*n+5)))`
-/

namespace A305900.P1566029827512802179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A374478 (n + 1)).toNat (A294886 (A127589 (3 * n + 5)).toNat).toNat

end

end A305900.P1566029827512802179

/-! ## A305900.P15796855662686418038

`A374478(n+1)/A134451(A307958(2*n+3)+1)`
-/

namespace A305900.P15796855662686418038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374478 (n + 1) : ℚ) / (A134451 (A307958 (2 * n + 3) + 1).toNat : ℚ)

end

end A305900.P15796855662686418038

/-! ## A305900.P8046521953610932784

`A374478(n+1)+A255308(A117143(2*(n+2)))`
-/

namespace A305900.P8046521953610932784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1) + A255308 (A117143 (2 * (n + 2))).toNat

end

end A305900.P8046521953610932784

/-! ## A305900.P2336143731991840332

`A374478(n+1)+A335515(A151878(n))`
-/

namespace A305900.P2336143731991840332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1) + A335515 (A151878 n).toNat

end

end A305900.P2336143731991840332

/-! ## A305900.P8291713080580581875

`A374478(n+1)%A087788(A374443(n))`
-/

namespace A305900.P8291713080580581875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374478 (n + 1)) (A087788 (A374443 n).toNat)

end

end A305900.P8291713080580581875

/-! ## A305900.P5507122048733352517

`A374478(n+1)+A374471(A033428(2*(n+1)))`
-/

namespace A305900.P5507122048733352517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1) + A374471 (A033428 (2 * (n + 1))).toNat

end

end A305900.P5507122048733352517

/-! ## A305900.P10235835824446357130

`A374478(n+1)+A000122(A104247(n+1))`
-/

namespace A305900.P10235835824446357130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374478 (n + 1) + A000122 (A104247 (n + 1)).toNat

end

end A305900.P10235835824446357130

/-! ## A305900.P10150510819458689390

`A374478(n+1)/A341596(A205511(3*n+4))`
-/

namespace A305900.P10150510819458689390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374478 (n + 1) : ℚ) / (A341596 (A205511 (3 * n + 4)).toNat : ℚ)

end

end A305900.P10150510819458689390

/-!
# A305905: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305905, there is no canonical definition to state claims against.
-/

/-! ## A305905.P8790525858271762656

`A305911(∑[4*n]+1)`
-/

namespace A305905.P8790525858271762656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305905.P8790525858271762656

/-! ## A305905.P10193782601431791947

`record[A305911(Δ[A235355(n)])]`
-/

namespace A305905.P10193782601431791947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P10193782601431791947

/-! ## A305905.P1733988575765803735

`and(-1, A305911(A001844(n)))`
-/

namespace A305905.P1733988575765803735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305911 (A001844 n).toNat)

end

end A305905.P1733988575765803735

/-! ## A305905.P1693375581412453782

`record[A305911(A330613(n+1))]`
-/

namespace A305905.P1693375581412453782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P1693375581412453782

/-! ## A305905.P9982094008150977397

`record[A305911(Δ[A079824(n+1)])]`
-/

namespace A305905.P9982094008150977397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305905.P9982094008150977397

/-!
# A305906: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305906, there is no canonical definition to state claims against.
-/

/-! ## A305906.P2923989501709552821

`A305911(∑[n+2]+4)`
-/

namespace A305906.P2923989501709552821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305906.P2923989501709552821

/-! ## A305906.P12493373815249240868

`A305911(A167614(n+1))+char[20]`
-/

namespace A305906.P12493373815249240868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305906.P12493373815249240868

/-! ## A305906.P15493907222682751979

`A305911(A046691(n)+7)+char[21]`
-/

namespace A305906.P15493907222682751979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305906.P15493907222682751979

/-! ## A305906.P13449461014520865693

`A305911(A000096(n+1)+4)+char[20]`
-/

namespace A305906.P13449461014520865693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305906.P13449461014520865693

/-! ## A305906.P7202618925533777702

`or(char[2], A305911(A034856(n+1)+5))`
-/

namespace A305906.P7202618925533777702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305911 (A034856 (n + 1) + 5).toNat)

end

end A305906.P7202618925533777702

/-!
# A305907: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305907, there is no canonical definition to state claims against.
-/

/-! ## A305907.P17397611071285934971

`A305911(∑[n+3]+7)`
-/

namespace A305907.P17397611071285934971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305907.P17397611071285934971

/-! ## A305907.P7171932701565312454

`A305911(A141214(n)+7)+char[18]`
-/

namespace A305907.P7171932701565312454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305907.P7171932701565312454

/-! ## A305907.P6436385576097154606

`or(char[4], A305911(A055999(n)+10))`
-/

namespace A305907.P6436385576097154606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305911 (A055999 n + 10).toNat)

end

end A305907.P6436385576097154606

/-! ## A305907.P4345353905137710651

`A007318(C(2, n))*A305911(A055999(n)+10)`
-/

namespace A305907.P4345353905137710651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305911 (A055999 n + 10).toNat

end

end A305907.P4345353905137710651

/-! ## A305907.P15833475037077034227

`A007318(C(2, n))*A305911(A167614(n+2)+1)`
-/

namespace A305907.P15833475037077034227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305911 (A167614 (n + 2) + 1).toNat

end

end A305907.P15833475037077034227

/-!
# A305908: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305908, there is no canonical definition to state claims against.
-/

/-! ## A305908.P6266071842728693591

`A305911(A167499(n+3))`
-/

namespace A305908.P6266071842728693591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167499 (n + 3)).toNat

end

end A305908.P6266071842728693591

/-! ## A305908.P3337940794730370048

`A305911(A155212(n)+13)`
-/

namespace A305908.P3337940794730370048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A155212 n + 13).toNat

end

end A305908.P3337940794730370048

/-! ## A305908.P11122586583330398057

`A305911(A056000(n)+15)`
-/

namespace A305908.P11122586583330398057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A056000 n + 15).toNat

end

end A305908.P11122586583330398057

/-! ## A305908.P14346506085744533231

`A305911(eq[7, A066657(n)])`
-/

namespace A305908.P14346506085744533231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305908.P14346506085744533231

/-! ## A305908.P40493632288628634

`A305911(A167614(n+3)+2)`
-/

namespace A305908.P40493632288628634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167614 (n + 3) + 2).toNat

end

end A305908.P40493632288628634

/-!
# A305909: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305909, there is no canonical definition to state claims against.
-/

/-! ## A305909.P14730139290629709761

`A305911(A166136(n+4))`
-/

namespace A305909.P14730139290629709761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A166136 (n + 4)).toNat

end

end A305909.P14730139290629709761

/-! ## A305909.P14649849670396887561

`A305911(A056115(n)+21)`
-/

namespace A305909.P14649849670396887561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A056115 n + 21).toNat

end

end A305909.P14649849670396887561

/-! ## A305909.P5494024966487523004

`A305911(A167614(n+4)+3)`
-/

namespace A305909.P5494024966487523004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167614 (n + 4) + 3).toNat

end

end A305909.P5494024966487523004

/-! ## A305909.P11748526234127793018

`A305911(A000124(n+5)+5)`
-/

namespace A305909.P11748526234127793018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A000124 (n + 5) + 5).toNat

end

end A305909.P11748526234127793018

/-! ## A305909.P12324348513313723175

`A305911(A000096(n+4)+7)`
-/

namespace A305909.P12324348513313723175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A000096 (n + 4) + 7).toNat

end

end A305909.P12324348513313723175

/-!
# A305910: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305910, there is no canonical definition to state claims against.
-/

/-! ## A305910.P10055327247668746274

`A305911(A056119(n)+28)`
-/

namespace A305910.P10055327247668746274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A056119 n + 28).toNat

end

end A305910.P10055327247668746274

/-! ## A305910.P17946915795363801639

`A305911(eq[11, A066657(n)])`
-/

namespace A305910.P17946915795363801639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305910.P17946915795363801639

/-! ## A305910.P11425977109258746873

`A305911(A167499(n+5)+2)`
-/

namespace A305910.P11425977109258746873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167499 (n + 5) + 2).toNat

end

end A305910.P11425977109258746873

/-! ## A305910.P11418922917243330574

`A305911(A167614(n+5)+4)`
-/

namespace A305910.P11418922917243330574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A167614 (n + 5) + 4).toNat

end

end A305910.P11418922917243330574

/-! ## A305910.P267994929137352962

`A305911(A000124(n+6)+6)`
-/

namespace A305910.P267994929137352962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305911 (A000124 (n + 6) + 6).toNat

end

end A305910.P267994929137352962

/-!
# A305911: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305911, there is no canonical definition to state claims against.
-/

/-! ## A305911.P5305819476058871704

`A317153(n+1)-A173636(A174545(n))`
-/

namespace A305911.P5305819476058871704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A173636 (A174545 n).toNat

end

end A305911.P5305819476058871704

/-! ## A305911.P15399952994040410964

`A316883(n+1)-A157685(A260340(n))`
-/

namespace A305911.P15399952994040410964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) - A157685 (A260340 n).toNat

end

end A305911.P15399952994040410964

/-! ## A305911.P18390302584510687153

`A317153(n+1)-A186034(A022167(n))²`
-/

namespace A305911.P18390302584510687153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A186034 (A022167 n).toNat ^ 2

end

end A305911.P18390302584510687153

/-! ## A305911.P4922143479663507284

`A317153(n+1)-A037800(A176791(n))²`
-/

namespace A305911.P4922143479663507284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A037800 (A176791 n).toNat ^ 2

end

end A305911.P4922143479663507284

/-! ## A305911.P17748680375850203573

`A317153(n+1)-A157687(A157156(n))`
-/

namespace A305911.P17748680375850203573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) - A157687 (A157156 n).toNat

end

end A305911.P17748680375850203573

/-!
# A305912: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305912, there is no canonical definition to state claims against.
-/

/-! ## A305912.P13786682685825476690

`A305918(∑[4*n]+1)`
-/

namespace A305912.P13786682685825476690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305912.P13786682685825476690

/-! ## A305912.P2411196980328133973

`root(A305918(n²+(n+1)²), gcd(11, n))`
-/

namespace A305912.P2411196980328133973
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305918 (n ^ 2 + (n + 1) ^ 2) : ℝ) ^ (1 / (Nat.gcd 11 n : ℝ))

end

end A305912.P2411196980328133973

/-! ## A305912.P1326636693268238759

`record[A305918(A330613(n+1))]`
-/

namespace A305912.P1326636693268238759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305912.P1326636693268238759

/-! ## A305912.P6828528647498857847

`A305918(A001844(n))+char[9]`
-/

namespace A305912.P6828528647498857847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305912.P6828528647498857847

/-! ## A305912.P4507280461216095076

`record[A003982(n)*A305918(n+1)]`
-/

namespace A305912.P4507280461216095076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305912.P4507280461216095076

/-!
# A305913: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305913, there is no canonical definition to state claims against.
-/

/-! ## A305913.P201085136571976026

`A305918(∑[n+2]+4)`
-/

namespace A305913.P201085136571976026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305913.P201085136571976026

/-! ## A305913.P12944803069242839727

`A305918(A167614(n+1))+char[18]`
-/

namespace A305913.P12944803069242839727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305913.P12944803069242839727

/-! ## A305913.P3688775484057721321

`or(char[1], A305918(A055998(n)+6))`
-/

namespace A305913.P3688775484057721321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305918 (A055998 n + 6).toNat)

end

end A305913.P3688775484057721321

/-! ## A305913.P13448695864662837221

`record[gcd(A073200(n), A305918(n+4))]`
-/

namespace A305913.P13448695864662837221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A305918 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305913.P13448695864662837221

/-! ## A305913.P6066649885931526509

`A305918(A167614(n+1))%A041354(n)`
-/

namespace A305913.P6066649885931526509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305918 (A167614 (n + 1)).toNat) (A041354 n)

end

end A305913.P6066649885931526509

/-!
# A305914: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305914, there is no canonical definition to state claims against.
-/

/-! ## A305914.P14676325615995531916

`A305918(∑[n+3]+7)`
-/

namespace A305914.P14676325615995531916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305914.P14676325615995531916

/-! ## A305914.P18278767600514326668

`A305918(A141214(n)+7)+char[19]`
-/

namespace A305914.P18278767600514326668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305914.P18278767600514326668

/-! ## A305914.P13652897034731246137

`A000034(2*n)*A305918(A141214(n)+7)`
-/

namespace A305914.P13652897034731246137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A305918 (A141214 n + 7).toNat

end

end A305914.P13652897034731246137

/-! ## A305914.P3616422306166370200

`A305918(A141214(n)+7)%A000108(n+6)`
-/

namespace A305914.P3616422306166370200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305918 (A141214 n + 7).toNat) (A000108 (n + 6))

end

end A305914.P3616422306166370200

/-! ## A305914.P7218726545188590607

`A007318(C(2, n))*A305918(A141214(n)+7)`
-/

namespace A305914.P7218726545188590607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305918 (A141214 n + 7).toNat

end

end A305914.P7218726545188590607

/-!
# A305915: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305915, there is no canonical definition to state claims against.
-/

/-! ## A305915.P5311339400512660215

`A305918(A374005(n+1))`
-/

namespace A305915.P5311339400512660215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374005 (n + 1)).toNat

end

end A305915.P5311339400512660215

/-! ## A305915.P19176092778139001

`A305918(A167499(n+3))`
-/

namespace A305915.P19176092778139001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A167499 (n + 3)).toNat

end

end A305915.P19176092778139001

/-! ## A305915.P5988869564578724490

`A305918(A155212(n)+13)`
-/

namespace A305915.P5988869564578724490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A155212 n + 13).toNat

end

end A305915.P5988869564578724490

/-! ## A305915.P5998706563302742094

`A305918(A056000(n)+15)`
-/

namespace A305915.P5998706563302742094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A056000 n + 15).toNat

end

end A305915.P5998706563302742094

/-! ## A305915.P221274823008606467

`A305918(eq[7, A066657(n)])`
-/

namespace A305915.P221274823008606467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305915.P221274823008606467

/-!
# A305916: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305916, there is no canonical definition to state claims against.
-/

/-! ## A305916.P7256507804995153659

`A305918(A374007(n+1))`
-/

namespace A305916.P7256507804995153659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374007 (n + 1)).toNat

end

end A305916.P7256507804995153659

/-! ## A305916.P16079708308878080168

`A305918(A166136(n+4))`
-/

namespace A305916.P16079708308878080168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A166136 (n + 4)).toNat

end

end A305916.P16079708308878080168

/-! ## A305916.P5161224799662962551

`A305918(Δ[A264443(n)]+10)`
-/

namespace A305916.P5161224799662962551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (f1 (n + 1) - f1 n + 10).toNat

end

end A305916.P5161224799662962551

/-! ## A305916.P9435197128586508401

`A305918(A167499(n+4)+1)`
-/

namespace A305916.P9435197128586508401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A167499 (n + 4) + 1).toNat

end

end A305916.P9435197128586508401

/-! ## A305916.P3857262800716798004

`A305918(A167614(n+4)+3)`
-/

namespace A305916.P3857262800716798004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A167614 (n + 4) + 3).toNat

end

end A305916.P3857262800716798004

/-!
# A305917: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305917, there is no canonical definition to state claims against.
-/

/-! ## A305917.P15057030311790964454

`A305918(A374008(n+1))`
-/

namespace A305917.P15057030311790964454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A374008 (n + 1)).toNat

end

end A305917.P15057030311790964454

/-! ## A305917.P13915269028886699538

`A305918(eq[11, A066657(n)])`
-/

namespace A305917.P13915269028886699538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305917.P13915269028886699538

/-! ## A305917.P11659431489826641625

`A305918(A000124(n+6)+6)`
-/

namespace A305917.P11659431489826641625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A000124 (n + 6) + 6).toNat

end

end A305917.P11659431489826641625

/-! ## A305917.P14589842943122942985

`A305918(eq[8, A131818(n+1)])`
-/

namespace A305917.P14589842943122942985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305917.P14589842943122942985

/-! ## A305917.P11645479523615380884

`A305918(A046691(n+6)-4-2*n)`
-/

namespace A305917.P11645479523615380884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305918 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A305917.P11645479523615380884

/-!
# A305918: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305918, there is no canonical definition to state claims against.
-/

/-! ## A305918.P17186377908864739165

`A309785(A299321(n+1))+A304355(n+1)`
-/

namespace A305918.P17186377908864739165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A304355 (n + 1)

end

end A305918.P17186377908864739165

/-! ## A305918.P2815284088214416073

`A304355(n+1)+A004198(A185044(n))`
-/

namespace A305918.P2815284088214416073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304355 (n + 1) + A004198 (A185044 n).toNat

end

end A305918.P2815284088214416073

/-! ## A305918.P10554071271616874401

`A309785(A331562(n))+A304355(n+1)`
-/

namespace A305918.P10554071271616874401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A304355 (n + 1)

end

end A305918.P10554071271616874401

/-! ## A305918.P7578609845500377300

`or(A025439(A171882(n)), A304355(n+1))`
-/

namespace A305918.P7578609845500377300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025439 (A171882 n).toNat) (A304355 (n + 1))

end

end A305918.P7578609845500377300

/-! ## A305918.P10378338467807906941

`or(A127323(A215204(n)), A304355(n+1))`
-/

namespace A305918.P10378338467807906941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127323 (A215204 n).toNat) (A304355 (n + 1))

end

end A305918.P10378338467807906941

/-!
# A305919: a(n) = n! * [x^n] 1/(2 - exp(x))^n.

The programs for A305919, there is no canonical definition to state claims against.
-/

/-! ## A305919.P6823118622776886067

`A226513(2*n²)`
-/

namespace A305919.P6823118622776886067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (2 * n ^ 2)

end

end A305919.P6823118622776886067

/-! ## A305919.P4562859815085642876

`A226513(A001105(n))^A178334(n)`
-/

namespace A305919.P4562859815085642876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226513 (A001105 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A305919.P4562859815085642876

/-! ## A305919.P17138052524217160449

`A230093(n)!*A226513(A001105(n))`
-/

namespace A305919.P17138052524217160449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A230093 n).toNat : ℤ) * A226513 (A001105 n).toNat

end

end A305919.P17138052524217160449

/-! ## A305919.P13704778236777118652

`A226513(A001105(n))/A178334(n+1)`
-/

namespace A305919.P13704778236777118652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226513 (A001105 n).toNat : ℚ) / (A178334 (n + 1) : ℚ)

end

end A305919.P13704778236777118652

/-! ## A305919.P466170266501276773

`A007318(C(n+2, 2))*A226513(A001105(n))`
-/

namespace A305919.P466170266501276773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A226513 (A001105 n).toNat

end

end A305919.P466170266501276773

/-!
# A305920: Inverse Euler transform of A008408.

The programs for A305920, there is no canonical definition to state claims against.
-/

/-! ## A305920.P5669865228816054272

`A305757(n+1)-24`
-/

namespace A305920.P5669865228816054272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305757 (n + 1) - 24

end

end A305920.P5669865228816054272

/-!
# A305922: Expansion of e.g.f. log(1 + 2*x/(exp(x) + 1)).

The programs for A305922, there is no canonical definition to state claims against.
-/

/-! ## A305922.P12134106830537759736

`∑{e}[11^n, A019536(#)]/A033999(3*(n+1))`
-/

namespace A305922.P12134106830537759736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), A019536 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A033999 (3 * (n + 1)) : ℚ)

end

end A305922.P12134106830537759736

/-! ## A305922.P839373690126974336

`A009442(n)-A191254(A286819(n))`
-/

namespace A305922.P839373690126974336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009442 n - A191254 (A286819 n).toNat

end

end A305922.P839373690126974336

/-!
# A305923: Expansion of e.g.f. exp(x)/(1 - log(1 + x) - log(1 + x)^2).

The programs for A305923, there is no canonical definition to state claims against.
-/

/-! ## A305923.P13614921519985776660

`A002266(A180677(n))+1+n`
-/

namespace A305923.P13614921519985776660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A180677 n).toNat + 1 + (n : ℤ)

end

end A305923.P13614921519985776660

/-! ## A305923.P9996637973010897841

`A034887(A278095(n+1))+n`
-/

namespace A305923.P9996637973010897841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A278095 (n + 1)).toNat + (n : ℤ)

end

end A305923.P9996637973010897841

/-!
# A305930: Number of digits '0' in 3^n (in base 10).

The programs for A305930, the canonical program `A305930.P16091158982295753828` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305930 has offset 0).

The definition of A305930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305930.P12063744604480072885

`val(A321539(n), 5)`
-/

namespace A305930.P12063744604480072885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A321539 n).toNat 5

end

end A305930.P12063744604480072885

namespace A305930

/-- `val(A321539(n), 5)` -/
def P12063744604480072885.Spec : Prop :=
  ∀ n, (P12063744604480072885.a n : ℤ) = A305930 n

end A305930

/-! ## A305930.P16091158982295753828

`∑{digits}[3^n, A000007(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A305930

/-- `∑{digits}[3^n, A000007(#)]` -/
def P16091158982295753828.Spec : Prop :=
  ∀ n, P16091158982295753828.a n = A305930 n

theorem P16091158982295753828.correct : P16091158982295753828.Spec := by
  intro n
  simp only [A305930]

end A305930

/-! ## A305930.P14333160511146361129

`∑{digits}[3^n, A008458(#)%3]`
-/

namespace A305930.P14333160511146361129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A008458 x) 3).sum

end

end A305930.P14333160511146361129

namespace A305930

/-- `∑{digits}[3^n, A008458(#)%3]` -/
def P14333160511146361129.Spec : Prop :=
  ∀ n, P14333160511146361129.a n = A305930 n

end A305930

/-! ## A305930.P15721408478061400813

`∑{digits}[3^n, A015087(floor(sqrt(#)))]`
-/

namespace A305930.P15721408478061400813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A015087 (Nat.sqrt x)).sum

end

end A305930.P15721408478061400813

namespace A305930

/-- `∑{digits}[3^n, A015087(floor(sqrt(#)))]` -/
def P15721408478061400813.Spec : Prop :=
  ∀ n, P15721408478061400813.a n = A305930 n

end A305930

/-! ## A305930.P14500445153250063853

`∑{digits}[3^n, C(2, A006254(#+1))]`
-/

namespace A305930.P14500445153250063853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose 2 (A006254 (x + 1)).toNat).sum

end

end A305930.P14500445153250063853

namespace A305930

/-- `∑{digits}[3^n, C(2, A006254(#+1))]` -/
def P14500445153250063853.Spec : Prop :=
  ∀ n, (P14500445153250063853.a n : ℤ) = A305930 n

end A305930

/-! ## A305930.P14442173417029315173

`∑{digits}[A000244(n), A055641(#)]`
-/

namespace A305930.P14442173417029315173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A305930.P14442173417029315173

namespace A305930

/-- `∑{digits}[A000244(n), A055641(#)]` -/
def P14442173417029315173.Spec : Prop :=
  ∀ n, P14442173417029315173.a n = A305930 n

end A305930

/-! ## A305930.P9720635253411501340

`∑{digits}[A000244(n), A112316(#)]`
-/

namespace A305930.P9720635253411501340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A112316 x).sum

end

end A305930.P9720635253411501340

namespace A305930

/-- `∑{digits}[A000244(n), A112316(#)]` -/
def P9720635253411501340.Spec : Prop :=
  ∀ n, P9720635253411501340.a n = A305930 n

end A305930

/-! ## A305930.P17924140239309585282

`∑{digits}[A000244(n), A151736(#)]`
-/

namespace A305930.P17924140239309585282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151736 x).sum

end

end A305930.P17924140239309585282

namespace A305930

/-- `∑{digits}[A000244(n), A151736(#)]` -/
def P17924140239309585282.Spec : Prop :=
  ∀ n, P17924140239309585282.a n = A305930 n

end A305930

/-! ## A305930.P16341333869948438312

`∑{digits}[A000244(n), A151878(#)]`
-/

namespace A305930.P16341333869948438312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151878 x).sum

end

end A305930.P16341333869948438312

namespace A305930

/-- `∑{digits}[A000244(n), A151878(#)]` -/
def P16341333869948438312.Spec : Prop :=
  ∀ n, P16341333869948438312.a n = A305930 n

end A305930

/-! ## A305930.P14232995266303523610

`∑{digits}[A000244(n), A151933(#)]`
-/

namespace A305930.P14232995266303523610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151933 x).sum

end

end A305930.P14232995266303523610

namespace A305930

/-- `∑{digits}[A000244(n), A151933(#)]` -/
def P14232995266303523610.Spec : Prop :=
  ∀ n, P14232995266303523610.a n = A305930 n

end A305930

/-! ## A305930.P466855254437876687

`∑{digits}[A000244(n), A151934(#)]`
-/

namespace A305930.P466855254437876687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A151934 x).sum

end

end A305930.P466855254437876687

namespace A305930

/-- `∑{digits}[A000244(n), A151934(#)]` -/
def P466855254437876687.Spec : Prop :=
  ∀ n, P466855254437876687.a n = A305930 n

end A305930

/-! ## A305930.P4786724116242608094

`∑{digits}[A000244(n), A247223(#²)]`
-/

namespace A305930.P4786724116242608094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A247223 (x ^ 2)).sum

end

end A305930.P4786724116242608094

namespace A305930

/-- `∑{digits}[A000244(n), A247223(#²)]` -/
def P4786724116242608094.Spec : Prop :=
  ∀ n, P4786724116242608094.a n = A305930 n

end A305930

/-! ## A305930.P17518813728764792456

`∑{digits}[A000244(n), A028310(#)-#]`
-/

namespace A305930.P17518813728764792456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x - (x : ℤ)).sum

end

end A305930.P17518813728764792456

namespace A305930

/-- `∑{digits}[A000244(n), A028310(#)-#]` -/
def P17518813728764792456.Spec : Prop :=
  ∀ n, P17518813728764792456.a n = A305930 n

end A305930

/-! ## A305930.P14239861091467731421

`∑{digits}[3^n, A101659(A232161(#+1))]`
-/

namespace A305930.P14239861091467731421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (A232161 (x + 1)).toNat).sum

end

end A305930.P14239861091467731421

namespace A305930

/-- `∑{digits}[3^n, A101659(A232161(#+1))]` -/
def P14239861091467731421.Spec : Prop :=
  ∀ n, P14239861091467731421.a n = A305930 n

end A305930

/-! ## A305930.P16520604987113372747

`∑{digits}[A000244(n), A048993(A014105(#))]`
-/

namespace A305930.P16520604987113372747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048993 (A014105 x).toNat).sum

end

end A305930.P16520604987113372747

namespace A305930

/-- `∑{digits}[A000244(n), A048993(A014105(#))]` -/
def P16520604987113372747.Spec : Prop :=
  ∀ n, P16520604987113372747.a n = A305930 n

end A305930

/-!
# A305931: Powers of 3 having at least one digit '0' in their decimal representation.

The programs for A305931, there is no canonical definition to state claims against.
-/

/-! ## A305931.P17264319351327045471

`3^comp[lt[0, ∏{digits}[3^n, #]]]`
-/

namespace A305931.P17264319351327045471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A305931.P17264319351327045471

/-! ## A305931.P9914293979244713986

`3^comp[A030700(n)]`
-/

namespace A305931.P9914293979244713986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A305931.P9914293979244713986

/-! ## A305931.P15539295010706621307

`3^lt[0, A305930(n)]`
-/

namespace A305931.P15539295010706621307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305931.P15539295010706621307

/-! ## A305931.P6842553095226360096

`A000244(comp[A030700(n)])`
-/

namespace A305931.P6842553095226360096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305931.P6842553095226360096

/-! ## A305931.P7435381881632129957

`A000244(lt[0, A305930(n)])`
-/

namespace A305931.P7435381881632129957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A305931.P7435381881632129957

/-!
# A305934: Powers of 3 that have exactly one digit '0' in base 10.

The programs for A305934, there is no canonical definition to state claims against.
-/

/-! ## A305934.P17001185435733781451

`3^eq[1, A305930(n)]`
-/

namespace A305934.P17001185435733781451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305934.P17001185435733781451

/-! ## A305934.P10841362392507403381

`A000244(eq[1, A305930(n)])`
-/

namespace A305934.P10841362392507403381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305934.P10841362392507403381

/-! ## A305934.P11055037922112989367

`A000244(eq[1, ∑{digits}[3^n, A151736(#)]])`
-/

namespace A305934.P11055037922112989367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A151736 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305934.P11055037922112989367

/-! ## A305934.P12081795917978274748

`A000244(eq[1, ∑{digits}[3^n, A151933(#)]])`
-/

namespace A305934.P12081795917978274748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A151933 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305934.P12081795917978274748

/-! ## A305934.P5242330569311750869

`A000244(eq[1, ∑{digits}[3^n, A008458(#)%3]])`
-/

namespace A305934.P5242330569311750869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Int.tmod (A008458 x) 3).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305934.P5242330569311750869

/-!
# A305935: Number of labeled spanning intersecting set-systems on n vertices with no singletons.

The programs for A305935, there is no canonical definition to state claims against.
-/

/-! ## A305935.P4735170349567903672

`A084269(A005183(n))`
-/

namespace A305935.P4735170349567903672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A005183 n).toNat

end

end A305935.P4735170349567903672

/-!
# A305936: Irregular triangle whose n-th row is the multiset spanning an initial interval of positive integers with multiplicities equal to the n-th row of A296150 (the prime indices of n in weakly decreasing order).

The programs for A305936, there is no canonical definition to state claims against.
-/

/-! ## A305936.P4367953648794242230

`A001222(or(A000043(n+1), A362746(n+1)))`
-/

namespace A305936.P4367953648794242230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000043 (n + 1)) (A362746 (n + 1))).toNat

end

end A305936.P4367953648794242230

/-! ## A305936.P5855318533587768121

`A120336(A091973(n+1)+1)`
-/

namespace A305936.P5855318533587768121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120336 (A091973 (n + 1) + 1).toNat

end

end A305936.P5855318533587768121

/-! ## A305936.P4046313279627409

`A016016(Δ[A065192(n+1)]+8)`
-/

namespace A305936.P4046313279627409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (f1 (n + 1) - f1 n + 8).toNat

end

end A305936.P4046313279627409

/-! ## A305936.P13532179765113280446

`gcd(A148398(n), A269303(A361832(n+2)))`
-/

namespace A305936.P13532179765113280446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A148398 n) (A269303 (A361832 (n + 2)).toNat)

end

end A305936.P13532179765113280446

/-! ## A305936.P11804919309300780471

`A007862(A165886(n)+A112798(n+4))`
-/

namespace A305936.P11804919309300780471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A165886 n + A112798 (n + 4)).toNat

end

end A305936.P11804919309300780471

/-!
# A305937: Number of partitions such that the least positive integer which is not a part of the partition is prime.

The programs for A305937, there is no canonical definition to state claims against.
-/

/-! ## A305937.P2184526535709080926

`A027340(n)-A118759(A339404(n))`
-/

namespace A305937.P2184526535709080926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027340 n - A118759 (A339404 n).toNat

end

end A305937.P2184526535709080926

/-! ## A305937.P5710804983317299082

`A104503(n)-A118759(A339404(n))`
-/

namespace A305937.P5710804983317299082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104503 n - A118759 (A339404 n).toNat

end

end A305937.P5710804983317299082

/-! ## A305937.P1205358061198118134

`A024793(n+8)-A118759(A024793(n+3))`
-/

namespace A305937.P1205358061198118134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024793 (n + 8) - A118759 (A024793 (n + 3)).toNat

end

end A305937.P1205358061198118134

/-! ## A305937.P3028667432127053654

`A118759(A027340(n)-A248518(n))`
-/

namespace A305937.P3028667432127053654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027340 n - A248518 n).toNat

end

end A305937.P3028667432127053654

/-! ## A305937.P884528071009087179

`A367066(A238478(n+1))`
-/

namespace A305937.P884528071009087179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367066 (A238478 (n + 1)).toNat

end

end A305937.P884528071009087179

/-!
# A305940: Irregular triangle where T(n,k) is the coefficient of s(y) in p(n), where s is Schur functions, p is power-sum symmetric functions, and y is the integer partition with Heinz number A215366(n,k).

The programs for A305940, there is no canonical definition to state claims against.
-/

/-! ## A305940.P8528336336319697757

`A304438(A215366(n+1))`
-/

namespace A305940.P8528336336319697757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A215366 (n + 1)).toNat

end

end A305940.P8528336336319697757

/-! ## A305940.P3674555610283936351

`A100047(A126042(n)+A091684(n))`
-/

namespace A305940.P3674555610283936351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A126042 n + A091684 n).toNat

end

end A305940.P3674555610283936351

/-! ## A305940.P6402225459583632788

`A016287(A064577(n+1)*A279363(n+1))`
-/

namespace A305940.P6402225459583632788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016287 (A064577 (n + 1) * A279363 (n + 1)).toNat

end

end A305940.P6402225459583632788

/-! ## A305940.P15914288781643952532

`A049347(A272033(n+2))`
-/

namespace A305940.P15914288781643952532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A272033 (n + 2)).toNat

end

end A305940.P15914288781643952532

/-! ## A305940.P5388223046620496107

`A008683(A079280(n+2))^A079258(3*n)`
-/

namespace A305940.P5388223046620496107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A079280 (n + 2)).toNat : ℚ) ^ (A079258 (3 * n) : ℤ)

end

end A305940.P5388223046620496107

/-!
# A305941: Smallest power of n having at least one digit 0 (when written in base 10).

The programs for A305941, there is no canonical definition to state claims against.
-/

/-! ## A305941.P15246081627549566846

`(n+2)^A071531(n+2)`
-/

namespace A305941.P15246081627549566846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A071531 (n + 2) : ℤ)

end

end A305941.P15246081627549566846

/-!
# A305948: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305948, there is no canonical definition to state claims against.
-/

/-! ## A305948.P15509429326822856310

`A305954(∑[4*n]+1)`
-/

namespace A305948.P15509429326822856310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305948.P15509429326822856310

/-! ## A305948.P4083687834340463296

`record[A003982(n)*A305954(n+1)]`
-/

namespace A305948.P4083687834340463296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305948.P4083687834340463296

/-! ## A305948.P7255314041116170633

`record[gcd(A114327(n), A305954(n+1))]`
-/

namespace A305948.P7255314041116170633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A305954 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305948.P7255314041116170633

/-! ## A305948.P9671980868690286717

`A305954(A001844(n))+A305930(n)`
-/

namespace A305948.P9671980868690286717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A001844 n).toNat + A305930 n

end

end A305948.P9671980868690286717

/-! ## A305948.P7526806877130496469

`gcd(A000038(n), A305954(A001844(n)))`
-/

namespace A305948.P7526806877130496469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305954 (A001844 n).toNat)

end

end A305948.P7526806877130496469

/-!
# A305949: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305949, there is no canonical definition to state claims against.
-/

/-! ## A305949.P11495748412968018657

`A305954(∑[n+2]+4)`
-/

namespace A305949.P11495748412968018657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305949.P11495748412968018657

/-! ## A305949.P11536708772566249465

`A317215(∑[n+2]+4)`
-/

namespace A305949.P11536708772566249465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305949.P11536708772566249465

/-! ## A305949.P355622712309919904

`A305954(A167614(n+1))^ceil(n/98)`
-/

namespace A305949.P355622712309919904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305954 (A167614 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A305949.P355622712309919904

/-! ## A305949.P11565846824633333893

`A305954(A167614(n+1))+A180472(n)`
-/

namespace A305949.P11565846824633333893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A167614 (n + 1)).toNat + A180472 n

end

end A305949.P11565846824633333893

/-! ## A305949.P2927457656017895531

`A305954(A167614(n+1))%A016798(n)`
-/

namespace A305949.P2927457656017895531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305954 (A167614 (n + 1)).toNat) (A016798 n)

end

end A305949.P2927457656017895531

/-!
# A305950: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305950, there is no canonical definition to state claims against.
-/

/-! ## A305950.P4674466259234190726

`A305954(A374004(n+1))`
-/

namespace A305950.P4674466259234190726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374004 (n + 1)).toNat

end

end A305950.P4674466259234190726

/-! ## A305950.P5805616504894182750

`A305954(A052905(n)+9)`
-/

namespace A305950.P5805616504894182750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A052905 n + 9).toNat

end

end A305950.P5805616504894182750

/-! ## A305950.P17694115447344316269

`A317215(A052905(n)+9)`
-/

namespace A305950.P17694115447344316269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A052905 n + 9).toNat

end

end A305950.P17694115447344316269

/-! ## A305950.P1869998893884335017

`A305954(A055999(n)+10)`
-/

namespace A305950.P1869998893884335017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A055999 n + 10).toNat

end

end A305950.P1869998893884335017

/-! ## A305950.P2857894350303079541

`A317215(A055999(n)+10)`
-/

namespace A305950.P2857894350303079541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A055999 n + 10).toNat

end

end A305950.P2857894350303079541

/-!
# A305951: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305951, there is no canonical definition to state claims against.
-/

/-! ## A305951.P5069989400250823328

`A305954(A374005(n+1))`
-/

namespace A305951.P5069989400250823328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374005 (n + 1)).toNat

end

end A305951.P5069989400250823328

/-! ## A305951.P14528814644033143866

`A305954(A167499(n+3))`
-/

namespace A305951.P14528814644033143866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A167499 (n + 3)).toNat

end

end A305951.P14528814644033143866

/-! ## A305951.P12766457244006428091

`A305954(A155212(n)+13)`
-/

namespace A305951.P12766457244006428091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A155212 n + 13).toNat

end

end A305951.P12766457244006428091

/-! ## A305951.P11819994934443668753

`A305954(eq[7, A066657(n)])`
-/

namespace A305951.P11819994934443668753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305951.P11819994934443668753

/-! ## A305951.P4018744501092009054

`A305954(eq[6, A131818(n+1)])`
-/

namespace A305951.P4018744501092009054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305951.P4018744501092009054

/-!
# A305952: Number of n X 6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305952, there is no canonical definition to state claims against.
-/

/-! ## A305952.P2926407393971057020

`A305954(A374007(n+1))`
-/

namespace A305952.P2926407393971057020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374007 (n + 1)).toNat

end

end A305952.P2926407393971057020

/-! ## A305952.P14801871199454938231

`A305954(A056115(n)+21)`
-/

namespace A305952.P14801871199454938231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A056115 n + 21).toNat

end

end A305952.P14801871199454938231

/-! ## A305952.P7068490950833395081

`A305954(eq[7, A131818(n+1)])`
-/

namespace A305952.P7068490950833395081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305952.P7068490950833395081

/-! ## A305952.P12568032212904481023

`A305954(A052905(n+3))`
-/

namespace A305952.P12568032212904481023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A052905 (n + 3)).toNat

end

end A305952.P12568032212904481023

/-! ## A305952.P4516357991824913343

`A305954(eq[5, A193592(n)])`
-/

namespace A305952.P4516357991824913343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305952.P4516357991824913343

/-!
# A305953: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305953, there is no canonical definition to state claims against.
-/

/-! ## A305953.P13572696413963091824

`A305954(A374008(n+1))`
-/

namespace A305953.P13572696413963091824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A374008 (n + 1)).toNat

end

end A305953.P13572696413963091824

/-! ## A305953.P12805299513310574515

`A305954(eq[11, A066657(n)])`
-/

namespace A305953.P12805299513310574515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305953.P12805299513310574515

/-! ## A305953.P12043177219320212363

`A305954(eq[8, A131818(n+1)])`
-/

namespace A305953.P12043177219320212363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305953.P12043177219320212363

/-! ## A305953.P7299677906250048138

`A305954(A055999(n+4))`
-/

namespace A305953.P7299677906250048138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (A055999 (n + 4)).toNat

end

end A305953.P7299677906250048138

/-! ## A305953.P5470317867619592847

`A305954(eq[4, A219347(n)])`
-/

namespace A305953.P5470317867619592847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305953.P5470317867619592847

/-!
# A305954: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305954, there is no canonical definition to state claims against.
-/

/-! ## A305954.P15050532234063491426

`A317215(∑[A010894(n)!])`
-/

namespace A305954.P15050532234063491426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305954.P15050532234063491426

/-! ## A305954.P8722137858011052831

`A317215(A010894(n)!+n)`
-/

namespace A305954.P8722137858011052831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A305954.P8722137858011052831

/-! ## A305954.P9136015099373241981

`A317215(n+1)^cosh(A010894(n))`
-/

namespace A305954.P9136015099373241981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A317215 (n + 1) : ℝ) ^ (Real.cosh (A010894 (n + 21) : ℝ))

end

end A305954.P9136015099373241981

/-! ## A305954.P1410141428106540601

`A331173(A317215(n+1))`
-/

namespace A305954.P1410141428106540601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (A317215 (n + 1)).toNat

end

end A305954.P1410141428106540601

/-! ## A305954.P16633823860438595537

`A028310(A317215(n+1))`
-/

namespace A305954.P16633823860438595537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A317215 (n + 1)).toNat

end

end A305954.P16633823860438595537

/-!
# A305955: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305955, there is no canonical definition to state claims against.
-/

/-! ## A305955.P16704732076206104749

`A305961(∑[4*n]+1)`
-/

namespace A305955.P16704732076206104749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305955.P16704732076206104749

/-! ## A305955.P7441977567404474339

`A305961(A001844(n))+A011737(n)`
-/

namespace A305955.P7441977567404474339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A001844 n).toNat + A011737 n

end

end A305955.P7441977567404474339

/-! ## A305955.P10773957625058660816

`A305961(A001844(n))+A025465(n)`
-/

namespace A305955.P10773957625058660816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A001844 n).toNat + A025465 n

end

end A305955.P10773957625058660816

/-! ## A305955.P11001278822381369834

`A305961(A001844(n))+A185238(n)`
-/

namespace A305955.P11001278822381369834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A001844 n).toNat + A185238 n

end

end A305955.P11001278822381369834

/-! ## A305955.P12596438366152694690

`A057427(n)*A305961(A001844(n))`
-/

namespace A305955.P12596438366152694690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A305961 (A001844 n).toNat

end

end A305955.P12596438366152694690

/-!
# A305956: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305956, there is no canonical definition to state claims against.
-/

/-! ## A305956.P10642689674356127444

`A305961(∑[n+2]+4)`
-/

namespace A305956.P10642689674356127444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305956.P10642689674356127444

/-! ## A305956.P9924976099410423419

`record[gcd(A303913(n), A305961(n+1))]`
-/

namespace A305956.P9924976099410423419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A305961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305956.P9924976099410423419

/-! ## A305956.P16698984233497029002

`A305961(A167614(n+1))^ceil(n/98)`
-/

namespace A305956.P16698984233497029002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305961 (A167614 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A305956.P16698984233497029002

/-! ## A305956.P14870388420892773599

`A305961(A167614(n+1))+A011737(n)`
-/

namespace A305956.P14870388420892773599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A167614 (n + 1)).toNat + A011737 n

end

end A305956.P14870388420892773599

/-! ## A305956.P2435544381673327241

`A305961(A167614(n+1))+A185284(n)`
-/

namespace A305956.P2435544381673327241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A167614 (n + 1)).toNat + A185284 n

end

end A305956.P2435544381673327241

/-!
# A305957: Number of n X 4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305957, there is no canonical definition to state claims against.
-/

/-! ## A305957.P617806525261252970

`A305961(A374004(n+1))`
-/

namespace A305957.P617806525261252970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374004 (n + 1)).toNat

end

end A305957.P617806525261252970

/-! ## A305957.P3111302719348000999

`A305961(A141214(n)+7)`
-/

namespace A305957.P3111302719348000999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A141214 n + 7).toNat

end

end A305957.P3111302719348000999

/-! ## A305957.P15841043088701250883

`A305961(A052905(n)+9)`
-/

namespace A305957.P15841043088701250883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A052905 n + 9).toNat

end

end A305957.P15841043088701250883

/-! ## A305957.P10558001932868184700

`A305961(A167614(n+2)+1)`
-/

namespace A305957.P10558001932868184700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A167614 (n + 2) + 1).toNat

end

end A305957.P10558001932868184700

/-! ## A305957.P12450506708290751338

`A305961(A112355(n+1)+4)`
-/

namespace A305957.P12450506708290751338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A112355 (n + 1) + 4).toNat

end

end A305957.P12450506708290751338

/-!
# A305958: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305958, there is no canonical definition to state claims against.
-/

/-! ## A305958.P5355706428612551063

`A305961(A374005(n+1))`
-/

namespace A305958.P5355706428612551063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374005 (n + 1)).toNat

end

end A305958.P5355706428612551063

/-! ## A305958.P17265741640193145612

`A305961(A167499(n+3))`
-/

namespace A305958.P17265741640193145612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A167499 (n + 3)).toNat

end

end A305958.P17265741640193145612

/-! ## A305958.P17924052725262700465

`A305961(A056000(n)+15)`
-/

namespace A305958.P17924052725262700465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A056000 n + 15).toNat

end

end A305958.P17924052725262700465

/-! ## A305958.P14026641944643011048

`A305961(∑[n+5]+6)`
-/

namespace A305958.P14026641944643011048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A305958.P14026641944643011048

/-! ## A305958.P2496638460783885314

`A305961(Δ[A264443(n)])+A011737(n)`
-/

namespace A305958.P2496638460783885314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (f1 (n + 1) - f1 n).toNat + A011737 n

end

end A305958.P2496638460783885314

/-!
# A305959: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305959, there is no canonical definition to state claims against.
-/

/-! ## A305959.P12450605195233536261

`A305961(A374007(n+1))`
-/

namespace A305959.P12450605195233536261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374007 (n + 1)).toNat

end

end A305959.P12450605195233536261

/-! ## A305959.P7391079060617364785

`A305961(A166136(n+4))`
-/

namespace A305959.P7391079060617364785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A166136 (n + 4)).toNat

end

end A305959.P7391079060617364785

/-! ## A305959.P7379907156364927307

`A305961(A056115(n)+21)`
-/

namespace A305959.P7379907156364927307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A056115 n + 21).toNat

end

end A305959.P7379907156364927307

/-! ## A305959.P4438372585951337207

`A305961(A052905(n+3))`
-/

namespace A305959.P4438372585951337207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A052905 (n + 3)).toNat

end

end A305959.P4438372585951337207

/-! ## A305959.P6719969381534318932

`A305961(eq[3, A219347(n)])`
-/

namespace A305959.P6719969381534318932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305959.P6719969381534318932

/-!
# A305960: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305960, there is no canonical definition to state claims against.
-/

/-! ## A305960.P16153547039379128062

`A305961(A374008(n+1))`
-/

namespace A305960.P16153547039379128062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A374008 (n + 1)).toNat

end

end A305960.P16153547039379128062

/-! ## A305960.P3060521551259855156

`A305961(eq[8, A131818(n+1)])`
-/

namespace A305960.P3060521551259855156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305960.P3060521551259855156

/-! ## A305960.P8637114823373180936

`A305961(A055999(n+4))`
-/

namespace A305960.P8637114823373180936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (A055999 (n + 4)).toNat

end

end A305960.P8637114823373180936

/-! ## A305960.P17485749515880371907

`A305961(eq[4, A219347(n)])`
-/

namespace A305960.P17485749515880371907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305960.P17485749515880371907

/-! ## A305960.P8569822322851888675

`A305961(eq[6, A193592(n)])`
-/

namespace A305960.P8569822322851888675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305960.P8569822322851888675

/-!
# A305961: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305961, there is no canonical definition to state claims against.
-/

/-! ## A305961.P6462502350793944203

`A317222(n+1)-A010894(A003401(n+1))`
-/

namespace A305961.P6462502350793944203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A305961.P6462502350793944203

/-! ## A305961.P16765192768407030023

`A317222(n+1)+A016389(A022166(n))`
-/

namespace A305961.P16765192768407030023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A022166 n).toNat

end

end A305961.P16765192768407030023

/-! ## A305961.P15373987644453725317

`A317222(n+1)+A016389(A027336(n))`
-/

namespace A305961.P15373987644453725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A027336 n).toNat

end

end A305961.P15373987644453725317

/-! ## A305961.P4001917157245688189

`A317222(n+1)+A016389(A176561(n))`
-/

namespace A305961.P4001917157245688189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) + A016389 (A176561 n).toNat

end

end A305961.P4001917157245688189

/-! ## A305961.P14078653835559329057

`A317222(n+1)-A101455(A071927(n+1))`
-/

namespace A305961.P14078653835559329057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (n + 1) - A101455 (A071927 (n + 1)).toNat

end

end A305961.P14078653835559329057

/-!
# A305962: Number A(n,k) of length-n restricted growth strings (RGS) with growth <= k and fixed first element; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A305962, there is no canonical definition to state claims against.
-/

/-! ## A305962.P18224156664803573511

`A144150(n)-A144201(A144150(n))`
-/

namespace A305962.P18224156664803573511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A144201 (A144150 n).toNat

end

end A305962.P18224156664803573511

/-! ## A305962.P8581908184126744696

`A144150(n)-A072401(A245397(n))`
-/

namespace A305962.P8581908184126744696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A072401 (A245397 n).toNat

end

end A305962.P8581908184126744696

/-! ## A305962.P5228317954479305278

`A330753(A144150(n)*A164937(n+3))`
-/

namespace A305962.P5228317954479305278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330753 (A144150 n * A164937 (n + 3)).toNat

end

end A305962.P5228317954479305278

/-! ## A305962.P8833091301450890475

`A330753(lcm(A144150(n), A164937(n+3)))`
-/

namespace A305962.P8833091301450890475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330753 (Int.lcm (A144150 n) (A164937 (n + 3)))

end

end A305962.P8833091301450890475

/-! ## A305962.P1259986169014308752

`A144150(n)-A212619(A144150(n+1))`
-/

namespace A305962.P1259986169014308752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n - A212619 (A144150 (n + 1)).toNat

end

end A305962.P1259986169014308752

/-!
# A305963: Number of length-n restricted growth strings (RGS) with growth <= n and fixed first element.

The programs for A305963, there is no canonical definition to state claims against.
-/

/-! ## A305963.P7789467162997182881

`A305962(∑[4*n])`
-/

namespace A305963.P7789467162997182881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305963.P7789467162997182881

/-! ## A305963.P4041749608390056568

`or(char[2], A305962(A046092(n)))`
-/

namespace A305963.P4041749608390056568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305962 (A046092 n).toNat)

end

end A305963.P4041749608390056568

/-! ## A305963.P6676793778562383769

`A305962(A046092(n))%A181922(n)`
-/

namespace A305963.P6676793778562383769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305962 (A046092 n).toNat) (A181922 n)

end

end A305963.P6676793778562383769

/-! ## A305963.P10314840715847783040

`A305962(A046092(n))/A007318(∑[n])`
-/

namespace A305963.P10314840715847783040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305962 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A305963.P10314840715847783040

/-! ## A305963.P4028985697205778186

`A000041(C(n, n²))*A305962(A046092(n))`
-/

namespace A305963.P4028985697205778186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A305962 (A046092 n).toNat

end

end A305963.P4028985697205778186

/-!
# A305964: Number of length-n restricted growth strings (RGS) with growth <= four and fixed first element.

The programs for A305964, there is no canonical definition to state claims against.
-/

/-! ## A305964.P709652637033476056

`A305962(∑[n+5]+5)`
-/

namespace A305964.P709652637033476056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A305964.P709652637033476056

/-! ## A305964.P9214251654951628701

`or(1, A305962(A052905(n+2)))`
-/

namespace A305964.P9214251654951628701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305962 (A052905 (n + 2)).toNat)

end

end A305964.P9214251654951628701

/-! ## A305964.P16314809054197782407

`gcd(A000038(n), A305962(A052905(n+2)))`
-/

namespace A305964.P16314809054197782407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A305962 (A052905 (n + 2)).toNat)

end

end A305964.P16314809054197782407

/-! ## A305964.P71673855680222858

`A305962(A052905(n+2))+A000007(n+1)`
-/

namespace A305964.P71673855680222858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A305964.P71673855680222858

/-! ## A305964.P5827296732202597080

`A305962(A052905(n+2))+A000038(n+1)`
-/

namespace A305964.P5827296732202597080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A052905 (n + 2)).toNat + A000038 (n + 1)

end

end A305964.P5827296732202597080

/-! ## A305964.P14253223718318257215

`A057427(n+1)*A305962(A052905(n+2))`
-/

namespace A305964.P14253223718318257215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A305962 (A052905 (n + 2)).toNat

end

end A305964.P14253223718318257215

/-! ## A305964.P17523790233924668046

`A305962(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A305964.P17523790233924668046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A305964.P17523790233924668046

/-! ## A305964.P15676648065160723315

`A000045(A000040((-1)^(2*n)))*A305962(A052905(n+2))`
-/

namespace A305964.P15676648065160723315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 ((-1) ^ (2 * n)).toNat).toNat * A305962 (A052905 (n + 2)).toNat

end

end A305964.P15676648065160723315

/-!
# A305965: Number of length-n restricted growth strings (RGS) with growth <= five and fixed first element.

The programs for A305965, there is no canonical definition to state claims against.
-/

/-! ## A305965.P17068903379323848367

`A305962(A055999(n+3))`
-/

namespace A305965.P17068903379323848367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A055999 (n + 3)).toNat

end

end A305965.P17068903379323848367

/-! ## A305965.P2547186416112104420

`A305962(Δ[A023551(n+1)])`
-/

namespace A305965.P2547186416112104420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (f1 (n + 1) - f1 n).toNat

end

end A305965.P2547186416112104420

/-! ## A305965.P8436398013988015122

`A305962(A052905(n+3)-1)`
-/

namespace A305965.P8436398013988015122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A052905 (n + 3) - 1).toNat

end

end A305965.P8436398013988015122

/-! ## A305965.P10498995700191370369

`A305962(2*n+A173036(n)+A016825(n))`
-/

namespace A305965.P10498995700191370369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 ((2 * n : ℤ) + (A173036 n + A016825 n)).toNat

end

end A305965.P10498995700191370369

/-! ## A305965.P12311620911106452716

`A305962(A167614(n+1)+Δ[A167614(2*(n+1))])`
-/

namespace A305965.P12311620911106452716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (A167614 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A305965.P12311620911106452716

/-!
# A305966: Number of length-n restricted growth strings (RGS) with growth <= six and fixed first element.

The programs for A305966, there is no canonical definition to state claims against.
-/

/-! ## A305966.P12132850377240519635

`A305962(eq[6, A025581(n)])`
-/

namespace A305966.P12132850377240519635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305966.P12132850377240519635

/-! ## A305966.P14428922576253793964

`A305962(eq[7, A195663(n)])`
-/

namespace A305966.P14428922576253793964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305966.P14428922576253793964

/-! ## A305966.P1174281961987130973

`A305962(eq[13, A099375(n)])`
-/

namespace A305966.P1174281961987130973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305966.P1174281961987130973

/-! ## A305966.P15608452072341639942

`A305962(eq[64, A130321(n)])`
-/

namespace A305966.P15608452072341639942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305966.P15608452072341639942

/-! ## A305966.P14712976151775249493

`A305962(eq[7, A004736(n+1)])`
-/

namespace A305966.P14712976151775249493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305966.P14712976151775249493

/-! ## A305966.P3717370013000535884

`A305962(Δ[A023551(n+2)]-1)`
-/

namespace A305966.P3717370013000535884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (f1 (n + 1) - f1 n - 1).toNat

end

end A305966.P3717370013000535884

/-!
# A305967: Number of length-n restricted growth strings (RGS) with growth <= seven and fixed first element.

The programs for A305967, there is no canonical definition to state claims against.
-/

/-! ## A305967.P6581311583875955618

`A305962(eq[7, A025581(n)])`
-/

namespace A305967.P6581311583875955618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P6581311583875955618

/-! ## A305967.P11762312933202244370

`A305962(eq[8, A195663(n)])`
-/

namespace A305967.P11762312933202244370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P11762312933202244370

/-! ## A305967.P2988001113331743717

`A305962(eq[15, A099375(n)])`
-/

namespace A305967.P2988001113331743717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P2988001113331743717

/-! ## A305967.P9842743335588180817

`A305962(eq[8, A004736(n+1)])`
-/

namespace A305967.P9842743335588180817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P9842743335588180817

/-! ## A305967.P2804771188040846296

`A305962(eq[8, A134231(n+1)])`
-/

namespace A305967.P2804771188040846296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305967.P2804771188040846296

/-!
# A305968: Number of length-n restricted growth strings (RGS) with growth <= eight and fixed first element.

The programs for A305968, there is no canonical definition to state claims against.
-/

/-! ## A305968.P1970822418503958847

`A305962(eq[7, A116598(n)])`
-/

namespace A305968.P1970822418503958847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P1970822418503958847

/-! ## A305968.P1984089813830603547

`A305962(eq[8, A025581(n)])`
-/

namespace A305968.P1984089813830603547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P1984089813830603547

/-! ## A305968.P7137695800064000751

`A305962(eq[8, A195664(n)])`
-/

namespace A305968.P7137695800064000751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P7137695800064000751

/-! ## A305968.P9394063130578605313

`A305962(eq[9, A193739(n)])`
-/

namespace A305968.P9394063130578605313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P9394063130578605313

/-! ## A305968.P11608488064123579967

`A305962(eq[9, A195663(n)])`
-/

namespace A305968.P11608488064123579967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P11608488064123579967

/-! ## A305968.P11962512190293163345

`A305962(eq[9, A004736(n+1)])`
-/

namespace A305968.P11962512190293163345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305968.P11962512190293163345

/-!
# A305969: Number of length-n restricted growth strings (RGS) with growth <= nine and fixed first element.

The programs for A305969, there is no canonical definition to state claims against.
-/

/-! ## A305969.P5773653409556262289

`A305962(eq[8, A116598(n)])`
-/

namespace A305969.P5773653409556262289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P5773653409556262289

/-! ## A305969.P1860689395601377367

`A305962(eq[9, A025581(n)])`
-/

namespace A305969.P1860689395601377367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P1860689395601377367

/-! ## A305969.P14808763410871459921

`A305962(eq[10, A195663(n)])`
-/

namespace A305969.P14808763410871459921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P14808763410871459921

/-! ## A305969.P9506402176622204741

`A305962(eq[10, A004736(n+1)])`
-/

namespace A305969.P9506402176622204741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P9506402176622204741

/-! ## A305969.P13033169911489334932

`A305962(eq[10, A134231(n+1)])`
-/

namespace A305969.P13033169911489334932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305969.P13033169911489334932

/-!
# A305970: Number of length-n restricted growth strings (RGS) with growth <= ten and fixed first element.

The programs for A305970, there is no canonical definition to state claims against.
-/

/-! ## A305970.P17292902571169528562

`A305962(eq[10, A025581(n)])`
-/

namespace A305970.P17292902571169528562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P17292902571169528562

/-! ## A305970.P17750072769852720986

`A305962(eq[10, A195664(n)])`
-/

namespace A305970.P17750072769852720986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P17750072769852720986

/-! ## A305970.P10278183694908324181

`A305962(eq[11, A195663(n)])`
-/

namespace A305970.P10278183694908324181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P10278183694908324181

/-! ## A305970.P890034479459552957

`A305962(eq[12, A116598(n)])`
-/

namespace A305970.P890034479459552957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P890034479459552957

/-! ## A305970.P5512090228493523926

`A305962(eq[11, A004736(n+1)])`
-/

namespace A305970.P5512090228493523926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305970.P5512090228493523926

/-!
# A305971: Antidiagonal sums of A305962.

The programs for A305971, there is no canonical definition to state claims against.
-/

/-! ## A305971.P9752514694240620645

`∑[A289494(∑[n!])]`
-/

namespace A305971.P9752514694240620645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P9752514694240620645

/-! ## A305971.P350387079472560905

`∑[A289494(∑[A000142(n)])]`
-/

namespace A305971.P350387079472560905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P350387079472560905

/-! ## A305971.P4556945216519197578

`∑[A289494(∑[A154658(n)])]`
-/

namespace A305971.P4556945216519197578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P4556945216519197578

/-! ## A305971.P13825872272203201321

`∑[A289494(A003422(n+1))]`
-/

namespace A305971.P13825872272203201321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A003422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305971.P13825872272203201321

/-!
# A305973: Filter sequence for the prime signature of 2n-1.

The programs for A305973, the canonical program `A305973.P13517062276911664221` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305973 has offset 1).

The definition of A305973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305973.P13517062276911664221

`A004526(A294337(4*n+2))%A000217(A090288(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A305973

/-- `A004526(A294337(4*n+2))%A000217(A090288(n))` -/
def P13517062276911664221.Spec : Prop :=
  ∀ n, P13517062276911664221.a n = A305973 (n + 1)

theorem P13517062276911664221.correct : P13517062276911664221.Spec := by
  intro n
  simp only [A305973, Nat.add_sub_cancel]

end A305973

/-! ## A305973.P5629854676548477484

`A004526(A294337(4*n+2))*A285728(A107153(n+1))`
-/

namespace A305973.P5629854676548477484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294337 (4 * n + 2)).toNat * A285728 (A107153 (n + 1)).toNat

end

end A305973.P5629854676548477484

namespace A305973

/-- `A004526(A294337(4*n+2))*A285728(A107153(n+1))` -/
def P5629854676548477484.Spec : Prop :=
  ∀ n, P5629854676548477484.a n = A305973 (n + 1)

end A305973

/-! ## A305973.P14957376073952669452

`A004526(A294337(4*n+2))+A000038(A059268(n))`
-/

namespace A305973.P14957376073952669452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294337 (4 * n + 2)).toNat + A000038 (A059268 n).toNat

end

end A305973.P14957376073952669452

namespace A305973

/-- `A004526(A294337(4*n+2))+A000038(A059268(n))` -/
def P14957376073952669452.Spec : Prop :=
  ∀ n, P14957376073952669452.a n = A305973 (n + 1)

end A305973

/-! ## A305973.P10198275579278635229

`A004526(A294337(4*n+2))+A000007(A098415(n+1))`
-/

namespace A305973.P10198275579278635229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294337 (4 * n + 2)).toNat + A000007 (A098415 (n + 1)).toNat

end

end A305973.P10198275579278635229

namespace A305973

/-- `A004526(A294337(4*n+2))+A000007(A098415(n+1))` -/
def P10198275579278635229.Spec : Prop :=
  ∀ n, P10198275579278635229.a n = A305973 (n + 1)

end A305973

/-! ## A305973.P1219043358106068493

`A004526(A294337(4*n+2))*A032741(A210967(n+3))`
-/

namespace A305973.P1219043358106068493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294337 (4 * n + 2)).toNat * A032741 (A210967 (n + 3)).toNat

end

end A305973.P1219043358106068493

namespace A305973

/-- `A004526(A294337(4*n+2))*A032741(A210967(n+3))` -/
def P1219043358106068493.Spec : Prop :=
  ∀ n, P1219043358106068493.a n = A305973 (n + 1)

end A305973

/-! ## A305973.P6853826427555296775

`gcd(A004526(A294337(4*n+2)), A151878(n))`
-/

namespace A305973.P6853826427555296775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (A294337 (4 * n + 2)).toNat) (A151878 n)

end

end A305973.P6853826427555296775

namespace A305973

/-- `gcd(A004526(A294337(4*n+2)), A151878(n))` -/
def P6853826427555296775.Spec : Prop :=
  ∀ n, (P6853826427555296775.a n : ℤ) = A305973 (n + 1)

end A305973

/-! ## A305973.P5281215900397045414

`A181819(A001147(n+1)/A001147(n))`
-/

namespace A305973.P5281215900397045414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((A001147 (n + 1) : ℚ) / (A001147 n : ℚ))).toNat

end

end A305973.P5281215900397045414

namespace A305973

/-- `A181819(A001147(n+1)/A001147(n))` -/
def P5281215900397045414.Spec : Prop :=
  ∀ n, P5281215900397045414.a n = A305973 (n + 1)

end A305973

/-! ## A305973.P13540942561810056106

`∏{e}[A321874(2*n+1), #]`
-/

namespace A305973.P13540942561810056106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321874 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305973.P13540942561810056106

namespace A305973

/-- `∏{e}[A321874(2*n+1), #]` -/
def P13540942561810056106.Spec : Prop :=
  ∀ n, (P13540942561810056106.a n : ℤ) = A305973 (n + 1)

end A305973

/-! ## A305973.P13947501522510547132

`A368105(Δ[n²]²)`
-/

namespace A305973.P13947501522510547132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368105 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A305973.P13947501522510547132

namespace A305973

/-- `A368105(Δ[n²]²)` -/
def P13947501522510547132.Spec : Prop :=
  ∀ n, P13947501522510547132.a n = A305973 (n + 1)

end A305973

/-!
# A305975: Filter sequence: All prime powers p^k, k >= 1, are allotted to distinct equivalence classes according to their exponent k, while all other numbers occur in singular equivalence classes of their own.

The programs for A305975, there is no canonical definition to state claims against.
-/

/-! ## A305975.P12153321283096399060

`A318887(lt[A057977(n), A293476(n)])`
-/

namespace A305975.P12153321283096399060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A305975.P12153321283096399060

/-! ## A305975.P3411605117730283657

`A318887(n+1)%A141213(n)`
-/

namespace A305975.P3411605117730283657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318887 (n + 1)) (A141213 n)

end

end A305975.P3411605117730283657

/-! ## A305975.P434312452634434274

`A318887(gcd(n+1, A051906(n+1)))`
-/

namespace A305975.P434312452634434274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (Int.gcd (n + 1 : ℤ) (A051906 (n + 1)))

end

end A305975.P434312452634434274

/-! ## A305975.P4428892379165804792

`and(A117060(n+2), A318887(n+1))`
-/

namespace A305975.P4428892379165804792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 2)) (A318887 (n + 1))

end

end A305975.P4428892379165804792

/-! ## A305975.P12717199944575781207

`A130296(A291655(n))*A318887(n+1)`
-/

namespace A305975.P12717199944575781207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (A291655 n).toNat * A318887 (n + 1)

end

end A305975.P12717199944575781207

/-!
# A305976: Filter sequence for a(prime^k) = constant sequences.

The programs for A305976, there is no canonical definition to state claims against.
-/

/-! ## A305976.P16373989778562391371

`A305974(A290480(n+1))+A057427(n)`
-/

namespace A305976.P16373989778562391371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A057427 n

end

end A305976.P16373989778562391371

/-! ## A305976.P12132576607782111734

`A305974(A290480(n+1))+A178334(n)`
-/

namespace A305976.P12132576607782111734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + A178334 n

end

end A305976.P12132576607782111734

/-! ## A305976.P15968841140136230735

`A305974(A290480(n+1))+char[A007318(n)]`
-/

namespace A305976.P15968841140136230735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A290480 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305976.P15968841140136230735

/-! ## A305976.P1492096567110133359

`A067003(A290480(n+1))+A001221(n+1)`
-/

namespace A305976.P1492096567110133359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (A290480 (n + 1)).toNat + A001221 (n + 1)

end

end A305976.P1492096567110133359

/-!
# A305978: Filter sequence combining prime signatures of n and 2n+1.

The programs for A305978, there is no canonical definition to state claims against.
-/

/-! ## A305978.P9025822988073024753

`gcd(A106222(A305982(n+1)), A305985(n+1))`
-/

namespace A305978.P9025822988073024753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106222 (A305982 (n + 1)).toNat) (A305985 (n + 1))

end

end A305978.P9025822988073024753

/-! ## A305978.P14859307012231485060

`gcd(A036647(A244120(n)), A305985(n+1))`
-/

namespace A305978.P14859307012231485060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036647 (A244120 n).toNat) (A305985 (n + 1))

end

end A305978.P14859307012231485060

/-! ## A305978.P12627320311058814038

`A305985(ceil(A151987(n)/A159721(n+3))+n)`
-/

namespace A305978.P12627320311058814038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305985 (⌈(A151987 n : ℚ) / (A159721 (n + 3) : ℚ)⌉ + (n : ℤ)).toNat

end

end A305978.P12627320311058814038

/-!
# A305979: Filter sequence for a(Fermi-Dirac primes) = constant sequences.

The programs for A305979, there is no canonical definition to state claims against.
-/

/-! ## A305979.P934807025028274688

`A151934(n)!*A334868(n+1)`
-/

namespace A305979.P934807025028274688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151934 n).toNat : ℤ) * A334868 (n + 1)

end

end A305979.P934807025028274688

/-! ## A305979.P14666333409889983675

`A151935(n)!*A334868(n+1)`
-/

namespace A305979.P14666333409889983675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151935 n).toNat : ℤ) * A334868 (n + 1)

end

end A305979.P14666333409889983675

/-! ## A305979.P278781830003564589

`A334868(n+1)+val(A156997(n+1), 17)`
-/

namespace A305979.P278781830003564589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1) + (SequenceMachineLib.valuation (A156997 (n + 1)).toNat 17 : ℤ)

end

end A305979.P278781830003564589

/-! ## A305979.P16344424390905954118

`A334868(n+1)+A010051(A001545(n))`
-/

namespace A305979.P16344424390905954118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1) + A010051 (A001545 n).toNat

end

end A305979.P16344424390905954118

/-! ## A305979.P9877949359901209603

`A001222(A107257(n+1))*A334868(n+1)`
-/

namespace A305979.P9877949359901209603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107257 (n + 1)).toNat * A334868 (n + 1)

end

end A305979.P9877949359901209603

/-! ## A305979.P11995237555325904626

`gcd(A081457(n+1), A334868(n+1))`
-/

namespace A305979.P11995237555325904626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081457 (n + 1)) (A334868 (n + 1))

end

end A305979.P11995237555325904626

/-!
# A305980: Filter sequence for a(Squarefree numbers > 1) = constant sequences.

The programs for A305980, there is no canonical definition to state claims against.
-/

/-! ## A305980.P12170453466971012310

`A158416(A243352(n+1))+n²%(n+1)`
-/

namespace A305980.P12170453466971012310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A305980.P12170453466971012310

/-! ## A305980.P18044612946545274624

`A158416(A243352(n+1))+A057427(n)`
-/

namespace A305980.P18044612946545274624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + A057427 n

end

end A305980.P18044612946545274624

/-! ## A305980.P9957755474805134912

`A158416(A243352(n+1))-A057428(n)`
-/

namespace A305980.P9957755474805134912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat - A057428 n

end

end A305980.P9957755474805134912

/-! ## A305980.P6025909960649062050

`A158416(A243352(n+1))+1-A000007(n)`
-/

namespace A305980.P6025909960649062050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + (1 - A000007 n)

end

end A305980.P6025909960649062050

/-! ## A305980.P13002172554956638265

`A158416(A243352(n+1))+2-A054977(n)`
-/

namespace A305980.P13002172554956638265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + (2 - A054977 n)

end

end A305980.P13002172554956638265

/-! ## A305980.P15925543083852652807

`A158416(A243352(n+1))+char[A116966(n)]`
-/

namespace A305980.P15925543083852652807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A305980.P15925543083852652807

/-! ## A305980.P10086189714664221530

`A158416(A243352(n+1))+A000035(A000040(n+1))`
-/

namespace A305980.P10086189714664221530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A243352 (n + 1)).toNat + A000035 (A000040 (n + 1)).toNat

end

end A305980.P10086189714664221530

/-!
# A305981: Expansion of e.g.f. 1/(1 + LambertW(log(1 - x))).

The programs for A305981, there is no canonical definition to state claims against.
-/

/-! ## A305981.P17608524823285948231

`A032188(n+1)-A352129(A276175(n))`
-/

namespace A305981.P17608524823285948231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1) - A352129 (A276175 n).toNat

end

end A305981.P17608524823285948231

/-!
# A305982: a(n) = Product_{d|n, d<n} prime(A305793(1+d)-1), where A305973(k) records the prime signature of 2k-1.

The programs for A305982, there is no canonical definition to state claims against.
-/

/-! ## A305982.P9148220220287359278

`A328524(A002033(n)%A121964(n))`
-/

namespace A305982.P9148220220287359278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328524 (Int.tmod (A002033 n) (A121964 (n + 30))).toNat

end

end A305982.P9148220220287359278

/-! ## A305982.P17593256620035810950

`A000005(A300834(n+1)%A045978(n))`
-/

namespace A305982.P17593256620035810950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A300834 (n + 1)) (A045978 n)).toNat

end

end A305982.P17593256620035810950

/-! ## A305982.P11532029492841655987

`A000005(A300834(n+1)^A046620(n+1))`
-/

namespace A305982.P11532029492841655987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A300834 (n + 1) : ℚ) ^ (A046620 (n + 1) : ℤ))).toNat

end

end A305982.P11532029492841655987

/-! ## A305982.P17568357261420131080

`A000005(A300834(n+1)^A008835(n+3))`
-/

namespace A305982.P17568357261420131080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A300834 (n + 1) : ℚ) ^ (A008835 (n + 3) : ℤ))).toNat

end

end A305982.P17568357261420131080

/-! ## A305982.P17782447074935816718

`A304102(n+1)%A124867(A005101(n+1))`
-/

namespace A305982.P17782447074935816718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304102 (n + 1)) (A124867 (A005101 (n + 1)).toNat)

end

end A305982.P17782447074935816718

/-!
# A305983: Filter sequence combining from all proper divisors d of n, the prime signature of 2d+1.

The programs for A305983, there is no canonical definition to state claims against.
-/

/-! ## A305983.P3531472867342904271

`A000267(A294928(A086328(n+1)))`
-/

namespace A305983.P3531472867342904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A294928 (A086328 (n + 1)).toNat).toNat

end

end A305983.P3531472867342904271

/-! ## A305983.P5476689618924320498

`A237433(n+1)+A210717(A098743(n))`
-/

namespace A305983.P5476689618924320498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) + A210717 (A098743 n).toNat

end

end A305983.P5476689618924320498

/-! ## A305983.P8342874617986415373

`A285007(A322272(n+2))+A000005(n+1)`
-/

namespace A305983.P8342874617986415373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A322272 (n + 2)).toNat + A000005 (n + 1)

end

end A305983.P8342874617986415373

/-! ## A305983.P11794914150877114110

`A246277(n+1)+A010815(A036647(A026741(n)))`
-/

namespace A305983.P11794914150877114110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A010815 (A036647 (A026741 n).toNat).toNat

end

end A305983.P11794914150877114110

/-! ## A305983.P11437370232505523350

`A237433(n+1)+A225633(A351241(n+1))`
-/

namespace A305983.P11437370232505523350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (n + 1) + A225633 (A351241 (n + 1)).toNat

end

end A305983.P11437370232505523350

/-!
# A305985: Filter sequence combining from all divisors d > 1 of n, the prime signature of 2d+1.

The programs for A305985, there is no canonical definition to state claims against.
-/

/-! ## A305985.P13432559823018679986

`A046951(A370647(3*(n+1)))*A305978(n+1)`
-/

namespace A305985.P13432559823018679986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A370647 (3 * (n + 1))).toNat * A305978 (n + 1)

end

end A305985.P13432559823018679986

/-! ## A305985.P8264689693700518248

`A063775(A165675(2*(n+1)))*A305978(n+1)`
-/

namespace A305985.P8264689693700518248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A165675 (2 * (n + 1))).toNat * A305978 (n + 1)

end

end A305985.P8264689693700518248

/-! ## A305985.P12787340954513722176

`A201198(A201198(n))*A305978(n+1)`
-/

namespace A305985.P12787340954513722176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201198 (A201198 n).toNat * A305978 (n + 1)

end

end A305985.P12787340954513722176

/-! ## A305985.P13855291320756719749

`lcm(A278221(A351241(n+1)), A305978(n+1))`
-/

namespace A305985.P13855291320756719749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A278221 (A351241 (n + 1)).toNat) (A305978 (n + 1))

end

end A305985.P13855291320756719749

/-! ## A305985.P17590059460178399883

`A034886(A051390(n+1))*A305978(n+1)`
-/

namespace A305985.P17590059460178399883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A051390 (n + 1)).toNat * A305978 (n + 1)

end

end A305985.P17590059460178399883

/-!
# A305986: Expansion of e.g.f. Product_{k>=1} 1/(1 - (exp(x) - 1)^k/k).

The programs for A305986, there is no canonical definition to state claims against.
-/

/-! ## A305986.P5745480273458106525

`A049533(3*n/2*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A305986.P5745480273458106525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A049533 (SequenceMachineLib.roundAway ((3 * n : ℚ) / 2 * (a (n - 1) : ℚ) + 1)).toNat

end

end A305986.P5745480273458106525

/-! ## A305986.P739176817359826996

`A004525(A352646(n))`
-/

namespace A305986.P739176817359826996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A352646 n).toNat

end

end A305986.P739176817359826996

/-!
# A305987: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k/k).

The programs for A305987, there is no canonical definition to state claims against.
-/

/-! ## A305987.P8847799649271747598

`n*A066657(n²*a(n-1))` with `a(0)=1`
-/

namespace A305987.P8847799649271747598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A066657 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A305987.P8847799649271747598

/-! ## A305987.P6860965154068823111

`A342750(A148405(n))`
-/

namespace A305987.P6860965154068823111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A148405 n).toNat

end

end A305987.P6860965154068823111

/-!
# A305988: Expansion of e.g.f. 1/(1 + log(2 - exp(x))).

The programs for A305988, there is no canonical definition to state claims against.
-/

/-! ## A305988.P9993923917913563321

`A081166(A081163(n))+A002866(n)`
-/

namespace A305988.P9993923917913563321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081166 (A081163 n).toNat + A002866 n

end

end A305988.P9993923917913563321

/-! ## A305988.P6554658664730233380

`A219503(n)+A051953(A001147(n))`
-/

namespace A305988.P6554658664730233380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219503 n + A051953 (A001147 n).toNat

end

end A305988.P6554658664730233380

/-!
# A305989: Numbers in binary reversed.

The programs for A305989, the canonical program `A305989.P15521024914226202803` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305989 has offset 0).

The definition of A305989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305989.P17307009205118459230

`A004086(A007088(n))`
-/

namespace A305989.P17307009205118459230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007088 n).toNat

end

end A305989.P17307009205118459230

namespace A305989

/-- `A004086(A007088(n))` -/
def P17307009205118459230.Spec : Prop :=
  ∀ n, P17307009205118459230.a n = A305989 n

end A305989

/-! ## A305989.P15521024914226202803

`A007088(A030101(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A305989

/-- `A007088(A030101(n))` -/
def P15521024914226202803.Spec : Prop :=
  ∀ n, P15521024914226202803.a n = A305989 n

theorem P15521024914226202803.correct : P15521024914226202803.Spec := by
  intro n
  simp only [A305989]

end A305989

/-! ## A305989.P8852517703567305049

`A007088(A055944(n)-n)`
-/

namespace A305989.P8852517703567305049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A055944 n - (n : ℤ)).toNat

end

end A305989.P8852517703567305049

namespace A305989

/-- `A007088(A055944(n)-n)` -/
def P8852517703567305049.Spec : Prop :=
  ∀ n, P8852517703567305049.a n = A305989 n

theorem P8852517703567305049.correct : P8852517703567305049.Spec := by
  intro n
  simp only [A305989, Nat.add_sub_cancel, A305989.P8852517703567305049.a, A305989.P15521024914226202803.a, A007088, A007088.P12432121332583687413.a, A030101, A030101.P16184294017372777612.a, A055944, A055944.P9824612390251619605.a, A055945, A055945.P5963763732554067333.a, A097256, A097256.P18324559811505528946.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305989

/-! ## A305989.P5675197588666927770

`A007088(n-A055945(n))`
-/

namespace A305989.P5675197588666927770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) - A055945 n).toNat

end

end A305989.P5675197588666927770

namespace A305989

/-- `A007088(n-A055945(n))` -/
def P5675197588666927770.Spec : Prop :=
  ∀ n, P5675197588666927770.a n = A305989 n

end A305989

/-! ## A305989.P8265298920180329690

`A007088(xor(n, A175919(n)))`
-/

namespace A305989.P8265298920180329690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (n : ℤ) (A175919 n)).toNat

end

end A305989.P8265298920180329690

namespace A305989

/-- `A007088(xor(n, A175919(n)))` -/
def P8265298920180329690.Spec : Prop :=
  ∀ n, P8265298920180329690.a n = A305989 n

end A305989

/-! ## A305989.P17416607297721004491

`A007088(A035327(n)+n-A036044(n))`
-/

namespace A305989.P17416607297721004491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035327 n + ((n : ℤ) - A036044 n)).toNat

end

end A305989.P17416607297721004491

namespace A305989

/-- `A007088(A035327(n)+n-A036044(n))` -/
def P17416607297721004491.Spec : Prop :=
  ∀ n, P17416607297721004491.a n = A305989 n

theorem P17416607297721004491.correct : P17416607297721004491.Spec := by
  intro n
  simp only [A305989, Nat.add_sub_cancel, A305989.P17416607297721004491.a, A305989.P15521024914226202803.a, A007088, A007088.P12432121332583687413.a, A030101, A030101.P16184294017372777612.a, A035327, A035327.P258997810375859489.a, A036044, A036044.P16648927426293672306.a, A053644, A053644.P1707366427427647095.a, A055945, A055945.P5963763732554067333.a, A097256, A097256.P18324559811505528946.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305989

/-! ## A305989.P11532871427189558624

`A007088(n-(A036044(n)-A035327(n)))`
-/

namespace A305989.P11532871427189558624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) - (A036044 n - A035327 n)).toNat

end

end A305989.P11532871427189558624

namespace A305989

/-- `A007088(n-(A036044(n)-A035327(n)))` -/
def P11532871427189558624.Spec : Prop :=
  ∀ n, P11532871427189558624.a n = A305989 n

theorem P11532871427189558624.correct : P11532871427189558624.Spec := by
  intro n
  simp only [A305989, Nat.add_sub_cancel, A305989.P11532871427189558624.a, A305989.P15521024914226202803.a, A007088, A007088.P12432121332583687413.a, A030101, A030101.P16184294017372777612.a, A035327, A035327.P258997810375859489.a, A036044, A036044.P16648927426293672306.a, A053644, A053644.P1707366427427647095.a, A055945, A055945.P5963763732554067333.a, A097256, A097256.P18324559811505528946.a, A038572, A038572.P6039021529582153667.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A305989

/-! ## A305989.P10357261513328696019

`A007088(A056539(A081431(A081432(n))))`
-/

namespace A305989.P10357261513328696019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A056539 (A081431 (A081432 n).toNat).toNat).toNat

end

end A305989.P10357261513328696019

namespace A305989

/-- `A007088(A056539(A081431(A081432(n))))` -/
def P10357261513328696019.Spec : Prop :=
  ∀ n, P10357261513328696019.a n = A305989 n

end A305989

/-! ## A305989.P6246674182150876435

`A007088(A081431(A081432(A057889(n))))`
-/

namespace A305989.P6246674182150876435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081431 (A081432 (A057889 n).toNat).toNat).toNat

end

end A305989.P6246674182150876435

namespace A305989

/-- `A007088(A081431(A081432(A057889(n))))` -/
def P6246674182150876435.Spec : Prop :=
  ∀ n, P6246674182150876435.a n = A305989 n

end A305989

/-! ## A305989.P11036383081433790688

`A014550(A378299(n))`
-/

namespace A305989.P11036383081433790688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A378299 n).toNat

end

end A305989.P11036383081433790688

namespace A305989

/-- `A014550(A378299(n))` -/
def P11036383081433790688.Spec : Prop :=
  ∀ n, P11036383081433790688.a n = A305989 n

end A305989

/-! ## A305989.P9476926812086907996

`A007088(A325401(2*n))`
-/

namespace A305989.P9476926812086907996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A325401 (2 * n)).toNat

end

end A305989.P9476926812086907996

namespace A305989

/-- `A007088(A325401(2*n))` -/
def P9476926812086907996.Spec : Prop :=
  ∀ n, P9476926812086907996.a n = A305989 n

end A305989

/-! ## A305989.P14292799868532663483

`A014550(A006068(A280995(A006068(n))))`
-/

namespace A305989.P14292799868532663483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A006068 (A280995 (A006068 n).toNat).toNat).toNat

end

end A305989.P14292799868532663483

namespace A305989

/-- `A014550(A006068(A280995(A006068(n))))` -/
def P14292799868532663483.Spec : Prop :=
  ∀ n, P14292799868532663483.a n = A305989 n

end A305989

/-! ## A305989.P7378645685690618859

`A007088(A035327(A036044(2*n)))`
-/

namespace A305989.P7378645685690618859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A035327 (A036044 (2 * n)).toNat).toNat

end

end A305989.P7378645685690618859

namespace A305989

/-- `A007088(A035327(A036044(2*n)))` -/
def P7378645685690618859.Spec : Prop :=
  ∀ n, P7378645685690618859.a n = A305989 n

end A305989

/-! ## A305989.P1584501433391952872

`A007088(A053645(A080541(A059893(2*n+1))))`
-/

namespace A305989.P1584501433391952872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A053645 (A080541 (A059893 (2 * n + 1)).toNat).toNat).toNat

end

end A305989.P1584501433391952872

namespace A305989

/-- `A007088(A053645(A080541(A059893(2*n+1))))` -/
def P1584501433391952872.Spec : Prop :=
  ∀ n, P1584501433391952872.a n = A305989 n

end A305989

/-! ## A305989.P10296712158093514020

`A007088(A053645(A059893(A080542(2*n+1))))`
-/

namespace A305989.P10296712158093514020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A053645 (A059893 (A080542 (2 * n + 1)).toNat).toNat).toNat

end

end A305989.P10296712158093514020

namespace A305989

/-- `A007088(A053645(A059893(A080542(2*n+1))))` -/
def P10296712158093514020.Spec : Prop :=
  ∀ n, P10296712158093514020.a n = A305989 n

end A305989

/-! ## A305989.P10557874352946146113

`A305877(A005836(n+1))`
-/

namespace A305989.P10557874352946146113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A005836 (n + 1)).toNat

end

end A305989.P10557874352946146113

namespace A305989

/-- `A305877(A005836(n+1))` -/
def P10557874352946146113.Spec : Prop :=
  ∀ n, P10557874352946146113.a n = A305989 n

end A305989

/-! ## A305989.P13350084859633309888

`A305877(A081601(n+1))`
-/

namespace A305989.P13350084859633309888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A081601 (n + 1)).toNat

end

end A305989.P13350084859633309888

namespace A305989

/-- `A305877(A081601(n+1))` -/
def P13350084859633309888.Spec : Prop :=
  ∀ n, P13350084859633309888.a n = A305989 n

end A305989

/-! ## A305989.P3293319907076061351

`A305877(A191107(n+1)-1)`
-/

namespace A305989.P3293319907076061351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A191107 (n + 1) - 1).toNat

end

end A305989.P3293319907076061351

namespace A305989

/-- `A305877(A191107(n+1)-1)` -/
def P3293319907076061351.Spec : Prop :=
  ∀ n, P3293319907076061351.a n = A305989 n

end A305989

/-! ## A305989.P16961054164864649192

`A007089(A137305(A005823(n+1)))`
-/

namespace A305989.P16961054164864649192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A137305 (A005823 (n + 1)).toNat).toNat

end

end A305989.P16961054164864649192

namespace A305989

/-- `A007089(A137305(A005823(n+1)))` -/
def P16961054164864649192.Spec : Prop :=
  ∀ n, P16961054164864649192.a n = A305989 n

end A305989

/-! ## A305989.P18317276216860932992

`A007088(A081431(A081432(A160638(n))))`
-/

namespace A305989.P18317276216860932992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081431 (A081432 (A160638 n).toNat).toNat).toNat

end

end A305989.P18317276216860932992

namespace A305989

/-- `A007088(A081431(A081432(A160638(n))))` -/
def P18317276216860932992.Spec : Prop :=
  ∀ n, P18317276216860932992.a n = A305989 n

end A305989

/-!
# A305990: Expansion of e.g.f.: (1+x) / (exp(-x) - x).

The programs for A305990, there is no canonical definition to state claims against.
-/

/-! ## A305990.P196026453412440304

`(-1)^n*A009444(n+1)`
-/

namespace A305990.P196026453412440304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009444 (n + 1)

end

end A305990.P196026453412440304

/-! ## A305990.P9017617944793706120

`abs(A009444(n+1))`
-/

namespace A305990.P9017617944793706120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009444 (n + 1)|

end

end A305990.P9017617944793706120

/-! ## A305990.P13086901971797294832

`A228534(∑[n]+1)`
-/

namespace A305990.P13086901971797294832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305990.P13086901971797294832

/-! ## A305990.P17881156819819257572

`record[abs(A009444(abs(1-n)))]`
-/

namespace A305990.P17881156819819257572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A009444 |1 - (n : ℤ)|.toNat)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P17881156819819257572

/-! ## A305990.P7955804667026279921

`A009444(n+1)*A033999(n)`
-/

namespace A305990.P7955804667026279921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009444 (n + 1) * A033999 n

end

end A305990.P7955804667026279921

/-! ## A305990.P2949268395159695077

`A072597(n)+lcm(n, A006153(n))`
-/

namespace A305990.P2949268395159695077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072597 n + (Int.lcm (n : ℤ) (A006153 n) : ℤ)

end

end A305990.P2949268395159695077

/-! ## A305990.P2847366444560123393

`record[A010054(n)*A228534(n+1)]`
-/

namespace A305990.P2847366444560123393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A228534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P2847366444560123393

/-! ## A305990.P8250599396422306704

`record[A228534(n+1)/A008459(n)]`
-/

namespace A305990.P8250599396422306704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228534 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P8250599396422306704

/-! ## A305990.P7934475827407937332

`record[A228534(n+1)/A099594(n)]`
-/

namespace A305990.P7934475827407937332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228534 (n + 1) : ℚ) / (A099594 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305990.P7934475827407937332

/-! ## A305990.P13350225091711209851

`lcm(A009444(n+1), A033999(n+1))`
-/

namespace A305990.P13350225091711209851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009444 (n + 1)) (A033999 (n + 1))

end

end A305990.P13350225091711209851

/-!
# A305991: Expansion of (1-27*x)^(1/9).

The programs for A305991, there is no canonical definition to state claims against.
-/

/-! ## A305991.P14644674966988351003

`(9-6/n)*a(n-1)-(24/n-18)*a(n-1)` with `a(0)=1`
-/

namespace A305991.P14644674966988351003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 - 6 / (n : ℚ)) * a (n - 1) - (24 / (n : ℚ) - 18) * a (n - 1)

end

end A305991.P14644674966988351003

/-!
# A305992: The sequence whose indicator function is I in conjectured formula A300997(n) = 2*n - Sum_{k=1..n} I(k), as long as the conjecture holds.

The programs for A305992, there is no canonical definition to state claims against.
-/

/-! ## A305992.P3353051489049318868

`A004001((4*C(n, 2)+2)^A328929(n))`
-/

namespace A305992.P3353051489049318868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((4 * Nat.choose n 2 + 2 : ℚ) ^ (A328929 n : ℤ))).toNat

end

end A305992.P3353051489049318868

/-! ## A305992.P15937039751280605292

`A004001(A288583(n+1)+∑[∑{d}[n, #]]+1)`
-/

namespace A305992.P15937039751280605292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A288583 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A305992.P15937039751280605292

/-! ## A305992.P16660803791863114866

`A002522(n)-A323885(A004810(2*(n+1)))`
-/

namespace A305992.P16660803791863114866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A323885 (A004810 (2 * (n + 1))).toNat

end

end A305992.P16660803791863114866

/-!
# A305993: Base-3 circular primes: Numbers k for which all cyclic shifts of their base-3 expansions give base-3 expansions of prime numbers.

The programs for A305993, there is no canonical definition to state claims against.
-/

/-! ## A305993.P4381666979989381156

`p?[3*a(n-1)+1]` with `a(0)=2, a(1)=5, a(2)=7, a(3)=0`
-/

namespace A305993.P4381666979989381156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7, 0] fun n f1 =>
  3 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A305993.P4381666979989381156

/-!
# A305994: a(n) = ((A000265(3*n + 1) + 1) mod 4)/2.

The programs for A305994, the canonical program `A305994.P11944070299911287273` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305994 has offset 0).

The definition of A305994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305994.P3015042728391332441

`(A000265(3*n+1)+1)%4/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A305994.P3015042728391332441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000265 (3 * n + 1) + 1) 4 : ℚ) / 2

end

end A305994.P3015042728391332441

namespace A305994

/-- `(A000265(3*n+1)+1)%4/2` -/
def P3015042728391332441.Spec : Prop :=
  ∀ n, P3015042728391332441.a n = (A305994 n : ℚ)

end A305994

/-! ## A305994.P11944070299911287273

`A099545(3*n+1)%3`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A305994

/-- `A099545(3*n+1)%3` -/
def P11944070299911287273.Spec : Prop :=
  ∀ n, P11944070299911287273.a n = A305994 n

theorem P11944070299911287273.correct : P11944070299911287273.Spec := by
  intro n
  simp only [A305994]

end A305994

/-! ## A305994.P15190431493346268383

`A371092(n)%2`
-/

namespace A305994.P15190431493346268383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371092 n) 2

end

end A305994.P15190431493346268383

namespace A305994

/-- `A371092(n)%2` -/
def P15190431493346268383.Spec : Prop :=
  ∀ n, P15190431493346268383.a n = A305994 n

end A305994

/-! ## A305994.P8434495600472292787

`A073089(6*n+3)`
-/

namespace A305994.P8434495600472292787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (6 * n + 3)

end

end A305994.P8434495600472292787

namespace A305994

/-- `A073089(6*n+3)` -/
def P8434495600472292787.Spec : Prop :=
  ∀ n, P8434495600472292787.a n = A305994 n

end A305994

/-! ## A305994.P11692913800722380612

`(A103391(3*n+2)+1)%2`
-/

namespace A305994.P11692913800722380612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103391 (3 * n + 2) + 1) 2

end

end A305994.P11692913800722380612

namespace A305994

/-- `(A103391(3*n+2)+1)%2` -/
def P11692913800722380612.Spec : Prop :=
  ∀ n, P11692913800722380612.a n = A305994 n

end A305994

/-! ## A305994.P13991682123057073979

`(A000265(3*n+1)%4)%3`
-/

namespace A305994.P13991682123057073979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000265 (3 * n + 1)) 4) 3

end

end A305994.P13991682123057073979

namespace A305994

/-- `(A000265(3*n+1)%4)%3` -/
def P13991682123057073979.Spec : Prop :=
  ∀ n, P13991682123057073979.a n = A305994 n

end A305994

/-! ## A305994.P10902696569538259893

`A000035(A371092(n))`
-/

namespace A305994.P10902696569538259893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A371092 n).toNat

end

end A305994.P10902696569538259893

namespace A305994

/-- `A000035(A371092(n))` -/
def P10902696569538259893.Spec : Prop :=
  ∀ n, P10902696569538259893.a n = A305994 n

end A305994

/-! ## A305994.P4408244805517222331

`and(A105234(n), A371092(n))`
-/

namespace A305994.P4408244805517222331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105234 n) (A371092 n)

end

end A305994.P4408244805517222331

namespace A305994

/-- `and(A105234(n), A371092(n))` -/
def P4408244805517222331.Spec : Prop :=
  ∀ n, P4408244805517222331.a n = A305994 n

end A305994

/-! ## A305994.P6919288574319526089

`and(1, A000217(A067745(n+1)))`
-/

namespace A305994.P6919288574319526089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (A067745 (n + 1)).toNat)

end

end A305994.P6919288574319526089

namespace A305994

/-- `and(1, A000217(A067745(n+1)))` -/
def P6919288574319526089.Spec : Prop :=
  ∀ n, P6919288574319526089.a n = A305994 n

end A305994

/-! ## A305994.P15159233043249862852

`A121262(A000265(3*n+1)-1)`
-/

namespace A305994.P15159233043249862852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000265 (3 * n + 1) - 1).toNat

end

end A305994.P15159233043249862852

namespace A305994

/-- `A121262(A000265(3*n+1)-1)` -/
def P15159233043249862852.Spec : Prop :=
  ∀ n, P15159233043249862852.a n = A305994 n

end A305994

/-! ## A305994.P9089268136114111880

`A353494(A000265(3*n+1)-1)`
-/

namespace A305994.P9089268136114111880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A000265 (3 * n + 1) - 1).toNat

end

end A305994.P9089268136114111880

namespace A305994

/-- `A353494(A000265(3*n+1)-1)` -/
def P9089268136114111880.Spec : Prop :=
  ∀ n, P9089268136114111880.a n = A305994 n

end A305994

/-! ## A305994.P853417103144081388

`A000045(C(2, A336126(3*n+1)))`
-/

namespace A305994.P853417103144081388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A336126 (3 * n + 1)).toNat)

end

end A305994.P853417103144081388

namespace A305994

/-- `A000045(C(2, A336126(3*n+1)))` -/
def P853417103144081388.Spec : Prop :=
  ∀ n, P853417103144081388.a n = A305994 n

end A305994

/-! ## A305994.P1074322209624843302

`and(1, A000217(A126760(3*n+1)))`
-/

namespace A305994.P1074322209624843302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000217 (A126760 (3 * n + 1)).toNat)

end

end A305994.P1074322209624843302

namespace A305994

/-- `and(1, A000217(A126760(3*n+1)))` -/
def P1074322209624843302.Spec : Prop :=
  ∀ n, P1074322209624843302.a n = A305994 n

end A305994

/-! ## A305994.P12255124424037883707

`A010051(2*A089309(3*n+1))`
-/

namespace A305994.P12255124424037883707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A089309 (3 * n + 1)).toNat

end

end A305994.P12255124424037883707

namespace A305994

/-- `A010051(2*A089309(3*n+1))` -/
def P12255124424037883707.Spec : Prop :=
  ∀ n, P12255124424037883707.a n = A305994 n

end A305994

/-! ## A305994.P1643504621131154444

`A227188(C(2, A089309(3*n+1)))`
-/

namespace A305994.P1643504621131154444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227188 (Nat.choose 2 (A089309 (3 * n + 1)).toNat)

end

end A305994.P1643504621131154444

namespace A305994

/-- `A227188(C(2, A089309(3*n+1)))` -/
def P1643504621131154444.Spec : Prop :=
  ∀ n, P1643504621131154444.a n = A305994 n

end A305994

/-! ## A305994.P363567021798879419

`A235049(C(2, A089309(3*n+1)))`
-/

namespace A305994.P363567021798879419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (Nat.choose 2 (A089309 (3 * n + 1)).toNat)

end

end A305994.P363567021798879419

namespace A305994

/-- `A235049(C(2, A089309(3*n+1)))` -/
def P363567021798879419.Spec : Prop :=
  ∀ n, P363567021798879419.a n = A305994 n

end A305994

/-! ## A305994.P10278394935795848417

`2-A000034(A173732(2*n))`
-/

namespace A305994.P10278394935795848417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A173732 (2 * n)).toNat

end

end A305994.P10278394935795848417

namespace A305994

/-- `2-A000034(A173732(2*n))` -/
def P10278394935795848417.Spec : Prop :=
  ∀ n, P10278394935795848417.a n = A305994 n

end A305994

/-! ## A305994.P4762436496378954531

`A106665(xor(n, 2*n))`
-/

namespace A305994.P4762436496378954531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (Nat.xor n (2 * n))

end

end A305994.P4762436496378954531

namespace A305994

/-- `A106665(xor(n, 2*n))` -/
def P4762436496378954531.Spec : Prop :=
  ∀ n, P4762436496378954531.a n = A305994 n

end A305994

/-! ## A305994.P7136299909416854333

`A014577(A048647(n))`
-/

namespace A305994.P7136299909416854333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A048647 n).toNat

end

end A305994.P7136299909416854333

namespace A305994

/-- `A014577(A048647(n))` -/
def P7136299909416854333.Spec : Prop :=
  ∀ n, P7136299909416854333.a n = A305994 n

end A305994

/-! ## A305994.P14879472054628936324

`A106665(A048724(n))`
-/

namespace A305994.P14879472054628936324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (A048724 n).toNat

end

end A305994.P14879472054628936324

namespace A305994

/-- `A106665(A048724(n))` -/
def P14879472054628936324.Spec : Prop :=
  ∀ n, P14879472054628936324.a n = A305994 n

end A305994

/-!
# A305995: Rectangular array read by downward antidiagonals; row n consists of the numbers m such that n is the denominator of d(k)/d(1) + d(k-1)/d(2) + ... + d(k)/d(1), where d(1),d(2),...,d(k) are the unitary divisors of m.

The programs for A305995, there is no canonical definition to state claims against.
-/

/-! ## A305995.P460502548800841049

`A002260(n+1)*A305996(n+1)`
-/

namespace A305995.P460502548800841049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A305996 (n + 1)

end

end A305995.P460502548800841049

/-! ## A305995.P10429873693168842660

`(A002262(n)+1)*A305996(n+1)`
-/

namespace A305995.P10429873693168842660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A305996 (n + 1)

end

end A305995.P10429873693168842660

/-! ## A305995.P2373693489573406308

`abs(A140756(n+1)*A305996(n+1))`
-/

namespace A305995.P2373693489573406308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A305996 (n + 1)|

end

end A305995.P2373693489573406308

/-! ## A305995.P1198848244745994721

`sqrt(A133819(n+1))*A305996(n+1)`
-/

namespace A305995.P1198848244745994721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A305996 (n + 1) : ℝ)

end

end A305995.P1198848244745994721

/-! ## A305995.P15665445167325910592

`A057555(2*n+1)*A305996(n+1)`
-/

namespace A305995.P15665445167325910592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A305996 (n + 1)

end

end A305995.P15665445167325910592

/-! ## A305995.P14106024509925121397

`(1-A057944(n)+n)*A305996(n+1)`
-/

namespace A305995.P14106024509925121397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A305996 (n + 1)

end

end A305995.P14106024509925121397

/-! ## A305995.P12907238457599940659

`A000005(A059268(n))*A305996(n+1)`
-/

namespace A305995.P12907238457599940659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A305996 (n + 1)

end

end A305995.P12907238457599940659

/-! ## A305995.P4758817166612708988

`A000120(A099627(n))*A305996(n+1)`
-/

namespace A305995.P4758817166612708988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099627 n).toNat * A305996 (n + 1)

end

end A305995.P4758817166612708988

/-! ## A305995.P7737075439896887283

`A001511(A276618(n))*A305996(n+1)`
-/

namespace A305995.P7737075439896887283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276618 n).toNat * A305996 (n + 1)

end

end A305995.P7737075439896887283

/-! ## A305995.P16241463886887543418

`A000005(A013610(n)/A007318(n))*A305996(n+1)`
-/

namespace A305995.P16241463886887543418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A013610 n : ℚ) / (A007318 n : ℚ))).toNat * A305996 (n + 1)

end

end A305995.P16241463886887543418

/-!
# A305996: Rectangular array, by antidiagonals; row n consists of the numbers R(n)/n, where R(n) is row n of the array at A305995.

The programs for A305996, there is no canonical definition to state claims against.
-/

/-! ## A305996.P7694686008134244147

`A305995(n+1)/A002260(n+1)`
-/

namespace A305996.P7694686008134244147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A305996.P7694686008134244147

/-! ## A305996.P16037887422125665694

`A305995(n+1)/(A002262(n)+1)`
-/

namespace A305996.P16037887422125665694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A305996.P16037887422125665694

/-! ## A305996.P18072385101793245119

`abs(A305995(n+1)/A140756(n+1))`
-/

namespace A305996.P18072385101793245119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A305995 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A305996.P18072385101793245119

/-! ## A305996.P696567666964326415

`A305995(n+1)/sqrt(A133819(n+1))`
-/

namespace A305996.P696567666964326415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A305996.P696567666964326415

/-! ## A305996.P11861287234513030611

`A305995(n+1)/A057555(2*n+1)`
-/

namespace A305996.P11861287234513030611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A305996.P11861287234513030611

/-! ## A305996.P17305259895641871868

`A305995(n+1)/A349520(2*n+1)`
-/

namespace A305996.P17305259895641871868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A349520 (2 * n + 1) : ℚ)

end

end A305996.P17305259895641871868

/-! ## A305996.P4061052465378484051

`A305995(n+1)/A003602(A054582(n))`
-/

namespace A305996.P4061052465378484051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A003602 (A054582 n).toNat : ℚ)

end

end A305996.P4061052465378484051

/-! ## A305996.P4961264090100759964

`A305995(n+1)/A000005(A059268(n))`
-/

namespace A305996.P4961264090100759964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A305996.P4961264090100759964

/-! ## A305996.P12851377044707838442

`A305995(n+1)/A000120(A099627(n))`
-/

namespace A305996.P12851377044707838442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A000120 (A099627 n).toNat : ℚ)

end

end A305996.P12851377044707838442

/-! ## A305996.P5537653797170453306

`A305995(n+1)/A001511(A276618(n))`
-/

namespace A305996.P5537653797170453306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305995 (n + 1) : ℚ) / (A001511 (A276618 n).toNat : ℚ)

end

end A305996.P5537653797170453306

/-!
# A305998: Let K(n) = integral(t=-1,1, t^(2n)*(1-t^2)^(2n)/(1+it)^(3n+1) dt) and write K(n) = d(n)*Pi - b(n)/a(n) where a(n), b(n), d(n) are positive integers; sequence gives a(n).

The programs for A305998, there is no canonical definition to state claims against.
-/

/-! ## A305998.P1315002650310819816

`A000265(C(A000217(2*n+3), ceil(n/2)))`
-/

namespace A305998.P1315002650310819816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Nat.choose (A000217 (2 * n + 3)).toNat ⌈(n : ℚ) / 2⌉.toNat)

end

end A305998.P1315002650310819816

