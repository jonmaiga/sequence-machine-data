import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A237400: Number of (n+1) X (2+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237400, there is no canonical definition to state claims against.
-/

/-! ## A237400.P13112879399402601024

`A237403(∑[n+1]+2)`
-/

namespace A237400.P13112879399402601024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237400.P13112879399402601024

/-! ## A237400.P14748434828287188626

`record[A010054(n)*A237403(n+2)]`
-/

namespace A237400.P14748434828287188626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237403 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237400.P14748434828287188626

/-! ## A237400.P9661746121348859173

`record[A237403(A101881(n)+1)]`
-/

namespace A237400.P9661746121348859173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237400.P9661746121348859173

/-!
# A237401: Number of (n+1) X (3+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237401, there is no canonical definition to state claims against.
-/

/-! ## A237401.P3650007255081967759

`A237403(∑[n+2]+4)`
-/

namespace A237401.P3650007255081967759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237401.P3650007255081967759

/-! ## A237401.P2949629031340148437

`lcm(2, A237403(A167614(n+1)))`
-/

namespace A237401.P2949629031340148437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237403 (A167614 (n + 1)).toNat)

end

end A237401.P2949629031340148437

/-! ## A237401.P11884523612148730900

`A237403(A167614(n+1))+A185284(n)`
-/

namespace A237401.P11884523612148730900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A167614 (n + 1)).toNat + A185284 n

end

end A237401.P11884523612148730900

/-! ## A237401.P12981129496873858215

`A237403(A167614(n+1))+A236378(n)`
-/

namespace A237401.P12981129496873858215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A167614 (n + 1)).toNat + A236378 n

end

end A237401.P12981129496873858215

/-! ## A237401.P8769700325895706758

`A262889(n)+A237403(A167614(n+1))`
-/

namespace A237401.P8769700325895706758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262889 n + A237403 (A167614 (n + 1)).toNat

end

end A237401.P8769700325895706758

/-!
# A237402: Number of (n+1) X (4+1) 0..3 arrays with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237402, there is no canonical definition to state claims against.
-/

/-! ## A237402.P8728914155976345633

`A237403(A374004(n+1))`
-/

namespace A237402.P8728914155976345633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A374004 (n + 1)).toNat

end

end A237402.P8728914155976345633

/-! ## A237402.P1214291931189675327

`A237403(A141214(n)+7)`
-/

namespace A237402.P1214291931189675327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A141214 n + 7).toNat

end

end A237402.P1214291931189675327

/-! ## A237402.P4946266674912839160

`A237403(A052905(n)+9)`
-/

namespace A237402.P4946266674912839160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A052905 n + 9).toNat

end

end A237402.P4946266674912839160

/-! ## A237402.P12095635268564847448

`A237403(A055999(n)+10)`
-/

namespace A237402.P12095635268564847448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237403 (A055999 n + 10).toNat

end

end A237402.P12095635268564847448

/-!
# A237404: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237404, there is no canonical definition to state claims against.
-/

/-! ## A237404.P18167156417919511708

`A237412(∑[4*n]+1)`
-/

namespace A237404.P18167156417919511708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237404.P18167156417919511708

/-! ## A237404.P509313942659300929

`record[A237412(A330613(n+1))]`
-/

namespace A237404.P509313942659300929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237404.P509313942659300929

/-! ## A237404.P8563515789049500074

`record[A003982(n)*A237412(n+1)]`
-/

namespace A237404.P8563515789049500074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237404.P8563515789049500074

/-! ## A237404.P18402781090942047586

`record[gcd(A008482(n), A237412(n+1))]`
-/

namespace A237404.P18402781090942047586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A237412 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237404.P18402781090942047586

/-!
# A237405: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237405, there is no canonical definition to state claims against.
-/

/-! ## A237405.P4893326210417149017

`A237412(∑[n]+1)`
-/

namespace A237405.P4893326210417149017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237405.P4893326210417149017

/-! ## A237405.P1284943061544715590

`record[A237412(n+1)/A008459(n)]`
-/

namespace A237405.P1284943061544715590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237412 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237405.P1284943061544715590

/-! ## A237405.P6446908655364967730

`record[A237412(n+1)/A022166(n)]`
-/

namespace A237405.P6446908655364967730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237412 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237405.P6446908655364967730

/-! ## A237405.P87261280169317927

`record[A237412(n+1)/A099594(n)]`
-/

namespace A237405.P87261280169317927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237412 (n + 1) : ℚ) / (A099594 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237405.P87261280169317927

/-! ## A237405.P15255711529700099723

`record[A237412(n+1)/A181543(n)]`
-/

namespace A237405.P15255711529700099723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237412 (n + 1) : ℚ) / (A181543 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237405.P15255711529700099723

/-!
# A237406: Number of (n+1) X (2+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237406, there is no canonical definition to state claims against.
-/

/-! ## A237406.P10383489191329656051

`A237412(∑[n+1]+2)`
-/

namespace A237406.P10383489191329656051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237406.P10383489191329656051

/-! ## A237406.P5273741493742321724

`record[A237412(A333530(n+1))]`
-/

namespace A237406.P5273741493742321724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237406.P5273741493742321724

/-! ## A237406.P12912952052594763175

`record[A237412(Δ[A003453(n+5)])]`
-/

namespace A237406.P12912952052594763175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237406.P12912952052594763175

/-! ## A237406.P4389661020904289207

`record[A237412(A000096(val(n+1, 2)+1))]`
-/

namespace A237406.P4389661020904289207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237406.P4389661020904289207

/-! ## A237406.P12730856208001473607

`A264668(n)+A237412(A034856(n+1)+1)`
-/

namespace A237406.P12730856208001473607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A237412 (A034856 (n + 1) + 1).toNat

end

end A237406.P12730856208001473607

/-!
# A237407: Number of (n+1) X (3+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237407, there is no canonical definition to state claims against.
-/

/-! ## A237407.P3720383401392493963

`A237412(∑[n+2]+4)`
-/

namespace A237407.P3720383401392493963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237407.P3720383401392493963

/-! ## A237407.P13899224376474173818

`A237412(A167614(n+1))+A185284(n)`
-/

namespace A237407.P13899224376474173818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A167614 (n + 1)).toNat + A185284 n

end

end A237407.P13899224376474173818

/-! ## A237407.P15452403850337436077

`lcm(A015403(n), A237412(A167614(n+1)))`
-/

namespace A237407.P15452403850337436077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015403 n) (A237412 (A167614 (n + 1)).toNat)

end

end A237407.P15452403850337436077

/-! ## A237407.P17560470733841154802

`A264668(n)+A237412(A034856(n+2))`
-/

namespace A237407.P17560470733841154802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A237412 (A034856 (n + 2)).toNat

end

end A237407.P17560470733841154802

/-! ## A237407.P1411898328030586261

`char[A106619(n)]*A237412(A034856(n+2))`
-/

namespace A237407.P1411898328030586261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A237412 (A034856 (n + 2)).toNat

end

end A237407.P1411898328030586261

/-!
# A237408: Number of (n+1) X (4+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237408, there is no canonical definition to state claims against.
-/

/-! ## A237408.P12073580582664645342

`A237412(A374004(n+1))`
-/

namespace A237408.P12073580582664645342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A374004 (n + 1)).toNat

end

end A237408.P12073580582664645342

/-! ## A237408.P5939980069691699408

`A237412(A141214(n)+7)`
-/

namespace A237408.P5939980069691699408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A141214 n + 7).toNat

end

end A237408.P5939980069691699408

/-! ## A237408.P5968517092327445575

`A237412(A052905(n)+9)`
-/

namespace A237408.P5968517092327445575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A052905 n + 9).toNat

end

end A237408.P5968517092327445575

/-! ## A237408.P2315714496138211347

`A237412(A055999(n)+10)`
-/

namespace A237408.P2315714496138211347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A055999 n + 10).toNat

end

end A237408.P2315714496138211347

/-! ## A237408.P14585927125335071939

`A237412(A167614(n+2)+1)`
-/

namespace A237408.P14585927125335071939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A167614 (n + 2) + 1).toNat

end

end A237408.P14585927125335071939

/-!
# A237409: Number of (n+1) X (5+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237409, there is no canonical definition to state claims against.
-/

/-! ## A237409.P11337607875094789554

`A237412(A374005(n+1))`
-/

namespace A237409.P11337607875094789554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A374005 (n + 1)).toNat

end

end A237409.P11337607875094789554

/-! ## A237409.P15082368406671459498

`A237412(A155212(n)+13)`
-/

namespace A237409.P15082368406671459498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A155212 n + 13).toNat

end

end A237409.P15082368406671459498

/-! ## A237409.P16795713892627017701

`A237412(A056000(n)+15)`
-/

namespace A237409.P16795713892627017701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A056000 n + 15).toNat

end

end A237409.P16795713892627017701

/-! ## A237409.P8321450267511030512

`A237412(eq[6, A131818(n+1)])`
-/

namespace A237409.P8321450267511030512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237409.P8321450267511030512

/-! ## A237409.P1189923585205209917

`A237412(eq[4, A193592(n)])`
-/

namespace A237409.P1189923585205209917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237409.P1189923585205209917

/-!
# A237410: Number of (n+1) X (6+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237410, there is no canonical definition to state claims against.
-/

/-! ## A237410.P12558664958807126463

`A237412(A374007(n+1))`
-/

namespace A237410.P12558664958807126463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A374007 (n + 1)).toNat

end

end A237410.P12558664958807126463

/-! ## A237410.P1968760162812677679

`A237412(eq[7, A131818(n+1)])`
-/

namespace A237410.P1968760162812677679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237410.P1968760162812677679

/-! ## A237410.P1471625027616635532

`A237412(A056119(n)+16)`
-/

namespace A237410.P1471625027616635532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A056119 n + 16).toNat

end

end A237410.P1471625027616635532

/-! ## A237410.P11504574805613006346

`A237412(eq[3, A219347(n)])`
-/

namespace A237410.P11504574805613006346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237410.P11504574805613006346

/-! ## A237410.P4115489950513276769

`A237412(eq[5, A193592(n)])`
-/

namespace A237410.P4115489950513276769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237410.P4115489950513276769

/-!
# A237411: Number of (n+1) X (7+1) 0..2 arrays with the maximum plus the upper median plus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237411, there is no canonical definition to state claims against.
-/

/-! ## A237411.P10153250070877172365

`A237412(A374008(n+1))`
-/

namespace A237411.P10153250070877172365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A374008 (n + 1)).toNat

end

end A237411.P10153250070877172365

/-! ## A237411.P16448608327611597582

`A237412(eq[8, A131818(n+1)])`
-/

namespace A237411.P16448608327611597582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237411.P16448608327611597582

/-! ## A237411.P11487444974559742745

`A237412(A055999(n+4))`
-/

namespace A237411.P11487444974559742745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (A055999 (n + 4)).toNat

end

end A237411.P11487444974559742745

/-! ## A237411.P9017385775328842537

`A237412(eq[4, A219347(n)])`
-/

namespace A237411.P9017385775328842537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237411.P9017385775328842537

/-! ## A237411.P6990971531697479567

`A237412(eq[6, A193592(n)])`
-/

namespace A237411.P6990971531697479567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237411.P6990971531697479567

/-!
# A237414: Primes p with p^2 - 2 and prime(p)^2 - 2 both prime.

The programs for A237414, there is no canonical definition to state claims against.
-/

/-! ## A237414.P4124357600313156660

`∩[A062326(n+1), A137291(n+1)]`
-/

namespace A237414.P4124357600313156660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237414.P4124357600313156660

/-! ## A237414.P6373900213446962927

`p?[∩[A028870(n+1), A137291(n+1)]]`
-/

namespace A237414.P6373900213446962927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A237414.P6373900213446962927

/-! ## A237414.P12446527631769602090

`p?[(2-A261281(n+1))*A000040(n+1)]`
-/

namespace A237414.P12446527631769602090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A261281 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237414.P12446527631769602090

/-! ## A237414.P1975913189373810810

`p?[A006093(n+1)+A001223(A261281(n+1))]`
-/

namespace A237414.P1975913189373810810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A001223 (A261281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237414.P1975913189373810810

/-! ## A237414.P7198893832583929749

`p?[A000040(n+1)*A000005(A261281(n+1))]`
-/

namespace A237414.P7198893832583929749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000005 (A261281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237414.P7198893832583929749

/-! ## A237414.P7119649433607291789

`p?[A000005(A261281(n+1))*A008578(n+2)]`
-/

namespace A237414.P7119649433607291789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A261281 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237414.P7119649433607291789

/-! ## A237414.P15647680722904622961

`∩[A000040(A137291(n+1)), A137291(n+2)]`
-/

namespace A237414.P15647680722904622961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137291 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237414.P15647680722904622961

/-!
# A237415: For k in {2,3,...,9} define a sequence as follows: a(0)=0; for n>=0, a(n+1)=a(n)+1, unless a(n) ends in k, in which case a(n+1) is obtained by replacing the last digit of a(n) with the digit(s) of k^3. This is k(2).

The programs for A237415, the canonical program `A237415.P9567267115774940174` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237415 has offset 0).

The definition of A237415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237415.P9567267115774940174

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8, a(4)=9, a(5)=10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A237415

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P9567267115774940174.Spec : Prop :=
  ∀ n, P9567267115774940174.a n = A237415 n

theorem P9567267115774940174.correct : P9567267115774940174.Spec := by
  intro n
  simp only [A237415]

end A237415

/-! ## A237415.P5543145890719408813

`5*round(n/5)+n`
-/

namespace A237415.P5543145890719408813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((n : ℚ) / 5) + (n : ℤ)

end

end A237415.P5543145890719408813

namespace A237415

/-- `5*round(n/5)+n` -/
def P5543145890719408813.Spec : Prop :=
  ∀ n, P5543145890719408813.a n = A237415 n

end A237415

/-! ## A237415.P16091837413076218446

`comp[2*n-n%5+3]`
-/

namespace A237415.P16091837413076218446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 5 : ℕ) : ℤ) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237415.P16091837413076218446

namespace A237415

/-- `comp[2*n-n%5+3]` -/
def P16091837413076218446.Spec : Prop :=
  ∀ n, (P16091837413076218446.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P2847950086730226602

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A237415.P2847950086730226602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 6, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237415.P2847950086730226602

namespace A237415

/-- `∑[floor(a(n-5))]` -/
def P2847950086730226602.Spec : Prop :=
  ∀ n, (P2847950086730226602.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P9529892689135948216

`comp[∑[A010122(n)]]`
-/

namespace A237415.P9529892689135948216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237415.P9529892689135948216

namespace A237415

/-- `comp[∑[A010122(n)]]` -/
def P9529892689135948216.Spec : Prop :=
  ∀ n, (P9529892689135948216.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P17526124638257917553

`comp[comp[A235499(n)]-1]`
-/

namespace A237415.P17526124638257917553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237415.P17526124638257917553

namespace A237415

/-- `comp[comp[A235499(n)]-1]` -/
def P17526124638257917553.Spec : Prop :=
  ∀ n, (P17526124638257917553.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P5120254745107277171

`comp[A293292(n+1)+3]`
-/

namespace A237415.P5120254745107277171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237415.P5120254745107277171

namespace A237415

/-- `comp[A293292(n+1)+3]` -/
def P5120254745107277171.Spec : Prop :=
  ∀ n, (P5120254745107277171.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P16080236106104380347

`comp[A293481(n+1)-2]`
-/

namespace A237415.P16080236106104380347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237415.P16080236106104380347

namespace A237415

/-- `comp[A293481(n+1)-2]` -/
def P16080236106104380347.Spec : Prop :=
  ∀ n, (P16080236106104380347.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P996941494708661099

`abs(2*n-A117444(n))`
-/

namespace A237415.P996941494708661099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A117444 n|

end

end A237415.P996941494708661099

namespace A237415

/-- `abs(2*n-A117444(n))` -/
def P996941494708661099.Spec : Prop :=
  ∀ n, P996941494708661099.a n = A237415 n

end A237415

/-! ## A237415.P17454951520683982090

`A135631(n)%A315707(n)`
-/

namespace A237415.P17454951520683982090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135631 n) (A315707 n)

end

end A237415.P17454951520683982090

namespace A237415

/-- `A135631(n)%A315707(n)` -/
def P17454951520683982090.Spec : Prop :=
  ∀ n, P17454951520683982090.a n = A237415 n

end A237415

/-! ## A237415.P14631094587926406125

`∪[A345019(n+1), A008592(n)]`
-/

namespace A237415.P14631094587926406125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237415.P14631094587926406125

namespace A237415

/-- `∪[A345019(n+1), A008592(n)]` -/
def P14631094587926406125.Spec : Prop :=
  ∀ n, (P14631094587926406125.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P13553307054109679614

`∪[A345019(n+1), A391163(n)]`
-/

namespace A237415.P13553307054109679614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237415.P13553307054109679614

namespace A237415

/-- `∪[A345019(n+1), A391163(n)]` -/
def P13553307054109679614.Spec : Prop :=
  ∀ n, (P13553307054109679614.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P11962283197277331555

`∪[A054967(n+1), A090772(n+1)]`
-/

namespace A237415.P11962283197277331555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237415.P11962283197277331555

namespace A237415

/-- `∪[A054967(n+1), A090772(n+1)]` -/
def P11962283197277331555.Spec : Prop :=
  ∀ n, (P11962283197277331555.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P629359778760663627

`∪[A054967(n+1), A345019(n+1)]`
-/

namespace A237415.P629359778760663627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237415.P629359778760663627

namespace A237415

/-- `∪[A054967(n+1), A345019(n+1)]` -/
def P629359778760663627.Spec : Prop :=
  ∀ n, (P629359778760663627.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P14370269252547378282

`∪[A197652(n+1), A345019(n+1)]`
-/

namespace A237415.P14370269252547378282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A237415.P14370269252547378282

namespace A237415

/-- `∪[A197652(n+1), A345019(n+1)]` -/
def P14370269252547378282.Spec : Prop :=
  ∀ n, (P14370269252547378282.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P4928959195423045448

`eq[A169933(n), A277618(n)]`
-/

namespace A237415.P4928959195423045448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A237415.P4928959195423045448

namespace A237415

/-- `eq[A169933(n), A277618(n)]` -/
def P4928959195423045448.Spec : Prop :=
  ∀ n, (P4928959195423045448.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P11097179974053895540

`A277618(A277618(A277618(2*n)))`
-/

namespace A237415.P11097179974053895540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 (A277618 (A277618 (2 * n)).toNat).toNat

end

end A237415.P11097179974053895540

namespace A237415

/-- `A277618(A277618(A277618(2*n)))` -/
def P11097179974053895540.Spec : Prop :=
  ∀ n, P11097179974053895540.a n = A237415 n

end A237415

/-! ## A237415.P7271923631468808187

`lt[Δ[A003132(n+1)], 8]`
-/

namespace A237415.P7271923631468808187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A237415.P7271923631468808187

namespace A237415

/-- `lt[Δ[A003132(n+1)], 8]` -/
def P7271923631468808187.Spec : Prop :=
  ∀ n, (P7271923631468808187.a n : ℤ) = A237415 n

end A237415

/-! ## A237415.P8845342900817901643

`A023443(A235499(n+1))`
-/

namespace A237415.P8845342900817901643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A235499 (n + 1)).toNat

end

end A237415.P8845342900817901643

namespace A237415

/-- `A023443(A235499(n+1))` -/
def P8845342900817901643.Spec : Prop :=
  ∀ n, P8845342900817901643.a n = A237415 n

end A237415

/-! ## A237415.P4083279083567067731

`lt[7, A000203(A251984(n+2))]`
-/

namespace A237415.P4083279083567067731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A251984 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A237415.P4083279083567067731

namespace A237415

/-- `lt[7, A000203(A251984(n+2))]` -/
def P4083279083567067731.Spec : Prop :=
  ∀ n, (P4083279083567067731.a n : ℤ) = A237415 n

end A237415

/-!
# A237416: Smallest multiple of 5 beginning with n.

The programs for A237416, the canonical program `A237416.P10604924015427798537` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237416 has offset 1).

The definition of A237416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237416.P10604924015427798537

`2*a(n-5)-a(n-10)` with `a(0)=10, a(1)=20, a(2)=30, a(3)=40, a(4)=5, a(5)=60, a(6)=70, a(7)=80, a(8)=90, a(9)=10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A237416

/-- `2*a(n-5)-a(n-10)` -/
def P10604924015427798537.Spec : Prop :=
  ∀ n, P10604924015427798537.a n = A237416 (n + 1)

theorem P10604924015427798537.correct : P10604924015427798537.Spec := by
  intro n
  simp only [A237416, Nat.add_sub_cancel]

end A237416

/-! ## A237416.P8077288072436794113

`lcm(5, A091703(n+1)+1+n)`
-/

namespace A237416.P8077288072436794113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A091703 (n + 1) + 1 + (n : ℤ))

end

end A237416.P8077288072436794113

namespace A237416

/-- `lcm(5, A091703(n+1)+1+n)` -/
def P8077288072436794113.Spec : Prop :=
  ∀ n, (P8077288072436794113.a n : ℤ) = A237416 (n + 1)

end A237416

/-! ## A237416.P8012075387921345462

`(n+1)*gcd(10, A057944(val(n+1, 5)))`
-/

namespace A237416.P8012075387921345462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 10 (A057944 (SequenceMachineLib.valuation (n + 1) 5))

end

end A237416.P8012075387921345462

namespace A237416

/-- `(n+1)*gcd(10, A057944(val(n+1, 5)))` -/
def P8012075387921345462.Spec : Prop :=
  ∀ n, (P8012075387921345462.a n : ℤ) = A237416 (n + 1)

end A237416

/-! ## A237416.P17503342960846638930

`(n+1)*A008837(C(2, Δ[A007091(n)])+1)`
-/

namespace A237416.P17503342960846638930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008837 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat + 1)

end

end A237416.P17503342960846638930

namespace A237416

/-- `(n+1)*A008837(C(2, Δ[A007091(n)])+1)` -/
def P17503342960846638930.Spec : Prop :=
  ∀ n, P17503342960846638930.a n = A237416 (n + 1)

end A237416

/-! ## A237416.P12636246922874107101

`(n+1)*C(5, A055998(n+1)%5)`
-/

namespace A237416.P12636246922874107101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose 5 (Int.tmod (A055998 (n + 1)) 5).toNat

end

end A237416.P12636246922874107101

namespace A237416

/-- `(n+1)*C(5, A055998(n+1)%5)` -/
def P12636246922874107101.Spec : Prop :=
  ∀ n, (P12636246922874107101.a n : ℤ) = A237416 (n + 1)

end A237416

/-! ## A237416.P11491890413840118698

`3*A091703(3*(n+1))+n+1`
-/

namespace A237416.P11491890413840118698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A091703 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A237416.P11491890413840118698

namespace A237416

/-- `3*A091703(3*(n+1))+n+1` -/
def P11491890413840118698.Spec : Prop :=
  ∀ n, P11491890413840118698.a n = A237416 (n + 1)

end A237416

/-! ## A237416.P7839724852932182307

`A091703(9*(n+1))+n+1`
-/

namespace A237416.P7839724852932182307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (9 * (n + 1)) + (n + 1 : ℤ)

end

end A237416.P7839724852932182307

namespace A237416

/-- `A091703(9*(n+1))+n+1` -/
def P7839724852932182307.Spec : Prop :=
  ∀ n, P7839724852932182307.a n = A237416 (n + 1)

end A237416

/-!
# A237417: Numbers that are the product of an odiousfree number and an evilfree number.

The programs for A237417, there is no canonical definition to state claims against.
-/

/-! ## A237417.P15660078077584764237

`comp[A238989(n-a(2%n))]` with `a(0)=0`
-/

namespace A237417.P15660078077584764237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A238989 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A237417.P15660078077584764237

/-! ## A237417.P10164242740960835174

`eq[char[A238989(n+1)], A000007(n)]`
-/

namespace A237417.P10164242740960835174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237417.P10164242740960835174

/-! ## A237417.P11068879088610451934

`eq[char[A238989(n+1)], A000038(n)]`
-/

namespace A237417.P11068879088610451934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237417.P11068879088610451934

/-! ## A237417.P12655440583902944220

`eq[char[A238989(n+1)], A130706(n)]`
-/

namespace A237417.P12655440583902944220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A237417.P12655440583902944220

/-! ## A237417.P12633658675631280732

`eq[A008458(n)%2, char[A238989(n+1)]]`
-/

namespace A237417.P12633658675631280732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A237417.P12633658675631280732

/-! ## A237417.P13715565699226837220

`eq[A000079(n)%2, char[A238989(n+1)]]`
-/

namespace A237417.P13715565699226837220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238989 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A237417.P13715565699226837220

/-!
# A237418: Primes of the form 4^k + 15.

The programs for A237418, there is no canonical definition to state claims against.
-/

/-! ## A237418.P12699789250378605453

`4^A253773(n+1)+15`
-/

namespace A237418.P12699789250378605453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A253773 (n + 1) : ℤ) + 15

end

end A237418.P12699789250378605453

/-! ## A237418.P6756939520302134287

`∩[A243450(n+1), A099627(n)]`
-/

namespace A237418.P6756939520302134287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237418.P6756939520302134287

/-! ## A237418.P8533481560756788294

`∩[A165255(n+1), A243450(n+1)]`
-/

namespace A237418.P8533481560756788294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237418.P8533481560756788294

/-! ## A237418.P14888542638514767226

`A241750(2^A253773(n+1))`
-/

namespace A237418.P14888542638514767226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241750 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253773 (n + 1) : ℤ))).toNat

end

end A237418.P14888542638514767226

/-! ## A237418.P2594462729634360342

`∩[A243450(n+1), A209492(n)]`
-/

namespace A237418.P2594462729634360342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237418.P2594462729634360342

/-!
# A237419: a(n) = 4^(n+1)^2 - 3.

The programs for A237419, the canonical program `A237419.P4474461103252061067` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237419 has offset 0).

The definition of A237419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)²-3` (program `A237419.P4474461103252061067`, by `A237419.P4474461103252061067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A237419.P4474461103252061067

`4^(n+1)²-3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A237419

/-- `4^(n+1)²-3` -/
def P4474461103252061067.Spec : Prop :=
  ∀ n, P4474461103252061067.a n = A237419 n

theorem P4474461103252061067.correct : P4474461103252061067.Spec := by
  intro n
  simp only [A237419]

end A237419

/-! ## A237419.P5786056280640899806

`-or(3, -4^(n+1)²)`
-/

namespace A237419.P5786056280640899806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(4 ^ (n + 1) ^ 2 : ℤ))

end

end A237419.P5786056280640899806

namespace A237419

/-- `-or(3, -4^(n+1)²)` -/
def P5786056280640899806.Spec : Prop :=
  ∀ n, P5786056280640899806.a n = A237419 n

end A237419

/-! ## A237419.P4728252628082796298

`-xor(3, -4^(n+1)²)`
-/

namespace A237419.P4728252628082796298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 3 (-(4 ^ (n + 1) ^ 2 : ℤ))

end

end A237419.P4728252628082796298

namespace A237419

/-- `-xor(3, -4^(n+1)²)` -/
def P4728252628082796298.Spec : Prop :=
  ∀ n, P4728252628082796298.a n = A237419 n

end A237419

/-! ## A237419.P14212549330691721155

`or(1, 4^∑[2*n+1]-3)`
-/

namespace A237419.P14212549330691721155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 3)

end

end A237419.P14212549330691721155

namespace A237419

/-- `or(1, 4^∑[2*n+1]-3)` -/
def P14212549330691721155.Spec : Prop :=
  ∀ n, P14212549330691721155.a n = A237419 n

end A237419

/-! ## A237419.P15311050436191823416

`A141725(n*(n+2))`
-/

namespace A237419.P15311050436191823416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141725 (n * (n + 2))

end

end A237419.P15311050436191823416

namespace A237419

/-- `A141725(n*(n+2))` -/
def P15311050436191823416.Spec : Prop :=
  ∀ n, P15311050436191823416.a n = A237419 n

end A237419

/-!
# A237420: If n is odd, then a(n) = 0; otherwise, a(n) = n.

The programs for A237420, the canonical program `A237420.P18309215415516619502` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237420 has offset 0).

The definition of A237420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237420.P1758012923716841407

`(1+(-1)^n)*n/2`
-/

namespace A237420.P1758012923716841407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n : ℚ) * ((n : ℚ) / 2)

end

end A237420.P1758012923716841407

namespace A237420

/-- `(1+(-1)^n)*n/2` -/
def P1758012923716841407.Spec : Prop :=
  ∀ n, P1758012923716841407.a n = (A237420 n : ℚ)

theorem P1758012923716841407.correct : P1758012923716841407.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A237420, Nat.add_sub_cancel, A237420.P1758012923716841407.a, A237420.P18309215415516619502.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A237420, Nat.add_sub_cancel, A237420.P1758012923716841407.a, A237420.P18309215415516619502.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A237420

/-! ## A237420.P18309215415516619502

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A237420

/-- `2*a(n-2)-a(n-4)` -/
def P18309215415516619502.Spec : Prop :=
  ∀ n, P18309215415516619502.a n = A237420 n

theorem P18309215415516619502.correct : P18309215415516619502.Spec := by
  intro n
  simp only [A237420]

end A237420

/-! ## A237420.P7344975160671635523

`n%or(1, n)`
-/

namespace A237420.P7344975160671635523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

end

end A237420.P7344975160671635523

namespace A237420

/-- `n%or(1, n)` -/
def P7344975160671635523.Spec : Prop :=
  ∀ n, (P7344975160671635523.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P10837174939328946569

`lcm(n, ∑[(-1)^n])`
-/

namespace A237420.P10837174939328946569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237420.P10837174939328946569

namespace A237420

/-- `lcm(n, ∑[(-1)^n])` -/
def P10837174939328946569.Spec : Prop :=
  ∀ n, (P10837174939328946569.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P857853288743946475

`and(n, (1-n)%2)`
-/

namespace A237420.P857853288743946475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.tmod (1 - (n : ℤ)) 2)

end

end A237420.P857853288743946475

namespace A237420

/-- `and(n, (1-n)%2)` -/
def P857853288743946475.Spec : Prop :=
  ∀ n, P857853288743946475.a n = A237420 n

end A237420

/-! ## A237420.P9742757695399801606

`C(or(1, n), n)-1`
-/

namespace A237420.P9742757695399801606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) - 1

end

end A237420.P9742757695399801606

namespace A237420

/-- `C(or(1, n), n)-1` -/
def P9742757695399801606.Spec : Prop :=
  ∀ n, P9742757695399801606.a n = A237420 n

end A237420

/-! ## A237420.P10336038124948532098

`and(n, and(1, n)-1)`
-/

namespace A237420.P10336038124948532098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 1 n : ℤ) - 1)

end

end A237420.P10336038124948532098

namespace A237420

/-- `and(n, and(1, n)-1)` -/
def P10336038124948532098.Spec : Prop :=
  ∀ n, P10336038124948532098.a n = A237420 n

end A237420

/-! ## A237420.P2283350250712108467

`n*gcd(2, n)-n`
-/

namespace A237420.P2283350250712108467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.gcd 2 n : ℤ) - (n : ℤ)

end

end A237420.P2283350250712108467

namespace A237420

/-- `n*gcd(2, n)-n` -/
def P2283350250712108467.Spec : Prop :=
  ∀ n, P2283350250712108467.a n = A237420 n

end A237420

/-! ## A237420.P16519073584025473966

`n-C(n, xor(1, n))`
-/

namespace A237420.P16519073584025473966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose n (Nat.xor 1 n) : ℤ)

end

end A237420.P16519073584025473966

namespace A237420

/-- `n-C(n, xor(1, n))` -/
def P16519073584025473966.Spec : Prop :=
  ∀ n, P16519073584025473966.a n = A237420 n

end A237420

/-! ## A237420.P8326930568396933454

`xor(n, n*and(1, n))`
-/

namespace A237420.P8326930568396933454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n * Nat.land 1 n)

end

end A237420.P8326930568396933454

namespace A237420

/-- `xor(n, n*and(1, n))` -/
def P8326930568396933454.Spec : Prop :=
  ∀ n, (P8326930568396933454.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P7122869688884775735

`xor(n, C(n, xor(1, n)))`
-/

namespace A237420.P7122869688884775735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose n (Nat.xor 1 n))

end

end A237420.P7122869688884775735

namespace A237420

/-- `xor(n, C(n, xor(1, n)))` -/
def P7122869688884775735.Spec : Prop :=
  ∀ n, (P7122869688884775735.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P18342456360811968815

`∑{p}[n, n*val(#, 2)]`
-/

namespace A237420.P18342456360811968815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), n * SequenceMachineLib.valuation p 2

end

end A237420.P18342456360811968815

namespace A237420

/-- `∑{p}[n, n*val(#, 2)]` -/
def P18342456360811968815.Spec : Prop :=
  ∀ n, (P18342456360811968815.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P10114567955779972523

`∑{p}[n, n*C(2, #)]`
-/

namespace A237420.P10114567955779972523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), n * Nat.choose 2 p

end

end A237420.P10114567955779972523

namespace A237420

/-- `∑{p}[n, n*C(2, #)]` -/
def P10114567955779972523.Spec : Prop :=
  ∀ n, (P10114567955779972523.a n : ℤ) = A237420 n

end A237420

/-! ## A237420.P3547714224982516542

`abs(n*(n-1)%2)`
-/

namespace A237420.P3547714224982516542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.tmod ((n : ℤ) - 1) 2|

end

end A237420.P3547714224982516542

namespace A237420

/-- `abs(n*(n-1)%2)` -/
def P3547714224982516542.Spec : Prop :=
  ∀ n, P3547714224982516542.a n = A237420 n

end A237420

/-! ## A237420.P11285189129599415496

`and(n, -(n+1)%2)`
-/

namespace A237420.P11285189129599415496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(((n + 1) % 2 : ℕ) : ℤ))

end

end A237420.P11285189129599415496

namespace A237420

/-- `and(n, -(n+1)%2)` -/
def P11285189129599415496.Spec : Prop :=
  ∀ n, P11285189129599415496.a n = A237420 n

end A237420

/-! ## A237420.P12491301177281864016

`and(n, -and(1, n+1))`
-/

namespace A237420.P12491301177281864016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 1 (n + 1) : ℤ))

end

end A237420.P12491301177281864016

namespace A237420

/-- `and(n, -and(1, n+1))` -/
def P12491301177281864016.Spec : Prop :=
  ∀ n, P12491301177281864016.a n = A237420 n

end A237420

/-! ## A237420.P10962865963929275430

`Δ[(or(1, -n)/2)²]`
-/

namespace A237420.P10962865963929275430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lor 1 (-(n : ℤ)) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237420.P10962865963929275430

namespace A237420

/-- `Δ[(or(1, -n)/2)²]` -/
def P10962865963929275430.Spec : Prop :=
  ∀ n, P10962865963929275430.a n = (A237420 n : ℚ)

end A237420

/-! ## A237420.P9723973726483330952

`n*-n%2+n`
-/

namespace A237420.P9723973726483330952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (-(n : ℤ)) 2 + (n : ℤ)

end

end A237420.P9723973726483330952

namespace A237420

/-- `n*-n%2+n` -/
def P9723973726483330952.Spec : Prop :=
  ∀ n, P9723973726483330952.a n = A237420 n

end A237420

/-! ## A237420.P5322209679765903419

`n-n*n²%2`
-/

namespace A237420.P5322209679765903419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n * (n ^ 2 % 2) : ℕ) : ℤ)

end

end A237420.P5322209679765903419

namespace A237420

/-- `n-n*n²%2` -/
def P5322209679765903419.Spec : Prop :=
  ∀ n, P5322209679765903419.a n = A237420 n

end A237420

/-! ## A237420.P4132938741645568114

`abs(n*(or(1, n)-n))`
-/

namespace A237420.P4132938741645568114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((Nat.lor 1 n : ℤ) - (n : ℤ))|

end

end A237420.P4132938741645568114

namespace A237420

/-- `abs(n*(or(1, n)-n))` -/
def P4132938741645568114.Spec : Prop :=
  ∀ n, P4132938741645568114.a n = A237420 n

end A237420

/-!
# A237422: Number of prime pairs {2^n - (2k + 1), (2k + 1)*2^n - 1}, k < n.

The programs for A237422, there is no canonical definition to state claims against.
-/

/-! ## A237422.P15396365913283961418

`A101659(or(A007088(n), A093333(n)))`
-/

namespace A237422.P15396365913283961418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101659 (Int.lor (A007088 n) (A093333 n)).toNat

end

end A237422.P15396365913283961418

/-! ## A237422.P5921035647283714797

`abs(Δ[A010872(A316475(n+1))])`
-/

namespace A237422.P5921035647283714797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A316475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A237422.P5921035647283714797

/-! ## A237422.P12062267399699733181

`lcm(4, A091185(A091276(2*(n+2))))%3`
-/

namespace A237422.P12062267399699733181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A091185 (A091276 (2 * (n + 2))).toNat) % 3

end

end A237422.P12062267399699733181

/-! ## A237422.P13476737933398365204

`A026613(A270701(n+4)^(A057215(n)+1))`
-/

namespace A237422.P13476737933398365204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (SequenceMachineLib.roundAway ((A270701 (n + 4) : ℚ) ^ (A057215 n + 1 : ℤ))).toNat

end

end A237422.P13476737933398365204

/-! ## A237422.P16076410426388576558

`A026613(A301676(2*n+3)*A301676(2*n+3))`
-/

namespace A237422.P16076410426388576558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (A301676 (2 * n + 3) * A301676 (2 * n + 3)).toNat

end

end A237422.P16076410426388576558

/-!
# A237423: Primes p such that prime(prime(p^2)) - 2 is also prime.

The programs for A237423, there is no canonical definition to state claims against.
-/

/-! ## A237423.P5156705400446303744

`A348744(A062753(n+1)-A325509(3*n+1))`
-/

namespace A237423.P5156705400446303744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348744 (A062753 (n + 1) - A325509 (3 * n + 1)).toNat

end

end A237423.P5156705400446303744

/-!
# A237424: Numbers of the form (10^a + 10^b + 1)/3.

The programs for A237424, the canonical program `A237424.P11989314284916062246` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237424 has offset 1).

The definition of A237424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237424.P11989314284916062246

`(A052216(n+1)+1)/3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A237424

/-- `(A052216(n+1)+1)/3` -/
def P11989314284916062246.Spec : Prop :=
  ∀ n, P11989314284916062246.a n = (A237424 (n + 1) : ℚ)

end A237424

/-! ## A237424.P8598843195655010842

`ceil(A052216(n+1)/3)`
-/

namespace A237424.P8598843195655010842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052216 (n + 1) : ℚ) / 3⌉

end

end A237424.P8598843195655010842

namespace A237424

/-- `ceil(A052216(n+1)/3)` -/
def P8598843195655010842.Spec : Prop :=
  ∀ n, P8598843195655010842.a n = A237424 (n + 1)

end A237424

/-! ## A237424.P3323578591414293248

`(A088404(n+2)/5+1)/3`
-/

namespace A237424.P3323578591414293248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A088404 (n + 2) : ℚ) / 5 + 1) / 3

end

end A237424.P3323578591414293248

namespace A237424

/-- `(A088404(n+2)/5+1)/3` -/
def P3323578591414293248.Spec : Prop :=
  ∀ n, P3323578591414293248.a n = (A237424 (n + 1) : ℚ)

end A237424

/-! ## A237424.P5154540978286355514

`record[round(A270264(n+1)/3)]`
-/

namespace A237424.P5154540978286355514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A270264 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237424.P5154540978286355514

namespace A237424

/-- `record[round(A270264(n+1)/3)]` -/
def P5154540978286355514.Spec : Prop :=
  ∀ n, P5154540978286355514.a n = A237424 (n + 1)

end A237424

/-! ## A237424.P3142198320212378755

`A088405(∑[A002260(A028310(n))])`
-/

namespace A237424.P3142198320212378755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237424.P3142198320212378755

namespace A237424

/-- `A088405(∑[A002260(A028310(n))])` -/
def P3142198320212378755.Spec : Prop :=
  ∀ n, P3142198320212378755.a n = A237424 (n + 1)

end A237424

/-! ## A237424.P17510921865030363969

`A088405(∑[A002260(A233583(n+1))])`
-/

namespace A237424.P17510921865030363969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237424.P17510921865030363969

namespace A237424

/-- `A088405(∑[A002260(A233583(n+1))])` -/
def P17510921865030363969.Spec : Prop :=
  ∀ n, P17510921865030363969.a n = A237424 (n + 1)

end A237424

/-! ## A237424.P5588470963438681039

`∩[A088405(n+1), A254143(n+1)]`
-/

namespace A237424.P5588470963438681039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237424.P5588470963438681039

namespace A237424

/-- `∩[A088405(n+1), A254143(n+1)]` -/
def P5588470963438681039.Spec : Prop :=
  ∀ n, (P5588470963438681039.a n : ℤ) = A237424 (n + 1)

end A237424

/-! ## A237424.P10352365652882667399

`∩[A028819(n+1), A088405(n+1)]`
-/

namespace A237424.P10352365652882667399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237424.P10352365652882667399

namespace A237424

/-- `∩[A028819(n+1), A088405(n+1)]` -/
def P10352365652882667399.Spec : Prop :=
  ∀ n, (P10352365652882667399.a n : ℤ) = A237424 (n + 1)

end A237424

/-! ## A237424.P3792730386422887554

`(A001202(A018900(n+1)+1)+1)/3`
-/

namespace A237424.P3792730386422887554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001202 (A018900 (n + 1) + 1).toNat + 1 : ℚ) / 3

end

end A237424.P3792730386422887554

namespace A237424

/-- `(A001202(A018900(n+1)+1)+1)/3` -/
def P3792730386422887554.Spec : Prop :=
  ∀ n, P3792730386422887554.a n = (A237424 (n + 1) : ℚ)

end A237424

/-! ## A237424.P1806087985077926229

`∩[A088408(n+1), A254143(n+1)]`
-/

namespace A237424.P1806087985077926229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237424.P1806087985077926229

namespace A237424

/-- `∩[A088408(n+1), A254143(n+1)]` -/
def P1806087985077926229.Spec : Prop :=
  ∀ n, (P1806087985077926229.a n : ℤ) = A237424 (n + 1)

end A237424

/-!
# A237425: Denominators of A164555(n)/A027642(n) + A198631(n)/A006519(n+1).

The programs for A237425, there is no canonical definition to state claims against.
-/

/-! ## A237425.P10895511672570649691

`gcd(A157782(n), A164020(n))`
-/

namespace A237425.P10895511672570649691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157782 n) (A164020 n)

end

end A237425.P10895511672570649691

/-! ## A237425.P13592878438398387221

`A160467(n+1)*A176591(n)`
-/

namespace A237425.P13592878438398387221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A176591 n

end

end A237425.P13592878438398387221

/-! ## A237425.P1137388698604080821

`xor(1, xor(A006519(n+1), A027642(n)))`
-/

namespace A237425.P1137388698604080821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (A006519 (n + 1)) (A027642 n))

end

end A237425.P1137388698604080821

/-! ## A237425.P14275065237911544908

`A000010(2^val(n+1, 2))*A176591(n)`
-/

namespace A237425.P14275065237911544908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ SequenceMachineLib.valuation (n + 1) 2) * A176591 n

end

end A237425.P14275065237911544908

/-! ## A237425.P1408332467681905451

`A000010(or(n, n+1)-n)*A176591(n)`
-/

namespace A237425.P1408332467681905451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor n (n + 1) - n) * A176591 n

end

end A237425.P1408332467681905451

/-! ## A237425.P431554949277893484

`A000010(xor(n, or(n, n+1)))*A176591(n)`
-/

namespace A237425.P431554949277893484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (Nat.lor n (n + 1))) * A176591 n

end

end A237425.P431554949277893484

/-! ## A237425.P5428624469158530979

`A000010(and(n+1, -(n+1)))*A176591(n)`
-/

namespace A237425.P5428624469158530979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat * A176591 n

end

end A237425.P5428624469158530979

/-! ## A237425.P5351153024853243078

`A000010(ceil(xor(n, n+1)/2))*A176591(n)`
-/

namespace A237425.P5351153024853243078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(Nat.xor n (n + 1) : ℚ) / 2⌉.toNat * A176591 n

end

end A237425.P5351153024853243078

/-! ## A237425.P16411486663021376415

`A000010(-or(n+1, -(n+1)))*A176591(n)`
-/

namespace A237425.P16411486663021376415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat * A176591 n

end

end A237425.P16411486663021376415

/-! ## A237425.P11006161383787290084

`A000010(or(n, n+1)%(n+1)+1)*A176591(n)`
-/

namespace A237425.P11006161383787290084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor n (n + 1) % (n + 1) + 1) * A176591 n

end

end A237425.P11006161383787290084

/-!
# A237426: Number of distinct edge-magic total labelings of path P_n.

The programs for A237426, there is no canonical definition to state claims against.
-/

/-! ## A237426.P15248503452093071939

`∑{d}[n+1, #]*A132399(record[2^∑{p}[n, #-2]])`
-/

namespace A237426.P15248503452093071939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A132399 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

end

end A237426.P15248503452093071939

/-! ## A237426.P6697337427149879756

`∑{d}[A204012(A089436(n+2)), #]`
-/

namespace A237426.P6697337427149879756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (A089436 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A237426.P6697337427149879756

/-!
# A237427: a(0)=0, a(1)=1; thereafter, if n is k-th ludic number [i.e., n = A003309(k)], a(n) = 1 + (2*a(k-1)); otherwise, when n is k-th nonludic number [i.e., n = A192607(k)], a(n) = 2*a(k).

The programs for A237427, there is no canonical definition to state claims against.
-/

/-! ## A237427.P16544474278425015129

`∑{e}[A000244(n), A246377(#)]`
-/

namespace A237427.P16544474278425015129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A246377 (Nat.factorization (f1 n).natAbs p)

end

end A237427.P16544474278425015129

/-!
# A237429: Number of nonisomorphic Hamiltonian cycles on 2n X 2n square grid of points with exactly one axis of reflective symmetry.

The programs for A237429, there is no canonical definition to state claims against.
-/

/-! ## A237429.P8859522110935724855

`A227257(n+1)-A237430(n+1)`
-/

namespace A237429.P8859522110935724855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227257 (n + 1) - A237430 (n + 1)

end

end A237429.P8859522110935724855

/-! ## A237429.P18063657598143191045

`(A238816(n+1)-A238818(n+1))/2`
-/

namespace A237429.P18063657598143191045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238816 (n + 1) - A238818 (n + 1) : ℚ) / 2

end

end A237429.P18063657598143191045

/-!
# A237430: Number of nonisomorphic Hamiltonian cycles on 2n X 2n square grid of points with two-fold rotational symmetry (and no other symmetry).

The programs for A237430, there is no canonical definition to state claims against.
-/

/-! ## A237430.P10732103590903213217

`A227257(n+1)-A237429(n+1)`
-/

namespace A237430.P10732103590903213217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227257 (n + 1) - A237429 (n + 1)

end

end A237430.P10732103590903213217

/-! ## A237430.P10111977028247762579

`A227257(n+1)-(A238816(n+1)-A238818(n+1))/2`
-/

namespace A237430.P10111977028247762579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227257 (n + 1) : ℚ) - (A238816 (n + 1) - A238818 (n + 1) : ℚ) / 2

end

end A237430.P10111977028247762579

/-!
# A237431: Number of nonisomorphic Hamiltonian cycles on 2n X 2n square grid of points with exactly two axes of reflective symmetry.

The programs for A237431, there is no canonical definition to state claims against.
-/

/-! ## A237431.P9426001041449664538

`floor(A238818(n+1)/2)`
-/

namespace A237431.P9426001041449664538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238818 (n + 1) : ℚ) / 2⌋

end

end A237431.P9426001041449664538

/-! ## A237431.P784813273203372243

`(A238818(n+1)-A151818(n))/2`
-/

namespace A237431.P784813273203372243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238818 (n + 1) - A151818 n : ℚ) / 2

end

end A237431.P784813273203372243

/-! ## A237431.P15123081797753985906

`(A238818(n+1)-A151841(n))/2`
-/

namespace A237431.P15123081797753985906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238818 (n + 1) - A151841 n : ℚ) / 2

end

end A237431.P15123081797753985906

/-! ## A237431.P6978041728554722384

`A238818(n+1)/2*A000045(ceil(n/(n+1)))`
-/

namespace A237431.P6978041728554722384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238818 (n + 1) : ℚ) / 2 * (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A237431.P6978041728554722384

/-! ## A237431.P5137834933784975689

`A238818(n+1)/2*A008683(2*A000040(n+1))`
-/

namespace A237431.P5137834933784975689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238818 (n + 1) : ℚ) / 2 * (A008683 (2 * A000040 (n + 1)).toNat : ℚ)

end

end A237431.P5137834933784975689

/-!
# A237432: Number of nonisomorphic Hamiltonian cycles on (4n-2) X (4n-2) square grid of points with four-fold rotational symmetry (and no other symmetry).

The programs for A237432, there is no canonical definition to state claims against.
-/

/-! ## A237432.P2439309616959150655

`floor(A238819(n)/2)`
-/

namespace A237432.P2439309616959150655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238819 n : ℚ) / 2⌋

end

end A237432.P2439309616959150655

/-!
# A237433: Canonical index of prime signature of n.

The programs for A237433, there is no canonical definition to state claims against.
-/

/-! ## A237433.P2803128534746979085

`A236515(A083260(n+1))+A000038(A130714(n+1))`
-/

namespace A237433.P2803128534746979085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236515 (A083260 (n + 1)).toNat + A000038 (A130714 (n + 1)).toNat

end

end A237433.P2803128534746979085

/-! ## A237433.P16481509695703058797

`A236515(A083260(n+1))%A239624(n)`
-/

namespace A237433.P16481509695703058797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236515 (A083260 (n + 1)).toNat) (A239624 n)

end

end A237433.P16481509695703058797

/-! ## A237433.P2086920293107632340

`A236515(A083260(n+1))^A139818(A333175(2*n+1))`
-/

namespace A237433.P2086920293107632340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236515 (A083260 (n + 1)).toNat : ℚ) ^ (A139818 (A333175 (2 * n + 1)).toNat : ℤ)

end

end A237433.P2086920293107632340

/-! ## A237433.P11942224160110864787

`A236515(A083260(n+1))+A000038(A325233(n+1))`
-/

namespace A237433.P11942224160110864787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236515 (A083260 (n + 1)).toNat + A000038 (A325233 (n + 1)).toNat

end

end A237433.P11942224160110864787

/-! ## A237433.P13333668318050052829

`A033999(A084922(n+4))*A236515(A083260(n+1))`
-/

namespace A237433.P13333668318050052829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A084922 (n + 4)).toNat * A236515 (A083260 (n + 1)).toNat

end

end A237433.P13333668318050052829

/-!
# A237435: Analog of A237434 for 16-tuples.

The programs for A237435, there is no canonical definition to state claims against.
-/

/-! ## A237435.P14570660973585599879

`A239066(n+55)`
-/

namespace A237435.P14570660973585599879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239066 (n + 55)

end

end A237435.P14570660973585599879

/-! ## A237435.P7689820276637089474

`A239067(n+55)`
-/

namespace A237435.P7689820276637089474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239067 (n + 55)

end

end A237435.P7689820276637089474

/-!
# A237436: Least prime p > prime(n+1) such that p is a square mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1).

The programs for A237436, there is no canonical definition to state claims against.
-/

/-! ## A237436.P12406362083079997106

`A096636(A033865(n+1))`
-/

namespace A237436.P12406362083079997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096636 (A033865 (n + 1)).toNat

end

end A237436.P12406362083079997106

/-! ## A237436.P476563363375929629

`A096636(A045876(n+1))`
-/

namespace A237436.P476563363375929629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096636 (A045876 (n + 1)).toNat

end

end A237436.P476563363375929629

/-! ## A237436.P17665237953823515489

`A096636(A256755(n+1))`
-/

namespace A237436.P17665237953823515489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096636 (A256755 (n + 1)).toNat

end

end A237436.P17665237953823515489

/-! ## A237436.P4976233094029989887

`A096636(A064704(n+1)%A138786(n+1))`
-/

namespace A237436.P4976233094029989887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096636 (Int.tmod (A064704 (n + 1)) (A138786 (n + 1))).toNat

end

end A237436.P4976233094029989887

/-! ## A237436.P15210444819031090900

`A096636(A083136(n+1)%A256651(n+1))`
-/

namespace A237436.P15210444819031090900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096636 (Int.tmod (A083136 (n + 1)) (A256651 (n + 1))).toNat

end

end A237436.P15210444819031090900

/-!
# A237437: Least prime p > prime(n+1) such that p is not a square mod the first n odd primes 3, 5, 7, 11, ..., prime(n+1).

The programs for A237437, there is no canonical definition to state claims against.
-/

/-! ## A237437.P6548654241093778701

`A392775(A241896(n+1))`
-/

namespace A237437.P6548654241093778701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392775 (A241896 (n + 1)).toNat

end

end A237437.P6548654241093778701

/-! ## A237437.P3564567680683077389

`A107438(p?[∑[A121178(n+1)]])`
-/

namespace A237437.P3564567680683077389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121178 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107438 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237437.P3564567680683077389

/-!
# A237438: Double Hex-primes: let f(n) = A102489(n); then sequence lists primes p such that f(p) and f(f(p)) are also primes.

The programs for A237438, there is no canonical definition to state claims against.
-/

/-! ## A237438.P17020946304456569036

`p?[∑[A355604(A014726(n))]]`
-/

namespace A237438.P17020946304456569036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355604 (A014726 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237438.P17020946304456569036

/-! ## A237438.P429926078965884091

`p?[∑[A355604(A014421(n)²)]]`
-/

namespace A237438.P429926078965884091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355604 (A014421 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237438.P429926078965884091

/-! ## A237438.P8984684594102997833

`p?[∑[A329349(A329311(n+1))]]`
-/

namespace A237438.P8984684594102997833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329349 (A329311 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237438.P8984684594102997833

/-! ## A237438.P8086019150449226010

`p?[comp[A171891(A171888(n+1))]]`
-/

namespace A237438.P8086019150449226010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171891 (A171888 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A237438.P8086019150449226010

/-! ## A237438.P3903609381674373820

`∩[A237600(n+1), A382393(n+1)]`
-/

namespace A237438.P3903609381674373820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237438.P3903609381674373820

/-!
# A237439: Triple Hex-primes: let f(n) = A102489(n); then sequence lists primes p such that f(p), f(f(p)) and f(f(f(p))) are also primes.

The programs for A237439, there is no canonical definition to state claims against.
-/

/-! ## A237439.P15167141942580290066

`A006514(∑[A140185(n)²])`
-/

namespace A237439.P15167141942580290066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006514 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237439.P15167141942580290066

/-! ## A237439.P4540400035945130290

`p?[∑[A002033(A176491(n))]]`
-/

namespace A237439.P4540400035945130290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A176491 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237439.P4540400035945130290

/-! ## A237439.P14991451585839147139

`p?[∑[A300946(A028647(n))]]`
-/

namespace A237439.P14991451585839147139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300946 (A028647 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237439.P14991451585839147139

/-!
# A237440: Quadruple Hex-primes: let f(n) = A102489(n); then sequence lists primes p such that f(p), f(f(p)). f(f(f(p))) and f(f(f(f(p)))) are also primes.

The programs for A237440, there is no canonical definition to state claims against.
-/

/-! ## A237440.P176188405849062351

`∩[A237439(n+1), A351576(n)]`
-/

namespace A237440.P176188405849062351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237440.P176188405849062351

/-! ## A237440.P17766877244782919317

`∩[A004744(n+1), A237439(n+1)]`
-/

namespace A237440.P17766877244782919317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237440.P17766877244782919317

/-! ## A237440.P9184392172116783976

`∩[A026285(n+1), A237439(n+1)]`
-/

namespace A237440.P9184392172116783976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237440.P9184392172116783976

/-! ## A237440.P15458508069237109726

`∩[A032955(n+1), A237439(n+1)]`
-/

namespace A237440.P15458508069237109726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237440.P15458508069237109726

/-!
# A237441: Quintuple Hex-primes: let f(n) = A102489(n); then sequence lists primes p such that f(p), f(f(p)), f(f(f(p))), f(f(f(f(p)))) and f(f(f(f(f(p))))) are also primes.

The programs for A237441, there is no canonical definition to state claims against.
-/

/-! ## A237441.P15289759895007693110

`A006530(or(10, a(n-2)!))` with `a(0)=2, a(1)=3`
-/

namespace A237441.P15289759895007693110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A006530 (Nat.lor 10 (Nat.factorial (a (n - 2)).toNat))

end

end A237441.P15289759895007693110

/-! ## A237441.P8486079080092136033

`A142349(A081207(n))`
-/

namespace A237441.P8486079080092136033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142349 (A081207 n).toNat

end

end A237441.P8486079080092136033

/-!
# A237442: a(n) is the least number of 3-smooth numbers that add up to n.

The programs for A237442, there is no canonical definition to state claims against.
-/

/-! ## A237442.P18396250294781769709

`A335108(A159081(n+1)%A322394(n+1))`
-/

namespace A237442.P18396250294781769709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (Int.tmod (A159081 (n + 1)) (A322394 (n + 1))).toNat

end

end A237442.P18396250294781769709

/-! ## A237442.P14683782995449340700

`A040461(A003215(n))*A335108(A159081(n+1))`
-/

namespace A237442.P14683782995449340700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040461 (A003215 n).toNat * A335108 (A159081 (n + 1)).toNat

end

end A237442.P14683782995449340700

/-! ## A237442.P16073012906348140882

`A335108(A159081(n+1))+A000007(A209999(n+1))`
-/

namespace A237442.P16073012906348140882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (A159081 (n + 1)).toNat + A000007 (A209999 (n + 1)).toNat

end

end A237442.P16073012906348140882

/-! ## A237442.P6128020434649858228

`A335108(A159081(n+1))+A010057(A345570(n+1))`
-/

namespace A237442.P6128020434649858228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (A159081 (n + 1)).toNat + A010057 (A345570 (n + 1)).toNat

end

end A237442.P6128020434649858228

/-! ## A237442.P12031078265540501528

`gcd(A272709(n+1), A335108(A159081(n+1)))`
-/

namespace A237442.P12031078265540501528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272709 (n + 1)) (A335108 (A159081 (n + 1)).toNat)

end

end A237442.P12031078265540501528

/-! ## A237442.P2658802493510097949

`A335108(A159081(n+1))+A049347(A052219(n+1))`
-/

namespace A237442.P2658802493510097949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 (A159081 (n + 1)).toNat + A049347 (A052219 (n + 1)).toNat

end

end A237442.P2658802493510097949

/-! ## A237442.P8631614285350528632

`A001065(A192175(n+1))*A335108(A159081(n+1))`
-/

namespace A237442.P8631614285350528632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A192175 (n + 1)).toNat * A335108 (A159081 (n + 1)).toNat

end

end A237442.P8631614285350528632

/-! ## A237442.P7000230645613604273

`A001221(A178802(A006530(n+1))+2)`
-/

namespace A237442.P7000230645613604273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A178802 (A006530 (n + 1)).toNat + 2).toNat

end

end A237442.P7000230645613604273

/-!
# A237444: Triangle read by rows, T(n,k) is difference of column sum and row sum of natural numbers filled in n x n square.

The programs for A237444, there is no canonical definition to state claims against.
-/

/-! ## A237444.P5212770184658450889

`(∑[2*n]%comp[∑[n]]-n)*C(∑[char[∑[n]]], 2)`
-/

namespace A237444.P5212770184658450889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A237444.P5212770184658450889

/-! ## A237444.P7523701314704609467

`C(∑[char[∑[n]]], 2)*A114327(n)`
-/

namespace A237444.P7523701314704609467
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) * A114327 n

end

end A237444.P7523701314704609467

/-! ## A237444.P7857627281669484783

`(∑[2*n]%comp[∑[n]]-n)*A057944(n)`
-/

namespace A237444.P7857627281669484783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)) * A057944 n

end

end A237444.P7857627281669484783

/-! ## A237444.P1923701323969170605

`(n+1)*∑[char[∑[n]]]-(A162613(n+1)+n)`
-/

namespace A237444.P1923701323969170605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (A162613 (n + 1) + (n : ℤ))

end

end A237444.P1923701323969170605

/-! ## A237444.P8352455771508418034

`(round(sqrt(2*(n+1)))²-(2*n+1))*(n-A002262(n))`
-/

namespace A237444.P8352455771508418034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)) * ((n : ℤ) - A002262 n)

end

end A237444.P8352455771508418034

/-! ## A237444.P10154866793715082984

`(round(sqrt(2*(n+1)))²-(2*n+1))*(A061885(n)-n)`
-/

namespace A237444.P10154866793715082984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)) * (A061885 n - (n : ℤ))

end

end A237444.P10154866793715082984

/-! ## A237444.P6694370909900983808

`(round(sqrt(2*(n+1)))²-(2*n+1))*A057944(char[1]+n)`
-/

namespace A237444.P6694370909900983808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)) * A057944 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A237444.P6694370909900983808

/-! ## A237444.P9197167838112312169

`(round(sqrt(2*(n+1)))²-(2*n+1))*C(A002024(n+1), 2)`
-/

namespace A237444.P9197167838112312169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)) * (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ)

end

end A237444.P9197167838112312169

/-! ## A237444.P5435220026259275727

`A057944(n)*A114327(n)`
-/

namespace A237444.P5435220026259275727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n * A114327 n

end

end A237444.P5435220026259275727

/-!
# A237445: Primes p such that f(f(p)) is prime, where f(x) = x^4 + x^3 + x^2 + x + 1 = A053699(x).

The programs for A237445, there is no canonical definition to state claims against.
-/

/-! ## A237445.P2005710386057070685

`floor(sqrt(sqrt(A237361(n+1))))`
-/

namespace A237445.P2005710386057070685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A237361 (n + 1) : ℝ))⌋

end

end A237445.P2005710386057070685

/-!
# A237447: Infinite square array: row 1 is the positive integers 1, 2, 3, ..., and on any subsequent row n, n is moved to the front: n, 1, ..., n-1, n+1, n+2, ...

The programs for A237447, the canonical program `A237447.P14909047409678941906` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237447 has offset 1).

The definition of A237447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237447.P14909047409678941906

`A237448(A038722(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237447

/-- `A237448(A038722(n+1))` -/
def P14909047409678941906.Spec : Prop :=
  ∀ n, P14909047409678941906.a n = A237447 (n + 1)

theorem P14909047409678941906.correct : P14909047409678941906.Spec := by
  intro n
  simp only [A237447, Nat.add_sub_cancel]

end A237447

/-! ## A237447.P8787862701189178225

`A237448(A061579(n)+1)`
-/

namespace A237447.P8787862701189178225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A061579 n + 1).toNat

end

end A237447.P8787862701189178225

namespace A237447

/-- `A237448(A061579(n)+1)` -/
def P8787862701189178225.Spec : Prop :=
  ∀ n, P8787862701189178225.a n = A237447 (n + 1)

end A237447

/-! ## A237447.P18412890476960074587

`A237448(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A237447.P18412890476960074587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A237447.P18412890476960074587

namespace A237447

/-- `A237448(A004736(n+1)+n+1-A002260(n+1))` -/
def P18412890476960074587.Spec : Prop :=
  ∀ n, P18412890476960074587.a n = A237447 (n + 1)

end A237447

/-! ## A237447.P16521431350323935376

`A025581(A155076(n+1)+n+1)+1`
-/

namespace A237447.P16521431350323935376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A155076 (n + 1) + (n + 1 : ℤ)).toNat + 1

end

end A237447.P16521431350323935376

namespace A237447

/-- `A025581(A155076(n+1)+n+1)+1` -/
def P16521431350323935376.Spec : Prop :=
  ∀ n, P16521431350323935376.a n = A237447 (n + 1)

end A237447

/-! ## A237447.P2795556777302658291

`A209279(A185180(n+1)-Δ[A003056(n)]+1)`
-/

namespace A237447.P2795556777302658291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A185180 (n + 1) - (f1 (n + 1) - f1 n) + 1).toNat

end

end A237447.P2795556777302658291

namespace A237447

/-- `A209279(A185180(n+1)-Δ[A003056(n)]+1)` -/
def P2795556777302658291.Spec : Prop :=
  ∀ n, P2795556777302658291.a n = A237447 (n + 1)

end A237447

/-! ## A237447.P9413424719952586775

`A210535(n+1)+A143182(n)-A002260(n+2)`
-/

namespace A237447.P9413424719952586775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1) + (A143182 n - A002260 (n + 2))

end

end A237447.P9413424719952586775

namespace A237447

/-- `A210535(n+1)+A143182(n)-A002260(n+2)` -/
def P9413424719952586775.Spec : Prop :=
  ∀ n, P9413424719952586775.a n = A237447 (n + 1)

end A237447

/-! ## A237447.P8663431690965679266

`A237265(eq[1, A237451(n+1)]-A002260(n+1))`
-/

namespace A237447.P8663431690965679266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A002260 (n + 1)).toNat

end

end A237447.P8663431690965679266

namespace A237447

/-- `A237265(eq[1, A237451(n+1)]-A002260(n+1))` -/
def P8663431690965679266.Spec : Prop :=
  ∀ n, P8663431690965679266.a n = A237447 (n + 1)

end A237447

/-!
# A237448: Square array T(row >= 1, col >= 1): The first row, row=1, T(1,col) = col = A000027. When row > col, T(row,col) = row, otherwise (when 1 < row <= col), T(row,col) = row-1.

The programs for A237448, the canonical program `A237448.P13955953425339463645` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237448 has offset 1).

The definition of A237448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237448.P15453846384337453272

`A002260(comp[∑[and(n, -2)]])`
-/

namespace A237448.P15453846384337453272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A237448.P15453846384337453272

namespace A237448

/-- `A002260(comp[∑[and(n, -2)]])` -/
def P15453846384337453272.Spec : Prop :=
  ∀ n, P15453846384337453272.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P1354096729416813086

`A002260(ceil(sqrt(Δ[n²]))+n)`
-/

namespace A237448.P1354096729416813086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ + (n : ℤ)).toNat

end

end A237448.P1354096729416813086

namespace A237448

/-- `A002260(ceil(sqrt(Δ[n²]))+n)` -/
def P1354096729416813086.Spec : Prop :=
  ∀ n, P1354096729416813086.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P16139953309251907112

`log2(A059268(comp[ceil(n²/8)-1]))`
-/

namespace A237448.P16139953309251907112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 8⌉ - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℝ)

end

end A237448.P16139953309251907112

namespace A237448

/-- `log2(A059268(comp[ceil(n²/8)-1]))` -/
def P16139953309251907112.Spec : Prop :=
  ∀ n, P16139953309251907112.a n = (A237448 (n + 1) : ℝ)

end A237448

/-! ## A237448.P9389976182538354019

`A237447(A038722(n+1))`
-/

namespace A237448.P9389976182538354019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237447 (A038722 (n + 1)).toNat

end

end A237448.P9389976182538354019

namespace A237448

/-- `A237447(A038722(n+1))` -/
def P9389976182538354019.Spec : Prop :=
  ∀ n, P9389976182538354019.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P13955953425339463645

`A131818(n+1)-A080343(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A237448

/-- `A131818(n+1)-A080343(n)` -/
def P13955953425339463645.Spec : Prop :=
  ∀ n, P13955953425339463645.a n = A237448 (n + 1)

theorem P13955953425339463645.correct : P13955953425339463645.Spec := by
  intro n
  simp only [A237448, Nat.add_sub_cancel]

end A237448

/-! ## A237448.P1779112789685299976

`and(-1, A002260(A182834(n+1)))`
-/

namespace A237448.P1779112789685299976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002260 (A182834 (n + 1)).toNat)

end

end A237448.P1779112789685299976

namespace A237448

/-- `and(-1, A002260(A182834(n+1)))` -/
def P1779112789685299976.Spec : Prop :=
  ∀ n, P1779112789685299976.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P13895580465415887194

`A000027(A002260(comp[ceil(n²/2)+n]))`
-/

namespace A237448.P13895580465415887194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A237448.P13895580465415887194

namespace A237448

/-- `A000027(A002260(comp[ceil(n²/2)+n]))` -/
def P13895580465415887194.Spec : Prop :=
  ∀ n, P13895580465415887194.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P6467333350074094043

`A002260(A182834(n+1))%A063209(n+1)`
-/

namespace A237448.P6467333350074094043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A182834 (n + 1)).toNat) (A063209 (n + 1))

end

end A237448.P6467333350074094043

namespace A237448

/-- `A002260(A182834(n+1))%A063209(n+1)` -/
def P6467333350074094043.Spec : Prop :=
  ∀ n, P6467333350074094043.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P1746009544784370388

`A002262(A172471(n)+n)+1`
-/

namespace A237448.P1746009544784370388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A172471 n + (n : ℤ)).toNat + 1

end

end A237448.P1746009544784370388

namespace A237448

/-- `A002262(A172471(n)+n)+1` -/
def P1746009544784370388.Spec : Prop :=
  ∀ n, P1746009544784370388.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P15265861522824057485

`A023443(A002262(floor(sqrt(8*n))+1+n))+2`
-/

namespace A237448.P15265861522824057485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002262 (Nat.sqrt (8 * n) + 1 + n)).toNat + 2

end

end A237448.P15265861522824057485

namespace A237448

/-- `A023443(A002262(floor(sqrt(8*n))+1+n))+2` -/
def P15265861522824057485.Spec : Prop :=
  ∀ n, P15265861522824057485.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P5010856819552524879

`A144328(comp[ceil(n²/8)])`
-/

namespace A237448.P5010856819552524879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 8⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A237448.P5010856819552524879

namespace A237448

/-- `A144328(comp[ceil(n²/8)])` -/
def P5010856819552524879.Spec : Prop :=
  ∀ n, P5010856819552524879.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P9535200694673673875

`A004736(n+1-A196199(2*n))`
-/

namespace A237448.P9535200694673673875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1 : ℤ) - A196199 (2 * n)).toNat

end

end A237448.P9535200694673673875

namespace A237448

/-- `A004736(n+1-A196199(2*n))` -/
def P9535200694673673875.Spec : Prop :=
  ∀ n, P9535200694673673875.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P1413871651652173716

`A337835(2*n+1)+A003059(2*n+1)`
-/

namespace A237448.P1413871651652173716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * n + 1) + A003059 (2 * n + 1)

end

end A237448.P1413871651652173716

namespace A237448

/-- `A337835(2*n+1)+A003059(2*n+1)` -/
def P1413871651652173716.Spec : Prop :=
  ∀ n, P1413871651652173716.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P17517116120474411664

`A337835(2*n+1)+A135034(2*n+1)`
-/

namespace A237448.P17517116120474411664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * n + 1) + A135034 (2 * n + 1)

end

end A237448.P17517116120474411664

namespace A237448

/-- `A337835(2*n+1)+A135034(2*n+1)` -/
def P17517116120474411664.Spec : Prop :=
  ∀ n, P17517116120474411664.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P753001624182938043

`A220693(A002378(A071797(A078358(2*n+1))))`
-/

namespace A237448.P753001624182938043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A002378 (A071797 (A078358 (2 * n + 1)).toNat).toNat).toNat

end

end A237448.P753001624182938043

namespace A237448

/-- `A220693(A002378(A071797(A078358(2*n+1))))` -/
def P753001624182938043.Spec : Prop :=
  ∀ n, P753001624182938043.a n = A237448 (n + 1)

end A237448

/-! ## A237448.P5674200466698306756

`A003603(A035513(A000196(2*n)+n+1))`
-/

namespace A237448.P5674200466698306756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A035513 (A000196 (2 * n) + (n + 1 : ℤ)).toNat).toNat

end

end A237448.P5674200466698306756

namespace A237448

/-- `A003603(A035513(A000196(2*n)+n+1))` -/
def P5674200466698306756.Spec : Prop :=
  ∀ n, P5674200466698306756.a n = A237448 (n + 1)

end A237448

/-!
# A237449: a(n) = n - A236855(n).

The programs for A237449, there is no canonical definition to state claims against.
-/

/-! ## A237449.P15525885617183973198

`n-A236855(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A237449.P15525885617183973198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236855 n

end

end A237449.P15525885617183973198

/-! ## A237449.P18352539316819034008

`n-∑{digits}[A239903(n), #]`
-/

namespace A237449.P18352539316819034008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A237449.P18352539316819034008

/-! ## A237449.P15362898032629639048

`-(A236855(n)+A001489(n))`
-/

namespace A237449.P15362898032629639048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A236855 n + A001489 n)

end

end A237449.P15362898032629639048

/-! ## A237449.P153725341581659686

`A167614(n+1)%(A236855(n)+A167499(n))`
-/

namespace A237449.P153725341581659686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (n + 1)) (A236855 n + A167499 n)

end

end A237449.P153725341581659686

/-! ## A237449.P12934916477626701797

`n-A370292(A244216(n+1))`
-/

namespace A237449.P12934916477626701797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A370292 (A244216 (n + 1)).toNat

end

end A237449.P12934916477626701797

/-! ## A237449.P7446239363693837713

`n-A034968(2*A085188(n))`
-/

namespace A237449.P7446239363693837713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A034968 (2 * A085188 n).toNat

end

end A237449.P7446239363693837713

/-! ## A237449.P5270220965816386366

`n-A326746(A239903(n))`
-/

namespace A237449.P5270220965816386366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326746 (A239903 n).toNat

end

end A237449.P5270220965816386366

/-! ## A237449.P15373210463816885333

`A025581(A236855(n)+A046092(n))`
-/

namespace A237449.P15373210463816885333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A236855 n + A046092 n).toNat

end

end A237449.P15373210463816885333

/-!
# A237450: Triangle read by rows, T(n,k) = !n + (k-1)*(n-1)!, with n>=1, 1<=k<=n; Position of the first n-letter permutation beginning with number k in the list of lexicographically sorted permutations A030299.

The programs for A237450, the canonical program `A237450.P6346235748488406574` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237450 has offset 1).

The definition of A237450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237450.P6346235748488406574

`A003422(A002024(n+1))+A002262(n)*A000142(A002024(n+1)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237450

/-- `A003422(A002024(n+1))+A002262(n)*A000142(A002024(n+1)-1)` -/
def P6346235748488406574.Spec : Prop :=
  ∀ n, P6346235748488406574.a n = A237450 (n + 1)

theorem P6346235748488406574.correct : P6346235748488406574.Spec := by
  intro n
  simp only [A237450, Nat.add_sub_cancel]

end A237450

/-! ## A237450.P5514427606647967013

`∑[(comp[∑[n+2]]-n)!]`
-/

namespace A237450.P5514427606647967013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237450.P5514427606647967013

namespace A237450

/-- `∑[(comp[∑[n+2]]-n)!]` -/
def P5514427606647967013.Spec : Prop :=
  ∀ n, (P5514427606647967013.a n : ℤ) = A237450 (n + 1)

end A237450

/-! ## A237450.P8716832066994404237

`∑[lcm(a(n-1), A216919(n))]` with `a(0)=1`
-/

namespace A237450.P8716832066994404237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A216919 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237450.P8716832066994404237

namespace A237450

/-- `∑[lcm(a(n-1), A216919(n))]` -/
def P8716832066994404237.Spec : Prop :=
  ∀ n, (P8716832066994404237.a n : ℤ) = A237450 (n + 1)

end A237450

/-! ## A237450.P8932681088444985649

`a(n-1)+A003056(n-1)!` with `a(0)=1`
-/

namespace A237450.P8932681088444985649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (A003056 (n - 1)).toNat

end

end A237450.P8932681088444985649

namespace A237450

/-- `a(n-1)+A003056(n-1)!` -/
def P8932681088444985649.Spec : Prop :=
  ∀ n, (P8932681088444985649.a n : ℤ) = A237450 (n + 1)

end A237450

/-! ## A237450.P6951492571573065483

`a(n-1)+(A123578(n)-1)!` with `a(0)=1`
-/

namespace A237450.P6951492571573065483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (A123578 n - 1).toNat

end

end A237450.P6951492571573065483

namespace A237450

/-- `a(n-1)+(A123578(n)-1)!` -/
def P6951492571573065483.Spec : Prop :=
  ∀ n, (P6951492571573065483.a n : ℤ) = A237450 (n + 1)

end A237450

/-! ## A237450.P2452832043631924884

`∑[A000142(∑[char[a(n-1)+n+1]])]` with `a(0)=2`
-/

namespace A237450.P2452832043631924884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) + (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237450.P2452832043631924884

namespace A237450

/-- `∑[A000142(∑[char[a(n-1)+n+1]])]` -/
def P2452832043631924884.Spec : Prop :=
  ∀ n, P2452832043631924884.a n = A237450 (n + 1)

end A237450

/-! ## A237450.P10257393533207230113

`∑[A000142(A003056(abs(1-n)))]`
-/

namespace A237450.P10257393533207230113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A003056 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237450.P10257393533207230113

namespace A237450

/-- `∑[A000142(A003056(abs(1-n)))]` -/
def P10257393533207230113.Spec : Prop :=
  ∀ n, P10257393533207230113.a n = A237450 (n + 1)

end A237450

/-! ## A237450.P12132352218840416179

`∑[A000142(floor(A293137(2*n)/2))]`
-/

namespace A237450.P12132352218840416179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ⌊(A293137 (2 * n) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237450.P12132352218840416179

namespace A237450

/-- `∑[A000142(floor(A293137(2*n)/2))]` -/
def P12132352218840416179.Spec : Prop :=
  ∀ n, P12132352218840416179.a n = A237450 (n + 1)

end A237450

/-!
# A237451: Zero-based column index to irregular tables organized as successively larger square matrices.

The programs for A237451, there is no canonical definition to state claims against.
-/

/-! ## A237451.P16140604882529204996

`A121997(n+1)-1`
-/

namespace A237451.P16140604882529204996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (n + 1) - 1

end

end A237451.P16140604882529204996

/-! ## A237451.P16202660381331678772

`A002024(A361172(n+1))-1`
-/

namespace A237451.P16202660381331678772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A361172 (n + 1)).toNat - 1

end

end A237451.P16202660381331678772

/-! ## A237451.P15217074269612685226

`A003056(A361172(n+1)-1)`
-/

namespace A237451.P15217074269612685226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A361172 (n + 1) - 1).toNat

end

end A237451.P15217074269612685226

/-! ## A237451.P12554972929208513369

`A002262(eq[0, A047998(n)])`
-/

namespace A237451.P12554972929208513369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237451.P12554972929208513369

/-! ## A237451.P6631768469307308220

`A002262(eq[0, A079126(n)])`
-/

namespace A237451.P6631768469307308220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237451.P6631768469307308220

/-! ## A237451.P10206792008214432877

`A002262(eq[0, A177517(n+1)])`
-/

namespace A237451.P10206792008214432877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237451.P10206792008214432877

/-! ## A237451.P12586410894959107577

`A275730(eq[0, A177517(n+1)])`
-/

namespace A237451.P12586410894959107577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237451.P12586410894959107577

/-! ## A237451.P8524225292837276256

`A074279(n+1)-A214651(n+1)`
-/

namespace A237451.P8524225292837276256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) - A214651 (n + 1)

end

end A237451.P8524225292837276256

/-! ## A237451.P17362536742618594651

`A002262(eq[0, A054923(n)])`
-/

namespace A237451.P17362536742618594651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237451.P17362536742618594651

/-! ## A237451.P16087860622235937520

`A070198(n)%A121997(n+1)`
-/

namespace A237451.P16087860622235937520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A121997 (n + 1))

end

end A237451.P16087860622235937520

/-! ## A237451.P5688810275491011664

`A198277(n)%A121997(n+1)`
-/

namespace A237451.P5688810275491011664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A121997 (n + 1))

end

end A237451.P5688810275491011664

/-! ## A237451.P4285079636807140066

`A200748(n)%A121997(n+1)`
-/

namespace A237451.P4285079636807140066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A121997 (n + 1))

end

end A237451.P4285079636807140066

/-! ## A237451.P5710738080707204890

`A030494(n+1)%A121997(n+1)`
-/

namespace A237451.P5710738080707204890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A121997 (n + 1))

end

end A237451.P5710738080707204890

/-! ## A237451.P2286167412756902900

`A058197(n+1)%A121997(n+1)`
-/

namespace A237451.P2286167412756902900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A121997 (n + 1))

end

end A237451.P2286167412756902900

/-! ## A237451.P11645264615762334435

`A072828(n+1)%A121997(n+1)`
-/

namespace A237451.P11645264615762334435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A121997 (n + 1))

end

end A237451.P11645264615762334435

/-! ## A237451.P15923485422812254293

`A079782(n+1)%A121997(n+1)`
-/

namespace A237451.P15923485422812254293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A121997 (n + 1))

end

end A237451.P15923485422812254293

/-! ## A237451.P10968146727849303778

`A083685(n+1)%A121997(n+1)`
-/

namespace A237451.P10968146727849303778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A121997 (n + 1))

end

end A237451.P10968146727849303778

/-! ## A237451.P10735498353042206277

`A083800(n+1)%A121997(n+1)`
-/

namespace A237451.P10735498353042206277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A121997 (n + 1))

end

end A237451.P10735498353042206277

/-! ## A237451.P14036673544369943826

`A117010(n+1)%A121997(n+1)`
-/

namespace A237451.P14036673544369943826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A121997 (n + 1))

end

end A237451.P14036673544369943826

/-! ## A237451.P8375778220007025730

`A121934(n+1)%A121997(n+1)`
-/

namespace A237451.P8375778220007025730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A121997 (n + 1))

end

end A237451.P8375778220007025730

/-!
# A237452: Zero-based row index to irregular tables organized as successively larger square matrices.

The programs for A237452, the canonical program `A237452.P4723187971781084873` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237452 has offset 1).

The definition of A237452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064866, A074279, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A237452.P1840757811463697942

`A238013(n+1)-1`
-/

namespace A237452.P1840757811463697942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238013 (n + 1) - 1

end

end A237452.P1840757811463697942

namespace A237452

/-- `A238013(n+1)-1` -/
def P1840757811463697942.Spec : Prop :=
  ∀ n, P1840757811463697942.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P4723187971781084873

`floor((A064866(n+1)-1)/A074279(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A237452

/-- `floor((A064866(n+1)-1)/A074279(n+1))` -/
def P4723187971781084873.Spec : Prop :=
  ∀ n, P4723187971781084873.a n = A237452 (n + 1)

theorem P4723187971781084873.correct : P4723187971781084873.Spec := by
  intro n
  simp only [A237452, Nat.add_sub_cancel]

end A237452

/-! ## A237452.P1110849691707672799

`A258069(A238013(n+1))`
-/

namespace A237452.P1110849691707672799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (A238013 (n + 1)).toNat

end

end A237452.P1110849691707672799

namespace A237452

/-- `A258069(A238013(n+1))` -/
def P1110849691707672799.Spec : Prop :=
  ∀ n, P1110849691707672799.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P8232615225902267990

`A237265(1-A237451(n+1)+n)-1`
-/

namespace A237452.P8232615225902267990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237265 (1 - A237451 (n + 1) + (n : ℤ)).toNat - 1

end

end A237452.P8232615225902267990

namespace A237452

/-- `A237265(1-A237451(n+1)+n)-1` -/
def P8232615225902267990.Spec : Prop :=
  ∀ n, P8232615225902267990.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P17726242648360046497

`A058197(n+1)%A238013(n+1)`
-/

namespace A237452.P17726242648360046497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A238013 (n + 1))

end

end A237452.P17726242648360046497

namespace A237452

/-- `A058197(n+1)%A238013(n+1)` -/
def P17726242648360046497.Spec : Prop :=
  ∀ n, P17726242648360046497.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P294474948664645377

`A153823(n)%A238013(n+1)`
-/

namespace A237452.P294474948664645377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A238013 (n + 1))

end

end A237452.P294474948664645377

namespace A237452

/-- `A153823(n)%A238013(n+1)` -/
def P294474948664645377.Spec : Prop :=
  ∀ n, P294474948664645377.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P13428501144132677725

`A237451(A238013(n+1)+∑[A002024(n+1)])`
-/

namespace A237452.P13428501144132677725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (A238013 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237452.P13428501144132677725

namespace A237452

/-- `A237451(A238013(n+1)+∑[A002024(n+1)])` -/
def P13428501144132677725.Spec : Prop :=
  ∀ n, P13428501144132677725.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P11796486903455206849

`A083800(n+1)%A238013(n+1)`
-/

namespace A237452.P11796486903455206849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A238013 (n + 1))

end

end A237452.P11796486903455206849

namespace A237452

/-- `A083800(n+1)%A238013(n+1)` -/
def P11796486903455206849.Spec : Prop :=
  ∀ n, P11796486903455206849.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P7794789429153616865

`A070198(n)%A238013(n+1)`
-/

namespace A237452.P7794789429153616865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A238013 (n + 1))

end

end A237452.P7794789429153616865

namespace A237452

/-- `A070198(n)%A238013(n+1)` -/
def P7794789429153616865.Spec : Prop :=
  ∀ n, P7794789429153616865.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P8086574614657359603

`A079782(n+1)%A238013(n+1)`
-/

namespace A237452.P8086574614657359603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A238013 (n + 1))

end

end A237452.P8086574614657359603

namespace A237452

/-- `A079782(n+1)%A238013(n+1)` -/
def P8086574614657359603.Spec : Prop :=
  ∀ n, P8086574614657359603.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P658372278219094522

`A083685(n+1)%A238013(n+1)`
-/

namespace A237452.P658372278219094522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A238013 (n + 1))

end

end A237452.P658372278219094522

namespace A237452

/-- `A083685(n+1)%A238013(n+1)` -/
def P658372278219094522.Spec : Prop :=
  ∀ n, P658372278219094522.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P6718520260488874671

`A121934(n+1)%A238013(n+1)`
-/

namespace A237452.P6718520260488874671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A238013 (n + 1))

end

end A237452.P6718520260488874671

namespace A237452

/-- `A121934(n+1)%A238013(n+1)` -/
def P6718520260488874671.Spec : Prop :=
  ∀ n, P6718520260488874671.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P10532821681492625873

`A002262(∑[A000007(A291970(n))])`
-/

namespace A237452.P10532821681492625873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A291970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237452.P10532821681492625873

namespace A237452

/-- `A002262(∑[A000007(A291970(n))])` -/
def P10532821681492625873.Spec : Prop :=
  ∀ n, P10532821681492625873.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P7819707253115278581

`A002262(∑[A000007(A291971(n))])`
-/

namespace A237452.P7819707253115278581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A291971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A237452.P7819707253115278581

namespace A237452

/-- `A002262(∑[A000007(A291971(n))])` -/
def P7819707253115278581.Spec : Prop :=
  ∀ n, P7819707253115278581.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P18292764643302712127

`A030494(n+1)%A238013(n+1)`
-/

namespace A237452.P18292764643302712127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A238013 (n + 1))

end

end A237452.P18292764643302712127

namespace A237452

/-- `A030494(n+1)%A238013(n+1)` -/
def P18292764643302712127.Spec : Prop :=
  ∀ n, P18292764643302712127.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P2973686158508413921

`A072828(n+1)%A238013(n+1)`
-/

namespace A237452.P2973686158508413921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A238013 (n + 1))

end

end A237452.P2973686158508413921

namespace A237452

/-- `A072828(n+1)%A238013(n+1)` -/
def P2973686158508413921.Spec : Prop :=
  ∀ n, P2973686158508413921.a n = A237452 (n + 1)

end A237452

/-! ## A237452.P12449361149201918209

`(A064866(n+1)-A121997(n+1))/A074279(n+1)`
-/

namespace A237452.P12449361149201918209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064866 (n + 1) - A121997 (n + 1) : ℚ) / (A074279 (n + 1) : ℚ)

end

end A237452.P12449361149201918209

namespace A237452

/-- `(A064866(n+1)-A121997(n+1))/A074279(n+1)` -/
def P12449361149201918209.Spec : Prop :=
  ∀ n, P12449361149201918209.a n = (A237452 (n + 1) : ℚ)

end A237452

/-!
# A237453: Number of primes p < n with p*n + pi(p) prime, where pi(.) is given by A000720.

The programs for A237453, there is no canonical definition to state claims against.
-/

/-! ## A237453.P12179057192175651160

`A289618((n+1)/∏{p}[n+1, (n+1)/#]*A270986(n))`
-/

namespace A237453.P12179057192175651160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) * (A270986 n : ℚ))).toNat

end

end A237453.P12179057192175651160

/-! ## A237453.P9208481542979994916

`A259100(A316615(n+1)-A309013(n+1))`
-/

namespace A237453.P9208481542979994916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259100 (A316615 (n + 1) - A309013 (n + 1)).toNat

end

end A237453.P9208481542979994916

/-! ## A237453.P18283248176334818502

`p?[A017827(n)]%A331852(n)`
-/

namespace A237453.P18283248176334818502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A331852 n)

end

end A237453.P18283248176334818502

/-! ## A237453.P16199585030184904379

`p?[A127839(n+1)]%A331852(n)`
-/

namespace A237453.P16199585030184904379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A331852 n)

end

end A237453.P16199585030184904379

/-! ## A237453.P8604408609667471780

`A050376(A306017(n))%A289439(n+2)`
-/

namespace A237453.P8604408609667471780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050376 (A306017 n).toNat) (A289439 (n + 2))

end

end A237453.P8604408609667471780

/-!
# A237454: Minimal representation (considered minimal in any canonical base b > 3) of n in a binary system with two distinct digits "1" and "3", not allowing zeros, where a digit d in position p (p = 1,2,3,...,n) represents the value d^p.

The programs for A237454, there is no canonical definition to state claims against.
-/

/-! ## A237454.P4473013883890939666

`A275536(A052996(n))-A097295(n+1)`
-/

namespace A237454.P4473013883890939666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A052996 n).toNat - A097295 (n + 1)

end

end A237454.P4473013883890939666

/-! ## A237454.P7273955881578344117

`or(9*n%2, ∑[10^A001221(A000045(n)!)])`
-/

namespace A237454.P7273955881578344117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001221 (Nat.factorial (A000045 n).toNat) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((9 * (n % 2) : ℕ) : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A237454.P7273955881578344117

/-! ## A237454.P18270869246036540630

`or(A109012(A085807(n)), A280012(n+1))`
-/

namespace A237454.P18270869246036540630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109012 (A085807 n).toNat) (A280012 (n + 1))

end

end A237454.P18270869246036540630

/-!
# A237455: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237455, there is no canonical definition to state claims against.
-/

/-! ## A237455.P9418653039293370056

`A237463(∑[4*n]+1)`
-/

namespace A237455.P9418653039293370056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237455.P9418653039293370056

/-! ## A237455.P10180710345328160103

`A237463(A001844(n))+char[10]`
-/

namespace A237455.P10180710345328160103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237455.P10180710345328160103

/-! ## A237455.P6615769888598006441

`record[A003982(n)*A237463(n+1)]`
-/

namespace A237455.P6615769888598006441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237455.P6615769888598006441

/-! ## A237455.P5921483971677589858

`record[root(A237463(n+1), A143182(n))]`
-/

namespace A237455.P5921483971677589858
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237463 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237455.P5921483971677589858

/-! ## A237455.P6320215152621090538

`record[gcd(A003987(n), A237463(n+1))]`
-/

namespace A237455.P6320215152621090538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A237463 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237455.P6320215152621090538

/-!
# A237456: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the lower median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237456, there is no canonical definition to state claims against.
-/

/-! ## A237456.P5042344834512926545

`A237463(∑[n]+1)`
-/

namespace A237456.P5042344834512926545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237456.P5042344834512926545

/-! ## A237456.P4166694882491363531

`and(-3, A237463(A000124(n)))`
-/

namespace A237456.P4166694882491363531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A237463 (A000124 n).toNat)

end

end A237456.P4166694882491363531

/-! ## A237456.P6092408877735811229

`record[A237463(A114091(n+1))]`
-/

namespace A237456.P6092408877735811229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237456.P6092408877735811229

/-! ## A237456.P14651022505060249037

`record[A237463(A246276(n+1))]`
-/

namespace A237456.P14651022505060249037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237456.P14651022505060249037

/-! ## A237456.P9584057990931115608

`record[A010054(n)*A237463(n+1)]`
-/

namespace A237456.P9584057990931115608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237456.P9584057990931115608

/-!
# A237457: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237457, there is no canonical definition to state claims against.
-/

/-! ## A237457.P2695209880203729933

`A237463(∑[n+1]+2)`
-/

namespace A237457.P2695209880203729933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237457.P2695209880203729933

/-! ## A237457.P4899616782158772862

`lcm(2, A237463(A000096(n)+3))`
-/

namespace A237457.P4899616782158772862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237463 (A000096 n + 3).toNat)

end

end A237457.P4899616782158772862

/-! ## A237457.P2573465370288355245

`record[A237463(A114091(n+1)+1)]`
-/

namespace A237457.P2573465370288355245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237457.P2573465370288355245

/-! ## A237457.P15535320459455202043

`record[A237463(n+3)/A008275(n+1)]`
-/

namespace A237457.P15535320459455202043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237463 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237457.P15535320459455202043

/-! ## A237457.P8885674848981130656

`A007318(C(2, n))*A237463(A000096(n)+3)`
-/

namespace A237457.P8885674848981130656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A237463 (A000096 n + 3).toNat

end

end A237457.P8885674848981130656

/-!
# A237458: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237458, there is no canonical definition to state claims against.
-/

/-! ## A237458.P12606591876591314961

`A237463(∑[n+2]+4)`
-/

namespace A237458.P12606591876591314961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237458.P12606591876591314961

/-! ## A237458.P1140818239050246733

`A237463(A167614(n+1))+char[18]`
-/

namespace A237458.P1140818239050246733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237458.P1140818239050246733

/-! ## A237458.P2017286319210645401

`A237463(A000096(n+1)+4)+char[18]`
-/

namespace A237458.P2017286319210645401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237458.P2017286319210645401

/-! ## A237458.P3624594498246400337

`or(A011731(n), A237463(A167614(n+1)))`
-/

namespace A237458.P3624594498246400337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 n) (A237463 (A167614 (n + 1)).toNat)

end

end A237458.P3624594498246400337

/-! ## A237458.P16523921274948007444

`or(A025443(n), A237463(A167614(n+1)))`
-/

namespace A237458.P16523921274948007444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025443 n) (A237463 (A167614 (n + 1)).toNat)

end

end A237458.P16523921274948007444

/-!
# A237459: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237459, there is no canonical definition to state claims against.
-/

/-! ## A237459.P16418209358730602234

`A237463(A374004(n+1))`
-/

namespace A237459.P16418209358730602234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A374004 (n + 1)).toNat

end

end A237459.P16418209358730602234

/-! ## A237459.P13085423997041587516

`A237463(A145018(n+4))`
-/

namespace A237459.P13085423997041587516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A145018 (n + 4)).toNat

end

end A237459.P13085423997041587516

/-! ## A237459.P9875314054715166056

`A237463(A141214(n)+7)`
-/

namespace A237459.P9875314054715166056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A141214 n + 7).toNat

end

end A237459.P9875314054715166056

/-! ## A237459.P5862310259941157977

`A237463(A052905(n)+9)`
-/

namespace A237459.P5862310259941157977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A052905 n + 9).toNat

end

end A237459.P5862310259941157977

/-! ## A237459.P11126428570900048096

`A237463(A055999(n)+10)`
-/

namespace A237459.P11126428570900048096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A055999 n + 10).toNat

end

end A237459.P11126428570900048096

/-!
# A237460: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237460, there is no canonical definition to state claims against.
-/

/-! ## A237460.P5051557283665647932

`A237463(∑[n+4]+11)`
-/

namespace A237460.P5051557283665647932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A237460.P5051557283665647932

/-! ## A237460.P8652601419322208179

`A335462(n+1)+A237463(A046691(n+3))`
-/

namespace A237460.P8652601419322208179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1) + A237463 (A046691 (n + 3)).toNat

end

end A237460.P8652601419322208179

/-!
# A237461: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237461, there is no canonical definition to state claims against.
-/

/-! ## A237461.P5832748524077826489

`A237463(∑[n+5]+16)`
-/

namespace A237461.P5832748524077826489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A237461.P5832748524077826489

/-! ## A237461.P4613721807680432621

`A237463(A000096(n+4)+7)/A234959(2*n+3)`
-/

namespace A237461.P4613721807680432621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237463 (A000096 (n + 4) + 7).toNat : ℚ) / (A234959 (2 * n + 3) : ℚ)

end

end A237461.P4613721807680432621

/-! ## A237461.P12674508108197682216

`A237463(A052905(n+3))+A184946(n)`
-/

namespace A237461.P12674508108197682216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A052905 (n + 3)).toNat + A184946 n

end

end A237461.P12674508108197682216

/-!
# A237462: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237462, there is no canonical definition to state claims against.
-/

/-! ## A237462.P12689500924409839728

`A237463(A374008(n+1))`
-/

namespace A237462.P12689500924409839728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A374008 (n + 1)).toNat

end

end A237462.P12689500924409839728

/-! ## A237462.P5979479020700597297

`A237463(eq[11, A066657(n)])`
-/

namespace A237462.P5979479020700597297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237462.P5979479020700597297

/-! ## A237462.P16253565796838860655

`A237463(A167499(n+5)+2)`
-/

namespace A237462.P16253565796838860655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A167499 (n + 5) + 2).toNat

end

end A237462.P16253565796838860655

/-! ## A237462.P5719429846664202688

`A237463(A141214(n+3)+10)`
-/

namespace A237462.P5719429846664202688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A141214 (n + 3) + 10).toNat

end

end A237462.P5719429846664202688

/-! ## A237462.P7390557532854015326

`A237463(A027379(n+4)+10)`
-/

namespace A237462.P7390557532854015326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237463 (A027379 (n + 4) + 10).toNat

end

end A237462.P7390557532854015326

/-!
# A237464: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237464, there is no canonical definition to state claims against.
-/

/-! ## A237464.P4608937127856034104

`A237472(∑[4*n]+1)`
-/

namespace A237464.P4608937127856034104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237464.P4608937127856034104

/-! ## A237464.P11917596938286241384

`A237472(A001844(n))+char[15]`
-/

namespace A237464.P11917596938286241384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A237464.P11917596938286241384

/-! ## A237464.P16479880950250239372

`record[A003982(n)*A237472(n+1)]`
-/

namespace A237464.P16479880950250239372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A237472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237464.P16479880950250239372

/-! ## A237464.P10640372220858302476

`record[gcd(A008482(n), A237472(n+1))]`
-/

namespace A237464.P10640372220858302476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A237472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237464.P10640372220858302476

/-! ## A237464.P5426967402773183000

`A007318(∑[n])*A237472(A001844(n))`
-/

namespace A237464.P5426967402773183000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A237472 (A001844 n).toNat

end

end A237464.P5426967402773183000

/-!
# A237465: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237465, there is no canonical definition to state claims against.
-/

/-! ## A237465.P16710600982139439827

`A237472(∑[n]+1)`
-/

namespace A237465.P16710600982139439827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237465.P16710600982139439827

/-! ## A237465.P18138838172686957250

`record[root(A237472(n+1), A081572(n))]`
-/

namespace A237465.P18138838172686957250
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237472 (n + 1) : ℝ) ^ (1 / (A081572 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237465.P18138838172686957250

/-! ## A237465.P17662576395681361247

`record[root(A237472(n+1), A081577(n))]`
-/

namespace A237465.P17662576395681361247
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237472 (n + 1) : ℝ) ^ (1 / (A081577 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237465.P17662576395681361247

/-! ## A237465.P15976571482732312154

`record[root(A237472(n+1), A081578(n))]`
-/

namespace A237465.P15976571482732312154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237472 (n + 1) : ℝ) ^ (1 / (A081578 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237465.P15976571482732312154

/-! ## A237465.P2461983200595382443

`record[root(A237472(n+1), A081579(n))]`
-/

namespace A237465.P2461983200595382443
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237472 (n + 1) : ℝ) ^ (1 / (A081579 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237465.P2461983200595382443

/-!
# A237466: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237466, there is no canonical definition to state claims against.
-/

/-! ## A237466.P12817734861041511777

`A237472(∑[n+1]+2)`
-/

namespace A237466.P12817734861041511777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237466.P12817734861041511777

/-! ## A237466.P4515050381586252032

`lcm(2, A237472(A141214(n)-A005843(n)))`
-/

namespace A237466.P4515050381586252032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237472 (A141214 n - A005843 n).toNat)

end

end A237466.P4515050381586252032

/-! ## A237466.P3293103225021877295

`A237472(A141214(n)-A005843(n))+A185284(n)`
-/

namespace A237466.P3293103225021877295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A141214 n - A005843 n).toNat + A185284 n

end

end A237466.P3293103225021877295

/-! ## A237466.P4499283637230797928

`A014963(6*(n+2))*A237472(A141214(n)-A005843(n))`
-/

namespace A237466.P4499283637230797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A237472 (A141214 n - A005843 n).toNat

end

end A237466.P4499283637230797928

/-! ## A237466.P18241177662393756601

`A237472(A141214(n)-A005843(n))+A008683(8*n+4)`
-/

namespace A237466.P18241177662393756601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A141214 n - A005843 n).toNat + A008683 (8 * n + 4)

end

end A237466.P18241177662393756601

/-!
# A237467: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237467, there is no canonical definition to state claims against.
-/

/-! ## A237467.P8061533049928651188

`A237472(∑[n+2]+4)`
-/

namespace A237467.P8061533049928651188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237467.P8061533049928651188

/-! ## A237467.P2144483479700235214

`A237472(A167614(n+1))+A137579(n)`
-/

namespace A237467.P2144483479700235214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A167614 (n + 1)).toNat + A137579 n

end

end A237467.P2144483479700235214

/-! ## A237467.P14677646449476024935

`A237472(A167614(n+1))+A185284(n)`
-/

namespace A237467.P14677646449476024935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A167614 (n + 1)).toNat + A185284 n

end

end A237467.P14677646449476024935

/-! ## A237467.P9974295021423251697

`lcm(A000034(n), A237472(A167614(n+1)))`
-/

namespace A237467.P9974295021423251697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A237472 (A167614 (n + 1)).toNat)

end

end A237467.P9974295021423251697

/-! ## A237467.P1948642799077722698

`A133707(n+1)*A237472(A167614(n+1))`
-/

namespace A237467.P1948642799077722698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A237472 (A167614 (n + 1)).toNat

end

end A237467.P1948642799077722698

/-!
# A237468: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237468, there is no canonical definition to state claims against.
-/

/-! ## A237468.P1962578359778982162

`A237472(A052905(n)+9)`
-/

namespace A237468.P1962578359778982162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A052905 n + 9).toNat

end

end A237468.P1962578359778982162

/-! ## A237468.P7236984806608379840

`A237472(A055999(n)+10)`
-/

namespace A237468.P7236984806608379840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A055999 n + 10).toNat

end

end A237468.P7236984806608379840

/-! ## A237468.P16634774458603784592

`A237472(A167614(n+2)+1)`
-/

namespace A237468.P16634774458603784592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A167614 (n + 2) + 1).toNat

end

end A237468.P16634774458603784592

/-! ## A237468.P275804995866578113

`A237472(Δ[A264443(n)-n²])`
-/

namespace A237468.P275804995866578113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (f1 (n + 1) - f1 n).toNat

end

end A237468.P275804995866578113

/-! ## A237468.P142245378585969102

`A237472(Δ[A023545(n+1)-n²])`
-/

namespace A237468.P142245378585969102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (f1 (n + 1) - f1 n).toNat

end

end A237468.P142245378585969102

/-!
# A237469: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237469, there is no canonical definition to state claims against.
-/

/-! ## A237469.P9242581501340017331

`A237472(eq[7, A066657(n)])`
-/

namespace A237469.P9242581501340017331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237469.P9242581501340017331

/-! ## A237469.P2068015411366439462

`A237472(Δ[A264443(n)])`
-/

namespace A237469.P2068015411366439462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (f1 (n + 1) - f1 n).toNat

end

end A237469.P2068015411366439462

/-! ## A237469.P12657808356829721767

`A237472(A374005(n+1))`
-/

namespace A237469.P12657808356829721767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A374005 (n + 1)).toNat

end

end A237469.P12657808356829721767

/-! ## A237469.P10635684204681588467

`A237472(eq[2, A092921(n)])`
-/

namespace A237469.P10635684204681588467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237469.P10635684204681588467

/-! ## A237469.P11221421651512566253

`A237472(eq[4, A193592(n)])`
-/

namespace A237469.P11221421651512566253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237469.P11221421651512566253

/-!
# A237470: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237470, there is no canonical definition to state claims against.
-/

/-! ## A237470.P5014854916472288033

`A237472(eq[7, A131818(n+1)])`
-/

namespace A237470.P5014854916472288033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237470.P5014854916472288033

/-! ## A237470.P5168215088250224322

`A237472(A374007(n+1))`
-/

namespace A237470.P5168215088250224322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A374007 (n + 1)).toNat

end

end A237470.P5168215088250224322

/-! ## A237470.P17474971145875395025

`A237472(A052905(n+3))`
-/

namespace A237470.P17474971145875395025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A052905 (n + 3)).toNat

end

end A237470.P17474971145875395025

/-! ## A237470.P17107542493328445870

`A237472(eq[3, A219347(n)])`
-/

namespace A237470.P17107542493328445870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237470.P17107542493328445870

/-! ## A237470.P16505931055687581603

`A237472(eq[5, A193592(n)])`
-/

namespace A237470.P16505931055687581603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237470.P16505931055687581603

/-!
# A237471: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the upper median of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237471, there is no canonical definition to state claims against.
-/

/-! ## A237471.P9740675908410457330

`A237472(eq[11, A066657(n)])`
-/

namespace A237471.P9740675908410457330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237471.P9740675908410457330

/-! ## A237471.P7458303761321982045

`A237472(eq[8, A131818(n+1)])`
-/

namespace A237471.P7458303761321982045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237471.P7458303761321982045

/-! ## A237471.P16868761018986043940

`A237472(A374008(n+1))`
-/

namespace A237471.P16868761018986043940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (A374008 (n + 1)).toNat

end

end A237471.P16868761018986043940

/-! ## A237471.P10483350030698677793

`A237472(eq[4, A219347(n)])`
-/

namespace A237471.P10483350030698677793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237471.P10483350030698677793

/-! ## A237471.P16155940664730726850

`A237472(eq[6, A193592(n)])`
-/

namespace A237471.P16155940664730726850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237471.P16155940664730726850

/-!
# A237473: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237473, there is no canonical definition to state claims against.
-/

/-! ## A237473.P12059755366182236430

`A237481((n+1)²+n²)`
-/

namespace A237473.P12059755366182236430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 ((n + 1) ^ 2 + n ^ 2)

end

end A237473.P12059755366182236430

/-!
# A237474: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237474, there is no canonical definition to state claims against.
-/

/-! ## A237474.P16979856394548769128

`A237481(∑[n]+1)`
-/

namespace A237474.P16979856394548769128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237474.P16979856394548769128

/-! ## A237474.P16865418124496314482

`or(1, A237481(A000124(n)))`
-/

namespace A237474.P16865418124496314482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237481 (A000124 n).toNat)

end

end A237474.P16865418124496314482

/-! ## A237474.P17478187997546830296

`record[A237481(A131179(A004736(n+1)))]`
-/

namespace A237474.P17478187997546830296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A131179 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237474.P17478187997546830296

/-! ## A237474.P3871918688390044747

`A237481(A000124(n))%A237475(n+1)`
-/

namespace A237474.P3871918688390044747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237481 (A000124 n).toNat) (A237475 (n + 1))

end

end A237474.P3871918688390044747

/-! ## A237474.P7568738616728828154

`record[(2-A004736(n+1))*A237481(n+1)]`
-/

namespace A237474.P7568738616728828154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A237481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237474.P7568738616728828154

/-!
# A237475: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237475, there is no canonical definition to state claims against.
-/

/-! ## A237475.P13163365215548696205

`A237481(∑[n+1]+2)`
-/

namespace A237475.P13163365215548696205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237475.P13163365215548696205

/-! ## A237475.P12322056273385494283

`or(1, A237481(A133263(n+1)))`
-/

namespace A237475.P12322056273385494283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237481 (A133263 (n + 1)).toNat)

end

end A237475.P12322056273385494283

/-! ## A237475.P5799133438532789942

`A237481(A133263(n+1))+A185284(n)`
-/

namespace A237475.P5799133438532789942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A133263 (n + 1)).toNat + A185284 n

end

end A237475.P5799133438532789942

/-! ## A237475.P6423492005617601566

`record[A237481(abs(A201163(n)))]`
-/

namespace A237475.P6423492005617601566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237475.P6423492005617601566

/-! ## A237475.P7281491419432808535

`record[A237481(Δ[A003453(n+5)])]`
-/

namespace A237475.P7281491419432808535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237475.P7281491419432808535

/-!
# A237476: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237476, there is no canonical definition to state claims against.
-/

/-! ## A237476.P15663338681208080725

`A237481(∑[n+2]+4)`
-/

namespace A237476.P15663338681208080725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237476.P15663338681208080725

/-! ## A237476.P4112281727010680107

`lcm((-1)^n, A237481(A167614(n+1)))`
-/

namespace A237476.P4112281727010680107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A237481 (A167614 (n + 1)).toNat)

end

end A237476.P4112281727010680107

/-! ## A237476.P7369601330126958357

`A237481(A167614(n+1))+A011742(n)`
-/

namespace A237476.P7369601330126958357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A167614 (n + 1)).toNat + A011742 n

end

end A237476.P7369601330126958357

/-! ## A237476.P5532123262356433861

`or(A000007(n), A237481(A167614(n+1)))`
-/

namespace A237476.P5532123262356433861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237481 (A167614 (n + 1)).toNat)

end

end A237476.P5532123262356433861

/-! ## A237476.P13168949291848656221

`A237481(A167614(n+1))+A000007(n+2)`
-/

namespace A237476.P13168949291848656221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A167614 (n + 1)).toNat + A000007 (n + 2)

end

end A237476.P13168949291848656221

/-!
# A237477: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237477, there is no canonical definition to state claims against.
-/

/-! ## A237477.P10789972616754678544

`A237481(A374004(n+1))`
-/

namespace A237477.P10789972616754678544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A374004 (n + 1)).toNat

end

end A237477.P10789972616754678544

/-! ## A237477.P6567423004970912465

`A237481(A141214(n)+7)`
-/

namespace A237477.P6567423004970912465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A141214 n + 7).toNat

end

end A237477.P6567423004970912465

/-! ## A237477.P14686673379959972571

`A237481(A052905(n)+9)`
-/

namespace A237477.P14686673379959972571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A052905 n + 9).toNat

end

end A237477.P14686673379959972571

/-! ## A237477.P6031808449628921326

`A237481(A055999(n)+10)`
-/

namespace A237477.P6031808449628921326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A055999 n + 10).toNat

end

end A237477.P6031808449628921326

/-! ## A237477.P2721262163215143581

`A237481(Δ[A006503(n)]+7)`
-/

namespace A237477.P2721262163215143581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (f1 (n + 1) - f1 n + 7).toNat

end

end A237477.P2721262163215143581

/-!
# A237478: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237478, there is no canonical definition to state claims against.
-/

/-! ## A237478.P4751638671043445399

`A237481(A374005(n+1))`
-/

namespace A237478.P4751638671043445399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A374005 (n + 1)).toNat

end

end A237478.P4751638671043445399

/-! ## A237478.P7784731709689789116

`A237481(eq[6, A131818(n+1)])`
-/

namespace A237478.P7784731709689789116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237478.P7784731709689789116

/-! ## A237478.P11926118363705740597

`A237481(eq[2, A092921(n)])`
-/

namespace A237478.P11926118363705740597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237478.P11926118363705740597

/-! ## A237478.P4685944340112338239

`A237481(eq[3, A152157(n)])`
-/

namespace A237478.P4685944340112338239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237478.P4685944340112338239

/-! ## A237478.P12788041317544095562

`A237481(eq[8, A140996(n)])`
-/

namespace A237478.P12788041317544095562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237478.P12788041317544095562

/-!
# A237479: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237479, there is no canonical definition to state claims against.
-/

/-! ## A237479.P5796212862952510554

`A237481(A374007(n+1))`
-/

namespace A237479.P5796212862952510554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A374007 (n + 1)).toNat

end

end A237479.P5796212862952510554

/-! ## A237479.P4880820300126018196

`A237481(A052905(n+3))`
-/

namespace A237479.P4880820300126018196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A052905 (n + 3)).toNat

end

end A237479.P4880820300126018196

/-! ## A237479.P4636566032498688800

`A237481(Δ[Δ[A006504(n+1)]])`
-/

namespace A237479.P4636566032498688800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (f1 (n + 1) - f1 n).toNat

end

end A237479.P4636566032498688800

/-! ## A237479.P15627380785015767939

`A237481(Δ[A023545(n+2)]-1)`
-/

namespace A237479.P15627380785015767939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (f1 (n + 1) - f1 n - 1).toNat

end

end A237479.P15627380785015767939

/-!
# A237480: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237480, there is no canonical definition to state claims against.
-/

/-! ## A237480.P10713134460918610439

`A237481(A374008(n+1))`
-/

namespace A237480.P10713134460918610439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A374008 (n + 1)).toNat

end

end A237480.P10713134460918610439

/-! ## A237480.P2965477149361372293

`A237481(A055999(n+4))`
-/

namespace A237480.P2965477149361372293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237481 (A055999 (n + 4)).toNat

end

end A237480.P2965477149361372293

/-!
# A237482: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237482, there is no canonical definition to state claims against.
-/

/-! ## A237482.P4457527570878414245

`A237488(∑[n]+1)`
-/

namespace A237482.P4457527570878414245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237482.P4457527570878414245

/-! ## A237482.P12507041433411417781

`lcm(2, A237488(A000124(n)))`
-/

namespace A237482.P12507041433411417781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237488 (A000124 n).toNat)

end

end A237482.P12507041433411417781

/-! ## A237482.P5750852641833044016

`record[A237488(n+1)/A157153(n)]`
-/

namespace A237482.P5750852641833044016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237488 (n + 1) : ℚ) / (A157153 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237482.P5750852641833044016

/-! ## A237482.P7343706938597691075

`record[root(A237488(n+1), A008288(n))]`
-/

namespace A237482.P7343706938597691075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237488 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237482.P7343706938597691075

/-! ## A237482.P13844388940584192996

`record[gcd(A237488(n+1), A303690(n+1))]`
-/

namespace A237482.P13844388940584192996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237488 (n + 1)) (A303690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237482.P13844388940584192996

/-!
# A237483: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237483, there is no canonical definition to state claims against.
-/

/-! ## A237483.P10902529706355057201

`A237488(∑[n+1]+2)`
-/

namespace A237483.P10902529706355057201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237483.P10902529706355057201

/-! ## A237483.P3225313850475593817

`record[A237488(A130270(n+1)+2)]`
-/

namespace A237483.P3225313850475593817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237483.P3225313850475593817

/-! ## A237483.P7830771702220958833

`record[A237488(A198455(n+1))]`
-/

namespace A237483.P7830771702220958833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237483.P7830771702220958833

/-! ## A237483.P9981094207876718413

`record[A237488(Δ[A003453(n+5)])]`
-/

namespace A237483.P9981094207876718413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237483.P9981094207876718413

/-! ## A237483.P17985745754175814430

`record[A237488(A198453(n+1))]`
-/

namespace A237483.P17985745754175814430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237483.P17985745754175814430

/-!
# A237484: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237484, there is no canonical definition to state claims against.
-/

/-! ## A237484.P5071670246016267380

`A237488(∑[n+2]+4)`
-/

namespace A237484.P5071670246016267380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237484.P5071670246016267380

/-! ## A237484.P16205322945337259966

`A237488(A167614(n+1))+A185284(n)`
-/

namespace A237484.P16205322945337259966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A167614 (n + 1)).toNat + A185284 n

end

end A237484.P16205322945337259966

/-! ## A237484.P1380928484601409783

`lcm(A237488(A167614(n+1)), A321800(n))`
-/

namespace A237484.P1380928484601409783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A237488 (A167614 (n + 1)).toNat) (A321800 n)

end

end A237484.P1380928484601409783

/-! ## A237484.P14570957222022904775

`A237488(A167614(n+1))+A161089(n+1)`
-/

namespace A237484.P14570957222022904775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A167614 (n + 1)).toNat + A161089 (n + 1)

end

end A237484.P14570957222022904775

/-! ## A237484.P17816679663855190293

`A237488(A167614(n+1))*A353801(n+1)`
-/

namespace A237484.P17816679663855190293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A167614 (n + 1)).toNat * A353801 (n + 1)

end

end A237484.P17816679663855190293

/-!
# A237485: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237485, there is no canonical definition to state claims against.
-/

/-! ## A237485.P17150501920887658914

`A237488(A374004(n+1))`
-/

namespace A237485.P17150501920887658914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A374004 (n + 1)).toNat

end

end A237485.P17150501920887658914

/-! ## A237485.P12412670461643186109

`A237488(A052905(n)+9)`
-/

namespace A237485.P12412670461643186109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A052905 n + 9).toNat

end

end A237485.P12412670461643186109

/-! ## A237485.P5329168569814976633

`A237488(A055999(n)+10)`
-/

namespace A237485.P5329168569814976633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A055999 n + 10).toNat

end

end A237485.P5329168569814976633

/-! ## A237485.P13026475537493476046

`A237488(A167614(n+2)+1)`
-/

namespace A237485.P13026475537493476046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A167614 (n + 2) + 1).toNat

end

end A237485.P13026475537493476046

/-! ## A237485.P5793792982529521100

`A237488(A166136(n+2)-2)`
-/

namespace A237485.P5793792982529521100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A166136 (n + 2) - 2).toNat

end

end A237485.P5793792982529521100

/-!
# A237486: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237486, there is no canonical definition to state claims against.
-/

/-! ## A237486.P14074960350529940027

`A237488(A374005(n+1))`
-/

namespace A237486.P14074960350529940027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A374005 (n + 1)).toNat

end

end A237486.P14074960350529940027

/-! ## A237486.P8454910921858843189

`A237488(A052905(n+1)+10)`
-/

namespace A237486.P8454910921858843189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A052905 (n + 1) + 10).toNat

end

end A237486.P8454910921858843189

/-! ## A237486.P15319659491153096003

`A237488(Δ[A264443(n)])`
-/

namespace A237486.P15319659491153096003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (f1 (n + 1) - f1 n).toNat

end

end A237486.P15319659491153096003

/-! ## A237486.P1028590032320744219

`A237488(A046691(n+3))`
-/

namespace A237486.P1028590032320744219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A046691 (n + 3)).toNat

end

end A237486.P1028590032320744219

/-!
# A237487: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the minimum minus the lower median of every 2X2 subblock equal.

The programs for A237487, there is no canonical definition to state claims against.
-/

/-! ## A237487.P16107564291826887515

`A237488(A374007(n+1))`
-/

namespace A237487.P16107564291826887515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (A374007 (n + 1)).toNat

end

end A237487.P16107564291826887515

/-! ## A237487.P15968993714403081464

`A237488(eq[5, A025669(n+1)]+1)`
-/

namespace A237487.P15968993714403081464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237488 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A237487.P15968993714403081464

/-!
# A237489: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237489, there is no canonical definition to state claims against.
-/

/-! ## A237489.P17394193799791200836

`A237494(∑[n]+1)`
-/

namespace A237489.P17394193799791200836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237489.P17394193799791200836

/-! ## A237489.P364494971531413437

`lcm(2, A237494(A000124(n)))`
-/

namespace A237489.P364494971531413437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237494 (A000124 n).toNat)

end

end A237489.P364494971531413437

/-! ## A237489.P1090002101405712670

`record[A237494(A249742(n+1))]`
-/

namespace A237489.P1090002101405712670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237489.P1090002101405712670

/-! ## A237489.P11088265055175221642

`record[A237494(A000124(∑{digits}[n, #]))]`
-/

namespace A237489.P11088265055175221642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237489.P11088265055175221642

/-! ## A237489.P8394006584633618225

`record[A010054(n)*A237494(n+1)]`
-/

namespace A237489.P8394006584633618225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237489.P8394006584633618225

/-!
# A237490: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237490, there is no canonical definition to state claims against.
-/

/-! ## A237490.P12753579631978433284

`A237494(∑[n+1]+2)`
-/

namespace A237490.P12753579631978433284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237490.P12753579631978433284

/-! ## A237490.P11296081898105620735

`record[A010054(n)*A237494(n+2)]`
-/

namespace A237490.P11296081898105620735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237490.P11296081898105620735

/-! ## A237490.P2101863498486666254

`record[A237494(abs(A201163(n)))]`
-/

namespace A237490.P2101863498486666254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237490.P2101863498486666254

/-! ## A237490.P16891770298618203158

`record[A237494(A237519(n+1)+1)]`
-/

namespace A237490.P16891770298618203158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A237519 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237490.P16891770298618203158

/-! ## A237490.P6475912114580833717

`record[root(A237494(n+2), A318795(n+3))]`
-/

namespace A237490.P6475912114580833717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237494 (n + 2) : ℝ) ^ (1 / (A318795 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237490.P6475912114580833717

/-!
# A237491: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237491, there is no canonical definition to state claims against.
-/

/-! ## A237491.P13253135356587128437

`A237494(∑[n+2]+4)`
-/

namespace A237491.P13253135356587128437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237491.P13253135356587128437

/-! ## A237491.P13765668778056790437

`lcm(2, A237494(A167614(n+1)))`
-/

namespace A237491.P13765668778056790437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237494 (A167614 (n + 1)).toNat)

end

end A237491.P13765668778056790437

/-! ## A237491.P16294840520253826115

`record[A237494(n+4)/A049460(n)]`
-/

namespace A237491.P16294840520253826115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237494 (n + 4) : ℚ) / (A049460 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237491.P16294840520253826115

/-! ## A237491.P14647600373824402998

`A237494(A167614(n+1))+A107846(n)`
-/

namespace A237491.P14647600373824402998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A167614 (n + 1)).toNat + A107846 n

end

end A237491.P14647600373824402998

/-! ## A237491.P11143118322777498067

`A237494(A167614(n+1))+A184946(n)`
-/

namespace A237491.P11143118322777498067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A167614 (n + 1)).toNat + A184946 n

end

end A237491.P11143118322777498067

/-!
# A237492: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237492, there is no canonical definition to state claims against.
-/

/-! ## A237492.P7142973946994301164

`A237494(C(n+5, 2)-n)`
-/

namespace A237492.P7142973946994301164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (Nat.choose (n + 5) 2 - n)

end

end A237492.P7142973946994301164

/-! ## A237492.P17790898074625746650

`A237494(A374004(n+1))`
-/

namespace A237492.P17790898074625746650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A374004 (n + 1)).toNat

end

end A237492.P17790898074625746650

/-! ## A237492.P11394163015249071046

`A237494(A141214(n)+7)`
-/

namespace A237492.P11394163015249071046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A141214 n + 7).toNat

end

end A237492.P11394163015249071046

/-! ## A237492.P13360522920161227223

`A237494(A052905(n)+9)`
-/

namespace A237492.P13360522920161227223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A052905 n + 9).toNat

end

end A237492.P13360522920161227223

/-!
# A237493: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A237493, there is no canonical definition to state claims against.
-/

/-! ## A237493.P18342704720731054328

`A237494(A374005(n+1))`
-/

namespace A237493.P18342704720731054328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A374005 (n + 1)).toNat

end

end A237493.P18342704720731054328

/-! ## A237493.P2940635323432044127

`A237494(A167499(n+3))`
-/

namespace A237493.P2940635323432044127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (A167499 (n + 3)).toNat

end

end A237493.P2940635323432044127

/-! ## A237493.P13034033508441225431

`A237494(eq[6, A131818(n+1)])`
-/

namespace A237493.P13034033508441225431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237493.P13034033508441225431

/-!
# A237497: a(n) = |{0 < k <= n/2: pi(k*(n-k)) is prime}|, where pi(.) is given by A000720.

The programs for A237497, there is no canonical definition to state claims against.
-/

/-! ## A237497.P4005374104726639372

`A046660(A318453(n+1)+A002531(n))`
-/

namespace A237497.P4005374104726639372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A318453 (n + 1) + A002531 n).toNat

end

end A237497.P4005374104726639372

/-!
# A237499: Odious Mersenne exponents.

The programs for A237499, there is no canonical definition to state claims against.
-/

/-! ## A237499.P2129458962863550906

`∩[A027697(n+1), A048737(n+1)]`
-/

namespace A237499.P2129458962863550906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237499.P2129458962863550906

/-! ## A237499.P1029962625088336478

`filter[A027697(n+1), A332219(#)]`
-/

namespace A237499.P1029962625088336478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A237499.P1029962625088336478

/-! ## A237499.P10686559126685047406

`filter[A000043(n+1), A361018(#)]`
-/

namespace A237499.P10686559126685047406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A237499.P10686559126685047406

/-! ## A237499.P17990383638498832588

`filter[A093696(n+1), A332219(#)]`
-/

namespace A237499.P17990383638498832588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A237499.P17990383638498832588

/-! ## A237499.P2385478295777142186

`filter[A366029(n+1), A361018(#)]`
-/

namespace A237499.P2385478295777142186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A237499.P2385478295777142186

