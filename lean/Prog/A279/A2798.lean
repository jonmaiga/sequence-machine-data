import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A279800: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A279800, there is no canonical definition to state claims against.
-/

/-! ## A279800.P7417631323258763410

`A007088(A279807(n))`
-/

namespace A279800.P7417631323258763410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279807 n).toNat

end

end A279800.P7417631323258763410

/-! ## A279800.P2332878930686630023

`A185544(2*A279807(n))`
-/

namespace A279800.P2332878930686630023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279807 n).toNat

end

end A279800.P2332878930686630023

/-!
# A279801: Number of nX2 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279801, there is no canonical definition to state claims against.
-/

/-! ## A279801.P2265205727872809067

`A279805(∑[n+1]+2)`
-/

namespace A279801.P2265205727872809067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279801.P2265205727872809067

/-! ## A279801.P2671333010000500106

`lcm(2, A279805(A152948(n+3)))`
-/

namespace A279801.P2671333010000500106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279805 (A152948 (n + 3)).toNat)

end

end A279801.P2671333010000500106

/-! ## A279801.P10863068443290119119

`A279805(A152948(n+3))+A185284(n)`
-/

namespace A279801.P10863068443290119119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A152948 (n + 3)).toNat + A185284 n

end

end A279801.P10863068443290119119

/-! ## A279801.P17966620834347437966

`and(A057428(n), A279805(A152948(n+3)))`
-/

namespace A279801.P17966620834347437966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A279805 (A152948 (n + 3)).toNat)

end

end A279801.P17966620834347437966

/-! ## A279801.P6298513331586370427

`A279805(A152948(n+3))+A001222(n+1)%-1`
-/

namespace A279801.P6298513331586370427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A152948 (n + 3)).toNat + Int.tmod (A001222 (n + 1)) (-1)

end

end A279801.P6298513331586370427

/-!
# A279802: Number of nX3 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279802, there is no canonical definition to state claims against.
-/

/-! ## A279802.P6967971993581676505

`A279805(∑[n+2]+4)`
-/

namespace A279802.P6967971993581676505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279802.P6967971993581676505

/-! ## A279802.P8731070337257786263

`lcm(2, A279805(A167614(n+1)))`
-/

namespace A279802.P8731070337257786263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279805 (A167614 (n + 1)).toNat)

end

end A279802.P8731070337257786263

/-! ## A279802.P2273741713656781110

`record[gcd(A279805(n+4), A374996(n))]`
-/

namespace A279802.P2273741713656781110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279805 (n + 4)) (A374996 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279802.P2273741713656781110

/-! ## A279802.P10393080368098334659

`A279805(A167614(n+1))+A011731(n)`
-/

namespace A279802.P10393080368098334659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A167614 (n + 1)).toNat + A011731 n

end

end A279802.P10393080368098334659

/-! ## A279802.P14286066760769239721

`A279805(A167614(n+1))+A036601(n)`
-/

namespace A279802.P14286066760769239721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A167614 (n + 1)).toNat + A036601 n

end

end A279802.P14286066760769239721

/-!
# A279803: Number of nX4 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279803, there is no canonical definition to state claims against.
-/

/-! ## A279803.P4664657174007184074

`A279805(A141214(n)+7)`
-/

namespace A279803.P4664657174007184074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A141214 n + 7).toNat

end

end A279803.P4664657174007184074

/-! ## A279803.P17110976133118222388

`A279805(A052905(n)+9)`
-/

namespace A279803.P17110976133118222388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A052905 n + 9).toNat

end

end A279803.P17110976133118222388

/-! ## A279803.P11924797111760665274

`A279805(A055999(n)+10)`
-/

namespace A279803.P11924797111760665274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A055999 n + 10).toNat

end

end A279803.P11924797111760665274

/-! ## A279803.P2158586015119530003

`A279805(eq[5, A066657(n)])`
-/

namespace A279803.P2158586015119530003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279803.P2158586015119530003

/-! ## A279803.P4457643536619777505

`A279805(A167614(n+2)+1)`
-/

namespace A279803.P4457643536619777505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A167614 (n + 2) + 1).toNat

end

end A279803.P4457643536619777505

/-!
# A279804: Number of nX5 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279804, there is no canonical definition to state claims against.
-/

/-! ## A279804.P18320213849087553230

`A279805(∑[n+4]+11)`
-/

namespace A279804.P18320213849087553230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A279804.P18320213849087553230

/-! ## A279804.P1314495231659735140

`A279805(A000217(n+4)+5)+A070138(n+1)`
-/

namespace A279804.P1314495231659735140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279805 (A000217 (n + 4) + 5).toNat + A070138 (n + 1)

end

end A279804.P1314495231659735140

/-!
# A279806: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A279806, there is no canonical definition to state claims against.
-/

/-! ## A279806.P16783645183545019951

`A279942(n)-A333382(A279943(n))`
-/

namespace A279806.P16783645183545019951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279942 n - A333382 (A279943 n).toNat

end

end A279806.P16783645183545019951

/-! ## A279806.P16814713706467871412

`A277826(A279942(n)^A193592(n))`
-/

namespace A279806.P16814713706467871412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (SequenceMachineLib.roundAway ((A279942 n : ℚ) ^ (A193592 n : ℤ))).toNat

end

end A279806.P16814713706467871412

/-! ## A279806.P4981746927604686949

`A277826(A279942(n)^A196416(n))`
-/

namespace A279806.P4981746927604686949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (SequenceMachineLib.roundAway ((A279942 n : ℚ) ^ (A196416 n : ℤ))).toNat

end

end A279806.P4981746927604686949

/-!
# A279807: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A279807, there is no canonical definition to state claims against.
-/

/-! ## A279807.P3146323834752113680

`A277826(A279943(n)%A177912(3*n+2))`
-/

namespace A279807.P3146323834752113680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (Int.tmod (A279943 n) (A177912 (3 * n + 2))).toNat

end

end A279807.P3146323834752113680

/-!
# A279808: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A279808, there is no canonical definition to state claims against.
-/

/-! ## A279808.P1405715471978786647

`A007088(A279810(n))`
-/

namespace A279808.P1405715471978786647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279810 n).toNat

end

end A279808.P1405715471978786647

/-! ## A279808.P1081120806706803738

`A305989(A279811(n)/A000034(n))`
-/

namespace A279808.P1081120806706803738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279811 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A279808.P1081120806706803738

/-! ## A279808.P1715764056181897911

`A305989(A279811(n))`
-/

namespace A279808.P1715764056181897911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A279811 n).toNat

end

end A279808.P1715764056181897911

/-! ## A279808.P6530831608425210896

`A185544(2*A279810(n))`
-/

namespace A279808.P6530831608425210896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279810 n).toNat

end

end A279808.P6530831608425210896

/-! ## A279808.P14646902597630343276

`A185544(lcm(2, A279810(n)))`
-/

namespace A279808.P14646902597630343276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A279810 n))

end

end A279808.P14646902597630343276

/-!
# A279809: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A279809, there is no canonical definition to state claims against.
-/

/-! ## A279809.P4335904801731870202

`A007088(A279811(n))`
-/

namespace A279809.P4335904801731870202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279811 n).toNat

end

end A279809.P4335904801731870202

/-! ## A279809.P13575316178173470418

`A185544(2*A279811(n))`
-/

namespace A279809.P13575316178173470418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279811 n).toNat

end

end A279809.P13575316178173470418

/-!
# A279810: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A279810, there is no canonical definition to state claims against.
-/

/-! ## A279810.P9193379667517790140

`A325401(lcm(2, A279811(n)))`
-/

namespace A279810.P9193379667517790140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A279811 n))

end

end A279810.P9193379667517790140

/-! ## A279810.P5335466363237405761

`A030101(A279811(n)/A000034(n))`
-/

namespace A279810.P5335466363237405761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A279811 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A279810.P5335466363237405761

/-! ## A279810.P17401958466629528136

`A325401(A000034(n+1)*A279811(n))`
-/

namespace A279810.P17401958466629528136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A000034 (n + 1) * A279811 n).toNat

end

end A279810.P17401958466629528136

/-! ## A279810.P6299142115589302974

`A325401(2/A000034(n)*A279811(n))`
-/

namespace A279810.P6299142115589302974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway (2 / (A000034 n : ℚ) * (A279811 n : ℚ))).toNat

end

end A279810.P6299142115589302974

/-! ## A279810.P8719463235260216558

`A030101(A279811(n))`
-/

namespace A279810.P8719463235260216558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A279811 n).toNat

end

end A279810.P8719463235260216558

/-!
# A279811: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A279811, there is no canonical definition to state claims against.
-/

/-! ## A279811.P4505806671358444159

`A000034(n)*A030101(A279810(n))`
-/

namespace A279811.P4505806671358444159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A030101 (A279810 n).toNat

end

end A279811.P4505806671358444159

/-! ## A279811.P5259835838563116144

`and(A279668(A000975(n)), A279668(n))`
-/

namespace A279811.P5259835838563116144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279668 (A000975 n).toNat) (A279668 n)

end

end A279811.P5259835838563116144

/-!
# A279812: Let s(k) denote the sum of the even proper divisors of k. The sequence lists the pairs of numbers (x, y) such that s(x) = y and s(y) = x.

The programs for A279812, there is no canonical definition to state claims against.
-/

/-! ## A279812.P1738692330079810942

`2*A063990(n+1)`
-/

namespace A279812.P1738692330079810942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063990 (n + 1)

end

end A279812.P1738692330079810942

/-! ## A279812.P9326642122401046823

`4*A063990(Δ[n²]-n)/2`
-/

namespace A279812.P9326642122401046823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A063990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A279812.P9326642122401046823

/-! ## A279812.P5608037885022164594

`record[2*A063990(A022446(n))]`
-/

namespace A279812.P5608037885022164594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063990 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P5608037885022164594

/-! ## A279812.P6456806186020652476

`record[2*A063990(A028920(n))]`
-/

namespace A279812.P6456806186020652476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063990 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P6456806186020652476

/-! ## A279812.P13888411738055666306

`record[2*A063990(A065648(n))]`
-/

namespace A279812.P13888411738055666306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063990 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P13888411738055666306

/-! ## A279812.P14700587681131156320

`record[2*A063990(A100727(n))]`
-/

namespace A279812.P14700587681131156320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063990 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P14700587681131156320

/-! ## A279812.P7545276803628704488

`A063990(n+1)+record[A063990(A022446(n))]`
-/

namespace A279812.P7545276803628704488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P7545276803628704488

/-! ## A279812.P2885920087242938482

`A063990(n+1)+record[A063990(A028920(n))]`
-/

namespace A279812.P2885920087242938482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P2885920087242938482

/-! ## A279812.P10640915112956987934

`A063990(n+1)+record[A063990(A065648(n))]`
-/

namespace A279812.P10640915112956987934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P10640915112956987934

/-! ## A279812.P10250432465166659847

`A063990(n+1)+record[A063990(A100727(n))]`
-/

namespace A279812.P10250432465166659847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279812.P10250432465166659847

/-! ## A279812.P18276626232006879450

`A063990(A000027(n+1))+A063990(n+1)`
-/

namespace A279812.P18276626232006879450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (A000027 (n + 1)).toNat + A063990 (n + 1)

end

end A279812.P18276626232006879450

/-! ## A279812.P10704940517575718809

`A063990(n+1)+A063990(n+2)-A306613(n+1)`
-/

namespace A279812.P10704940517575718809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1) + (A063990 (n + 2) - A306613 (n + 1))

end

end A279812.P10704940517575718809

/-!
# A279813: Number of Münchhausen numbers in base n.

The programs for A279813, there is no canonical definition to state claims against.
-/

/-! ## A279813.P5393269891277927811

`Δ[eq[1, A166623(n+2)]]`
-/

namespace A279813.P5393269891277927811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166623 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279813.P5393269891277927811

/-! ## A279813.P15386725698723297724

`Δ[lt[A166623(n+2), A166594(n)]]`
-/

namespace A279813.P15386725698723297724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166623 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166594 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279813.P15386725698723297724

/-! ## A279813.P7366088367739877375

`Δ[lt[A166623(n+2), A000005(n+2)]]`
-/

namespace A279813.P7366088367739877375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166623 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279813.P7366088367739877375

/-! ## A279813.P811865409907086051

`Δ[lt[A166623(n+2), A033677(n+3)]]`
-/

namespace A279813.P811865409907086051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166623 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279813.P811865409907086051

/-! ## A279813.P6927573248129533029

`Δ[lt[A166623(n+2), A166597(2*(n+2))]]`
-/

namespace A279813.P6927573248129533029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166623 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A279813.P6927573248129533029

/-!
# A279814: Numbers n such that the average of the squares of the proper divisors of n is an integer.

The programs for A279814, there is no canonical definition to state claims against.
-/

/-! ## A279814.P14932476180123760417

`A353674(p?[n²+2])+A141114(n+1)`
-/

namespace A279814.P14932476180123760417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A141114 (n + 1)

end

end A279814.P14932476180123760417

/-! ## A279814.P10863781122139957141

`A141114(n+1)+A010052(A271537(n))`
-/

namespace A279814.P10863781122139957141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141114 (n + 1) + A010052 (A271537 n).toNat

end

end A279814.P10863781122139957141

/-! ## A279814.P17151620984316480846

`A141114(n+1)+A132440(A299267(n))`
-/

namespace A279814.P17151620984316480846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141114 (n + 1) + A132440 (A299267 n).toNat

end

end A279814.P17151620984316480846

/-! ## A279814.P16524840125308515056

`A353674(record[A020639(n²+2)])+A141114(n+1)`
-/

namespace A279814.P16524840125308515056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353674 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A141114 (n + 1)

end

end A279814.P16524840125308515056

/-! ## A279814.P1809486076635493542

`A210709(A089860(n))+A141114(n+1)`
-/

namespace A279814.P1809486076635493542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A089860 n).toNat + A141114 (n + 1)

end

end A279814.P1809486076635493542

/-!
# A279815: Numbers n such that the average of the squares of the numbers less than n that do not divide n is an integer.

The programs for A279815, there is no canonical definition to state claims against.
-/

/-! ## A279815.P58058593206002830

`eq[A286520(2*(n+2))+2, A358840(2*n)]+2`
-/

namespace A279815.P58058593206002830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (2 * (n + 2)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A279815.P58058593206002830

/-!
# A279816: Digital roots of tetrahedral numbers (A000292).

The programs for A279816, the canonical program `A279816.P9335264018930352382` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279816 has offset 0).

The definition of A279816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279816.P9335264018930352382

`A010888(A000292(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279816

/-- `A010888(A000292(n))` -/
def P9335264018930352382.Spec : Prop :=
  ∀ n, P9335264018930352382.a n = A279816 n

theorem P9335264018930352382.correct : P9335264018930352382.Spec := by
  intro n
  simp only [A279816]

end A279816

/-!
# A279817: a(1) = -1; for n>1, Sum_{d|n} a(n-d+1) = 0.

The programs for A279817, there is no canonical definition to state claims against.
-/

/-! ## A279817.P15248496622087919072

`A331591(A016779(n))-A001055(n+1)`
-/

namespace A279817.P15248496622087919072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A016779 n).toNat - A001055 (n + 1)

end

end A279817.P15248496622087919072

/-! ## A279817.P5024977376869954900

`A132747(A000079(n))-A356233(n+1)`
-/

namespace A279817.P5024977376869954900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A000079 n).toNat - A356233 (n + 1)

end

end A279817.P5024977376869954900

/-! ## A279817.P3333374884215536616

`A210679(A117453(n+1))-A322435(n+1)`
-/

namespace A279817.P3333374884215536616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210679 (A117453 (n + 1)).toNat - A322435 (n + 1)

end

end A279817.P3333374884215536616

/-! ## A279817.P5871501190904461688

`A345164(A100484(n+1))-A356233(n+1)`
-/

namespace A279817.P5871501190904461688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A100484 (n + 1)).toNat - A356233 (n + 1)

end

end A279817.P5871501190904461688

/-! ## A279817.P18242306351797248946

`char[∏{p}[n, #]-1]-A355739(A001043(n+1))`
-/

namespace A279817.P18242306351797248946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A355739 (A001043 (n + 1)).toNat

end

end A279817.P18242306351797248946

/-!
# A279818: a(n+1) = sum of digits of a(n), plus sum of same digits arising in all prior terms; a(1)=1.

The programs for A279818, there is no canonical definition to state claims against.
-/

/-! ## A279818.P13287329452053387794

`A304327(A020743(n))*A378360(n+2)`
-/

namespace A279818.P13287329452053387794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (A020743 n).toNat * A378360 (n + 2)

end

end A279818.P13287329452053387794

/-! ## A279818.P13169321891570195952

`A304327(A271827(n))*A378360(n+2)`
-/

namespace A279818.P13169321891570195952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (A271827 n).toNat * A378360 (n + 2)

end

end A279818.P13169321891570195952

/-! ## A279818.P2460263729758773639

`gcd(A330973(A212870(2*(n+2))), A378360(n+2))`
-/

namespace A279818.P2460263729758773639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330973 (A212870 (2 * (n + 2))).toNat) (A378360 (n + 2))

end

end A279818.P2460263729758773639

/-! ## A279818.P9995016202155435840

`A378360(n+2)+A000007(A054230(n))`
-/

namespace A279818.P9995016202155435840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378360 (n + 2) + A000007 (A054230 n).toNat

end

end A279818.P9995016202155435840

/-! ## A279818.P3176970600288196457

`A378360(A187829(n+2))`
-/

namespace A279818.P3176970600288196457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378360 (A187829 (n + 2)).toNat

end

end A279818.P3176970600288196457

/-!
# A279819: Coefficients in asymptotic expansion of sequence A110143.

The programs for A279819, there is no canonical definition to state claims against.
-/

/-! ## A279819.P8579588495802238775

`A026922(A267919(n)+A091768(n))`
-/

namespace A279819.P8579588495802238775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A267919 n + A091768 n).toNat

end

end A279819.P8579588495802238775

/-! ## A279819.P14478510008332293324

`A008624(A091768(n)-A000700(n))`
-/

namespace A279819.P14478510008332293324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A091768 n - A000700 n).toNat

end

end A279819.P14478510008332293324

/-! ## A279819.P7138903920018719397

`A008624(A091768(n)-A001222(n+2))`
-/

namespace A279819.P7138903920018719397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A091768 n - A001222 (n + 2)).toNat

end

end A279819.P7138903920018719397

/-!
# A279820: Irregular triangle read by rows in which T(n,k) is the number of cells in the k-th horizontal bar of the n-th row of a diagram which is similar to the diagram of A237591, but here the even-indexed zig-zag paths are in the right hand part of the structure.

The programs for A279820, there is no canonical definition to state claims against.
-/

/-! ## A279820.P17044970035253322812

`A035612(or(48, A000129(n)))`
-/

namespace A279820.P17044970035253322812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (Int.lor 48 (A000129 n)).toNat

end

end A279820.P17044970035253322812

/-! ## A279820.P1620682699171190308

`A001511(A036038(3*n+4)*A327086(n+1))`
-/

namespace A279820.P1620682699171190308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A036038 (3 * n + 4) * A327086 (n + 1)).toNat

end

end A279820.P1620682699171190308

/-!
# A279822: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A279822, there is no canonical definition to state claims against.
-/

/-! ## A279822.P18191859376021958298

`A007088(A279824(n))`
-/

namespace A279822.P18191859376021958298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279824 n).toNat

end

end A279822.P18191859376021958298

/-! ## A279822.P1316030478537121785

`A185544(2*A279824(n))`
-/

namespace A279822.P1316030478537121785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279824 n).toNat

end

end A279822.P1316030478537121785

/-! ## A279822.P8867201328652194382

`A185544(A279824(n)+A279824(n))`
-/

namespace A279822.P8867201328652194382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279824 n + A279824 n).toNat

end

end A279822.P8867201328652194382

/-! ## A279822.P14721960589072338862

`A279959(A062399(n))`
-/

namespace A279822.P14721960589072338862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279959 (A062399 n).toNat

end

end A279822.P14721960589072338862

/-! ## A279822.P17371930914932403958

`A279959(A120126(n))`
-/

namespace A279822.P17371930914932403958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279959 (A120126 n).toNat

end

end A279822.P17371930914932403958

/-!
# A279823: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A279823, there is no canonical definition to state claims against.
-/

/-! ## A279823.P8498147468115229179

`A007088(A279825(n))`
-/

namespace A279823.P8498147468115229179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279825 n).toNat

end

end A279823.P8498147468115229179

/-! ## A279823.P16955347677262610564

`A185544(2*A279825(n))`
-/

namespace A279823.P16955347677262610564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279825 n).toNat

end

end A279823.P16955347677262610564

/-! ## A279823.P4465363019808075637

`A185544(A279825(n)+A279825(n))`
-/

namespace A279823.P4465363019808075637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279825 n + A279825 n).toNat

end

end A279823.P4465363019808075637

/-! ## A279823.P3501956539695223960

`A279960(A062399(n))`
-/

namespace A279823.P3501956539695223960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279960 (A062399 n).toNat

end

end A279823.P3501956539695223960

/-! ## A279823.P6920674388561647044

`A279960(A120126(n))`
-/

namespace A279823.P6920674388561647044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279960 (A120126 n).toNat

end

end A279823.P6920674388561647044

/-!
# A279824: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A279824, there is no canonical definition to state claims against.
-/

/-! ## A279824.P3506844927316500739

`A279961(A046469(n))`
-/

namespace A279824.P3506844927316500739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 (A046469 n).toNat

end

end A279824.P3506844927316500739

/-! ## A279824.P7552498773221917922

`A279961(A087036(n))`
-/

namespace A279824.P7552498773221917922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 (A087036 n).toNat

end

end A279824.P7552498773221917922

/-! ## A279824.P9305599375260850521

`A279961(A087051(n))`
-/

namespace A279824.P9305599375260850521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 (A087051 n).toNat

end

end A279824.P9305599375260850521

/-! ## A279824.P4236384180941224773

`A279961(A004893(n+1))`
-/

namespace A279824.P4236384180941224773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 (A004893 (n + 1)).toNat

end

end A279824.P4236384180941224773

/-! ## A279824.P1800365316192109733

`A279961(A004904(n+1))`
-/

namespace A279824.P1800365316192109733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279961 (A004904 (n + 1)).toNat

end

end A279824.P1800365316192109733

/-!
# A279825: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A279825, there is no canonical definition to state claims against.
-/

/-! ## A279825.P12716778996970502993

`A279962(A062399(n))`
-/

namespace A279825.P12716778996970502993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (A062399 n).toNat

end

end A279825.P12716778996970502993

/-! ## A279825.P11151312648668425661

`A279962(A120126(n))`
-/

namespace A279825.P11151312648668425661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (A120126 n).toNat

end

end A279825.P11151312648668425661

/-! ## A279825.P3199804105634255532

`A279962(A351870(n))`
-/

namespace A279825.P3199804105634255532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (A351870 n).toNat

end

end A279825.P3199804105634255532

/-! ## A279825.P5070901629246231165

`A279962(A183202(∑[n]))`
-/

namespace A279825.P5070901629246231165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (A183202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A279825.P5070901629246231165

/-! ## A279825.P15948474712200671330

`A279962(A004894(n+1))`
-/

namespace A279825.P15948474712200671330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279962 (A004894 (n + 1)).toNat

end

end A279825.P15948474712200671330

/-!
# A279826: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A279826, there is no canonical definition to state claims against.
-/

/-! ## A279826.P15379526958832556809

`A007088(A279828(n))`
-/

namespace A279826.P15379526958832556809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279828 n).toNat

end

end A279826.P15379526958832556809

/-! ## A279826.P11118603173721314839

`A007088(A126646(n)-A283046(n)%A003418(n))`
-/

namespace A279826.P11118603173721314839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A283046 n) (A003418 n)).toNat

end

end A279826.P11118603173721314839

/-! ## A279826.P667395521375898883

`A185544(2*A279828(n))`
-/

namespace A279826.P667395521375898883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279828 n).toNat

end

end A279826.P667395521375898883

/-! ## A279826.P5415677218863210347

`A185544(A279828(n)+A279828(n))`
-/

namespace A279826.P5415677218863210347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279828 n + A279828 n).toNat

end

end A279826.P5415677218863210347

/-!
# A279827: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A279827, there is no canonical definition to state claims against.
-/

/-! ## A279827.P491565603045861978

`A000042(n+1)%A283045(A233583(n+1))`
-/

namespace A279827.P491565603045861978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A283045 (A233583 (n + 1)).toNat)

end

end A279827.P491565603045861978

/-! ## A279827.P3305749290412265426

`A007088(A279829(n))`
-/

namespace A279827.P3305749290412265426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279829 n).toNat

end

end A279827.P3305749290412265426

/-! ## A279827.P9807267163593813722

`A007088(A126646(n)%lcm(4, A283047(n)))`
-/

namespace A279827.P9807267163593813722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A126646 n) (Int.lcm 4 (A283047 n) : ℤ)).toNat

end

end A279827.P9807267163593813722

/-! ## A279827.P11402345815747506218

`A007088(A126646(n)-A283047(n)%A181443(n))`
-/

namespace A279827.P11402345815747506218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A283047 n) (A181443 n)).toNat

end

end A279827.P11402345815747506218

/-! ## A279827.P13519877977580457360

`A305989(A279828(n)/A014709(n))`
-/

namespace A279827.P13519877977580457360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A279828 n : ℚ) / (A014709 n : ℚ))).toNat

end

end A279827.P13519877977580457360

/-!
# A279828: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A279828, there is no canonical definition to state claims against.
-/

/-! ## A279828.P3577398552291355714

`A126646(n)-A283046(n)%A003418(n)`
-/

namespace A279828.P3577398552291355714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283046 n) (A003418 n)

end

end A279828.P3577398552291355714

/-!
# A279829: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 206", based on the 5-celled von Neumann neighborhood.

The programs for A279829, there is no canonical definition to state claims against.
-/

/-! ## A279829.P15423593610587030663

`A126646(n)%lcm(4, A283047(n))`
-/

namespace A279829.P15423593610587030663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (Int.lcm 4 (A283047 n) : ℤ)

end

end A279829.P15423593610587030663

/-! ## A279829.P18198063946344251952

`or(A126646(n)-A283047(n), A000034(n))`
-/

namespace A279829.P18198063946344251952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A283047 n) (A000034 n)

end

end A279829.P18198063946344251952

/-! ## A279829.P9388068773167457430

`or(A126646(n)-A283047(n), A010882(n))`
-/

namespace A279829.P9388068773167457430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A283047 n) (A010882 n)

end

end A279829.P9388068773167457430

/-! ## A279829.P7677756434414382164

`A126646(n)-A283047(n)%A181443(n)`
-/

namespace A279829.P7677756434414382164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283047 n) (A181443 n)

end

end A279829.P7677756434414382164

/-!
# A279830: a(n) = the least integer that is centered polygonal in exactly n ways.

The programs for A279830, there is no canonical definition to state claims against.
-/

/-! ## A279830.P8043967800702395138

`A130317(n+2)+1`
-/

namespace A279830.P8043967800702395138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130317 (n + 2) + 1

end

end A279830.P8043967800702395138

/-! ## A279830.P6667214100434029056

`A088726(n+1)/2+1`
-/

namespace A279830.P6667214100434029056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 (n + 1) : ℚ) / 2 + 1

end

end A279830.P6667214100434029056

/-! ## A279830.P11545099925308329715

`A305897(A088726(n+1))`
-/

namespace A279830.P11545099925308329715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A088726 (n + 1)).toNat

end

end A279830.P11545099925308329715

/-! ## A279830.P14610168042859095770

`A332893(A088726(n+1)+2)`
-/

namespace A279830.P14610168042859095770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A088726 (n + 1) + 2).toNat

end

end A279830.P14610168042859095770

/-! ## A279830.P15665198861005674903

`A004482(A130317(n+2))`
-/

namespace A279830.P15665198861005674903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A130317 (n + 2)).toNat

end

end A279830.P15665198861005674903

/-!
# A279831: Numbers that are centered k-gonal numbers for two or more values of k.

The programs for A279831, there is no canonical definition to state claims against.
-/

/-! ## A279831.P2990240644499092583

`eq[A014963(A154488(n+1)), A010872(n)]`
-/

namespace A279831.P2990240644499092583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A154488 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279831.P2990240644499092583

/-! ## A279831.P17762111440399423429

`A246425(∩[A274231(n+1), A016921(n)])`
-/

namespace A279831.P17762111440399423429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A279831.P17762111440399423429

/-! ## A279831.P996361828506806442

`A349414(∩[A274231(n+1), A016921(n)])`
-/

namespace A279831.P996361828506806442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A279831.P996361828506806442

/-! ## A279831.P5815554106974285447

`lt[A094751(A060789(n+5)), A378684(n+1)]`
-/

namespace A279831.P5815554106974285447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094751 (A060789 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279831.P5815554106974285447

/-! ## A279831.P831012311396992689

`lt[A111466(n+1), A089939(2*(n+2))]`
-/

namespace A279831.P831012311396992689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089939 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A279831.P831012311396992689

/-!
# A279833: Denominators of the coefficients in g.f. A(x) such that: sn(x,i*A(x)) = x, where i^2 = -1, and sn(x,k) is a Jacobi elliptic function.

The programs for A279833, there is no canonical definition to state claims against.
-/

/-! ## A279833.P12509916387693809151

`A202384(n)/A000265(A202382(n))`
-/

namespace A279833.P12509916387693809151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202384 n : ℚ) / (A000265 (A202382 n).toNat : ℚ)

end

end A279833.P12509916387693809151

/-!
# A279834: Numerators of the coefficients in g.f. A(x) such that: sn(x,-A(x)) = x, where sn(x,m) is a Jacobi elliptic function.

The programs for A279834, there is no canonical definition to state claims against.
-/

/-! ## A279834.P2192468838720881597

`A106621(A111990(n)/A005680(n+1))`
-/

namespace A279834.P2192468838720881597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (SequenceMachineLib.roundAway ((A111990 n : ℚ) / (A005680 (n + 1) : ℚ))).toNat

end

end A279834.P2192468838720881597

/-!
# A279835: Denominators of the coefficients in g.f. A(x) such that: sn(x,-A(x)) = x, where sn(x,m) is a Jacobi elliptic function.

The programs for A279835, there is no canonical definition to state claims against.
-/

/-! ## A279835.P18280435775050640484

`A029470(A348008(n))`
-/

namespace A279835.P18280435775050640484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029470 (A348008 n).toNat

end

end A279835.P18280435775050640484

/-!
# A279836: E.g.f. A(x) satisfies: A( sin( A(x) ) ) = sinh(x).

The programs for A279836, there is no canonical definition to state claims against.
-/

/-! ## A279836.P4872409475274368444

`abs(A279838(n+1))`
-/

namespace A279836.P4872409475274368444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279838 (n + 1)|

end

end A279836.P4872409475274368444

/-! ## A279836.P11661049413830059624

`A033999(n)*A279838(n+1)`
-/

namespace A279836.P11661049413830059624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279838 (n + 1)

end

end A279836.P11661049413830059624

/-! ## A279836.P10603275263448818356

`gcd(A112316(n), A279838(n+1))`
-/

namespace A279836.P10603275263448818356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A279838 (n + 1))

end

end A279836.P10603275263448818356

/-! ## A279836.P17730635556147593184

`lcm(A033999(n+1), A279838(n+1))`
-/

namespace A279836.P17730635556147593184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A279838 (n + 1))

end

end A279836.P17730635556147593184

/-! ## A279836.P10788067114936672090

`lcm(-A279838(n+1), A062157(2*(n+2)))`
-/

namespace A279836.P10788067114936672090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A279838 (n + 1)) (A062157 (2 * (n + 2)))

end

end A279836.P10788067114936672090

/-!
# A279837: E.g.f. A(x) satisfies: A( tanh( A(x) ) ) = tan(x).

The programs for A279837, there is no canonical definition to state claims against.
-/

/-! ## A279837.P9303583735479354829

`abs(A279839(n+1))`
-/

namespace A279837.P9303583735479354829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279839 (n + 1)|

end

end A279837.P9303583735479354829

/-! ## A279837.P10273384695928214236

`record[abs(A279839(A257212(n)))]`
-/

namespace A279837.P10273384695928214236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279839 (A257212 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279837.P10273384695928214236

/-! ## A279837.P7038677452559685343

`A033999(n)*A279839(n+1)`
-/

namespace A279837.P7038677452559685343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279839 (n + 1)

end

end A279837.P7038677452559685343

/-! ## A279837.P8633691970406237137

`gcd(A112316(n), A279839(n+1))`
-/

namespace A279837.P8633691970406237137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A279839 (n + 1))

end

end A279837.P8633691970406237137

/-! ## A279837.P4680702730872198064

`lcm(A000034(n), A279839(n+1))`
-/

namespace A279837.P4680702730872198064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A279839 (n + 1))

end

end A279837.P4680702730872198064

/-!
# A279838: E.g.f. A(x) satisfies: A( sinh( A(x) ) ) = sin(x).

The programs for A279838, there is no canonical definition to state claims against.
-/

/-! ## A279838.P5067792175700606375

`(-1)^n*A279836(n+1)`
-/

namespace A279838.P5067792175700606375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A279836 (n + 1)

end

end A279838.P5067792175700606375

/-! ## A279838.P17246115893097176869

`A279836(n+1)/A033999(n)`
-/

namespace A279838.P17246115893097176869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279836 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A279838.P17246115893097176869

/-! ## A279838.P305547296630389088

`-(A033999(n+1)*A279836(n+1))`
-/

namespace A279838.P305547296630389088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A279836 (n + 1))

end

end A279838.P305547296630389088

/-! ## A279838.P15178468279960316934

`A279836(n+1)*A309873(n²+1)`
-/

namespace A279838.P15178468279960316934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279836 (n + 1) * A309873 (n ^ 2 + 1)

end

end A279838.P15178468279960316934

/-! ## A279838.P457422595285038270

`lcm(A033999(n+1), A279836(n+1))*A033999(n)`
-/

namespace A279838.P457422595285038270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 (n + 1)) (A279836 (n + 1)) : ℤ) * A033999 n

end

end A279838.P457422595285038270

/-!
# A279839: E.g.f. A(x) satisfies: A( tan( A(x) ) ) = tanh(x).

The programs for A279839, there is no canonical definition to state claims against.
-/

/-! ## A279839.P8655440481853733120

`(-1)^n*A279837(n+1)`
-/

namespace A279839.P8655440481853733120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A279837 (n + 1)

end

end A279839.P8655440481853733120

/-! ## A279839.P4920787113549671329

`A279837(n+1)*A033999(n)`
-/

namespace A279839.P4920787113549671329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279837 (n + 1) * A033999 n

end

end A279839.P4920787113549671329

/-! ## A279839.P14124594995975252375

`A279837(n+1)/A033999(n²)`
-/

namespace A279839.P14124594995975252375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279837 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A279839.P14124594995975252375

/-! ## A279839.P4522133716497487740

`A279837(n+1)/A062157(n+1)`
-/

namespace A279839.P4522133716497487740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279837 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ)

end

end A279839.P4522133716497487740

/-! ## A279839.P1076451991953853393

`record[A279837(A257212(n))]*A033999(n)`
-/

namespace A279839.P1076451991953853393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279837 (A257212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A279839.P1076451991953853393

/-!
# A279840: E.g.f.: exp( Integral exp(x^2) dx ).

The programs for A279840, there is no canonical definition to state claims against.
-/

/-! ## A279840.P14638822711521295643

`A120679(A182378(n))+A094495(n)`
-/

namespace A279840.P14638822711521295643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (A182378 n).toNat + A094495 n

end

end A279840.P14638822711521295643

/-! ## A279840.P627595041508273558

`A159798(lcm(A006882(n), A063886(n)))`
-/

namespace A279840.P627595041508273558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (Int.lcm (A006882 n) (A063886 n))

end

end A279840.P627595041508273558

/-! ## A279840.P12950846310047659348

`eq[1, A089479(n)]-n`
-/

namespace A279840.P12950846310047659348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A279840.P12950846310047659348

/-!
# A279841: E.g.f. C(x) satisfies: C(x)^2 + 2*S(x)^2 = 1 such that S'(x) = C(x)^2 - S(x)*C(x) and C'(x) = 2*S(x)^2 - 2*S(x)*C(x), where S(x) is described by A279842.

The programs for A279841, there is no canonical definition to state claims against.
-/

/-! ## A279841.P3762099954100952724

`A110512(n)*A353382(A346672(n))`
-/

namespace A279841.P3762099954100952724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n * A353382 (A346672 n).toNat

end

end A279841.P3762099954100952724

/-! ## A279841.P4473223530729791646

`A317754(lcm(A008458(n), A245000(n)))`
-/

namespace A279841.P4473223530729791646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317754 (Int.lcm (A008458 n) (A245000 n))

end

end A279841.P4473223530729791646

/-!
# A279843: E.g.f. satisfies: A(x - Integral A(x) dx) = x + Integral 2*A(x) dx.

The programs for A279843, there is no canonical definition to state claims against.
-/

/-! ## A279843.P15485606913432068368

`3*A003152((n-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A279843.P15485606913432068368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A003152 (((n : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A279843.P15485606913432068368

/-!
# A279844: E.g.f. satisfies: A(x - Integral 2*A(x) dx) = x + Integral A(x) dx.

The programs for A279844, there is no canonical definition to state claims against.
-/

/-! ## A279844.P12323754378310712351

`A051377(A118410(n))*A061978(n+1)`
-/

namespace A279844.P12323754378310712351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A118410 n).toNat * A061978 (n + 1)

end

end A279844.P12323754378310712351

/-!
# A279845: E.g.f. satisfies: A(x - Integral 2*A(x) dx) = x - Integral A(x) dx.

The programs for A279845, there is no canonical definition to state claims against.
-/

/-! ## A279845.P18304576847562033703

`A084820(A251574(n))`
-/

namespace A279845.P18304576847562033703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (A251574 n).toNat

end

end A279845.P18304576847562033703

/-!
# A279847: a(n) = Sum_{k=1..n} k^2*(floor(n/k) - 1).

The programs for A279847, the canonical program `A279847.P3049102735898826477` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279847 has offset 1).

The definition of A279847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A279847.P3049102735898826477

`A064602(n+1)-A000330(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279847

/-- `A064602(n+1)-A000330(n+1)` -/
def P3049102735898826477.Spec : Prop :=
  ∀ n, P3049102735898826477.a n = A279847 (n + 1)

theorem P3049102735898826477.correct : P3049102735898826477.Spec := by
  intro n
  simp only [A279847, Nat.add_sub_cancel]

end A279847

/-! ## A279847.P9627434285247853260

`∑[∑{d}[n+1, (#%(n+1))²]]`
-/

namespace A279847.P9627434285247853260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d % (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P9627434285247853260

namespace A279847

/-- `∑[∑{d}[n+1, (#%(n+1))²]]` -/
def P9627434285247853260.Spec : Prop :=
  ∀ n, (P9627434285247853260.a n : ℤ) = A279847 (n + 1)

end A279847

/-! ## A279847.P18202510148639254471

`∑[∑{d}[n+1, #²]-(n+1)²]`
-/

namespace A279847.P18202510148639254471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P18202510148639254471

namespace A279847

/-- `∑[∑{d}[n+1, #²]-(n+1)²]` -/
def P18202510148639254471.Spec : Prop :=
  ∀ n, P18202510148639254471.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P1922953441137205475

`∑[∑{d}[n+1, (#^2)%((n+1)^2)]]`
-/

namespace A279847.P1922953441137205475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2 % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P1922953441137205475

namespace A279847

/-- `∑[∑{d}[n+1, (#^2)%((n+1)^2)]]` -/
def P1922953441137205475.Spec : Prop :=
  ∀ n, (P1922953441137205475.a n : ℤ) = A279847 (n + 1)

end A279847

/-! ## A279847.P9898962078436243596

`a(n-1)+∑{d}[n+1, #²]-(n+1)²` with `a(0)=0`
-/

namespace A279847.P9898962078436243596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ))

end

end A279847.P9898962078436243596

namespace A279847

/-- `a(n-1)+∑{d}[n+1, #²]-(n+1)²` -/
def P9898962078436243596.Spec : Prop :=
  ∀ n, P9898962078436243596.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P10266689330483097336

`∑[A067558(n+1)]`
-/

namespace A279847.P10266689330483097336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P10266689330483097336

namespace A279847

/-- `∑[A067558(n+1)]` -/
def P10266689330483097336.Spec : Prop :=
  ∀ n, P10266689330483097336.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P6581951146309304966

`∑[A291108(n+1)]+n`
-/

namespace A279847.P6581951146309304966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A279847.P6581951146309304966

namespace A279847

/-- `∑[A291108(n+1)]+n` -/
def P6581951146309304966.Spec : Prop :=
  ∀ n, P6581951146309304966.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P16635663105259764149

`∑[∑[n]]-A309176(n+1)`
-/

namespace A279847.P16635663105259764149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A309176 (n + 1)

end

end A279847.P16635663105259764149

namespace A279847

/-- `∑[∑[n]]-A309176(n+1)` -/
def P16635663105259764149.Spec : Prop :=
  ∀ n, P16635663105259764149.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P16539998352751936742

`∑[∑[n²]-A276984(n+1)]`
-/

namespace A279847.P16539998352751936742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A276984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P16539998352751936742

namespace A279847

/-- `∑[∑[n²]-A276984(n+1)]` -/
def P16539998352751936742.Spec : Prop :=
  ∀ n, P16539998352751936742.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P4219896776865174302

`∑[A001157(n+1)-(n+1)²]`
-/

namespace A279847.P4219896776865174302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P4219896776865174302

namespace A279847

/-- `∑[A001157(n+1)-(n+1)²]` -/
def P4219896776865174302.Spec : Prop :=
  ∀ n, P4219896776865174302.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P12987352519019926285

`∑[-A326058((n+1)²)]`
-/

namespace A279847.P12987352519019926285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A326058 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P12987352519019926285

namespace A279847

/-- `∑[-A326058((n+1)²)]` -/
def P12987352519019926285.Spec : Prop :=
  ∀ n, P12987352519019926285.a n = A279847 (n + 1)

end A279847

/-! ## A279847.P10204225276918148408

`∑[A293235((n+1)²)]`
-/

namespace A279847.P10204225276918148408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279847.P10204225276918148408

namespace A279847

/-- `∑[A293235((n+1)²)]` -/
def P10204225276918148408.Spec : Prop :=
  ∀ n, P10204225276918148408.a n = A279847 (n + 1)

end A279847

/-!
# A279848: Partition an n X n square into multiple integer-sided rectangles where no one is a translation of any other. a(n) is ceiling(n/log(n)) - the least possible difference between the largest and smallest area.

The programs for A279848, there is no canonical definition to state claims against.
-/

/-! ## A279848.P10031478121260920536

`A050501(n+3)-A279596(n+3)`
-/

namespace A279848.P10031478121260920536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 3) - A279596 (n + 3)

end

end A279848.P10031478121260920536

/-! ## A279848.P10783712253746357394

`A050500(n+3)+1-A279596(n+3)`
-/

namespace A279848.P10783712253746357394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050500 (n + 3) + 1 - A279596 (n + 3)

end

end A279848.P10783712253746357394

/-! ## A279848.P3261394904120580741

`A020725(A050500(n+3))-A279596(n+3)`
-/

namespace A279848.P3261394904120580741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A050500 (n + 3)).toNat - A279596 (n + 3)

end

end A279848.P3261394904120580741

/-! ## A279848.P2255741920440820452

`A078607(A050500(n+3)-A279596(n+3))`
-/

namespace A279848.P2255741920440820452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078607 (A050500 (n + 3) - A279596 (n + 3)).toNat

end

end A279848.P2255741920440820452

/-! ## A279848.P15962827379534367501

`A050501(A020725(n+2))%A279596(n+3)`
-/

namespace A279848.P15962827379534367501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050501 (A020725 (n + 2)).toNat) (A279596 (n + 3))

end

end A279848.P15962827379534367501

/-!
# A279849: Rows of the 48 self-orthogonal Latin squares of order 4, lexicographically sorted.

The programs for A279849, there is no canonical definition to state claims against.
-/

/-! ## A279849.P656687144171754520

`A000041(A244173(n))+A004470(n)%4`
-/

namespace A279849.P656687144171754520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A244173 (n + 10)).toNat + Int.tmod (A004470 n) 4

end

end A279849.P656687144171754520

/-! ## A279849.P4355634815403280499

`A070402(A174134(2*n+1)-A004480(n))`
-/

namespace A279849.P4355634815403280499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A174134 (2 * n + 1) - A004480 n).toNat

end

end A279849.P4355634815403280499

/-! ## A279849.P3438452639268374200

`A070402(xor(A005582(n), A027444(n)))`
-/

namespace A279849.P3438452639268374200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (Int.xor (A005582 n) (A027444 n)).toNat

end

end A279849.P3438452639268374200

/-! ## A279849.P86198824222442936

`A070402(∑[∑[A004477(2*n+1)]]+n)`
-/

namespace A279849.P86198824222442936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004477 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A279849.P86198824222442936

/-! ## A279849.P5494773520399556818

`(3^A004480(n))%5`
-/

namespace A279849.P5494773520399556818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A004480 n : ℤ))) 5

end

end A279849.P5494773520399556818

/-!
# A279851: Number of n X 2 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279851, the canonical program `A279851.P5125187455035503379` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279851 has offset 1).

The definition of A279851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279851.P5125187455035503379

`3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` with `a(0)=0, a(1)=4, a(2)=10, a(3)=24, a(4)=54`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279851

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+4*a(n-5)` -/
def P5125187455035503379.Spec : Prop :=
  ∀ n, P5125187455035503379.a n = A279851 (n + 1)

theorem P5125187455035503379.correct : P5125187455035503379.Spec := by
  intro n
  simp only [A279851, Nat.add_sub_cancel]

end A279851

/-! ## A279851.P6600688724097696324

`∑[2*Δ[A136298(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A279851.P6600688724097696324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A136298 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279851.P6600688724097696324

namespace A279851

/-- `∑[2*Δ[A136298(n)-a(n-1)]]` -/
def P6600688724097696324.Spec : Prop :=
  ∀ n, P6600688724097696324.a n = A279851 (n + 1)

end A279851

/-! ## A279851.P8213965661779457735

`2*(A091596(n)+A000225(n))`
-/

namespace A279851.P8213965661779457735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091596 n + A000225 n)

end

end A279851.P8213965661779457735

namespace A279851

/-- `2*(A091596(n)+A000225(n))` -/
def P8213965661779457735.Spec : Prop :=
  ∀ n, P8213965661779457735.a n = A279851 (n + 1)

end A279851

/-! ## A279851.P1792266724827963480

`A280400(n+1)+Δ[Δ[A091596(n)]]`
-/

namespace A279851.P1792266724827963480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280400 (n + 1) + (f1 (n + 1) - f1 n)

end

end A279851.P1792266724827963480

namespace A279851

/-- `A280400(n+1)+Δ[Δ[A091596(n)]]` -/
def P1792266724827963480.Spec : Prop :=
  ∀ n, P1792266724827963480.a n = A279851 (n + 1)

end A279851

/-! ## A279851.P2834541224186611328

`record[A130328(n)-1]+2*A091596(n)`
-/

namespace A279851.P2834541224186611328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A091596 n

end

end A279851.P2834541224186611328

namespace A279851

/-- `record[A130328(n)-1]+2*A091596(n)` -/
def P2834541224186611328.Spec : Prop :=
  ∀ n, P2834541224186611328.a n = A279851 (n + 1)

end A279851

/-!
# A279852: Number of n X 3 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279852, there is no canonical definition to state claims against.
-/

/-! ## A279852.P8190147495279127247

`A279856(∑[n+2]+4)`
-/

namespace A279852.P8190147495279127247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279852.P8190147495279127247

/-! ## A279852.P6986755749585566170

`record[A279856(A167614(val(n+1, 2)+1))]`
-/

namespace A279852.P6986755749585566170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279852.P6986755749585566170

/-! ## A279852.P9635797029551228838

`record[A279856(n+4)/A008275(n+1)]`
-/

namespace A279852.P9635797029551228838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279856 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279852.P9635797029551228838

/-! ## A279852.P9685172148568235821

`A279856(A167614(n+1))+A014083(n)`
-/

namespace A279852.P9685172148568235821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A167614 (n + 1)).toNat + A014083 n

end

end A279852.P9685172148568235821

/-! ## A279852.P7857256052007857964

`A279856(A167614(n+1))+A025439(n)`
-/

namespace A279852.P7857256052007857964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A167614 (n + 1)).toNat + A025439 n

end

end A279852.P7857256052007857964

/-!
# A279853: Number of nX4 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279853, there is no canonical definition to state claims against.
-/

/-! ## A279853.P18181619253805020447

`A279856(A374004(n+1))`
-/

namespace A279853.P18181619253805020447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A374004 (n + 1)).toNat

end

end A279853.P18181619253805020447

/-! ## A279853.P15867917729122132947

`A279856(A141214(n)+7)`
-/

namespace A279853.P15867917729122132947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A141214 n + 7).toNat

end

end A279853.P15867917729122132947

/-! ## A279853.P18254595670687787258

`A279856(A052905(n)+9)`
-/

namespace A279853.P18254595670687787258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A052905 n + 9).toNat

end

end A279853.P18254595670687787258

/-! ## A279853.P3124247998924456352

`A279856(A055999(n)+10)`
-/

namespace A279853.P3124247998924456352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A055999 n + 10).toNat

end

end A279853.P3124247998924456352

/-! ## A279853.P11610237664897846836

`A279856(eq[5, A066657(n)])`
-/

namespace A279853.P11610237664897846836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279853.P11610237664897846836

/-!
# A279854: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279854, there is no canonical definition to state claims against.
-/

/-! ## A279854.P9911980751517305442

`A279856(A374005(n+1))`
-/

namespace A279854.P9911980751517305442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A374005 (n + 1)).toNat

end

end A279854.P9911980751517305442

/-! ## A279854.P2537800750484981629

`A279856(A167499(n+3))`
-/

namespace A279854.P2537800750484981629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A167499 (n + 3)).toNat

end

end A279854.P2537800750484981629

/-! ## A279854.P6427574453022345612

`A279856(A155212(n)+13)`
-/

namespace A279854.P6427574453022345612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A155212 n + 13).toNat

end

end A279854.P6427574453022345612

/-! ## A279854.P9298027533031225476

`A279856(A056000(n)+15)`
-/

namespace A279854.P9298027533031225476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A056000 n + 15).toNat

end

end A279854.P9298027533031225476

/-! ## A279854.P3927991308399707394

`A279856(eq[7, A066657(n)])`
-/

namespace A279854.P3927991308399707394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279854.P3927991308399707394

/-!
# A279855: Number of nX6 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279855, there is no canonical definition to state claims against.
-/

/-! ## A279855.P2453550188045557383

`A279856(A374007(n+1))`
-/

namespace A279855.P2453550188045557383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A374007 (n + 1)).toNat

end

end A279855.P2453550188045557383

/-! ## A279855.P1960562224657800671

`A279856(A056115(n)+21)`
-/

namespace A279855.P1960562224657800671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A056115 n + 21).toNat

end

end A279855.P1960562224657800671

/-! ## A279855.P7915624786693404573

`A279856(A167614(n+4)+3)`
-/

namespace A279855.P7915624786693404573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A167614 (n + 4) + 3).toNat

end

end A279855.P7915624786693404573

/-! ## A279855.P4241746891021100687

`A279856(A000217(n+5)+6)`
-/

namespace A279855.P4241746891021100687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A000217 (n + 5) + 6).toNat

end

end A279855.P4241746891021100687

/-! ## A279855.P14441119028045934359

`A279856(A052905(n+2)+11)`
-/

namespace A279855.P14441119028045934359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279856 (A052905 (n + 2) + 11).toNat

end

end A279855.P14441119028045934359

/-!
# A279857: Prime numbers p with the property that p is the sum of the squares of two or more distinct one-digit numbers.

The programs for A279857, there is no canonical definition to state claims against.
-/

/-! ## A279857.P10802268570710256111

`p?[n%A017077(A285244(n))]`
-/

namespace A279857.P10802268570710256111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A017077 (A285244 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279857.P10802268570710256111

/-! ## A279857.P9196011926326414534

`p?[A003995(n+1)*A178334(n)]`
-/

namespace A279857.P9196011926326414534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (n + 1) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279857.P9196011926326414534

/-! ## A279857.P5516057272567535989

`p?[A003995((n+1)^A178334(n))]`
-/

namespace A279857.P5516057272567535989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279857.P5516057272567535989

/-! ## A279857.P7669403375557069819

`p?[A003995(n+1)%A094379(n)]`
-/

namespace A279857.P7669403375557069819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003995 (n + 1)) (A094379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A279857.P7669403375557069819

/-!
# A279858: Next term is uniquely the sum of 4 earlier terms.

The programs for A279858, there is no canonical definition to state claims against.
-/

/-! ## A279858.P5454525299760556862

`∑[dr(A051176(A060149(n+1)))]`
-/

namespace A279858.P5454525299760556862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051176 (A060149 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279858.P5454525299760556862

/-! ## A279858.P1873382167713129200

`eq[A025866(n+1), A191246(A008651(n))]`
-/

namespace A279858.P1873382167713129200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191246 (A008651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A279858.P1873382167713129200

/-!
# A279863: Number of maximal transitive finitary sets with n brackets.

The programs for A279863, there is no canonical definition to state claims against.
-/

/-! ## A279863.P9836991192327668310

`A335474(and(A002998(n), A122888(n)))`
-/

namespace A279863.P9836991192327668310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (Int.land (A002998 n) (A122888 n)).toNat

end

end A279863.P9836991192327668310

/-! ## A279863.P4925043960872431415

`n%A057217(A057197(2*n+3))`
-/

namespace A279863.P4925043960872431415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A057217 (A057197 (2 * n + 3)).toNat)

end

end A279863.P4925043960872431415

/-! ## A279863.P8687374934365244007

`A115420(3*n+5)%A000120(A194198(n+5))`
-/

namespace A279863.P8687374934365244007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115420 (3 * n + 5)) (A000120 (A194198 (n + 5)).toNat)

end

end A279863.P8687374934365244007

/-! ## A279863.P15949220211886403011

`A122307(n)%A135621(A122307(A300480(n)))`
-/

namespace A279863.P15949220211886403011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122307 n) (A135621 (A122307 (A300480 n).toNat).toNat)

end

end A279863.P15949220211886403011

/-! ## A279863.P6450326433816960295

`A080843(∑[∑[A254990(n)]]²)`
-/

namespace A279863.P6450326433816960295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A279863.P6450326433816960295

/-!
# A279865: Number of n X 1 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279865, the canonical program `A279865.P2234314998961771675` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279865 has offset 1).

The definition of A279865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279865.P2234314998961771675

`A117316(A152950(n+1)+A028310(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279865

/-- `A117316(A152950(n+1)+A028310(n))` -/
def P2234314998961771675.Spec : Prop :=
  ∀ n, P2234314998961771675.a n = A279865 (n + 1)

theorem P2234314998961771675.correct : P2234314998961771675.Spec := by
  intro n
  simp only [A279865, Nat.add_sub_cancel]

end A279865

/-! ## A279865.P6056404847062505820

`A117316(A133263(n+1)%A280212(n+2))`
-/

namespace A279865.P6056404847062505820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117316 (Int.tmod (A133263 (n + 1)) (A280212 (n + 2))).toNat

end

end A279865.P6056404847062505820

namespace A279865

/-- `A117316(A133263(n+1)%A280212(n+2))` -/
def P6056404847062505820.Spec : Prop :=
  ∀ n, P6056404847062505820.a n = A279865 (n + 1)

end A279865

/-! ## A279865.P15161680559364917549

`A117316(A152950(n+1)+gcd(n, A008458(n)))`
-/

namespace A279865.P15161680559364917549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117316 (A152950 (n + 1) + (Int.gcd (n : ℤ) (A008458 n) : ℤ)).toNat

end

end A279865.P15161680559364917549

namespace A279865

/-- `A117316(A152950(n+1)+gcd(n, A008458(n)))` -/
def P15161680559364917549.Spec : Prop :=
  ∀ n, P15161680559364917549.a n = A279865 (n + 1)

end A279865

/-! ## A279865.P4037938062742989115

`A117316(A133263(n+1))%A344571(n)`
-/

namespace A279865.P4037938062742989115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117316 (A133263 (n + 1)).toNat) (A344571 n)

end

end A279865.P4037938062742989115

namespace A279865

/-- `A117316(A133263(n+1))%A344571(n)` -/
def P4037938062742989115.Spec : Prop :=
  ∀ n, P4037938062742989115.a n = A279865 (n + 1)

end A279865

/-! ## A279865.P362464352986414436

`A279871(∑[n]+1)`
-/

namespace A279865.P362464352986414436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A279865.P362464352986414436

namespace A279865

/-- `A279871(∑[n]+1)` -/
def P362464352986414436.Spec : Prop :=
  ∀ n, P362464352986414436.a n = A279865 (n + 1)

end A279865

/-!
# A279866: Number of n X 2 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279866, there is no canonical definition to state claims against.
-/

/-! ## A279866.P8123695732860021493

`A279871(∑[n+1]+2)`
-/

namespace A279866.P8123695732860021493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279866.P8123695732860021493

/-! ## A279866.P8566380649196167640

`record[A010054(n)*A279871(n+2)]`
-/

namespace A279866.P8566380649196167640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A279871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279866.P8566380649196167640

/-! ## A279866.P595379459030182308

`record[gcd(A097230(n), A279871(n+1))]`
-/

namespace A279866.P595379459030182308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A279871 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279866.P595379459030182308

/-! ## A279866.P11296046641288866750

`record[gcd(A214015(n), A279871(n+3))]`
-/

namespace A279866.P11296046641288866750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214015 n) (A279871 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279866.P11296046641288866750

/-! ## A279866.P17282123396606611446

`A279871(A133263(n+1))%A016888(n)`
-/

namespace A279866.P17282123396606611446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279871 (A133263 (n + 1)).toNat) (A016888 n)

end

end A279866.P17282123396606611446

/-!
# A279867: Number of n X 3 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279867, there is no canonical definition to state claims against.
-/

/-! ## A279867.P8413757910746147941

`A279871(∑[n+2]+4)`
-/

namespace A279867.P8413757910746147941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279867.P8413757910746147941

/-! ## A279867.P17684884037641107729

`A279871(A167614(n+1))+A011737(n)`
-/

namespace A279867.P17684884037641107729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 1)).toNat + A011737 n

end

end A279867.P17684884037641107729

/-! ## A279867.P3829427467429186427

`A279871(A167614(n+1))+A011743(n)`
-/

namespace A279867.P3829427467429186427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 1)).toNat + A011743 n

end

end A279867.P3829427467429186427

/-! ## A279867.P1387515419959530673

`A279871(A167614(n+1))+A025443(n)`
-/

namespace A279867.P1387515419959530673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 1)).toNat + A025443 n

end

end A279867.P1387515419959530673

/-! ## A279867.P13713110133369349946

`A279871(A167614(n+1))+A025469(n)`
-/

namespace A279867.P13713110133369349946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 1)).toNat + A025469 n

end

end A279867.P13713110133369349946

/-!
# A279868: Number of nX4 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279868, there is no canonical definition to state claims against.
-/

/-! ## A279868.P11909222104806040398

`A279871(∑[n+3]+7)`
-/

namespace A279868.P11909222104806040398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A279868.P11909222104806040398

/-! ## A279868.P9989967666858631169

`lcm(A218379(n), A279871(A141214(n+1)))`
-/

namespace A279868.P9989967666858631169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A218379 n) (A279871 (A141214 (n + 1)).toNat)

end

end A279868.P9989967666858631169

/-! ## A279868.P17734410582062161042

`A279871(A141214(n+1))%A279870(n+1)`
-/

namespace A279868.P17734410582062161042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279871 (A141214 (n + 1)).toNat) (A279870 (n + 1))

end

end A279868.P17734410582062161042

/-!
# A279869: Number of nX5 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279869, there is no canonical definition to state claims against.
-/

/-! ## A279869.P17062641060603457106

`A279871(A167499(n+3))`
-/

namespace A279869.P17062641060603457106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167499 (n + 3)).toNat

end

end A279869.P17062641060603457106

/-! ## A279869.P15280950417116481754

`A279871(A155212(n)+13)`
-/

namespace A279869.P15280950417116481754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A155212 n + 13).toNat

end

end A279869.P15280950417116481754

/-! ## A279869.P18429056223085552340

`A279871(A056000(n)+15)`
-/

namespace A279869.P18429056223085552340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A056000 n + 15).toNat

end

end A279869.P18429056223085552340

/-! ## A279869.P7791819694514447831

`A279871(eq[7, A066657(n)])`
-/

namespace A279869.P7791819694514447831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279869.P7791819694514447831

/-! ## A279869.P3212316513758201283

`A279871(A167614(n+3)+2)`
-/

namespace A279869.P3212316513758201283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 3) + 2).toNat

end

end A279869.P3212316513758201283

/-!
# A279870: Number of nX6 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279870, there is no canonical definition to state claims against.
-/

/-! ## A279870.P12821145951432611488

`A279871(A166136(n+4))`
-/

namespace A279870.P12821145951432611488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A166136 (n + 4)).toNat

end

end A279870.P12821145951432611488

/-! ## A279870.P12954290073075414266

`A279871(A056115(n)+21)`
-/

namespace A279870.P12954290073075414266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A056115 n + 21).toNat

end

end A279870.P12954290073075414266

/-! ## A279870.P12253265109396462113

`A279871(A167614(n+4)+3)`
-/

namespace A279870.P12253265109396462113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A167614 (n + 4) + 3).toNat

end

end A279870.P12253265109396462113

/-! ## A279870.P7005214307895771036

`A279871(A000124(n+5)+5)`
-/

namespace A279870.P7005214307895771036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A000124 (n + 5) + 5).toNat

end

end A279870.P7005214307895771036

/-! ## A279870.P18119743612489714032

`A279871(A141214(n+2)+9)`
-/

namespace A279870.P18119743612489714032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279871 (A141214 (n + 2) + 9).toNat

end

end A279870.P18119743612489714032

/-!
# A279871: T(n,k)=Number of nXk 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A279871, there is no canonical definition to state claims against.
-/

/-! ## A279871.P13939273580078830938

`A278676(n+1)-A279415(A213764(n+1))`
-/

namespace A279871.P13939273580078830938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278676 (n + 1) - A279415 (A213764 (n + 1)).toNat

end

end A279871.P13939273580078830938

/-! ## A279871.P8776612193597180122

`A117566(A113402(3*n+4))%A207442(n+1)`
-/

namespace A279871.P8776612193597180122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117566 (A113402 (3 * n + 4)).toNat) (A207442 (n + 1))

end

end A279871.P8776612193597180122

/-!
# A279872: Decimal representation of the x-axis, from the left edge to the origin, (and also from the origin to the right edge) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A279872, the canonical program `A279872.P12921250634280467630` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279872 has offset 0).

The definition of A279872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279872.P1032221222264237947

`gcd(2, n)^(n+1)-1`
-/

namespace A279872.P1032221222264237947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

end

end A279872.P1032221222264237947

namespace A279872

/-- `gcd(2, n)^(n+1)-1` -/
def P1032221222264237947.Spec : Prop :=
  ∀ n, P1032221222264237947.a n = A279872 n

end A279872

/-! ## A279872.P7736525439216274800

`∑[2^n]*char[2*n]`
-/

namespace A279872.P7736525439216274800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (if ∃ j, f2 j = n then 1 else 0)

end

end A279872.P7736525439216274800

namespace A279872

/-- `∑[2^n]*char[2*n]` -/
def P7736525439216274800.Spec : Prop :=
  ∀ n, (P7736525439216274800.a n : ℤ) = A279872 n

end A279872

/-! ## A279872.P16804257036573862986

`lcm((n+1)%2, ∑[2^n])`
-/

namespace A279872.P16804257036573862986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) % 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A279872.P16804257036573862986

namespace A279872

/-- `lcm((n+1)%2, ∑[2^n])` -/
def P16804257036573862986.Spec : Prop :=
  ∀ n, (P16804257036573862986.a n : ℤ) = A279872 n

end A279872

/-! ## A279872.P3088419717412442790

`and((1-n)%2, ∑[2^n])`
-/

namespace A279872.P3088419717412442790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (1 - (n : ℤ)) 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279872.P3088419717412442790

namespace A279872

/-- `and((1-n)%2, ∑[2^n])` -/
def P3088419717412442790.Spec : Prop :=
  ∀ n, P3088419717412442790.a n = A279872 n

end A279872

/-! ## A279872.P7870498324212975416

`ogf((1+2x^2)/(1-5x^2+4x^4))`
-/

namespace A279872.P7870498324212975416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, 0, -5, 0, 4] n

end

end A279872.P7870498324212975416

namespace A279872

/-- `ogf((1+2x^2)/(1-5x^2+4x^4))` -/
def P7870498324212975416.Spec : Prop :=
  ∀ n, P7870498324212975416.a n = A279872 n

end A279872

/-! ## A279872.P12016197341254511458

`(2-n%2)^(n+1)-1`
-/

namespace A279872.P12016197341254511458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ (n + 1) - 1

end

end A279872.P12016197341254511458

namespace A279872

/-- `(2-n%2)^(n+1)-1` -/
def P12016197341254511458.Spec : Prop :=
  ∀ n, P12016197341254511458.a n = A279872 n

end A279872

/-! ## A279872.P12921250634280467630

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=7, a(3)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279872

/-- `5*a(n-2)-4*a(n-4)` -/
def P12921250634280467630.Spec : Prop :=
  ∀ n, P12921250634280467630.a n = A279872 n

theorem P12921250634280467630.correct : P12921250634280467630.Spec := by
  intro n
  simp only [A279872]

end A279872

/-! ## A279872.P5152681692519156754

`A282413(n)-char[1]`
-/

namespace A279872.P5152681692519156754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279872.P5152681692519156754

namespace A279872

/-- `A282413(n)-char[1]` -/
def P5152681692519156754.Spec : Prop :=
  ∀ n, P5152681692519156754.a n = A279872 n

end A279872

/-! ## A279872.P2978006485032494878

`A066532(n+2)-1`
-/

namespace A279872.P2978006485032494878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (n + 2) - 1

end

end A279872.P2978006485032494878

namespace A279872

/-- `A066532(n+2)-1` -/
def P2978006485032494878.Spec : Prop :=
  ∀ n, P2978006485032494878.a n = A279872 n

end A279872

/-! ## A279872.P17232120304200623500

`A077896(n*gcd(2, n))`
-/

namespace A279872.P17232120304200623500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (n * Nat.gcd 2 n)

end

end A279872.P17232120304200623500

namespace A279872

/-- `A077896(n*gcd(2, n))` -/
def P17232120304200623500.Spec : Prop :=
  ∀ n, P17232120304200623500.a n = A279872 n

end A279872

/-! ## A279872.P10267007164021125695

`A084181(n)-and(1, n)`
-/

namespace A279872.P10267007164021125695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n - (Nat.land 1 n : ℤ)

end

end A279872.P10267007164021125695

namespace A279872

/-- `A084181(n)-and(1, n)` -/
def P10267007164021125695.Spec : Prop :=
  ∀ n, P10267007164021125695.a n = A279872 n

end A279872

/-! ## A279872.P14456377010013765611

`A000225(C(xor(1, n), n))`
-/

namespace A279872.P14456377010013765611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose (Nat.xor 1 n) n)

end

end A279872.P14456377010013765611

namespace A279872

/-- `A000225(C(xor(1, n), n))` -/
def P14456377010013765611.Spec : Prop :=
  ∀ n, P14456377010013765611.a n = A279872 n

end A279872

/-! ## A279872.P2660225437309691640

`floor(A277928(n+1)/2)`
-/

namespace A279872.P2660225437309691640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277928 (n + 1) : ℚ) / 2⌋

end

end A279872.P2660225437309691640

namespace A279872

/-- `floor(A277928(n+1)/2)` -/
def P2660225437309691640.Spec : Prop :=
  ∀ n, P2660225437309691640.a n = A279872 n

end A279872

/-! ## A279872.P4846385680946199165

`floor(A277936(n+1)/2)`
-/

namespace A279872.P4846385680946199165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277936 (n + 1) : ℚ) / 2⌋

end

end A279872.P4846385680946199165

namespace A279872

/-- `floor(A277936(n+1)/2)` -/
def P4846385680946199165.Spec : Prop :=
  ∀ n, P4846385680946199165.a n = A279872 n

end A279872

/-! ## A279872.P8728193240299348681

`floor(A280412(n+1)/2)`
-/

namespace A279872.P8728193240299348681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280412 (n + 1) : ℚ) / 2⌋

end

end A279872.P8728193240299348681

namespace A279872

/-- `floor(A280412(n+1)/2)` -/
def P8728193240299348681.Spec : Prop :=
  ∀ n, P8728193240299348681.a n = A279872 n

end A279872

/-! ## A279872.P4857416754686858773

`(A080924(n+2)-1)/2`
-/

namespace A279872.P4857416754686858773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080924 (n + 2) - 1 : ℚ) / 2

end

end A279872.P4857416754686858773

namespace A279872

/-- `(A080924(n+2)-1)/2` -/
def P4857416754686858773.Spec : Prop :=
  ∀ n, P4857416754686858773.a n = (A279872 n : ℚ)

end A279872

/-! ## A279872.P3781021114575042969

`2^A193356(n+1)-1`
-/

namespace A279872.P3781021114575042969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A193356 (n + 1) : ℤ) - 1

end

end A279872.P3781021114575042969

namespace A279872

/-- `2^A193356(n+1)-1` -/
def P3781021114575042969.Spec : Prop :=
  ∀ n, P3781021114575042969.a n = (A279872 n : ℚ)

end A279872

/-! ## A279872.P775403015569100154

`A000034(n+1)^(n+1)-1`
-/

namespace A279872.P775403015569100154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ (n + 1) - 1

end

end A279872.P775403015569100154

namespace A279872

/-- `A000034(n+1)^(n+1)-1` -/
def P775403015569100154.Spec : Prop :=
  ∀ n, P775403015569100154.a n = A279872 n

end A279872

/-! ## A279872.P3891243406546811873

`A168361(n+1)^(n+1)-1`
-/

namespace A279872.P3891243406546811873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) ^ (n + 1) - 1

end

end A279872.P3891243406546811873

namespace A279872

/-- `A168361(n+1)^(n+1)-1` -/
def P3891243406546811873.Spec : Prop :=
  ∀ n, P3891243406546811873.a n = A279872 n

end A279872

/-! ## A279872.P17324060343225670325

`A285475(n+1)-2^(n+1)`
-/

namespace A279872.P17324060343225670325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A279872.P17324060343225670325

namespace A279872

/-- `A285475(n+1)-2^(n+1)` -/
def P17324060343225670325.Spec : Prop :=
  ∀ n, P17324060343225670325.a n = A279872 n

end A279872

/-!
# A279873: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A279873, there is no canonical definition to state claims against.
-/

/-! ## A279873.P3565738110124643037

`A007088(A279875(n))`
-/

namespace A279873.P3565738110124643037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279875 n).toNat

end

end A279873.P3565738110124643037

/-! ## A279873.P4480549945427511038

`A185544(2*A279875(n))`
-/

namespace A279873.P4480549945427511038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279875 n).toNat

end

end A279873.P4480549945427511038

/-!
# A279874: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A279874, there is no canonical definition to state claims against.
-/

/-! ## A279874.P9430383510819388700

`A007088(A279876(n))`
-/

namespace A279874.P9430383510819388700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279876 n).toNat

end

end A279874.P9430383510819388700

/-! ## A279874.P17679559430629952907

`A007088(xor(A280374(n)-1, A280412(n)))`
-/

namespace A279874.P17679559430629952907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A280374 n - 1) (A280412 n)).toNat

end

end A279874.P17679559430629952907

/-! ## A279874.P11062285893658725813

`A185544(2*A279876(n))`
-/

namespace A279874.P11062285893658725813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A279876 n).toNat

end

end A279874.P11062285893658725813

/-! ## A279874.P8777835773715596914

`A185544(A279876(n)+A279876(n))`
-/

namespace A279874.P8777835773715596914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A279876 n + A279876 n).toNat

end

end A279874.P8777835773715596914

/-! ## A279874.P2167353636000356310

`A185544(2*xor(A280374(n)-1, A280412(n)))`
-/

namespace A279874.P2167353636000356310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.xor (A280374 n - 1) (A280412 n)).toNat

end

end A279874.P2167353636000356310

/-!
# A279875: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A279875, there is no canonical definition to state claims against.
-/

/-! ## A279875.P5170601758407113585

`xor(1, xor(A280373(n), A280412(n)))`
-/

namespace A279875.P5170601758407113585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (A280373 n) (A280412 n))

end

end A279875.P5170601758407113585

/-! ## A279875.P14845778903626674201

`xor(A232179(A072345(n)), A280373(n))`
-/

namespace A279875.P14845778903626674201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A232179 (A072345 n).toNat) (A280373 n)

end

end A279875.P14845778903626674201

/-! ## A279875.P2609938144540939670

`or(A137744(A137748(n)), A279175(n))`
-/

namespace A279875.P2609938144540939670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137744 (A137748 n).toNat) (A279175 n)

end

end A279875.P2609938144540939670

/-! ## A279875.P3569323856360540352

`or(A279175(n), A316864(A038333(n)))`
-/

namespace A279875.P3569323856360540352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279175 n) (A316864 (A038333 n).toNat)

end

end A279875.P3569323856360540352

/-!
# A279876: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 211", based on the 5-celled von Neumann neighborhood.

The programs for A279876, there is no canonical definition to state claims against.
-/

/-! ## A279876.P6205704624960586284

`xor(A280374(n)-1, A280412(n))`
-/

namespace A279876.P6205704624960586284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280374 n - 1) (A280412 n)

end

end A279876.P6205704624960586284

/-!
# A279877: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A279877, the canonical program `A279877.P16277548362096035639` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279877 has offset 0).

The definition of A279877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279877.P7394007845427632673

`A282415(n-char[2])`
-/

namespace A279877.P7394007845427632673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A279877.P7394007845427632673

namespace A279877

/-- `A282415(n-char[2])` -/
def P7394007845427632673.Spec : Prop :=
  ∀ n, P7394007845427632673.a n = A279877 n

end A279877

/-! ## A279877.P2654022816690277958

`xor(char[2], A282415(n))`
-/

namespace A279877.P2654022816690277958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282415 n)

end

end A279877.P2654022816690277958

namespace A279877

/-- `xor(char[2], A282415(n))` -/
def P2654022816690277958.Spec : Prop :=
  ∀ n, P2654022816690277958.a n = A279877 n

end A279877

/-! ## A279877.P7471480034820025801

`A282415(n)-A185012(n)`
-/

namespace A279877.P7471480034820025801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - A185012 n

end

end A279877.P7471480034820025801

namespace A279877

/-- `A282415(n)-A185012(n)` -/
def P7471480034820025801.Spec : Prop :=
  ∀ n, P7471480034820025801.a n = A279877 n

end A279877

/-! ## A279877.P13478943948278637029

`A282415(n)-A142150(A163985(n))`
-/

namespace A279877.P13478943948278637029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - A142150 (A163985 n).toNat

end

end A279877.P13478943948278637029

namespace A279877

/-- `A282415(n)-A142150(A163985(n))` -/
def P13478943948278637029.Spec : Prop :=
  ∀ n, P13478943948278637029.a n = A279877 n

end A279877

/-! ## A279877.P16277548362096035639

`A279879(n)+A282415(n)-A282417(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A279877

/-- `A279879(n)+A282415(n)-A282417(n)` -/
def P16277548362096035639.Spec : Prop :=
  ∀ n, P16277548362096035639.a n = A279877 n

theorem P16277548362096035639.correct : P16277548362096035639.Spec := by
  intro n
  simp only [A279877]

end A279877

/-! ## A279877.P1444287364840288266

`A282415(n)-A285650(n)%A052551(n)`
-/

namespace A279877.P1444287364840288266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - Int.tmod (A285650 n) (A052551 n)

end

end A279877.P1444287364840288266

namespace A279877

/-- `A282415(n)-A285650(n)%A052551(n)` -/
def P1444287364840288266.Spec : Prop :=
  ∀ n, P1444287364840288266.a n = A279877 n

end A279877

/-! ## A279877.P80616387885062917

`A282415(n)-and(A010051(n+1), A309761(n+1))`
-/

namespace A279877.P80616387885062917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - Int.land (A010051 (n + 1)) (A309761 (n + 1))

end

end A279877.P80616387885062917

namespace A279877

/-- `A282415(n)-and(A010051(n+1), A309761(n+1))` -/
def P80616387885062917.Spec : Prop :=
  ∀ n, P80616387885062917.a n = A279877 n

end A279877

/-!
# A279878: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A279878, there is no canonical definition to state claims against.
-/

/-! ## A279878.P7548118101190209584

`gcd(A282416(n), A285648(n))`
-/

namespace A279878.P7548118101190209584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282416 n) (A285648 n)

end

end A279878.P7548118101190209584

/-! ## A279878.P10458278407272137336

`A282416(n)%Δ[A264882(n+1)]`
-/

namespace A279878.P10458278407272137336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282416 n) (f1 (n + 1) - f1 n)

end

end A279878.P10458278407272137336

/-! ## A279878.P3205680484048964684

`and(A267935(A163985(n)), A282416(n))`
-/

namespace A279878.P3205680484048964684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267935 (A163985 n).toNat) (A282416 n)

end

end A279878.P3205680484048964684

/-! ## A279878.P15568805355814391474

`A007088(A279880(n))`
-/

namespace A279878.P15568805355814391474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A279880 n).toNat

end

end A279878.P15568805355814391474

/-! ## A279878.P4929359854396389930

`A007088(A282418(char[2]+n)-char[2])`
-/

namespace A279878.P4929359854396389930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282418 ((if ∃ j, f1 j = n then 1 else 0) + n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A279878.P4929359854396389930

/-!
# A279879: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A279879, the canonical program `A279879.P11249943486007987632` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279879 has offset 0).

The definition of A279879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279879.P16196354354478303446

`A282417(n-char[2])`
-/

namespace A279879.P16196354354478303446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A279879.P16196354354478303446

namespace A279879

/-- `A282417(n-char[2])` -/
def P16196354354478303446.Spec : Prop :=
  ∀ n, P16196354354478303446.a n = A279879 n

end A279879

/-! ## A279879.P8709588222494246675

`xor(char[2], A282417(n))`
-/

namespace A279879.P8709588222494246675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A282417 n)

end

end A279879.P8709588222494246675

namespace A279879

/-- `xor(char[2], A282417(n))` -/
def P8709588222494246675.Spec : Prop :=
  ∀ n, P8709588222494246675.a n = A279879 n

end A279879

/-! ## A279879.P11814791627844165228

`A282417(n)-A185012(n)`
-/

namespace A279879.P11814791627844165228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 n - A185012 n

end

end A279879.P11814791627844165228

namespace A279879

/-- `A282417(n)-A185012(n)` -/
def P11814791627844165228.Spec : Prop :=
  ∀ n, P11814791627844165228.a n = A279879 n

end A279879

/-! ## A279879.P7721586321299295275

`xor(A056453(n+1), A286772(n))`
-/

namespace A279879.P7721586321299295275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056453 (n + 1)) (A286772 n)

end

end A279879.P7721586321299295275

namespace A279879

/-- `xor(A056453(n+1), A286772(n))` -/
def P7721586321299295275.Spec : Prop :=
  ∀ n, P7721586321299295275.a n = A279879 n

end A279879

/-! ## A279879.P4475133830202612199

`xor(A052551(n)-1, A286772(n))`
-/

namespace A279879.P4475133830202612199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052551 n - 1) (A286772 n)

end

end A279879.P4475133830202612199

namespace A279879

/-- `xor(A052551(n)-1, A286772(n))` -/
def P4475133830202612199.Spec : Prop :=
  ∀ n, P4475133830202612199.a n = A279879 n

end A279879

/-! ## A279879.P9255913790218058887

`(A052551(n)-char[2])*A072345(n)`
-/

namespace A279879.P9255913790218058887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052551 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A072345 n

end

end A279879.P9255913790218058887

namespace A279879

/-- `(A052551(n)-char[2])*A072345(n)` -/
def P9255913790218058887.Spec : Prop :=
  ∀ n, P9255913790218058887.a n = A279879 n

end A279879

/-! ## A279879.P3111058334308665830

`A282417(n)-A142150(A163985(n))`
-/

namespace A279879.P3111058334308665830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 n - A142150 (A163985 n).toNat

end

end A279879.P3111058334308665830

namespace A279879

/-- `A282417(n)-A142150(A163985(n))` -/
def P3111058334308665830.Spec : Prop :=
  ∀ n, P3111058334308665830.a n = A279879 n

end A279879

/-! ## A279879.P10589304452129403382

`A288663(A014681(n+1))-char[2]`
-/

namespace A279879.P10589304452129403382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A014681 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279879.P10589304452129403382

namespace A279879

/-- `A288663(A014681(n+1))-char[2]` -/
def P10589304452129403382.Spec : Prop :=
  ∀ n, P10589304452129403382.a n = A279879 n

end A279879

/-! ## A279879.P6347618170577415432

`A288663(A103889(n+1))-char[2]`
-/

namespace A279879.P6347618170577415432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A103889 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279879.P6347618170577415432

namespace A279879

/-- `A288663(A103889(n+1))-char[2]` -/
def P6347618170577415432.Spec : Prop :=
  ∀ n, P6347618170577415432.a n = A279879 n

end A279879

/-! ## A279879.P4053726311963662285

`A288663(A008587(n)%A053438(n))`
-/

namespace A279879.P4053726311963662285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (Int.tmod (A008587 n) (A053438 n)).toNat

end

end A279879.P4053726311963662285

namespace A279879

/-- `A288663(A008587(n)%A053438(n))` -/
def P4053726311963662285.Spec : Prop :=
  ∀ n, P4053726311963662285.a n = A279879 n

end A279879

/-! ## A279879.P11249943486007987632

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=12, a(4)=7, a(5)=56, a(6)=15, a(7)=240, a(8)=31`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279879

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P11249943486007987632.Spec : Prop :=
  ∀ n, P11249943486007987632.a n = A279879 n

theorem P11249943486007987632.correct : P11249943486007987632.Spec := by
  intro n
  simp only [A279879]

end A279879

/-!
# A279880: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 213", based on the 5-celled von Neumann neighborhood.

The programs for A279880, the canonical program `A279880.P9209151830033707280` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279880 has offset 0).

The definition of A279880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279880.P9209151830033707280

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=28, a(5)=7, a(6)=120, a(7)=15, a(8)=496`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279880

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P9209151830033707280.Spec : Prop :=
  ∀ n, P9209151830033707280.a n = A279880 n

theorem P9209151830033707280.correct : P9209151830033707280.Spec := by
  intro n
  simp only [A279880]

end A279880

/-! ## A279880.P6015461110377944622

`A282418(char[2]+n)-char[2]`
-/

namespace A279880.P6015461110377944622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 ((if ∃ j, f1 j = n then 1 else 0) + n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279880.P6015461110377944622

namespace A279880

/-- `A282418(char[2]+n)-char[2]` -/
def P6015461110377944622.Spec : Prop :=
  ∀ n, P6015461110377944622.a n = A279880 n

end A279880

/-! ## A279880.P532471150072641587

`gcd(A122746(n), A285650(n))`
-/

namespace A279880.P532471150072641587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122746 n) (A285650 n)

end

end A279880.P532471150072641587

namespace A279880

/-- `gcd(A122746(n), A285650(n))` -/
def P532471150072641587.Spec : Prop :=
  ∀ n, (P532471150072641587.a n : ℤ) = A279880 n

end A279880

/-! ## A279880.P866104611089107903

`gcd(A130779(n), A282418(n))`
-/

namespace A279880.P866104611089107903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130779 n) (A282418 n)

end

end A279880.P866104611089107903

namespace A279880

/-- `gcd(A130779(n), A282418(n))` -/
def P866104611089107903.Spec : Prop :=
  ∀ n, (P866104611089107903.a n : ℤ) = A279880 n

end A279880

/-! ## A279880.P4727616225268155149

`xor(A233411(n), A286773(n))`
-/

namespace A279880.P4727616225268155149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233411 n) (A286773 n)

end

end A279880.P4727616225268155149

namespace A279880

/-- `xor(A233411(n), A286773(n))` -/
def P4727616225268155149.Spec : Prop :=
  ∀ n, P4727616225268155149.a n = A279880 n

end A279880

/-! ## A279880.P6668921362404889711

`A282418(n)%A300085(n+1)`
-/

namespace A279880.P6668921362404889711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282418 n) (A300085 (n + 1))

end

end A279880.P6668921362404889711

namespace A279880

/-- `A282418(n)%A300085(n+1)` -/
def P6668921362404889711.Spec : Prop :=
  ∀ n, P6668921362404889711.a n = A279880 n

end A279880

/-! ## A279880.P7436861361977111890

`A282418(n)%A168613(n)`
-/

namespace A279880.P7436861361977111890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282418 n) (A168613 n)

end

end A279880.P7436861361977111890

namespace A279880

/-- `A282418(n)%A168613(n)` -/
def P7436861361977111890.Spec : Prop :=
  ∀ n, P7436861361977111890.a n = A279880 n

end A279880

/-! ## A279880.P641278045649169435

`and(A267614(n), A282418(n))`
-/

namespace A279880.P641278045649169435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267614 n) (A282418 n)

end

end A279880.P641278045649169435

namespace A279880

/-- `and(A267614(n), A282418(n))` -/
def P641278045649169435.Spec : Prop :=
  ∀ n, P641278045649169435.a n = A279880 n

end A279880

/-! ## A279880.P3273230976404347645

`and(A263245(n), A282418(n))`
-/

namespace A279880.P3273230976404347645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263245 n) (A282418 n)

end

end A279880.P3273230976404347645

namespace A279880

/-- `and(A263245(n), A282418(n))` -/
def P3273230976404347645.Spec : Prop :=
  ∀ n, P3273230976404347645.a n = A279880 n

end A279880

/-! ## A279880.P7900803755840754986

`and(A267935(n), A282418(n))`
-/

namespace A279880.P7900803755840754986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267935 n) (A282418 n)

end

end A279880.P7900803755840754986

namespace A279880

/-- `and(A267935(n), A282418(n))` -/
def P7900803755840754986.Spec : Prop :=
  ∀ n, P7900803755840754986.a n = A279880 n

end A279880

/-! ## A279880.P3657959435205078797

`and(A086827(n+1), A282418(n))`
-/

namespace A279880.P3657959435205078797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A282418 n)

end

end A279880.P3657959435205078797

namespace A279880

/-- `and(A086827(n+1), A282418(n))` -/
def P3657959435205078797.Spec : Prop :=
  ∀ n, P3657959435205078797.a n = A279880 n

end A279880

/-!
# A279881: a(n) = A168467(n) * Sum_{k=0..n}(2^k*(k!)^2 / (2*k+1)!).

The programs for A279881, there is no canonical definition to state claims against.
-/

/-! ## A279881.P11075228671093224510

`a(n-1)*(2*n+1)!+2^n*n!²*A168467(n-1)` with `a(0)=1`
-/

namespace A279881.P11075228671093224510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (Nat.factorial (2 * n + 1) : ℤ) + (2 ^ n * Nat.factorial n ^ 2 : ℤ) * A168467 (n - 1)

end

end A279881.P11075228671093224510

/-! ## A279881.P9251948550607519617

`∏[A000142(2*n)]*A087547(n+1)`
-/

namespace A279881.P9251948550607519617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A087547 (n + 1)

end

end A279881.P9251948550607519617

/-!
# A279882: a(n) = 2^(prime(n) + 1) - 1.

The programs for A279882, the canonical program `A279882.P5085618674870066561` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279882 has offset 1).

The definition of A279882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279882.P3335303851769650196

`A101304(n+1)-2`
-/

namespace A279882.P3335303851769650196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101304 (n + 1) - 2

end

end A279882.P3335303851769650196

namespace A279882

/-- `A101304(n+1)-2` -/
def P3335303851769650196.Spec : Prop :=
  ∀ n, P3335303851769650196.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P8197590292350069277

`2^(A000040(n+1)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279882.P8197590292350069277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) + 1 : ℤ) - 1

end

end A279882.P8197590292350069277

namespace A279882

/-- `2^(A000040(n+1)+1)-1` -/
def P8197590292350069277.Spec : Prop :=
  ∀ n, P8197590292350069277.a n = (A279882 (n + 1) : ℚ)

end A279882

/-! ## A279882.P5085618674870066561

`A000225(A008864(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A279882

/-- `A000225(A008864(n+1))` -/
def P5085618674870066561.Spec : Prop :=
  ∀ n, P5085618674870066561.a n = A279882 (n + 1)

theorem P5085618674870066561.correct : P5085618674870066561.Spec := by
  intro n
  simp only [A279882, Nat.add_sub_cancel]

end A279882

/-! ## A279882.P1695548945143956986

`2*A001348(n+1)+1`
-/

namespace A279882.P1695548945143956986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001348 (n + 1) + 1

end

end A279882.P1695548945143956986

namespace A279882

/-- `2*A001348(n+1)+1` -/
def P1695548945143956986.Spec : Prop :=
  ∀ n, P1695548945143956986.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P4573035455110927951

`2*A034785(n+1)-1`
-/

namespace A279882.P4573035455110927951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034785 (n + 1) - 1

end

end A279882.P4573035455110927951

namespace A279882

/-- `2*A034785(n+1)-1` -/
def P4573035455110927951.Spec : Prop :=
  ∀ n, P4573035455110927951.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P1897299488986650282

`4*A061286(n+1)-1`
-/

namespace A279882.P1897299488986650282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061286 (n + 1) - 1

end

end A279882.P1897299488986650282

namespace A279882

/-- `4*A061286(n+1)-1` -/
def P1897299488986650282.Spec : Prop :=
  ∀ n, P1897299488986650282.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P18225653242962404123

`2*A098640(n+1)-3`
-/

namespace A279882.P18225653242962404123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098640 (n + 1) - 3

end

end A279882.P18225653242962404123

namespace A279882

/-- `2*A098640(n+1)-3` -/
def P18225653242962404123.Spec : Prop :=
  ∀ n, P18225653242962404123.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P15254295899456696307

`4*A098102(n+1)+3`
-/

namespace A279882.P15254295899456696307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098102 (n + 1) + 3

end

end A279882.P15254295899456696307

namespace A279882

/-- `4*A098102(n+1)+3` -/
def P15254295899456696307.Spec : Prop :=
  ∀ n, P15254295899456696307.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P12433239830991237882

`2*A241676(n+1)+5`
-/

namespace A279882.P12433239830991237882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241676 (n + 1) + 5

end

end A279882.P12433239830991237882

namespace A279882

/-- `2*A241676(n+1)+5` -/
def P12433239830991237882.Spec : Prop :=
  ∀ n, P12433239830991237882.a n = A279882 (n + 1)

end A279882

/-! ## A279882.P17161146897721719365

`2^A028815(n+1)-1`
-/

namespace A279882.P17161146897721719365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A028815 (n + 1) : ℤ) - 1

end

end A279882.P17161146897721719365

namespace A279882

/-- `2^A028815(n+1)-1` -/
def P17161146897721719365.Spec : Prop :=
  ∀ n, P17161146897721719365.a n = (A279882 (n + 1) : ℚ)

end A279882

/-!
# A279884: a(n) = (prime(n)-1)^(prime(n)+1) + 1.

The programs for A279884, the canonical program `A279884.P217644827455844109` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279884 has offset 1).

The definition of A279884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279884.P217644827455844109

`(A000040(n+1)-1)^(A000040(n+1)+1)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279884

/-- `(A000040(n+1)-1)^(A000040(n+1)+1)+1` -/
def P217644827455844109.Spec : Prop :=
  ∀ n, P217644827455844109.a n = (A279884 (n + 1) : ℚ)

end A279884

/-! ## A279884.P1957699230853726007

`A342485(A000040(n+1))`
-/

namespace A279884.P1957699230853726007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342485 (A000040 (n + 1)).toNat

end

end A279884.P1957699230853726007

namespace A279884

/-- `A342485(A000040(n+1))` -/
def P1957699230853726007.Spec : Prop :=
  ∀ n, P1957699230853726007.a n = A279884 (n + 1)

end A279884

/-! ## A279884.P7338808628420981683

`A342485(eq[1, A032741(n)])`
-/

namespace A279884.P7338808628420981683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279884.P7338808628420981683

namespace A279884

/-- `A342485(eq[1, A032741(n)])` -/
def P7338808628420981683.Spec : Prop :=
  ∀ n, P7338808628420981683.a n = A279884 (n + 1)

end A279884

/-! ## A279884.P13654004669163107161

`A006093(n+1)^(A000040(n+1)+1)+1`
-/

namespace A279884.P13654004669163107161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) ^ (A000040 (n + 1) + 1 : ℤ) + 1

end

end A279884.P13654004669163107161

namespace A279884

/-- `A006093(n+1)^(A000040(n+1)+1)+1` -/
def P13654004669163107161.Spec : Prop :=
  ∀ n, P13654004669163107161.a n = (A279884 (n + 1) : ℚ)

end A279884

/-! ## A279884.P13528812638029693912

`record[A000010(n+1)]^(A000040(n+1)+1)+1`
-/

namespace A279884.P13528812638029693912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A000040 (n + 1) + 1 : ℤ) + 1

end

end A279884.P13528812638029693912

namespace A279884

/-- `record[A000010(n+1)]^(A000040(n+1)+1)+1` -/
def P13528812638029693912.Spec : Prop :=
  ∀ n, P13528812638029693912.a n = (A279884 (n + 1) : ℚ)

end A279884

/-!
# A279886: a(n) = A057863(n+1) * Sum_{k=0..n}(k! / (2*k+1)!!).

The programs for A279886, there is no canonical definition to state claims against.
-/

/-! ## A279886.P4512245692922141036

`∏[∏[abs(1-2*n)]]*A087547(n+1)`
-/

namespace A279886.P4512245692922141036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A087547 (n + 1)

end

end A279886.P4512245692922141036

/-!
# A279887: Number of tilings of a sphinx of order n by elementary sphinxes (i.e., sphinxes of order 1).

The programs for A279887, there is no canonical definition to state claims against.
-/

/-! ## A279887.P6062134076369816413

`A101176(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A279887.P6062134076369816413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A101176 (a (n - 1) + 1).toNat

end

end A279887.P6062134076369816413

/-!
# A279890: Expansion of x*(1 - x + 2*x^3 - x^4)/((1 - x)*(1 + x)*(1 - x + x^2)*(1 - x - x^2)).

The programs for A279890, the canonical program `A279890.P15142953968091550547` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279890 has offset 0).

The definition of A279890 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2+2x^4-x^5)/(1-2x+2x^3-2x^4+x^6))` (program `A279890.P15142953968091550547`, by `A279890.P15142953968091550547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279890.P15142953968091550547

`ogf((x-x^2+2x^4-x^5)/(1-2x+2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279890

/-- `ogf((x-x^2+2x^4-x^5)/(1-2x+2x^3-2x^4+x^6))` -/
def P15142953968091550547.Spec : Prop :=
  ∀ n, P15142953968091550547.a n = A279890 n

theorem P15142953968091550547.correct : P15142953968091550547.Spec := by
  intro n
  simp only [A279890]

end A279890

/-! ## A279890.P14605066606551735488

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7`
-/

namespace A279890.P14605066606551735488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A279890.P14605066606551735488

namespace A279890

/-- `2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P14605066606551735488.Spec : Prop :=
  ∀ n, P14605066606551735488.a n = A279890 n

end A279890

/-! ## A279890.P5944717923369069883

`3*A000045(n)/2+((-1)^n+2*cos(π*n/3)-3)/6`
-/

namespace A279890.P5944717923369069883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * A000045 n : ℚ) / 2 : ℝ) + (((-1) ^ n : ℝ) + 2 * Real.cos (Real.pi * (n : ℝ) / 3) - 3) / 6

end

end A279890.P5944717923369069883

namespace A279890

/-- `3*A000045(n)/2+((-1)^n+2*cos(π*n/3)-3)/6` -/
def P5944717923369069883.Spec : Prop :=
  ∀ n, P5944717923369069883.a n = (A279890 n : ℝ)

end A279890

/-! ## A279890.P15903896413924734925

`floor(3*A000045(n)*A000045(n+1)*A000045(n+2)/(2*A000045(n+1)*A000045(n+2)-(-1)^n))`
-/

namespace A279890.P15903896413924734925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A000045 n * A000045 (n + 1) * A000045 (n + 2) : ℚ) / (2 * A000045 (n + 1) * A000045 (n + 2) - (-1) ^ n : ℚ)⌋

end

end A279890.P15903896413924734925

namespace A279890

/-- `floor(3*A000045(n)*A000045(n+1)*A000045(n+2)/(2*A000045(n+1)*A000045(n+2)-(-1)^n))` -/
def P15903896413924734925.Spec : Prop :=
  ∀ n, P15903896413924734925.a n = A279890 n

end A279890

/-! ## A279890.P13603819922808615176

`A000045(n)+∑[A293014(n)]`
-/

namespace A279890.P13603819922808615176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279890.P13603819922808615176

namespace A279890

/-- `A000045(n)+∑[A293014(n)]` -/
def P13603819922808615176.Spec : Prop :=
  ∀ n, P13603819922808615176.a n = A279890 n

end A279890

/-! ## A279890.P1317030552815478966

`A000045(n)+A293553(n)+A004697(n)`
-/

namespace A279890.P1317030552815478966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A293553 n + A004697 n)

end

end A279890.P1317030552815478966

namespace A279890

/-- `A000045(n)+A293553(n)+A004697(n)` -/
def P1317030552815478966.Spec : Prop :=
  ∀ n, P1317030552815478966.a n = A279890 n

end A279890

/-! ## A279890.P18235267223975486822

`A286311(n)-A131735(n-A131735(n))`
-/

namespace A279890.P18235267223975486822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286311 n - A131735 ((n : ℤ) - A131735 n).toNat

end

end A279890.P18235267223975486822

namespace A279890

/-- `A286311(n)-A131735(n-A131735(n))` -/
def P18235267223975486822.Spec : Prop :=
  ∀ n, P18235267223975486822.a n = A279890 n

end A279890

/-! ## A279890.P13394355963674597336

`A099517(n)-A212804(n)`
-/

namespace A279890.P13394355963674597336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099517 n - A212804 n

end

end A279890.P13394355963674597336

namespace A279890

/-- `A099517(n)-A212804(n)` -/
def P13394355963674597336.Spec : Prop :=
  ∀ n, P13394355963674597336.a n = A279890 n

end A279890

/-! ## A279890.P7801443678592706842

`∑[A141325(n)]-A226956(n)`
-/

namespace A279890.P7801443678592706842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226956 n

end

end A279890.P7801443678592706842

namespace A279890

/-- `∑[A141325(n)]-A226956(n)` -/
def P7801443678592706842.Spec : Prop :=
  ∀ n, P7801443678592706842.a n = A279890 n

end A279890

/-! ## A279890.P12857138775253872023

`A000045(n)+A099517(n)-A000045(n+1)`
-/

namespace A279890.P12857138775253872023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A099517 n - A000045 (n + 1))

end

end A279890.P12857138775253872023

namespace A279890

/-- `A000045(n)+A099517(n)-A000045(n+1)` -/
def P12857138775253872023.Spec : Prop :=
  ∀ n, P12857138775253872023.a n = A279890 n

end A279890

/-! ## A279890.P1136628503657753459

`A001611(n)+A099517(n)-A001611(n+1)`
-/

namespace A279890.P1136628503657753459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A099517 n - A001611 (n + 1))

end

end A279890.P1136628503657753459

namespace A279890

/-- `A001611(n)+A099517(n)-A001611(n+1)` -/
def P1136628503657753459.Spec : Prop :=
  ∀ n, P1136628503657753459.a n = A279890 n

end A279890

/-! ## A279890.P503863845237615401

`A099517(n)+A157727(n)-A157727(n+1)`
-/

namespace A279890.P503863845237615401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099517 n + (A157727 n - A157727 (n + 1))

end

end A279890.P503863845237615401

namespace A279890

/-- `A099517(n)+A157727(n)-A157727(n+1)` -/
def P503863845237615401.Spec : Prop :=
  ∀ n, P503863845237615401.a n = A279890 n

end A279890

/-! ## A279890.P2637229855428049569

`floor((A022086(n)-A000035(n))/2)`
-/

namespace A279890.P2637229855428049569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022086 n - A000035 n : ℚ) / 2⌋

end

end A279890.P2637229855428049569

namespace A279890

/-- `floor((A022086(n)-A000035(n))/2)` -/
def P2637229855428049569.Spec : Prop :=
  ∀ n, P2637229855428049569.a n = A279890 n

end A279890

/-! ## A279890.P5384098237480175318

`ceil((A166012(n)+A000045(n)-2)/2)`
-/

namespace A279890.P5384098237480175318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166012 n + (A000045 n - 2) : ℚ) / 2⌉

end

end A279890.P5384098237480175318

namespace A279890

/-- `ceil((A166012(n)+A000045(n)-2)/2)` -/
def P5384098237480175318.Spec : Prop :=
  ∀ n, P5384098237480175318.a n = A279890 n

end A279890

/-! ## A279890.P192099082462026091

`Δ[floor(A192967(n)/2)]`
-/

namespace A279890.P192099082462026091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192967 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279890.P192099082462026091

namespace A279890

/-- `Δ[floor(A192967(n)/2)]` -/
def P192099082462026091.Spec : Prop :=
  ∀ n, P192099082462026091.a n = A279890 n

end A279890

/-! ## A279890.P12366643182169947227

`Δ[round(A192958(n)/4)]`
-/

namespace A279890.P12366643182169947227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A192958 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279890.P12366643182169947227

namespace A279890

/-- `Δ[round(A192958(n)/4)]` -/
def P12366643182169947227.Spec : Prop :=
  ∀ n, P12366643182169947227.a n = A279890 n

end A279890

/-!
# A279891: Triangle read by rows, T(n,k) = 2*n, with n>=k>=0.

The programs for A279891, the canonical program `A279891.P11915647867805557395` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279891 has offset 0).

The definition of A279891 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*row(n)` (program `A279891.P11915647867805557395`, by `A279891.P11915647867805557395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A279891.P11915647867805557395

`2*row(n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279891

/-- `2*row(n)` -/
def P11915647867805557395.Spec : Prop :=
  ∀ n, (P11915647867805557395.a n : ℤ) = A279891 n

theorem P11915647867805557395.correct : P11915647867805557395.Spec := by
  intro n
  simp only [A279891]

end A279891

/-! ## A279891.P15168887197681408912

`2*floor((sqrt(1+8*n)-1)/2)`
-/

namespace A279891.P15168887197681408912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Real.sqrt (1 + 8 * n : ℝ) - 1) / 2⌋

end

end A279891.P15168887197681408912

namespace A279891

/-- `2*floor((sqrt(1+8*n)-1)/2)` -/
def P15168887197681408912.Spec : Prop :=
  ∀ n, P15168887197681408912.a n = A279891 n

end A279891

/-! ## A279891.P9981405799574169008

`row(n)+row(n)`
-/

namespace A279891.P9981405799574169008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + SequenceMachineLib.triRow n

end

end A279891.P9981405799574169008

namespace A279891

/-- `row(n)+row(n)` -/
def P9981405799574169008.Spec : Prop :=
  ∀ n, (P9981405799574169008.a n : ℤ) = A279891 n

theorem P9981405799574169008.correct : P9981405799574169008.Spec := by
  intro n
  simp only [A279891, Nat.add_sub_cancel, A279891.P9981405799574169008.a, A279891.P11915647867805557395.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A279891

/-! ## A279891.P4763403066675994330

`∑[dr(2*char[∑[n]])]-2`
-/

namespace A279891.P4763403066675994330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A279891.P4763403066675994330

namespace A279891

/-- `∑[dr(2*char[∑[n]])]-2` -/
def P4763403066675994330.Spec : Prop :=
  ∀ n, P4763403066675994330.a n = A279891 n

end A279891

/-! ## A279891.P4108522544693367605

`2*(comp[C(n, 2)]-n)-4`
-/

namespace A279891.P4108522544693367605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) - 4

end

end A279891.P4108522544693367605

namespace A279891

/-- `2*(comp[C(n, 2)]-n)-4` -/
def P4108522544693367605.Spec : Prop :=
  ∀ n, P4108522544693367605.a n = A279891 n

end A279891

/-! ## A279891.P16601842694053562414

`∑[and(2, char[∑[n]]+1)]-2`
-/

namespace A279891.P16601842694053562414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A279891.P16601842694053562414

namespace A279891

/-- `∑[and(2, char[∑[n]]+1)]-2` -/
def P16601842694053562414.Spec : Prop :=
  ∀ n, P16601842694053562414.a n = A279891 n

end A279891

/-! ## A279891.P15117941319739628057

`xor(1, ∑[2*char[∑[n]]]-1)`
-/

namespace A279891.P15117941319739628057
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A279891.P15117941319739628057

namespace A279891

/-- `xor(1, ∑[2*char[∑[n]]]-1)` -/
def P15117941319739628057.Spec : Prop :=
  ∀ n, P15117941319739628057.a n = A279891 n

end A279891

/-! ## A279891.P1679553597772381088

`a(n-(a(n-1)/2+1))+2` with `a(0)=0`
-/

namespace A279891.P1679553597772381088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - ((a (n - 1) : ℚ) / 2 + 1))).toNat + 2

end

end A279891.P1679553597772381088

namespace A279891

/-- `a(n-(a(n-1)/2+1))+2` -/
def P1679553597772381088.Spec : Prop :=
  ∀ n, (P1679553597772381088.a n : ℤ) = A279891 n

end A279891

/-! ## A279891.P7377678327960891746

`A131507(n)-1`
-/

namespace A279891.P7377678327960891746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - 1

end

end A279891.P7377678327960891746

namespace A279891

/-- `A131507(n)-1` -/
def P7377678327960891746.Spec : Prop :=
  ∀ n, P7377678327960891746.a n = A279891 n

end A279891

/-! ## A279891.P7203388418881011573

`log2(A137688(n)²)`
-/

namespace A279891.P7203388418881011573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A137688 n ^ 2 : ℝ)

end

end A279891.P7203388418881011573

namespace A279891

/-- `log2(A137688(n)²)` -/
def P7203388418881011573.Spec : Prop :=
  ∀ n, P7203388418881011573.a n = (A279891 n : ℝ)

end A279891

/-! ## A279891.P13774755966219398919

`floor(log2(A048710(n)))`
-/

namespace A279891.P13774755966219398919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A048710 n).toNat

end

end A279891.P13774755966219398919

namespace A279891

/-- `floor(log2(A048710(n)))` -/
def P13774755966219398919.Spec : Prop :=
  ∀ n, (P13774755966219398919.a n : ℤ) = A279891 n

end A279891

/-! ## A279891.P4555603410557840465

`∑[A089799(n)]-2`
-/

namespace A279891.P4555603410557840465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A279891.P4555603410557840465

namespace A279891

/-- `∑[A089799(n)]-2` -/
def P4555603410557840465.Spec : Prop :=
  ∀ n, P4555603410557840465.a n = A279891 n

end A279891

/-! ## A279891.P7783774372587538431

`∑[2*A073424(n)]`
-/

namespace A279891.P7783774372587538431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279891.P7783774372587538431

namespace A279891

/-- `∑[2*A073424(n)]` -/
def P7783774372587538431.Spec : Prop :=
  ∀ n, P7783774372587538431.a n = A279891 n

end A279891

/-! ## A279891.P16977521909908364048

`Δ[2*A006463(n)]`
-/

namespace A279891.P16977521909908364048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A279891.P16977521909908364048

namespace A279891

/-- `Δ[2*A006463(n)]` -/
def P16977521909908364048.Spec : Prop :=
  ∀ n, P16977521909908364048.a n = A279891 n

end A279891

/-! ## A279891.P12937035662162751940

`A111650(n+1)-2`
-/

namespace A279891.P12937035662162751940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - 2

end

end A279891.P12937035662162751940

namespace A279891

/-- `A111650(n+1)-2` -/
def P12937035662162751940.Spec : Prop :=
  ∀ n, P12937035662162751940.a n = A279891 n

end A279891

/-! ## A279891.P12472152133961369792

`a(A056943(n))+2` with `a(0)=0`
-/

namespace A279891.P12472152133961369792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A056943 n).toNat + 2

end

end A279891.P12472152133961369792

namespace A279891

/-- `a(A056943(n))+2` -/
def P12472152133961369792.Spec : Prop :=
  ∀ n, (P12472152133961369792.a n : ℤ) = A279891 n

end A279891

/-! ## A279891.P12218575760828255503

`2*A003057(n+2)-4`
-/

namespace A279891.P12218575760828255503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003057 (n + 2) - 4

end

end A279891.P12218575760828255503

namespace A279891

/-- `2*A003057(n+2)-4` -/
def P12218575760828255503.Spec : Prop :=
  ∀ n, P12218575760828255503.a n = A279891 n

end A279891

/-! ## A279891.P3582337426286107817

`A005843(A003056(n))`
-/

namespace A279891.P3582337426286107817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003056 n).toNat

end

end A279891.P3582337426286107817

namespace A279891

/-- `A005843(A003056(n))` -/
def P3582337426286107817.Spec : Prop :=
  ∀ n, P3582337426286107817.a n = A279891 n

end A279891

/-! ## A279891.P12147047095521584996

`A075302(A057944(n))`
-/

namespace A279891.P12147047095521584996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 (A057944 n).toNat

end

end A279891.P12147047095521584996

namespace A279891

/-- `A075302(A057944(n))` -/
def P12147047095521584996.Spec : Prop :=
  ∀ n, P12147047095521584996.a n = A279891 n

end A279891

/-! ## A279891.P10791825287021022915

`A052928(2*A003056(n))`
-/

namespace A279891.P10791825287021022915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (2 * A003056 n).toNat

end

end A279891.P10791825287021022915

namespace A279891

/-- `A052928(2*A003056(n))` -/
def P10791825287021022915.Spec : Prop :=
  ∀ n, P10791825287021022915.a n = A279891 n

end A279891

/-!
# A279895: a(n) = n*(5*n + 11)/2.

The programs for A279895, the canonical program `A279895.P8982875468907171124` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279895 has offset 0).

The definition of A279895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A279895.P467011580325337183

`n*(5*n+11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A279895.P467011580325337183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (5 * n + 11) : ℚ) / 2

end

end A279895.P467011580325337183

namespace A279895

/-- `n*(5*n+11)/2` -/
def P467011580325337183.Spec : Prop :=
  ∀ n, P467011580325337183.a n = (A279895 n : ℚ)

end A279895

/-! ## A279895.P8982875468907171124

`A000566(n)+7*n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A279895

/-- `A000566(n)+7*n` -/
def P8982875468907171124.Spec : Prop :=
  ∀ n, P8982875468907171124.a n = A279895 n

theorem P8982875468907171124.correct : P8982875468907171124.Spec := by
  intro n
  simp only [A279895]

end A279895

/-! ## A279895.P12927253133377069543

`∑[a(n-1)+5]` with `a(0)=0, a(1)=8`
-/

namespace A279895.P12927253133377069543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279895.P12927253133377069543

namespace A279895

/-- `∑[a(n-1)+5]` -/
def P12927253133377069543.Spec : Prop :=
  ∀ n, (P12927253133377069543.a n : ℤ) = A279895 n

end A279895

/-! ## A279895.P785330878398409038

`∑[record[xor(3, n+3)]+n]`
-/

namespace A279895.P785330878398409038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279895.P785330878398409038

namespace A279895

/-- `∑[record[xor(3, n+3)]+n]` -/
def P785330878398409038.Spec : Prop :=
  ∀ n, (P785330878398409038.a n : ℤ) = A279895 n

end A279895

/-! ## A279895.P7317073769829103731

`∑[ogf((8x-3x^2)/(1-2x+x^2))]`
-/

namespace A279895.P7317073769829103731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279895.P7317073769829103731

namespace A279895

/-- `∑[ogf((8x-3x^2)/(1-2x+x^2))]` -/
def P7317073769829103731.Spec : Prop :=
  ∀ n, P7317073769829103731.a n = A279895 n

end A279895

/-! ## A279895.P11235833940049331599

`ogf((8x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A279895.P11235833940049331599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -3] [1, -3, 3, -1] n

end

end A279895.P11235833940049331599

namespace A279895

/-- `ogf((8x-3x^2)/(1-3x+3x^2-x^3))` -/
def P11235833940049331599.Spec : Prop :=
  ∀ n, P11235833940049331599.a n = A279895 n

end A279895

/-! ## A279895.P16194908490508608340

`a(n-1)+5*n+3` with `a(0)=0`
-/

namespace A279895.P16194908490508608340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (5 * n + 3)

end

end A279895.P16194908490508608340

namespace A279895

/-- `a(n-1)+5*n+3` -/
def P16194908490508608340.Spec : Prop :=
  ∀ n, (P16194908490508608340.a n : ℤ) = A279895 n

end A279895

/-! ## A279895.P15638889283138141082

`3*n-∑[a(n-1)-5]` with `a(0)=0`
-/

namespace A279895.P15638889283138141082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279895.P15638889283138141082

namespace A279895

/-- `3*n-∑[a(n-1)-5]` -/
def P15638889283138141082.Spec : Prop :=
  ∀ n, P15638889283138141082.a n = A279895 n

end A279895

/-! ## A279895.P1237171803221113526

`∑[8-(a(n-1)%5-a(n-1))]` with `a(0)=0`
-/

namespace A279895.P1237171803221113526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  8 - (Int.tmod (f1 (n - 1)) 5 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A279895.P1237171803221113526

namespace A279895

/-- `∑[8-(a(n-1)%5-a(n-1))]` -/
def P1237171803221113526.Spec : Prop :=
  ∀ n, P1237171803221113526.a n = A279895 n

end A279895

/-! ## A279895.P2436314915426837023

`A131895(n)-1`
-/

namespace A279895.P2436314915426837023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131895 n - 1

end

end A279895.P2436314915426837023

namespace A279895

/-- `A131895(n)-1` -/
def P2436314915426837023.Spec : Prop :=
  ∀ n, P2436314915426837023.a n = A279895 n

end A279895

/-! ## A279895.P10843704386634888568

`A302906(n)-n`
-/

namespace A279895.P10843704386634888568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n - (n : ℤ)

end

end A279895.P10843704386634888568

namespace A279895

/-- `A302906(n)-n` -/
def P10843704386634888568.Spec : Prop :=
  ∀ n, P10843704386634888568.a n = A279895 n

end A279895

/-! ## A279895.P12612288455470673411

`∑[A016885(n)]-3`
-/

namespace A279895.P12612288455470673411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A279895.P12612288455470673411

namespace A279895

/-- `∑[A016885(n)]-3` -/
def P12612288455470673411.Spec : Prop :=
  ∀ n, P12612288455470673411.a n = A279895 n

end A279895

/-! ## A279895.P16856039356746312672

`A059845(n)+n²`
-/

namespace A279895.P16856039356746312672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + (n ^ 2 : ℤ)

end

end A279895.P16856039356746312672

namespace A279895

/-- `A059845(n)+n²` -/
def P16856039356746312672.Spec : Prop :=
  ∀ n, P16856039356746312672.a n = A279895 n

end A279895

/-! ## A279895.P6782689780422220409

`A033537(n)+∑[n]`
-/

namespace A279895.P6782689780422220409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279895.P6782689780422220409

namespace A279895

/-- `A033537(n)+∑[n]` -/
def P6782689780422220409.Spec : Prop :=
  ∀ n, P6782689780422220409.a n = A279895 n

end A279895

/-! ## A279895.P9196762263278871271

`A067725(n)-∑[n]`
-/

namespace A279895.P9196762263278871271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279895.P9196762263278871271

namespace A279895

/-- `A067725(n)-∑[n]` -/
def P9196762263278871271.Spec : Prop :=
  ∀ n, P9196762263278871271.a n = A279895 n

end A279895

/-! ## A279895.P13384956373742920458

`A028895(n)+3*n`
-/

namespace A279895.P13384956373742920458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + (3 * n : ℤ)

end

end A279895.P13384956373742920458

namespace A279895

/-- `A028895(n)+3*n` -/
def P13384956373742920458.Spec : Prop :=
  ∀ n, P13384956373742920458.a n = A279895 n

end A279895

/-! ## A279895.P13666159594023055475

`A147875(n)+4*n`
-/

namespace A279895.P13666159594023055475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + (4 * n : ℤ)

end

end A279895.P13666159594023055475

namespace A279895

/-- `A147875(n)+4*n` -/
def P13666159594023055475.Spec : Prop :=
  ∀ n, P13666159594023055475.a n = A279895 n

end A279895

/-! ## A279895.P444217364246720295

`6*n+A005476(n)`
-/

namespace A279895.P444217364246720295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A005476 n

end

end A279895.P444217364246720295

namespace A279895

/-- `6*n+A005476(n)` -/
def P444217364246720295.Spec : Prop :=
  ∀ n, P444217364246720295.a n = A279895 n

end A279895

/-! ## A279895.P5790745411418162686

`A131874(n)-(n+1)²`
-/

namespace A279895.P5790745411418162686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n - ((n + 1) ^ 2 : ℤ)

end

end A279895.P5790745411418162686

namespace A279895

/-- `A131874(n)-(n+1)²` -/
def P5790745411418162686.Spec : Prop :=
  ∀ n, P5790745411418162686.a n = A279895 n

end A279895

/-! ## A279895.P6925264059864350176

`A140091(n)+n²+n`
-/

namespace A279895.P6925264059864350176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (n ^ 2 + n : ℤ)

end

end A279895.P6925264059864350176

namespace A279895

/-- `A140091(n)+n²+n` -/
def P6925264059864350176.Spec : Prop :=
  ∀ n, P6925264059864350176.a n = A279895 n

end A279895

/-!
# A279896: Number of n X 2 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279896, the canonical program `A279896.P14783674334196826857` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279896 has offset 1).

The definition of A279896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279896.P14783674334196826857

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=8, a(4)=18, a(5)=36, a(6)=78`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279896

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P14783674334196826857.Spec : Prop :=
  ∀ n, P14783674334196826857.a n = A279896 (n + 1)

theorem P14783674334196826857.correct : P14783674334196826857.Spec := by
  intro n
  simp only [A279896, Nat.add_sub_cancel]

end A279896

/-! ## A279896.P14272537014006121335

`A279902(∑[n+1]+2)`
-/

namespace A279896.P14272537014006121335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A279896.P14272537014006121335

namespace A279896

/-- `A279902(∑[n+1]+2)` -/
def P14272537014006121335.Spec : Prop :=
  ∀ n, P14272537014006121335.a n = A279896 (n + 1)

end A279896

/-! ## A279896.P11442208011991480316

`lcm(2, A279902(A133263(n+1)))`
-/

namespace A279896.P11442208011991480316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A279902 (A133263 (n + 1)).toNat)

end

end A279896.P11442208011991480316

namespace A279896

/-- `lcm(2, A279902(A133263(n+1)))` -/
def P11442208011991480316.Spec : Prop :=
  ∀ n, (P11442208011991480316.a n : ℤ) = A279896 (n + 1)

end A279896

/-! ## A279896.P10873864298460877224

`record[A279902(n+3)/A008275(n+1)]`
-/

namespace A279896.P10873864298460877224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279902 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A279896.P10873864298460877224

namespace A279896

/-- `record[A279902(n+3)/A008275(n+1)]` -/
def P10873864298460877224.Spec : Prop :=
  ∀ n, P10873864298460877224.a n = (A279896 (n + 1) : ℚ)

end A279896

/-!
# A279897: Number of n X 3 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279897, the canonical program `A279897.P9110160359215190048` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A279897 has offset 1).

The definition of A279897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A279897.P9110160359215190048

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=6, a(2)=9, a(3)=20, a(4)=43, a(5)=94, a(6)=213`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A279897

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P9110160359215190048.Spec : Prop :=
  ∀ n, P9110160359215190048.a n = A279897 (n + 1)

theorem P9110160359215190048.correct : P9110160359215190048.Spec := by
  intro n
  simp only [A279897, Nat.add_sub_cancel]

end A279897

/-! ## A279897.P7296827372371668370

`A279902(∑[n+2]+4)`
-/

namespace A279897.P7296827372371668370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A279897.P7296827372371668370

namespace A279897

/-- `A279902(∑[n+2]+4)` -/
def P7296827372371668370.Spec : Prop :=
  ∀ n, P7296827372371668370.a n = A279897 (n + 1)

end A279897

/-! ## A279897.P6385961362475304179

`A279902(A167614(n+1))+char[18]`
-/

namespace A279897.P6385961362475304179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279897.P6385961362475304179

namespace A279897

/-- `A279902(A167614(n+1))+char[18]` -/
def P6385961362475304179.Spec : Prop :=
  ∀ n, P6385961362475304179.a n = A279897 (n + 1)

end A279897

/-! ## A279897.P6050902554916314669

`A279902(A055998(n)+6)+char[18]`
-/

namespace A279897.P6050902554916314669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A279897.P6050902554916314669

namespace A279897

/-- `A279902(A055998(n)+6)+char[18]` -/
def P6050902554916314669.Spec : Prop :=
  ∀ n, P6050902554916314669.a n = A279897 (n + 1)

end A279897

/-! ## A279897.P4867909041496651012

`A326458(n)+A279902(A167614(n+1))`
-/

namespace A279897.P4867909041496651012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A279902 (A167614 (n + 1)).toNat

end

end A279897.P4867909041496651012

namespace A279897

/-- `A326458(n)+A279902(A167614(n+1))` -/
def P4867909041496651012.Spec : Prop :=
  ∀ n, P4867909041496651012.a n = A279897 (n + 1)

end A279897

/-!
# A279898: Number of nX4 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279898, there is no canonical definition to state claims against.
-/

/-! ## A279898.P16327784952629524247

`A279902(A374004(n+1))`
-/

namespace A279898.P16327784952629524247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A374004 (n + 1)).toNat

end

end A279898.P16327784952629524247

/-! ## A279898.P7886009397364964451

`A279902(A141214(n)+7)`
-/

namespace A279898.P7886009397364964451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A141214 n + 7).toNat

end

end A279898.P7886009397364964451

/-! ## A279898.P17741452754210631246

`A279902(A052905(n)+9)`
-/

namespace A279898.P17741452754210631246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A052905 n + 9).toNat

end

end A279898.P17741452754210631246

/-! ## A279898.P808953737006563635

`A279902(A055999(n)+10)`
-/

namespace A279898.P808953737006563635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A055999 n + 10).toNat

end

end A279898.P808953737006563635

/-! ## A279898.P11547029438364469001

`A279902(eq[5, A066657(n)])`
-/

namespace A279898.P11547029438364469001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279898.P11547029438364469001

/-!
# A279899: Number of nX5 0..2 arrays with no element unequal to a strict majority of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A279899, there is no canonical definition to state claims against.
-/

/-! ## A279899.P13287639061642046627

`A279902(A374005(n+1))`
-/

namespace A279899.P13287639061642046627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A374005 (n + 1)).toNat

end

end A279899.P13287639061642046627

/-! ## A279899.P14649867315172691170

`A279902(A155212(n)+13)`
-/

namespace A279899.P14649867315172691170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A155212 n + 13).toNat

end

end A279899.P14649867315172691170

/-! ## A279899.P8188210918841791782

`A279902(A056000(n)+15)`
-/

namespace A279899.P8188210918841791782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A056000 n + 15).toNat

end

end A279899.P8188210918841791782

/-! ## A279899.P4589721946595471135

`A279902(eq[7, A066657(n)])`
-/

namespace A279899.P4589721946595471135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A279899.P4589721946595471135

/-! ## A279899.P14931640725747784457

`A279902(A000217(n+4)+5)`
-/

namespace A279899.P14931640725747784457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279902 (A000217 (n + 4) + 5).toNat

end

end A279899.P14931640725747784457

