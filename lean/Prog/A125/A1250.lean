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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A125002: Let p = prime(n); a(n) = number of primes q with same number of digits as p that can be obtained from p by changing one digit.

The programs for A125002, there is no canonical definition to state claims against.
-/

/-! ## A125002.P14846375084395373364

`A048853(Δ[A007504(n)])`
-/

namespace A125002.P14846375084395373364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (f1 (n + 1) - f1 n).toNat

end

end A125002.P14846375084395373364

/-! ## A125002.P1947065816067926921

`A048853(A000040(n+1))`
-/

namespace A125002.P1947065816067926921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A000040 (n + 1)).toNat

end

end A125002.P1947065816067926921

/-! ## A125002.P708616702906144183

`A048853(A008578(n+2))`
-/

namespace A125002.P708616702906144183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A008578 (n + 2)).toNat

end

end A125002.P708616702906144183

/-! ## A125002.P11237966415273830208

`A048853(A182986(n+2))`
-/

namespace A125002.P11237966415273830208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A182986 (n + 2)).toNat

end

end A125002.P11237966415273830208

/-! ## A125002.P8833272706599585771

`A048853(eq[1, A032741(n)])`
-/

namespace A125002.P8833272706599585771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125002.P8833272706599585771

/-! ## A125002.P14109538904426808597

`A048853(record[A006530(n+2)])`
-/

namespace A125002.P14109538904426808597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125002.P14109538904426808597

/-! ## A125002.P14136011540865290019

`A048853(record[A014963(n+2)])`
-/

namespace A125002.P14136011540865290019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125002.P14136011540865290019

/-! ## A125002.P17879460788207304054

`A048853(record[A020639(n+2)])`
-/

namespace A125002.P17879460788207304054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125002.P17879460788207304054

/-!
# A125004: a(0) = 9; for n>0, a(n) is determined by the rule that the concatenation of the leading terms of the difference triangle is the same as the concatenation of the digits of the sequence.

The programs for A125004, there is no canonical definition to state claims against.
-/

/-! ## A125004.P6314496200901169450

`A257839(A182143(n))+9`
-/

namespace A125004.P6314496200901169450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A182143 n).toNat + 9

end

end A125004.P6314496200901169450

/-! ## A125004.P3269392218929624821

`A002024(5*6/2+A035009(n))+n+3`
-/

namespace A125004.P3269392218929624821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway (5 * ((6 : ℚ) / 2) + (A035009 n : ℚ))).toNat + (n : ℤ) + 3

end

end A125004.P3269392218929624821

/-!
# A125005: Numbers of orders of nontrivial positive magic-squares with magic sum n. A nontrivial positive magic square is a k-by-k array of consecutive positive integers (not necessarily including 1) such that all rows, all columns and the two diagonals each add up to the same constant (the "magic sum"), with the additional restriction that k (the "order") is greater than 1.

The programs for A125005, there is no canonical definition to state claims against.
-/

/-! ## A125005.P2881275032459330920

`A266227(A051885(n)+1)-1`
-/

namespace A125005.P2881275032459330920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A051885 n + 1).toNat - 1

end

end A125005.P2881275032459330920

/-! ## A125005.P17088409336360217256

`A177214(n+1)%A271778(A355402(n+7))`
-/

namespace A125005.P17088409336360217256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177214 (n + 1)) (A271778 (A355402 (n + 7)).toNat)

end

end A125005.P17088409336360217256

/-! ## A125005.P17632050258563799862

`A072629(A195832(2*n+5)+4)`
-/

namespace A125005.P17632050258563799862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072629 (A195832 (2 * n + 5) + 4).toNat

end

end A125005.P17632050258563799862

/-! ## A125005.P17309714056964246570

`A227740(gcd(A187386(3*n+2), A280512(2*n+1)))`
-/

namespace A125005.P17309714056964246570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227740 (Int.gcd (A187386 (3 * n + 2)) (A280512 (2 * n + 1)))

end

end A125005.P17309714056964246570

/-! ## A125005.P5663402434459479661

`round(∑{d}[n+1, lcm(2, #)/2]/A124867(2*(n+2)))`
-/

namespace A125005.P5663402434459479661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2) / (A124867 (2 * (n + 2)) : ℚ))

end

end A125005.P5663402434459479661

/-!
# A125006: Numbers k for which nontrivial positive magic squares with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125006, there is no canonical definition to state claims against.
-/

/-! ## A125006.P13872378347470841360

`comp[A125007(n+1)]`
-/

namespace A125006.P13872378347470841360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125006.P13872378347470841360

/-! ## A125006.P11715521060839683696

`eq[char[A125007(n+1)], A055671(n)]`
-/

namespace A125006.P11715521060839683696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A125006.P11715521060839683696

/-! ## A125006.P13926586219280538193

`eq[2*A055672(n), char[A125007(n+1)]]`
-/

namespace A125006.P13926586219280538193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055672 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125007 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A125006.P13926586219280538193

/-! ## A125006.P17503874313551017051

`lt[0, A125005(n+1)]+1`
-/

namespace A125006.P17503874313551017051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125006.P17503874313551017051

/-! ## A125006.P1876982673095429725

`lt[0, A125005(A028310(n))]`
-/

namespace A125006.P1876982673095429725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125006.P1876982673095429725

/-!
# A125007: Numbers k for which no nontrivial positive magic squares with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125007, there is no canonical definition to state claims against.
-/

/-! ## A125007.P3960776255035903208

`comp[A125006(n+1)]`
-/

namespace A125007.P3960776255035903208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125007.P3960776255035903208

/-! ## A125007.P10446391096566745295

`comp[record[A125006(A152271(n))]]`
-/

namespace A125007.P10446391096566745295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A125007.P10446391096566745295

/-! ## A125007.P4317901544411835267

`eq[0, A125005(A028310(n))]`
-/

namespace A125007.P4317901544411835267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125007.P4317901544411835267

/-! ## A125007.P10837984598804945674

`lt[A125005(A233583(n+1)), 1]`
-/

namespace A125007.P10837984598804945674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125007.P10837984598804945674

/-! ## A125007.P6359883206703163081

`comp[A125006(A152271(n))]%A008815(n)`
-/

namespace A125007.P6359883206703163081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (A152271 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A008815 n)

end

end A125007.P6359883206703163081

/-!
# A125008: Numbers k for which nontrivial positive magic squares of exactly one order with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125008, there is no canonical definition to state claims against.
-/

/-! ## A125008.P11405375815206562195

`eq[1, A125005(n+1)]+1`
-/

namespace A125008.P11405375815206562195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125008.P11405375815206562195

/-! ## A125008.P13037687662109859559

`eq[30, 10*a(A125005(n))]` with `a(0)=0, a(1)=3`
-/

namespace A125008.P13037687662109859559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  10 * f2 (A125005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125008.P13037687662109859559

/-! ## A125008.P4689125248193573274

`eq[1, A125005(A028310(n))]`
-/

namespace A125008.P4689125248193573274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125008.P4689125248193573274

/-! ## A125008.P2968894391371649251

`A011760(eq[1, A125005(n+1)])`
-/

namespace A125008.P2968894391371649251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125008.P2968894391371649251

/-! ## A125008.P9311480858664236396

`A020725(eq[1, A125005(n+1)])`
-/

namespace A125008.P9311480858664236396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125008.P9311480858664236396

/-!
# A125009: Numbers k for which nontrivial positive magic squares of exactly 2 different orders with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125009, there is no canonical definition to state claims against.
-/

/-! ## A125009.P7790293200540080141

`eq[2, A125005(n+1)]+1`
-/

namespace A125009.P7790293200540080141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125009.P7790293200540080141

/-! ## A125009.P9174415878495428923

`eq[30, 10*a(A125005(n))]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A125009.P9174415878495428923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  10 * f2 (A125005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125009.P9174415878495428923

/-! ## A125009.P10208947860344062560

`eq[2, A125005(A028310(n))]`
-/

namespace A125009.P10208947860344062560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125009.P10208947860344062560

/-! ## A125009.P14297787360204294146

`A011760(eq[2, A125005(n+1)])`
-/

namespace A125009.P14297787360204294146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125009.P14297787360204294146

/-!
# A125010: Numbers k for which nontrivial positive magic squares of exactly 3 different orders with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125010, there is no canonical definition to state claims against.
-/

/-! ## A125010.P9475422805467436736

`lt[A008619(n), A286558(A046798(n))]`
-/

namespace A125010.P9475422805467436736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 (A046798 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125010.P9475422805467436736

/-!
# A125011: Numbers k for which nontrivial positive magic squares of exactly 4 different orders with magic sum k exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125011, there is no canonical definition to state claims against.
-/

/-! ## A125011.P11500897781427526341

`A214467(A214424(n+5)+1)`
-/

namespace A125011.P11500897781427526341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214467 (A214424 (n + 5) + 1).toNat

end

end A125011.P11500897781427526341

/-!
# A125017: Numbers n for which nontrivial positive magic squares of exactly 10 different orders with magic sum n exist. For a definition of nontrivial positive magic squares, see A125005.

The programs for A125017, there is no canonical definition to state claims against.
-/

/-! ## A125017.P4327834522640043018

`A005231(eq[1, A117168(n+1)+2])`
-/

namespace A125017.P4327834522640043018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117168 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125017.P4327834522640043018

/-! ## A125017.P6520816316518830739

`A005231(eq[A131636(n+1), A271950(n)])`
-/

namespace A125017.P6520816316518830739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125017.P6520816316518830739

/-!
# A125018: Numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

The programs for A125018, the canonical program `A125018.P5997483759388454450` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125018 has offset 1).

The definition of A125018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125018.P5997483759388454450

`∩[2*n+1, A143575(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125018

/-- `∩[2*n+1, A143575(n+1)]` -/
def P5997483759388454450.Spec : Prop :=
  ∀ n, (P5997483759388454450.a n : ℤ) = A125018 (n + 1)

theorem P5997483759388454450.correct : P5997483759388454450.Spec := by
  intro n
  simp only [A125018, Nat.add_sub_cancel]

end A125018

/-! ## A125018.P9176966376388205279

`∩[2*n+1, A125022(n+1)]`
-/

namespace A125018.P9176966376388205279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P9176966376388205279

namespace A125018

/-- `∩[2*n+1, A125022(n+1)]` -/
def P9176966376388205279.Spec : Prop :=
  ∀ n, (P9176966376388205279.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P5057703699753549152

`4*eq[1, A052343(n)]+1`
-/

namespace A125018.P5057703699753549152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125018.P5057703699753549152

namespace A125018

/-- `4*eq[1, A052343(n)]+1` -/
def P5057703699753549152.Spec : Prop :=
  ∀ n, (P5057703699753549152.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P15292897909415146210

`∩[A125022(n+1), A016813(n)]`
-/

namespace A125018.P15292897909415146210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P15292897909415146210

namespace A125018

/-- `∩[A125022(n+1), A016813(n)]` -/
def P15292897909415146210.Spec : Prop :=
  ∀ n, (P15292897909415146210.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P2350690203562535838

`∩[A143575(n+1), A016813(n)]`
-/

namespace A125018.P2350690203562535838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P2350690203562535838

namespace A125018

/-- `∩[A143575(n+1), A016813(n)]` -/
def P2350690203562535838.Spec : Prop :=
  ∀ n, (P2350690203562535838.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P14299678322728408588

`∩[A125022(n+1), A060747(n)]`
-/

namespace A125018.P14299678322728408588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P14299678322728408588

namespace A125018

/-- `∩[A125022(n+1), A060747(n)]` -/
def P14299678322728408588.Spec : Prop :=
  ∀ n, (P14299678322728408588.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P3910201996106481683

`∩[A143575(n+1), A060747(n)]`
-/

namespace A125018.P3910201996106481683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P3910201996106481683

namespace A125018

/-- `∩[A143575(n+1), A060747(n)]` -/
def P3910201996106481683.Spec : Prop :=
  ∀ n, (P3910201996106481683.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P17086600323815903203

`4*A119345(n+1)+1`
-/

namespace A125018.P17086600323815903203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A119345 (n + 1) + 1

end

end A125018.P17086600323815903203

namespace A125018

/-- `4*A119345(n+1)+1` -/
def P17086600323815903203.Spec : Prop :=
  ∀ n, P17086600323815903203.a n = A125018 (n + 1)

end A125018

/-! ## A125018.P8008750919028752900

`A016813(A119345(n+1))`
-/

namespace A125018.P8008750919028752900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A119345 (n + 1)).toNat

end

end A125018.P8008750919028752900

namespace A125018

/-- `A016813(A119345(n+1))` -/
def P8008750919028752900.Spec : Prop :=
  ∀ n, P8008750919028752900.a n = A125018 (n + 1)

end A125018

/-! ## A125018.P1973857815857270019

`∩[A125022(n+1), A361386(n+1)]`
-/

namespace A125018.P1973857815857270019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P1973857815857270019

namespace A125018

/-- `∩[A125022(n+1), A361386(n+1)]` -/
def P1973857815857270019.Spec : Prop :=
  ∀ n, (P1973857815857270019.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P4995769580272350002

`∩[A143575(n+1), A361386(n+1)]`
-/

namespace A125018.P4995769580272350002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P4995769580272350002

namespace A125018

/-- `∩[A143575(n+1), A361386(n+1)]` -/
def P4995769580272350002.Spec : Prop :=
  ∀ n, (P4995769580272350002.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P9439839863510651994

`eq[A000161(n), A009531(n)]`
-/

namespace A125018.P9439839863510651994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P9439839863510651994

namespace A125018

/-- `eq[A000161(n), A009531(n)]` -/
def P9439839863510651994.Spec : Prop :=
  ∀ n, (P9439839863510651994.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P9934385984836294577

`eq[A000161(n), A010146(n)]`
-/

namespace A125018.P9934385984836294577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P9934385984836294577

namespace A125018

/-- `eq[A000161(n), A010146(n)]` -/
def P9934385984836294577.Spec : Prop :=
  ∀ n, (P9934385984836294577.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P10173182348623777290

`eq[A000161(n), A010157(n)]`
-/

namespace A125018.P10173182348623777290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P10173182348623777290

namespace A125018

/-- `eq[A000161(n), A010157(n)]` -/
def P10173182348623777290.Spec : Prop :=
  ∀ n, (P10173182348623777290.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P17014689727535983355

`eq[A000161(n), A010169(n)]`
-/

namespace A125018.P17014689727535983355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P17014689727535983355

namespace A125018

/-- `eq[A000161(n), A010169(n)]` -/
def P17014689727535983355.Spec : Prop :=
  ∀ n, (P17014689727535983355.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P2111202292710764967

`eq[A000161(n), A010170(n)]`
-/

namespace A125018.P2111202292710764967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P2111202292710764967

namespace A125018

/-- `eq[A000161(n), A010170(n)]` -/
def P2111202292710764967.Spec : Prop :=
  ∀ n, (P2111202292710764967.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P12431184153572980789

`eq[A000161(n), A010184(n)]`
-/

namespace A125018.P12431184153572980789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P12431184153572980789

namespace A125018

/-- `eq[A000161(n), A010184(n)]` -/
def P12431184153572980789.Spec : Prop :=
  ∀ n, (P12431184153572980789.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P14637869885509216982

`eq[A000161(n), A010200(n)]`
-/

namespace A125018.P14637869885509216982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P14637869885509216982

namespace A125018

/-- `eq[A000161(n), A010200(n)]` -/
def P14637869885509216982.Spec : Prop :=
  ∀ n, (P14637869885509216982.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P9499267135722736383

`eq[A000161(n), A010201(n)]`
-/

namespace A125018.P9499267135722736383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P9499267135722736383

namespace A125018

/-- `eq[A000161(n), A010201(n)]` -/
def P9499267135722736383.Spec : Prop :=
  ∀ n, (P9499267135722736383.a n : ℤ) = A125018 (n + 1)

end A125018

/-! ## A125018.P11260208824247760896

`eq[A000161(n), A010215(n)]`
-/

namespace A125018.P11260208824247760896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125018.P11260208824247760896

namespace A125018

/-- `eq[A000161(n), A010215(n)]` -/
def P11260208824247760896.Spec : Prop :=
  ∀ n, (P11260208824247760896.a n : ℤ) = A125018 (n + 1)

end A125018

/-!
# A125019: Records in A063983 if the initial 4 is ignored (cf. A125848).

The programs for A125019, there is no canonical definition to state claims against.
-/

/-! ## A125019.P16287806047386718751

`record[A063983(n+1)]`
-/

namespace A125019.P16287806047386718751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125019.P16287806047386718751

/-! ## A125019.P15630828358617432949

`A125848(n+1)/ceil(acot(n))`
-/

namespace A125019.P15630828358617432949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125848 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A125019.P15630828358617432949

/-! ## A125019.P8052887783010478207

`record[A063983(n)-A000038(n)]`
-/

namespace A125019.P8052887783010478207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063983 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125019.P8052887783010478207

/-! ## A125019.P5660960984218084605

`record[A063983(n)/A054977(n)]`
-/

namespace A125019.P5660960984218084605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063983 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125019.P5660960984218084605

/-! ## A125019.P17750025531040948903

`A125848(n+1)-A000038(n)`
-/

namespace A125019.P17750025531040948903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125848 (n + 1) - A000038 n

end

end A125019.P17750025531040948903

/-!
# A125020: a(n) = (A124983(n)-1)/4.

The programs for A125020, there is no canonical definition to state claims against.
-/

/-! ## A125020.P6351609325608727970

`(A124983(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A125020.P6351609325608727970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124983 (n + 1) - 1 : ℚ) / 4

end

end A125020.P6351609325608727970

/-! ## A125020.P10482172804802447961

`floor(A124983(n+1)/4)`
-/

namespace A125020.P10482172804802447961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124983 (n + 1) : ℚ) / 4⌋

end

end A125020.P10482172804802447961

/-! ## A125020.P191170163818325429

`round(A124983(n+1)/4)%A273304(n)`
-/

namespace A125020.P191170163818325429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A124983 (n + 1) : ℚ) / 4)) (A273304 n)

end

end A125020.P191170163818325429

/-! ## A125020.P14340576508223835324

`ceil(A008683(A228830(n+1))+A124983(n+1)/4)`
-/

namespace A125020.P14340576508223835324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A228830 (n + 1)).toNat : ℚ) + (A124983 (n + 1) : ℚ) / 4⌉

end

end A125020.P14340576508223835324

/-! ## A125020.P7184042419649314601

`round(record[A093178(A124982(n+1))]/4)`
-/

namespace A125020.P7184042419649314601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A124982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4)

end

end A125020.P7184042419649314601

/-! ## A125020.P14046483809690347030

`∩[A045751(n+1), A119345(n+1)]`
-/

namespace A125020.P14046483809690347030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125020.P14046483809690347030

/-! ## A125020.P12360639717208832893

`A002265(A124983(n+1))`
-/

namespace A125020.P12360639717208832893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A124983 (n + 1)).toNat

end

end A125020.P12360639717208832893

/-! ## A125020.P18397195127989193129

`A025480(record[A093178(A124982(n+1))])`
-/

namespace A125020.P18397195127989193129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A124982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125020.P18397195127989193129

/-! ## A125020.P8584998325904391192

`A004525(A004525(A124983(n+1)-1))`
-/

namespace A125020.P8584998325904391192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 (A124983 (n + 1) - 1).toNat).toNat

end

end A125020.P8584998325904391192

/-! ## A125020.P11300119430463904342

`A026741(A026741(A124983(n+1)-1))`
-/

namespace A125020.P11300119430463904342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A124983 (n + 1) - 1).toNat).toNat

end

end A125020.P11300119430463904342

/-!
# A125021: Even numbers with a unique partition as the sum of 2 squares x^2 + y^2.

The programs for A125021, the canonical program `A125021.P17822032185541096402` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125021 has offset 1).

The definition of A125021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125021.P8132136153419831281

`2*A125022(n+1)`
-/

namespace A125021.P8132136153419831281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125022 (n + 1)

end

end A125021.P8132136153419831281

namespace A125021

/-- `2*A125022(n+1)` -/
def P8132136153419831281.Spec : Prop :=
  ∀ n, P8132136153419831281.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P10252878250408024152

`2*∪[A002313(n+1), A124982(n+1)]`
-/

namespace A125021.P10252878250408024152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P10252878250408024152

namespace A125021

/-- `2*∪[A002313(n+1), A124982(n+1)]` -/
def P10252878250408024152.Spec : Prop :=
  ∀ n, (P10252878250408024152.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P10640410345957594967

`2*∪[A055025(n+1), A124982(n+1)]`
-/

namespace A125021.P10640410345957594967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P10640410345957594967

namespace A125021

/-- `2*∪[A055025(n+1), A124982(n+1)]` -/
def P10640410345957594967.Spec : Prop :=
  ∀ n, (P10640410345957594967.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P13704783615754157587

`2*∪[A050804(n+1), A143575(n+1)]`
-/

namespace A125021.P13704783615754157587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P13704783615754157587

namespace A125021

/-- `2*∪[A050804(n+1), A143575(n+1)]` -/
def P13704783615754157587.Spec : Prop :=
  ∀ n, (P13704783615754157587.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P17822032185541096402

`2*∪[A081324(n+1), A143575(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A125021

/-- `2*∪[A081324(n+1), A143575(n+1)]` -/
def P17822032185541096402.Spec : Prop :=
  ∀ n, (P17822032185541096402.a n : ℤ) = A125021 (n + 1)

theorem P17822032185541096402.correct : P17822032185541096402.Spec := by
  intro n
  simp only [A125021, Nat.add_sub_cancel]

end A125021

/-! ## A125021.P15582501492058807525

`2*∪[A124982(n+1), A281292(n+1)]`
-/

namespace A125021.P15582501492058807525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P15582501492058807525

namespace A125021

/-- `2*∪[A124982(n+1), A281292(n+1)]` -/
def P15582501492058807525.Spec : Prop :=
  ∀ n, (P15582501492058807525.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P17386152171524962307

`∩[A047464(n+1), A125022(n+1)]`
-/

namespace A125021.P17386152171524962307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P17386152171524962307

namespace A125021

/-- `∩[A047464(n+1), A125022(n+1)]` -/
def P17386152171524962307.Spec : Prop :=
  ∀ n, (P17386152171524962307.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P5705135521320473620

`2*eq[1, A000161(n)]`
-/

namespace A125021.P5705135521320473620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125021.P5705135521320473620

namespace A125021

/-- `2*eq[1, A000161(n)]` -/
def P5705135521320473620.Spec : Prop :=
  ∀ n, (P5705135521320473620.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P17759211081516527012

`A005843(A125022(n+1))`
-/

namespace A125021.P17759211081516527012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125022 (n + 1)).toNat

end

end A125021.P17759211081516527012

namespace A125021

/-- `A005843(A125022(n+1))` -/
def P17759211081516527012.Spec : Prop :=
  ∀ n, P17759211081516527012.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P2908741649150287530

`A005843(eq[1, A000161(n)])`
-/

namespace A125021.P2908741649150287530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125021.P2908741649150287530

namespace A125021

/-- `A005843(eq[1, A000161(n)])` -/
def P2908741649150287530.Spec : Prop :=
  ∀ n, P2908741649150287530.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P11938517077174397674

`A047540(A125022(n+1)+1)`
-/

namespace A125021.P11938517077174397674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A125022 (n + 1) + 1).toNat

end

end A125021.P11938517077174397674

namespace A125021

/-- `A047540(A125022(n+1)+1)` -/
def P11938517077174397674.Spec : Prop :=
  ∀ n, P11938517077174397674.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P12042814950188604371

`A005408(eq[1, A000161(n)])-1`
-/

namespace A125021.P12042814950188604371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A125021.P12042814950188604371

namespace A125021

/-- `A005408(eq[1, A000161(n)])-1` -/
def P12042814950188604371.Spec : Prop :=
  ∀ n, P12042814950188604371.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P2572693646050346975

`2*eq[1, A000045(A000925(n))]`
-/

namespace A125021.P2572693646050346975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125021.P2572693646050346975

namespace A125021

/-- `2*eq[1, A000045(A000925(n))]` -/
def P2572693646050346975.Spec : Prop :=
  ∀ n, (P2572693646050346975.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P9089830232661408498

`2*eq[1, A110656(A004018(n))]`
-/

namespace A125021.P9089830232661408498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125021.P9089830232661408498

namespace A125021

/-- `2*eq[1, A110656(A004018(n))]` -/
def P9089830232661408498.Spec : Prop :=
  ∀ n, (P9089830232661408498.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P17760472556083128188

`2*eq[1, A000045(A125061(n))]`
-/

namespace A125021.P17760472556083128188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125021.P17760472556083128188

namespace A125021

/-- `2*eq[1, A000045(A125061(n))]` -/
def P17760472556083128188.Spec : Prop :=
  ∀ n, (P17760472556083128188.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P16125683235157541792

`A125022(n+1)+eq[1, A000161(n)]`
-/

namespace A125021.P16125683235157541792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A125021.P16125683235157541792

namespace A125021

/-- `A125022(n+1)+eq[1, A000161(n)]` -/
def P16125683235157541792.Spec : Prop :=
  ∀ n, P16125683235157541792.a n = A125021 (n + 1)

end A125021

/-! ## A125021.P8368200195744581243

`∩[A047456(n+1), A125022(n+1)]`
-/

namespace A125021.P8368200195744581243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P8368200195744581243

namespace A125021

/-- `∩[A047456(n+1), A125022(n+1)]` -/
def P8368200195744581243.Spec : Prop :=
  ∀ n, (P8368200195744581243.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P11105573315803053886

`∩[A014456(n+1), A125022(n+1)]`
-/

namespace A125021.P11105573315803053886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P11105573315803053886

namespace A125021

/-- `∩[A014456(n+1), A125022(n+1)]` -/
def P11105573315803053886.Spec : Prop :=
  ∀ n, (P11105573315803053886.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P3073477972778462291

`∩[A047418(n+1), A125022(n+1)]`
-/

namespace A125021.P3073477972778462291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P3073477972778462291

namespace A125021

/-- `∩[A047418(n+1), A125022(n+1)]` -/
def P3073477972778462291.Spec : Prop :=
  ∀ n, (P3073477972778462291.a n : ℤ) = A125021 (n + 1)

end A125021

/-! ## A125021.P18324141483687152755

`∩[A047511(n+1), A125022(n+1)]`
-/

namespace A125021.P18324141483687152755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125021.P18324141483687152755

namespace A125021

/-- `∩[A047511(n+1), A125022(n+1)]` -/
def P18324141483687152755.Spec : Prop :=
  ∀ n, (P18324141483687152755.a n : ℤ) = A125021 (n + 1)

end A125021

/-!
# A125022: Numbers with a unique partition as the sum of 2 squares x^2 + y^2.

The programs for A125022, the canonical program `A125022.P7159174947010696973` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125022 has offset 1).

The definition of A125022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125021, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125022.P7159174947010696973

`A125021(n+1)/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A125022

/-- `A125021(n+1)/2` -/
def P7159174947010696973.Spec : Prop :=
  ∀ n, P7159174947010696973.a n = (A125022 (n + 1) : ℚ)

end A125022

/-! ## A125022.P11126306860221359561

`∪[A002313(n+1), A124982(n+1)]`
-/

namespace A125022.P11126306860221359561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P11126306860221359561

namespace A125022

/-- `∪[A002313(n+1), A124982(n+1)]` -/
def P11126306860221359561.Spec : Prop :=
  ∀ n, (P11126306860221359561.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P16153618255684765484

`∪[A055025(n+1), A124982(n+1)]`
-/

namespace A125022.P16153618255684765484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P16153618255684765484

namespace A125022

/-- `∪[A055025(n+1), A124982(n+1)]` -/
def P16153618255684765484.Spec : Prop :=
  ∀ n, (P16153618255684765484.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P1288127216131778986

`∪[A050804(n+1), A143575(n+1)]`
-/

namespace A125022.P1288127216131778986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P1288127216131778986

namespace A125022

/-- `∪[A050804(n+1), A143575(n+1)]` -/
def P1288127216131778986.Spec : Prop :=
  ∀ n, (P1288127216131778986.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P17639772817219148830

`∪[A081324(n+1), A143575(n+1)]`
-/

namespace A125022.P17639772817219148830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P17639772817219148830

namespace A125022

/-- `∪[A081324(n+1), A143575(n+1)]` -/
def P17639772817219148830.Spec : Prop :=
  ∀ n, (P17639772817219148830.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P15469744779631787239

`∪[A125018(n+1), A125021(n+1)]`
-/

namespace A125022.P15469744779631787239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P15469744779631787239

namespace A125022

/-- `∪[A125018(n+1), A125021(n+1)]` -/
def P15469744779631787239.Spec : Prop :=
  ∀ n, (P15469744779631787239.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P9447401681361201103

`∪[A125021(n+1), A143575(n+1)]`
-/

namespace A125022.P9447401681361201103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P9447401681361201103

namespace A125022

/-- `∪[A125021(n+1), A143575(n+1)]` -/
def P9447401681361201103.Spec : Prop :=
  ∀ n, (P9447401681361201103.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P273712551826614673

`∪[A125853(n+1), A143575(n+1)]`
-/

namespace A125022.P273712551826614673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P273712551826614673

namespace A125022

/-- `∪[A125853(n+1), A143575(n+1)]` -/
def P273712551826614673.Spec : Prop :=
  ∀ n, (P273712551826614673.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P11293249874928142206

`∪[A124982(n+1), A281292(n+1)]`
-/

namespace A125022.P11293249874928142206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125022.P11293249874928142206

namespace A125022

/-- `∪[A124982(n+1), A281292(n+1)]` -/
def P11293249874928142206.Spec : Prop :=
  ∀ n, (P11293249874928142206.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P18306256206400372056

`eq[A025426(n)+1, A169695(n)]`
-/

namespace A125022.P18306256206400372056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125022.P18306256206400372056

namespace A125022

/-- `eq[A025426(n)+1, A169695(n)]` -/
def P18306256206400372056.Spec : Prop :=
  ∀ n, (P18306256206400372056.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P9867983745051325760

`eq[1, A000161(n)]`
-/

namespace A125022.P9867983745051325760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P9867983745051325760

namespace A125022

/-- `eq[1, A000161(n)]` -/
def P9867983745051325760.Spec : Prop :=
  ∀ n, (P9867983745051325760.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P5140553948928283789

`eq[1, A000045(A000925(n))]`
-/

namespace A125022.P5140553948928283789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P5140553948928283789

namespace A125022

/-- `eq[1, A000045(A000925(n))]` -/
def P5140553948928283789.Spec : Prop :=
  ∀ n, (P5140553948928283789.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P8744635873472534698

`eq[1, A110656(A004018(n))]`
-/

namespace A125022.P8744635873472534698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P8744635873472534698

namespace A125022

/-- `eq[1, A110656(A004018(n))]` -/
def P8744635873472534698.Spec : Prop :=
  ∀ n, (P8744635873472534698.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P17305242138826790098

`eq[1, A000045(A125061(n))]`
-/

namespace A125022.P17305242138826790098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P17305242138826790098

namespace A125022

/-- `eq[1, A000045(A125061(n))]` -/
def P17305242138826790098.Spec : Prop :=
  ∀ n, (P17305242138826790098.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P15603432637179458718

`eq[1, A007431(A000925(n)²)]`
-/

namespace A125022.P15603432637179458718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A000925 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P15603432637179458718

namespace A125022

/-- `eq[1, A007431(A000925(n)²)]` -/
def P15603432637179458718.Spec : Prop :=
  ∀ n, (P15603432637179458718.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P10020020141840226991

`eq[1, A004526(A000925(n)+1)]`
-/

namespace A125022.P10020020141840226991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P10020020141840226991

namespace A125022

/-- `eq[1, A004526(A000925(n)+1)]` -/
def P10020020141840226991.Spec : Prop :=
  ∀ n, (P10020020141840226991.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P2981306987554028410

`eq[1, A004526(A125061(n)+1)]`
-/

namespace A125022.P2981306987554028410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A125061 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P2981306987554028410

namespace A125022

/-- `eq[1, A004526(A125061(n)+1)]` -/
def P2981306987554028410.Spec : Prop :=
  ∀ n, (P2981306987554028410.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P425618237274161118

`eq[1, A010054(A004018(n)+2)]`
-/

namespace A125022.P425618237274161118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A004018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P425618237274161118

namespace A125022

/-- `eq[1, A010054(A004018(n)+2)]` -/
def P425618237274161118.Spec : Prop :=
  ∀ n, (P425618237274161118.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P10394717151559651151

`eq[2, A052928(A000925(n)+1)]`
-/

namespace A125022.P10394717151559651151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A000925 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P10394717151559651151

namespace A125022

/-- `eq[2, A052928(A000925(n)+1)]` -/
def P10394717151559651151.Spec : Prop :=
  ∀ n, (P10394717151559651151.a n : ℤ) = A125022 (n + 1)

end A125022

/-! ## A125022.P7776351405215585637

`eq[2, A267261(A000925(n)+1)]`
-/

namespace A125022.P7776351405215585637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 (A000925 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125022.P7776351405215585637

namespace A125022

/-- `eq[2, A267261(A000925(n)+1)]` -/
def P7776351405215585637.Spec : Prop :=
  ∀ n, (P7776351405215585637.a n : ℤ) = A125022 (n + 1)

end A125022

/-!
# A125023: Partial sums of A001372.

The programs for A125023, there is no canonical definition to state claims against.
-/

/-! ## A125023.P9653851565904969153

`∑[A001372(n)]`
-/

namespace A125023.P9653851565904969153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P9653851565904969153

/-! ## A125023.P7903726704448836995

`∑[∑[A381123(n)]]`
-/

namespace A125023.P7903726704448836995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P7903726704448836995

/-! ## A125023.P10410989151899594786

`a(n-1)+A001372(n)+A000007(n)` with `a(0)=1`
-/

namespace A125023.P10410989151899594786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001372 n + A000007 n)

end

end A125023.P10410989151899594786

/-! ## A125023.P14044262965293187837

`a(n-1)+A001372(n)*A057427(n)` with `a(0)=1`
-/

namespace A125023.P14044262965293187837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001372 n * A057427 n

end

end A125023.P14044262965293187837

/-! ## A125023.P11995167100675710945

`a(n-1)+n/A028310(n)*A001372(n)` with `a(0)=1`
-/

namespace A125023.P11995167100675710945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℚ) / (A028310 n : ℚ) * (A001372 n : ℚ)

end

end A125023.P11995167100675710945

/-! ## A125023.P15826651971556293389

`∑[A126285(n)-A127911(n)]`
-/

namespace A125023.P15826651971556293389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126285 n - A127911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P15826651971556293389

/-! ## A125023.P982788214793106725

`a(n-1)+A001372(n)%A000032(2*n+1)²` with `a(0)=1`
-/

namespace A125023.P982788214793106725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A001372 n) (A000032 (2 * n + 1) ^ 2)

end

end A125023.P982788214793106725

/-! ## A125023.P12523227890598905365

`∑[A254529(n)/n!]`
-/

namespace A125023.P12523227890598905365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P12523227890598905365

/-! ## A125023.P298732954490279211

`∑[A254529(n)/A000142(n)]`
-/

namespace A125023.P298732954490279211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P298732954490279211

/-! ## A125023.P15577068853467448869

`∑[A254529(n)/∏[A028310(n)]]`
-/

namespace A125023.P15577068853467448869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125023.P15577068853467448869

/-!
# A125024: Minimal Goedel number of endofunctions on k points, by row and sorted within rows (number of points).

The programs for A125024, there is no canonical definition to state claims against.
-/

/-! ## A125024.P4668440668284833678

`record[A066990(A278261(n+1))]`
-/

namespace A125024.P4668440668284833678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A278261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125024.P4668440668284833678

/-! ## A125024.P5237959221433579193

`A178480(∑[A259439(n+1)!])`
-/

namespace A125024.P5237959221433579193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A259439 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125024.P5237959221433579193

/-! ## A125024.P13568880157988070607

`∩[A181660(n+1), A175585(n)]`
-/

namespace A125024.P13568880157988070607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125024.P13568880157988070607

/-! ## A125024.P7930808863191770548

`∑[A291771(4*A037528(n+1))]`
-/

namespace A125024.P7930808863191770548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (4 * A037528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125024.P7930808863191770548

/-! ## A125024.P10577436238298007494

`A060735(record[A244580(2*n+1)])`
-/

namespace A125024.P10577436238298007494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125024.P10577436238298007494

/-!
# A125026: Triangle read by rows: T(n,k) = k*binomial(n,k) + binomial(n-1,k) (1 <= k <= n).

The programs for A125026, the canonical program `A125026.P12187830582932768045` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125026 has offset 1).

The definition of A125026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125026.P353061711953142710

`A003506(n+1)-(char[∑[n-1]]-A007318(n+1))`
-/

namespace A125026.P353061711953142710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A007318 (n + 1))

end

end A125026.P353061711953142710

namespace A125026

/-- `A003506(n+1)-(char[∑[n-1]]-A007318(n+1))` -/
def P353061711953142710.Spec : Prop :=
  ∀ n, P353061711953142710.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P12187830582932768045

`A135278(n)+A003056(n)*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A125026

/-- `A135278(n)+A003056(n)*A007318(n)` -/
def P12187830582932768045.Spec : Prop :=
  ∀ n, P12187830582932768045.a n = A125026 (n + 1)

theorem P12187830582932768045.correct : P12187830582932768045.Spec := by
  intro n
  simp only [A125026, Nat.add_sub_cancel]

end A125026

/-! ## A125026.P4279506215446021530

`A051597(n)+A025581(n)*A074909(n)`
-/

namespace A125026.P4279506215446021530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A025581 n * A074909 n

end

end A125026.P4279506215446021530

namespace A125026

/-- `A051597(n)+A025581(n)*A074909(n)` -/
def P4279506215446021530.Spec : Prop :=
  ∀ n, P4279506215446021530.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P15051460471173121041

`A007318(A014132(n+1))+A003056(n)*A007318(n)`
-/

namespace A125026.P15051460471173121041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat + A003056 n * A007318 n

end

end A125026.P15051460471173121041

namespace A125026

/-- `A007318(A014132(n+1))+A003056(n)*A007318(n)` -/
def P15051460471173121041.Spec : Prop :=
  ∀ n, P15051460471173121041.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P9685379508754811752

`A206735(n+1)+A003506(n+1)`
-/

namespace A125026.P9685379508754811752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A003506 (n + 1)

end

end A125026.P9685379508754811752

namespace A125026

/-- `A206735(n+1)+A003506(n+1)` -/
def P9685379508754811752.Spec : Prop :=
  ∀ n, P9685379508754811752.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P15527514291152822693

`A103406(n+1)+A103406(n)-A010054(n+1)`
-/

namespace A125026.P15527514291152822693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (n + 1) + (A103406 n - A010054 (n + 1))

end

end A125026.P15527514291152822693

namespace A125026

/-- `A103406(n+1)+A103406(n)-A010054(n+1)` -/
def P15527514291152822693.Spec : Prop :=
  ∀ n, P15527514291152822693.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P55616264319614116

`A103406(comp[∑[n]])-A007318(n)`
-/

namespace A125026.P55616264319614116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A007318 n

end

end A125026.P55616264319614116

namespace A125026

/-- `A103406(comp[∑[n]])-A007318(n)` -/
def P55616264319614116.Spec : Prop :=
  ∀ n, P55616264319614116.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P10396485584663229795

`A103406(A014132(n+1))-sqrt(A008459(n))`
-/

namespace A125026.P10396485584663229795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A103406 (A014132 (n + 1)).toNat : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A125026.P10396485584663229795

namespace A125026

/-- `A103406(A014132(n+1))-sqrt(A008459(n))` -/
def P10396485584663229795.Spec : Prop :=
  ∀ n, P10396485584663229795.a n = (A125026 (n + 1) : ℝ)

end A125026

/-! ## A125026.P4267793836352650442

`A071919(A014132(n+1))+A003506(n+1)`
-/

namespace A125026.P4267793836352650442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A014132 (n + 1)).toNat + A003506 (n + 1)

end

end A125026.P4267793836352650442

namespace A125026

/-- `A071919(A014132(n+1))+A003506(n+1)` -/
def P4267793836352650442.Spec : Prop :=
  ∀ n, P4267793836352650442.a n = A125026 (n + 1)

end A125026

/-! ## A125026.P842307741587628895

`A216973(n)+A124727(n+1)`
-/

namespace A125026.P842307741587628895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A124727 (n + 1)

end

end A125026.P842307741587628895

namespace A125026

/-- `A216973(n)+A124727(n+1)` -/
def P842307741587628895.Spec : Prop :=
  ∀ n, P842307741587628895.a n = A125026 (n + 1)

end A125026

/-!
# A125028: a(1)=2, a(n)=2*a(n-1)-floor(sqrt(a(n-1))).

The programs for A125028, the canonical program `A125028.P35510995802833197` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125028 has offset 1).

The definition of A125028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-floor(sqrt(a(n-1)))` (program `A125028.P35510995802833197`, by `A125028.P35510995802833197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125028.P35510995802833197

`2*a(n-1)-floor(sqrt(a(n-1)))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125028

/-- `2*a(n-1)-floor(sqrt(a(n-1)))` -/
def P35510995802833197.Spec : Prop :=
  ∀ n, P35510995802833197.a n = A125028 (n + 1)

theorem P35510995802833197.correct : P35510995802833197.Spec := by
  intro n
  simp only [A125028, Nat.add_sub_cancel]

end A125028

/-! ## A125028.P15904830737871331899

`ceil(2*a(n-1)-sqrt(a(n-1)))` with `a(0)=2`
-/

namespace A125028.P15904830737871331899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(2 * a (n - 1) : ℝ) - Real.sqrt (a (n - 1) : ℝ)⌉

end

end A125028.P15904830737871331899

namespace A125028

/-- `ceil(2*a(n-1)-sqrt(a(n-1)))` -/
def P15904830737871331899.Spec : Prop :=
  ∀ n, P15904830737871331899.a n = A125028 (n + 1)

end A125028

/-! ## A125028.P2226728401590978963

`2*a(n-1)-floor(a(n-1)^(1/2))` with `a(0)=2`
-/

namespace A125028.P2226728401590978963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ⌊(a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A125028.P2226728401590978963

namespace A125028

/-- `2*a(n-1)-floor(a(n-1)^(1/2))` -/
def P2226728401590978963.Spec : Prop :=
  ∀ n, P2226728401590978963.a n = A125028 (n + 1)

end A125028

/-! ## A125028.P1585091243866621188

`ceil(2*a(n-1)-a(n-1)^(1/2))` with `a(0)=2`
-/

namespace A125028.P1585091243866621188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(2 * a (n - 1) : ℝ) - (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉

end

end A125028.P1585091243866621188

namespace A125028

/-- `ceil(2*a(n-1)-a(n-1)^(1/2))` -/
def P1585091243866621188.Spec : Prop :=
  ∀ n, P1585091243866621188.a n = A125028 (n + 1)

end A125028

/-! ## A125028.P16171740265227653712

`a(n-1)+a(n-1)-floor(sqrt(a(n-1)))` with `a(0)=2`
-/

namespace A125028.P16171740265227653712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) - Int.sqrt (a (n - 1)))

end

end A125028.P16171740265227653712

namespace A125028

/-- `a(n-1)+a(n-1)-floor(sqrt(a(n-1)))` -/
def P16171740265227653712.Spec : Prop :=
  ∀ n, P16171740265227653712.a n = A125028 (n + 1)

theorem P16171740265227653712.correct : P16171740265227653712.Spec := by
  intro n
  simp only [A125028, Nat.add_sub_cancel, A125028.P16171740265227653712.a, A125028.P35510995802833197.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A125028

/-!
# A125029: a(n) = number of exponents in the prime factorization of n that are noncomposite.

The programs for A125029, the canonical program `A125029.P11221732944019236443` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125029 has offset 1).

The definition of A125029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125029.P11221732944019236443

`∑{e}[n+1, A080339(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125029

/-- `∑{e}[n+1, A080339(#)]` -/
def P11221732944019236443.Spec : Prop :=
  ∀ n, P11221732944019236443.a n = A125029 (n + 1)

theorem P11221732944019236443.correct : P11221732944019236443.Spec := by
  intro n
  simp only [A125029, Nat.add_sub_cancel]

end A125029

/-! ## A125029.P14029297164227081567

`∑{e}[n+1, C(A006530(#), #)]`
-/

namespace A125029.P14029297164227081567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (A006530 (Nat.factorization (f1 n) p)).toNat (Nat.factorization (f1 n) p)

end

end A125029.P14029297164227081567

namespace A125029

/-- `∑{e}[n+1, C(A006530(#), #)]` -/
def P14029297164227081567.Spec : Prop :=
  ∀ n, (P14029297164227081567.a n : ℤ) = A125029 (n + 1)

end A125029

/-! ## A125029.P3152887016759932093

`∑{e}[n+1, C(A014963(#), #)]`
-/

namespace A125029.P3152887016759932093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (A014963 (Nat.factorization (f1 n) p)).toNat (Nat.factorization (f1 n) p)

end

end A125029.P3152887016759932093

namespace A125029

/-- `∑{e}[n+1, C(A014963(#), #)]` -/
def P3152887016759932093.Spec : Prop :=
  ∀ n, (P3152887016759932093.a n : ℤ) = A125029 (n + 1)

end A125029

/-! ## A125029.P16227129215126924501

`∑{e}[n+1, C(A020639(#), #)]`
-/

namespace A125029.P16227129215126924501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (A020639 (Nat.factorization (f1 n) p)).toNat (Nat.factorization (f1 n) p)

end

end A125029.P16227129215126924501

namespace A125029

/-- `∑{e}[n+1, C(A020639(#), #)]` -/
def P16227129215126924501.Spec : Prop :=
  ∀ n, (P16227129215126924501.a n : ℤ) = A125029 (n + 1)

end A125029

/-! ## A125029.P13984190390198915942

`∑{e}[n+1, ceil(cos(A001222(#)))]`
-/

namespace A125029.P13984190390198915942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.cos (A001222 (Nat.factorization (f1 n) p) : ℝ)⌉

end

end A125029.P13984190390198915942

namespace A125029

/-- `∑{e}[n+1, ceil(cos(A001222(#)))]` -/
def P13984190390198915942.Spec : Prop :=
  ∀ n, P13984190390198915942.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P4181102563840359382

`A169611(A369015(n+1))`
-/

namespace A125029.P4181102563840359382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A369015 (n + 1)).toNat

end

end A125029.P4181102563840359382

namespace A125029

/-- `A169611(A369015(n+1))` -/
def P4181102563840359382.Spec : Prop :=
  ∀ n, P4181102563840359382.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P13442658487080594734

`A366078(A284476(n+1))`
-/

namespace A125029.P13442658487080594734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (A284476 (n + 1)).toNat

end

end A125029.P13442658487080594734

namespace A125029

/-- `A366078(A284476(n+1))` -/
def P13442658487080594734.Spec : Prop :=
  ∀ n, P13442658487080594734.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P15269282762109247162

`A366078(A395619(n+1))`
-/

namespace A125029.P15269282762109247162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (A395619 (n + 1)).toNat

end

end A125029.P15269282762109247162

namespace A125029

/-- `A366078(A395619(n+1))` -/
def P15269282762109247162.Spec : Prop :=
  ∀ n, P15269282762109247162.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P11537647301315425622

`∑{e}[n+1, A263919(A001222(#))]`
-/

namespace A125029.P11537647301315425622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A263919 (A001222 (Nat.factorization (f1 n) p)).toNat

end

end A125029.P11537647301315425622

namespace A125029

/-- `∑{e}[n+1, A263919(A001222(#))]` -/
def P11537647301315425622.Spec : Prop :=
  ∀ n, P11537647301315425622.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P3730550296889270363

`∑{e}[A284476(n+1), A284512(#)]`
-/

namespace A125029.P3730550296889270363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A284512 (Nat.factorization (f1 n).natAbs p)

end

end A125029.P3730550296889270363

namespace A125029

/-- `∑{e}[A284476(n+1), A284512(#)]` -/
def P3730550296889270363.Spec : Prop :=
  ∀ n, P3730550296889270363.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P10222619072490162530

`A101436(n+1)+A056169(n+1)`
-/

namespace A125029.P10222619072490162530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1) + A056169 (n + 1)

end

end A125029.P10222619072490162530

namespace A125029

/-- `A101436(n+1)+A056169(n+1)` -/
def P10222619072490162530.Spec : Prop :=
  ∀ n, P10222619072490162530.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P18330131757557618228

`A381401(n+1)-A056170(n+1)`
-/

namespace A125029.P18330131757557618228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381401 (n + 1) - A056170 (n + 1)

end

end A125029.P18330131757557618228

namespace A125029

/-- `A381401(n+1)-A056170(n+1)` -/
def P18330131757557618228.Spec : Prop :=
  ∀ n, P18330131757557618228.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P11798901179758167538

`A101436(n+1)+A125030(n+1)-A123391(n+1)`
-/

namespace A125029.P11798901179758167538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (n + 1) + (A125030 (n + 1) - A123391 (n + 1))

end

end A125029.P11798901179758167538

namespace A125029

/-- `A101436(n+1)+A125030(n+1)-A123391(n+1)` -/
def P11798901179758167538.Spec : Prop :=
  ∀ n, P11798901179758167538.a n = A125029 (n + 1)

theorem P11798901179758167538.correct : P11798901179758167538.Spec := by
  intro n
  simp only [A125029, Nat.add_sub_cancel, A125029.P11798901179758167538.a, A125029.P11221732944019236443.f1, A125029.P11221732944019236443.a, A080339, A080339.P3185701196739832768.f1, A080339.P3185701196739832768.a, A101436, A101436.P2181373059902386332.a, A123391, A123391.P18124121775959414335.f1, A123391.P18124121775959414335.a, A125030, A125030.P7178529687584953587.a, A049599, A049599.P10458558030046678201.f1, A049599.P10458558030046678201.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P15078252821583414300.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125029

/-! ## A125029.P6538544252932177477

`A001221(A368167(n+1)*A385007(n+1))`
-/

namespace A125029.P6538544252932177477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A368167 (n + 1) * A385007 (n + 1)).toNat

end

end A125029.P6538544252932177477

namespace A125029

/-- `A001221(A368167(n+1)*A385007(n+1))` -/
def P6538544252932177477.Spec : Prop :=
  ∀ n, P6538544252932177477.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P18195966218012530387

`∑{e}[n+1, A051731(A133053(#))]`
-/

namespace A125029.P18195966218012530387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A051731 (A133053 (Nat.factorization (f1 n) p)).toNat

end

end A125029.P18195966218012530387

namespace A125029

/-- `∑{e}[n+1, A051731(A133053(#))]` -/
def P18195966218012530387.Spec : Prop :=
  ∀ n, P18195966218012530387.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P1278705598458468344

`A101436(A197863(n+1))`
-/

namespace A125029.P1278705598458468344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A197863 (n + 1)).toNat

end

end A125029.P1278705598458468344

namespace A125029

/-- `A101436(A197863(n+1))` -/
def P1278705598458468344.Spec : Prop :=
  ∀ n, P1278705598458468344.a n = A125029 (n + 1)

end A125029

/-! ## A125029.P1637326351789931612

`A106490(A058035(n+1)²)-A106490(n+1)`
-/

namespace A125029.P1637326351789931612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A058035 (n + 1) ^ 2).toNat - A106490 (n + 1)

end

end A125029.P1637326351789931612

namespace A125029

/-- `A106490(A058035(n+1)²)-A106490(n+1)` -/
def P1637326351789931612.Spec : Prop :=
  ∀ n, P1637326351789931612.a n = A125029 (n + 1)

end A125029

/-!
# A125030: a(n) = sum of exponents in the prime factorization of n that are noncomposite.

The programs for A125030, the canonical program `A125030.P7178529687584953587` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125030 has offset 1).

The definition of A125030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125030.P16655345586486566808

`∑{e}[n+1, A377777(#)]`
-/

namespace A125030.P16655345586486566808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A377777 (Nat.factorization (f1 n) p)

end

end A125030.P16655345586486566808

namespace A125030

/-- `∑{e}[n+1, A377777(#)]` -/
def P16655345586486566808.Spec : Prop :=
  ∀ n, P16655345586486566808.a n = A125030 (n + 1)

end A125030

/-! ## A125030.P17043219628592354433

`∑{e}[n+1, and(#, A008683(#))]`
-/

namespace A125030.P17043219628592354433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (Nat.factorization (f1 n) p : ℤ) (A008683 (Nat.factorization (f1 n) p))

end

end A125030.P17043219628592354433

namespace A125030

/-- `∑{e}[n+1, and(#, A008683(#))]` -/
def P17043219628592354433.Spec : Prop :=
  ∀ n, P17043219628592354433.a n = A125030 (n + 1)

end A125030

/-! ## A125030.P2087328929181731109

`∑{e}[n+1, C(A014963(#), #-1)]`
-/

namespace A125030.P2087328929181731109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (A014963 (Nat.factorization (f1 n) p)).toNat ((Nat.factorization (f1 n) p : ℤ) - 1).toNat

end

end A125030.P2087328929181731109

namespace A125030

/-- `∑{e}[n+1, C(A014963(#), #-1)]` -/
def P2087328929181731109.Spec : Prop :=
  ∀ n, (P2087328929181731109.a n : ℤ) = A125030 (n + 1)

end A125030

/-! ## A125030.P14732322885619487937

`∑{e}[n+1, C(#, A001222(#)²²)]`
-/

namespace A125030.P14732322885619487937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) ((A001222 (Nat.factorization (f1 n) p) ^ 2) ^ 2).toNat

end

end A125030.P14732322885619487937

namespace A125030

/-- `∑{e}[n+1, C(#, A001222(#)²²)]` -/
def P14732322885619487937.Spec : Prop :=
  ∀ n, (P14732322885619487937.a n : ℤ) = A125030 (n + 1)

end A125030

/-! ## A125030.P8201153001617659897

`A123391(n+1)+A056169(n+1)`
-/

namespace A125030.P8201153001617659897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + A056169 (n + 1)

end

end A125030.P8201153001617659897

namespace A125030

/-- `A123391(n+1)+A056169(n+1)` -/
def P8201153001617659897.Spec : Prop :=
  ∀ n, P8201153001617659897.a n = A125030 (n + 1)

end A125030

/-! ## A125030.P7178529687584953587

`A123391(n+1)+A125029(n+1)-A101436(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125030

/-- `A123391(n+1)+A125029(n+1)-A101436(n+1)` -/
def P7178529687584953587.Spec : Prop :=
  ∀ n, P7178529687584953587.a n = A125030 (n + 1)

theorem P7178529687584953587.correct : P7178529687584953587.Spec := by
  intro n
  simp only [A125030, Nat.add_sub_cancel]

end A125030

/-! ## A125030.P11468289493422708810

`and(∑{e}[n+1, #], A062337(∏{e}[n+1, #^#]))`
-/

namespace A125030.P11468289493422708810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A062337 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ Nat.factorization (f2 n) p))

end

end A125030.P11468289493422708810

namespace A125030

/-- `and(∑{e}[n+1, #], A062337(∏{e}[n+1, #^#]))` -/
def P11468289493422708810.Spec : Prop :=
  ∀ n, P11468289493422708810.a n = A125030 (n + 1)

end A125030

/-! ## A125030.P2543075256446820999

`and(A001222(n+1), A279106(n+1))`
-/

namespace A125030.P2543075256446820999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 1)) (A279106 (n + 1))

end

end A125030.P2543075256446820999

namespace A125030

/-- `and(A001222(n+1), A279106(n+1))` -/
def P2543075256446820999.Spec : Prop :=
  ∀ n, P2543075256446820999.a n = A125030 (n + 1)

end A125030

/-!
# A125031: Total number of highest scorers in all 2^(n(n-1)/2) tournaments with n players.

The programs for A125031, there is no canonical definition to state claims against.
-/

/-! ## A125031.P14777972735565955791

`A285506(A008860(∑[n]))`
-/

namespace A125031.P14777972735565955791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285506 (A008860 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A125031.P14777972735565955791

/-!
# A125033: Number of labeled nodes in generation n of a rooted tree where a node with label k has k child nodes with distinct labels, such that each child node is assigned the least unused label in the path that leads back to the root node with label '1'.

The programs for A125033, there is no canonical definition to state claims against.
-/

/-! ## A125033.P4344820739652250368

`A309256(A205571(n)+1+n)`
-/

namespace A125033.P4344820739652250368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309256 (A205571 n + 1 + (n : ℤ)).toNat

end

end A125033.P4344820739652250368

/-! ## A125033.P7403735293939428903

`A353857(or(4, a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A125033.P7403735293939428903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A353857 (Int.lor 4 (a (n - 1) + 3)).toNat

end

end A125033.P7403735293939428903

/-!
# A125034: Primes of the form 2^n - 69.

The programs for A125034, there is no canonical definition to state claims against.
-/

/-! ## A125034.P17657985701045263229

`p?[2^n-69]`
-/

namespace A125034.P17657985701045263229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 69

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125034.P17657985701045263229

/-! ## A125034.P7854547517470303365

`record[p?[A059268(n)-69]]`
-/

namespace A125034.P7854547517470303365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - 69

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125034.P7854547517470303365

/-!
# A125045: Odd primes generated recursively: a(1) = 3, a(n) = Min {p is prime; p divides Q+2}, where Q is the product of previous terms in the sequence.

The programs for A125045, there is no canonical definition to state claims against.
-/

/-! ## A125045.P17461422716823544314

`p?[A050922(n)]`
-/

namespace A125045.P17461422716823544314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125045.P17461422716823544314

/-! ## A125045.P6562215262884690601

`A000265(A093179(n))`
-/

namespace A125045.P6562215262884690601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A093179 n).toNat

end

end A125045.P6562215262884690601

/-!
# A125046: Partial sums of A003095.

The programs for A125046, the canonical program `A125046.P10894058615210934159` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125046 has offset 0).

The definition of A125046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125046.P10894058615210934159

`1+a(n-1)²-2*a(n-1)*a(n-2)+a(n-2)²+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125046

/-- `1+a(n-1)²-2*a(n-1)*a(n-2)+a(n-2)²+a(n-1)` -/
def P10894058615210934159.Spec : Prop :=
  ∀ n, P10894058615210934159.a n = A125046 n

theorem P10894058615210934159.correct : P10894058615210934159.Spec := by
  intro n
  simp only [A125046]

end A125046

/-! ## A125046.P16662298159957334418

`∑[a(n-1)²+1]` with `a(0)=0`
-/

namespace A125046.P16662298159957334418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125046.P16662298159957334418

namespace A125046

/-- `∑[a(n-1)²+1]` -/
def P16662298159957334418.Spec : Prop :=
  ∀ n, (P16662298159957334418.a n : ℤ) = A125046 n

end A125046

/-! ## A125046.P13359844363810092418

`∑[a(n-1)^2+1]` with `a(0)=0`
-/

namespace A125046.P13359844363810092418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125046.P13359844363810092418

namespace A125046

/-- `∑[a(n-1)^2+1]` -/
def P13359844363810092418.Spec : Prop :=
  ∀ n, (P13359844363810092418.a n : ℤ) = A125046 n

end A125046

/-! ## A125046.P3932989414108906672

`∑[or(2, a(n-1)²)-1]` with `a(0)=0`
-/

namespace A125046.P3932989414108906672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 2 (f1 (n - 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125046.P3932989414108906672

namespace A125046

/-- `∑[or(2, a(n-1)²)-1]` -/
def P3932989414108906672.Spec : Prop :=
  ∀ n, P3932989414108906672.a n = A125046 n

end A125046

/-! ## A125046.P9426304815346227836

`∑[xor(2, a(n-1)²)-1]` with `a(0)=0`
-/

namespace A125046.P9426304815346227836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor 2 (f1 (n - 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125046.P9426304815346227836

namespace A125046

/-- `∑[xor(2, a(n-1)²)-1]` -/
def P9426304815346227836.Spec : Prop :=
  ∀ n, P9426304815346227836.a n = A125046 n

end A125046

/-!
# A125047: Infinite word generated by mapping 1->12, 2->13, 3->43, 4->42 starting at 1.

The programs for A125047, the canonical program `A125047.P17736773129357693532` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125047 has offset 1).

The definition of A125047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125047.P2494716962430722755

`A343180(comp[∑[A088431(n+1)]])`
-/

namespace A125047.P2494716962430722755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125047.P2494716962430722755

namespace A125047

/-- `A343180(comp[∑[A088431(n+1)]])` -/
def P2494716962430722755.Spec : Prop :=
  ∀ n, P2494716962430722755.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P17736773129357693532

`A343180(eq[A014707(n), A038189(n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125047

/-- `A343180(eq[A014707(n), A038189(n)])` -/
def P17736773129357693532.Spec : Prop :=
  ∀ n, P17736773129357693532.a n = A125047 (n + 1)

theorem P17736773129357693532.correct : P17736773129357693532.Spec := by
  intro n
  simp only [A125047, Nat.add_sub_cancel]

end A125047

/-! ## A125047.P6591575408524032734

`A343180(eq[A038189(n+1), A038189(n)])`
-/

namespace A125047.P6591575408524032734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125047.P6591575408524032734

namespace A125047

/-- `A343180(eq[A038189(n+1), A038189(n)])` -/
def P6591575408524032734.Spec : Prop :=
  ∀ n, P6591575408524032734.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P16050474710318439148

`A070352(A166404(3*n))`
-/

namespace A125047.P16050474710318439148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A166404 (3 * n)).toNat

end

end A125047.P16050474710318439148

namespace A125047

/-- `A070352(A166404(3*n))` -/
def P16050474710318439148.Spec : Prop :=
  ∀ n, P16050474710318439148.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P15747170649590651630

`A332214(A005811(A130824(n))-A005811(n))`
-/

namespace A125047.P15747170649590651630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 (A005811 (A130824 n).toNat - A005811 n).toNat

end

end A125047.P15747170649590651630

namespace A125047

/-- `A332214(A005811(A130824(n))-A005811(n))` -/
def P15747170649590651630.Spec : Prop :=
  ∀ n, P15747170649590651630.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P9619801748808366866

`A088742(A088023(A088743(A091072(A339597(n)))))`
-/

namespace A125047.P9619801748808366866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088742 (A088023 (A088743 (A091072 (A339597 n).toNat).toNat).toNat).toNat

end

end A125047.P9619801748808366866

namespace A125047

/-- `A088742(A088023(A088743(A091072(A339597(n)))))` -/
def P9619801748808366866.Spec : Prop :=
  ∀ n, P9619801748808366866.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P7099905374438328280

`A070352(xor(A130824(n), A166404(n)))`
-/

namespace A125047.P7099905374438328280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (Int.xor (A130824 n) (A166404 n)).toNat

end

end A125047.P7099905374438328280

namespace A125047

/-- `A070352(xor(A130824(n), A166404(n)))` -/
def P7099905374438328280.Spec : Prop :=
  ∀ n, P7099905374438328280.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P10584241603989369426

`A070352(A166404(n)+A130824(n))`
-/

namespace A125047.P10584241603989369426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A166404 n + A130824 n).toNat

end

end A125047.P10584241603989369426

namespace A125047

/-- `A070352(A166404(n)+A130824(n))` -/
def P10584241603989369426.Spec : Prop :=
  ∀ n, P10584241603989369426.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P17136860285389093203

`A070352(A166404(n)+A100484(n+1))`
-/

namespace A125047.P17136860285389093203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070352 (A166404 n + A100484 (n + 1)).toNat

end

end A125047.P17136860285389093203

namespace A125047

/-- `A070352(A166404(n)+A100484(n+1))` -/
def P17136860285389093203.Spec : Prop :=
  ∀ n, P17136860285389093203.a n = A125047 (n + 1)

end A125047

/-! ## A125047.P8938021213069866884

`A122756(A166404(n))%5`
-/

namespace A125047.P8938021213069866884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122756 (A166404 n).toNat) 5

end

end A125047.P8938021213069866884

namespace A125047

/-- `A122756(A166404(n))%5` -/
def P8938021213069866884.Spec : Prop :=
  ∀ n, P8938021213069866884.a n = A125047 (n + 1)

end A125047

/-!
# A125048: a(n) = 2^(10n) - 10^(3n).

The programs for A125048, the canonical program `A125048.P2979130738037388265` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125048 has offset 0).

The definition of A125048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(10*n)-10^(3*n)` (program `A125048.P2979130738037388265`, by `A125048.P2979130738037388265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125048.P2979130738037388265

`2^(10*n)-10^(3*n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125048

/-- `2^(10*n)-10^(3*n)` -/
def P2979130738037388265.Spec : Prop :=
  ∀ n, P2979130738037388265.a n = A125048 n

theorem P2979130738037388265.correct : P2979130738037388265.Spec := by
  intro n
  simp only [A125048]

end A125048

/-! ## A125048.P14184142719119335882

`A334588(10*n)`
-/

namespace A125048.P14184142719119335882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334588 (10 * n)

end

end A125048.P14184142719119335882

namespace A125048

/-- `A334588(10*n)` -/
def P14184142719119335882.Spec : Prop :=
  ∀ n, P14184142719119335882.a n = A125048 n

end A125048

/-!
# A125049: a(1) = 1. If a(n) is prime, a(n+1) = 2*a(n); otherwise, a(n+1) = 2*a(n) + 1.

The programs for A125049, there is no canonical definition to state claims against.
-/

/-! ## A125049.P12876528145197916419

`A000027(or(2*a(n-1), A339369(n)))` with `a(0)=1`
-/

namespace A125049.P12876528145197916419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (Int.lor (2 * a (n - 1)) (A339369 n)).toNat

end

end A125049.P12876528145197916419

/-! ## A125049.P12148073417521400999

`A066247(a(n-1))+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A125049.P12148073417521400999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A066247 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A125049.P12148073417521400999

/-! ## A125049.P4599880131191292723

`a(n-1)+A005171(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A125049.P4599880131191292723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005171 (a (n - 1)).toNat + a (n - 1))

end

end A125049.P4599880131191292723

/-! ## A125049.P254563431132348618

`xor(2*a(n-1), A263243(A007053(n)))` with `a(0)=1`
-/

namespace A125049.P254563431132348618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A263243 (A007053 n).toNat)

end

end A125049.P254563431132348618

/-! ## A125049.P3376489840406855395

`A025801(A001222(a(n-1)))+2*a(n-1)` with `a(0)=1`
-/

namespace A125049.P3376489840406855395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025801 (A001222 (a (n - 1)).toNat).toNat + 2 * a (n - 1)

end

end A125049.P3376489840406855395

/-!
# A125050: a(1) = 1. If a(n) is composite, a(n+1) = 2*a(n)+1; otherwise, a(n+1) = 2*a(n).

The programs for A125050, there is no canonical definition to state claims against.
-/

/-! ## A125050.P7236624027218306515

`A025801(A001222(a(n-1)))+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A125050.P7236624027218306515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A025801 (A001222 (a (n - 1)).toNat).toNat + 2 * a (n - 1)

end

end A125050.P7236624027218306515

/-! ## A125050.P14764472059515883930

`A066247(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A125050.P14764472059515883930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066247 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A125050.P14764472059515883930

/-! ## A125050.P16873940761916150701

`a(n-1)+A005171(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A125050.P16873940761916150701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A005171 (a (n - 1)).toNat + a (n - 1))

end

end A125050.P16873940761916150701

/-! ## A125050.P11159337129388508229

`a(n-1)+A174898(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A125050.P11159337129388508229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A174898 (a (n - 1)).toNat + a (n - 1))

end

end A125050.P11159337129388508229

/-! ## A125050.P14075574185008378018

`2*a(n-1)+1-A064911(2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A125050.P14075574185008378018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (1 - A064911 (2 * a (n - 1)).toNat)

end

end A125050.P14075574185008378018

/-!
# A125052: Sum of labels for nodes in generation n of the sub-Fibonacci tree (A125051).

The programs for A125052, there is no canonical definition to state claims against.
-/

/-! ## A125052.P6786956395068769892

`3*A225745(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A125052.P6786956395068769892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * A225745 (a (n - 1)).toNat

end

end A125052.P6786956395068769892

/-! ## A125052.P14726886841655066

`A332086(A245140(n)+∑{d}[n+1, #])`
-/

namespace A125052.P14726886841655066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A245140 n + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A125052.P14726886841655066

/-!
# A125054: Central terms of triangle A125053.

The programs for A125054, there is no canonical definition to state claims against.
-/

/-! ## A125054.P18245933893921562005

`A125053(∑[2*n])`
-/

namespace A125054.P18245933893921562005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125054.P18245933893921562005

/-! ## A125054.P2224549885702732255

`A210111(∑[n]+n)`
-/

namespace A125054.P2224549885702732255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210111 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A125054.P2224549885702732255

/-! ## A125054.P5215215130617272976

`record[A210111(A061579(n))]`
-/

namespace A125054.P5215215130617272976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210111 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125054.P5215215130617272976

/-! ## A125054.P13637529436240810326

`or(1, A210111(A000096(n)))`
-/

namespace A125054.P13637529436240810326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210111 (A000096 n).toNat)

end

end A125054.P13637529436240810326

/-! ## A125054.P1922373126068135219

`record[A125053(∑[A093178(n)])]`
-/

namespace A125054.P1922373126068135219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125054.P1922373126068135219

/-!
# A125055: Diagonal of symmetric triangle A125053 located immediately below the central terms (A125054).

The programs for A125055, there is no canonical definition to state claims against.
-/

/-! ## A125055.P1877704738724161768

`A125054(n+1)-2*A125054(n)`
-/

namespace A125055.P1877704738724161768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125054 (n + 1) - 2 * A125054 n

end

end A125055.P1877704738724161768

/-! ## A125055.P11802911943391820852

`A210111(∑[n+2]-1)`
-/

namespace A125055.P11802911943391820852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210111 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A125055.P11802911943391820852

/-! ## A125055.P16978058808389851200

`A125053((n+1)²+n)`
-/

namespace A125055.P16978058808389851200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 ((n + 1) ^ 2 + n)

end

end A125055.P16978058808389851200

/-! ## A125055.P14196325382529207883

`or(1, A125053(A028387(n)))`
-/

namespace A125055.P14196325382529207883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A125053 (A028387 n).toNat)

end

end A125055.P14196325382529207883

/-! ## A125055.P2146819092497361547

`Δ[A125054(n)]-A125054(n)`
-/

namespace A125055.P2146819092497361547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125054 n

end

end A125055.P2146819092497361547

/-!
# A125056: a(n) is the largest positive integer such that floor(a(n)/d(a(n))) = n, where d(m) is the number of positive divisors of m.

The programs for A125056, there is no canonical definition to state claims against.
-/

/-! ## A125056.P6052128678806002347

`A358526(A355547(n+2))`
-/

namespace A125056.P6052128678806002347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358526 (A355547 (n + 2)).toNat

end

end A125056.P6052128678806002347

/-! ## A125056.P10637786985886719386

`record[A046523(A155932(2*n+5))]`
-/

namespace A125056.P10637786985886719386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A155932 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125056.P10637786985886719386

/-! ## A125056.P8272965374984372049

`∩[A141104(n+1), A358526(n+1)]`
-/

namespace A125056.P8272965374984372049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125056.P8272965374984372049

/-!
# A125059: Number of digits in n!!.

The programs for A125059, the canonical program `A125059.P17901942141546187300` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125059 has offset 0).

The definition of A125059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125059.P17901942141546187300

`∑{digits}[A006882(n), A055642(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125059

/-- `∑{digits}[A006882(n), A055642(#)]` -/
def P17901942141546187300.Spec : Prop :=
  ∀ n, P17901942141546187300.a n = A125059 n

theorem P17901942141546187300.correct : P17901942141546187300.Spec := by
  intro n
  simp only [A125059]

end A125059

/-! ## A125059.P14487651584484650124

`∑{digits}[A006882(n), A007318(A007318(#))]`
-/

namespace A125059.P14487651584484650124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A125059.P14487651584484650124

namespace A125059

/-- `∑{digits}[A006882(n), A007318(A007318(#))]` -/
def P14487651584484650124.Spec : Prop :=
  ∀ n, P14487651584484650124.a n = A125059 n

end A125059

/-! ## A125059.P15171729468303788944

`∑{digits}[A006882(n), A006882(A015161(#))]`
-/

namespace A125059.P15171729468303788944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006882 (A015161 x).toNat).sum

end

end A125059.P15171729468303788944

namespace A125059

/-- `∑{digits}[A006882(n), A006882(A015161(#))]` -/
def P15171729468303788944.Spec : Prop :=
  ∀ n, P15171729468303788944.a n = A125059 n

end A125059

/-! ## A125059.P7717307557095036204

`∑{digits}[A006882(n), A006882(A066568(#))]`
-/

namespace A125059.P7717307557095036204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006882 (A066568 x).toNat).sum

end

end A125059.P7717307557095036204

namespace A125059

/-- `∑{digits}[A006882(n), A006882(A066568(#))]` -/
def P7717307557095036204.Spec : Prop :=
  ∀ n, P7717307557095036204.a n = A125059 n

end A125059

/-! ## A125059.P14824704984378382479

`∑{digits}[A006882(n), A006882(A193581(#))]`
-/

namespace A125059.P14824704984378382479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006882 (A193581 x).toNat).sum

end

end A125059.P14824704984378382479

namespace A125059

/-- `∑{digits}[A006882(n), A006882(A193581(#))]` -/
def P14824704984378382479.Spec : Prop :=
  ∀ n, P14824704984378382479.a n = A125059 n

end A125059

/-!
# A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

The programs for A125061, the canonical program `A125061.P10139082883885245732` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125061 has offset 0).

The definition of A125061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125061.P4730560129383959436

`abs(A138745(n))`
-/

namespace A125061.P4730560129383959436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138745 n|

end

end A125061.P4730560129383959436

namespace A125061

/-- `abs(A138745(n))` -/
def P4730560129383959436.Spec : Prop :=
  ∀ n, P4730560129383959436.a n = A125061 n

end A125061

/-! ## A125061.P12997591875409279445

`val(2^(abs(A138949(n))+1), 4)`
-/

namespace A125061.P12997591875409279445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|A138949 n| + 1 : ℤ))).toNat 4

end

end A125061.P12997591875409279445

namespace A125061

/-- `val(2^(abs(A138949(n))+1), 4)` -/
def P12997591875409279445.Spec : Prop :=
  ∀ n, (P12997591875409279445.a n : ℤ) = A125061 n

end A125061

/-! ## A125061.P9643455173418565878

`A163746(A028310(n))`
-/

namespace A125061.P9643455173418565878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A028310 n).toNat

end

end A125061.P9643455173418565878

namespace A125061

/-- `A163746(A028310(n))` -/
def P9643455173418565878.Spec : Prop :=
  ∀ n, P9643455173418565878.a n = A125061 n

end A125061

/-! ## A125061.P16952155884595982549

`A163746(A004277(n)-n)`
-/

namespace A125061.P16952155884595982549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A004277 n - (n : ℤ)).toNat

end

end A125061.P16952155884595982549

namespace A125061

/-- `A163746(A004277(n)-n)` -/
def P16952155884595982549.Spec : Prop :=
  ∀ n, P16952155884595982549.a n = A125061 n

end A125061

/-! ## A125061.P5263546361666233334

`A033999(n)*A138745(n)`
-/

namespace A125061.P5263546361666233334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138745 n

end

end A125061.P5263546361666233334

namespace A125061

/-- `A033999(n)*A138745(n)` -/
def P5263546361666233334.Spec : Prop :=
  ∀ n, P5263546361666233334.a n = A125061 n

end A125061

/-! ## A125061.P7985409850494968284

`gcd(A000038(n), A138745(n))`
-/

namespace A125061.P7985409850494968284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138745 n)

end

end A125061.P7985409850494968284

namespace A125061

/-- `gcd(A000038(n), A138745(n))` -/
def P7985409850494968284.Spec : Prop :=
  ∀ n, (P7985409850494968284.a n : ℤ) = A125061 n

end A125061

/-! ## A125061.P3563482450580548541

`lcm(A020985(n), A138745(n))`
-/

namespace A125061.P3563482450580548541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A138745 n)

end

end A125061.P3563482450580548541

namespace A125061

/-- `lcm(A020985(n), A138745(n))` -/
def P3563482450580548541.Spec : Prop :=
  ∀ n, (P3563482450580548541.a n : ℤ) = A125061 n

end A125061

/-! ## A125061.P15954043373693283062

`A163746(A004275(n+1)-n)`
-/

namespace A125061.P15954043373693283062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A125061.P15954043373693283062

namespace A125061

/-- `A163746(A004275(n+1)-n)` -/
def P15954043373693283062.Spec : Prop :=
  ∀ n, P15954043373693283062.a n = A125061 n

end A125061

/-! ## A125061.P16091353093411214340

`A163746(2-(n-A004275(n)))`
-/

namespace A125061.P16091353093411214340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (2 - ((n : ℤ) - A004275 n)).toNat

end

end A125061.P16091353093411214340

namespace A125061

/-- `A163746(2-(n-A004275(n)))` -/
def P16091353093411214340.Spec : Prop :=
  ∀ n, P16091353093411214340.a n = A125061 n

end A125061

/-! ## A125061.P11778978232001479591

`A163746(A257088(n))`
-/

namespace A125061.P11778978232001479591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A257088 n).toNat

end

end A125061.P11778978232001479591

namespace A125061

/-- `A163746(A257088(n))` -/
def P11778978232001479591.Spec : Prop :=
  ∀ n, P11778978232001479591.a n = A125061 n

end A125061

/-! ## A125061.P6418645663155184365

`A138745(2*n)`
-/

namespace A125061.P6418645663155184365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (2 * n)

end

end A125061.P6418645663155184365

namespace A125061

/-- `A138745(2*n)` -/
def P6418645663155184365.Spec : Prop :=
  ∀ n, P6418645663155184365.a n = A125061 n

end A125061

/-! ## A125061.P5280195963829845770

`A163746(A004277(n))`
-/

namespace A125061.P5280195963829845770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A004277 n).toNat

end

end A125061.P5280195963829845770

namespace A125061

/-- `A163746(A004277(n))` -/
def P5280195963829845770.Spec : Prop :=
  ∀ n, P5280195963829845770.a n = A125061 n

end A125061

/-! ## A125061.P17568388402755786226

`A163746(A057543(n))`
-/

namespace A125061.P17568388402755786226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A057543 n).toNat

end

end A125061.P17568388402755786226

namespace A125061

/-- `A163746(A057543(n))` -/
def P17568388402755786226.Spec : Prop :=
  ∀ n, P17568388402755786226.a n = A125061 n

end A125061

/-! ## A125061.P6304326314808402994

`A163746(A004275(n+1))`
-/

namespace A125061.P6304326314808402994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A004275 (n + 1)).toNat

end

end A125061.P6304326314808402994

namespace A125061

/-- `A163746(A004275(n+1))` -/
def P6304326314808402994.Spec : Prop :=
  ∀ n, P6304326314808402994.a n = A125061 n

end A125061

/-! ## A125061.P10139082883885245732

`abs(A138952(A028310(2*n)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A125061

/-- `abs(A138952(A028310(2*n)))` -/
def P10139082883885245732.Spec : Prop :=
  ∀ n, P10139082883885245732.a n = A125061 n

theorem P10139082883885245732.correct : P10139082883885245732.Spec := by
  intro n
  simp only [A125061]

end A125061

/-! ## A125061.P1639663034398966617

`abs(A138952(A028310(n)+n))`
-/

namespace A125061.P1639663034398966617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (A028310 n + (n : ℤ)).toNat|

end

end A125061.P1639663034398966617

namespace A125061

/-- `abs(A138952(A028310(n)+n))` -/
def P1639663034398966617.Spec : Prop :=
  ∀ n, P1639663034398966617.a n = A125061 n

end A125061

/-! ## A125061.P6262226743096029047

`A163746(A008574(n)-2*n)`
-/

namespace A125061.P6262226743096029047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A008574 n - (2 * n : ℤ)).toNat

end

end A125061.P6262226743096029047

namespace A125061

/-- `A163746(A008574(n)-2*n)` -/
def P6262226743096029047.Spec : Prop :=
  ∀ n, P6262226743096029047.a n = A125061 n

end A125061

/-! ## A125061.P2578200059768914077

`A163746(A008574(n)-n-n)`
-/

namespace A125061.P2578200059768914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A008574 n - (n : ℤ) - (n : ℤ)).toNat

end

end A125061.P2578200059768914077

namespace A125061

/-- `A163746(A008574(n)-n-n)` -/
def P2578200059768914077.Spec : Prop :=
  ∀ n, P2578200059768914077.a n = A125061 n

end A125061

/-! ## A125061.P14132219406451998909

`(A256269(3*n)+A122857(n))/2`
-/

namespace A125061.P14132219406451998909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256269 (3 * n) + A122857 n : ℚ) / 2

end

end A125061.P14132219406451998909

namespace A125061

/-- `(A256269(3*n)+A122857(n))/2` -/
def P14132219406451998909.Spec : Prop :=
  ∀ n, P14132219406451998909.a n = (A125061 n : ℚ)

end A125061

/-! ## A125061.P14943882891277622383

`(A132003(2*n)+A004018(3*n))/2`
-/

namespace A125061.P14943882891277622383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132003 (2 * n) + A004018 (3 * n) : ℚ) / 2

end

end A125061.P14943882891277622383

namespace A125061

/-- `(A132003(2*n)+A004018(3*n))/2` -/
def P14943882891277622383.Spec : Prop :=
  ∀ n, P14943882891277622383.a n = (A125061 n : ℚ)

end A125061

/-!
# A125062: Number of increasing trees with hills of height 1.

The programs for A125062, there is no canonical definition to state claims against.
-/

/-! ## A125062.P346633169605248873

`n*(a(n-1)+(n-2)!)` with `a(0)=1, a(1)=1`
-/

namespace A125062.P346633169605248873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * (a (n - 1) + Nat.factorial ((n : ℤ) - 2).toNat)

end

end A125062.P346633169605248873

/-! ## A125062.P4118100085268529333

`A052881(n)+n!`
-/

namespace A125062.P4118100085268529333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 n + (Nat.factorial n : ℤ)

end

end A125062.P4118100085268529333

/-! ## A125062.P10429949186210634851

`A052881(n)+A000142(n)`
-/

namespace A125062.P10429949186210634851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 n + A000142 n

end

end A125062.P10429949186210634851

/-! ## A125062.P12245946349043397521

`A000774(n)-A104150(n)`
-/

namespace A125062.P12245946349043397521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - A104150 n

end

end A125062.P12245946349043397521

/-! ## A125062.P1486513179969024574

`A052881(n)+Δ[A003422(n)]`
-/

namespace A125062.P1486513179969024574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 n + (f1 (n + 1) - f1 n)

end

end A125062.P1486513179969024574

/-! ## A125062.P5573422294358642406

`A052881(n)+∏[A028310(n)]`
-/

namespace A125062.P5573422294358642406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052881 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125062.P5573422294358642406

/-! ## A125062.P13471780411652741579

`A094304(n+1)+A000254(n)`
-/

namespace A125062.P13471780411652741579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1) + A000254 n

end

end A125062.P13471780411652741579

/-! ## A125062.P4396885402670135269

`A104150(n+1)+A052881(n)`
-/

namespace A125062.P4396885402670135269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1) + A052881 n

end

end A125062.P4396885402670135269

/-! ## A125062.P17592454469903326359

`A047920(A000124(n))+A000254(n)`
-/

namespace A125062.P17592454469903326359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000124 n).toNat + A000254 n

end

end A125062.P17592454469903326359

/-!
# A125064: Number of simple graphs on at most 16 unlabeled vertices with maximal degree at most 4 with a single cycle of length 16-n.

The programs for A125064, there is no canonical definition to state claims against.
-/

/-! ## A125064.P3320255401028360605

`A318401(A025560(n+1))+A000537(n)`
-/

namespace A125064.P3320255401028360605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318401 (A025560 (n + 1)).toNat + A000537 n

end

end A125064.P3320255401028360605

/-!
# A125066: Number of degeneracies on the sets of n ordinary trees with n vertices. These are the values of the information index, (I^w)_D, in Table 15 of the paper by Elena V. Konstantinova and Maxim V. Vidyuk.

The programs for A125066, there is no canonical definition to state claims against.
-/

/-! ## A125066.P15197425358346773695

`A326733(A001764(n))+4`
-/

namespace A125066.P15197425358346773695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326733 (A001764 n).toNat + 4

end

end A125066.P15197425358346773695

/-!
# A125067: Number of degeneracies on the sets of n ordinary trees with n vertices. These are the values of the average distance sum connectivity index, J, in Table 15 of the paper by Elena V. Konstantinova and Maxim V. Vidyuk.

The programs for A125067, there is no canonical definition to state claims against.
-/

/-! ## A125067.P16037300484788542624

`A121222(n+1)+A024155(A121251(n))`
-/

namespace A125067.P16037300484788542624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121222 (n + 1) + A024155 (A121251 n).toNat

end

end A125067.P16037300484788542624

/-!
# A125068: Number of degeneracies on the sets of n ordinary trees with n vertices. These are the values of the Randic index, 'chi', in Table 15 of the paper by Elena V. Konstantinova and Maxim V. Vidyuk.

The programs for A125068, there is no canonical definition to state claims against.
-/

/-! ## A125068.P3385577059988700978

`A102547(3*n)+A090941(A052940(n))`
-/

namespace A125068.P3385577059988700978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (3 * n) + A090941 (A052940 n).toNat

end

end A125068.P3385577059988700978

/-!
# A125069: Number of degeneracies on the sets of n ordinary trees with n vertices. These are the values of the Schultz molecular topological index, MTI, in Table 15 of the paper by Elena V. Konstantinova and Maxim V. Vidyuk.

The programs for A125069, there is no canonical definition to state claims against.
-/

/-! ## A125069.P229799535091225726

`A242963(A053658(3*n+1))-A001597(n+1)`
-/

namespace A125069.P229799535091225726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (A053658 (3 * n + 1)).toNat - A001597 (n + 1)

end

end A125069.P229799535091225726

/-!
# A125070: a(n) = number of nonzero exponents in the prime factorization of n which are not primes.

The programs for A125070, the canonical program `A125070.P10041483971528832156` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125070 has offset 1).

The definition of A125070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125070.P422200279405715893

`∑{e}[n+1, A005171(#)]`
-/

namespace A125070.P422200279405715893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005171 (Nat.factorization (f1 n) p)

end

end A125070.P422200279405715893

namespace A125070

/-- `∑{e}[n+1, A005171(#)]` -/
def P422200279405715893.Spec : Prop :=
  ∀ n, P422200279405715893.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P7164178528159078965

`∑{e}[n+1, A039651(#)]`
-/

namespace A125070.P7164178528159078965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A039651 (Nat.factorization (f1 n) p)

end

end A125070.P7164178528159078965

namespace A125070

/-- `∑{e}[n+1, A039651(#)]` -/
def P7164178528159078965.Spec : Prop :=
  ∀ n, P7164178528159078965.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P15751604554007105019

`∑{e}[n+1, A050370(#)]`
-/

namespace A125070.P15751604554007105019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050370 (Nat.factorization (f1 n) p)

end

end A125070.P15751604554007105019

namespace A125070

/-- `∑{e}[n+1, A050370(#)]` -/
def P15751604554007105019.Spec : Prop :=
  ∀ n, P15751604554007105019.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P10041483971528832156

`∑{e}[n+1, A167746(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125070

/-- `∑{e}[n+1, A167746(#)]` -/
def P10041483971528832156.Spec : Prop :=
  ∀ n, P10041483971528832156.a n = A125070 (n + 1)

theorem P10041483971528832156.correct : P10041483971528832156.Spec := by
  intro n
  simp only [A125070, Nat.add_sub_cancel]

end A125070

/-! ## A125070.P12246884979026436303

`∑{e}[n+1, A266344(#)]`
-/

namespace A125070.P12246884979026436303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A266344 (Nat.factorization (f1 n) p)

end

end A125070.P12246884979026436303

namespace A125070

/-- `∑{e}[n+1, A266344(#)]` -/
def P12246884979026436303.Spec : Prop :=
  ∀ n, P12246884979026436303.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P3540781918624445685

`A366246(A284476(n+1))`
-/

namespace A125070.P3540781918624445685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366246 (A284476 (n + 1)).toNat

end

end A125070.P3540781918624445685

namespace A125070

/-- `A366246(A284476(n+1))` -/
def P3540781918624445685.Spec : Prop :=
  ∀ n, P3540781918624445685.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P556275580057291586

`∑{e}[n+1, A284289(A001222(#))]`
-/

namespace A125070.P556275580057291586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A284289 (A001222 (Nat.factorization (f1 n) p)).toNat

end

end A125070.P556275580057291586

namespace A125070

/-- `∑{e}[n+1, A284289(A001222(#))]` -/
def P556275580057291586.Spec : Prop :=
  ∀ n, P556275580057291586.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P5088878418202125201

`A001221(n+1)-A101436(n+1)`
-/

namespace A125070.P5088878418202125201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A101436 (n + 1)

end

end A125070.P5088878418202125201

namespace A125070

/-- `A001221(n+1)-A101436(n+1)` -/
def P5088878418202125201.Spec : Prop :=
  ∀ n, P5088878418202125201.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P112164380985885114

`A001222(∏{e}[n+1, A008683(#)+2])`
-/

namespace A125070.P112164380985885114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), (A008683 (Nat.factorization (f1 n) p) + 2)).toNat

end

end A125070.P112164380985885114

namespace A125070

/-- `A001222(∏{e}[n+1, A008683(#)+2])` -/
def P112164380985885114.Spec : Prop :=
  ∀ n, P112164380985885114.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P2381228944939569348

`2*A001221(n+1)-A381401(n+1)`
-/

namespace A125070.P2381228944939569348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (n + 1) - A381401 (n + 1)

end

end A125070.P2381228944939569348

namespace A125070

/-- `2*A001221(n+1)-A381401(n+1)` -/
def P2381228944939569348.Spec : Prop :=
  ∀ n, P2381228944939569348.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P11596027140745748110

`∑{e}[n+1, A000045(A000040(A000005(#)))%2]`
-/

namespace A125070.P11596027140745748110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000045 (A000040 (A000005 (Nat.factorization (f1 n) p)).toNat).toNat) 2

end

end A125070.P11596027140745748110

namespace A125070

/-- `∑{e}[n+1, A000045(A000040(A000005(#)))%2]` -/
def P11596027140745748110.Spec : Prop :=
  ∀ n, P11596027140745748110.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P6100903811425734291

`A330944(A181819(n+1))`
-/

namespace A125070.P6100903811425734291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (A181819 (n + 1)).toNat

end

end A125070.P6100903811425734291

namespace A125070

/-- `A330944(A181819(n+1))` -/
def P6100903811425734291.Spec : Prop :=
  ∀ n, P6100903811425734291.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P590957725545972638

`A083025(A344336(n+1))`
-/

namespace A125070.P590957725545972638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A344336 (n + 1)).toNat

end

end A125070.P590957725545972638

namespace A125070

/-- `A083025(A344336(n+1))` -/
def P590957725545972638.Spec : Prop :=
  ∀ n, P590957725545972638.a n = A125070 (n + 1)

end A125070

/-! ## A125070.P3593936929129332038

`A101436(A011262(n+1))`
-/

namespace A125070.P3593936929129332038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A011262 (n + 1)).toNat

end

end A125070.P3593936929129332038

namespace A125070

/-- `A101436(A011262(n+1))` -/
def P3593936929129332038.Spec : Prop :=
  ∀ n, P3593936929129332038.a n = A125070 (n + 1)

end A125070

/-!
# A125071: a(n) = sum of the exponents in the prime factorization of n which are not primes.

The programs for A125071, the canonical program `A125071.P2644380535759538615` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125071 has offset 1).

The definition of A125071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125071.P2644380535759538615

`∑{e}[n+1, A191558(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125071

/-- `∑{e}[n+1, A191558(#)]` -/
def P2644380535759538615.Spec : Prop :=
  ∀ n, P2644380535759538615.a n = A125071 (n + 1)

theorem P2644380535759538615.correct : P2644380535759538615.Spec := by
  intro n
  simp only [A125071, Nat.add_sub_cancel]

end A125071

/-! ## A125071.P9681899923315949458

`∑{e}[n+1, #%A151800(#-1)]`
-/

namespace A125071.P9681899923315949458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (Nat.factorization (f1 n) p : ℤ) (A151800 (Nat.factorization (f1 n) p - 1))

end

end A125071.P9681899923315949458

namespace A125071

/-- `∑{e}[n+1, #%A151800(#-1)]` -/
def P9681899923315949458.Spec : Prop :=
  ∀ n, P9681899923315949458.a n = A125071 (n + 1)

end A125071

/-! ## A125071.P8671858879003847485

`∑{e}[n+1, and(#, 2-A000005(#))]`
-/

namespace A125071.P8671858879003847485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (Nat.factorization (f1 n) p : ℤ) (2 - A000005 (Nat.factorization (f1 n) p))

end

end A125071.P8671858879003847485

namespace A125071

/-- `∑{e}[n+1, and(#, 2-A000005(#))]` -/
def P8671858879003847485.Spec : Prop :=
  ∀ n, P8671858879003847485.a n = A125071 (n + 1)

end A125071

/-! ## A125071.P1008716415938665829

`A001222(n+1)-A123391(n+1)`
-/

namespace A125071.P1008716415938665829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A123391 (n + 1)

end

end A125071.P1008716415938665829

namespace A125071

/-- `A001222(n+1)-A123391(n+1)` -/
def P1008716415938665829.Spec : Prop :=
  ∀ n, P1008716415938665829.a n = A125071 (n + 1)

end A125071

/-! ## A125071.P6192350705634700476

`∑{e}[n+1, #*A266778(A001222(#))]`
-/

namespace A125071.P6192350705634700476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A266778 (A001222 (Nat.factorization (f1 n) p)).toNat

end

end A125071.P6192350705634700476

namespace A125071

/-- `∑{e}[n+1, #*A266778(A001222(#))]` -/
def P6192350705634700476.Spec : Prop :=
  ∀ n, P6192350705634700476.a n = A125071 (n + 1)

end A125071

/-! ## A125071.P16299626684847067575

`A350386(n+1)+A350387(n+1)-A123391(n+1)`
-/

namespace A125071.P16299626684847067575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350386 (n + 1) + (A350387 (n + 1) - A123391 (n + 1))

end

end A125071.P16299626684847067575

namespace A125071

/-- `A350386(n+1)+A350387(n+1)-A123391(n+1)` -/
def P16299626684847067575.Spec : Prop :=
  ∀ n, P16299626684847067575.a n = A125071 (n + 1)

end A125071

/-!
# A125072: a(n) = number of exponents in the prime-factorization of n which are triangular numbers.

The programs for A125072, the canonical program `A125072.P10935672453325630625` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125072 has offset 1).

The definition of A125072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125072.P10935672453325630625

`∑{e}[n+1, A010054(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125072

/-- `∑{e}[n+1, A010054(#)]` -/
def P10935672453325630625.Spec : Prop :=
  ∀ n, P10935672453325630625.a n = A125072 (n + 1)

theorem P10935672453325630625.correct : P10935672453325630625.Spec := by
  intro n
  simp only [A125072, Nat.add_sub_cancel]

end A125072

/-! ## A125072.P14368810271089637817

`∑{e}[n+1, A033776(#)]`
-/

namespace A125072.P14368810271089637817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033776 (Nat.factorization (f1 n) p)

end

end A125072.P14368810271089637817

namespace A125072

/-- `∑{e}[n+1, A033776(#)]` -/
def P14368810271089637817.Spec : Prop :=
  ∀ n, P14368810271089637817.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P18392698829790297917

`∑{e}[n+1, A033778(#)]`
-/

namespace A125072.P18392698829790297917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033778 (Nat.factorization (f1 n) p)

end

end A125072.P18392698829790297917

namespace A125072

/-- `∑{e}[n+1, A033778(#)]` -/
def P18392698829790297917.Spec : Prop :=
  ∀ n, P18392698829790297917.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P13138516339328474950

`∑{e}[n+1, A033782(#)]`
-/

namespace A125072.P13138516339328474950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033782 (Nat.factorization (f1 n) p)

end

end A125072.P13138516339328474950

namespace A125072

/-- `∑{e}[n+1, A033782(#)]` -/
def P13138516339328474950.Spec : Prop :=
  ∀ n, P13138516339328474950.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P9991843039107473557

`∑{e}[n+1, A033788(#)]`
-/

namespace A125072.P9991843039107473557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033788 (Nat.factorization (f1 n) p)

end

end A125072.P9991843039107473557

namespace A125072

/-- `∑{e}[n+1, A033788(#)]` -/
def P9991843039107473557.Spec : Prop :=
  ∀ n, P9991843039107473557.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P728628417498582069

`∑{e}[n+1, A033790(#)]`
-/

namespace A125072.P728628417498582069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033790 (Nat.factorization (f1 n) p)

end

end A125072.P728628417498582069

namespace A125072

/-- `∑{e}[n+1, A033790(#)]` -/
def P728628417498582069.Spec : Prop :=
  ∀ n, P728628417498582069.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P12055935811993787102

`∑{e}[n+1, A033796(#)]`
-/

namespace A125072.P12055935811993787102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033796 (Nat.factorization (f1 n) p)

end

end A125072.P12055935811993787102

namespace A125072

/-- `∑{e}[n+1, A033796(#)]` -/
def P12055935811993787102.Spec : Prop :=
  ∀ n, P12055935811993787102.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P13504916145631276850

`∑{e}[n+1, A033800(#)]`
-/

namespace A125072.P13504916145631276850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033800 (Nat.factorization (f1 n) p)

end

end A125072.P13504916145631276850

namespace A125072

/-- `∑{e}[n+1, A033800(#)]` -/
def P13504916145631276850.Spec : Prop :=
  ∀ n, P13504916145631276850.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P10762967260501481546

`∑{e}[n+1, A033802(#)]`
-/

namespace A125072.P10762967260501481546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033802 (Nat.factorization (f1 n) p)

end

end A125072.P10762967260501481546

namespace A125072

/-- `∑{e}[n+1, A033802(#)]` -/
def P10762967260501481546.Spec : Prop :=
  ∀ n, P10762967260501481546.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P16104053598081362480

`∑{e}[n+1, A033806(#)]`
-/

namespace A125072.P16104053598081362480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033806 (Nat.factorization (f1 n) p)

end

end A125072.P16104053598081362480

namespace A125072

/-- `∑{e}[n+1, A033806(#)]` -/
def P16104053598081362480.Spec : Prop :=
  ∀ n, P16104053598081362480.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P9179713340501076107

`∑{e}[n+1, A073424(#)]`
-/

namespace A125072.P9179713340501076107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A073424 (Nat.factorization (f1 n) p)

end

end A125072.P9179713340501076107

namespace A125072

/-- `∑{e}[n+1, A073424(#)]` -/
def P9179713340501076107.Spec : Prop :=
  ∀ n, P9179713340501076107.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P15477444758152771292

`∑{e}[n+1, A265421(#)]`
-/

namespace A125072.P15477444758152771292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A265421 (Nat.factorization (f1 n) p)

end

end A125072.P15477444758152771292

namespace A125072

/-- `∑{e}[n+1, A265421(#)]` -/
def P15477444758152771292.Spec : Prop :=
  ∀ n, P15477444758152771292.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P9838509079593843126

`∑{e}[(n+1)², A005369(#)]`
-/

namespace A125072.P9838509079593843126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005369 (Nat.factorization (f1 n) p)

end

end A125072.P9838509079593843126

namespace A125072

/-- `∑{e}[(n+1)², A005369(#)]` -/
def P9838509079593843126.Spec : Prop :=
  ∀ n, P9838509079593843126.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P6850491397479485251

`∑{e}[n+1, A008683((A286578(#+2)+1)!)²]`
-/

namespace A125072.P6850491397479485251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008683 (Nat.factorial (A286578 (Nat.factorization (f1 n) p + 2) + 1).toNat) ^ 2

end

end A125072.P6850491397479485251

namespace A125072

/-- `∑{e}[n+1, A008683((A286578(#+2)+1)!)²]` -/
def P6850491397479485251.Spec : Prop :=
  ∀ n, P6850491397479485251.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P11727518959458528308

`∑{e}[n+1, A288729(A249952(#))]`
-/

namespace A125072.P11727518959458528308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A288729 (A249952 (Nat.factorization (f1 n) p)).toNat

end

end A125072.P11727518959458528308

namespace A125072

/-- `∑{e}[n+1, A288729(A249952(#))]` -/
def P11727518959458528308.Spec : Prop :=
  ∀ n, P11727518959458528308.a n = A125072 (n + 1)

end A125072

/-! ## A125072.P17386521413038342548

`A366247(A159253(n+1))`
-/

namespace A125072.P17386521413038342548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366247 (A159253 (n + 1)).toNat

end

end A125072.P17386521413038342548

namespace A125072

/-- `A366247(A159253(n+1))` -/
def P17386521413038342548.Spec : Prop :=
  ∀ n, P17386521413038342548.a n = A125072 (n + 1)

end A125072

/-!
# A125073: a(n) = sum of the exponents in the prime factorization of n which are triangular numbers.

The programs for A125073, the canonical program `A125073.P701990710138125406` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125073 has offset 1).

The definition of A125073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125073.P11104846112801122117

`∑{e}[n+1, A127773(#)]`
-/

namespace A125073.P11104846112801122117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A127773 (Nat.factorization (f1 n) p)

end

end A125073.P11104846112801122117

namespace A125073

/-- `∑{e}[n+1, A127773(#)]` -/
def P11104846112801122117.Spec : Prop :=
  ∀ n, P11104846112801122117.a n = A125073 (n + 1)

end A125073

/-! ## A125073.P701990710138125406

`∑{e}[n+1, #*A010054(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125073

/-- `∑{e}[n+1, #*A010054(#)]` -/
def P701990710138125406.Spec : Prop :=
  ∀ n, P701990710138125406.a n = A125073 (n + 1)

theorem P701990710138125406.correct : P701990710138125406.Spec := by
  intro n
  simp only [A125073, Nat.add_sub_cancel]

end A125073

/-! ## A125073.P9681349790822256245

`∑{e}[n+1, #*A073424(#)]`
-/

namespace A125073.P9681349790822256245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A073424 (Nat.factorization (f1 n) p)

end

end A125073.P9681349790822256245

namespace A125073

/-- `∑{e}[n+1, #*A073424(#)]` -/
def P9681349790822256245.Spec : Prop :=
  ∀ n, P9681349790822256245.a n = A125073 (n + 1)

end A125073

/-! ## A125073.P17026057735784432763

`∑{e}[n+1, C(#, A167128(#+1)²)]`
-/

namespace A125073.P17026057735784432763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) (A167128 (Nat.factorization (f1 n) p + 1) ^ 2).toNat

end

end A125073.P17026057735784432763

namespace A125073

/-- `∑{e}[n+1, C(#, A167128(#+1)²)]` -/
def P17026057735784432763.Spec : Prop :=
  ∀ n, (P17026057735784432763.a n : ℤ) = A125073 (n + 1)

end A125073

/-! ## A125073.P10543335781101055274

`∑{e}[n+1, #*A036987(A347678(#+1))]`
-/

namespace A125073.P10543335781101055274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A036987 (A347678 (Nat.factorization (f1 n) p + 1)).toNat

end

end A125073.P10543335781101055274

namespace A125073

/-- `∑{e}[n+1, #*A036987(A347678(#+1))]` -/
def P10543335781101055274.Spec : Prop :=
  ∀ n, P10543335781101055274.a n = A125073 (n + 1)

end A125073

/-!
# A125075: Consider the smallest k such that prime(k) > n*composite(k). Sequence gives composite(k).

The programs for A125075, there is no canonical definition to state claims against.
-/

/-! ## A125075.P12786782438050665518

`A002808(A073459(n+1))`
-/

namespace A125075.P12786782438050665518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A073459 (n + 1)).toNat

end

end A125075.P12786782438050665518

/-! ## A125075.P6015921278808650910

`A018252(A073459(n+1)+1)`
-/

namespace A125075.P6015921278808650910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A073459 (n + 1) + 1).toNat

end

end A125075.P6015921278808650910

/-! ## A125075.P16484698022498997405

`A065090(A073459(n+1)+2)`
-/

namespace A125075.P16484698022498997405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A073459 (n + 1) + 2).toNat

end

end A125075.P16484698022498997405

/-! ## A125075.P12665724890225880315

`A141468(A073459(n+1)+2)`
-/

namespace A125075.P12665724890225880315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A073459 (n + 1) + 2).toNat

end

end A125075.P12665724890225880315

/-! ## A125075.P8280442781105686696

`A002808(A000720(A093864(n+1)))`
-/

namespace A125075.P8280442781105686696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000720 (A093864 (n + 1)).toNat).toNat

end

end A125075.P8280442781105686696

/-!
# A125076: Triangle with trigonometric properties.

The programs for A125076, there is no canonical definition to state claims against.
-/

/-! ## A125076.P7944117961441154035

`A152063(A056537(n+1))`
-/

namespace A125076.P7944117961441154035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (A056537 (n + 1)).toNat

end

end A125076.P7944117961441154035

/-! ## A125076.P1145599247030644358

`A152063(A194061(n+1)+1)`
-/

namespace A125076.P1145599247030644358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (A194061 (n + 1) + 1).toNat

end

end A125076.P1145599247030644358

/-! ## A125076.P2256124592741260655

`A101646(A183244(n+1))`
-/

namespace A125076.P2256124592741260655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101646 (A183244 (n + 1)).toNat

end

end A125076.P2256124592741260655

/-! ## A125076.P16836637329380803434

`A070939(A283432(n*A050782(n)))`
-/

namespace A125076.P16836637329380803434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A283432 ((n : ℤ) * A050782 n).toNat).toNat

end

end A125076.P16836637329380803434

/-! ## A125076.P4759665138891322944

`A070939(A283432(n)^A050782(n))`
-/

namespace A125076.P4759665138891322944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A283432 n : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A125076.P4759665138891322944

/-!
# A125077: #4 in an infinite set of generalized Pascal's triangles with trigonometric properties.

The programs for A125077, there is no canonical definition to state claims against.
-/

/-! ## A125077.P14346006830070866316

`A180063(A277112(n))`
-/

namespace A125077.P14346006830070866316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (A277112 n).toNat

end

end A125077.P14346006830070866316

/-! ## A125077.P1500745750416756178

`A180063(comp[A003499(n+2)])`
-/

namespace A125077.P1500745750416756178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125077.P1500745750416756178

/-! ## A125077.P8906279051948178392

`A180063(comp[A055271(n+2)])`
-/

namespace A125077.P8906279051948178392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055271 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125077.P8906279051948178392

/-! ## A125077.P15875873277749716490

`A180063(comp[A023545(n+3)])`
-/

namespace A125077.P15875873277749716490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125077.P15875873277749716490

/-! ## A125077.P4232555315396298776

`A180063(comp[A180068(n+6)])`
-/

namespace A125077.P4232555315396298776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180068 (n + 6)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180063 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125077.P4232555315396298776

/-!
# A125079: Excess of number of divisors of 2n+1 of form 12k+1, 12k+5 over those of form 12k+7, 12k+11.

The programs for A125079, the canonical program `A125079.P1710399594586959767` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125079 has offset 0).

The definition of A125079 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125079.P1710399594586959767

`A035154(2*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125079

/-- `A035154(2*n+1)` -/
def P1710399594586959767.Spec : Prop :=
  ∀ n, P1710399594586959767.a n = A125079 n

theorem P1710399594586959767.correct : P1710399594586959767.Spec := by
  intro n
  simp only [A125079]

end A125079

/-! ## A125079.P16476173226814525307

`abs(A129447(n))`
-/

namespace A125079.P16476173226814525307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129447 n|

end

end A125079.P16476173226814525307

namespace A125079

/-- `abs(A129447(n))` -/
def P16476173226814525307.Spec : Prop :=
  ∀ n, P16476173226814525307.a n = A125079 n

end A125079

/-! ## A125079.P196352579294365600

`A178786(A129447(n)²)`
-/

namespace A125079.P196352579294365600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A129447 n ^ 2).toNat

end

end A125079.P196352579294365600

namespace A125079

/-- `A178786(A129447(n)²)` -/
def P196352579294365600.Spec : Prop :=
  ∀ n, P196352579294365600.a n = A125079 n

end A125079

/-! ## A125079.P13385296945392390929

`A178786(A129447(n)^2)`
-/

namespace A125079.P13385296945392390929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A129447 n ^ 2).toNat

end

end A125079.P13385296945392390929

namespace A125079

/-- `A178786(A129447(n)^2)` -/
def P13385296945392390929.Spec : Prop :=
  ∀ n, P13385296945392390929.a n = A125079 n

end A125079

/-! ## A125079.P10738281444894773691

`A033999(n)*A129447(n)`
-/

namespace A125079.P10738281444894773691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A129447 n

end

end A125079.P10738281444894773691

namespace A125079

/-- `A033999(n)*A129447(n)` -/
def P10738281444894773691.Spec : Prop :=
  ∀ n, P10738281444894773691.a n = A125079 n

end A125079

/-! ## A125079.P13553666266753145917

`A138741(n)/A010684(n)`
-/

namespace A125079.P13553666266753145917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138741 n : ℚ) / (A010684 n : ℚ)

end

end A125079.P13553666266753145917

namespace A125079

/-- `A138741(n)/A010684(n)` -/
def P13553666266753145917.Spec : Prop :=
  ∀ n, P13553666266753145917.a n = (A125079 n : ℚ)

end A125079

/-! ## A125079.P4899587145631610761

`gcd(A000038(n), A129447(n))`
-/

namespace A125079.P4899587145631610761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A129447 n)

end

end A125079.P4899587145631610761

namespace A125079

/-- `gcd(A000038(n), A129447(n))` -/
def P4899587145631610761.Spec : Prop :=
  ∀ n, (P4899587145631610761.a n : ℤ) = A125079 n

end A125079

/-! ## A125079.P14189906731710933150

`lcm(A020985(n), A129447(n))`
-/

namespace A125079.P14189906731710933150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A129447 n)

end

end A125079.P14189906731710933150

namespace A125079

/-- `lcm(A020985(n), A129447(n))` -/
def P14189906731710933150.Spec : Prop :=
  ∀ n, (P14189906731710933150.a n : ℤ) = A125079 n

end A125079

/-! ## A125079.P17455940444215823928

`A138741(n)/A073575(n+1)`
-/

namespace A125079.P17455940444215823928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138741 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A125079.P17455940444215823928

namespace A125079

/-- `A138741(n)/A073575(n+1)` -/
def P17455940444215823928.Spec : Prop :=
  ∀ n, P17455940444215823928.a n = (A125079 n : ℚ)

end A125079

/-! ## A125079.P12726466973687535873

`(2-A010684(n))*A129447(n)`
-/

namespace A125079.P12726466973687535873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A129447 n

end

end A125079.P12726466973687535873

namespace A125079

/-- `(2-A010684(n))*A129447(n)` -/
def P12726466973687535873.Spec : Prop :=
  ∀ n, P12726466973687535873.a n = A125079 n

end A125079

/-! ## A125079.P13933120568029746357

`A138741(n)/(2-A033999(n))`
-/

namespace A125079.P13933120568029746357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138741 n : ℚ) / (2 - A033999 n : ℚ)

end

end A125079.P13933120568029746357

namespace A125079

/-- `A138741(n)/(2-A033999(n))` -/
def P13933120568029746357.Spec : Prop :=
  ∀ n, P13933120568029746357.a n = (A125079 n : ℚ)

end A125079

/-! ## A125079.P13275533851798622391

`(2-A073575(n+1))*A129447(n)`
-/

namespace A125079.P13275533851798622391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A073575 (n + 1)) * A129447 n

end

end A125079.P13275533851798622391

namespace A125079

/-- `(2-A073575(n+1))*A129447(n)` -/
def P13275533851798622391.Spec : Prop :=
  ∀ n, P13275533851798622391.a n = A125079 n

end A125079

/-! ## A125079.P9061157612015944508

`A008441(A014682(n))`
-/

namespace A125079.P9061157612015944508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A014682 n).toNat

end

end A125079.P9061157612015944508

namespace A125079

/-- `A008441(A014682(n))` -/
def P9061157612015944508.Spec : Prop :=
  ∀ n, P9061157612015944508.a n = A125079 n

end A125079

/-! ## A125079.P5238863540658244835

`A035181(Δ[n²])`
-/

namespace A125079.P5238863540658244835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A125079.P5238863540658244835

namespace A125079

/-- `A035181(Δ[n²])` -/
def P5238863540658244835.Spec : Prop :=
  ∀ n, P5238863540658244835.a n = A125079 n

end A125079

/-! ## A125079.P4926818258461686315

`A132004(Δ[n²])`
-/

namespace A125079.P4926818258461686315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A125079.P4926818258461686315

namespace A125079

/-- `A132004(Δ[n²])` -/
def P4926818258461686315.Spec : Prop :=
  ∀ n, P4926818258461686315.a n = A125079 n

end A125079

/-! ## A125079.P3954639204782570681

`abs(A113446(Δ[n²]))`
-/

namespace A125079.P3954639204782570681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A125079.P3954639204782570681

namespace A125079

/-- `abs(A113446(Δ[n²]))` -/
def P3954639204782570681.Spec : Prop :=
  ∀ n, P3954639204782570681.a n = A125079 n

end A125079

/-! ## A125079.P1147082774915319367

`A122857(Δ[n²])/2`
-/

namespace A125079.P1147082774915319367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A125079.P1147082774915319367

namespace A125079

/-- `A122857(Δ[n²])/2` -/
def P1147082774915319367.Spec : Prop :=
  ∀ n, P1147082774915319367.a n = (A125079 n : ℚ)

end A125079

/-! ## A125079.P14299796992536885346

`abs(A121450(2*n+1))`
-/

namespace A125079.P14299796992536885346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121450 (2 * n + 1)|

end

end A125079.P14299796992536885346

namespace A125079

/-- `abs(A121450(2*n+1))` -/
def P14299796992536885346.Spec : Prop :=
  ∀ n, P14299796992536885346.a n = A125079 n

end A125079

/-! ## A125079.P2337063566820618625

`abs(A132004(2*n+1))`
-/

namespace A125079.P2337063566820618625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132004 (2 * n + 1)|

end

end A125079.P2337063566820618625

namespace A125079

/-- `abs(A132004(2*n+1))` -/
def P2337063566820618625.Spec : Prop :=
  ∀ n, P2337063566820618625.a n = A125079 n

end A125079

/-! ## A125079.P18016633119030902511

`∑{d}[2*n+1, A174784(#)]`
-/

namespace A125079.P18016633119030902511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174784 d

end

end A125079.P18016633119030902511

namespace A125079

/-- `∑{d}[2*n+1, A174784(#)]` -/
def P18016633119030902511.Spec : Prop :=
  ∀ n, P18016633119030902511.a n = A125079 n

end A125079

/-!
# A125081: Number of degeneracies on the sets of n ordinary trees with n vertices. These are the values of the Wiener number, W, in Table 15 of the paper by Elena V. Konstantinova and Maxim V. Vidyuk.

The programs for A125081, there is no canonical definition to state claims against.
-/

/-! ## A125081.P9213942023337337410

`A007306(A353183(n+1)-A000041(n))`
-/

namespace A125081.P9213942023337337410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A353183 (n + 1) - A000041 n).toNat

end

end A125081.P9213942023337337410

/-!
# A125082: a(n) = n^4 - n^3 - n^2 - n - 1.

The programs for A125082, the canonical program `A125082.P5330453548459982498` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125082 has offset 0).

The definition of A125082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-n^3-n²-n-1` (program `A125082.P5330453548459982498`, by `A125082.P5330453548459982498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125082.P5330453548459982498

`n^4-n^3-n²-n-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125082

/-- `n^4-n^3-n²-n-1` -/
def P5330453548459982498.Spec : Prop :=
  ∀ n, P5330453548459982498.a n = A125082 n

theorem P5330453548459982498.correct : P5330453548459982498.Spec := by
  intro n
  simp only [A125082]

end A125082

/-! ## A125082.P10423953061384115081

`xor(1, A152016(n)-2)`
-/

namespace A125082.P10423953061384115081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A152016 n - 2)

end

end A125082.P10423953061384115081

namespace A125082

/-- `xor(1, A152016(n)-2)` -/
def P10423953061384115081.Spec : Prop :=
  ∀ n, P10423953061384115081.a n = A125082 n

end A125082

/-! ## A125082.P3654583997875374175

`or(1, A132998(n)-(n+1))`
-/

namespace A125082.P3654583997875374175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132998 n - (n + 1 : ℤ))

end

end A125082.P3654583997875374175

namespace A125082

/-- `or(1, A132998(n)-(n+1))` -/
def P3654583997875374175.Spec : Prop :=
  ∀ n, P3654583997875374175.a n = A125082 n

end A125082

/-! ## A125082.P11213933090686115696

`-(A027444(n)+A024002(n))`
-/

namespace A125082.P11213933090686115696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A027444 n + A024002 n)

end

end A125082.P11213933090686115696

namespace A125082

/-- `-(A027444(n)+A024002(n))` -/
def P11213933090686115696.Spec : Prop :=
  ∀ n, P11213933090686115696.a n = A125082 n

theorem P11213933090686115696.correct : P11213933090686115696.Spec := by
  intro n
  simp only [A125082, Nat.add_sub_cancel, A125082.P11213933090686115696.a, A125082.P5330453548459982498.a, A024002, A024002.P17733923598411083701.a, A027444, A027444.P13486811862535796769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A125082

/-! ## A125082.P748997510685571701

`(A132998(n)-(n+1))%A052226(n+1)`
-/

namespace A125082.P748997510685571701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132998 n - (n + 1 : ℤ)) (A052226 (n + 1))

end

end A125082.P748997510685571701

namespace A125082

/-- `(A132998(n)-(n+1))%A052226(n+1)` -/
def P748997510685571701.Spec : Prop :=
  ∀ n, P748997510685571701.a n = A125082 n

end A125082

/-! ## A125082.P9577524795801354610

`(A132998(n)-(n+1))*A055396(2*(n+1))`
-/

namespace A125082.P9577524795801354610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132998 n - (n + 1 : ℤ)) * A055396 (2 * (n + 1))

end

end A125082.P9577524795801354610

namespace A125082

/-- `(A132998(n)-(n+1))*A055396(2*(n+1))` -/
def P9577524795801354610.Spec : Prop :=
  ∀ n, P9577524795801354610.a n = A125082 n

end A125082

/-! ## A125082.P11191636590505114108

`xor(A132998(n)-(n+1), A010057(A062679(n+1)))`
-/

namespace A125082.P11191636590505114108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132998 n - (n + 1 : ℤ)) (A010057 (A062679 (n + 1)).toNat)

end

end A125082.P11191636590505114108

namespace A125082

/-- `xor(A132998(n)-(n+1), A010057(A062679(n+1)))` -/
def P11191636590505114108.Spec : Prop :=
  ∀ n, P11191636590505114108.a n = A125082 n

end A125082

/-! ## A125082.P8589758445104280172

`xor(A132998(n)-(n+1), A004247(C(n, 2)))`
-/

namespace A125082.P8589758445104280172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A132998 n - (n + 1 : ℤ)) (A004247 (Nat.choose n 2))

end

end A125082.P8589758445104280172

namespace A125082

/-- `xor(A132998(n)-(n+1), A004247(C(n, 2)))` -/
def P8589758445104280172.Spec : Prop :=
  ∀ n, P8589758445104280172.a n = A125082 n

end A125082

/-! ## A125082.P17233463884498880952

`(A132998(n)-(n+1))%A244835(A004277(n))`
-/

namespace A125082.P17233463884498880952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132998 n - (n + 1 : ℤ)) (A244835 (A004277 n).toNat)

end

end A125082.P17233463884498880952

namespace A125082

/-- `(A132998(n)-(n+1))%A244835(A004277(n))` -/
def P17233463884498880952.Spec : Prop :=
  ∀ n, P17233463884498880952.a n = A125082 n

end A125082

/-!
# A125083: a(n) = n^5-n^4-n^3-n^2-n-1.

The programs for A125083, the canonical program `A125083.P17313036711745724215` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125083 has offset 0).

The definition of A125083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4-n^3-n²-n-1` (program `A125083.P17313036711745724215`, by `A125083.P17313036711745724215.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A125083.P17313036711745724215

`n^5-n^4-n^3-n²-n-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125083

/-- `n^5-n^4-n^3-n²-n-1` -/
def P17313036711745724215.Spec : Prop :=
  ∀ n, P17313036711745724215.a n = A125083 n

theorem P17313036711745724215.correct : P17313036711745724215.Spec := by
  intro n
  simp only [A125083]

end A125083

/-! ## A125083.P14001465464732735475

`xor(-1, -A152017(n))`
-/

namespace A125083.P14001465464732735475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A152017 n)

end

end A125083.P14001465464732735475

namespace A125083

/-- `xor(-1, -A152017(n))` -/
def P14001465464732735475.Spec : Prop :=
  ∀ n, P14001465464732735475.a n = A125083 n

end A125083

/-! ## A125083.P421692779859349780

`-(A027445(n)+A024003(n))`
-/

namespace A125083.P421692779859349780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A027445 n + A024003 n)

end

end A125083.P421692779859349780

namespace A125083

/-- `-(A027445(n)+A024003(n))` -/
def P421692779859349780.Spec : Prop :=
  ∀ n, P421692779859349780.a n = A125083 n

theorem P421692779859349780.correct : P421692779859349780.Spec := by
  intro n
  simp only [A125083, Nat.add_sub_cancel, A125083.P421692779859349780.a, A125083.P17313036711745724215.a, A024003, A024003.P9184774219160180946.a, A027445, A027445.P2062535294747488403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A125083

/-! ## A125083.P17112679467358741758

`or(A152017(n)-1, A000007(n))`
-/

namespace A125083.P17112679467358741758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152017 n - 1) (A000007 n)

end

end A125083.P17112679467358741758

namespace A125083

/-- `or(A152017(n)-1, A000007(n))` -/
def P17112679467358741758.Spec : Prop :=
  ∀ n, P17112679467358741758.a n = A125083 n

end A125083

/-! ## A125083.P6442683210224223786

`or(A152017(n)-1, A000038(n))`
-/

namespace A125083.P6442683210224223786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152017 n - 1) (A000038 n)

end

end A125083.P6442683210224223786

namespace A125083

/-- `or(A152017(n)-1, A000038(n))` -/
def P6442683210224223786.Spec : Prop :=
  ∀ n, P6442683210224223786.a n = A125083 n

end A125083

/-! ## A125083.P12849128589533681295

`∑{e}[A063792(n+1), A152017(n)-#]`
-/

namespace A125083.P12849128589533681295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A152017 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A125083.P12849128589533681295

namespace A125083

/-- `∑{e}[A063792(n+1), A152017(n)-#]` -/
def P12849128589533681295.Spec : Prop :=
  ∀ n, P12849128589533681295.a n = A125083 n

end A125083

/-! ## A125083.P2125499822400743684

`or(A152017(n)-1, char[2*A005836(n+1)])`
-/

namespace A125083.P2125499822400743684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152017 n - 1) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125083.P2125499822400743684

namespace A125083

/-- `or(A152017(n)-1, char[2*A005836(n+1)])` -/
def P2125499822400743684.Spec : Prop :=
  ∀ n, P2125499822400743684.a n = A125083 n

end A125083

/-! ## A125083.P5530725536797796823

`(A027445(n)+A024003(n))*A321800(A001316(n))`
-/

namespace A125083.P5530725536797796823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027445 n + A024003 n) * A321800 (A001316 n).toNat

end

end A125083.P5530725536797796823

namespace A125083

/-- `(A027445(n)+A024003(n))*A321800(A001316(n))` -/
def P5530725536797796823.Spec : Prop :=
  ∀ n, P5530725536797796823.a n = A125083 n

end A125083

/-! ## A125083.P7502159960869217798

`(A027445(n)+A024003(n))*A008683(A063792(n+1))`
-/

namespace A125083.P7502159960869217798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027445 n + A024003 n) * A008683 (A063792 (n + 1)).toNat

end

end A125083.P7502159960869217798

namespace A125083

/-- `(A027445(n)+A024003(n))*A008683(A063792(n+1))` -/
def P7502159960869217798.Spec : Prop :=
  ∀ n, P7502159960869217798.a n = A125083 n

end A125083

/-! ## A125083.P18083509153454782379

`∑{e}[A306787(n+1), A152017(n)-#]`
-/

namespace A125083.P18083509153454782379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A152017 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A125083.P18083509153454782379

namespace A125083

/-- `∑{e}[A306787(n+1), A152017(n)-#]` -/
def P18083509153454782379.Spec : Prop :=
  ∀ n, P18083509153454782379.a n = A125083 n

end A125083

/-! ## A125083.P5494858188959993904

`(A027445(n)+A024003(n))*A008683(A306787(n+1))`
-/

namespace A125083.P5494858188959993904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027445 n + A024003 n) * A008683 (A306787 (n + 1)).toNat

end

end A125083.P5494858188959993904

namespace A125083

/-- `(A027445(n)+A024003(n))*A008683(A306787(n+1))` -/
def P5494858188959993904.Spec : Prop :=
  ∀ n, P5494858188959993904.a n = A125083 n

end A125083

/-! ## A125083.P16781824442311322139

`(A152017(n)-1)%A252509(n+1)`
-/

namespace A125083.P16781824442311322139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152017 n - 1) (A252509 (n + 1))

end

end A125083.P16781824442311322139

namespace A125083

/-- `(A152017(n)-1)%A252509(n+1)` -/
def P16781824442311322139.Spec : Prop :=
  ∀ n, P16781824442311322139.a n = A125083 n

end A125083

/-!
# A125084: Cubes which have a partition as the sum of 3 squares.

The programs for A125084, there is no canonical definition to state claims against.
-/

/-! ## A125084.P10594176938867622079

`A000378(n+1)^3`
-/

namespace A125084.P10594176938867622079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1) ^ 3

end

end A125084.P10594176938867622079

/-! ## A125084.P7139585190701926472

`comp[A004215(n+1)]^3`
-/

namespace A125084.P7139585190701926472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A125084.P7139585190701926472

/-! ## A125084.P12444341745745036706

`(A034045(n+1)/4)^3`
-/

namespace A125084.P12444341745745036706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034045 (n + 1) : ℚ) / 4) ^ 3

end

end A125084.P12444341745745036706

/-! ## A125084.P2323701331280003376

`∪[A047449(n+1), A004014(n)]^3`
-/

namespace A125084.P2323701331280003376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A125084.P2323701331280003376

/-! ## A125084.P6275101804524472991

`eq[0, A072401(n)]^3`
-/

namespace A125084.P6275101804524472991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A125084.P6275101804524472991

/-! ## A125084.P15804718013975051898

`lt[0, A283273(n)]^3`
-/

namespace A125084.P15804718013975051898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A125084.P15804718013975051898

/-! ## A125084.P2508326363382690779

`A000578(A000378(n+1))`
-/

namespace A125084.P2508326363382690779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000378 (n + 1)).toNat

end

end A125084.P2508326363382690779

/-! ## A125084.P17906357258638221238

`A000578(lt[A002828(n), 4])`
-/

namespace A125084.P17906357258638221238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125084.P17906357258638221238

/-! ## A125084.P8351191926695834097

`A000578(A034045(n+1)/4)`
-/

namespace A125084.P8351191926695834097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A034045 (n + 1) : ℚ) / 4)).toNat

end

end A125084.P8351191926695834097

/-! ## A125084.P9603913576542696524

`A000578(record[n%(A025427(n)+A000161(n)+n)])`
-/

namespace A125084.P9603913576542696524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A025427 n + A000161 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125084.P9603913576542696524

/-! ## A125084.P5590452324894428377

`A008218(A034045(n+1))`
-/

namespace A125084.P5590452324894428377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (A034045 (n + 1)).toNat

end

end A125084.P5590452324894428377

/-!
# A125085: Indices n corresponding to the terms in A153353.

The programs for A125085, there is no canonical definition to state claims against.
-/

/-! ## A125085.P1956551084818299136

`or(A064216(A000950(n+1)), A085089(n+1))`
-/

namespace A125085.P1956551084818299136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064216 (A000950 (n + 1)).toNat) (A085089 (n + 1))

end

end A125085.P1956551084818299136

/-!
# A125086: Even numbers not in A036990.

The programs for A125086, there is no canonical definition to state claims against.
-/

/-! ## A125086.P6528446123356851964

`2*lt[2, A036989(n)]`
-/

namespace A125086.P6528446123356851964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125086.P6528446123356851964

/-! ## A125086.P8809233339891442891

`∩[2*n, A036992(n+1)]`
-/

namespace A125086.P8809233339891442891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P8809233339891442891

/-! ## A125086.P4190688267259857268

`∩[A036992(n+1), A004271(n)]`
-/

namespace A125086.P4190688267259857268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P4190688267259857268

/-! ## A125086.P13787335371756404035

`∩[A036992(n+1), A004272(n)]`
-/

namespace A125086.P13787335371756404035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P13787335371756404035

/-! ## A125086.P12177417894363362569

`∩[A036992(n+1), A004275(n)]`
-/

namespace A125086.P12177417894363362569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P12177417894363362569

/-! ## A125086.P10221169482264065787

`∩[A036992(n+1), A004277(n)]`
-/

namespace A125086.P10221169482264065787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P10221169482264065787

/-! ## A125086.P5269785672944906573

`∩[A036992(n+1), A004279(n)]`
-/

namespace A125086.P5269785672944906573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P5269785672944906573

/-! ## A125086.P5146039139058872618

`∩[A036992(n+1), A005843(n)]`
-/

namespace A125086.P5146039139058872618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P5146039139058872618

/-! ## A125086.P17631411736982744711

`∩[A036992(n+1), A020739(n)]`
-/

namespace A125086.P17631411736982744711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P17631411736982744711

/-! ## A125086.P16274120361302098543

`∩[A036992(n+1), A103517(n)]`
-/

namespace A125086.P16274120361302098543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P16274120361302098543

/-! ## A125086.P14272378741426021890

`∩[A036992(n+1), A058992(n+1)]`
-/

namespace A125086.P14272378741426021890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P14272378741426021890

/-! ## A125086.P5783061020878860535

`∩[A036992(n+1), A115036(n+1)]`
-/

namespace A125086.P5783061020878860535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P5783061020878860535

/-! ## A125086.P12415986552421664704

`∩[A036992(n+1), A163300(n+1)]`
-/

namespace A125086.P12415986552421664704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P12415986552421664704

/-! ## A125086.P4868848964667600245

`∩[A036992(n+1), A177712(n+1)]`
-/

namespace A125086.P4868848964667600245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P4868848964667600245

/-! ## A125086.P12053177405369812795

`∩[A036992(n+1), A316571(n+1)]`
-/

namespace A125086.P12053177405369812795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125086.P12053177405369812795

/-! ## A125086.P1473792155775825201

`2*eq[0, A036988(2*n)]`
-/

namespace A125086.P1473792155775825201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125086.P1473792155775825201

/-! ## A125086.P5472790206928197192

`eq[A000035(n), A036988(n)]`
-/

namespace A125086.P5472790206928197192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125086.P5472790206928197192

/-! ## A125086.P15786763739137488359

`eq[A010673(n), A036988(n)]`
-/

namespace A125086.P15786763739137488359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125086.P15786763739137488359

/-! ## A125086.P8535045107633150174

`eq[A010674(n), A036988(n)]`
-/

namespace A125086.P8535045107633150174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125086.P8535045107633150174

/-!
# A125089: First nonzero digit of solution to log_n(z) = -z, where log_n stands for the base-n logarithm.

The programs for A125089, the canonical program `A125089.P13620196273720681044` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125089 has offset 2).

The definition of A125089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125089.P13620196273720681044

`floor(7/log(sqrt(n)+3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125089

/-- `floor(7/log(sqrt(n)+3))` -/
def P13620196273720681044.Spec : Prop :=
  ∀ n, P13620196273720681044.a n = A125089 (n + 2)

theorem P13620196273720681044.correct : P13620196273720681044.Spec := by
  intro n
  simp only [A125089, Nat.add_sub_cancel]

end A125089

/-! ## A125089.P9984078663384950772

`ceil(18/log2(A328896(n+1)))`
-/

namespace A125089.P9984078663384950772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈18 / Real.logb 2 (A328896 (n + 1) : ℝ)⌉

end

end A125089.P9984078663384950772

namespace A125089

/-- `ceil(18/log2(A328896(n+1)))` -/
def P9984078663384950772.Spec : Prop :=
  ∀ n, P9984078663384950772.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P312677816989543633

`ceil(30/log2(A030627(n+1)))`
-/

namespace A125089.P312677816989543633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈30 / Real.logb 2 (A030627 (n + 1) : ℝ)⌉

end

end A125089.P312677816989543633

namespace A125089

/-- `ceil(30/log2(A030627(n+1)))` -/
def P312677816989543633.Spec : Prop :=
  ∀ n, P312677816989543633.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P17400383437396020121

`a(n-1)-char[A005155(n)]` with `a(0)=6`
-/

namespace A125089.P17400383437396020121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005155 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125089.P17400383437396020121

namespace A125089

/-- `a(n-1)-char[A005155(n)]` -/
def P17400383437396020121.Spec : Prop :=
  ∀ n, P17400383437396020121.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P16396869696579443154

`a(n-1)-char[A133316(n)]` with `a(0)=6`
-/

namespace A125089.P16396869696579443154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133316 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A125089.P16396869696579443154

namespace A125089

/-- `a(n-1)-char[A133316(n)]` -/
def P16396869696579443154.Spec : Prop :=
  ∀ n, P16396869696579443154.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P12016513781632220699

`6-A303370(A047248(n+1))`
-/

namespace A125089.P12016513781632220699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A303370 (A047248 (n + 1)).toNat

end

end A125089.P12016513781632220699

namespace A125089

/-- `6-A303370(A047248(n+1))` -/
def P12016513781632220699.Spec : Prop :=
  ∀ n, P12016513781632220699.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P7829197290589381319

`6-A303370(A047253(n+1))`
-/

namespace A125089.P7829197290589381319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A303370 (A047253 (n + 1)).toNat

end

end A125089.P7829197290589381319

namespace A125089

/-- `6-A303370(A047253(n+1))` -/
def P7829197290589381319.Spec : Prop :=
  ∀ n, P7829197290589381319.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P14084975589209300938

`6-A303370(A184520(n+1))`
-/

namespace A125089.P14084975589209300938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A303370 (A184520 (n + 1)).toNat

end

end A125089.P14084975589209300938

namespace A125089

/-- `6-A303370(A184520(n+1))` -/
def P14084975589209300938.Spec : Prop :=
  ∀ n, P14084975589209300938.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P3743650280735065267

`ceil(A008864(2*n+5)/∑[A096013(n+3)])`
-/

namespace A125089.P3743650280735065267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (2 * n + 5) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A125089.P3743650280735065267

namespace A125089

/-- `ceil(A008864(2*n+5)/∑[A096013(n+3)])` -/
def P3743650280735065267.Spec : Prop :=
  ∀ n, P3743650280735065267.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P16339341913704533563

`ceil(A024796(2*n+3)/A000414(2*(n+1)))`
-/

namespace A125089.P16339341913704533563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024796 (2 * n + 3) : ℚ) / (A000414 (2 * (n + 1)) : ℚ)⌉

end

end A125089.P16339341913704533563

namespace A125089

/-- `ceil(A024796(2*n+3)/A000414(2*(n+1)))` -/
def P16339341913704533563.Spec : Prop :=
  ∀ n, P16339341913704533563.a n = A125089 (n + 2)

end A125089

/-! ## A125089.P17576764177570901418

`A135675(a(A135660(A135675(n+1))))` with `a(0)=6`
-/

namespace A125089.P17576764177570901418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A135675 (a (A135660 (A135675 (n + 1)).toNat).toNat).toNat

end

end A125089.P17576764177570901418

namespace A125089

/-- `A135675(a(A135660(A135675(n+1))))` -/
def P17576764177570901418.Spec : Prop :=
  ∀ n, P17576764177570901418.a n = A125089 (n + 2)

end A125089

/-!
# A125090: Triangle read by rows: T(0,0)=1; for 0<=k<=n, n>=1, T(n,k) is the coefficient of x^(n-k) in the monic characteristic polynomial of the tridiagonal n X n matrix with diagonal (0,1,1,...) and super- and subdiagonals (1,1,1,...).

The programs for A125090, there is no canonical definition to state claims against.
-/

/-! ## A125090.P16665859198216763981

`A286352(n)+A056594(A286331(n))`
-/

namespace A125090.P16665859198216763981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n + A056594 (A286331 n).toNat

end

end A125090.P16665859198216763981

/-!
# A125091: Triangle read by rows: T(n,k) = (1/6)*k*(k+1)*(k+2)*binomial(n,k) (1 <= k <= n).

The programs for A125091, the canonical program `A125091.P4309155901461917817` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125091 has offset 1).

The definition of A125091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125091.P8704394584683918778

`A000292(A002260(n+1))*A135278(n)`
-/

namespace A125091.P8704394584683918778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002260 (n + 1)).toNat * A135278 n

end

end A125091.P8704394584683918778

namespace A125091

/-- `A000292(A002260(n+1))*A135278(n)` -/
def P8704394584683918778.Spec : Prop :=
  ∀ n, P8704394584683918778.a n = A125091 (n + 1)

end A125091

/-! ## A125091.P7439898098436137453

`A000292(A002262(n)+1)*A135278(n)`
-/

namespace A125091.P7439898098436137453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002262 n + 1).toNat * A135278 n

end

end A125091.P7439898098436137453

namespace A125091

/-- `A000292(A002262(n)+1)*A135278(n)` -/
def P7439898098436137453.Spec : Prop :=
  ∀ n, P7439898098436137453.a n = A125091 (n + 1)

theorem P7439898098436137453.correct : P7439898098436137453.Spec := by
  intro n
  simp only [A125091, Nat.add_sub_cancel, A125091.P7439898098436137453.a, A125091.P4309155901461917817.a, A000292, A000292.P18322089543142633594.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A010054, A010054.P18347828677204923252.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A125091

/-! ## A125091.P11521328319600447012

`A058187(A158405(n+1))*A135278(n)`
-/

namespace A125091.P11521328319600447012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (A158405 (n + 1)).toNat * A135278 n

end

end A125091.P11521328319600447012

namespace A125091

/-- `A058187(A158405(n+1))*A135278(n)` -/
def P11521328319600447012.Spec : Prop :=
  ∀ n, P11521328319600447012.a n = A125091 (n + 1)

end A125091

/-! ## A125091.P4309155901461917817

`A000292(A002260(n+1))*A074909(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125091

/-- `A000292(A002260(n+1))*A074909(n+1)` -/
def P4309155901461917817.Spec : Prop :=
  ∀ n, P4309155901461917817.a n = A125091 (n + 1)

theorem P4309155901461917817.correct : P4309155901461917817.Spec := by
  intro n
  simp only [A125091, Nat.add_sub_cancel]

end A125091

/-! ## A125091.P59029696309178449

`A135278(n)*A307394(A292564(n))`
-/

namespace A125091.P59029696309178449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A307394 (A292564 n).toNat

end

end A125091.P59029696309178449

namespace A125091

/-- `A135278(n)*A307394(A292564(n))` -/
def P59029696309178449.Spec : Prop :=
  ∀ n, P59029696309178449.a n = A125091 (n + 1)

end A125091

/-! ## A125091.P13982403453575096590

`A074909(n+1)*A307394(A292564(n))`
-/

namespace A125091.P13982403453575096590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A307394 (A292564 n).toNat

end

end A125091.P13982403453575096590

namespace A125091

/-- `A074909(n+1)*A307394(A292564(n))` -/
def P13982403453575096590.Spec : Prop :=
  ∀ n, P13982403453575096590.a n = A125091 (n + 1)

end A125091

/-! ## A125091.P16404976127559224503

`A292930(n+1)/A166350(n+1)`
-/

namespace A125091.P16404976127559224503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292930 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A125091.P16404976127559224503

namespace A125091

/-- `A292930(n+1)/A166350(n+1)` -/
def P16404976127559224503.Spec : Prop :=
  ∀ n, P16404976127559224503.a n = (A125091 (n + 1) : ℚ)

end A125091

/-! ## A125091.P7367965253034865531

`A007426(A059268(n))*A135278(n)`
-/

namespace A125091.P7367965253034865531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A059268 n).toNat * A135278 n

end

end A125091.P7367965253034865531

namespace A125091

/-- `A007426(A059268(n))*A135278(n)` -/
def P7367965253034865531.Spec : Prop :=
  ∀ n, P7367965253034865531.a n = A125091 (n + 1)

end A125091

/-! ## A125091.P16597610589999861972

`A007426(A059268(n))*A074909(n+1)`
-/

namespace A125091.P16597610589999861972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A059268 n).toNat * A074909 (n + 1)

end

end A125091.P16597610589999861972

namespace A125091

/-- `A007426(A059268(n))*A074909(n+1)` -/
def P16597610589999861972.Spec : Prop :=
  ∀ n, P16597610589999861972.a n = A125091 (n + 1)

end A125091

/-!
# A125092: Triangle read by rows: T(n,k) = (k+1)^2*binomial(n,k) (0 <= k <= n).

The programs for A125092, the canonical program `A125092.P17335827733061112781` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125092 has offset 0).

The definition of A125092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125092.P18277716966524503104

`A103406(n)²/A007318(n)`
-/

namespace A125092.P18277716966524503104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A125092.P18277716966524503104

namespace A125092

/-- `A103406(n)²/A007318(n)` -/
def P18277716966524503104.Spec : Prop :=
  ∀ n, P18277716966524503104.a n = (A125092 n : ℚ)

end A125092

/-! ## A125092.P15773156822474686138

`A002260(n+1)*A103406(n)`
-/

namespace A125092.P15773156822474686138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A103406 n

end

end A125092.P15773156822474686138

namespace A125092

/-- `A002260(n+1)*A103406(n)` -/
def P15773156822474686138.Spec : Prop :=
  ∀ n, P15773156822474686138.a n = A125092 n

end A125092

/-! ## A125092.P5751178673191054022

`(A002262(n)+1)*A103406(n)`
-/

namespace A125092.P5751178673191054022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A103406 n

end

end A125092.P5751178673191054022

namespace A125092

/-- `(A002262(n)+1)*A103406(n)` -/
def P5751178673191054022.Spec : Prop :=
  ∀ n, P5751178673191054022.a n = A125092 n

end A125092

/-! ## A125092.P8945751027316084599

`A007318(n)*A133819(n+1)`
-/

namespace A125092.P8945751027316084599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133819 (n + 1)

end

end A125092.P8945751027316084599

namespace A125092

/-- `A007318(n)*A133819(n+1)` -/
def P8945751027316084599.Spec : Prop :=
  ∀ n, P8945751027316084599.a n = A125092 n

end A125092

/-! ## A125092.P13425136591824814525

`abs(A103406(n)²/A130595(n))`
-/

namespace A125092.P13425136591824814525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A103406 n ^ 2 : ℚ) / (A130595 n : ℚ)|

end

end A125092.P13425136591824814525

namespace A125092

/-- `abs(A103406(n)²/A130595(n))` -/
def P13425136591824814525.Spec : Prop :=
  ∀ n, P13425136591824814525.a n = (A125092 n : ℚ)

end A125092

/-! ## A125092.P17370929278420689147

`A103406(n)²/sqrt(A008459(n))`
-/

namespace A125092.P17370929278420689147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A103406 n ^ 2 : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A125092.P17370929278420689147

namespace A125092

/-- `A103406(n)²/sqrt(A008459(n))` -/
def P17370929278420689147.Spec : Prop :=
  ∀ n, P17370929278420689147.a n = (A125092 n : ℝ)

end A125092

/-! ## A125092.P17457225474976871769

`A103406(n)²/Δ[A102363(n)]`
-/

namespace A125092.P17457225474976871769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A125092.P17457225474976871769

namespace A125092

/-- `A103406(n)²/Δ[A102363(n)]` -/
def P17457225474976871769.Spec : Prop :=
  ∀ n, P17457225474976871769.a n = (A125092 n : ℚ)

end A125092

/-! ## A125092.P15528163983363124324

`A002260(n+1)²*A007318(n)`
-/

namespace A125092.P15528163983363124324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * A007318 n

end

end A125092.P15528163983363124324

namespace A125092

/-- `A002260(n+1)²*A007318(n)` -/
def P15528163983363124324.Spec : Prop :=
  ∀ n, P15528163983363124324.a n = A125092 n

end A125092

/-! ## A125092.P13940265663219524006

`(A002262(n)+1)²*A007318(n)`
-/

namespace A125092.P13940265663219524006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ 2 * A007318 n

end

end A125092.P13940265663219524006

namespace A125092

/-- `(A002262(n)+1)²*A007318(n)` -/
def P13940265663219524006.Spec : Prop :=
  ∀ n, P13940265663219524006.a n = A125092 n

end A125092

/-! ## A125092.P14786492173599962130

`2/A028326(n)*A103406(n)²`
-/

namespace A125092.P14786492173599962130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A103406 n ^ 2 : ℚ)

end

end A125092.P14786492173599962130

namespace A125092

/-- `2/A028326(n)*A103406(n)²` -/
def P14786492173599962130.Spec : Prop :=
  ∀ n, P14786492173599962130.a n = (A125092 n : ℚ)

end A125092

/-! ## A125092.P13704150357568445222

`2*A124847(n+1)-A103406(n)`
-/

namespace A125092.P13704150357568445222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124847 (n + 1) - A103406 n

end

end A125092.P13704150357568445222

namespace A125092

/-- `2*A124847(n+1)-A103406(n)` -/
def P13704150357568445222.Spec : Prop :=
  ∀ n, P13704150357568445222.a n = A125092 n

end A125092

/-! ## A125092.P2061935565487573404

`abs(A002260(n+1)²*A108086(n))`
-/

namespace A125092.P2061935565487573404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) ^ 2 * A108086 n|

end

end A125092.P2061935565487573404

namespace A125092

/-- `abs(A002260(n+1)²*A108086(n))` -/
def P2061935565487573404.Spec : Prop :=
  ∀ n, P2061935565487573404.a n = A125092 n

end A125092

/-! ## A125092.P15535223720673570639

`abs(A002260(n+1)²*A130595(n))`
-/

namespace A125092.P15535223720673570639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (n + 1) ^ 2 * A130595 n|

end

end A125092.P15535223720673570639

namespace A125092

/-- `abs(A002260(n+1)²*A130595(n))` -/
def P15535223720673570639.Spec : Prop :=
  ∀ n, P15535223720673570639.a n = A125092 n

end A125092

/-! ## A125092.P16608533592455838932

`A002260(n+1)²*sqrt(A008459(n))`
-/

namespace A125092.P16608533592455838932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) ^ 2 : ℝ) * Real.sqrt (A008459 n : ℝ)

end

end A125092.P16608533592455838932

namespace A125092

/-- `A002260(n+1)²*sqrt(A008459(n))` -/
def P16608533592455838932.Spec : Prop :=
  ∀ n, P16608533592455838932.a n = (A125092 n : ℝ)

end A125092

/-! ## A125092.P12319208448996593210

`A002260(n+1)²*Δ[A102363(n)]`
-/

namespace A125092.P12319208448996593210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A125092.P12319208448996593210

namespace A125092

/-- `A002260(n+1)²*Δ[A102363(n)]` -/
def P12319208448996593210.Spec : Prop :=
  ∀ n, P12319208448996593210.a n = A125092 n

end A125092

/-! ## A125092.P17262700193488507732

`(A014473(n)+1)*A002260(n+1)²`
-/

namespace A125092.P17262700193488507732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A002260 (n + 1) ^ 2

end

end A125092.P17262700193488507732

namespace A125092

/-- `(A014473(n)+1)*A002260(n+1)²` -/
def P17262700193488507732.Spec : Prop :=
  ∀ n, P17262700193488507732.a n = A125092 n

end A125092

/-! ## A125092.P14498061500868327445

`A002260(n+1)²/2*A028326(n)`
-/

namespace A125092.P14498061500868327445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) ^ 2 : ℚ) / 2 * (A028326 n : ℚ)

end

end A125092.P14498061500868327445

namespace A125092

/-- `A002260(n+1)²/2*A028326(n)` -/
def P14498061500868327445.Spec : Prop :=
  ∀ n, P14498061500868327445.a n = (A125092 n : ℚ)

end A125092

/-! ## A125092.P8299524927637488098

`(1-A057944(n)+n)²*A007318(n)`
-/

namespace A125092.P8299524927637488098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) ^ 2 * A007318 n

end

end A125092.P8299524927637488098

namespace A125092

/-- `(1-A057944(n)+n)²*A007318(n)` -/
def P8299524927637488098.Spec : Prop :=
  ∀ n, P8299524927637488098.a n = A125092 n

end A125092

/-! ## A125092.P7455947776426241386

`A002260(n+1)²*ceil(A134059(n)/3)`
-/

namespace A125092.P7455947776426241386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 * ⌈(A134059 n : ℚ) / 3⌉

end

end A125092.P7455947776426241386

namespace A125092

/-- `A002260(n+1)²*ceil(A134059(n)/3)` -/
def P7455947776426241386.Spec : Prop :=
  ∀ n, P7455947776426241386.a n = A125092 n

end A125092

/-! ## A125092.P17335827733061112781

`A002260(n+1)²*A074909(A083920(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125092

/-- `A002260(n+1)²*A074909(A083920(n))` -/
def P17335827733061112781.Spec : Prop :=
  ∀ n, P17335827733061112781.a n = A125092 n

theorem P17335827733061112781.correct : P17335827733061112781.Spec := by
  intro n
  simp only [A125092]

end A125092

/-!
# A125093: Triangle T(n,k) = n*A054525(n,k) read by rows.

The programs for A125093, the canonical program `A125093.P12968392047181113007` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125093 has offset 1).

The definition of A125093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125093.P17847873149515384166

`∑[char[∑[n]]]*A054525(n+1)`
-/

namespace A125093.P17847873149515384166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054525 (n + 1)

end

end A125093.P17847873149515384166

namespace A125093

/-- `∑[char[∑[n]]]*A054525(n+1)` -/
def P17847873149515384166.Spec : Prop :=
  ∀ n, P17847873149515384166.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P12213254172540090380

`log2(A140513(n)^A054525(n+1))`
-/

namespace A125093.P12213254172540090380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A140513 n : ℚ) ^ (A054525 (n + 1) : ℤ) : ℝ)

end

end A125093.P12213254172540090380

namespace A125093

/-- `log2(A140513(n)^A054525(n+1))` -/
def P12213254172540090380.Spec : Prop :=
  ∀ n, P12213254172540090380.a n = (A125093 (n + 1) : ℝ)

end A125093

/-! ## A125093.P12968392047181113007

`A054525(n+1)*A002024(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A125093

/-- `A054525(n+1)*A002024(n+1)` -/
def P12968392047181113007.Spec : Prop :=
  ∀ n, P12968392047181113007.a n = A125093 (n + 1)

theorem P12968392047181113007.correct : P12968392047181113007.Spec := by
  intro n
  simp only [A125093, Nat.add_sub_cancel]

end A125093

/-! ## A125093.P15110433023253773932

`A054525(n+1)*A049840(n+1)`
-/

namespace A125093.P15110433023253773932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A049840 (n + 1)

end

end A125093.P15110433023253773932

namespace A125093

/-- `A054525(n+1)*A049840(n+1)` -/
def P15110433023253773932.Spec : Prop :=
  ∀ n, P15110433023253773932.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P1790979190482956591

`A054525(n+1)*A051173(n+1)`
-/

namespace A125093.P1790979190482956591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A051173 (n + 1)

end

end A125093.P1790979190482956591

namespace A125093

/-- `A054525(n+1)*A051173(n+1)` -/
def P1790979190482956591.Spec : Prop :=
  ∀ n, P1790979190482956591.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P16805052888267524347

`A054525(n+1)*A074712(n+1)`
-/

namespace A125093.P16805052888267524347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A074712 (n + 1)

end

end A125093.P16805052888267524347

namespace A125093

/-- `A054525(n+1)*A074712(n+1)` -/
def P16805052888267524347.Spec : Prop :=
  ∀ n, P16805052888267524347.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P1543637847497225183

`A002260(n+1)*A127139(n+1)`
-/

namespace A125093.P1543637847497225183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127139 (n + 1)

end

end A125093.P1543637847497225183

namespace A125093

/-- `A002260(n+1)*A127139(n+1)` -/
def P1543637847497225183.Spec : Prop :=
  ∀ n, P1543637847497225183.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P17514172600360584927

`A010766(n+1)*A127448(n+1)`
-/

namespace A125093.P17514172600360584927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127448 (n + 1)

end

end A125093.P17514172600360584927

namespace A125093

/-- `A010766(n+1)*A127448(n+1)` -/
def P17514172600360584927.Spec : Prop :=
  ∀ n, P17514172600360584927.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P9855929091814810967

`A049834(n+1)*A127448(n+1)`
-/

namespace A125093.P9855929091814810967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127448 (n + 1)

end

end A125093.P9855929091814810967

namespace A125093

/-- `A049834(n+1)*A127448(n+1)` -/
def P9855929091814810967.Spec : Prop :=
  ∀ n, P9855929091814810967.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P13499940964372475652

`A054525(n+1)*A123229(n+1)`
-/

namespace A125093.P13499940964372475652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A123229 (n + 1)

end

end A125093.P13499940964372475652

namespace A125093

/-- `A054525(n+1)*A123229(n+1)` -/
def P13499940964372475652.Spec : Prop :=
  ∀ n, P13499940964372475652.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P9916966040289496996

`A050873(n+1)*A127139(n+1)`
-/

namespace A125093.P9916966040289496996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127139 (n + 1)

end

end A125093.P9916966040289496996

namespace A125093

/-- `A050873(n+1)*A127139(n+1)` -/
def P9916966040289496996.Spec : Prop :=
  ∀ n, P9916966040289496996.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P4823008479119969302

`A051537(n+1)*A127448(n+1)`
-/

namespace A125093.P4823008479119969302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127448 (n + 1)

end

end A125093.P4823008479119969302

namespace A125093

/-- `A051537(n+1)*A127448(n+1)` -/
def P4823008479119969302.Spec : Prop :=
  ∀ n, P4823008479119969302.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P5607537736916706165

`A054525(n+1)*A127446(n+1)`
-/

namespace A125093.P5607537736916706165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127446 (n + 1)

end

end A125093.P5607537736916706165

namespace A125093

/-- `A054525(n+1)*A127446(n+1)` -/
def P5607537736916706165.Spec : Prop :=
  ∀ n, P5607537736916706165.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P5291288294938047423

`A054531(n+1)*A127448(n+1)`
-/

namespace A125093.P5291288294938047423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127448 (n + 1)

end

end A125093.P5291288294938047423

namespace A125093

/-- `A054531(n+1)*A127448(n+1)` -/
def P5291288294938047423.Spec : Prop :=
  ∀ n, P5291288294938047423.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P3733378009461837125

`A059026(n+1)*A127448(n+1)`
-/

namespace A125093.P3733378009461837125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127448 (n + 1)

end

end A125093.P3733378009461837125

namespace A125093

/-- `A059026(n+1)*A127448(n+1)` -/
def P3733378009461837125.Spec : Prop :=
  ∀ n, P3733378009461837125.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P17682206119529161799

`A123275(n+1)*A127139(n+1)`
-/

namespace A125093.P17682206119529161799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127139 (n + 1)

end

end A125093.P17682206119529161799

namespace A125093

/-- `A123275(n+1)*A127139(n+1)` -/
def P17682206119529161799.Spec : Prop :=
  ∀ n, P17682206119529161799.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P10977809109797345355

`A054525(n+1)*A199408(n+1)`
-/

namespace A125093.P10977809109797345355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A199408 (n + 1)

end

end A125093.P10977809109797345355

namespace A125093

/-- `A054525(n+1)*A199408(n+1)` -/
def P10977809109797345355.Spec : Prop :=
  ∀ n, P10977809109797345355.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P8965715851301723981

`A127093(n+1)*A127139(n+1)`
-/

namespace A125093.P8965715851301723981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127139 (n + 1)

end

end A125093.P8965715851301723981

namespace A125093

/-- `A127093(n+1)*A127139(n+1)` -/
def P8965715851301723981.Spec : Prop :=
  ∀ n, P8965715851301723981.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P8379431020847551864

`A126988(n+1)*A127448(n+1)`
-/

namespace A125093.P8379431020847551864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A127448 (n + 1)

end

end A125093.P8379431020847551864

namespace A125093

/-- `A126988(n+1)*A127448(n+1)` -/
def P8379431020847551864.Spec : Prop :=
  ∀ n, P8379431020847551864.a n = A125093 (n + 1)

end A125093

/-! ## A125093.P7074709518751791672

`A054525(n+1)*A123578(n+1)`
-/

namespace A125093.P7074709518751791672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A123578 (n + 1)

end

end A125093.P7074709518751791672

namespace A125093

/-- `A054525(n+1)*A123578(n+1)` -/
def P7074709518751791672.Spec : Prop :=
  ∀ n, P7074709518751791672.a n = A125093 (n + 1)

end A125093

/-!
# A125094: Eigensequence of A061554 regarded as a triangle: a(n) = Sum_{k=0..n-1} A061554(n-1,k)*a(k) with a(0)=1.

The programs for A125094, there is no canonical definition to state claims against.
-/

/-! ## A125094.P6702385058917962962

`A053186(A324432(n))+A036765(n)`
-/

namespace A125094.P6702385058917962962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A324432 n).toNat + A036765 n

end

end A125094.P6702385058917962962

/-! ## A125094.P5468356012620126717

`A135337(n)-A036646(A032555(n+1)+1)`
-/

namespace A125094.P5468356012620126717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135337 n - A036646 (A032555 (n + 1) + 1).toNat

end

end A125094.P5468356012620126717

/-! ## A125094.P5289563265897835903

`floor(sqrt(A008866(n!)))`
-/

namespace A125094.P5289563265897835903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A008866 (Nat.factorial n))

end

end A125094.P5289563265897835903

/-! ## A125094.P17019905534849865502

`floor(sqrt(A048448(n!)))`
-/

namespace A125094.P17019905534849865502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A048448 (Nat.factorial n))

end

end A125094.P17019905534849865502

/-!
# A125095: Expansion of phi(-x) * psi(x^4) in powers of x where psi(), phi() are Ramanujan theta functions.

The programs for A125095, the canonical program `A125095.P8995398085527209207` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125095 has offset 0).

The definition of A125095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125095.P8995398085527209207

`(-1)^n*A113411(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A125095

/-- `(-1)^n*A113411(n)` -/
def P8995398085527209207.Spec : Prop :=
  ∀ n, P8995398085527209207.a n = A125095 n

theorem P8995398085527209207.correct : P8995398085527209207.Spec := by
  intro n
  simp only [A125095]

end A125095

/-! ## A125095.P15470840565688886447

`A113411(n)*A219977(n)`
-/

namespace A125095.P15470840565688886447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n * A219977 n

end

end A125095.P15470840565688886447

namespace A125095

/-- `A113411(n)*A219977(n)` -/
def P15470840565688886447.Spec : Prop :=
  ∀ n, P15470840565688886447.a n = A125095 n

end A125095

/-! ## A125095.P10011516760269500623

`A113411(n)*A309873(n+1)`
-/

namespace A125095.P10011516760269500623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n * A309873 (n + 1)

end

end A125095.P10011516760269500623

namespace A125095

/-- `A113411(n)*A309873(n+1)` -/
def P10011516760269500623.Spec : Prop :=
  ∀ n, P10011516760269500623.a n = A125095 n

end A125095

/-! ## A125095.P14007398599886660738

`A113411(n)*A121373(A001511(n+1))`
-/

namespace A125095.P14007398599886660738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n * A121373 (A001511 (n + 1)).toNat

end

end A125095.P14007398599886660738

namespace A125095

/-- `A113411(n)*A121373(A001511(n+1))` -/
def P14007398599886660738.Spec : Prop :=
  ∀ n, P14007398599886660738.a n = A125095 n

end A125095

/-! ## A125095.P16329968642777060455

`A113411(n)*A121373(A006519(n+1))`
-/

namespace A125095.P16329968642777060455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n * A121373 (A006519 (n + 1)).toNat

end

end A125095.P16329968642777060455

namespace A125095

/-- `A113411(n)*A121373(A006519(n+1))` -/
def P16329968642777060455.Spec : Prop :=
  ∀ n, P16329968642777060455.a n = A125095 n

end A125095

/-! ## A125095.P17990851551782288870

`A139093(Δ[n²])/2`
-/

namespace A125095.P17990851551782288870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A125095.P17990851551782288870

namespace A125095

/-- `A139093(Δ[n²])/2` -/
def P17990851551782288870.Spec : Prop :=
  ∀ n, P17990851551782288870.a n = (A125095 n : ℚ)

end A125095

/-! ## A125095.P13662898139132089835

`A113411(n)-A028572(2*n+1)`
-/

namespace A125095.P13662898139132089835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n - A028572 (2 * n + 1)

end

end A125095.P13662898139132089835

namespace A125095

/-- `A113411(n)-A028572(2*n+1)` -/
def P13662898139132089835.Spec : Prop :=
  ∀ n, P13662898139132089835.a n = A125095 n

end A125095

/-! ## A125095.P9653764711047449630

`A226225(2*n+1)-A113411(n)`
-/

namespace A125095.P9653764711047449630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n + 1) - A113411 n

end

end A125095.P9653764711047449630

namespace A125095

/-- `A226225(2*n+1)-A113411(n)` -/
def P9653764711047449630.Spec : Prop :=
  ∀ n, P9653764711047449630.a n = A125095 n

end A125095

/-! ## A125095.P3364792929976292902

`A002325(2*n+1)*A033999(n)`
-/

namespace A125095.P3364792929976292902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (2 * n + 1) * A033999 n

end

end A125095.P3364792929976292902

namespace A125095

/-- `A002325(2*n+1)*A033999(n)` -/
def P3364792929976292902.Spec : Prop :=
  ∀ n, P3364792929976292902.a n = A125095 n

end A125095

/-! ## A125095.P7410564800856413018

`A033999(n)*A133693(2*n+1)`
-/

namespace A125095.P7410564800856413018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133693 (2 * n + 1)

end

end A125095.P7410564800856413018

namespace A125095

/-- `A033999(n)*A133693(2*n+1)` -/
def P7410564800856413018.Spec : Prop :=
  ∀ n, P7410564800856413018.a n = A125095 n

end A125095

/-! ## A125095.P6578992220000663706

`A087960(n)*A133693(2*n+1)`
-/

namespace A125095.P6578992220000663706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A133693 (2 * n + 1)

end

end A125095.P6578992220000663706

namespace A125095

/-- `A087960(n)*A133693(2*n+1)` -/
def P6578992220000663706.Spec : Prop :=
  ∀ n, P6578992220000663706.a n = A125095 n

end A125095

/-! ## A125095.P8979153941479389238

`A002325(2*n+1)*A057077(n+1)`
-/

namespace A125095.P8979153941479389238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (2 * n + 1) * A057077 (n + 1)

end

end A125095.P8979153941479389238

namespace A125095

/-- `A002325(2*n+1)*A057077(n+1)` -/
def P8979153941479389238.Spec : Prop :=
  ∀ n, P8979153941479389238.a n = A125095 n

end A125095

/-! ## A125095.P2187142743174119835

`A002325(2*n+1)*A056594(2*n)`
-/

namespace A125095.P2187142743174119835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (2 * n + 1) * A056594 (2 * n)

end

end A125095.P2187142743174119835

namespace A125095

/-- `A002325(2*n+1)*A056594(2*n)` -/
def P2187142743174119835.Spec : Prop :=
  ∀ n, P2187142743174119835.a n = A125095 n

end A125095

/-! ## A125095.P4490798363334057331

`A002325(2*n+1)-A028572(2*n+1)`
-/

namespace A125095.P4490798363334057331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (2 * n + 1) - A028572 (2 * n + 1)

end

end A125095.P4490798363334057331

namespace A125095

/-- `A002325(2*n+1)-A028572(2*n+1)` -/
def P4490798363334057331.Spec : Prop :=
  ∀ n, P4490798363334057331.a n = A125095 n

end A125095

/-! ## A125095.P2350707459577968108

`A125096(2*n+1)-A028572(2*n+1)`
-/

namespace A125095.P2350707459577968108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (2 * n + 1) - A028572 (2 * n + 1)

end

end A125095.P2350707459577968108

namespace A125095

/-- `A125096(2*n+1)-A028572(2*n+1)` -/
def P2350707459577968108.Spec : Prop :=
  ∀ n, P2350707459577968108.a n = A125095 n

end A125095

/-! ## A125095.P12968629446863002928

`A226225(2*n+1)-A002325(2*n+1)`
-/

namespace A125095.P12968629446863002928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n + 1) - A002325 (2 * n + 1)

end

end A125095.P12968629446863002928

namespace A125095

/-- `A226225(2*n+1)-A002325(2*n+1)` -/
def P12968629446863002928.Spec : Prop :=
  ∀ n, P12968629446863002928.a n = A125095 n

end A125095

/-! ## A125095.P11144393019420886073

`A226225(2*n+1)-A133693(2*n+1)`
-/

namespace A125095.P11144393019420886073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n + 1) - A133693 (2 * n + 1)

end

end A125095.P11144393019420886073

namespace A125095

/-- `A226225(2*n+1)-A133693(2*n+1)` -/
def P11144393019420886073.Spec : Prop :=
  ∀ n, P11144393019420886073.a n = A125095 n

end A125095

/-! ## A125095.P2263151607530862098

`A226225(2*n+1)-A244543(2*n+1)`
-/

namespace A125095.P2263151607530862098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n + 1) - A244543 (2 * n + 1)

end

end A125095.P2263151607530862098

namespace A125095

/-- `A226225(2*n+1)-A244543(2*n+1)` -/
def P2263151607530862098.Spec : Prop :=
  ∀ n, P2263151607530862098.a n = A125095 n

end A125095

/-! ## A125095.P14281442410596516428

`A226225(2*n+1)-A244553(2*n+1)`
-/

namespace A125095.P14281442410596516428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (2 * n + 1) - A244553 (2 * n + 1)

end

end A125095.P14281442410596516428

namespace A125095

/-- `A226225(2*n+1)-A244553(2*n+1)` -/
def P14281442410596516428.Spec : Prop :=
  ∀ n, P14281442410596516428.a n = A125095 n

end A125095

/-! ## A125095.P5228521838383125467

`A002325(2*n+1)*A034947(2*n+1)`
-/

namespace A125095.P5228521838383125467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (2 * n + 1) * A034947 (2 * n + 1)

end

end A125095.P5228521838383125467

namespace A125095

/-- `A002325(2*n+1)*A034947(2*n+1)` -/
def P5228521838383125467.Spec : Prop :=
  ∀ n, P5228521838383125467.a n = A125095 n

end A125095

/-!
# A125096: Expansion of -1 + (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q.

The programs for A125096, the canonical program `A125096.P3255662404427325146` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125096 has offset 1).

The definition of A125096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125096.P15096143594248591966

`Δ[(or(2, n)+n)/2]*A002325(n+1)`
-/

namespace A125096.P15096143594248591966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n + n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A002325 (n + 1) : ℚ)

end

end A125096.P15096143594248591966

namespace A125096

/-- `Δ[(or(2, n)+n)/2]*A002325(n+1)` -/
def P15096143594248591966.Spec : Prop :=
  ∀ n, P15096143594248591966.a n = (A125096 (n + 1) : ℚ)

end A125096

/-! ## A125096.P3255662404427325146

`Δ[A098180(n)]*A002325(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125096

/-- `Δ[A098180(n)]*A002325(n+1)` -/
def P3255662404427325146.Spec : Prop :=
  ∀ n, P3255662404427325146.a n = A125096 (n + 1)

theorem P3255662404427325146.correct : P3255662404427325146.Spec := by
  intro n
  simp only [A125096, Nat.add_sub_cancel]

end A125096

/-! ## A125096.P16747313194735450920

`A002265(abs(xor(3, n)-(n+1))*A033715(n+1))`
-/

namespace A125096.P16747313194735450920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (|(Nat.xor 3 n : ℤ) - (n + 1 : ℤ)| * A033715 (n + 1)).toNat

end

end A125096.P16747313194735450920

namespace A125096

/-- `A002265(abs(xor(3, n)-(n+1))*A033715(n+1))` -/
def P16747313194735450920.Spec : Prop :=
  ∀ n, P16747313194735450920.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P7393465976325209487

`A129438(n+1)`
-/

namespace A125096.P7393465976325209487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 (n + 1)

end

end A125096.P7393465976325209487

namespace A125096

/-- `A129438(n+1)` -/
def P7393465976325209487.Spec : Prop :=
  ∀ n, P7393465976325209487.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P9676501290833876252

`a(n-1)-Δ[-A129438(n)]` with `a(0)=1`
-/

namespace A125096.P9676501290833876252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129438 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A125096.P9676501290833876252

namespace A125096

/-- `a(n-1)-Δ[-A129438(n)]` -/
def P9676501290833876252.Spec : Prop :=
  ∀ n, P9676501290833876252.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P16288519660932688524

`lcm((-1)^n, A129438(1-(n-2*n)))`
-/

namespace A125096.P16288519660932688524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A129438 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A125096.P16288519660932688524

namespace A125096

/-- `lcm((-1)^n, A129438(1-(n-2*n)))` -/
def P16288519660932688524.Spec : Prop :=
  ∀ n, (P16288519660932688524.a n : ℤ) = A125096 (n + 1)

end A125096

/-! ## A125096.P16468555729031035840

`A129438(n)-Δ[-A129438(n)]`
-/

namespace A125096.P16468555729031035840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A129438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 n - (f1 (n + 1) - f1 n)

end

end A125096.P16468555729031035840

namespace A125096

/-- `A129438(n)-Δ[-A129438(n)]` -/
def P16468555729031035840.Spec : Prop :=
  ∀ n, P16468555729031035840.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P12003597361750218919

`(A226225(n+1)+A028572(n+1))/2`
-/

namespace A125096.P12003597361750218919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226225 (n + 1) + A028572 (n + 1) : ℚ) / 2

end

end A125096.P12003597361750218919

namespace A125096

/-- `(A226225(n+1)+A028572(n+1))/2` -/
def P12003597361750218919.Spec : Prop :=
  ∀ n, P12003597361750218919.a n = (A125096 (n + 1) : ℚ)

end A125096

/-! ## A125096.P18013449185406560777

`A133692(n+1)/2*A323202(n+1)`
-/

namespace A125096.P18013449185406560777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133692 (n + 1) : ℚ) / 2 * (A323202 (n + 1) : ℚ)

end

end A125096.P18013449185406560777

namespace A125096

/-- `A133692(n+1)/2*A323202(n+1)` -/
def P18013449185406560777.Spec : Prop :=
  ∀ n, P18013449185406560777.a n = (A125096 (n + 1) : ℚ)

end A125096

/-! ## A125096.P3006245008877751727

`A007318(C(2, n))*A129438(-xor(n, -1))`
-/

namespace A125096.P3006245008877751727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A129438 (-Int.xor (n : ℤ) (-1)).toNat

end

end A125096.P3006245008877751727

namespace A125096

/-- `A007318(C(2, n))*A129438(-xor(n, -1))` -/
def P3006245008877751727.Spec : Prop :=
  ∀ n, P3006245008877751727.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P1601245718821774499

`A002265(A245572(n+1)+A033715(n+1))`
-/

namespace A125096.P1601245718821774499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A245572 (n + 1) + A033715 (n + 1)).toNat

end

end A125096.P1601245718821774499

namespace A125096

/-- `A002265(A245572(n+1)+A033715(n+1))` -/
def P1601245718821774499.Spec : Prop :=
  ∀ n, P1601245718821774499.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P5053412900408633099

`A110655(A245572(n+1)+A033715(n+1))`
-/

namespace A125096.P5053412900408633099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A245572 (n + 1) + A033715 (n + 1)).toNat

end

end A125096.P5053412900408633099

namespace A125096

/-- `A110655(A245572(n+1)+A033715(n+1))` -/
def P5053412900408633099.Spec : Prop :=
  ∀ n, P5053412900408633099.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P3523392744130598048

`A131508(A245572(n+1)+A033715(n+1))`
-/

namespace A125096.P3523392744130598048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A245572 (n + 1) + A033715 (n + 1)).toNat

end

end A125096.P3523392744130598048

namespace A125096

/-- `A131508(A245572(n+1)+A033715(n+1))` -/
def P3523392744130598048.Spec : Prop :=
  ∀ n, P3523392744130598048.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P16662366884322895675

`A255589(A245572(n+1)+A033715(n+1))`
-/

namespace A125096.P16662366884322895675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (A245572 (n + 1) + A033715 (n + 1)).toNat

end

end A125096.P16662366884322895675

namespace A125096

/-- `A255589(A245572(n+1)+A033715(n+1))` -/
def P16662366884322895675.Spec : Prop :=
  ∀ n, P16662366884322895675.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P5877926163790790893

`A255589(A245572(n+1)+abs(A133692(n+1)))`
-/

namespace A125096.P5877926163790790893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (A245572 (n + 1) + |A133692 (n + 1)|).toNat

end

end A125096.P5877926163790790893

namespace A125096

/-- `A255589(A245572(n+1)+abs(A133692(n+1)))` -/
def P5877926163790790893.Spec : Prop :=
  ∀ n, P5877926163790790893.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P17272734872275274704

`A001222(2^A129438(-xor(n, -1)))`
-/

namespace A125096.P17272734872275274704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A129438 (-Int.xor (n : ℤ) (-1)).toNat : ℤ))).toNat

end

end A125096.P17272734872275274704

namespace A125096

/-- `A001222(2^A129438(-xor(n, -1)))` -/
def P17272734872275274704.Spec : Prop :=
  ∀ n, P17272734872275274704.a n = A125096 (n + 1)

end A125096

/-! ## A125096.P15569745309459741746

`A002325(n+1)*A004530((n+1)²)`
-/

namespace A125096.P15569745309459741746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) * A004530 ((n + 1) ^ 2)

end

end A125096.P15569745309459741746

namespace A125096

/-- `A002325(n+1)*A004530((n+1)²)` -/
def P15569745309459741746.Spec : Prop :=
  ∀ n, P15569745309459741746.a n = A125096 (n + 1)

end A125096

/-!
# A125098: Values occurring in A123895.

The programs for A125098, there is no canonical definition to state claims against.
-/

/-! ## A125098.P4878627115111453622

`∪[A123902(n), A125099(n+1)]`
-/

namespace A125098.P4878627115111453622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125098.P4878627115111453622

/-! ## A125098.P6584929233337533496

`record[A123895(n)]`
-/

namespace A125098.P6584929233337533496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125098.P6584929233337533496

/-! ## A125098.P1325464733777584732

`eq[A004182(n), A123895(n)]`
-/

namespace A125098.P1325464733777584732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125098.P1325464733777584732

/-! ## A125098.P2926430416467198684

`eq[A103205(n), A123895(n)]`
-/

namespace A125098.P2926430416467198684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125098.P2926430416467198684

/-! ## A125098.P17988311438655694580

`A123895(eq[n, A123895(n)])`
-/

namespace A125098.P17988311438655694580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125098.P17988311438655694580

/-! ## A125098.P7712308970082240977

`A123895(lt[n, A123895(n)+1])`
-/

namespace A125098.P7712308970082240977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125098.P7712308970082240977

/-! ## A125098.P11121247330384131094

`lt[A006694(n-A123895(n)), 1]`
-/

namespace A125098.P11121247330384131094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 ((n : ℤ) - A123895 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125098.P11121247330384131094

/-! ## A125098.P17307413241485696380

`lt[A057427(n-A123895(n)), 1]`
-/

namespace A125098.P17307413241485696380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) - A123895 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125098.P17307413241485696380

/-! ## A125098.P13215128170930727857

`A123895(lt[n-1, A123895(n)])`
-/

namespace A125098.P13215128170930727857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125098.P13215128170930727857

/-!
# A125099: Numbers in A125098 that are not in A123902.

The programs for A125099, there is no canonical definition to state claims against.
-/

/-! ## A125099.P10706771861468728099

`lt[A045503(n), A058063(A048380(n))]`
-/

namespace A125099.P10706771861468728099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125099.P10706771861468728099

/-! ## A125099.P8967958990285691074

`∩[A268335(A368904(n+2)), A007089(n)]`
-/

namespace A125099.P8967958990285691074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (A368904 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125099.P8967958990285691074

