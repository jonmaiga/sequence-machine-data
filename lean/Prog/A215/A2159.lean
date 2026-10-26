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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A215900: Number of diagonal and antidiagonal neighbor colorings of the even squares of an nX3 array with new integer colors introduced in row major order.

The programs for A215900, there is no canonical definition to state claims against.
-/

/-! ## A215900.P903360917180883078

`A215904(∑[n+2]+4)`
-/

namespace A215900.P903360917180883078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215900.P903360917180883078

/-! ## A215900.P2616744347915716755

`lcm((-1)^n, A215904(A167614(n+1)))`
-/

namespace A215900.P2616744347915716755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A215904 (A167614 (n + 1)).toNat)

end

end A215900.P2616744347915716755

/-! ## A215900.P13234267235539480733

`A214268(n)*A215904(A167614(n+1))`
-/

namespace A215900.P13234267235539480733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214268 n * A215904 (A167614 (n + 1)).toNat

end

end A215900.P13234267235539480733

/-! ## A215900.P13741833980841886058

`or(A185012(n), A215904(A167614(n+1)))`
-/

namespace A215900.P13741833980841886058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A215904 (A167614 (n + 1)).toNat)

end

end A215900.P13741833980841886058

/-! ## A215900.P2997853412422133871

`A043542(n+1)*A215904(A167614(n+1))`
-/

namespace A215900.P2997853412422133871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (n + 1) * A215904 (A167614 (n + 1)).toNat

end

end A215900.P2997853412422133871

/-!
# A215901: Number of diagonal and antidiagonal neighbor colorings of the even squares of an nX5 array with new integer colors introduced in row major order.

The programs for A215901, there is no canonical definition to state claims against.
-/

/-! ## A215901.P1176272980571812737

`A215904(A374005(n+1))`
-/

namespace A215901.P1176272980571812737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A374005 (n + 1)).toNat

end

end A215901.P1176272980571812737

/-! ## A215901.P4957443833265692994

`A215904(eq[7, A066657(n)])`
-/

namespace A215901.P4957443833265692994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215901.P4957443833265692994

/-! ## A215901.P9562257599876017968

`A215904(eq[6, A131818(n+1)])`
-/

namespace A215901.P9562257599876017968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215901.P9562257599876017968

/-! ## A215901.P13780298382653341441

`A215904(A056115(n)+11)`
-/

namespace A215901.P13780298382653341441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A056115 n + 11).toNat

end

end A215901.P13780298382653341441

/-! ## A215901.P12589089616125742461

`A215904(eq[3, A152157(n)])`
-/

namespace A215901.P12589089616125742461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215901.P12589089616125742461

/-!
# A215902: Number of diagonal and antidiagonal neighbor colorings of the even squares of an nX6 array with new integer colors introduced in row major order.

The programs for A215902, there is no canonical definition to state claims against.
-/

/-! ## A215902.P11342705663841651224

`A215924(eq[7, A131818(n+1)])`
-/

namespace A215902.P11342705663841651224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215902.P11342705663841651224

/-! ## A215902.P12067340564397289170

`A215924(∑[n+6]+10)`
-/

namespace A215902.P12067340564397289170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A215902.P12067340564397289170

/-! ## A215902.P16762049059804018129

`A215904(A374007(n+1))`
-/

namespace A215902.P16762049059804018129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A374007 (n + 1)).toNat

end

end A215902.P16762049059804018129

/-! ## A215902.P52394186921154518

`A215904(A056115(n)+21)`
-/

namespace A215902.P52394186921154518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A056115 n + 21).toNat

end

end A215902.P52394186921154518

/-! ## A215902.P16023255684072961577

`A215904(eq[7, A131818(n+1)])`
-/

namespace A215902.P16023255684072961577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215902.P16023255684072961577

/-!
# A215903: Number of diagonal and antidiagonal neighbor colorings of the even squares of an n X 7 array with new integer colors introduced in row major order.

The programs for A215903, there is no canonical definition to state claims against.
-/

/-! ## A215903.P14202410973203529815

`A215904(A374008(n+1))`
-/

namespace A215903.P14202410973203529815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A374008 (n + 1)).toNat

end

end A215903.P14202410973203529815

/-! ## A215903.P1041469785595487056

`A215904(A133263(n+6)+5)`
-/

namespace A215903.P1041469785595487056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A133263 (n + 6) + 5).toNat

end

end A215903.P1041469785595487056

/-! ## A215903.P5943416688808848543

`A215904(eq[8, A131818(n+1)])`
-/

namespace A215903.P5943416688808848543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215903.P5943416688808848543

/-! ## A215903.P1864398934185606114

`A215904(A055999(n+4))`
-/

namespace A215903.P1864398934185606114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 (A055999 (n + 4)).toNat

end

end A215903.P1864398934185606114

/-!
# A215906: Even numbers n such that the Lucas number L(n) is the sum of two squares.

The programs for A215906, there is no canonical definition to state claims against.
-/

/-! ## A215906.P15823764933635392146

`∩[2*n, A124130(n+1)]`
-/

namespace A215906.P15823764933635392146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215906.P15823764933635392146

/-! ## A215906.P14398318681678554572

`record[A038608(A124130(n+1))]`
-/

namespace A215906.P14398318681678554572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A124130 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215906.P14398318681678554572

/-! ## A215906.P10833521403051378295

`filter[A124130(n+1), A059841(#)]`
-/

namespace A215906.P10833521403051378295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215906.P10833521403051378295

/-! ## A215906.P5075564456586525371

`filter[A124130(n+1), A079979(#)]`
-/

namespace A215906.P5075564456586525371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A215906.P5075564456586525371

/-! ## A215906.P1765590587856120098

`filter[A124130(n+1), A232991(#)]`
-/

namespace A215906.P1765590587856120098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A215906.P1765590587856120098

/-!
# A215907: Odd numbers n such that the Lucas number L(n) is the sum of two squares.

The programs for A215907, there is no canonical definition to state claims against.
-/

/-! ## A215907.P15220653497428886698

`∩[A047489(n+1), A124130(n+1)]`
-/

namespace A215907.P15220653497428886698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215907.P15220653497428886698

/-! ## A215907.P18437978941200648665

`∩[A047504(n+1), A124130(n+1)]`
-/

namespace A215907.P18437978941200648665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215907.P18437978941200648665

/-! ## A215907.P13253145691933941082

`A124132(floor(atan(n)+n)+1)`
-/

namespace A215907.P13253145691933941082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A215907.P13253145691933941082

/-! ## A215907.P10932703790898035265

`A124132(n+2-C(n, n²))`
-/

namespace A215907.P10932703790898035265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 2 - Nat.choose n (n ^ 2))

end

end A215907.P10932703790898035265

/-! ## A215907.P10869708555325545704

`∩[2*n+1, A124132(n+1)]`
-/

namespace A215907.P10869708555325545704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215907.P10869708555325545704

/-!
# A215908: Smallest integer that can be represented as the sum of n squares of positive integers in at least n distinct ways.

The programs for A215908, there is no canonical definition to state claims against.
-/

/-! ## A215908.P3450619519099671243

`A052261(n+1)-A067168(A067176(n))`
-/

namespace A215908.P3450619519099671243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052261 (n + 1) - A067168 ((A067176 n).toNat + 10)

end

end A215908.P3450619519099671243

/-! ## A215908.P8153388581933844855

`A052261(n+1)-A342376(A342342(n))`
-/

namespace A215908.P8153388581933844855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052261 (n + 1) - A342376 (A342342 n).toNat

end

end A215908.P8153388581933844855

/-! ## A215908.P7926935015567693576

`A052261(n+1)-A325194(A215937(n+1))`
-/

namespace A215908.P7926935015567693576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052261 (n + 1) - A325194 (A215937 (n + 1)).toNat

end

end A215908.P7926935015567693576

/-! ## A215908.P12805671519131992956

`A052261(n+1)-A025442(A087051(n))`
-/

namespace A215908.P12805671519131992956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052261 (n + 1) - A025442 (A087051 n).toNat

end

end A215908.P12805671519131992956

/-! ## A215908.P11376469145907676739

`A052261(n+1)-A067168(A215904(2*n+3))`
-/

namespace A215908.P11376469145907676739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052261 (n + 1) - A067168 ((A215904 (2 * n + 3)).toNat + 10)

end

end A215908.P11376469145907676739

/-!
# A215909: The number of distinct possible dimensions of unital *-subalgebras of the n X n complex matrices.

The programs for A215909, there is no canonical definition to state claims against.
-/

/-! ## A215909.P6372105494889866058

`A244580(A212464(n+1))+∑[n]`
-/

namespace A215909.P6372105494889866058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244580 (A212464 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215909.P6372105494889866058

/-! ## A215909.P16381933848929882092

`A000120(A189912(n)+1)+∑[n]`
-/

namespace A215909.P16381933848929882092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A189912 n + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215909.P16381933848929882092

/-! ## A215909.P5401876495985857482

`A001221(A041369(n))+A000601(n)`
-/

namespace A215909.P5401876495985857482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A041369 n).toNat + A000601 n

end

end A215909.P5401876495985857482

/-! ## A215909.P12438725643607408

`A000123(n+1)-A008480(A014137(n))`
-/

namespace A215909.P12438725643607408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (n + 1) - A008480 (A014137 n).toNat

end

end A215909.P12438725643607408

/-! ## A215909.P12111357317730423606

`A083544(A140235(n+1))`
-/

namespace A215909.P12111357317730423606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A140235 (n + 1)).toNat

end

end A215909.P12111357317730423606

/-!
# A215910: a(n) = sum of the n-th power of the multinomial coefficients in row n of triangle A036038.

The programs for A215910, there is no canonical definition to state claims against.
-/

/-! ## A215910.P16390558425669880586

`A183610(∑[4*n])`
-/

namespace A215910.P16390558425669880586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215910.P16390558425669880586

/-!
# A215912: Primes of the form 2*!k + 1.

The programs for A215912, there is no canonical definition to state claims against.
-/

/-! ## A215912.P10630580605633283944

`p?[xor(3, n*(a(n-1)-1))]` with `a(0)=3`
-/

namespace A215912.P10630580605633283944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor 3 ((n : ℤ) * (f1 (n - 1) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215912.P10630580605633283944

/-! ## A215912.P11036828196215710325

`p?[(-1)^n+2*ceil(n!/e)]`
-/

namespace A215912.P11036828196215710325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 2 * ⌈(Nat.factorial n : ℝ) / Real.exp 1⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215912.P11036828196215710325

/-! ## A215912.P10110733016799064086

`p?[xor(2, a(n-1)/n^(-1)-(n-1))]` with `a(0)=3`
-/

namespace A215912.P10110733016799064086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor 2 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ) - ((n : ℤ) - 1 : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215912.P10110733016799064086

/-!
# A215915: E.g.f.: exp( Sum_{n>=1} A000041(n)*x^n/n ), where A000041(n) is the number of partitions of n.

The programs for A215915, there is no canonical definition to state claims against.
-/

/-! ## A215915.P16842534088738600489

`A293796(∑[n]+n)`
-/

namespace A215915.P16842534088738600489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A215915.P16842534088738600489

/-! ## A215915.P14512351036117556382

`or(1, A293796(A000096(n)))`
-/

namespace A215915.P14512351036117556382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293796 (A000096 n).toNat)

end

end A215915.P14512351036117556382

/-! ## A215915.P659672734516777165

`gcd(A000038(n), A293796(A000096(n)))`
-/

namespace A215915.P659672734516777165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293796 (A000096 n).toNat)

end

end A215915.P659672734516777165

/-! ## A215915.P5698821420329170304

`A007318(∑[n])*A293796(A000096(n))`
-/

namespace A215915.P5698821420329170304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A293796 (A000096 n).toNat

end

end A215915.P5698821420329170304

/-! ## A215915.P367861145411922290

`A293796(A000096(n))+val(A000096(n+5)+8, 3)`
-/

namespace A215915.P367861145411922290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 (A000096 n).toNat + (SequenceMachineLib.valuation (A000096 (n + 5) + 8).toNat 3 : ℤ)

end

end A215915.P367861145411922290

/-!
# A215916: The total number of components (cycles) in all alignments.

The programs for A215916, there is no canonical definition to state claims against.
-/

/-! ## A215916.P5989064381518566622

`A052801(n)-A007840(n)`
-/

namespace A215916.P5989064381518566622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052801 n - A007840 n

end

end A215916.P5989064381518566622

/-! ## A215916.P17645272385475570224

`Δ[A007840(n)]-A218817(n)`
-/

namespace A215916.P17645272385475570224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A218817 n

end

end A215916.P17645272385475570224

/-! ## A215916.P6397995224829477993

`A052801(n)-A355652(∑[n]+n)`
-/

namespace A215916.P6397995224829477993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052801 n - A355652 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A215916.P6397995224829477993

/-! ## A215916.P10931007091538884416

`A007840(n+1)-A052860(n+1)`
-/

namespace A215916.P10931007091538884416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) - A052860 (n + 1)

end

end A215916.P10931007091538884416

/-! ## A215916.P14584814694761560980

`A052801(n)-A052860(n+1)/(n+1)`
-/

namespace A215916.P14584814694761560980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052801 n : ℚ) - (A052860 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A215916.P14584814694761560980

/-! ## A215916.P15588566198098036590

`A052801(n)+A104150(n)-A052835(n)`
-/

namespace A215916.P15588566198098036590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052801 n + (A104150 n - A052835 n)

end

end A215916.P15588566198098036590

/-! ## A215916.P14865348045547986846

`A007840(A008619(2*n))%A052860(n+1)`
-/

namespace A215916.P14865348045547986846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007840 (A008619 (2 * n)).toNat) (A052860 (n + 1))

end

end A215916.P14865348045547986846

/-! ## A215916.P11932242170153275720

`A007840(n+1)-(A218817(n)+A007840(n))`
-/

namespace A215916.P11932242170153275720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (n + 1) - (A218817 n + A007840 n)

end

end A215916.P11932242170153275720

/-! ## A215916.P4380297666609718362

`A218817(n+1)/(n+1)-A052860(n+1)`
-/

namespace A215916.P4380297666609718362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218817 (n + 1) : ℚ) / (n + 1 : ℚ) - (A052860 (n + 1) : ℚ)

end

end A215916.P4380297666609718362

/-!
# A215917: a(n) = -3*a(n-1) + a(n-3), with a(0)=0, a(1)=6, and a(2)=-15.

The programs for A215917, the canonical program `A215917.P7895303903776388075` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215917 has offset 0).

The definition of A215917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)+a(n-3)` (program `A215917.P7895303903776388075`, by `A215917.P7895303903776388075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215917.P7895303903776388075

`-3*a(n-1)+a(n-3)` with `a(0)=0, a(1)=6, a(2)=-15`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215917

/-- `-3*a(n-1)+a(n-3)` -/
def P7895303903776388075.Spec : Prop :=
  ∀ n, P7895303903776388075.a n = A215917 n

theorem P7895303903776388075.correct : P7895303903776388075.Spec := by
  intro n
  simp only [A215917]

end A215917

/-! ## A215917.P10772845013177342608

`ogf((6x+3x^2)/(1+3x-x^3))`
-/

namespace A215917.P10772845013177342608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 3] [1, 3, 0, -1] n

end

end A215917.P10772845013177342608

namespace A215917

/-- `ogf((6x+3x^2)/(1+3x-x^3))` -/
def P10772845013177342608.Spec : Prop :=
  ∀ n, P10772845013177342608.a n = A215917 n

end A215917

/-! ## A215917.P11031401657935840300

`Δ[A215885(n)]*A062157(n)`
-/

namespace A215917.P11031401657935840300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n

end

end A215917.P11031401657935840300

namespace A215917

/-- `Δ[A215885(n)]*A062157(n)` -/
def P11031401657935840300.Spec : Prop :=
  ∀ n, P11031401657935840300.a n = A215917 n

end A215917

/-! ## A215917.P7753039455730438398

`Δ[A215885(n)]*A165326(n)`
-/

namespace A215917.P7753039455730438398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A165326 n

end

end A215917.P7753039455730438398

namespace A215917

/-- `Δ[A215885(n)]*A165326(n)` -/
def P7753039455730438398.Spec : Prop :=
  ∀ n, P7753039455730438398.a n = A215917 n

end A215917

/-! ## A215917.P12770823917446076520

`Δ[A215885(n)]*A105812(n+2)`
-/

namespace A215917.P12770823917446076520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A105812 (n + 2)

end

end A215917.P12770823917446076520

namespace A215917

/-- `Δ[A215885(n)]*A105812(n+2)` -/
def P12770823917446076520.Spec : Prop :=
  ∀ n, P12770823917446076520.a n = A215917 n

end A215917

/-!
# A215918: Numbers n such that 6*n + {1, 5, 7} are all primes.

The programs for A215918, there is no canonical definition to state claims against.
-/

/-! ## A215918.P2978537200872527479

`(A022005(n+1)-1)/6`
-/

namespace A215918.P2978537200872527479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022005 (n + 1) - 1 : ℚ) / 6

end

end A215918.P2978537200872527479

/-! ## A215918.P10465159582586485522

`A062767(n+1)/2`
-/

namespace A215918.P10465159582586485522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062767 (n + 1) : ℚ) / 2

end

end A215918.P10465159582586485522

/-! ## A215918.P13407921343910266119

`floor(A022005(n+1)/6)`
-/

namespace A215918.P13407921343910266119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022005 (n + 1) : ℚ) / 6⌋

end

end A215918.P13407921343910266119

/-! ## A215918.P6677819015264508421

`floor(A144840(n+1)/6)`
-/

namespace A215918.P6677819015264508421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144840 (n + 1) : ℚ) / 6⌋

end

end A215918.P6677819015264508421

/-! ## A215918.P3632555759872359091

`(A073649(n+1)-5)/6`
-/

namespace A215918.P3632555759872359091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073649 (n + 1) - 5 : ℚ) / 6

end

end A215918.P3632555759872359091

/-! ## A215918.P3340251309022458580

`(A098413(n+1)-7)/6`
-/

namespace A215918.P3340251309022458580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098413 (n + 1) - 7 : ℚ) / 6

end

end A215918.P3340251309022458580

/-! ## A215918.P1373884079010607084

`∩[A056956(n+1), A307562(n+1)]`
-/

namespace A215918.P1373884079010607084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P1373884079010607084

/-! ## A215918.P9966888760746038256

`∩[A002822(n+1)-1, A056956(n+1)]`
-/

namespace A215918.P9966888760746038256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P9966888760746038256

/-! ## A215918.P14371055120975441306

`A273943(A062767(n+1)+2)-1`
-/

namespace A215918.P14371055120975441306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A062767 (n + 1) + 2).toNat - 1

end

end A215918.P14371055120975441306

/-! ## A215918.P3319048909124414839

`∩[A056956(n+1), A153218(n+1)]`
-/

namespace A215918.P3319048909124414839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P3319048909124414839

/-! ## A215918.P13406975464877552176

`∩[A059325(n+1), A307562(n+1)]`
-/

namespace A215918.P13406975464877552176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P13406975464877552176

/-! ## A215918.P8073068835122227136

`∩[A024899(n+1), A153196(n+1)]`
-/

namespace A215918.P8073068835122227136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P8073068835122227136

/-! ## A215918.P17087533218572105255

`∩[A056956(n+1), A153196(n+1)]`
-/

namespace A215918.P17087533218572105255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P17087533218572105255

/-! ## A215918.P13484294813586008467

`∩[A153196(n+1), A307562(n+1)]`
-/

namespace A215918.P13484294813586008467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215918.P13484294813586008467

/-! ## A215918.P7436677332528267473

`A000010(A144840(n+1)-1)/6`
-/

namespace A215918.P7436677332528267473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A144840 (n + 1) - 1).toNat : ℚ) / 6

end

end A215918.P7436677332528267473

/-! ## A215918.P9792584258543566975

`filter[A153196(n+2), A167021(#)]`
-/

namespace A215918.P9792584258543566975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A215918.P9792584258543566975

/-! ## A215918.P4061508405360915505

`eq[A072815(n), A100923(n+1)]`
-/

namespace A215918.P4061508405360915505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215918.P4061508405360915505

/-! ## A215918.P5325945509326901911

`eq[A072815(n), A172155(n+1)]`
-/

namespace A215918.P5325945509326901911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215918.P5325945509326901911

/-! ## A215918.P8232482046044205781

`eq[A072815(n), A182481(n+1)]`
-/

namespace A215918.P8232482046044205781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215918.P8232482046044205781

/-! ## A215918.P12589913799589657673

`A325563(A062767(n+1)+2)-1`
-/

namespace A215918.P12589913799589657673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A062767 (n + 1) + 2).toNat - 1

end

end A215918.P12589913799589657673

/-!
# A215919: a(n) = -3*a(n-1) + a(n-3), with a(0)=0, a(1)=-3, a(2)=12.

The programs for A215919, the canonical program `A215919.P8290800238169968374` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215919 has offset 0).

The definition of A215919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)+a(n-3)` (program `A215919.P8290800238169968374`, by `A215919.P8290800238169968374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215919.P8290800238169968374

`-3*a(n-1)+a(n-3)` with `a(0)=0, a(1)=-3, a(2)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215919

/-- `-3*a(n-1)+a(n-3)` -/
def P8290800238169968374.Spec : Prop :=
  ∀ n, P8290800238169968374.a n = A215919 n

theorem P8290800238169968374.correct : P8290800238169968374.Spec := by
  intro n
  simp only [A215919]

end A215919

/-! ## A215919.P10570730150640770553

`A215917(n+1)+A215917(n)-2*(-1)^n*A215885(n)`
-/

namespace A215919.P10570730150640770553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215917 (n + 1) + A215917 n - 2 * (-1) ^ n * A215885 n

end

end A215919.P10570730150640770553

namespace A215919

/-- `A215917(n+1)+A215917(n)-2*(-1)^n*A215885(n)` -/
def P10570730150640770553.Spec : Prop :=
  ∀ n, P10570730150640770553.a n = A215919 n

end A215919

/-! ## A215919.P9736813088221866284

`ogf((-3x+3x^2)/(1+3x-x^3))`
-/

namespace A215919.P9736813088221866284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -3, 3] [1, 3, 0, -1] n

end

end A215919.P9736813088221866284

namespace A215919

/-- `ogf((-3x+3x^2)/(1+3x-x^3))` -/
def P9736813088221866284.Spec : Prop :=
  ∀ n, P9736813088221866284.a n = A215919 n

end A215919

/-! ## A215919.P8935457946255315504

`Δ[A215917(n)%A123891(n)]`
-/

namespace A215919.P8935457946255315504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215917 n) (A123891 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215919.P8935457946255315504

namespace A215919

/-- `Δ[A215917(n)%A123891(n)]` -/
def P8935457946255315504.Spec : Prop :=
  ∀ n, P8935457946255315504.a n = A215919 n

end A215919

/-! ## A215919.P9725599499955980989

`Δ[A215917(n)]%A215885(n+1)`
-/

namespace A215919.P9725599499955980989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A215885 (n + 1))

end

end A215919.P9725599499955980989

namespace A215919

/-- `Δ[A215917(n)]%A215885(n+1)` -/
def P9725599499955980989.Spec : Prop :=
  ∀ n, P9725599499955980989.a n = A215919 n

end A215919

/-!
# A215920: Number of diagonal and antidiagonal neighbor colorings of the odd squares of an n X n array with new integer colors introduced in row major order.

The programs for A215920, there is no canonical definition to state claims against.
-/

/-! ## A215920.P12431242632054529332

`A215924((n+1)²+n²)`
-/

namespace A215920.P12431242632054529332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 ((n + 1) ^ 2 + n ^ 2)

end

end A215920.P12431242632054529332

/-!
# A215921: Number of diagonal and antidiagonal neighbor colorings of the odd squares of an n X 3 array with new integer colors introduced in row major order.

The programs for A215921, there is no canonical definition to state claims against.
-/

/-! ## A215921.P18110351559105685746

`A215924(∑[n+2]+4)`
-/

namespace A215921.P18110351559105685746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215921.P18110351559105685746

/-! ## A215921.P10241878479763506531

`A215924(A167614(n+1))^(n-abs(1-n))`
-/

namespace A215921.P10241878479763506531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215924 (A167614 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - |1 - (n : ℤ)| : ℤ)

end

end A215921.P10241878479763506531

/-! ## A215921.P11345316725133056184

`A215924(A167614(n+1))%A153079(n)`
-/

namespace A215921.P11345316725133056184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215924 (A167614 (n + 1)).toNat) (A153079 n)

end

end A215921.P11345316725133056184

/-! ## A215921.P5020644852093936448

`gcd(A000038(n), A215924(A167614(n+1)))`
-/

namespace A215921.P5020644852093936448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215924 (A167614 (n + 1)).toNat)

end

end A215921.P5020644852093936448

/-! ## A215921.P8551950981913206055

`or(A000007(n), A215924(A167614(n+1)))`
-/

namespace A215921.P8551950981913206055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215924 (A167614 (n + 1)).toNat)

end

end A215921.P8551950981913206055

/-!
# A215922: Number of diagonal and antidiagonal neighbor colorings of the odd squares of an nX5 array with new integer colors introduced in row major order.

The programs for A215922, there is no canonical definition to state claims against.
-/

/-! ## A215922.P5754092852302843738

`A215924(A056000(n)+15)`
-/

namespace A215922.P5754092852302843738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A056000 n + 15).toNat

end

end A215922.P5754092852302843738

/-! ## A215922.P17735168767880651083

`A215924(eq[6, A131818(n+1)])`
-/

namespace A215922.P17735168767880651083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215922.P17735168767880651083

/-! ## A215922.P15711147127573142727

`A215924(A374005(n+1))`
-/

namespace A215922.P15711147127573142727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A374005 (n + 1)).toNat

end

end A215922.P15711147127573142727

/-! ## A215922.P14674752063143309821

`A215924(A046691(n+3))`
-/

namespace A215922.P14674752063143309821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A046691 (n + 3)).toNat

end

end A215922.P14674752063143309821

/-! ## A215922.P16762864345043366898

`A215924(A056115(n)+11)`
-/

namespace A215922.P16762864345043366898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A056115 n + 11).toNat

end

end A215922.P16762864345043366898

/-!
# A215923: Number of diagonal and antidiagonal neighbor colorings of the odd squares of an nX7 array with new integer colors introduced in row major order.

The programs for A215923, there is no canonical definition to state claims against.
-/

/-! ## A215923.P5501638561727614724

`A215924(A133263(n+6)+5)`
-/

namespace A215923.P5501638561727614724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A133263 (n + 6) + 5).toNat

end

end A215923.P5501638561727614724

/-! ## A215923.P5644012288601960312

`A215924(A374008(n+1))`
-/

namespace A215923.P5644012288601960312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A374008 (n + 1)).toNat

end

end A215923.P5644012288601960312

/-! ## A215923.P12845197034040668846

`A215924(A055999(n+4))`
-/

namespace A215923.P12845197034040668846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (A055999 (n + 4)).toNat

end

end A215923.P12845197034040668846

/-! ## A215923.P11451844554359383405

`A215924(eq[4, A219347(n)])`
-/

namespace A215923.P11451844554359383405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215923.P11451844554359383405

/-!
# A215925: The number of distinct (up to unitary similarity) *-subalgebras of the n X n complex matrices.

The programs for A215925, there is no canonical definition to state claims against.
-/

/-! ## A215925.P18409753711429550430

`∑[A006171(n)]`
-/

namespace A215925.P18409753711429550430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215925.P18409753711429550430

/-! ## A215925.P9424003650469131159

`A006171(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A215925.P9424003650469131159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006171 n + a (A023443 n).toNat

end

end A215925.P9424003650469131159

/-! ## A215925.P15156665001820421265

`a(n-1)+A006171(n)+A000007(n)` with `a(0)=1`
-/

namespace A215925.P15156665001820421265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006171 n + A000007 n)

end

end A215925.P15156665001820421265

/-! ## A215925.P15195135918962255728

`a(n-1)+A006171(A000038(n)+n)` with `a(0)=1`
-/

namespace A215925.P15195135918962255728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006171 (A000038 n + (n : ℤ)).toNat

end

end A215925.P15195135918962255728

/-! ## A215925.P1953462454131479621

`a(n-1)+A006171(n)*A057427(n)` with `a(0)=1`
-/

namespace A215925.P1953462454131479621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006171 n * A057427 n

end

end A215925.P1953462454131479621

/-! ## A215925.P1737719377607577116

`A006171(n)+a(A000720(A008578(n)))` with `a(0)=1`
-/

namespace A215925.P1737719377607577116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006171 n + a (A000720 (A008578 n).toNat).toNat

end

end A215925.P1737719377607577116

/-! ## A215925.P8824347777429414086

`∑[A321876(∑[n]+n)]`
-/

namespace A215925.P8824347777429414086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215925.P8824347777429414086

/-!
# A215927: Primes having at least one digit that is not prime.

The programs for A215927, there is no canonical definition to state claims against.
-/

/-! ## A215927.P18208124253444119805

`∪[p?[a(n-2)+5], A152426(n+1)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A215927.P18208124253444119805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A215927.P18208124253444119805

/-! ## A215927.P17413245729811703906

`∪[A034844(n+1), A152426(n+1)]`
-/

namespace A215927.P17413245729811703906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P17413245729811703906

/-! ## A215927.P7056824856057752818

`∪[A045468(n+1), A152426(n+1)]`
-/

namespace A215927.P7056824856057752818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P7056824856057752818

/-! ## A215927.P13145542139951596500

`∪[A152426(n+1), A154386(n+1)]`
-/

namespace A215927.P13145542139951596500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P13145542139951596500

/-! ## A215927.P7603151352564342284

`∪[A152426(n+1), A155070(n+1)]`
-/

namespace A215927.P7603151352564342284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P7603151352564342284

/-! ## A215927.P18411703136363899350

`∪[A152426(n+1), A154981(n+1)]`
-/

namespace A215927.P18411703136363899350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P18411703136363899350

/-! ## A215927.P13183398661404064978

`∪[A152427(n+1), A154981(n+1)]`
-/

namespace A215927.P13183398661404064978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P13183398661404064978

/-! ## A215927.P17795262839610545495

`∪[A154981(n+1), A220488(n+1)]`
-/

namespace A215927.P17795262839610545495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P17795262839610545495

/-! ## A215927.P14204080444028294362

`p?[A365471(n+1)]`
-/

namespace A215927.P14204080444028294362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215927.P14204080444028294362

/-! ## A215927.P4239606221699178111

`p?[comp[A046034(n+1)]]`
-/

namespace A215927.P4239606221699178111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215927.P4239606221699178111

/-! ## A215927.P1145619640291704750

`filter[A365471(n+2), A010051(#)]`
-/

namespace A215927.P1145619640291704750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215927.P1145619640291704750

/-! ## A215927.P18178994908226879289

`∩[A000040(n+1), A365471(n+1)]`
-/

namespace A215927.P18178994908226879289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P18178994908226879289

/-! ## A215927.P11426770479835626277

`∩[A004139(n+1), A365471(n+1)]`
-/

namespace A215927.P11426770479835626277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P11426770479835626277

/-! ## A215927.P6761226738879042149

`∩[A045319(n+1), A365471(n+1)]`
-/

namespace A215927.P6761226738879042149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P6761226738879042149

/-! ## A215927.P15123559638324962896

`∩[A045344(n+1), A365471(n+1)]`
-/

namespace A215927.P15123559638324962896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P15123559638324962896

/-! ## A215927.P5836943962696280708

`∩[A065091(n+1), A365471(n+1)]`
-/

namespace A215927.P5836943962696280708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P5836943962696280708

/-! ## A215927.P11900666716028424230

`∩[A215848(n+1), A365471(n+1)]`
-/

namespace A215927.P11900666716028424230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215927.P11900666716028424230

/-! ## A215927.P16022450740706609953

`p?[comp[A019546(n+1)]]`
-/

namespace A215927.P16022450740706609953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215927.P16022450740706609953

/-! ## A215927.P4028623430481882982

`p?[n%(A276729(n)+n)]`
-/

namespace A215927.P4028623430481882982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A276729 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215927.P4028623430481882982

/-! ## A215927.P7472750870213650113

`filter[A365471(n+2), A171387(#)]`
-/

namespace A215927.P7472750870213650113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A215927.P7472750870213650113

/-!
# A215928: a(n) = 2*a(n-1) + a(n-2) for n > 2, a(0) = a(1) = 1, a(2) = 2.

The programs for A215928, the canonical program `A215928.P9292469542158918024` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215928 has offset 0).

The definition of A215928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A215928.P9292469542158918024`, by `A215928.P9292469542158918024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215928.P9292469542158918024

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215928

/-- `2*a(n-1)+a(n-2)` -/
def P9292469542158918024.Spec : Prop :=
  ∀ n, (P9292469542158918024.a n : ℤ) = A215928 n

theorem P9292469542158918024.correct : P9292469542158918024.Spec := by
  intro n
  simp only [A215928]

end A215928

/-! ## A215928.P16204973071345644761

`ogf((-1+x+x^2)/(-1+2x+x^2))`
-/

namespace A215928.P16204973071345644761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -1] n

end

end A215928.P16204973071345644761

namespace A215928

/-- `ogf((-1+x+x^2)/(-1+2x+x^2))` -/
def P16204973071345644761.Spec : Prop :=
  ∀ n, P16204973071345644761.a n = A215928 n

end A215928

/-! ## A215928.P18088198963394320448

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A215928.P18088198963394320448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A215928.P18088198963394320448

namespace A215928

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P18088198963394320448.Spec : Prop :=
  ∀ n, (P18088198963394320448.a n : ℤ) = A215928 n

theorem P18088198963394320448.correct : P18088198963394320448.Spec := by
  intro n
  simp only [A215928, Nat.add_sub_cancel, A215928.P18088198963394320448.a, A215928.P9292469542158918024.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215928

/-! ## A215928.P15900184217659875529

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A215928.P15900184217659875529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A215928.P15900184217659875529

namespace A215928

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P15900184217659875529.Spec : Prop :=
  ∀ n, P15900184217659875529.a n = A215928 n

end A215928

/-! ## A215928.P18143971295557120114

`∏{d}[n, A008555(#)]`
-/

namespace A215928.P18143971295557120114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A008555 d

end

end A215928.P18143971295557120114

namespace A215928

/-- `∏{d}[n, A008555(#)]` -/
def P18143971295557120114.Spec : Prop :=
  ∀ n, P18143971295557120114.a n = A215928 n

end A215928

/-! ## A215928.P12703350085830927325

`round(A001333(n)/sqrt(2))`
-/

namespace A215928.P12703350085830927325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001333 n : ℝ) / Real.sqrt (2 : ℝ))

end

end A215928.P12703350085830927325

namespace A215928

/-- `round(A001333(n)/sqrt(2))` -/
def P12703350085830927325.Spec : Prop :=
  ∀ n, P12703350085830927325.a n = A215928 n

end A215928

/-! ## A215928.P2530605990049717717

`A000129(floor(acot(n)+n))`
-/

namespace A215928.P2530605990049717717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A215928.P2530605990049717717

namespace A215928

/-- `A000129(floor(acot(n)+n))` -/
def P2530605990049717717.Spec : Prop :=
  ∀ n, P2530605990049717717.a n = A215928 n

end A215928

/-! ## A215928.P16666502182645505577

`round(A000129(n)+Δ[sqrt(n)])`
-/

namespace A215928.P16666502182645505577
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000129 n : ℝ) + (f1 (n + 1) - f1 n))

end

end A215928.P16666502182645505577

namespace A215928

/-- `round(A000129(n)+Δ[sqrt(n)])` -/
def P16666502182645505577.Spec : Prop :=
  ∀ n, P16666502182645505577.a n = A215928 n

end A215928

/-! ## A215928.P16383014098969302638

`A265278(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A215928.P16383014098969302638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265278 n + (1 - a (n - 1))

end

end A215928.P16383014098969302638

namespace A215928

/-- `A265278(n)+1-a(n-1)` -/
def P16383014098969302638.Spec : Prop :=
  ∀ n, P16383014098969302638.a n = A215928 n

end A215928

/-! ## A215928.P3650634416156829758

`A078057(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A215928.P3650634416156829758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078057 (n - 1) - a (n - 1)

end

end A215928.P3650634416156829758

namespace A215928

/-- `A078057(n-1)-a(n-1)` -/
def P3650634416156829758.Spec : Prop :=
  ∀ n, P3650634416156829758.a n = A215928 n

end A215928

/-! ## A215928.P8934767357638777090

`A002965(A004277(n))`
-/

namespace A215928.P8934767357638777090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004277 n).toNat

end

end A215928.P8934767357638777090

namespace A215928

/-- `A002965(A004277(n))` -/
def P8934767357638777090.Spec : Prop :=
  ∀ n, P8934767357638777090.a n = A215928 n

end A215928

/-! ## A215928.P9493670942306408214

`A000129(A028310(n))`
-/

namespace A215928.P9493670942306408214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat

end

end A215928.P9493670942306408214

namespace A215928

/-- `A000129(A028310(n))` -/
def P9493670942306408214.Spec : Prop :=
  ∀ n, P9493670942306408214.a n = A215928 n

end A215928

/-! ## A215928.P10203252495911027642

`A092550(A008486(n))`
-/

namespace A215928.P10203252495911027642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A008486 n).toNat

end

end A215928.P10203252495911027642

namespace A215928

/-- `A092550(A008486(n))` -/
def P10203252495911027642.Spec : Prop :=
  ∀ n, P10203252495911027642.a n = A215928 n

end A215928

/-! ## A215928.P6885965992186011954

`A116560(A008458(n))`
-/

namespace A215928.P6885965992186011954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A008458 n).toNat

end

end A215928.P6885965992186011954

namespace A215928

/-- `A116560(A008458(n))` -/
def P6885965992186011954.Spec : Prop :=
  ∀ n, P6885965992186011954.a n = A215928 n

end A215928

/-! ## A215928.P972834877086836204

`A002965(A004275(n+1))`
-/

namespace A215928.P972834877086836204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004275 (n + 1)).toNat

end

end A215928.P972834877086836204

namespace A215928

/-- `A002965(A004275(n+1))` -/
def P972834877086836204.Spec : Prop :=
  ∀ n, P972834877086836204.a n = A215928 n

end A215928

/-! ## A215928.P16495408089513423019

`A002965(A092535(n+1))`
-/

namespace A215928.P16495408089513423019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A092535 (n + 1)).toNat

end

end A215928.P16495408089513423019

namespace A215928

/-- `A002965(A092535(n+1))` -/
def P16495408089513423019.Spec : Prop :=
  ∀ n, P16495408089513423019.a n = A215928 n

end A215928

/-! ## A215928.P7103732169401485559

`A092550(A026488(n+1))`
-/

namespace A215928.P7103732169401485559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A026488 (n + 1)).toNat

end

end A215928.P7103732169401485559

namespace A215928

/-- `A092550(A026488(n+1))` -/
def P7103732169401485559.Spec : Prop :=
  ∀ n, P7103732169401485559.a n = A215928 n

end A215928

/-! ## A215928.P10039880775399301493

`A092550(A033627(n+1))`
-/

namespace A215928.P10039880775399301493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A033627 (n + 1)).toNat

end

end A215928.P10039880775399301493

namespace A215928

/-- `A092550(A033627(n+1))` -/
def P10039880775399301493.Spec : Prop :=
  ∀ n, P10039880775399301493.a n = A215928 n

end A215928

/-! ## A215928.P9118218170077253584

`A135153(A053438(n)+1)`
-/

namespace A215928.P9118218170077253584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A053438 n + 1).toNat

end

end A215928.P9118218170077253584

namespace A215928

/-- `A135153(A053438(n)+1)` -/
def P9118218170077253584.Spec : Prop :=
  ∀ n, P9118218170077253584.a n = A215928 n

end A215928

/-! ## A215928.P14180803602675548452

`A135153(A171781(n+1))`
-/

namespace A215928.P14180803602675548452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A171781 (n + 1)).toNat

end

end A215928.P14180803602675548452

namespace A215928

/-- `A135153(A171781(n+1))` -/
def P14180803602675548452.Spec : Prop :=
  ∀ n, P14180803602675548452.a n = A215928 n

end A215928

/-!
# A215929: Terms of A002336 of the form (2^k - 2)*(2*k - 2) for some k.

The programs for A215929, there is no canonical definition to state claims against.
-/

/-! ## A215929.P15563213901705218891

`A002336(∑{d}[2^n-1, #])`
-/

namespace A215929.P15563213901705218891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A215929.P15563213901705218891

/-!
# A215930: Number of forests on unlabeled nodes with n edges and no single node trees.

The programs for A215930, there is no canonical definition to state claims against.
-/

/-! ## A215930.P15431398603221095801

`A136605(2*n²+1)`
-/

namespace A215930.P15431398603221095801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (2 * n ^ 2 + 1)

end

end A215930.P15431398603221095801

/-! ## A215930.P17919102147179511646

`A095133(∑[4*n]+1)`
-/

namespace A215930.P17919102147179511646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215930.P17919102147179511646

/-! ## A215930.P13412289005354197154

`A105821((n+1)²+n²)`
-/

namespace A215930.P13412289005354197154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 ((n + 1) ^ 2 + n ^ 2)

end

end A215930.P13412289005354197154

/-! ## A215930.P910313372784111215

`or(A000007(n), A136605(A001844(n)))`
-/

namespace A215930.P910313372784111215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A136605 (A001844 n).toNat)

end

end A215930.P910313372784111215

/-! ## A215930.P801822984208497362

`abs(A095133(C(A156245(n+1)-n, 2)-n)-1)+1`
-/

namespace A215930.P801822984208497362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A095133 (Nat.choose (A156245 (n + 1) - (n : ℤ)).toNat 2 - n) - 1| + 1

end

end A215930.P801822984208497362

/-!
# A215931: Product of Fibonacci and Catalan numbers: a(n) = A000045(2*n+2)*A000108(n).

The programs for A215931, the canonical program `A215931.P4877088421483359908` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215931 has offset 0).

The definition of A215931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n+2)*A000108(n)` (program `A215931.P4877088421483359908`, by `A215931.P4877088421483359908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215931.P6570708465182114687

`A000032(n+1)*A098614(n)`
-/

namespace A215931.P6570708465182114687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A098614 n

end

end A215931.P6570708465182114687

namespace A215931

/-- `A000032(n+1)*A098614(n)` -/
def P6570708465182114687.Spec : Prop :=
  ∀ n, P6570708465182114687.a n = A215931 n

end A215931

/-! ## A215931.P4877088421483359908

`A000045(2*n+2)*A000108(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A215931

/-- `A000045(2*n+2)*A000108(n)` -/
def P4877088421483359908.Spec : Prop :=
  ∀ n, P4877088421483359908.a n = A215931 n

theorem P4877088421483359908.correct : P4877088421483359908.Spec := by
  intro n
  simp only [A215931]

end A215931

/-! ## A215931.P7391668731889594260

`A000045(n+1)*(2*A000045(n)+A000045(n+1))*C(2*n, n)/(n+1)`
-/

namespace A215931.P7391668731889594260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) * (2 * A000045 n + A000045 (n + 1)) * (Nat.choose (2 * n) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A215931.P7391668731889594260

namespace A215931

/-- `A000045(n+1)*(2*A000045(n)+A000045(n+1))*C(2*n, n)/(n+1)` -/
def P7391668731889594260.Spec : Prop :=
  ∀ n, P7391668731889594260.a n = (A215931 n : ℚ)

end A215931

/-! ## A215931.P12860294805491788442

`∑[A000045(2*n+1)]/(n+1)*C(2*n, n)`
-/

namespace A215931.P12860294805491788442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A215931.P12860294805491788442

namespace A215931

/-- `∑[A000045(2*n+1)]/(n+1)*C(2*n, n)` -/
def P12860294805491788442.Spec : Prop :=
  ∀ n, P12860294805491788442.a n = (A215931 n : ℚ)

end A215931

/-! ## A215931.P15676308755343341837

`A000108(n)*∑[A122367(n)]`
-/

namespace A215931.P15676308755343341837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215931.P15676308755343341837

namespace A215931

/-- `A000108(n)*∑[A122367(n)]` -/
def P15676308755343341837.Spec : Prop :=
  ∀ n, P15676308755343341837.a n = A215931 n

end A215931

/-! ## A215931.P10933184171338972538

`A000108(n)*Δ[A027941(n)]`
-/

namespace A215931.P10933184171338972538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A215931.P10933184171338972538

namespace A215931

/-- `A000108(n)*Δ[A027941(n)]` -/
def P10933184171338972538.Spec : Prop :=
  ∀ n, P10933184171338972538.a n = A215931 n

end A215931

/-! ## A215931.P15352235499102593008

`A000108(n)*A001906(n+1)`
-/

namespace A215931.P15352235499102593008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001906 (n + 1)

end

end A215931.P15352235499102593008

namespace A215931

/-- `A000108(n)*A001906(n+1)` -/
def P15352235499102593008.Spec : Prop :=
  ∀ n, P15352235499102593008.a n = A215931 n

end A215931

/-! ## A215931.P1659738213764113434

`A000108(n)*A088305(n+1)`
-/

namespace A215931.P1659738213764113434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A088305 (n + 1)

end

end A215931.P1659738213764113434

namespace A215931

/-- `A000108(n)*A088305(n+1)` -/
def P1659738213764113434.Spec : Prop :=
  ∀ n, P1659738213764113434.a n = A215931 n

end A215931

/-! ## A215931.P313690067556528220

`A000045(n+1)*A216541(n)`
-/

namespace A215931.P313690067556528220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A216541 n

end

end A215931.P313690067556528220

namespace A215931

/-- `A000045(n+1)*A216541(n)` -/
def P313690067556528220.Spec : Prop :=
  ∀ n, P313690067556528220.a n = A215931 n

end A215931

/-! ## A215931.P9892504132835158786

`record[record[A212804(n)]*A126120(n)]`
-/

namespace A215931.P9892504132835158786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215931.P9892504132835158786

namespace A215931

/-- `record[record[A212804(n)]*A126120(n)]` -/
def P9892504132835158786.Spec : Prop :=
  ∀ n, P9892504132835158786.a n = A215931 n

end A215931

/-! ## A215931.P17623678133788112613

`record[A000045(n+1)*A097331(n)]`
-/

namespace A215931.P17623678133788112613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215931.P17623678133788112613

namespace A215931

/-- `record[A000045(n+1)*A097331(n)]` -/
def P17623678133788112613.Spec : Prop :=
  ∀ n, P17623678133788112613.a n = A215931 n

end A215931

/-! ## A215931.P11627430906180034706

`A000108(n)*∑[A000045(Δ[n²])]`
-/

namespace A215931.P11627430906180034706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215931.P11627430906180034706

namespace A215931

/-- `A000108(n)*∑[A000045(Δ[n²])]` -/
def P11627430906180034706.Spec : Prop :=
  ∀ n, P11627430906180034706.a n = A215931 n

end A215931

/-! ## A215931.P11623556758501586692

`A000108(n)*A074331(2*n+1)`
-/

namespace A215931.P11623556758501586692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A074331 (2 * n + 1)

end

end A215931.P11623556758501586692

namespace A215931

/-- `A000108(n)*A074331(2*n+1)` -/
def P11623556758501586692.Spec : Prop :=
  ∀ n, P11623556758501586692.a n = A215931 n

end A215931

/-! ## A215931.P5099627279243786301

`A000108(n)*Δ[A000045(or(1, 2*n))]`
-/

namespace A215931.P5099627279243786301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A215931.P5099627279243786301

namespace A215931

/-- `A000108(n)*Δ[A000045(or(1, 2*n))]` -/
def P5099627279243786301.Spec : Prop :=
  ∀ n, P5099627279243786301.a n = A215931 n

end A215931

/-! ## A215931.P1079633635120093116

`Δ[A000045(2*n+1)]*Δ[A166588(2*n)]`
-/

namespace A215931.P1079633635120093116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A215931.P1079633635120093116

namespace A215931

/-- `Δ[A000045(2*n+1)]*Δ[A166588(2*n)]` -/
def P1079633635120093116.Spec : Prop :=
  ∀ n, P1079633635120093116.a n = A215931 n

end A215931

/-! ## A215931.P12926440812243965571

`(A001654(n+1)+A001654(n))*A000108(n)`
-/

namespace A215931.P12926440812243965571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 1) + A001654 n) * A000108 n

end

end A215931.P12926440812243965571

namespace A215931

/-- `(A001654(n+1)+A001654(n))*A000108(n)` -/
def P12926440812243965571.Spec : Prop :=
  ∀ n, P12926440812243965571.a n = A215931 n

end A215931

/-! ## A215931.P2429579878367576465

`(A122367(n+1)-A122367(n))*A000108(n)`
-/

namespace A215931.P2429579878367576465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122367 (n + 1) - A122367 n) * A000108 n

end

end A215931.P2429579878367576465

namespace A215931

/-- `(A122367(n+1)-A122367(n))*A000108(n)` -/
def P2429579878367576465.Spec : Prop :=
  ∀ n, P2429579878367576465.a n = A215931 n

end A215931

/-! ## A215931.P17738330703390960316

`(A000045(2*n+1)+A000045(2*n))*A120588(n+1)`
-/

namespace A215931.P17738330703390960316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) + A000045 (2 * n)) * A120588 (n + 1)

end

end A215931.P17738330703390960316

namespace A215931

/-- `(A000045(2*n+1)+A000045(2*n))*A120588(n+1)` -/
def P17738330703390960316.Spec : Prop :=
  ∀ n, P17738330703390960316.a n = A215931 n

end A215931

/-! ## A215931.P6432755845121601082

`(A000045(2*n+1)+A000045(2*n))*A028303(2*n)`
-/

namespace A215931.P6432755845121601082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) + A000045 (2 * n)) * A028303 (2 * n)

end

end A215931.P6432755845121601082

namespace A215931

/-- `(A000045(2*n+1)+A000045(2*n))*A028303(2*n)` -/
def P6432755845121601082.Spec : Prop :=
  ∀ n, P6432755845121601082.a n = A215931 n

end A215931

/-! ## A215931.P6940427362453094033

`(A000045(2*n+1)+A000045(2*n))*A028304(2*n)`
-/

namespace A215931.P6940427362453094033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) + A000045 (2 * n)) * A028304 (2 * n)

end

end A215931.P6940427362453094033

namespace A215931

/-- `(A000045(2*n+1)+A000045(2*n))*A028304(2*n)` -/
def P6940427362453094033.Spec : Prop :=
  ∀ n, P6940427362453094033.a n = A215931 n

end A215931

/-!
# A215932: Happy reversible primes.

The programs for A215932, there is no canonical definition to state claims against.
-/

/-! ## A215932.P13163271042757009526

`∩[A007500(n+1), A035497(n+1)]`
-/

namespace A215932.P13163271042757009526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215932.P13163271042757009526

/-! ## A215932.P6529067001445521544

`∩[A007500(n+1), A007770(n+1)]`
-/

namespace A215932.P6529067001445521544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215932.P6529067001445521544

/-! ## A215932.P9936900017951512625

`∩[A035497(n+1), A085869(n+1)]`
-/

namespace A215932.P9936900017951512625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215932.P9936900017951512625

/-! ## A215932.P13080798136583614748

`∩[A035497(n+1), A095179(n+1)]`
-/

namespace A215932.P13080798136583614748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215932.P13080798136583614748

/-! ## A215932.P15210196377315530256

`∩[A035497(n+1), A062895(n+1)]`
-/

namespace A215932.P15210196377315530256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215932.P15210196377315530256

/-!
# A215933: A bisection of A183168.

The programs for A215933, there is no canonical definition to state claims against.
-/

/-! ## A215933.P15985799815821857701

`A183168(Δ[n²])`
-/

namespace A215933.P15985799815821857701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183168 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A215933.P15985799815821857701

/-! ## A215933.P17406069208803507085

`A102605(∑[4*n])`
-/

namespace A215933.P17406069208803507085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215933.P17406069208803507085

/-! ## A215933.P16859793735077081334

`A125688(Δ[n²]²)`
-/

namespace A215933.P16859793735077081334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A215933.P16859793735077081334

/-! ## A215933.P2012857646786932798

`or(char[4], A183168(2*n+1))`
-/

namespace A215933.P2012857646786932798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183168 (2 * n + 1))

end

end A215933.P2012857646786932798

/-!
# A215934: A bisection of A183168.

The programs for A215934, there is no canonical definition to state claims against.
-/

/-! ## A215934.P12569152058305429209

`A183168(2*(n+1))`
-/

namespace A215934.P12569152058305429209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183168 (2 * (n + 1))

end

end A215934.P12569152058305429209

/-! ## A215934.P8873280788551156435

`A061357(2*(n+1)²-1)`
-/

namespace A215934.P8873280788551156435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (2 * (n + 1) ^ 2 - 1)

end

end A215934.P8873280788551156435

/-! ## A215934.P8318474063197202892

`floor(A002372(Δ[n²]+∑[4*n])/2)`
-/

namespace A215934.P8318474063197202892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002372 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat : ℚ) / 2⌋

end

end A215934.P8318474063197202892

/-! ## A215934.P9106065080975649006

`or(char[1], A183168(A103517(n)))`
-/

namespace A215934.P9106065080975649006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A183168 (A103517 n).toNat)

end

end A215934.P9106065080975649006

/-! ## A215934.P2586553912044688519

`A183168(A103517(n))%A000124(n)`
-/

namespace A215934.P2586553912044688519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183168 (A103517 n).toNat) (A000124 n)

end

end A215934.P2586553912044688519

/-! ## A215934.P12740199569348039848

`cos(A000038(n))*A183168(A103517(n))`
-/

namespace A215934.P12740199569348039848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A000038 n : ℝ) * (A183168 (A103517 n).toNat : ℝ)

end

end A215934.P12740199569348039848

/-! ## A215934.P14817107244670696452

`A183168(A103517(n))+A000038(n+1)`
-/

namespace A215934.P14817107244670696452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183168 (A103517 n).toNat + A000038 (n + 1)

end

end A215934.P14817107244670696452

/-! ## A215934.P9820895359977152424

`A125688((2*(n+1))²)`
-/

namespace A215934.P9820895359977152424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 ((2 * (n + 1)) ^ 2)

end

end A215934.P9820895359977152424

/-!
# A215935: Number of ordered pairs of primes (p, q) dividing n for which p^e = 1 mod q, where e is the exponent of p in n.

The programs for A215935, there is no canonical definition to state claims against.
-/

/-! ## A215935.P14889396307141493515

`A068439(A086119(n+1))%A349056(n+1)`
-/

namespace A215935.P14889396307141493515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068439 (A086119 (n + 1)).toNat) (A349056 (n + 1))

end

end A215935.P14889396307141493515

/-! ## A215935.P3121840395035737389

`A354994(A057509(2*(n+2)))%A346089(n+1)`
-/

namespace A215935.P3121840395035737389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354994 (A057509 (2 * (n + 2))).toNat) (A346089 (n + 1))

end

end A215935.P3121840395035737389

/-! ## A215935.P6830347277091229031

`A164306(A362489(n))%A303707(n+1)`
-/

namespace A215935.P6830347277091229031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164306 (A362489 n).toNat) (A303707 (n + 1))

end

end A215935.P6830347277091229031

/-! ## A215935.P5351198053604259105

`A324868(A181686(n+1)*A345992(n+1))`
-/

namespace A215935.P5351198053604259105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (A181686 (n + 1) * A345992 (n + 1)).toNat

end

end A215935.P5351198053604259105

/-! ## A215935.P11246198286919424692

`A255404(A046412(2*(n+2)))%A008480(n+1)`
-/

namespace A215935.P11246198286919424692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255404 (A046412 (2 * (n + 2))).toNat) (A008480 (n + 1))

end

end A215935.P11246198286919424692

/-!
# A215936: a(n) = -2*a(n-1) + a(n-2) for n > 2, with a(0) = a(1) = 1, a(2) = 0.

The programs for A215936, the canonical program `A215936.P2239609118540211987` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215936 has offset 0).

The definition of A215936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*a(n-1)+a(n-2)` (program `A215936.P2239609118540211987`, by `A215936.P2239609118540211987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215936.P2239609118540211987

`-2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215936

/-- `-2*a(n-1)+a(n-2)` -/
def P2239609118540211987.Spec : Prop :=
  ∀ n, P2239609118540211987.a n = A215936 n

theorem P2239609118540211987.correct : P2239609118540211987.Spec := by
  intro n
  simp only [A215936]

end A215936

/-! ## A215936.P15435134113616931446

`ogf((1+3x+x^2)/(1+2x-x^2))`
-/

namespace A215936.P15435134113616931446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, 2, -1] n

end

end A215936.P15435134113616931446

namespace A215936

/-- `ogf((1+3x+x^2)/(1+2x-x^2))` -/
def P15435134113616931446.Spec : Prop :=
  ∀ n, P15435134113616931446.a n = A215936 n

end A215936

/-! ## A215936.P7031993691885772414

`a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A215936.P7031993691885772414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) - 2 * a (n - 1)

end

end A215936.P7031993691885772414

namespace A215936

/-- `a(n-2)-2*a(n-1)` -/
def P7031993691885772414.Spec : Prop :=
  ∀ n, P7031993691885772414.a n = A215936 n

end A215936

/-! ## A215936.P4658840404174254067

`a(n-2)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A215936.P4658840404174254067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) - a (n - 1) - a (n - 1)

end

end A215936.P4658840404174254067

namespace A215936

/-- `a(n-2)-a(n-1)-a(n-1)` -/
def P4658840404174254067.Spec : Prop :=
  ∀ n, P4658840404174254067.a n = A215936 n

end A215936

/-! ## A215936.P14137265532951308318

`a(n-1)-A123335(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A215936.P14137265532951308318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A123335 (n - 2)

end

end A215936.P14137265532951308318

namespace A215936

/-- `a(n-1)-A123335(n-2)` -/
def P14137265532951308318.Spec : Prop :=
  ∀ n, P14137265532951308318.a n = A215936 n

end A215936

/-! ## A215936.P15331925979384464991

`A006452(n)-A077241(n)%A079496(n)`
-/

namespace A215936.P15331925979384464991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n - Int.tmod (A077241 n) (A079496 n)

end

end A215936.P15331925979384464991

namespace A215936

/-- `A006452(n)-A077241(n)%A079496(n)` -/
def P15331925979384464991.Spec : Prop :=
  ∀ n, P15331925979384464991.a n = A215936 n

end A215936

/-! ## A215936.P3772301024753924607

`A006452(n)-A006452(n+2)%A079496(n)`
-/

namespace A215936.P3772301024753924607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n - Int.tmod (A006452 (n + 2)) (A079496 n)

end

end A215936.P3772301024753924607

namespace A215936

/-- `A006452(n)-A006452(n+2)%A079496(n)` -/
def P3772301024753924607.Spec : Prop :=
  ∀ n, P3772301024753924607.a n = A215936 n

end A215936

/-! ## A215936.P14853964004124694532

`A124124(n+1)-A154142(n+1)%A078057(n)`
-/

namespace A215936.P14853964004124694532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 1) - Int.tmod (A154142 (n + 1)) (A078057 n)

end

end A215936.P14853964004124694532

namespace A215936

/-- `A124124(n+1)-A154142(n+1)%A078057(n)` -/
def P14853964004124694532.Spec : Prop :=
  ∀ n, P14853964004124694532.a n = A215936 n

end A215936

/-! ## A215936.P5459507576467817216

`A000129(n+1)-A160970(n+1)/A006452(n)`
-/

namespace A215936.P5459507576467817216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) - (A160970 (n + 1) : ℚ) / (A006452 n : ℚ)

end

end A215936.P5459507576467817216

namespace A215936

/-- `A000129(n+1)-A160970(n+1)/A006452(n)` -/
def P5459507576467817216.Spec : Prop :=
  ∀ n, P5459507576467817216.a n = (A215936 n : ℚ)

end A215936

/-!
# A215937: Numbers n such that 2^n + 1 can be written in the form a^2 + 5*b^2.

The programs for A215937, there is no canonical definition to state claims against.
-/

/-! ## A215937.P1433853909195166843

`eq[A285244(n), A371737(n)]`
-/

namespace A215937.P1433853909195166843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215937.P1433853909195166843

/-! ## A215937.P12588034583810608007

`eq[1-and(2, n), A198199(A323347(n))]`
-/

namespace A215937.P12588034583810608007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198199 (A323347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215937.P12588034583810608007

/-! ## A215937.P6366698099377130963

`eq[A032741(A018783(n)), A285244(n)]`
-/

namespace A215937.P6366698099377130963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215937.P6366698099377130963

/-! ## A215937.P16131459909196576910

`eq[A002265(A331885(n)), A331844(n)]`
-/

namespace A215937.P16131459909196576910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A331885 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215937.P16131459909196576910

/-!
# A215938: Numbers n such that the Fibonacci number F(n) can be written in the form a^2 + 5*b^2.

The programs for A215938, there is no canonical definition to state claims against.
-/

/-! ## A215938.P623410496932845747

`lt[A078173(n+5), A240924(A078164(n+1))]`
-/

namespace A215938.P623410496932845747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078173 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240924 (A078164 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215938.P623410496932845747

/-!
# A215939: Prime numbers n such that the Fibonacci number F(n) can be written in the form a^2 + 5*b^2.

The programs for A215939, there is no canonical definition to state claims against.
-/

/-! ## A215939.P15628036544361218788

`p?[A215938(n+1)]`
-/

namespace A215939.P15628036544361218788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215939.P15628036544361218788

/-! ## A215939.P3861005916792198598

`p?[record[A215938(A051340(n))]]`
-/

namespace A215939.P3861005916792198598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215938 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215939.P3861005916792198598

/-! ## A215939.P5292739752807899368

`p?[record[A215938(A065648(n))]]`
-/

namespace A215939.P5292739752807899368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215938 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215939.P5292739752807899368

/-! ## A215939.P14940486765551178350

`p?[record[A215938(A101504(n))]]`
-/

namespace A215939.P14940486765551178350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215938 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215939.P14940486765551178350

/-! ## A215939.P3275213771069920589

`record[A006530(A215938(n+2))]`
-/

namespace A215939.P3275213771069920589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215938 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215939.P3275213771069920589

/-!
# A215940: Difference between the n-th and the first (identity) permutation of (0,...,m-1), interpreted as a decimal number, divided by 9 (for any m for which 10! >= m! >= n).

The programs for A215940, there is no canonical definition to state claims against.
-/

/-! ## A215940.P15882167798803585880

`∑[A217626(n+1)]-A217626(n+1)`
-/

namespace A215940.P15882167798803585880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A217626 (n + 1)

end

end A215940.P15882167798803585880

/-! ## A215940.P15542449775384617543

`A191820(n+1)-A191820(xor(n, xor(1, n)))`
-/

namespace A215940.P15542449775384617543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 1) - A191820 (Nat.xor n (Nat.xor 1 n))

end

end A215940.P15542449775384617543

/-! ## A215940.P10997947359397306819

`A191820(n+1)-A191820(A000027(n+1)-n)`
-/

namespace A215940.P10997947359397306819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 1) - A191820 (A000027 (n + 1) - (n : ℤ)).toNat

end

end A215940.P10997947359397306819

/-! ## A215940.P7221731040279174673

`∑[A191819(n+1)-A191819(A065033(2*n))]`
-/

namespace A215940.P7221731040279174673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191819 (n + 1) - A191819 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215940.P7221731040279174673

/-! ## A215940.P310998706736719427

`A191820(n+1)-A191820(A327832(2*n+1))`
-/

namespace A215940.P310998706736719427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 1) - A191820 (A327832 (2 * n + 1)).toNat

end

end A215940.P310998706736719427

/-! ## A215940.P7695708578382338078

`A191820(A152271(2*n+1))-A191820(A152271(2*n))`
-/

namespace A215940.P7695708578382338078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (A152271 (2 * n + 1)).toNat - A191820 (A152271 (2 * n)).toNat

end

end A215940.P7695708578382338078

/-! ## A215940.P11155796042522773543

`A191820(n+1)-A191820(A166752(2*n+1))`
-/

namespace A215940.P11155796042522773543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 1) - A191820 (A166752 (2 * n + 1)).toNat

end

end A215940.P11155796042522773543

/-! ## A215940.P2768780333410088845

`A191819(n+1)-A191819(A001263(∑[n+1]))`
-/

namespace A215940.P2768780333410088845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191819 (n + 1) - A191819 (A001263 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A215940.P2768780333410088845

/-! ## A215940.P13472831832011615037

`A191819(n+1)-A191819(A133707(n+1)^n)`
-/

namespace A215940.P13472831832011615037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191819 (n + 1) - A191819 (A133707 (n + 1) ^ n).toNat

end

end A215940.P13472831832011615037

/-!
# A215942: a(n) = sigma(6*n) - 12*n.

The programs for A215942, the canonical program `A215942.P14635124153363941371` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215942 has offset 1).

The definition of A215942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(6*(n+1))-12*(n+1)` (program `A215942.P14635124153363941371`, by `A215942.P14635124153363941371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215942.P14635124153363941371

`A000203(6*(n+1))-12*(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A215942

/-- `A000203(6*(n+1))-12*(n+1)` -/
def P14635124153363941371.Spec : Prop :=
  ∀ n, P14635124153363941371.a n = A215942 (n + 1)

theorem P14635124153363941371.correct : P14635124153363941371.Spec := by
  intro n
  simp only [A215942, Nat.add_sub_cancel]

end A215942

/-! ## A215942.P456854521430678778

`A224613(n+1)-A008594(n+1)`
-/

namespace A215942.P456854521430678778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1) - A008594 (n + 1)

end

end A215942.P456854521430678778

namespace A215942

/-- `A224613(n+1)-A008594(n+1)` -/
def P456854521430678778.Spec : Prop :=
  ∀ n, P456854521430678778.a n = A215942 (n + 1)

theorem P456854521430678778.correct : P456854521430678778.Spec := by
  intro n
  simp only [A215942, Nat.add_sub_cancel, A215942.P456854521430678778.a, A215942.P14635124153363941371.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008594, A008594.P9877215682521385096.a, A224613, A224613.P5083964264052453916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215942

/-! ## A215942.P2835803644549419646

`A224613(n+1)-(A230628(n+2)+A008588(n))`
-/

namespace A215942.P2835803644549419646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1) - (A230628 (n + 2) + A008588 n)

end

end A215942.P2835803644549419646

namespace A215942

/-- `A224613(n+1)-(A230628(n+2)+A008588(n))` -/
def P2835803644549419646.Spec : Prop :=
  ∀ n, P2835803644549419646.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P14400250065872140526

`A224613(n+1)-(A008588(n+1)+A008588(n+1))`
-/

namespace A215942.P14400250065872140526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1) - (A008588 (n + 1) + A008588 (n + 1))

end

end A215942.P14400250065872140526

namespace A215942

/-- `A224613(n+1)-(A008588(n+1)+A008588(n+1))` -/
def P14400250065872140526.Spec : Prop :=
  ∀ n, P14400250065872140526.a n = A215942 (n + 1)

theorem P14400250065872140526.correct : P14400250065872140526.Spec := by
  intro n
  simp only [A215942, Nat.add_sub_cancel, A215942.P14400250065872140526.a, A215942.P14635124153363941371.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008588, A008588.P12386450284809463491.a, A224613, A224613.P5083964264052453916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215942

/-! ## A215942.P15838182995340646960

`A224613(n+1)-A230628(2*(n+1))`
-/

namespace A215942.P15838182995340646960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1) - A230628 (2 * (n + 1))

end

end A215942.P15838182995340646960

namespace A215942

/-- `A224613(n+1)-A230628(2*(n+1))` -/
def P15838182995340646960.Spec : Prop :=
  ∀ n, P15838182995340646960.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P5406843359576841518

`abs(A033879(6*(n+1)))`
-/

namespace A215942.P5406843359576841518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033879 (6 * (n + 1))|

end

end A215942.P5406843359576841518

namespace A215942

/-- `abs(A033879(6*(n+1)))` -/
def P5406843359576841518.Spec : Prop :=
  ∀ n, P5406843359576841518.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P1309080784769862946

`A000203(A004277(3*(n+1)))%A008458(2*(n+1))`
-/

namespace A215942.P1309080784769862946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A004277 (3 * (n + 1))).toNat) (A008458 (2 * (n + 1)))

end

end A215942.P1309080784769862946

namespace A215942

/-- `A000203(A004277(3*(n+1)))%A008458(2*(n+1))` -/
def P1309080784769862946.Spec : Prop :=
  ∀ n, P1309080784769862946.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P8650005707833510718

`A033880(6*(n+1))`
-/

namespace A215942.P8650005707833510718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (6 * (n + 1))

end

end A215942.P8650005707833510718

namespace A215942

/-- `A033880(6*(n+1))` -/
def P8650005707833510718.Spec : Prop :=
  ∀ n, P8650005707833510718.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P7285604872051854611

`A001065(6*(n+1))-6*(n+1)`
-/

namespace A215942.P7285604872051854611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (6 * (n + 1)) - (6 * (n + 1) : ℤ)

end

end A215942.P7285604872051854611

namespace A215942

/-- `A001065(6*(n+1))-6*(n+1)` -/
def P7285604872051854611.Spec : Prop :=
  ∀ n, P7285604872051854611.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P2248165910707921796

`A245092(A017653(n))-(A017653(n)+1)`
-/

namespace A215942.P2248165910707921796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A017653 n).toNat - (A017653 n + 1)

end

end A215942.P2248165910707921796

namespace A215942

/-- `A245092(A017653(n))-(A017653(n)+1)` -/
def P2248165910707921796.Spec : Prop :=
  ∀ n, P2248165910707921796.a n = A215942 (n + 1)

end A215942

/-! ## A215942.P2662496702688823958

`A008588(n+1)-A033885(A008588(n+1))`
-/

namespace A215942.P2662496702688823958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1) - A033885 (A008588 (n + 1)).toNat

end

end A215942.P2662496702688823958

namespace A215942

/-- `A008588(n+1)-A033885(A008588(n+1))` -/
def P2662496702688823958.Spec : Prop :=
  ∀ n, P2662496702688823958.a n = A215942 (n + 1)

end A215942

/-!
# A215943: Number of ways to place k non-attacking bishops on an n x n toroidal chessboard, summed over all k >= 0.

The programs for A215943, there is no canonical definition to state claims against.
-/

/-! ## A215943.P17548914643952820902

`∪[A002720(2*n+1), A025167(n+1)²]`
-/

namespace A215943.P17548914643952820902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025167 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215943.P17548914643952820902

/-!
# A215944: Fermat pseudoprimes to base 2 with three prime factors divisible by a smaller Fermat pseudoprime to base 2.

The programs for A215944, there is no canonical definition to state claims against.
-/

/-! ## A215944.P15754636210104456610

`∩[A215150(n+1), A215672(n+1)]`
-/

namespace A215944.P15754636210104456610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215944.P15754636210104456610

/-!
# A215945: a(n) = - 3^n*A(2*n+1), where A(n) = 3*A(n-1) + A(n-2) - A(n-3)/3, with A(0)=A(1)=3, A(2)=11.

The programs for A215945, there is no canonical definition to state claims against.
-/

/-! ## A215945.P18299565273341577288

`-(3*A217336(2*n+1))`
-/

namespace A215945.P18299565273341577288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 * A217336 (2 * n + 1))

end

end A215945.P18299565273341577288

/-!
# A215947: Difference between the sum of the even divisors and the sum of the odd divisors of 2n.

The programs for A215947, the canonical program `A215947.P3538818604850998885` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215947 has offset 1).

The definition of A215947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215947.P9043394546024175388

`∑{d}[2*(n+1), (1-2*#%2)*#]`
-/

namespace A215947.P9043394546024175388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - ((2 * (d % 2) : ℕ) : ℤ)) * (d : ℤ)

end

end A215947.P9043394546024175388

namespace A215947

/-- `∑{d}[2*(n+1), (1-2*#%2)*#]` -/
def P9043394546024175388.Spec : Prop :=
  ∀ n, P9043394546024175388.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P3538818604850998885

`A239050(n+1)-A062731(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215947

/-- `A239050(n+1)-A062731(n+1)` -/
def P3538818604850998885.Spec : Prop :=
  ∀ n, P3538818604850998885.a n = A215947 (n + 1)

theorem P3538818604850998885.correct : P3538818604850998885.Spec := by
  intro n
  simp only [A215947, Nat.add_sub_cancel]

end A215947

/-! ## A215947.P6854888270400258672

`4*A000203(n+1)-A000203(2*(n+1))`
-/

namespace A215947.P6854888270400258672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000203 (n + 1) - A000203 (2 * (n + 1))

end

end A215947.P6854888270400258672

namespace A215947

/-- `4*A000203(n+1)-A000203(2*(n+1))` -/
def P6854888270400258672.Spec : Prop :=
  ∀ n, P6854888270400258672.a n = A215947 (n + 1)

theorem P6854888270400258672.correct : P6854888270400258672.Spec := by
  intro n
  simp only [A215947, Nat.add_sub_cancel, A215947.P6854888270400258672.a, A215947.P3538818604850998885.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062731, A062731.P15391118010266102110.a, A239050, A239050.P11778751463060976919.a, A054785, A054785.P16543829673478475701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215947

/-! ## A215947.P8557608563228333570

`-A002129(2*(n+1))`
-/

namespace A215947.P8557608563228333570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002129 (2 * (n + 1))

end

end A215947.P8557608563228333570

namespace A215947

/-- `-A002129(2*(n+1))` -/
def P8557608563228333570.Spec : Prop :=
  ∀ n, P8557608563228333570.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P2538213003879182347

`∑{d}[n+1, #*gcd(2, #)]`
-/

namespace A215947.P2538213003879182347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * Nat.gcd 2 d

end

end A215947.P2538213003879182347

namespace A215947

/-- `∑{d}[n+1, #*gcd(2, #)]` -/
def P2538213003879182347.Spec : Prop :=
  ∀ n, (P2538213003879182347.a n : ℤ) = A215947 (n + 1)

end A215947

/-! ## A215947.P9879997620215627389

`∑{d}[n+1, A022998(#)]`
-/

namespace A215947.P9879997620215627389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022998 d

end

end A215947.P9879997620215627389

namespace A215947

/-- `∑{d}[n+1, A022998(#)]` -/
def P9879997620215627389.Spec : Prop :=
  ∀ n, P9879997620215627389.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P7309885625432166256

`∑{d}[n+1, #*A040001(#)]`
-/

namespace A215947.P7309885625432166256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A040001 d

end

end A215947.P7309885625432166256

namespace A215947

/-- `∑{d}[n+1, #*A040001(#)]` -/
def P7309885625432166256.Spec : Prop :=
  ∀ n, P7309885625432166256.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P16014197207617743531

`∑{d}[n+1, #*A134451(#)]`
-/

namespace A215947.P16014197207617743531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A134451 d

end

end A215947.P16014197207617743531

namespace A215947

/-- `∑{d}[n+1, #*A134451(#)]` -/
def P16014197207617743531.Spec : Prop :=
  ∀ n, P16014197207617743531.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P3982290762154754819

`∑{d}[n+1, #*A000034(#-1)]`
-/

namespace A215947.P3982290762154754819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000034 (d - 1)

end

end A215947.P3982290762154754819

namespace A215947

/-- `∑{d}[n+1, #*A000034(#-1)]` -/
def P3982290762154754819.Spec : Prop :=
  ∀ n, P3982290762154754819.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P11194408574586472683

`∑{d}[n+1, #*A010684((n+1)/#-1)]`
-/

namespace A215947.P11194408574586472683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A215947.P11194408574586472683

namespace A215947

/-- `∑{d}[n+1, #*A010684((n+1)/#-1)]` -/
def P11194408574586472683.Spec : Prop :=
  ∀ n, P11194408574586472683.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P4173845770366649122

`A146076(n+1)+Δ[A160664(n)]`
-/

namespace A215947.P4173845770366649122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (f1 (n + 1) - f1 n)

end

end A215947.P4173845770366649122

namespace A215947

/-- `A146076(n+1)+Δ[A160664(n)]` -/
def P4173845770366649122.Spec : Prop :=
  ∀ n, P4173845770366649122.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P1467127567474269787

`A146076(n+1)+A000203(n+1)`
-/

namespace A215947.P1467127567474269787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + A000203 (n + 1)

end

end A215947.P1467127567474269787

namespace A215947

/-- `A146076(n+1)+A000203(n+1)` -/
def P1467127567474269787.Spec : Prop :=
  ∀ n, P1467127567474269787.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P3924825427792862206

`A082053(n+1)+A082052(n+1)`
-/

namespace A215947.P3924825427792862206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) + A082052 (n + 1)

end

end A215947.P3924825427792862206

namespace A215947

/-- `A082053(n+1)+A082052(n+1)` -/
def P3924825427792862206.Spec : Prop :=
  ∀ n, P3924825427792862206.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P15986010534936882655

`A054785(n+1)-A002129(n+1)`
-/

namespace A215947.P15986010534936882655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A002129 (n + 1)

end

end A215947.P15986010534936882655

namespace A215947

/-- `A054785(n+1)-A002129(n+1)` -/
def P15986010534936882655.Spec : Prop :=
  ∀ n, P15986010534936882655.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P411833107919359306

`A074400(n+1)-A000593(n+1)`
-/

namespace A215947.P411833107919359306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A000593 (n + 1)

end

end A215947.P411833107919359306

namespace A215947

/-- `A074400(n+1)-A000593(n+1)` -/
def P411833107919359306.Spec : Prop :=
  ∀ n, P411833107919359306.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P13981572396930906249

`A272027(n+1)-A054785(n+1)`
-/

namespace A215947.P13981572396930906249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - A054785 (n + 1)

end

end A215947.P13981572396930906249

namespace A215947

/-- `A272027(n+1)-A054785(n+1)` -/
def P13981572396930906249.Spec : Prop :=
  ∀ n, P13981572396930906249.a n = A215947 (n + 1)

theorem P13981572396930906249.correct : P13981572396930906249.Spec := by
  intro n
  simp only [A215947, Nat.add_sub_cancel, A215947.P13981572396930906249.a, A215947.P3538818604850998885.a, A054785, A054785.P16543829673478475701.a, A062731, A062731.P15391118010266102110.a, A239050, A239050.P11778751463060976919.a, A272027, A272027.P17950759033993077215.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215947

/-! ## A215947.P17887681329408298797

`A002659(n+1)-A326990(n+1)`
-/

namespace A215947.P17887681329408298797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1) - A326990 (n + 1)

end

end A215947.P17887681329408298797

namespace A215947

/-- `A002659(n+1)-A326990(n+1)` -/
def P17887681329408298797.Spec : Prop :=
  ∀ n, P17887681329408298797.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P4604867224105824776

`A000593(n+1)*A393210(n+1)`
-/

namespace A215947.P4604867224105824776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A393210 (n + 1)

end

end A215947.P4604867224105824776

namespace A215947

/-- `A000593(n+1)*A393210(n+1)` -/
def P4604867224105824776.Spec : Prop :=
  ∀ n, P4604867224105824776.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P5101909465620570474

`A050457(n+1)+2*A082052(n+1)`
-/

namespace A215947.P5101909465620570474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (n + 1) + 2 * A082052 (n + 1)

end

end A215947.P5101909465620570474

namespace A215947

/-- `A050457(n+1)+2*A082052(n+1)` -/
def P5101909465620570474.Spec : Prop :=
  ∀ n, P5101909465620570474.a n = A215947 (n + 1)

end A215947

/-! ## A215947.P16482541161563141160

`A000593(n+1)+2*A146076(n+1)`
-/

namespace A215947.P16482541161563141160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + 2 * A146076 (n + 1)

end

end A215947.P16482541161563141160

namespace A215947

/-- `A000593(n+1)+2*A146076(n+1)` -/
def P16482541161563141160.Spec : Prop :=
  ∀ n, P16482541161563141160.a n = A215947 (n + 1)

end A215947

/-!
# A215948: a(n) = 3^n*A(2*n), where A(n) = 3*A(n-1) + A(n-2) - A(n-3)/3 with A(0)=A(1)=3, A(2)=11.

The programs for A215948, there is no canonical definition to state claims against.
-/

/-! ## A215948.P1905428123449527930

`3*A217336(2*n)`
-/

namespace A215948.P1905428123449527930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A217336 (2 * n)

end

end A215948.P1905428123449527930

/-! ## A215948.P205501288657700380

`A353410(n)-3^n`
-/

namespace A215948.P205501288657700380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353410 n - (3 ^ n : ℤ)

end

end A215948.P205501288657700380

/-! ## A215948.P6968661293357319024

`abs(A000244(n)-A353410(n))`
-/

namespace A215948.P6968661293357319024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A353410 n|

end

end A215948.P6968661293357319024

/-! ## A215948.P10652118453698437949

`A353410(n)-A034472(n)+1`
-/

namespace A215948.P10652118453698437949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353410 n - A034472 n + 1

end

end A215948.P10652118453698437949

/-! ## A215948.P764611982508772040

`abs(∑[A025192(n)]-A353410(n))`
-/

namespace A215948.P764611982508772040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A353410 n|

end

end A215948.P764611982508772040

/-! ## A215948.P11953493921883895738

`(A353410(n)-A000244(n))%A275546(n)`
-/

namespace A215948.P11953493921883895738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353410 n - A000244 n) (A275546 n)

end

end A215948.P11953493921883895738

/-!
# A215951: Numbers n such that the absolute value of the difference between the sum of the distinct prime divisors of n that are congruent to 1 mod 4 and the sum of the distinct prime divisors of n that are congruent to 3 mod 4 is a prime.

The programs for A215951, there is no canonical definition to state claims against.
-/

/-! ## A215951.P16222649340682541149

`A079877(record[A260999(n+1)])`
-/

namespace A215951.P16222649340682541149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215951.P16222649340682541149

/-! ## A215951.P4697637464548508473

`A185255(A103517(n))+A079877(n+1)`
-/

namespace A215951.P4697637464548508473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A103517 n).toNat + A079877 (n + 1)

end

end A215951.P4697637464548508473

/-! ## A215951.P5330744128463297266

`A079877(A077168(n))`
-/

namespace A215951.P5330744128463297266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079877 (A077168 n).toNat

end

end A215951.P5330744128463297266

/-!
# A215953: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an n X 2 array with new integer colors introduced in row major order.

The programs for A215953, there is no canonical definition to state claims against.
-/

/-! ## A215953.P3314999006746320600

`A216084(∑[n+1]+2)`
-/

namespace A215953.P3314999006746320600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A215953.P3314999006746320600

/-! ## A215953.P15496813527262641950

`A215959(∑[n+1]+2)`
-/

namespace A215953.P15496813527262641950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A215953.P15496813527262641950

/-! ## A215953.P3660970346491713734

`A215959(A000096(n)+3)%A340332(n+1)`
-/

namespace A215953.P3660970346491713734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215959 (A000096 n + 3).toNat) (A340332 (n + 1))

end

end A215953.P3660970346491713734

/-! ## A215953.P8164337425627817648

`lcm(A215959(A000096(n)+3), A215959(n+1))`
-/

namespace A215953.P8164337425627817648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A215959 (A000096 n + 3).toNat) (A215959 (n + 1))

end

end A215953.P8164337425627817648

/-! ## A215953.P16496280592657337205

`A326684(n+1)+A215959(A000096(n+1))`
-/

namespace A215953.P16496280592657337205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 (n + 1) + A215959 (A000096 (n + 1)).toNat

end

end A215953.P16496280592657337205

/-!
# A215954: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an nX3 array with new integer colors introduced in row major order.

The programs for A215954, there is no canonical definition to state claims against.
-/

/-! ## A215954.P11066607811834626293

`A261041(floor(3*n/2))`
-/

namespace A215954.P11066607811834626293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A215954.P11066607811834626293

/-! ## A215954.P3223448225794807394

`∪[A261041(3*n+1), A261041(3*n)]`
-/

namespace A215954.P3223448225794807394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215954.P3223448225794807394

/-! ## A215954.P15860525617417053236

`A261041(A032766(n))+A010051(2*(n+2))`
-/

namespace A215954.P15860525617417053236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (A032766 n).toNat + A010051 (2 * (n + 2))

end

end A215954.P15860525617417053236

/-! ## A215954.P9291778684744845694

`A261041(A032766(n))+A000007(3*n+2)`
-/

namespace A215954.P9291778684744845694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (A032766 n).toNat + A000007 (3 * n + 2)

end

end A215954.P9291778684744845694

/-! ## A215954.P2336667954419989987

`A088421(3*n+2)*A261041(A032766(n))`
-/

namespace A215954.P2336667954419989987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088421 (3 * n + 2) * A261041 (A032766 n).toNat

end

end A215954.P2336667954419989987

/-!
# A215955: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an n X 4 array with new integer colors introduced in row major order.

The programs for A215955, there is no canonical definition to state claims against.
-/

/-! ## A215955.P11804532628026570798

`A215959(A374004(n+1))`
-/

namespace A215955.P11804532628026570798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A374004 (n + 1)).toNat

end

end A215955.P11804532628026570798

/-! ## A215955.P15270995752603376057

`A215959(A145018(n+4))`
-/

namespace A215955.P15270995752603376057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A145018 (n + 4)).toNat

end

end A215955.P15270995752603376057

/-! ## A215955.P11511117972624384210

`A215959(A141214(n)+7)`
-/

namespace A215955.P11511117972624384210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A141214 n + 7).toNat

end

end A215955.P11511117972624384210

/-! ## A215955.P15544066443927195165

`A215959(A052905(n)+9)`
-/

namespace A215955.P15544066443927195165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A052905 n + 9).toNat

end

end A215955.P15544066443927195165

/-! ## A215955.P2668629502980576107

`A215959(A055999(n)+10)`
-/

namespace A215955.P2668629502980576107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A055999 n + 10).toNat

end

end A215955.P2668629502980576107

/-!
# A215956: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an nX5 array with new integer colors introduced in row major order.

The programs for A215956, there is no canonical definition to state claims against.
-/

/-! ## A215956.P13973294973563179393

`A215959(A374005(n+1))`
-/

namespace A215956.P13973294973563179393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A374005 (n + 1)).toNat

end

end A215956.P13973294973563179393

/-! ## A215956.P16143571832629790512

`A215959(A167499(n+3))`
-/

namespace A215956.P16143571832629790512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A167499 (n + 3)).toNat

end

end A215956.P16143571832629790512

/-! ## A215956.P9376722654857706346

`A215959(A155212(n)+13)`
-/

namespace A215956.P9376722654857706346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A155212 n + 13).toNat

end

end A215956.P9376722654857706346

/-! ## A215956.P12953763015717789002

`A215959(A056000(n)+15)`
-/

namespace A215956.P12953763015717789002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A056000 n + 15).toNat

end

end A215956.P12953763015717789002

/-! ## A215956.P14390785721092513428

`A215959(eq[7, A066657(n)])`
-/

namespace A215956.P14390785721092513428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215956.P14390785721092513428

/-!
# A215957: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an nX6 array with new integer colors introduced in row major order.

The programs for A215957, there is no canonical definition to state claims against.
-/

/-! ## A215957.P10334819745074006803

`A215959(A374007(n+1))`
-/

namespace A215957.P10334819745074006803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A374007 (n + 1)).toNat

end

end A215957.P10334819745074006803

/-! ## A215957.P9358162899201418840

`A215959(A167614(n+4)+3)`
-/

namespace A215957.P9358162899201418840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A167614 (n + 4) + 3).toNat

end

end A215957.P9358162899201418840

/-! ## A215957.P12938134112012033421

`A215959(A145018(n+6)+2)`
-/

namespace A215957.P12938134112012033421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A145018 (n + 6) + 2).toNat

end

end A215957.P12938134112012033421

/-! ## A215957.P13365155963243844621

`A215959(eq[7, A123229(n+1)])`
-/

namespace A215957.P13365155963243844621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215957.P13365155963243844621

/-!
# A215958: Number of horizontal, vertical and diagonal neighbor colorings of the even squares of an nX7 array with new integer colors introduced in row major order.

The programs for A215958, there is no canonical definition to state claims against.
-/

/-! ## A215958.P7151307278339538439

`A215959(A374008(n+1))`
-/

namespace A215958.P7151307278339538439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215959 (A374008 (n + 1)).toNat

end

end A215958.P7151307278339538439

/-!
# A215960: First differences of A016759.

The programs for A215960, the canonical program `A215960.P16749522352293659773` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215960 has offset 0).

The definition of A215960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215960.P16749522352293659773

`Δ[(2*n+1)^7]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A215960

/-- `Δ[(2*n+1)^7]` -/
def P16749522352293659773.Spec : Prop :=
  ∀ n, P16749522352293659773.a n = A215960 n

theorem P16749522352293659773.correct : P16749522352293659773.Spec := by
  intro n
  simp only [A215960]

end A215960

/-! ## A215960.P4331863859730882838

`abs(Δ[A016759(n)])`
-/

namespace A215960.P4331863859730882838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215960.P4331863859730882838

namespace A215960

/-- `abs(Δ[A016759(n)])` -/
def P4331863859730882838.Spec : Prop :=
  ∀ n, P4331863859730882838.a n = A215960 n

end A215960

/-! ## A215960.P1317771294501373549

`A016759(n+1)-A016759(n)`
-/

namespace A215960.P1317771294501373549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 (n + 1) - A016759 n

end

end A215960.P1317771294501373549

namespace A215960

/-- `A016759(n+1)-A016759(n)` -/
def P1317771294501373549.Spec : Prop :=
  ∀ n, P1317771294501373549.a n = A215960 n

end A215960

/-! ## A215960.P11404176601010853600

`A000007(n+2)+Δ[A016759(n)]`
-/

namespace A215960.P11404176601010853600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + (f1 (n + 1) - f1 n)

end

end A215960.P11404176601010853600

namespace A215960

/-- `A000007(n+2)+Δ[A016759(n)]` -/
def P11404176601010853600.Spec : Prop :=
  ∀ n, P11404176601010853600.a n = A215960 n

theorem P11404176601010853600.correct : P11404176601010853600.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P11404176601010853600.f1, A215960.P11404176601010853600.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A000007, A000007.P6599383543502402472.a, A016759, A016759.P1108963978635063233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P8993909266222785145

`Δ[A016759(n)]%A016759(n+3)`
-/

namespace A215960.P8993909266222785145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016759 (n + 3))

end

end A215960.P8993909266222785145

namespace A215960

/-- `Δ[A016759(n)]%A016759(n+3)` -/
def P8993909266222785145.Spec : Prop :=
  ∀ n, P8993909266222785145.a n = A215960 n

end A215960

/-! ## A215960.P12877064668502958998

`record[Δ[Δ[or(1, n)^7]]]`
-/

namespace A215960.P12877064668502958998
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n ^ 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215960.P12877064668502958998

namespace A215960

/-- `record[Δ[Δ[or(1, n)^7]]]` -/
def P12877064668502958998.Spec : Prop :=
  ∀ n, P12877064668502958998.a n = A215960 n

end A215960

/-! ## A215960.P14260211752888947520

`A022523(2*n+1)+A022523(2*(n+1))`
-/

namespace A215960.P14260211752888947520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (2 * n + 1) + A022523 (2 * (n + 1))

end

end A215960.P14260211752888947520

namespace A215960

/-- `A022523(2*n+1)+A022523(2*(n+1))` -/
def P14260211752888947520.Spec : Prop :=
  ∀ n, P14260211752888947520.a n = A215960 n

theorem P14260211752888947520.correct : P14260211752888947520.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P14260211752888947520.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A022523, A022523.P11966938056709641489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P5252563633001653560

`A036085(2*(n+1))-A036085(2*n+1)`
-/

namespace A215960.P5252563633001653560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036085 (2 * (n + 1)) - A036085 (2 * n + 1)

end

end A215960.P5252563633001653560

namespace A215960

/-- `A036085(2*(n+1))-A036085(2*n+1)` -/
def P5252563633001653560.Spec : Prop :=
  ∀ n, P5252563633001653560.a n = A215960 n

theorem P5252563633001653560.correct : P5252563633001653560.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P5252563633001653560.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A036085, A036085.P6699611710931681177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P16698703258341784436

`abs(Δ[A001015(2*n+1)])`
-/

namespace A215960.P16698703258341784436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215960.P16698703258341784436

namespace A215960

/-- `abs(Δ[A001015(2*n+1)])` -/
def P16698703258341784436.Spec : Prop :=
  ∀ n, P16698703258341784436.a n = A215960 n

end A215960

/-! ## A215960.P95625653621935214

`abs(Δ[A024005(2*n+1)])`
-/

namespace A215960.P95625653621935214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215960.P95625653621935214

namespace A215960

/-- `abs(Δ[A024005(2*n+1)])` -/
def P95625653621935214.Spec : Prop :=
  ∀ n, P95625653621935214.a n = A215960 n

end A215960

/-! ## A215960.P12174318753898894068

`abs(Δ[A258806(2*n+1)])`
-/

namespace A215960.P12174318753898894068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258806 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215960.P12174318753898894068

namespace A215960

/-- `abs(Δ[A258806(2*n+1)])` -/
def P12174318753898894068.Spec : Prop :=
  ∀ n, P12174318753898894068.a n = A215960 n

end A215960

/-! ## A215960.P5963860142524350814

`abs(Δ[A258808(2*n+1)])`
-/

namespace A215960.P5963860142524350814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258808 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215960.P5963860142524350814

namespace A215960

/-- `abs(Δ[A258808(2*n+1)])` -/
def P5963860142524350814.Spec : Prop :=
  ∀ n, P5963860142524350814.a n = A215960 n

end A215960

/-! ## A215960.P7980207889110240025

`Δ[A133499(2*n+1)]+2`
-/

namespace A215960.P7980207889110240025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133499 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A215960.P7980207889110240025

namespace A215960

/-- `Δ[A133499(2*n+1)]+2` -/
def P7980207889110240025.Spec : Prop :=
  ∀ n, P7980207889110240025.a n = A215960 n

theorem P7980207889110240025.correct : P7980207889110240025.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P7980207889110240025.f1, A215960.P7980207889110240025.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A133499, A133499.P2764592321123628394.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P3224806369140682057

`Δ[A190578(2*n+1)]-2`
-/

namespace A215960.P3224806369140682057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A215960.P3224806369140682057

namespace A215960

/-- `Δ[A190578(2*n+1)]-2` -/
def P3224806369140682057.Spec : Prop :=
  ∀ n, P3224806369140682057.a n = A215960 n

theorem P3224806369140682057.correct : P3224806369140682057.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P3224806369140682057.f1, A215960.P3224806369140682057.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A190578, A190578.P12146952088927153810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P7963842839426790834

`Δ[A001015(2*n+1)]%A036091(n+3)`
-/

namespace A215960.P7963842839426790834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A036091 (n + 3))

end

end A215960.P7963842839426790834

namespace A215960

/-- `Δ[A001015(2*n+1)]%A036091(n+3)` -/
def P7963842839426790834.Spec : Prop :=
  ∀ n, P7963842839426790834.a n = A215960 n

end A215960

/-! ## A215960.P3688848533238589513

`A258808(2*n+3)+A024005(2*n+1)`
-/

namespace A215960.P3688848533238589513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258808 (2 * n + 3) + A024005 (2 * n + 1)

end

end A215960.P3688848533238589513

namespace A215960

/-- `A258808(2*n+3)+A024005(2*n+1)` -/
def P3688848533238589513.Spec : Prop :=
  ∀ n, P3688848533238589513.a n = A215960 n

theorem P3688848533238589513.correct : P3688848533238589513.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P3688848533238589513.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A024005, A024005.P8923362675459539356.a, A258808, A258808.P6415706604125814936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P3915577174858441362

`A001015(2*n+3)-A001015(2*n+1)`
-/

namespace A215960.P3915577174858441362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (2 * n + 3) - A001015 (2 * n + 1)

end

end A215960.P3915577174858441362

namespace A215960

/-- `A001015(2*n+3)-A001015(2*n+1)` -/
def P3915577174858441362.Spec : Prop :=
  ∀ n, P3915577174858441362.a n = A215960 n

theorem P3915577174858441362.correct : P3915577174858441362.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P3915577174858441362.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A001015, A001015.P16876498052081657174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P11711272038899778871

`A024005(2*n+1)-A024005(2*n+3)`
-/

namespace A215960.P11711272038899778871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024005 (2 * n + 1) - A024005 (2 * n + 3)

end

end A215960.P11711272038899778871

namespace A215960

/-- `A024005(2*n+1)-A024005(2*n+3)` -/
def P11711272038899778871.Spec : Prop :=
  ∀ n, P11711272038899778871.a n = A215960 n

theorem P11711272038899778871.correct : P11711272038899778871.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P11711272038899778871.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A024005, A024005.P8923362675459539356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P17777029739973653080

`A258806(2*n+3)-A258806(2*n+1)`
-/

namespace A215960.P17777029739973653080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258806 (2 * n + 3) - A258806 (2 * n + 1)

end

end A215960.P17777029739973653080

namespace A215960

/-- `A258806(2*n+3)-A258806(2*n+1)` -/
def P17777029739973653080.Spec : Prop :=
  ∀ n, P17777029739973653080.a n = A215960 n

theorem P17777029739973653080.correct : P17777029739973653080.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P17777029739973653080.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A258806, A258806.P6095875049815832673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-! ## A215960.P4946568239925393740

`A258808(2*n+3)-A258808(2*n+1)`
-/

namespace A215960.P4946568239925393740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258808 (2 * n + 3) - A258808 (2 * n + 1)

end

end A215960.P4946568239925393740

namespace A215960

/-- `A258808(2*n+3)-A258808(2*n+1)` -/
def P4946568239925393740.Spec : Prop :=
  ∀ n, P4946568239925393740.a n = A215960 n

theorem P4946568239925393740.correct : P4946568239925393740.Spec := by
  intro n
  simp only [A215960, Nat.add_sub_cancel, A215960.P4946568239925393740.a, A215960.P16749522352293659773.f1, A215960.P16749522352293659773.a, A258808, A258808.P6415706604125814936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215960

/-!
# A215961: Number of primes of the form 1 + b^8192 for 1 < b < 10^n.

The programs for A215961, there is no canonical definition to state claims against.
-/

/-! ## A215961.P137786782463414253

`A177339(A387626(n))`
-/

namespace A215961.P137786782463414253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177339 (A387626 n).toNat

end

end A215961.P137786782463414253

/-! ## A215961.P14456101512628060275

`A177339(A329114(n+1))`
-/

namespace A215961.P14456101512628060275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177339 (A329114 (n + 1)).toNat

end

end A215961.P14456101512628060275

/-! ## A215961.P15189659504951974078

`A204221(A011924(n))+A011921(n)`
-/

namespace A215961.P15189659504951974078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204221 (A011924 n).toNat + A011921 n

end

end A215961.P15189659504951974078

/-!
# A215962: Number of primes of the form 1 + b^16384 for 1 < b < 10^n.

The programs for A215962, there is no canonical definition to state claims against.
-/

/-! ## A215962.P9894927759639332338

`floor((cos(7-n)^4)^(4-n))`
-/

namespace A215962.P9894927759639332338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cos (7 - (n : ℤ) : ℝ) ^ 4) ^ (4 - (n : ℤ) : ℤ)⌋

end

end A215962.P9894927759639332338

/-! ## A215962.P754621606509720153

`and((2*n+1)^(n+3), C(2*n+1, 9))`
-/

namespace A215962.P754621606509720153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land ((2 * n + 1) ^ (n + 3)) (Nat.choose (2 * n + 1) 9)

end

end A215962.P754621606509720153

/-! ## A215962.P17986888255960807047

`A037467(C(comp[6*n], 5))`
-/

namespace A215962.P17986888255960807047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 5)

end

end A215962.P17986888255960807047

/-!
# A215964: Prime tribonacci non-divisors.

The programs for A215964, there is no canonical definition to state claims against.
-/

/-! ## A215964.P12353156975016891354

`p?[A046735(n+1)]`
-/

namespace A215964.P12353156975016891354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215964.P12353156975016891354

/-! ## A215964.P12523224081897197373

`p?[record[A046735(A052938(n))]]`
-/

namespace A215964.P12523224081897197373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215964.P12523224081897197373

/-! ## A215964.P13571171640020582275

`p?[record[A046735(A126759(n))]]`
-/

namespace A215964.P13571171640020582275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215964.P13571171640020582275

/-! ## A215964.P17549199260178712416

`∩[A038907(n+1), A046735(n+1)]`
-/

namespace A215964.P17549199260178712416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P17549199260178712416

/-! ## A215964.P2844033319746747123

`∩[A045331(n+1), A046735(n+1)]`
-/

namespace A215964.P2844033319746747123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P2844033319746747123

/-! ## A215964.P17791522761122167551

`∩[A045375(n+1), A046735(n+1)]`
-/

namespace A215964.P17791522761122167551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P17791522761122167551

/-! ## A215964.P14827565757029614118

`∩[A046735(n+1), A072874(n+1)]`
-/

namespace A215964.P14827565757029614118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P14827565757029614118

/-! ## A215964.P10807574334665524367

`∩[A046735(n+1), A140973(n+1)]`
-/

namespace A215964.P10807574334665524367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P10807574334665524367

/-! ## A215964.P3332060585060187874

`∩[A046735(n+1), A141579(n+1)]`
-/

namespace A215964.P3332060585060187874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P3332060585060187874

/-! ## A215964.P7783943191920712061

`∩[A046735(n+1), A373789(n+1)]`
-/

namespace A215964.P7783943191920712061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P7783943191920712061

/-! ## A215964.P15794064008701135993

`p?[A046735(A052938(n))-A000035(n)]`
-/

namespace A215964.P15794064008701135993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (A052938 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215964.P15794064008701135993

/-! ## A215964.P12279281493942803577

`p?[A033999(n)*A046735(A052938(n))]`
-/

namespace A215964.P12279281493942803577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A046735 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215964.P12279281493942803577

/-! ## A215964.P10665726743995683986

`∩[A046735(n+1), A380468(n+1)]`
-/

namespace A215964.P10665726743995683986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P10665726743995683986

/-! ## A215964.P8530655272085991494

`∩[A040116(n+1), A046735(n+1)]`
-/

namespace A215964.P8530655272085991494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P8530655272085991494

/-! ## A215964.P5158663537284791873

`∩[A009087(n+1), A046735(n+1)]`
-/

namespace A215964.P5158663537284791873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P5158663537284791873

/-! ## A215964.P8182445703866429913

`∩[A046735(n+1), A140557(n+1)]`
-/

namespace A215964.P8182445703866429913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P8182445703866429913

/-! ## A215964.P1688963304043529849

`∩[A046735(n+1), A058501(n+1)]`
-/

namespace A215964.P1688963304043529849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P1688963304043529849

/-! ## A215964.P18227054563298657300

`∩[A046735(n+1), A140562(n+1)]`
-/

namespace A215964.P18227054563298657300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P18227054563298657300

/-! ## A215964.P12005714267735268997

`∩[A046735(n+1), A140563(n+1)]`
-/

namespace A215964.P12005714267735268997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P12005714267735268997

/-! ## A215964.P1539633800323747968

`∩[A046735(n+1), A138645(n+1)]`
-/

namespace A215964.P1539633800323747968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215964.P1539633800323747968

/-!
# A215966: Number of ways prime(n) can be expressed as the sum of distinct smaller noncomposites.

The programs for A215966, there is no canonical definition to state claims against.
-/

/-! ## A215966.P3707885512226806402

`A036497(A000040(n+1))-1`
-/

namespace A215966.P3707885512226806402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (A000040 (n + 1)).toNat - 1

end

end A215966.P3707885512226806402

/-! ## A215966.P10837800350762080950

`A036497(A006005(n+1))-1`
-/

namespace A215966.P10837800350762080950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (A006005 (n + 1)).toNat - 1

end

end A215966.P10837800350762080950

/-! ## A215966.P9455071897789086400

`A036497(A008578(n+2))-1`
-/

namespace A215966.P9455071897789086400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (A008578 (n + 2)).toNat - 1

end

end A215966.P9455071897789086400

/-! ## A215966.P15280493604226090952

`A036497(record[A020639(n+2)])-1`
-/

namespace A215966.P15280493604226090952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A215966.P15280493604226090952

/-! ## A215966.P18004492992775561138

`A036497(p?[A058035(n+1)])-1`
-/

namespace A215966.P18004492992775561138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A215966.P18004492992775561138

/-! ## A215966.P875210338807017272

`A036497(p?[n+1-A006530(n+1)])-1`
-/

namespace A215966.P875210338807017272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A215966.P875210338807017272

/-! ## A215966.P2466519425831008645

`A036497(p?[A303219(n+1)])-1`
-/

namespace A215966.P2466519425831008645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A215966.P2466519425831008645

/-! ## A215966.P300050939581486262

`A036497(p?[A057979(n)])-1`
-/

namespace A215966.P300050939581486262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A215966.P300050939581486262

/-!
# A215971: Number of distinct values taken by 8th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A215971, there is no canonical definition to state claims against.
-/

/-! ## A215971.P13278269873625173926

`A145545(n+1)+A001222(A309862(n))`
-/

namespace A215971.P13278269873625173926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145545 (n + 1) + A001222 (A309862 n).toNat

end

end A215971.P13278269873625173926

/-! ## A215971.P2365595720556070676

`A255638(n+1)+A064911(A148833(n))`
-/

namespace A215971.P2365595720556070676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255638 (n + 1) + A064911 (A148833 n).toNat

end

end A215971.P2365595720556070676

/-! ## A215971.P714690635835798801

`A145545(n+1)+A098854(A342497(n))`
-/

namespace A215971.P714690635835798801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145545 (n + 1) + A098854 (A342497 n).toNat

end

end A215971.P714690635835798801

/-! ## A215971.P9370774878553640895

`A293521(A165877(n))+A145545(n+1)`
-/

namespace A215971.P9370774878553640895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 (A165877 n).toNat + A145545 (n + 1)

end

end A215971.P9370774878553640895

/-! ## A215971.P1033858130413960769

`A000081(n+1)-A083894(A007837(n))`
-/

namespace A215971.P1033858130413960769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A083894 (A007837 n).toNat

end

end A215971.P1033858130413960769

/-!
# A215972: Numbers k such that Sum_{j=1..k-1} j!/2^j is an integer.

The programs for A215972, there is no canonical definition to state claims against.
-/

/-! ## A215972.P7668011172893805237

`A215974(n+1)+1`
-/

namespace A215972.P7668011172893805237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215974 (n + 1) + 1

end

end A215972.P7668011172893805237

/-! ## A215972.P2753877181189908566

`∩[A033053(n+1), A108377(n)]`
-/

namespace A215972.P2753877181189908566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215972.P2753877181189908566

/-! ## A215972.P5837111693503760623

`record[or(A279083(n+1), A325124(n))]`
-/

namespace A215972.P5837111693503760623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279083 (n + 1)) (A325124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215972.P5837111693503760623

/-!
# A215973: a(0) = 1, for n > 0: a(n) = Sum_{k=0..n-1} a(k) * (1 + a(n-1-k)).

The programs for A215973, there is no canonical definition to state claims against.
-/

/-! ## A215973.P17363567889638391885

`A006319(n)+A002264(A156016(n))`
-/

namespace A215973.P17363567889638391885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n + A002264 (A156016 n).toNat

end

end A215973.P17363567889638391885

/-! ## A215973.P17839965510979200344

`A110656(A151175(n+1))`
-/

namespace A215973.P17839965510979200344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151175 (n + 1)).toNat

end

end A215973.P17839965510979200344

/-!
# A215974: Numbers n such that Sum_{k=1..n} k!/2^k is an integer.

The programs for A215974, there is no canonical definition to state claims against.
-/

/-! ## A215974.P17605795788950137263

`A215972(n+1)-1`
-/

namespace A215974.P17605795788950137263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215972 (n + 1) - 1

end

end A215974.P17605795788950137263

/-! ## A215974.P6492506379454567456

`record[Δ[A215972(A152271(n))]]`
-/

namespace A215974.P6492506379454567456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215972 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215974.P6492506379454567456

/-! ## A215974.P9614255105983185750

`record[Δ[A215972(A158416(n))]]`
-/

namespace A215974.P9614255105983185750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215972 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215974.P9614255105983185750

/-! ## A215974.P11839485066955093065

`record[Δ[A215972(A193739(n))]]`
-/

namespace A215974.P11839485066955093065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215972 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215974.P11839485066955093065

/-! ## A215974.P9978290006857207850

`A260196(2*(n+1))+A215972(n+1)`
-/

namespace A215974.P9978290006857207850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 1)) + A215972 (n + 1)

end

end A215974.P9978290006857207850

/-!
# A215975: The integers floor((1.1)^k(n))/floor((1.1)^n) arising in A069751, where k(n) = A069751(n).

The programs for A215975, there is no canonical definition to state claims against.
-/

/-! ## A215975.P17715333541352422673

`A249739(A155043(Δ[A114805(n)]))`
-/

namespace A215975.P17715333541352422673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A155043 (f1 (n + 1) - f1 n).toNat).toNat

end

end A215975.P17715333541352422673

/-! ## A215975.P10943591411628302092

`A000194(p?[A050977(A104741(n+1))])`
-/

namespace A215975.P10943591411628302092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A104741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215975.P10943591411628302092

/-! ## A215975.P3720259266214651718

`A168542(gcd(A168513(n+1), A168514(2*n+5)))`
-/

namespace A215975.P3720259266214651718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168542 (Int.gcd (A168513 (n + 1)) (A168514 (2 * n + 5)))

end

end A215975.P3720259266214651718

/-! ## A215975.P154390165138872710

`A175244(ceil(sqrt(A270867(n))))`
-/

namespace A215975.P154390165138872710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175244 ⌈Real.sqrt (A270867 n : ℝ)⌉.toNat

end

end A215975.P154390165138872710

/-! ## A215975.P3934908479414014701

`gcd(A001055(A274174(n)), A374249(n+1))`
-/

namespace A215975.P3934908479414014701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001055 (A274174 n).toNat) (A374249 (n + 1))

end

end A215975.P3934908479414014701

/-!
# A215977: Number T(n,k) of simple unlabeled graphs on n nodes with exactly k connected components that are trees or cycles; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A215977, there is no canonical definition to state claims against.
-/

/-! ## A215977.P13180785015705107904

`A325678(A238802(n)+A135302(n))`
-/

namespace A215977.P13180785015705107904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A238802 n + A135302 n).toNat

end

end A215977.P13180785015705107904

/-! ## A215977.P9669201056344516812

`A191372(A368028(n))`
-/

namespace A215977.P9669201056344516812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191372 (A368028 n).toNat

end

end A215977.P9669201056344516812

/-! ## A215977.P17017761999193973488

`A060502(A318754(n+1)^A343656(n+1))`
-/

namespace A215977.P17017761999193973488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (SequenceMachineLib.roundAway ((A318754 (n + 1) : ℚ) ^ (A343656 (n + 1) : ℤ))).toNat

end

end A215977.P17017761999193973488

/-! ## A215977.P10944465823190127642

`A285229(n)+A102683(A000045(n))`
-/

namespace A215977.P10944465823190127642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 n + A102683 (A000045 n).toNat

end

end A215977.P10944465823190127642

/-! ## A215977.P7725897018254326980

`A357646(n)%A086846(n+1)`
-/

namespace A215977.P7725897018254326980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357646 n) (A086846 (n + 1))

end

end A215977.P7725897018254326980

/-!
# A215978: Number of simple unlabeled graphs on n nodes with connected components that are trees or cycles.

The programs for A215978, there is no canonical definition to state claims against.
-/

/-! ## A215978.P8592487754631161805

`A243283(A318902(n+6)+1+n)`
-/

namespace A215978.P8592487754631161805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A318902 (n + 6) + 1 + (n : ℤ)).toNat

end

end A215978.P8592487754631161805

/-! ## A215978.P2930118235847426565

`A243283(A318859(n+3)+A045628(n))`
-/

namespace A215978.P2930118235847426565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A318859 (n + 3) + A045628 n).toNat

end

end A215978.P2930118235847426565

/-! ## A215978.P3486962787830800146

`A082447(A148718(n))`
-/

namespace A215978.P3486962787830800146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A148718 n).toNat

end

end A215978.P3486962787830800146

/-! ## A215978.P15201306019273379103

`A103128(A149130(n))`
-/

namespace A215978.P15201306019273379103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A149130 n).toNat

end

end A215978.P15201306019273379103

/-! ## A215978.P9624602968999540139

`A103128(A149132(n))`
-/

namespace A215978.P9624602968999540139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A149132 n).toNat

end

end A215978.P9624602968999540139

/-!
# A215979: Number of simple unlabeled graphs on 2*n nodes with exactly n connected components that are trees or cycles.

The programs for A215979, there is no canonical definition to state claims against.
-/

/-! ## A215979.P17785924236923930488

`A215977(∑[4*n])`
-/

namespace A215979.P17785924236923930488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215979.P17785924236923930488

/-! ## A215979.P11428219932139229438

`lcm(A215977(A046092(n)), A242179(n))`
-/

namespace A215979.P11428219932139229438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A215977 (A046092 n).toNat) (A242179 n)

end

end A215979.P11428219932139229438

/-! ## A215979.P1253263062007017703

`or(A000007(n), A215977(A046092(n)))`
-/

namespace A215979.P1253263062007017703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215977 (A046092 n).toNat)

end

end A215979.P1253263062007017703

/-! ## A215979.P7894109002552708493

`A215977(A046092(n))%A134931(n+4)`
-/

namespace A215979.P7894109002552708493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215977 (A046092 n).toNat) (A134931 (n + 4))

end

end A215979.P7894109002552708493

/-! ## A215979.P3971305997574348427

`or(A000079(n)%2, A215977(A046092(n)))`
-/

namespace A215979.P3971305997574348427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000079 n) 2) (A215977 (A046092 n).toNat)

end

end A215979.P3971305997574348427

/-! ## A215979.P17303341821466620912

`or(A006516(n)%2, A215977(A046092(n)))`
-/

namespace A215979.P17303341821466620912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A006516 n) 2) (A215977 (A046092 n).toNat)

end

end A215979.P17303341821466620912

/-! ## A215979.P1786696318063128579

`or(A027423(n)%2, A215977(A046092(n)))`
-/

namespace A215979.P1786696318063128579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A027423 n) 2) (A215977 (A046092 n).toNat)

end

end A215979.P1786696318063128579

/-! ## A215979.P8867499019626281070

`or(A171476(n)%2, A215977(A046092(n)))`
-/

namespace A215979.P8867499019626281070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A171476 n) 2) (A215977 (A046092 n).toNat)

end

end A215979.P8867499019626281070

/-! ## A215979.P15133011048161707668

`or(A061350(n+1)%2, A215977(A046092(n)))`
-/

namespace A215979.P15133011048161707668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A061350 (n + 1)) 2) (A215977 (A046092 n).toNat)

end

end A215979.P15133011048161707668

/-! ## A215979.P15048062466729547769

`or(A196701(n+1)%2, A215977(A046092(n)))`
-/

namespace A215979.P15048062466729547769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A196701 (n + 1)) 2) (A215977 (A046092 n).toNat)

end

end A215979.P15048062466729547769

/-!
# A215980: Number of simple unlabeled graphs on n nodes with exactly 10 connected components that are trees or cycles.

The programs for A215980, there is no canonical definition to state claims against.
-/

/-! ## A215980.P13637813674644100280

`A215977(eq[10, A002262(n)])`
-/

namespace A215980.P13637813674644100280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215980.P13637813674644100280

/-! ## A215980.P16800747353505712568

`A215977(A000096(n+9)+11)`
-/

namespace A215980.P16800747353505712568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 9) + 11).toNat

end

end A215980.P16800747353505712568

/-! ## A215980.P9920754616795848085

`A215977(eq[10, A144328(n+1)])`
-/

namespace A215980.P9920754616795848085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215980.P9920754616795848085

/-! ## A215980.P8599635427031845281

`A215977(eq[11, A002260(n+1)])`
-/

namespace A215980.P8599635427031845281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215980.P8599635427031845281

/-! ## A215980.P4680132916520388249

`A215977(A056000(n+8)-A004273(n+2))`
-/

namespace A215980.P4680132916520388249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A056000 (n + 8) - A004273 (n + 2)).toNat

end

end A215980.P4680132916520388249

/-!
# A215981: Number of simple unlabeled graphs on n nodes with exactly 1 connected component that is a tree or a cycle.

The programs for A215981, there is no canonical definition to state claims against.
-/

/-! ## A215981.P14136255430626900616

`A000055(n+1)+floor(atan(n))`
-/

namespace A215981.P14136255430626900616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) + ⌊Real.arctan (n : ℝ)⌋

end

end A215981.P14136255430626900616

/-! ## A215981.P10959853270105382641

`A157928(n)+A000055(n+1)`
-/

namespace A215981.P10959853270105382641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A000055 (n + 1)

end

end A215981.P10959853270105382641

/-! ## A215981.P17068384914433979398

`A267870(Δ[n²])+A000055(n+1)`
-/

namespace A215981.P17068384914433979398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000055 (n + 1)

end

end A215981.P17068384914433979398

/-! ## A215981.P2778285005498450500

`A057427(A004526(n))+A000055(n+1)`
-/

namespace A215981.P2778285005498450500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004526 n).toNat + A000055 (n + 1)

end

end A215981.P2778285005498450500

/-! ## A215981.P2492487909808695640

`A057427(A032741(n))+A000055(n+1)`
-/

namespace A215981.P2492487909808695640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A032741 n).toNat + A000055 (n + 1)

end

end A215981.P2492487909808695640

/-! ## A215981.P2762711422169192993

`A057427(A230980(n))+A000055(n+1)`
-/

namespace A215981.P2762711422169192993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A230980 n).toNat + A000055 (n + 1)

end

end A215981.P2762711422169192993

/-! ## A215981.P2090271212579863043

`A057427(A172474(n+1))+A000055(n+1)`
-/

namespace A215981.P2090271212579863043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A172474 (n + 1)).toNat + A000055 (n + 1)

end

end A215981.P2090271212579863043

/-! ## A215981.P7802669962722545943

`A057427(A002265(n+2))+A000055(n+1)`
-/

namespace A215981.P7802669962722545943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A002265 (n + 2)).toNat + A000055 (n + 1)

end

end A215981.P7802669962722545943

/-! ## A215981.P4330117664339800222

`A057427(A172274(n+2))+A000055(n+1)`
-/

namespace A215981.P4330117664339800222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A172274 (n + 2)).toNat + A000055 (n + 1)

end

end A215981.P4330117664339800222

/-! ## A215981.P7902643548531097355

`A057427(n-A057427(n))+A000055(n+1)`
-/

namespace A215981.P7902643548531097355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) - A057427 n).toNat + A000055 (n + 1)

end

end A215981.P7902643548531097355

/-! ## A215981.P600462175541963063

`A318753(A152947(n+1))+A000055(n+1)`
-/

namespace A215981.P600462175541963063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A152947 (n + 1)).toNat + A000055 (n + 1)

end

end A215981.P600462175541963063

/-! ## A215981.P13505338198822255258

`A318753(A238531(n)-1)+A000055(n+1)`
-/

namespace A215981.P13505338198822255258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A238531 n - 1).toNat + A000055 (n + 1)

end

end A215981.P13505338198822255258

/-! ## A215981.P15299762477978671496

`A318753(A133263(n+1))+A000055(n+1)`
-/

namespace A215981.P15299762477978671496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A133263 (n + 1)).toNat + A000055 (n + 1)

end

end A215981.P15299762477978671496

/-! ## A215981.P8166031100742283607

`A318753(A238531(n+2))+A000055(n+1)`
-/

namespace A215981.P8166031100742283607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A238531 (n + 2)).toNat + A000055 (n + 1)

end

end A215981.P8166031100742283607

/-! ## A215981.P10408751223720694063

`A105820(char[1]+∑[n]+1)+1`
-/

namespace A215981.P10408751223720694063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105820 ((if ∃ j, f1 j = n then 1 else 0) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)) + 1

end

end A215981.P10408751223720694063

/-! ## A215981.P11556989324785899178

`A215977(∑[n+1]+1)`
-/

namespace A215981.P11556989324785899178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215981.P11556989324785899178

/-!
# A215982: Number of simple unlabeled graphs on n nodes with exactly 2 connected components that are trees or cycles.

The programs for A215982, there is no canonical definition to state claims against.
-/

/-! ## A215982.P3823789290139069792

`A215977(∑[n+2]+3)`
-/

namespace A215982.P3823789290139069792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215982.P3823789290139069792

/-! ## A215982.P12137709482726245509

`A215977(A055998(n)+5)%A251319(n+2)`
-/

namespace A215982.P12137709482726245509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215977 (A055998 n + 5).toNat) (A251319 (n + 2))

end

end A215982.P12137709482726245509

/-! ## A215982.P7457203330517150619

`floor(1/A007318(n))!*A215977(A055998(n)+5)`
-/

namespace A215982.P7457203330517150619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊1 / (A007318 n : ℚ)⌋.toNat : ℤ) * A215977 (A055998 n + 5).toNat

end

end A215982.P7457203330517150619

/-! ## A215982.P7082954324080113653

`A014963(A008458(n))*A215977(A055998(n)+5)`
-/

namespace A215982.P7082954324080113653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A215977 (A055998 n + 5).toNat

end

end A215982.P7082954324080113653

/-! ## A215982.P8900308369828263208

`A033676(A000040(n+1))*A215977(A055998(n)+5)`
-/

namespace A215982.P8900308369828263208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000040 (n + 1)).toNat * A215977 (A055998 n + 5).toNat

end

end A215982.P8900308369828263208

/-! ## A215982.P12969155795591101101

`A033676(A020639(n+2))*A215977(A055998(n)+5)`
-/

namespace A215982.P12969155795591101101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A020639 (n + 2)).toNat * A215977 (A055998 n + 5).toNat

end

end A215982.P12969155795591101101

/-! ## A215982.P16614816974207453368

`A215977(A055998(n)+5)^A032741(A006530(n+1))`
-/

namespace A215982.P16614816974207453368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215977 (A055998 n + 5).toNat : ℚ) ^ (A032741 (A006530 (n + 1)).toNat : ℤ)

end

end A215982.P16614816974207453368

/-!
# A215983: Number of simple unlabeled graphs on n nodes with exactly 3 connected components that are trees or cycles.

The programs for A215983, there is no canonical definition to state claims against.
-/

/-! ## A215983.P12735311072589007675

`A215977(A167614(n+2))`
-/

namespace A215983.P12735311072589007675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A167614 (n + 2)).toNat

end

end A215983.P12735311072589007675

/-! ## A215983.P7721330978446487035

`A215977(A055999(n)+9)`
-/

namespace A215983.P7721330978446487035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A055999 n + 9).toNat

end

end A215983.P7721330978446487035

/-! ## A215983.P8559099468019049394

`A215977(eq[3, A002262(n)])`
-/

namespace A215983.P8559099468019049394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215983.P8559099468019049394

/-! ## A215983.P4268440579762588133

`A215977(Δ[A008778(n)]+5)`
-/

namespace A215983.P4268440579762588133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (f1 (n + 1) - f1 n + 5).toNat

end

end A215983.P4268440579762588133

/-! ## A215983.P6656657738801751929

`A215977(A340266(n+2)+1)`
-/

namespace A215983.P6656657738801751929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A340266 (n + 2) + 1).toNat

end

end A215983.P6656657738801751929

/-! ## A215983.P3373027697832916414

`A215977(A000124(n+3)+2)`
-/

namespace A215983.P3373027697832916414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 3) + 2).toNat

end

end A215983.P3373027697832916414

/-! ## A215983.P6509063443119382167

`A215977(A134869(n+3)+2)`
-/

namespace A215983.P6509063443119382167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A134869 (n + 3) + 2).toNat

end

end A215983.P6509063443119382167

/-! ## A215983.P5405575637308237407

`A215977(A000217(n+3)+3)`
-/

namespace A215983.P5405575637308237407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 3) + 3).toNat

end

end A215983.P5405575637308237407

/-! ## A215983.P14604212566810635023

`A215977(eq[2, A002260(n+1)-2])`
-/

namespace A215983.P14604212566810635023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215983.P14604212566810635023

/-! ## A215983.P15671413372429965610

`A215977(eq[2, A002260(n+1)/2])`
-/

namespace A215983.P15671413372429965610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A215983.P15671413372429965610

/-!
# A215984: Number of simple unlabeled graphs on n nodes with exactly 4 connected components that are trees or cycles.

The programs for A215984, there is no canonical definition to state claims against.
-/

/-! ## A215984.P12986247798373489097

`A215977(eq[4, A002262(n)])`
-/

namespace A215984.P12986247798373489097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215984.P12986247798373489097

/-! ## A215984.P10616330295747975928

`A215977(A167614(n+3)+1)`
-/

namespace A215984.P10616330295747975928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A167614 (n + 3) + 1).toNat

end

end A215984.P10616330295747975928

/-! ## A215984.P17432241113993610742

`A215977(A000124(n+4)+3)`
-/

namespace A215984.P17432241113993610742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 4) + 3).toNat

end

end A215984.P17432241113993610742

/-! ## A215984.P10404201911308378571

`A215977(A000096(n+3)+5)`
-/

namespace A215984.P10404201911308378571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 3) + 5).toNat

end

end A215984.P10404201911308378571

/-! ## A215984.P10190034730918717682

`A215977(A000217(n+4)+4)`
-/

namespace A215984.P10190034730918717682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 4) + 4).toNat

end

end A215984.P10190034730918717682

/-! ## A215984.P9688209068225702292

`A215977(A055998(n+2)+7)`
-/

namespace A215984.P9688209068225702292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A055998 (n + 2) + 7).toNat

end

end A215984.P9688209068225702292

/-! ## A215984.P2158822968505252489

`A215977(eq[2, A144328(n+1)-2])`
-/

namespace A215984.P2158822968505252489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215984.P2158822968505252489

/-! ## A215984.P3180457297259836261

`A215977(eq[2, A144328(n+1)/2])`
-/

namespace A215984.P3180457297259836261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A215984.P3180457297259836261

/-! ## A215984.P2450985902413625005

`A215977(A046691(n+1)+n+12)`
-/

namespace A215984.P2450985902413625005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A046691 (n + 1) + (n + 12 : ℤ)).toNat

end

end A215984.P2450985902413625005

/-!
# A215985: Number of simple unlabeled graphs on n nodes with exactly 5 connected components that are trees or cycles.

The programs for A215985, there is no canonical definition to state claims against.
-/

/-! ## A215985.P16924329294476232129

`A215977(A167499(n+4))`
-/

namespace A215985.P16924329294476232129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A167499 (n + 4)).toNat

end

end A215985.P16924329294476232129

/-! ## A215985.P3393656948602325915

`A215977(A000096(n+4)+6)`
-/

namespace A215985.P3393656948602325915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 4) + 6).toNat

end

end A215985.P3393656948602325915

/-! ## A215985.P14710446581182829383

`A215977(A000217(n+5)+5)`
-/

namespace A215985.P14710446581182829383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 5) + 5).toNat

end

end A215985.P14710446581182829383

/-! ## A215985.P11827360077936376693

`A215977(A161680(n+6)+5)`
-/

namespace A215985.P11827360077936376693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A161680 (n + 6) + 5).toNat

end

end A215985.P11827360077936376693

/-! ## A215985.P11255028173585075389

`A215977(A000124(n+6)-(n+2))`
-/

namespace A215985.P11255028173585075389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A215985.P11255028173585075389

/-! ## A215985.P10989659311373134293

`A215977(n+9+A000124(n+4))`
-/

namespace A215985.P10989659311373134293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 ((n + 9 : ℤ) + A000124 (n + 4)).toNat

end

end A215985.P10989659311373134293

/-!
# A215986: Number of simple unlabeled graphs on n nodes with exactly 6 connected components that are trees or cycles.

The programs for A215986, there is no canonical definition to state claims against.
-/

/-! ## A215986.P4731345833287610522

`A215977(A000096(n+5)+7)`
-/

namespace A215986.P4731345833287610522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 5) + 7).toNat

end

end A215986.P4731345833287610522

/-! ## A215986.P2804833326627778557

`A215977(A000124(n+7)-(n+2))`
-/

namespace A215986.P2804833326627778557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A215986.P2804833326627778557

/-! ## A215986.P10398036214509856864

`A215977(A055998(n+3)+n+15)`
-/

namespace A215986.P10398036214509856864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A055998 (n + 3) + (n + 15 : ℤ)).toNat

end

end A215986.P10398036214509856864

/-! ## A215986.P31338205960586469

`A215977(A046691(n+3)+n+16)`
-/

namespace A215986.P31338205960586469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A046691 (n + 3) + (n + 16 : ℤ)).toNat

end

end A215986.P31338205960586469

/-! ## A215986.P15893255149705320332

`A215977(A008587(n+5)+A000124(n+1))`
-/

namespace A215986.P15893255149705320332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A008587 (n + 5) + A000124 (n + 1)).toNat

end

end A215986.P15893255149705320332

/-! ## A215986.P8381577294829863229

`A215977(A005408(n+8)+A000217(n+4))`
-/

namespace A215986.P8381577294829863229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A005408 (n + 8) + A000217 (n + 4)).toNat

end

end A215986.P8381577294829863229

/-!
# A215987: Number of simple unlabeled graphs on n nodes with exactly 7 connected components that are trees or cycles.

The programs for A215987, there is no canonical definition to state claims against.
-/

/-! ## A215987.P3001291084964703217

`A215977(eq[7, A002262(n)])`
-/

namespace A215987.P3001291084964703217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215987.P3001291084964703217

/-! ## A215987.P9266415357066828658

`A215977(A000096(n+6)+8)`
-/

namespace A215987.P9266415357066828658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 6) + 8).toNat

end

end A215987.P9266415357066828658

/-! ## A215987.P2645400137066666055

`A215977(eq[8, A002260(n+1)])`
-/

namespace A215987.P2645400137066666055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215987.P2645400137066666055

/-! ## A215987.P10283277668063671827

`A215977(A000217(n+8)-(n+1))`
-/

namespace A215987.P10283277668063671827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A215987.P10283277668063671827

/-! ## A215987.P2384438911158702866

`A215977(A000124(n+8)-(n+2))`
-/

namespace A215987.P2384438911158702866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A215987.P2384438911158702866

/-! ## A215987.P8024050176296837518

`A215977(A008574(n+7)+A000124(n+3))`
-/

namespace A215987.P8024050176296837518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A008574 (n + 7) + A000124 (n + 3)).toNat

end

end A215987.P8024050176296837518

/-!
# A215988: Number of simple unlabeled graphs on n nodes with exactly 8 connected components that are trees or cycles.

The programs for A215988, there is no canonical definition to state claims against.
-/

/-! ## A215988.P10381330000649302388

`A215977(A167614(n+7)+5)`
-/

namespace A215988.P10381330000649302388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A167614 (n + 7) + 5).toNat

end

end A215988.P10381330000649302388

/-! ## A215988.P5013124387483910370

`A215977(A000096(n+7)+9)`
-/

namespace A215988.P5013124387483910370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 7) + 9).toNat

end

end A215988.P5013124387483910370

/-! ## A215988.P9344678433727780255

`A215977(A000217(n+8)+8)`
-/

namespace A215988.P9344678433727780255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 8) + 8).toNat

end

end A215988.P9344678433727780255

/-! ## A215988.P11416090495347478294

`A215977(A000124(n+9)-(n+2))`
-/

namespace A215988.P11416090495347478294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A215988.P11416090495347478294

/-! ## A215988.P18199421323046750716

`A215977(A056000(n+6)-A004273(n+1))`
-/

namespace A215988.P18199421323046750716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A056000 (n + 6) - A004273 (n + 1)).toNat

end

end A215988.P18199421323046750716

/-!
# A215989: Number of simple unlabeled graphs on n nodes with exactly 9 connected components that are trees or cycles.

The programs for A215989, there is no canonical definition to state claims against.
-/

/-! ## A215989.P13671844647893960668

`A215977(A133263(n+9)+7)`
-/

namespace A215989.P13671844647893960668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A133263 (n + 9) + 7).toNat

end

end A215989.P13671844647893960668

/-! ## A215989.P8714766354817769059

`A215977(A000096(n+8)+10)`
-/

namespace A215989.P8714766354817769059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000096 (n + 8) + 10).toNat

end

end A215989.P8714766354817769059

/-! ## A215989.P6923455880372365886

`A215977(A000217(n+9)+9)`
-/

namespace A215989.P6923455880372365886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A000217 (n + 9) + 9).toNat

end

end A215989.P6923455880372365886

/-! ## A215989.P9832081614162608756

`A215977(A161680(n+10)+9)`
-/

namespace A215989.P9832081614162608756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A161680 (n + 10) + 9).toNat

end

end A215989.P9832081614162608756

/-! ## A215989.P17415115180772729801

`A215977(A253145(n+10)-11-A005408(n))`
-/

namespace A215989.P17415115180772729801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 (A253145 (n + 10) - 11 - A005408 n).toNat

end

end A215989.P17415115180772729801

/-!
# A215992: Primes that are the sum of 51 consecutive primes.

The programs for A215992, the canonical program `A215992.P12067662932436388896` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215992 has offset 1).

The definition of A215992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215992.P12067662932436388896

`p?[A007504(n+51)-A007504(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215992

/-- `p?[A007504(n+51)-A007504(n)]` -/
def P12067662932436388896.Spec : Prop :=
  ∀ n, P12067662932436388896.a n = A215992 (n + 1)

theorem P12067662932436388896.correct : P12067662932436388896.Spec := by
  intro n
  simp only [A215992, Nat.add_sub_cancel]

end A215992

