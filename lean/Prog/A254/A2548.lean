import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B006.C000
import Seq.B009.C000
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

/-!
# A254800: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254800, there is no canonical definition to state claims against.
-/

/-! ## A254800.P423666771781137013

`A254804(∑[n+4]+3)`
-/

namespace A254800.P423666771781137013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254800.P423666771781137013

/-!
# A254801: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254801, there is no canonical definition to state claims against.
-/

/-! ## A254801.P12081998380889881361

`A254804(C(n+5, 2)+n+1)`
-/

namespace A254801.P12081998380889881361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (Nat.choose (n + 5) 2 + (n + 1))

end

end A254801.P12081998380889881361

/-!
# A254802: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254802, there is no canonical definition to state claims against.
-/

/-! ## A254802.P3568319251969613461

`A254804(A052905(n+3))`
-/

namespace A254802.P3568319251969613461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A052905 (n + 3)).toNat

end

end A254802.P3568319251969613461

/-!
# A254803: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254803, there is no canonical definition to state claims against.
-/

/-! ## A254803.P12381231584487340019

`A254804(Δ[A023551(n+2)])`
-/

namespace A254803.P12381231584487340019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (f1 (n + 1) - f1 n).toNat

end

end A254803.P12381231584487340019

/-!
# A254805: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254805, there is no canonical definition to state claims against.
-/

/-! ## A254805.P16983902137344002887

`A254804(∑[n+1]+2)`
-/

namespace A254805.P16983902137344002887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254805.P16983902137344002887

/-!
# A254806: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254806, there is no canonical definition to state claims against.
-/

/-! ## A254806.P5321641119314803869

`A254804(∑[n+2]+4)`
-/

namespace A254806.P5321641119314803869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254806.P5321641119314803869

/-!
# A254807: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254807, there is no canonical definition to state claims against.
-/

/-! ## A254807.P9249108926761006540

`A254804(C(n+5, 2)-n)`
-/

namespace A254807.P9249108926761006540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (Nat.choose (n + 5) 2 - n)

end

end A254807.P9249108926761006540

/-!
# A254808: Number of (5+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254808, there is no canonical definition to state claims against.
-/

/-! ## A254808.P18178097076905349276

`A254804(A167499(n+3))`
-/

namespace A254808.P18178097076905349276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A167499 (n + 3)).toNat

end

end A254808.P18178097076905349276

/-!
# A254809: Number of (6+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254809, there is no canonical definition to state claims against.
-/

/-! ## A254809.P12944142579718314366

`A254804(A167499(n+4)+1)`
-/

namespace A254809.P12944142579718314366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A167499 (n + 4) + 1).toNat

end

end A254809.P12944142579718314366

/-!
# A254810: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254810, there is no canonical definition to state claims against.
-/

/-! ## A254810.P5540745349258675583

`A254804(A167499(n+5)+2)`
-/

namespace A254810.P5540745349258675583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A167499 (n + 5) + 2).toNat

end

end A254810.P5540745349258675583

/-!
# A254811: Number of ways to put n red, n blue, and n green balls into n indistinguishable boxes.

The programs for A254811, there is no canonical definition to state claims against.
-/

/-! ## A254811.P2387879344398248417

`A256384(∑[n+3]+n+3)`
-/

namespace A254811.P2387879344398248417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256384 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A254811.P2387879344398248417

/-!
# A254812: Number of (n+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254812, there is no canonical definition to state claims against.
-/

/-! ## A254812.P3959401217733744883

`A254819(∑[4*n]+1)`
-/

namespace A254812.P3959401217733744883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254812.P3959401217733744883

/-! ## A254812.P175086789838478605

`record[A003982(n)*A254819(n+1)]`
-/

namespace A254812.P175086789838478605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254812.P175086789838478605

/-! ## A254812.P11292834438077158386

`record[gcd(A003987(n), A254819(n+1))]`
-/

namespace A254812.P11292834438077158386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A254819 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254812.P11292834438077158386

/-!
# A254813: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254813, there is no canonical definition to state claims against.
-/

/-! ## A254813.P14756899015721694872

`A254819(∑[n+1]+2)`
-/

namespace A254813.P14756899015721694872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254813.P14756899015721694872

/-! ## A254813.P18413625817421499424

`record[A254819(abs(A201163(n)))]`
-/

namespace A254813.P18413625817421499424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254813.P18413625817421499424

/-! ## A254813.P10926575203599493568

`record[A254819(A347633(n+1)+1)]`
-/

namespace A254813.P10926575203599493568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254813.P10926575203599493568

/-! ## A254813.P4224269592393193854

`record[gcd(A254819(n+3), A298461(n+4))]`
-/

namespace A254813.P4224269592393193854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254819 (n + 3)) (A298461 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254813.P4224269592393193854

/-!
# A254814: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254814, there is no canonical definition to state claims against.
-/

/-! ## A254814.P12926728604128430938

`A254819(∑[n+2]+4)`
-/

namespace A254814.P12926728604128430938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254814.P12926728604128430938

/-!
# A254815: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254815, there is no canonical definition to state claims against.
-/

/-! ## A254815.P1379223611797137894

`A254819(A374004(n+1))`
-/

namespace A254815.P1379223611797137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (A374004 (n + 1)).toNat

end

end A254815.P1379223611797137894

/-! ## A254815.P5010160677724232736

`A254819(A141214(n+1))`
-/

namespace A254815.P5010160677724232736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (A141214 (n + 1)).toNat

end

end A254815.P5010160677724232736

/-!
# A254816: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254816, there is no canonical definition to state claims against.
-/

/-! ## A254816.P3446632220553566408

`A254819(∑[n+4]+11)`
-/

namespace A254816.P3446632220553566408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A254816.P3446632220553566408

/-!
# A254817: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254817, there is no canonical definition to state claims against.
-/

/-! ## A254817.P7646118010935298248

`A254819(A374007(n+1))`
-/

namespace A254817.P7646118010935298248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (A374007 (n + 1)).toNat

end

end A254817.P7646118010935298248

/-!
# A254818: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of four medians of central row, central column, diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254818, there is no canonical definition to state claims against.
-/

/-! ## A254818.P6270111590592883568

`A254819(A374008(n+1))`
-/

namespace A254818.P6270111590592883568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254819 (A374008 (n + 1)).toNat

end

end A254818.P6270111590592883568

/-!
# A254820: Number of length n 1..(1+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254820, there is no canonical definition to state claims against.
-/

/-! ## A254820.P9284658890192832559

`A254827(∑[n+1])`
-/

namespace A254820.P9284658890192832559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254820.P9284658890192832559

/-! ## A254820.P8835568635977750735

`record[gcd(A025581(n), A254827(n+1))]`
-/

namespace A254820.P8835568635977750735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A254827 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254820.P8835568635977750735

/-! ## A254820.P14950567060116593747

`record[A254827(A000217(A032742(n+1)))]`
-/

namespace A254820.P14950567060116593747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254820.P14950567060116593747

/-! ## A254820.P14317385300464502399

`record[(2-A004736(n+1))*A254827(n+1)]`
-/

namespace A254820.P14317385300464502399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A254827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254820.P14317385300464502399

/-!
# A254821: Number of length n 1..(2+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254821, there is no canonical definition to state claims against.
-/

/-! ## A254821.P12806064631710073550

`A254827(∑[n+2])`
-/

namespace A254821.P12806064631710073550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254821.P12806064631710073550

/-! ## A254821.P6780740848491208949

`record[A254827(A000096(A328399(n)))]`
-/

namespace A254821.P6780740848491208949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P6780740848491208949

/-! ## A254821.P756704344365593683

`record[A254827(A000096(A003963(n+1)))]`
-/

namespace A254821.P756704344365593683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P756704344365593683

/-! ## A254821.P636918718731488429

`record[A254827(A000096(A004736(n+1)))]`
-/

namespace A254821.P636918718731488429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P636918718731488429

/-! ## A254821.P16611480810243357481

`record[A254827(A000096(A032742(n+1)))]`
-/

namespace A254821.P16611480810243357481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P16611480810243357481

/-! ## A254821.P6260496411938779644

`record[A254827(A000096(A198788(n+1)))]`
-/

namespace A254821.P6260496411938779644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A198788 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P6260496411938779644

/-! ## A254821.P10360269251898860984

`record[A254827(A000096(A305800(n+1)))]`
-/

namespace A254821.P10360269251898860984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A000096 (A305800 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254821.P10360269251898860984

/-!
# A254822: Number of length n 1..(3+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254822, there is no canonical definition to state claims against.
-/

/-! ## A254822.P16529234838467763063

`A254827(∑[n+3]+1)`
-/

namespace A254822.P16529234838467763063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254822.P16529234838467763063

/-!
# A254823: Number of length n 1..(4+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254823, there is no canonical definition to state claims against.
-/

/-! ## A254823.P9700994547144193865

`A254827(A055998(n+2))`
-/

namespace A254823.P9700994547144193865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A055998 (n + 2)).toNat

end

end A254823.P9700994547144193865

/-!
# A254824: Number of length n 1..(5+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254824, there is no canonical definition to state claims against.
-/

/-! ## A254824.P3539036477547854543

`A254827(A046691(n+3))`
-/

namespace A254824.P3539036477547854543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A046691 (n + 3)).toNat

end

end A254824.P3539036477547854543

/-!
# A254825: Number of length n 1..(6+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254825, there is no canonical definition to state claims against.
-/

/-! ## A254825.P3081820786213804176

`A254827(A052905(n+3))`
-/

namespace A254825.P3081820786213804176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A052905 (n + 3)).toNat

end

end A254825.P3081820786213804176

/-!
# A254826: Number of length n 1..(7+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254826, there is no canonical definition to state claims against.
-/

/-! ## A254826.P15695953403078599274

`A254827(A055999(n+4))`
-/

namespace A254826.P15695953403078599274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A055999 (n + 4)).toNat

end

end A254826.P15695953403078599274

/-!
# A254828: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254828, the canonical program `A254828.P1526053016216426497` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254828 has offset 1).

The definition of A254828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254828.P1526053016216426497

`∑[31%gcd(30, n+2)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254828

/-- `∑[31%gcd(30, n+2)]` -/
def P1526053016216426497.Spec : Prop :=
  ∀ n, (P1526053016216426497.a n : ℤ) = A254828 (n + 1)

theorem P1526053016216426497.correct : P1526053016216426497.Spec := by
  intro n
  simp only [A254828, Nat.add_sub_cancel]

end A254828

/-! ## A254828.P1856591821377575975

`n+1-floor((5*(n+1)+10)/30)-floor(5*(n+1)/30)+floor((n+7)/30)+floor((n+27)/30)`
-/

namespace A254828.P1856591821377575975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(5 * (n + 1) + 10 : ℚ) / 30⌋ - ⌊(5 * (n + 1) : ℚ) / 30⌋ + ⌊(n + 7 : ℚ) / 30⌋ + ⌊(n + 27 : ℚ) / 30⌋

end

end A254828.P1856591821377575975

namespace A254828

/-- `n+1-floor((5*(n+1)+10)/30)-floor(5*(n+1)/30)+floor((n+7)/30)+floor((n+27)/30)` -/
def P1856591821377575975.Spec : Prop :=
  ∀ n, P1856591821377575975.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P4582586707489646414

`∑[1-A162289(2+n)]`
-/

namespace A254828.P4582586707489646414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162289 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P4582586707489646414

namespace A254828

/-- `∑[1-A162289(2+n)]` -/
def P4582586707489646414.Spec : Prop :=
  ∀ n, P4582586707489646414.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P12955164326803795539

`∑[char[A080671(1+n)-2]]`
-/

namespace A254828.P12955164326803795539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (1 + n) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P12955164326803795539

namespace A254828

/-- `∑[char[A080671(1+n)-2]]` -/
def P12955164326803795539.Spec : Prop :=
  ∀ n, (P12955164326803795539.a n : ℤ) = A254828 (n + 1)

end A254828

/-! ## A254828.P5156397082275027402

`∑[dr(C(5, A020639(n+2)))]`
-/

namespace A254828.P5156397082275027402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose 5 (A020639 (n + 2)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P5156397082275027402

namespace A254828

/-- `∑[dr(C(5, A020639(n+2)))]` -/
def P5156397082275027402.Spec : Prop :=
  ∀ n, (P5156397082275027402.a n : ℤ) = A254828 (n + 1)

end A254828

/-! ## A254828.P5134706603367728416

`∑[1-char[A007775(n+1)-2]]`
-/

namespace A254828.P5134706603367728416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P5134706603367728416

namespace A254828

/-- `∑[1-char[A007775(n+1)-2]]` -/
def P5134706603367728416.Spec : Prop :=
  ∀ n, P5134706603367728416.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P12776120649971027089

`∑[char[lt[A020639(n+1), 6]-1]]`
-/

namespace A254828.P12776120649971027089
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P12776120649971027089

namespace A254828

/-- `∑[char[lt[A020639(n+1), 6]-1]]` -/
def P12776120649971027089.Spec : Prop :=
  ∀ n, (P12776120649971027089.a n : ℤ) = A254828 (n + 1)

end A254828

/-! ## A254828.P17437742498023968246

`∑[char[lt[A020639(4/2+n), 6]]]`
-/

namespace A254828.P17437742498023968246
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P17437742498023968246

namespace A254828

/-- `∑[char[lt[A020639(4/2+n), 6]]]` -/
def P17437742498023968246.Spec : Prop :=
  ∀ n, (P17437742498023968246.a n : ℤ) = A254828 (n + 1)

end A254828

/-! ## A254828.P12910104412266189462

`∑[A001221(∑{p}[n+2, round(e/#)]+1)]`
-/

namespace A254828.P12910104412266189462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.exp 1 / (p : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P12910104412266189462

namespace A254828

/-- `∑[A001221(∑{p}[n+2, round(e/#)]+1)]` -/
def P12910104412266189462.Spec : Prop :=
  ∀ n, P12910104412266189462.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P1296504270286794063

`∑[A103451(A020639(n+2))]`
-/

namespace A254828.P1296504270286794063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P1296504270286794063

namespace A254828

/-- `∑[A103451(A020639(n+2))]` -/
def P1296504270286794063.Spec : Prop :=
  ∀ n, P1296504270286794063.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P12467632088351732126

`∑[A204181(A020639(n+2)+1)]`
-/

namespace A254828.P12467632088351732126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204181 (A020639 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P12467632088351732126

namespace A254828

/-- `∑[A204181(A020639(n+2)+1)]` -/
def P12467632088351732126.Spec : Prop :=
  ∀ n, P12467632088351732126.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P6187338856400041439

`∑[A097806(A020639(n+2)-1)]`
-/

namespace A254828.P6187338856400041439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A020639 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P6187338856400041439

namespace A254828

/-- `∑[A097806(A020639(n+2)-1)]` -/
def P6187338856400041439.Spec : Prop :=
  ∀ n, P6187338856400041439.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P861751126552655831

`∑[A118111(A020639(7*(n+2)))]`
-/

namespace A254828.P861751126552655831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118111 (A020639 (7 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P861751126552655831

namespace A254828

/-- `∑[A118111(A020639(7*(n+2)))]` -/
def P861751126552655831.Spec : Prop :=
  ∀ n, P861751126552655831.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P9778813165794262243

`∑[A000045(round(3/A020639(n+2)))]`
-/

namespace A254828.P9778813165794262243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (3 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P9778813165794262243

namespace A254828

/-- `∑[A000045(round(3/A020639(n+2)))]` -/
def P9778813165794262243.Spec : Prop :=
  ∀ n, P9778813165794262243.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P16694217138338793329

`∑[A000120(round(3/A020639(n+2)))]`
-/

namespace A254828.P16694217138338793329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (3 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P16694217138338793329

namespace A254828

/-- `∑[A000120(round(3/A020639(n+2)))]` -/
def P16694217138338793329.Spec : Prop :=
  ∀ n, P16694217138338793329.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P15900118812332487437

`∑[A000194(round(3/A020639(n+2)))]`
-/

namespace A254828.P15900118812332487437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (3 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P15900118812332487437

namespace A254828

/-- `∑[A000194(round(3/A020639(n+2)))]` -/
def P15900118812332487437.Spec : Prop :=
  ∀ n, P15900118812332487437.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P12410668981837557168

`∑[A002487(round(3/A020639(n+2)))]`
-/

namespace A254828.P12410668981837557168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway (3 / (A020639 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P12410668981837557168

namespace A254828

/-- `∑[A002487(round(3/A020639(n+2)))]` -/
def P12410668981837557168.Spec : Prop :=
  ∀ n, P12410668981837557168.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P7088683794810049887

`∑[A152614(A020639(7*(n+2))+1)]`
-/

namespace A254828.P7088683794810049887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152614 (A020639 (7 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P7088683794810049887

namespace A254828

/-- `∑[A152614(A020639(7*(n+2))+1)]` -/
def P7088683794810049887.Spec : Prop :=
  ∀ n, P7088683794810049887.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P6812165822236955781

`∑[floor(sqrt(A178146(n+2)))]`
-/

namespace A254828.P6812165822236955781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A178146 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P6812165822236955781

namespace A254828

/-- `∑[floor(sqrt(A178146(n+2)))]` -/
def P6812165822236955781.Spec : Prop :=
  ∀ n, P6812165822236955781.a n = A254828 (n + 1)

end A254828

/-! ## A254828.P11634906753880686347

`∑[round(3/A090369(n+2))]`
-/

namespace A254828.P11634906753880686347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (A090369 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254828.P11634906753880686347

namespace A254828

/-- `∑[round(3/A090369(n+2))]` -/
def P11634906753880686347.Spec : Prop :=
  ∀ n, P11634906753880686347.a n = A254828 (n + 1)

end A254828

/-!
# A254829: Number of length 2 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254829, there is no canonical definition to state claims against.
-/

/-! ## A254829.P13010435495398153958

`A254827(∑[n+1]+2)`
-/

namespace A254829.P13010435495398153958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254829.P13010435495398153958

/-!
# A254830: Number of length 3 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254830, there is no canonical definition to state claims against.
-/

/-! ## A254830.P3285776448130775481

`A254827(∑[n+2]+4)`
-/

namespace A254830.P3285776448130775481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254830.P3285776448130775481

/-!
# A254831: Number of length 4 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254831, there is no canonical definition to state claims against.
-/

/-! ## A254831.P3761152260636930256

`A254827(A052905(n)+9)`
-/

namespace A254831.P3761152260636930256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A052905 n + 9).toNat

end

end A254831.P3761152260636930256

/-!
# A254832: Number of length 5 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254832, there is no canonical definition to state claims against.
-/

/-! ## A254832.P10832624139175842658

`A254827(A167499(n+3))`
-/

namespace A254832.P10832624139175842658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A167499 (n + 3)).toNat

end

end A254832.P10832624139175842658

/-!
# A254833: Number of length 6 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254833, there is no canonical definition to state claims against.
-/

/-! ## A254833.P2964632684015484526

`A254827(A167499(n+4)+1)`
-/

namespace A254833.P2964632684015484526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A167499 (n + 4) + 1).toNat

end

end A254833.P2964632684015484526

/-!
# A254834: Number of length 7 1..(n+1) arrays with every leading partial sum divisible by 2, 3 or 5.

The programs for A254834, there is no canonical definition to state claims against.
-/

/-! ## A254834.P7690234995755122082

`A254827(A167499(n+5)+2)`
-/

namespace A254834.P7690234995755122082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254827 (A167499 (n + 5) + 2).toNat

end

end A254834.P7690234995755122082

/-!
# A254835: Total number of nonagons in a variant of a nonagon expansion ("side-to-side", two consecutive sides) after n iterations.

The programs for A254835, there is no canonical definition to state claims against.
-/

/-! ## A254835.P11185541031926328075

`record[A141214(n+2)%(6*n-5)]`
-/

namespace A254835.P11185541031926328075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141214 (n + 2)) ((6 * n : ℤ) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254835.P11185541031926328075

/-! ## A254835.P13323654137870617121

`A227089(∑[n+1])-A184955(n)`
-/

namespace A254835.P13323654137870617121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227089 (∑ j ∈ Finset.range (n + 1), f1 j) - A184955 n

end

end A254835.P13323654137870617121

/-! ## A254835.P1025638363627226628

`A089071(n+3)-A256384(A131107(2*n+1))`
-/

namespace A254835.P1025638363627226628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 3) - A256384 (A131107 (2 * n + 1)).toNat

end

end A254835.P1025638363627226628

/-! ## A254835.P8923569630320900407

`A000124(n+1)`
-/

namespace A254835.P8923569630320900407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

end

end A254835.P8923569630320900407

/-! ## A254835.P6722694496126163278

`A223716(∑[n]+1)`
-/

namespace A254835.P6722694496126163278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254835.P6722694496126163278

/-!
# A254836: Numbers n expressible as a product of 4 factors in two different ways, n = a*b*c*d = x*y*w*z, with a+b+c+d = x+y+w+z.

The programs for A254836, there is no canonical definition to state claims against.
-/

/-! ## A254836.P1192351578748201816

`A262504(A262464(n+5)-A027430(n+1))`
-/

namespace A254836.P1192351578748201816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262504 (A262464 (n + 5) - A027430 (n + 1)).toNat

end

end A254836.P1192351578748201816

/-!
# A254837: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254837, there is no canonical definition to state claims against.
-/

/-! ## A254837.P14757303541939119259

`A254845(∑[4*n]+1)`
-/

namespace A254837.P14757303541939119259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254837.P14757303541939119259

/-! ## A254837.P11874514365079589106

`record[gcd(A114327(n), A254845(n+1))]`
-/

namespace A254837.P11874514365079589106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254837.P11874514365079589106

/-!
# A254838: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254838, there is no canonical definition to state claims against.
-/

/-! ## A254838.P17598030015102698674

`A255756(1+∑[n])`
-/

namespace A254838.P17598030015102698674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254838.P17598030015102698674

/-! ## A254838.P17612463998920706518

`record[A255756(n+1)]`
-/

namespace A254838.P17612463998920706518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254838.P17612463998920706518

/-! ## A254838.P10187037968042576582

`A254845(A000124(n))`
-/

namespace A254838.P10187037968042576582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A000124 n).toNat

end

end A254838.P10187037968042576582

/-! ## A254838.P15753484760869839902

`A254845(∑[n+1])`
-/

namespace A254838.P15753484760869839902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254838.P15753484760869839902

/-!
# A254839: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254839, there is no canonical definition to state claims against.
-/

/-! ## A254839.P9597747821937429850

`A254845(A133263(n+1))`
-/

namespace A254839.P9597747821937429850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A133263 (n + 1)).toNat

end

end A254839.P9597747821937429850

/-! ## A254839.P3169628280038104825

`A254845(∑[n+2])`
-/

namespace A254839.P3169628280038104825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254839.P3169628280038104825

/-!
# A254840: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254840, there is no canonical definition to state claims against.
-/

/-! ## A254840.P3239840098429693943

`A254845(A167614(n+1))`
-/

namespace A254840.P3239840098429693943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A167614 (n + 1)).toNat

end

end A254840.P3239840098429693943

/-!
# A254841: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254841, there is no canonical definition to state claims against.
-/

/-! ## A254841.P2748916012087460254

`A254845(∑[n+3]+7)`
-/

namespace A254841.P2748916012087460254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254841.P2748916012087460254

/-!
# A254842: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254842, there is no canonical definition to state claims against.
-/

/-! ## A254842.P2307823750186096475

`A254845(A374005(n+1))`
-/

namespace A254842.P2307823750186096475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A374005 (n + 1)).toNat

end

end A254842.P2307823750186096475

/-!
# A254843: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254843, there is no canonical definition to state claims against.
-/

/-! ## A254843.P16344000043136799072

`A254845(A374007(n+1))`
-/

namespace A254843.P16344000043136799072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A374007 (n + 1)).toNat

end

end A254843.P16344000043136799072

/-! ## A254843.P5700057266527522773

`A254845(∑[n+6]+10)`
-/

namespace A254843.P5700057266527522773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A254843.P5700057266527522773

/-!
# A254844: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the medians of the diagonal and antidiagonal minus the two sums of the central row and column nondecreasing horizontally and vertically.

The programs for A254844, there is no canonical definition to state claims against.
-/

/-! ## A254844.P16653584984310150968

`A254845(A374008(n+1))`
-/

namespace A254844.P16653584984310150968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254845 (A374008 (n + 1)).toNat

end

end A254844.P16653584984310150968

/-!
# A254846: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254846, there is no canonical definition to state claims against.
-/

/-! ## A254846.P9164952454205679483

`A254854(∑[4*n]+1)`
-/

namespace A254846.P9164952454205679483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254846.P9164952454205679483

/-! ## A254846.P16280117930616623922

`record[gcd(A114327(n), A254854(n+1))]`
-/

namespace A254846.P16280117930616623922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254854 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254846.P16280117930616623922

/-! ## A254846.P12926142619760755548

`record[root(A254854(n+1), A286156(n+1))]`
-/

namespace A254846.P12926142619760755548
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254854 (n + 1) : ℝ) ^ (1 / (A286156 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254846.P12926142619760755548

/-!
# A254847: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254847, there is no canonical definition to state claims against.
-/

/-! ## A254847.P16866153043041091523

`A254854(∑[n]+1)`
-/

namespace A254847.P16866153043041091523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254847.P16866153043041091523

/-! ## A254847.P11028269675107062227

`record[A254854(record[A091995(n+1)])]`
-/

namespace A254847.P11028269675107062227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254847.P11028269675107062227

/-! ## A254847.P4914102513850516034

`record[A254854(n+1)/A009766(n)]`
-/

namespace A254847.P4914102513850516034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254854 (n + 1) : ℚ) / (A009766 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254847.P4914102513850516034

/-!
# A254848: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254848, there is no canonical definition to state claims against.
-/

/-! ## A254848.P10893799370628683659

`A254854(∑[n+1]+2)`
-/

namespace A254848.P10893799370628683659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254848.P10893799370628683659

/-! ## A254848.P15998836124663014113

`record[A254854(A133263(A008611(n)))]`
-/

namespace A254848.P15998836124663014113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254848.P15998836124663014113

/-! ## A254848.P16479362330464301152

`record[A254854(A133263(A028920(n)))]`
-/

namespace A254848.P16479362330464301152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A133263 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254848.P16479362330464301152

/-!
# A254849: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254849, there is no canonical definition to state claims against.
-/

/-! ## A254849.P13927135692312079932

`A254854(∑[n+2]+4)`
-/

namespace A254849.P13927135692312079932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254849.P13927135692312079932

/-!
# A254850: Number of (n+2) X (4+2) 0..1 arrays with no 3 X 3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254850, there is no canonical definition to state claims against.
-/

/-! ## A254850.P5280661990467509366

`A254854(A374004(n+1))`
-/

namespace A254850.P5280661990467509366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A374004 (n + 1)).toNat

end

end A254850.P5280661990467509366

/-!
# A254851: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254851, there is no canonical definition to state claims against.
-/

/-! ## A254851.P3928917079275601076

`A254854(A374005(n+1))`
-/

namespace A254851.P3928917079275601076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A374005 (n + 1)).toNat

end

end A254851.P3928917079275601076

/-! ## A254851.P2427681359053721512

`record[A254854(A173036(n)-A016825(n))]`
-/

namespace A254851.P2427681359053721512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A173036 n - A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254851.P2427681359053721512

/-!
# A254852: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254852, there is no canonical definition to state claims against.
-/

/-! ## A254852.P12389956804188527515

`A254854(A374007(n+1))`
-/

namespace A254852.P12389956804188527515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A374007 (n + 1)).toNat

end

end A254852.P12389956804188527515

/-!
# A254853: Number of (n+2) X (7+2) 0..1 arrays with no 3 X 3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254853, there is no canonical definition to state claims against.
-/

/-! ## A254853.P7739441445993026721

`A254854(A374008(n+1))`
-/

namespace A254853.P7739441445993026721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254854 (A374008 (n + 1)).toNat

end

end A254853.P7739441445993026721

/-!
# A254854: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum two.

The programs for A254854, there is no canonical definition to state claims against.
-/

/-! ## A254854.P5538589320232231563

`A256735(n+1)/A223569(n+1)`
-/

namespace A254854.P5538589320232231563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256735 (n + 1) : ℚ) / (A223569 (n + 1) : ℚ)

end

end A254854.P5538589320232231563

/-! ## A254854.P14484635206939931342

`A004525(A256735(n+1)/A317517(n+1))`
-/

namespace A254854.P14484635206939931342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A256735 (n + 1) : ℚ) / (A317517 (n + 1) : ℚ))).toNat

end

end A254854.P14484635206939931342

/-! ## A254854.P8658185184120653060

`A006370(A256735(n+1)/A317517(n+1))`
-/

namespace A254854.P8658185184120653060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway ((A256735 (n + 1) : ℚ) / (A317517 (n + 1) : ℚ))).toNat

end

end A254854.P8658185184120653060

/-!
# A254855: Indices of octagonal numbers (A000567) that are also centered heptagonal numbers (A069099).

The programs for A254855, the canonical program `A254855.P130966434956701477` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254855 has offset 1).

The definition of A254855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254855.P8143052442761879315

`ogf((1+x-12x^2+x^3+x^4)/(1-x-26x^2+26x^3+x^4-x^5))`
-/

namespace A254855.P8143052442761879315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -12, 1, 1] [1, -1, -26, 26, 1, -1] n

end

end A254855.P8143052442761879315

namespace A254855

/-- `ogf((1+x-12x^2+x^3+x^4)/(1-x-26x^2+26x^3+x^4-x^5))` -/
def P8143052442761879315.Spec : Prop :=
  ∀ n, P8143052442761879315.a n = A254855 (n + 1)

end A254855

/-! ## A254855.P130966434956701477

`a(n-1)+26*a(n-2)-26*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=16, a(3)=43, a(4)=407`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254855

/-- `a(n-1)+26*a(n-2)-26*a(n-3)-a(n-4)+a(n-5)` -/
def P130966434956701477.Spec : Prop :=
  ∀ n, P130966434956701477.a n = A254855 (n + 1)

theorem P130966434956701477.correct : P130966434956701477.Spec := by
  intro n
  simp only [A254855, Nat.add_sub_cancel]

end A254855

/-! ## A254855.P5660496387783673524

`ceil(sqrt(A254857(1+n)/3))`
-/

namespace A254855.P5660496387783673524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254857 (1 + n) : ℚ) / 3 : ℝ)⌉

end

end A254855.P5660496387783673524

namespace A254855

/-- `ceil(sqrt(A254857(1+n)/3))` -/
def P5660496387783673524.Spec : Prop :=
  ∀ n, P5660496387783673524.a n = A254855 (n + 1)

end A254855

/-! ## A254855.P3948034740867781089

`round(sqrt(A254857(n+1)/3))`
-/

namespace A254855.P3948034740867781089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A254857 (n + 1) : ℚ) / 3 : ℝ))

end

end A254855.P3948034740867781089

namespace A254855

/-- `round(sqrt(A254857(n+1)/3))` -/
def P3948034740867781089.Spec : Prop :=
  ∀ n, P3948034740867781089.a n = A254855 (n + 1)

end A254855

/-!
# A254856: Indices of centered heptagonal numbers (A069099) that are also octagonal numbers (A000567).

The programs for A254856, the canonical program `A254856.P5767791075859299695` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254856 has offset 1).

The definition of A254856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254856.P394846421479522284

`ogf((1+x-13x^2-x^3)/(1-x-26x^2+26x^3+x^4-x^5))`
-/

namespace A254856.P394846421479522284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -13, -1] [1, -1, -26, 26, 1, -1] n

end

end A254856.P394846421479522284

namespace A254856

/-- `ogf((1+x-13x^2-x^3)/(1-x-26x^2+26x^3+x^4-x^5))` -/
def P394846421479522284.Spec : Prop :=
  ∀ n, P394846421479522284.a n = A254856 (n + 1)

end A254856

/-! ## A254856.P5767791075859299695

`a(n-1)+26*a(n-2)-26*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=15, a(3)=40, a(4)=377`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254856

/-- `a(n-1)+26*a(n-2)-26*a(n-3)-a(n-4)+a(n-5)` -/
def P5767791075859299695.Spec : Prop :=
  ∀ n, P5767791075859299695.a n = A254856 (n + 1)

theorem P5767791075859299695.correct : P5767791075859299695.Spec := by
  intro n
  simp only [A254856, Nat.add_sub_cancel]

end A254856

/-! ## A254856.P4897373965654273763

`∑[A253458(n)/a(n-1)]` with `a(0)=1`
-/

namespace A254856.P4897373965654273763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A253458 n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254856.P4897373965654273763

namespace A254856

/-- `∑[A253458(n)/a(n-1)]` -/
def P4897373965654273763.Spec : Prop :=
  ∀ n, P4897373965654273763.a n = (A254856 (n + 1) : ℚ)

end A254856

/-! ## A254856.P4693417729360677505

`∑[gcd(A253457(n+1), A253458(n+1))]`
-/

namespace A254856.P4693417729360677505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253457 (n + 1)) (A253458 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254856.P4693417729360677505

namespace A254856

/-- `∑[gcd(A253457(n+1), A253458(n+1))]` -/
def P4693417729360677505.Spec : Prop :=
  ∀ n, (P4693417729360677505.a n : ℤ) = A254856 (n + 1)

end A254856

/-!
# A254857: Octagonal numbers (A000567) that are also centered heptagonal numbers (A069099).

The programs for A254857, there is no canonical definition to state claims against.
-/

/-! ## A254857.P6477218286245769768

`A069099(A254856(n+1))`
-/

namespace A254857.P6477218286245769768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (A254856 (n + 1)).toNat

end

end A254857.P6477218286245769768

/-! ## A254857.P10216578414876493572

`A209294(A254856(n+1))-A305027(n)`
-/

namespace A254857.P10216578414876493572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (A254856 (n + 1)).toNat - A305027 n

end

end A254857.P10216578414876493572

/-!
# A254858: Iterated partial sums of prime numbers, square array read by diagonals.

The programs for A254858, there is no canonical definition to state claims against.
-/

/-! ## A254858.P7289548476574573577

`A125179((n²+n)%A080036(n)+1)`
-/

namespace A254858.P7289548476574573577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125179 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n) + 1).toNat

end

end A254858.P7289548476574573577

/-! ## A254858.P15544764471435312263

`A125179(∑[char[∑[n]]]²-n)`
-/

namespace A254858.P15544764471435312263
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125179 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A254858.P15544764471435312263

/-! ## A254858.P10688989349681876091

`A263042(A164844(n))`
-/

namespace A254858.P10688989349681876091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263042 (A164844 n).toNat

end

end A254858.P10688989349681876091

/-! ## A254858.P898122792357211862

`A206916(A347580(n+1))`
-/

namespace A254858.P898122792357211862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A347580 (n + 1)).toNat

end

end A254858.P898122792357211862

/-! ## A254858.P512261054670321572

`A087793(A060538(n+1))`
-/

namespace A254858.P512261054670321572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087793 (A060538 (n + 1)).toNat

end

end A254858.P512261054670321572

/-!
# A254859: Numbers that are both a sum and a product of two or more consecutive primes.

The programs for A254859, there is no canonical definition to state claims against.
-/

/-! ## A254859.P6727559748707493308

`∩[A050936(n+1), A097889(n+1)]`
-/

namespace A254859.P6727559748707493308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254859.P6727559748707493308

/-! ## A254859.P2738456684814821425

`∩[A034707(n+1), A097889(n+1)]`
-/

namespace A254859.P2738456684814821425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254859.P2738456684814821425

/-! ## A254859.P7516234257957432503

`A097889(lt[1, A113106(3*n+2)])`
-/

namespace A254859.P7516234257957432503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113106 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A254859.P7516234257957432503

/-!
# A254860: Sorted integers m = (prime(n+1)^2 - prime(n)^2)/24, where prime(n) is A000040(n), with duplicates removed.

The programs for A254860, there is no canonical definition to state claims against.
-/

/-! ## A254860.P11875446268916147723

`eq[1, char[A075888(n+3)]]`
-/

namespace A254860.P11875446268916147723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254860.P11875446268916147723

/-!
# A254861: Number of primes less than 10^n that do not contain the string n.

The programs for A254861, there is no canonical definition to state claims against.
-/

/-! ## A254861.P1279906092537194361

`xor(2, A003963(A091713(n+3)))`
-/

namespace A254861.P1279906092537194361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003963 (A091713 (n + 3)).toNat)

end

end A254861.P1279906092537194361

/-!
# A254862: Least prime p such that p + nextprime(p) is a multiple of n.

The programs for A254862, there is no canonical definition to state claims against.
-/

/-! ## A254862.P674887882289700999

`A151799(ceil(A247245(1+n)/2))`
-/

namespace A254862.P674887882289700999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 ⌈(A247245 (1 + n) : ℚ) / 2⌉.toNat

end

end A254862.P674887882289700999

/-! ## A254862.P13488250210115687837

`A055377(A247245(1+n))`
-/

namespace A254862.P13488250210115687837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A247245 (1 + n)).toNat

end

end A254862.P13488250210115687837

/-! ## A254862.P8246509310087356639

`A076272(A247245(1+n)-2)`
-/

namespace A254862.P8246509310087356639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A247245 (1 + n) - 2).toNat

end

end A254862.P8246509310087356639

/-! ## A254862.P7660963538405454493

`∏{d}[A076272(A247245(n+1)), A064989(#)]`
-/

namespace A254862.P7660963538405454493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A247245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A064989 d

end

end A254862.P7660963538405454493

/-! ## A254862.P10667003298289400270

`∑{p}[A076272(A247245(n+1)), A151799(#)]`
-/

namespace A254862.P10667003298289400270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A247245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151799 p

end

end A254862.P10667003298289400270

/-! ## A254862.P2472501150731646687

`A064989(A254863(n+1))`
-/

namespace A254862.P2472501150731646687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A254863 (n + 1)).toNat

end

end A254862.P2472501150731646687

/-! ## A254862.P16412832786321130564

`A247245(n+1)-A254863(n+1)`
-/

namespace A254862.P16412832786321130564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (n + 1) - A254863 (n + 1)

end

end A254862.P16412832786321130564

/-!
# A254863: Least prime p such that p + previousprime(p) is a multiple of n.

The programs for A254863, there is no canonical definition to state claims against.
-/

/-! ## A254863.P3222921518369429985

`A003961(A254862(1+n))`
-/

namespace A254863.P3222921518369429985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A254862 (1 + n)).toNat

end

end A254863.P3222921518369429985

/-! ## A254863.P12842560624736655500

`A076272(A247245(1+n))`
-/

namespace A254863.P12842560624736655500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A247245 (1 + n)).toNat

end

end A254863.P12842560624736655500

/-! ## A254863.P12854924915419991546

`A151800(A254862(n+1))`
-/

namespace A254863.P12854924915419991546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A254862 (n + 1)).toNat

end

end A254863.P12854924915419991546

/-! ## A254863.P8365890986057198242

`A007918(A254862(1+n)+1)`
-/

namespace A254863.P8365890986057198242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A254862 (1 + n) + 1).toNat

end

end A254863.P8365890986057198242

/-! ## A254863.P17881104002540569937

`A159477(A254862(n+1)+1)`
-/

namespace A254863.P17881104002540569937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A254862 (n + 1) + 1).toNat

end

end A254863.P17881104002540569937

/-! ## A254863.P8946237404389029063

`∑{d}[A254862(1+n), A003972(#)]`
-/

namespace A254863.P8946237404389029063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A254863.P8946237404389029063

/-! ## A254863.P10010892845138685233

`A247245(n+1)-A254862(n+1)`
-/

namespace A254863.P10010892845138685233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247245 (n + 1) - A254862 (n + 1)

end

end A254863.P10010892845138685233

/-!
# A254864: Triangular table T(n,k) = n! / (n-floor(n/3^k))!, read by rows T(1,1), T(2,1), T(2,2), T(3,1), T(3,2), T(3,3), ...

The programs for A254864, the canonical program `A254864.P2548427172992576708` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254864 has offset 1).

The definition of A254864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254864.P2548427172992576708

`(row(n)+1)!/(row(n)+1-floor((row(n)+1)/3^(col(n)+1)))!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254864

/-- `(row(n)+1)!/(row(n)+1-floor((row(n)+1)/3^(col(n)+1)))!` -/
def P2548427172992576708.Spec : Prop :=
  ∀ n, P2548427172992576708.a n = (A254864 (n + 1) : ℚ)

end A254864

/-! ## A254864.P14480551118247232149

`gcd(A093889(n+1), A214630(A198954(n)))`
-/

namespace A254864.P14480551118247232149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093889 (n + 1)) (A214630 (A198954 n).toNat)

end

end A254864.P14480551118247232149

namespace A254864

/-- `gcd(A093889(n+1), A214630(A198954(n)))` -/
def P14480551118247232149.Spec : Prop :=
  ∀ n, (P14480551118247232149.a n : ℤ) = A254864 (n + 1)

end A254864

/-!
# A254865: a(n) = Product_{k = 1+n-floor(n/3) .. n} k.

The programs for A254865, the canonical program `A254865.P3531162046903471843` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254865 has offset 1).

The definition of A254865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254865.P3531162046903471843

`(n+1)!/(n+1-floor((n+1)/3))!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254865

/-- `(n+1)!/(n+1-floor((n+1)/3))!` -/
def P3531162046903471843.Spec : Prop :=
  ∀ n, P3531162046903471843.a n = (A254865 (n + 1) : ℚ)

end A254865

/-! ## A254865.P3545829812529603937

`A254864(1+∑[n])`
-/

namespace A254865.P3545829812529603937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254864 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254865.P3545829812529603937

namespace A254865

/-- `A254864(1+∑[n])` -/
def P3545829812529603937.Spec : Prop :=
  ∀ n, P3545829812529603937.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P10766926795444542699

`A374647(n+2)/(n+2)`
-/

namespace A254865.P10766926795444542699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374647 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A254865.P10766926795444542699

namespace A254865

/-- `A374647(n+2)/(n+2)` -/
def P10766926795444542699.Spec : Prop :=
  ∀ n, P10766926795444542699.a n = (A254865 (n + 1) : ℚ)

end A254865

/-! ## A254865.P8581920258331418061

`record[A254864(n+1)+A002024(n+1)]-(n+1)`
-/

namespace A254865.P8581920258331418061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254864 (n + 1) + A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A254865.P8581920258331418061

namespace A254865

/-- `record[A254864(n+1)+A002024(n+1)]-(n+1)` -/
def P8581920258331418061.Spec : Prop :=
  ∀ n, P8581920258331418061.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P4957855313449009868

`A355996(A389143(n+1))`
-/

namespace A254865.P4957855313449009868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355996 (A389143 (n + 1)).toNat

end

end A254865.P4957855313449009868

namespace A254865

/-- `A355996(A389143(n+1))` -/
def P4957855313449009868.Spec : Prop :=
  ∀ n, P4957855313449009868.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P2053759722502585522

`A265609(A024401(n+2))`
-/

namespace A254865.P2053759722502585522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A024401 (n + 2)).toNat

end

end A254865.P2053759722502585522

namespace A254865

/-- `A265609(A024401(n+2))` -/
def P2053759722502585522.Spec : Prop :=
  ∀ n, P2053759722502585522.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P17160697410298735493

`A181511(A171452(n+1)+1)`
-/

namespace A254865.P17160697410298735493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A171452 (n + 1) + 1).toNat

end

end A254865.P17160697410298735493

namespace A254865

/-- `A181511(A171452(n+1)+1)` -/
def P17160697410298735493.Spec : Prop :=
  ∀ n, P17160697410298735493.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P2691406567292257734

`A008279(A034856(n+1)-A004396(n))`
-/

namespace A254865.P2691406567292257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A034856 (n + 1) - A004396 n).toNat

end

end A254865.P2691406567292257734

namespace A254865

/-- `A008279(A034856(n+1)-A004396(n))` -/
def P2691406567292257734.Spec : Prop :=
  ∀ n, P2691406567292257734.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P17786944986826745809

`A173333(A389143(n+1))`
-/

namespace A254865.P17786944986826745809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (A389143 (n + 1)).toNat

end

end A254865.P17786944986826745809

namespace A254865

/-- `A173333(A389143(n+1))` -/
def P17786944986826745809.Spec : Prop :=
  ∀ n, P17786944986826745809.a n = A254865 (n + 1)

end A254865

/-! ## A254865.P7700266060452666956

`A094587(A027916(n+2))`
-/

namespace A254865.P7700266060452666956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A027916 (n + 2)).toNat

end

end A254865.P7700266060452666956

namespace A254865

/-- `A094587(A027916(n+2))` -/
def P7700266060452666956.Spec : Prop :=
  ∀ n, P7700266060452666956.a n = A254865 (n + 1)

end A254865

/-!
# A254866: a(n) = (n!!)^n.

The programs for A254866, there is no canonical definition to state claims against.
-/

/-! ## A254866.P14671035278795075594

`∏[n/a(n-1)]^n` with `a(0)=1`
-/

namespace A254866.P14671035278795075594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A254866.P14671035278795075594

/-! ## A254866.P2029352935115933594

`A006882(n)^n`
-/

namespace A254866.P2029352935115933594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n ^ n

end

end A254866.P2029352935115933594

/-! ## A254866.P17547647905869312280

`sqrt(A184877(n))^n`
-/

namespace A254866.P17547647905869312280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A184877 n : ℝ) ^ n

end

end A254866.P17547647905869312280

/-! ## A254866.P11507435649149734077

`A230698(∑[n])^n`
-/

namespace A254866.P11507435649149734077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A254866.P11507435649149734077

/-! ## A254866.P10226112409466051282

`(A128882(n)+1)^n`
-/

namespace A254866.P10226112409466051282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128882 n + 1) ^ n

end

end A254866.P10226112409466051282

/-!
# A254867: Numbers n such that prime(n) + n and prime(n) + n^2 are prime.

The programs for A254867, there is no canonical definition to state claims against.
-/

/-! ## A254867.P3259155102504803266

`∩[A064402(n+1), A064711(n+1)]`
-/

namespace A254867.P3259155102504803266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254867.P3259155102504803266

/-! ## A254867.P3640556177038080553

`∩[A064711(n+1), A000720(A061067(n))]`
-/

namespace A254867.P3640556177038080553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061067 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254867.P3640556177038080553

/-! ## A254867.P2528670354173144117

`A000720(∩[A253971(n+1), A061067(n)])`
-/

namespace A254867.P2528670354173144117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A254867.P2528670354173144117

/-! ## A254867.P2583867164460642007

`A061395(∩[A253971(n+1), A061067(n)])`
-/

namespace A254867.P2583867164460642007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A254867.P2583867164460642007

/-! ## A254867.P7925335875901045621

`∩[A064402(n+1), A000720(A253971(n+1))]`
-/

namespace A254867.P7925335875901045621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253971 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254867.P7925335875901045621

/-! ## A254867.P11347979489962732887

`∩[A061395(2*A253971(n+1)), A064402(n+1)]`
-/

namespace A254867.P11347979489962732887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A253971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254867.P11347979489962732887

/-!
# A254869: Seventh partial sums of cubes (A000578).

The programs for A254869, the canonical program `A254869.P9858285369318396997` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254869 has offset 1).

The definition of A254869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254869.P9858285369318396997

`∑[∑[∑[∑[∑[∑[∑[n+1]²]]]]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254869

/-- `∑[∑[∑[∑[∑[∑[∑[n+1]²]]]]]]` -/
def P9858285369318396997.Spec : Prop :=
  ∀ n, (P9858285369318396997.a n : ℤ) = A254869 (n + 1)

theorem P9858285369318396997.correct : P9858285369318396997.Spec := by
  intro n
  simp only [A254869, Nat.add_sub_cancel]

end A254869

/-! ## A254869.P9325558461301678888

`A254469(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254869.P9325558461301678888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254469 (n + 1) + a (n - 1)

end

end A254869.P9325558461301678888

namespace A254869

/-- `A254469(n+1)+a(n-1)` -/
def P9325558461301678888.Spec : Prop :=
  ∀ n, P9325558461301678888.a n = A254869 (n + 1)

end A254869

/-! ## A254869.P11128177110648197754

`∑[A101102(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A254869.P11128177110648197754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254869.P11128177110648197754

namespace A254869

/-- `∑[A101102(n+1)]+a(n-1)` -/
def P11128177110648197754.Spec : Prop :=
  ∀ n, P11128177110648197754.a n = A254869 (n + 1)

end A254869

/-!
# A254870: Seventh partial sums of fourth powers (A000583).

The programs for A254870, the canonical program `A254870.P14382833223062659718` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254870 has offset 1).

The definition of A254870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254870.P14382833223062659718

`∑[∑[∑[∑[∑[∑[∑[(n+1)^4]]]]]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254870

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)^4]]]]]]]` -/
def P14382833223062659718.Spec : Prop :=
  ∀ n, (P14382833223062659718.a n : ℤ) = A254870 (n + 1)

theorem P14382833223062659718.correct : P14382833223062659718.Spec := by
  intro n
  simp only [A254870, Nat.add_sub_cancel]

end A254870

/-! ## A254870.P4314629530859602133

`A254470(1+n)+a(n-1)` with `a(0)=1`
-/

namespace A254870.P4314629530859602133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254470 (1 + n) + a (n - 1)

end

end A254870.P4314629530859602133

namespace A254870

/-- `A254470(1+n)+a(n-1)` -/
def P4314629530859602133.Spec : Prop :=
  ∀ n, P4314629530859602133.a n = A254870 (n + 1)

end A254870

/-!
# A254871: Seventh partial sums of fifth powers (A000584).

The programs for A254871, the canonical program `A254871.P1977074296441050603` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254871 has offset 1).

The definition of A254871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254871.P1977074296441050603

`∑[∑[∑[∑[∑[∑[∑[(n+1)^5]]]]]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254871

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)^5]]]]]]]` -/
def P1977074296441050603.Spec : Prop :=
  ∀ n, (P1977074296441050603.a n : ℤ) = A254871 (n + 1)

theorem P1977074296441050603.correct : P1977074296441050603.Spec := by
  intro n
  simp only [A254871, Nat.add_sub_cancel]

end A254871

/-! ## A254871.P6739289628635869310

`A254471(1+n)+a(n-1)` with `a(0)=1`
-/

namespace A254871.P6739289628635869310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254471 (1 + n) + a (n - 1)

end

end A254871.P6739289628635869310

namespace A254871

/-- `A254471(1+n)+a(n-1)` -/
def P6739289628635869310.Spec : Prop :=
  ∀ n, P6739289628635869310.a n = A254871 (n + 1)

end A254871

/-! ## A254871.P854664383845880597

`∑[A254471(n+1)+1]-(n+1)`
-/

namespace A254871.P854664383845880597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254471 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A254871.P854664383845880597

namespace A254871

/-- `∑[A254471(n+1)+1]-(n+1)` -/
def P854664383845880597.Spec : Prop :=
  ∀ n, P854664383845880597.a n = A254871 (n + 1)

end A254871

/-! ## A254871.P6824916401957001463

`∑[A254682(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A254871.P6824916401957001463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254871.P6824916401957001463

namespace A254871

/-- `∑[A254682(n+1)]+a(n-1)` -/
def P6824916401957001463.Spec : Prop :=
  ∀ n, P6824916401957001463.a n = A254871 (n + 1)

end A254871

/-!
# A254872: Seventh partial sums of sixth powers (A001014).

The programs for A254872, the canonical program `A254872.P1160853657017007820` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254872 has offset 1).

The definition of A254872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254872.P1160853657017007820

`∑[∑[∑[∑[∑[∑[∑[(n+1)^6]]]]]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254872

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)^6]]]]]]]` -/
def P1160853657017007820.Spec : Prop :=
  ∀ n, (P1160853657017007820.a n : ℤ) = A254872 (n + 1)

theorem P1160853657017007820.correct : P1160853657017007820.Spec := by
  intro n
  simp only [A254872, Nat.add_sub_cancel]

end A254872

/-! ## A254872.P7617545131048451995

`∑[A254683(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A254872.P7617545131048451995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254872.P7617545131048451995

namespace A254872

/-- `∑[A254683(n+1)]+a(n-1)` -/
def P7617545131048451995.Spec : Prop :=
  ∀ n, P7617545131048451995.a n = A254872 (n + 1)

end A254872

/-!
# A254874: a(n) = floor((10*n^3 + 63*n^2 + 126*n + 89) / 72).

The programs for A254874, the canonical program `A254874.P14370231304350051928` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254874 has offset 0).

The definition of A254874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((10*n^3+63*n²+126*n+89)/72)` (program `A254874.P14370231304350051928`, by `A254874.P14370231304350051928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254874.P591946647534581649

`ogf((1+2x+x^2+x^3)/(1-2x+x^3+x^4-2x^6+x^7))`
-/

namespace A254874.P591946647534581649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1] [1, -2, 0, 1, 1, 0, -2, 1] n

end

end A254874.P591946647534581649

namespace A254874

/-- `ogf((1+2x+x^2+x^3)/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P591946647534581649.Spec : Prop :=
  ∀ n, P591946647534581649.a n = A254874 n

end A254874

/-! ## A254874.P14370231304350051928

`floor((10*n^3+63*n²+126*n+89)/72)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254874

/-- `floor((10*n^3+63*n²+126*n+89)/72)` -/
def P14370231304350051928.Spec : Prop :=
  ∀ n, P14370231304350051928.a n = A254874 n

theorem P14370231304350051928.correct : P14370231304350051928.Spec := by
  intro n
  simp only [A254874]

end A254874

/-! ## A254874.P5377589175763364614

`∑[∑[∑[char[3*n]+n%2]]]`
-/

namespace A254874.P5377589175763364614
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P5377589175763364614

namespace A254874

/-- `∑[∑[∑[char[3*n]+n%2]]]` -/
def P5377589175763364614.Spec : Prop :=
  ∀ n, (P5377589175763364614.a n : ℤ) = A254874 n

end A254874

/-! ## A254874.P16538142849729442023

`∑[∑[n-floor((xor(1, n)-3)/6)]]`
-/

namespace A254874.P16538142849729442023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((Nat.xor 1 n : ℤ) - 3 : ℚ) / 6⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P16538142849729442023

namespace A254874

/-- `∑[∑[n-floor((xor(1, n)-3)/6)]]` -/
def P16538142849729442023.Spec : Prop :=
  ∀ n, P16538142849729442023.a n = A254874 n

end A254874

/-! ## A254874.P3778912008484698052

`∑[∑[a((n+1)%3)+a(n-2)]]` with `a(0)=1, a(1)=2`
-/

namespace A254874.P3778912008484698052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 ((n + 1) % 3) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P3778912008484698052

namespace A254874

/-- `∑[∑[a((n+1)%3)+a(n-2)]]` -/
def P3778912008484698052.Spec : Prop :=
  ∀ n, (P3778912008484698052.a n : ℤ) = A254874 n

end A254874

/-! ## A254874.P2455296825049537853

`∑[∑[A063212(n+1)]+n+1]/2`
-/

namespace A254874.P2455296825049537853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063212 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A254874.P2455296825049537853

namespace A254874

/-- `∑[∑[A063212(n+1)]+n+1]/2` -/
def P2455296825049537853.Spec : Prop :=
  ∀ n, P2455296825049537853.a n = (A254874 n : ℚ)

end A254874

/-! ## A254874.P1192664514100490399

`A055364(n+5)-∑[∑[floor((n/2)²)]]`
-/

namespace A254874.P1192664514100490399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055364 (n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P1192664514100490399

namespace A254874

/-- `A055364(n+5)-∑[∑[floor((n/2)²)]]` -/
def P1192664514100490399.Spec : Prop :=
  ∀ n, P1192664514100490399.a n = A254874 n

end A254874

/-! ## A254874.P1311129487988832038

`A070333(n)+A034198(n+1)`
-/

namespace A254874.P1311129487988832038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070333 n + A034198 (n + 1)

end

end A254874.P1311129487988832038

namespace A254874

/-- `A070333(n)+A034198(n+1)` -/
def P1311129487988832038.Spec : Prop :=
  ∀ n, P1311129487988832038.a n = A254874 n

end A254874

/-! ## A254874.P4050674932118477175

`A241526(n+1)-A002623(n)`
-/

namespace A254874.P4050674932118477175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241526 (n + 1) - A002623 n

end

end A254874.P4050674932118477175

namespace A254874

/-- `A241526(n+1)-A002623(n)` -/
def P4050674932118477175.Spec : Prop :=
  ∀ n, P4050674932118477175.a n = A254874 n

end A254874

/-! ## A254874.P2870682781854644636

`A014125(n)+∑[A002620(n+1)]`
-/

namespace A254874.P2870682781854644636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P2870682781854644636

namespace A254874

/-- `A014125(n)+∑[A002620(n+1)]` -/
def P2870682781854644636.Spec : Prop :=
  ∀ n, P2870682781854644636.a n = A254874 n

end A254874

/-! ## A254874.P17277611082297076932

`A258440(n+1)-A241526(n+1)`
-/

namespace A254874.P17277611082297076932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258440 (n + 1) - A241526 (n + 1)

end

end A254874.P17277611082297076932

namespace A254874

/-- `A258440(n+1)-A241526(n+1)` -/
def P17277611082297076932.Spec : Prop :=
  ∀ n, P17277611082297076932.a n = A254874 n

end A254874

/-! ## A254874.P3868395149597988289

`∑[A007980(n)+A001399(n)]-A001399(n)`
-/

namespace A254874.P3868395149597988289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 n

end

end A254874.P3868395149597988289

namespace A254874

/-- `∑[A007980(n)+A001399(n)]-A001399(n)` -/
def P3868395149597988289.Spec : Prop :=
  ∀ n, P3868395149597988289.a n = A254874 n

end A254874

/-! ## A254874.P17085502220364636713

`A000292(n+1)+A014125(n)-A002623(n)`
-/

namespace A254874.P17085502220364636713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A014125 n - A002623 n)

end

end A254874.P17085502220364636713

namespace A254874

/-- `A000292(n+1)+A014125(n)-A002623(n)` -/
def P17085502220364636713.Spec : Prop :=
  ∀ n, P17085502220364636713.a n = A254874 n

end A254874

/-! ## A254874.P9869085079319718381

`∑[∑[A090168(n+1)]]`
-/

namespace A254874.P9869085079319718381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P9869085079319718381

namespace A254874

/-- `∑[∑[A090168(n+1)]]` -/
def P9869085079319718381.Spec : Prop :=
  ∀ n, P9869085079319718381.a n = A254874 n

end A254874

/-! ## A254874.P6294967597192090285

`A000292(n+1)-A181120(n+1)`
-/

namespace A254874.P6294967597192090285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A181120 (n + 1)

end

end A254874.P6294967597192090285

namespace A254874

/-- `A000292(n+1)-A181120(n+1)` -/
def P6294967597192090285.Spec : Prop :=
  ∀ n, P6294967597192090285.a n = A254874 n

end A254874

/-! ## A254874.P8959539970412155858

`A241526(n+1)-A173196(n+2)`
-/

namespace A254874.P8959539970412155858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241526 (n + 1) - A173196 (n + 2)

end

end A254874.P8959539970412155858

namespace A254874

/-- `A241526(n+1)-A173196(n+2)` -/
def P8959539970412155858.Spec : Prop :=
  ∀ n, P8959539970412155858.a n = A254874 n

end A254874

/-! ## A254874.P5187956096115474710

`A005993(n+1)+A005993(n)-A000601(n+1)`
-/

namespace A254874.P5187956096115474710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (n + 1) + (A005993 n - A000601 (n + 1))

end

end A254874.P5187956096115474710

namespace A254874

/-- `A005993(n+1)+A005993(n)-A000601(n+1)` -/
def P5187956096115474710.Spec : Prop :=
  ∀ n, P5187956096115474710.a n = A254874 n

end A254874

/-! ## A254874.P13327082016616104914

`A181120(n)+∑[A001399(2*n+1)]`
-/

namespace A254874.P13327082016616104914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254874.P13327082016616104914

namespace A254874

/-- `A181120(n)+∑[A001399(2*n+1)]` -/
def P13327082016616104914.Spec : Prop :=
  ∀ n, P13327082016616104914.a n = A254874 n

end A254874

/-! ## A254874.P7074823635361699996

`A254877(Δ[n²])`
-/

namespace A254874.P7074823635361699996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A254874.P7074823635361699996

namespace A254874

/-- `A254877(Δ[n²])` -/
def P7074823635361699996.Spec : Prop :=
  ∀ n, P7074823635361699996.a n = A254874 n

end A254874

/-! ## A254874.P15205749065227334013

`A254875(n)+A005044(2*n+1)`
-/

namespace A254874.P15205749065227334013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254875 n + A005044 (2 * n + 1)

end

end A254874.P15205749065227334013

namespace A254874

/-- `A254875(n)+A005044(2*n+1)` -/
def P15205749065227334013.Spec : Prop :=
  ∀ n, P15205749065227334013.a n = A254874 n

end A254874

/-!
# A254875: a(n) = floor((10*n^3 + 57*n^2 + 102*n + 72) / 72).

The programs for A254875, the canonical program `A254875.P16957472290895508986` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254875 has offset 0).

The definition of A254875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((10*n^3+57*n²+102*n+72)/72)` (program `A254875.P16957472290895508986`, by `A254875.P16957472290895508986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254875.P12913989941261375297

`ogf((1+x+2x^2+x^3)/(1-2x+x^3+x^4-2x^6+x^7))`
-/

namespace A254875.P12913989941261375297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1] [1, -2, 0, 1, 1, 0, -2, 1] n

end

end A254875.P12913989941261375297

namespace A254875

/-- `ogf((1+x+2x^2+x^3)/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P12913989941261375297.Spec : Prop :=
  ∀ n, P12913989941261375297.a n = A254875 n

end A254875

/-! ## A254875.P16957472290895508986

`floor((10*n^3+57*n²+102*n+72)/72)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254875

/-- `floor((10*n^3+57*n²+102*n+72)/72)` -/
def P16957472290895508986.Spec : Prop :=
  ∀ n, P16957472290895508986.a n = A254875 n

theorem P16957472290895508986.correct : P16957472290895508986.Spec := by
  intro n
  simp only [A254875]

end A254875

/-! ## A254875.P18434726670041760253

`∑[floor(∑[a(n-2)+5]/3)]` with `a(0)=3, a(1)=4`
-/

namespace A254875.P18434726670041760253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 (n - 2) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P18434726670041760253

namespace A254875

/-- `∑[floor(∑[a(n-2)+5]/3)]` -/
def P18434726670041760253.Spec : Prop :=
  ∀ n, P18434726670041760253.a n = A254875 n

end A254875

/-! ## A254875.P886708457895749227

`∑[∑[floor(∑[5-a(n-1)]/3)]]` with `a(0)=4`
-/

namespace A254875.P886708457895749227
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f3 =>
  5 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P886708457895749227

namespace A254875

/-- `∑[∑[floor(∑[5-a(n-1)]/3)]]` -/
def P886708457895749227.Spec : Prop :=
  ∀ n, P886708457895749227.a n = A254875 n

end A254875

/-! ## A254875.P8145350216771541218

`∑[∑[∑[char[2*n]-(n+1)²%3+1]]]`
-/

namespace A254875.P8145350216771541218
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ) - (((n + 1) ^ 2 % 3 : ℕ) : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P8145350216771541218

namespace A254875

/-- `∑[∑[∑[char[2*n]-(n+1)²%3+1]]]` -/
def P8145350216771541218.Spec : Prop :=
  ∀ n, P8145350216771541218.a n = A254875 n

end A254875

/-! ## A254875.P14665662544053723436

`∑[∑[n+1-A008615(n+1)]]`
-/

namespace A254875.P14665662544053723436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P14665662544053723436

namespace A254875

/-- `∑[∑[n+1-A008615(n+1)]]` -/
def P14665662544053723436.Spec : Prop :=
  ∀ n, P14665662544053723436.a n = A254875 n

end A254875

/-! ## A254875.P15091004133160500606

`A173196(n+1)+A014126(n)`
-/

namespace A254875.P15091004133160500606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + A014126 n

end

end A254875.P15091004133160500606

namespace A254875

/-- `A173196(n+1)+A014126(n)` -/
def P15091004133160500606.Spec : Prop :=
  ∀ n, P15091004133160500606.a n = A254875 n

end A254875

/-! ## A254875.P2706107919158619137

`A092498(n)-A173196(n+1)`
-/

namespace A254875.P2706107919158619137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n - A173196 (n + 1)

end

end A254875.P2706107919158619137

namespace A254875

/-- `A092498(n)-A173196(n+1)` -/
def P2706107919158619137.Spec : Prop :=
  ∀ n, P2706107919158619137.a n = A254875 n

end A254875

/-! ## A254875.P4856063810285702314

`(A092498(n)+A014126(n))/2`
-/

namespace A254875.P4856063810285702314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092498 n + A014126 n : ℚ) / 2

end

end A254875.P4856063810285702314

namespace A254875

/-- `(A092498(n)+A014126(n))/2` -/
def P4856063810285702314.Spec : Prop :=
  ∀ n, P4856063810285702314.a n = (A254875 n : ℚ)

end A254875

/-! ## A254875.P14254558547868837743

`∑[A000969(n)-A002620(n+1)]`
-/

namespace A254875.P14254558547868837743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P14254558547868837743

namespace A254875

/-- `∑[A000969(n)-A002620(n+1)]` -/
def P14254558547868837743.Spec : Prop :=
  ∀ n, P14254558547868837743.a n = A254875 n

end A254875

/-! ## A254875.P11553026945256855033

`A092498(n)-∑[A002620(n+1)]`
-/

namespace A254875.P11553026945256855033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P11553026945256855033

namespace A254875

/-- `A092498(n)-∑[A002620(n+1)]` -/
def P11553026945256855033.Spec : Prop :=
  ∀ n, P11553026945256855033.a n = A254875 n

end A254875

/-! ## A254875.P8334929280805336839

`∑[A008619(n)+∑[A010761(n+1)]]`
-/

namespace A254875.P8334929280805336839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P8334929280805336839

namespace A254875

/-- `∑[A008619(n)+∑[A010761(n+1)]]` -/
def P8334929280805336839.Spec : Prop :=
  ∀ n, P8334929280805336839.a n = A254875 n

end A254875

/-! ## A254875.P14783152386023333285

`∑[∑[A110654(n+1)+A002264(n+1)]]`
-/

namespace A254875.P14783152386023333285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + A002264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P14783152386023333285

namespace A254875

/-- `∑[∑[A110654(n+1)+A002264(n+1)]]` -/
def P14783152386023333285.Spec : Prop :=
  ∀ n, P14783152386023333285.a n = A254875 n

end A254875

/-! ## A254875.P442659908555421532

`∑[A130518(n+1)+∑[A110654(n+1)]]`
-/

namespace A254875.P442659908555421532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P442659908555421532

namespace A254875

/-- `∑[A130518(n+1)+∑[A110654(n+1)]]` -/
def P442659908555421532.Spec : Prop :=
  ∀ n, P442659908555421532.a n = A254875 n

end A254875

/-! ## A254875.P15365947434117557608

`∑[∑[A004773(n+1)]-A002620(n+1)]`
-/

namespace A254875.P15365947434117557608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P15365947434117557608

namespace A254875

/-- `∑[∑[A004773(n+1)]-A002620(n+1)]` -/
def P15365947434117557608.Spec : Prop :=
  ∀ n, P15365947434117557608.a n = A254875 n

end A254875

/-! ## A254875.P15825048922258536629

`A000292(n+1)+A001399(n)-A000601(n)`
-/

namespace A254875.P15825048922258536629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A001399 n - A000601 n)

end

end A254875.P15825048922258536629

namespace A254875

/-- `A000292(n+1)+A001399(n)-A000601(n)` -/
def P15825048922258536629.Spec : Prop :=
  ∀ n, P15825048922258536629.a n = A254875 n

end A254875

/-! ## A254875.P16477398139896889102

`∑[∑[A063197(n+2)]]`
-/

namespace A254875.P16477398139896889102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063197 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P16477398139896889102

namespace A254875

/-- `∑[∑[A063197(n+2)]]` -/
def P16477398139896889102.Spec : Prop :=
  ∀ n, P16477398139896889102.a n = A254875 n

end A254875

/-! ## A254875.P9283241655560406053

`∑[A001399(n)+A000212(n+1)]`
-/

namespace A254875.P9283241655560406053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + A000212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P9283241655560406053

namespace A254875

/-- `∑[A001399(n)+A000212(n+1)]` -/
def P9283241655560406053.Spec : Prop :=
  ∀ n, P9283241655560406053.a n = A254875 n

end A254875

/-! ## A254875.P6930987535607869366

`∑[A076921(n+2)+∑[A002264(n+1)]]`
-/

namespace A254875.P6930987535607869366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 2) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P6930987535607869366

namespace A254875

/-- `∑[A076921(n+2)+∑[A002264(n+1)]]` -/
def P6930987535607869366.Spec : Prop :=
  ∀ n, P6930987535607869366.a n = A254875 n

end A254875

/-! ## A254875.P1136114230312489868

`∑[∑[A004773(n+1)-A123108(n+1)]]`
-/

namespace A254875.P1136114230312489868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) - A123108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254875.P1136114230312489868

namespace A254875

/-- `∑[∑[A004773(n+1)-A123108(n+1)]]` -/
def P1136114230312489868.Spec : Prop :=
  ∀ n, P1136114230312489868.a n = A254875 n

end A254875

/-!
# A254877: Expansion of (1 - x^5) / ((1 - x) * (1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

The programs for A254877, the canonical program `A254877.P94465975331227574` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254877 has offset 0).

The definition of A254877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^5)/(1-x-2x^2+x^3+x^4+2x^5-2x^7-x^8-x^9+2x^10+x^11-x^12))` (program `A254877.P94465975331227574`, by `A254877.P94465975331227574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254877.P94465975331227574

`ogf((1-x^5)/(1-x-2x^2+x^3+x^4+2x^5-2x^7-x^8-x^9+2x^10+x^11-x^12))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254877

/-- `ogf((1-x^5)/(1-x-2x^2+x^3+x^4+2x^5-2x^7-x^8-x^9+2x^10+x^11-x^12))` -/
def P94465975331227574.Spec : Prop :=
  ∀ n, P94465975331227574.a n = A254877 n

theorem P94465975331227574.correct : P94465975331227574.Spec := by
  intro n
  simp only [A254877]

end A254877

/-! ## A254877.P4893868847996213209

`∑[A069905(A026741(n+3))]`
-/

namespace A254877.P4893868847996213209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A026741 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P4893868847996213209

namespace A254877

/-- `∑[A069905(A026741(n+3))]` -/
def P4893868847996213209.Spec : Prop :=
  ∀ n, P4893868847996213209.a n = A254877 n

end A254877

/-! ## A254877.P9221259965652260634

`A254594(n)+A008763(n+3)`
-/

namespace A254877.P9221259965652260634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n + A008763 (n + 3)

end

end A254877.P9221259965652260634

namespace A254877

/-- `A254594(n)+A008763(n+3)` -/
def P9221259965652260634.Spec : Prop :=
  ∀ n, P9221259965652260634.a n = A254877 n

end A254877

/-! ## A254877.P13837202883684612965

`∑[A211540((n+1)%A160413(n+3)+4)]`
-/

namespace A254877.P13837202883684612965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (Int.tmod (n + 1 : ℤ) (A160413 (n + 3)) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P13837202883684612965

namespace A254877

/-- `∑[A211540((n+1)%A160413(n+3)+4)]` -/
def P13837202883684612965.Spec : Prop :=
  ∀ n, P13837202883684612965.a n = A254877 n

end A254877

/-! ## A254877.P9355852558741782744

`∑[A266755(n*gcd(2, n))]`
-/

namespace A254877.P9355852558741782744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P9355852558741782744

namespace A254877

/-- `∑[A266755(n*gcd(2, n))]` -/
def P9355852558741782744.Spec : Prop :=
  ∀ n, P9355852558741782744.a n = A254877 n

end A254877

/-! ## A254877.P17689623808302089381

`∑[A266755(n*((n+1)%2+1))]`
-/

namespace A254877.P17689623808302089381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n * ((n + 1) % 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P17689623808302089381

namespace A254877

/-- `∑[A266755(n*((n+1)%2+1))]` -/
def P17689623808302089381.Spec : Prop :=
  ∀ n, P17689623808302089381.a n = A254877 n

end A254877

/-! ## A254877.P4483039527333293365

`∑[A005044(A022998(n)+3)]`
-/

namespace A254877.P4483039527333293365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A022998 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P4483039527333293365

namespace A254877

/-- `∑[A005044(A022998(n)+3)]` -/
def P4483039527333293365.Spec : Prop :=
  ∀ n, P4483039527333293365.a n = A254877 n

end A254877

/-! ## A254877.P5217729559214940315

`∑[A266755(A237420(n)+n)]`
-/

namespace A254877.P5217729559214940315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A237420 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254877.P5217729559214940315

namespace A254877

/-- `∑[A266755(A237420(n)+n)]` -/
def P5217729559214940315.Spec : Prop :=
  ∀ n, P5217729559214940315.a n = A254877 n

end A254877

/-! ## A254877.P13068265457830046052

`A029042(A008851(n+1))`
-/

namespace A254877.P13068265457830046052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (A008851 (n + 1)).toNat

end

end A254877.P13068265457830046052

namespace A254877

/-- `A029042(A008851(n+1))` -/
def P13068265457830046052.Spec : Prop :=
  ∀ n, P13068265457830046052.a n = A254877 n

end A254877

/-! ## A254877.P14076620526319985875

`A029329(A090773(n+1))`
-/

namespace A254877.P14076620526319985875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 (A090773 (n + 1)).toNat

end

end A254877.P14076620526319985875

namespace A254877

/-- `A029329(A090773(n+1))` -/
def P14076620526319985875.Spec : Prop :=
  ∀ n, P14076620526319985875.a n = A254877 n

end A254877

/-!
# A254878: Let 's' denote the sum of the deficient numbers in the aliquot parts of x. Sequence lists numbers x such that sigma(s) is equal to x.

The programs for A254878, there is no canonical definition to state claims against.
-/

/-! ## A254878.P13633501556316040819

`A005877(comp[Δ[lcm(3, n)]]²²)`
-/

namespace A254878.P13633501556316040819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005877 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2) ^ 2)

end

end A254878.P13633501556316040819

/-!
# A254879: Let us denote 's' the sum of the deficient numbers in the aliquot parts of x. Sequence lists numbers x such that sigma(s)-s is equal to x.

The programs for A254879, there is no canonical definition to state claims against.
-/

/-! ## A254879.P16929600547113839251

`A206708(n+1)%A143164(A045770(n+1))`
-/

namespace A254879.P16929600547113839251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206708 (n + 1)) (A143164 (A045770 (n + 1)).toNat)

end

end A254879.P16929600547113839251

/-! ## A254879.P17963758141895190763

`A347770(n+1)%A004273(record[A016731(2*(n+1))])`
-/

namespace A254879.P17963758141895190763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016731 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347770 (n + 1)) (A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A254879.P17963758141895190763

/-!
# A254881: Triangle read by rows, T(n,k) = sum(j=0..k-1, S(n+1,j+1)*S(n,k-j)) where S denotes the Stirling cycle numbers A132393, T(0,0)=1, n>=0, 0<=k<=2n.

The programs for A254881, there is no canonical definition to state claims against.
-/

/-! ## A254881.P7834474215590865264

`A246117(comp[round(sqrt(n+1))²+n]+1)`
-/

namespace A254881.P7834474215590865264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A254881.P7834474215590865264

/-!
# A254882: Triangle read by rows, T(n,k) = Sum_{j=0..k-1} S(n,j+1)*S(n,k-j) where S denotes the Stirling cycle numbers A132393, T(0,0)=1, n>=0, 0<=k<=2n-1.

The programs for A254882, there is no canonical definition to state claims against.
-/

/-! ## A254882.P17558039410083000677

`A246117(comp[A161983(n)])`
-/

namespace A254882.P17558039410083000677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161983 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A254882.P17558039410083000677

/-!
# A254883: Triangle read by rows, T(n,k) = sum(j=0..2*(n-k), A254882(n-k,j)*k^j /(n-k)!), n>=0, 0<=k<=n.

The programs for A254883, there is no canonical definition to state claims against.
-/

/-! ## A254883.P12100205108535430395

`A271703(n)/A318274(n)`
-/

namespace A254883.P12100205108535430395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (A318274 n : ℚ)

end

end A254883.P12100205108535430395

/-! ## A254883.P3591521558932436483

`abs(A111596(n)/A318274(n))`
-/

namespace A254883.P3591521558932436483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A111596 n : ℚ) / (A318274 n : ℚ)|

end

end A254883.P3591521558932436483

/-! ## A254883.P11160256093162189959

`ceil(A271703(n)/A003056(n+1))`
-/

namespace A254883.P11160256093162189959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A271703 n : ℚ) / (A003056 (n + 1) : ℚ)⌉

end

end A254883.P11160256093162189959

/-! ## A254883.P2301309265277632782

`ceil(A271703(n)/A117707(n+1))`
-/

namespace A254883.P2301309265277632782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A271703 n : ℚ) / (A117707 (n + 1) : ℚ)⌉

end

end A254883.P2301309265277632782

/-! ## A254883.P16191256084137792653

`A094587(n)*A097805(n)/A318274(n)`
-/

namespace A254883.P16191256084137792653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n * A097805 n : ℚ) / (A318274 n : ℚ)

end

end A254883.P16191256084137792653

/-! ## A254883.P2046306588342165134

`A097807(n)*A111596(n)/A318274(n)`
-/

namespace A254883.P2046306588342165134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097807 n * A111596 n : ℚ) / (A318274 n : ℚ)

end

end A254883.P2046306588342165134

/-! ## A254883.P16375761474600169273

`gcd(A000038(n), A111596(n))/A318274(n)`
-/

namespace A254883.P16375761474600169273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A111596 n) : ℚ) / (A318274 n : ℚ)

end

end A254883.P16375761474600169273

/-! ## A254883.P8678482897798725144

`A271703(n)/gcd(A003056(n), A271703(n))`
-/

namespace A254883.P8678482897798725144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271703 n : ℚ) / (Int.gcd (A003056 n) (A271703 n) : ℚ)

end

end A254883.P8678482897798725144

/-! ## A254883.P16466699009411620908

`lcm(A007318(n), A111596(n))/A318274(n)`
-/

namespace A254883.P16466699009411620908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A111596 n) : ℚ) / (A318274 n : ℚ)

end

end A254883.P16466699009411620908

/-!
# A254884: a(n) = Fibonacci(2*n) + ((-1)^n-1)*Fibonacci(n).

The programs for A254884, the canonical program `A254884.P9789992173439780441` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254884 has offset 0).

The definition of A254884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)+((-1)^n-1)*A000045(n)` (program `A254884.P9789992173439780441`, by `A254884.P9789992173439780441.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254884.P9789992173439780441

`A000045(2*n)+((-1)^n-1)*A000045(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A254884

/-- `A000045(2*n)+((-1)^n-1)*A000045(n)` -/
def P9789992173439780441.Spec : Prop :=
  ∀ n, P9789992173439780441.a n = A254884 n

theorem P9789992173439780441.correct : P9789992173439780441.Spec := by
  intro n
  simp only [A254884]

end A254884

/-! ## A254884.P7929820075077301313

`ogf((-x+6x^2-3x^3-6x^4+3x^5)/(1-3x-2x^2+9x^3-2x^4-3x^5+x^6))`
-/

namespace A254884.P7929820075077301313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6, -3, -6, 3] [1, -3, -2, 9, -2, -3, 1] n

end

end A254884.P7929820075077301313

namespace A254884

/-- `ogf((-x+6x^2-3x^3-6x^4+3x^5)/(1-3x-2x^2+9x^3-2x^4-3x^5+x^6))` -/
def P7929820075077301313.Spec : Prop :=
  ∀ n, P7929820075077301313.a n = A254884 n

end A254884

/-! ## A254884.P9225383241413135283

`(A099925(n)-1)*A000045(n)`
-/

namespace A254884.P9225383241413135283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099925 n - 1) * A000045 n

end

end A254884.P9225383241413135283

namespace A254884

/-- `(A099925(n)-1)*A000045(n)` -/
def P9225383241413135283.Spec : Prop :=
  ∀ n, P9225383241413135283.a n = A254884 n

end A254884

/-! ## A254884.P11407186394386843655

`2*A049601(n)-A000045(n)`
-/

namespace A254884.P11407186394386843655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049601 n - A000045 n

end

end A254884.P11407186394386843655

namespace A254884

/-- `2*A049601(n)-A000045(n)` -/
def P11407186394386843655.Spec : Prop :=
  ∀ n, P11407186394386843655.a n = A254884 n

end A254884

/-! ## A254884.P9206130601340514313

`(A099925(n)-1)*sqrt(A007598(n))`
-/

namespace A254884.P9206130601340514313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A099925 n - 1 : ℝ) * Real.sqrt (A007598 n : ℝ)

end

end A254884.P9206130601340514313

namespace A254884

/-- `(A099925(n)-1)*sqrt(A007598(n))` -/
def P9206130601340514313.Spec : Prop :=
  ∀ n, P9206130601340514313.a n = (A254884 n : ℝ)

end A254884

/-! ## A254884.P5692730712485342654

`(A000032(n)-2*and(1, n))*A000045(n)`
-/

namespace A254884.P5692730712485342654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - (2 * Nat.land 1 n : ℤ)) * A000045 n

end

end A254884.P5692730712485342654

namespace A254884

/-- `(A000032(n)-2*and(1, n))*A000045(n)` -/
def P5692730712485342654.Spec : Prop :=
  ∀ n, P5692730712485342654.a n = A254884 n

end A254884

/-! ## A254884.P7992232808792393553

`A005013(n+1)+A001906(n)-A000204(n+1)`
-/

namespace A254884.P7992232808792393553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (n + 1) + (A001906 n - A000204 (n + 1))

end

end A254884.P7992232808792393553

namespace A254884

/-- `A005013(n+1)+A001906(n)-A000204(n+1)` -/
def P7992232808792393553.Spec : Prop :=
  ∀ n, P7992232808792393553.a n = A254884 n

end A254884

/-! ## A254884.P5346942685335247846

`A000045(2*n)+A000045(n+1)-A005247(n+1)`
-/

namespace A254884.P5346942685335247846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + (A000045 (n + 1) - A005247 (n + 1))

end

end A254884.P5346942685335247846

namespace A254884

/-- `A000045(2*n)+A000045(n+1)-A005247(n+1)` -/
def P5346942685335247846.Spec : Prop :=
  ∀ n, P5346942685335247846.a n = A254884 n

end A254884

/-!
# A254885: Number of ways to write n as the sum of two squares and a positive triangular number.

The programs for A254885, there is no canonical definition to state claims against.
-/

/-! ## A254885.P17176183214594393783

`A001221(A008937(n+3)-A334461(n+1))`
-/

namespace A254885.P17176183214594393783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008937 (n + 3) - A334461 (n + 1)).toNat

end

end A254885.P17176183214594393783

/-! ## A254885.P11843061161185482555

`A297778(A347649(n)+A210860(2*(n+2)))`
-/

namespace A254885.P11843061161185482555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A347649 n + A210860 (2 * (n + 2))).toNat

end

end A254885.P11843061161185482555

/-! ## A254885.P6635825587539512277

`A001221(A002530(n+3)-A073941(n+1))`
-/

namespace A254885.P6635825587539512277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002530 (n + 3) - A073941 (n + 1)).toNat

end

end A254885.P6635825587539512277

/-!
# A254886: a(n) = least k>0 such that n-k^2 and n+k^2 are both primes.

The programs for A254886, there is no canonical definition to state claims against.
-/

/-! ## A254886.P10157084884226557450

`and(A000669(n+1), A289618(A071208(n+1)))`
-/

namespace A254886.P10157084884226557450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000669 (n + 1)) (A289618 (A071208 (n + 1)).toNat)

end

end A254886.P10157084884226557450

/-! ## A254886.P366116410833896421

`and(A004216(A307870(n+1)), A068968(3*n+2))`
-/

namespace A254886.P366116410833896421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004216 (A307870 (n + 1)).toNat) (A068968 (3 * n + 2))

end

end A254886.P366116410833896421

/-! ## A254886.P9359985622702534665

`A249783(A291538(3*n+5)-4*n-4*n)%A249783(n+1)`
-/

namespace A254886.P9359985622702534665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249783 (A291538 (3 * n + 5) - (4 * n : ℤ) - (4 * n : ℤ)).toNat) (A249783 (n + 1))

end

end A254886.P9359985622702534665

/-! ## A254886.P7127861240632000224

`A373733(3*n+2)%(A276604(A005179(n+1))/2)`
-/

namespace A254886.P7127861240632000224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373733 (3 * n + 2)) (SequenceMachineLib.roundAway ((A276604 (A005179 (n + 1)).toNat : ℚ) / 2))

end

end A254886.P7127861240632000224

/-! ## A254886.P2371601138542559046

`A352827(n+1)%A096859(A026764(n))`
-/

namespace A254886.P2371601138542559046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352827 (n + 1)) (A096859 (A026764 n).toNat)

end

end A254886.P2371601138542559046

/-!
# A254887: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254887, there is no canonical definition to state claims against.
-/

/-! ## A254887.P5065414212525369960

`A254894(∑[4*n]+1)`
-/

namespace A254887.P5065414212525369960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254887.P5065414212525369960

/-! ## A254887.P4186538092037722811

`record[A254894(A330613(n+1))]`
-/

namespace A254887.P4186538092037722811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254887.P4186538092037722811

/-! ## A254887.P4097619046952524915

`record[A003982(n)*A254894(n+1)]`
-/

namespace A254887.P4097619046952524915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254887.P4097619046952524915

/-! ## A254887.P15915897489182194665

`record[gcd(A049581(n), A254894(n+1))]`
-/

namespace A254887.P15915897489182194665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A254894 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254887.P15915897489182194665

/-!
# A254888: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254888, there is no canonical definition to state claims against.
-/

/-! ## A254888.P12590211126703788155

`A254894(∑[n+1]+2)`
-/

namespace A254888.P12590211126703788155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254888.P12590211126703788155

/-! ## A254888.P9782780265479030036

`record[A010054(n)*A254894(n+2)]`
-/

namespace A254888.P9782780265479030036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254888.P9782780265479030036

/-! ## A254888.P12115853496391155088

`record[A254894(n+3)/A052179(n)]`
-/

namespace A254888.P12115853496391155088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254894 (n + 3) : ℚ) / (A052179 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254888.P12115853496391155088

/-! ## A254888.P3303298390827103149

`record[gcd(A002262(n), A254894(n+2))]`
-/

namespace A254888.P3303298390827103149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254894 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254888.P3303298390827103149

/-! ## A254888.P7096181268729427197

`record[gcd(A048993(n+1), A254894(n+3))]`
-/

namespace A254888.P7096181268729427197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 (n + 1)) (A254894 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254888.P7096181268729427197

/-!
# A254889: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254889, there is no canonical definition to state claims against.
-/

/-! ## A254889.P5491711356812249499

`A254894(∑[n+2]+4)`
-/

namespace A254889.P5491711356812249499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254889.P5491711356812249499

/-! ## A254889.P2459582072276665933

`record[A254894(n+4)/A052179(n)]`
-/

namespace A254889.P2459582072276665933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254894 (n + 4) : ℚ) / (A052179 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254889.P2459582072276665933

/-! ## A254889.P17811434524895179913

`record[A010054(n+1)*A254894(n+4)]`
-/

namespace A254889.P17811434524895179913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A254894 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254889.P17811434524895179913

/-!
# A254890: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254890, there is no canonical definition to state claims against.
-/

/-! ## A254890.P17097337070606464869

`A254894(∑[n+3]+7)`
-/

namespace A254890.P17097337070606464869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254890.P17097337070606464869

/-!
# A254891: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254891, there is no canonical definition to state claims against.
-/

/-! ## A254891.P6644366087477026669

`A254894(A167499(n+3))`
-/

namespace A254891.P6644366087477026669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (A167499 (n + 3)).toNat

end

end A254891.P6644366087477026669

/-! ## A254891.P6068492523254889732

`A254894(A374005(n+1))`
-/

namespace A254891.P6068492523254889732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (A374005 (n + 1)).toNat

end

end A254891.P6068492523254889732

/-!
# A254892: Number of (n+2) X (6+2) 0..1 arrays with every 3 X 3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254892, there is no canonical definition to state claims against.
-/

/-! ## A254892.P1503398733215870952

`A254894(∑[n+5]+16)`
-/

namespace A254892.P1503398733215870952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A254892.P1503398733215870952

/-!
# A254893: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254893, there is no canonical definition to state claims against.
-/

/-! ## A254893.P14507466914781789317

`A254894(A167487(n+5))`
-/

namespace A254893.P14507466914781789317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (A167487 (n + 5)).toNat

end

end A254893.P14507466914781789317

/-! ## A254893.P14871614347496183187

`A254894(A374008(n+1))`
-/

namespace A254893.P14871614347496183187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254894 (A374008 (n + 1)).toNat

end

end A254893.P14871614347496183187

/-!
# A254895: Indices of octagonal numbers (A000567) that are also centered square numbers (A001844).

The programs for A254895, the canonical program `A254895.P3300634253254929899` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254895 has offset 1).

The definition of A254895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254895.P3300634253254929899

`ogf((1+12x-58x^2+12x^3+x^4)/(1-x-98x^2+98x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A254895

/-- `ogf((1+12x-58x^2+12x^3+x^4)/(1-x-98x^2+98x^3+x^4-x^5))` -/
def P3300634253254929899.Spec : Prop :=
  ∀ n, P3300634253254929899.a n = A254895 (n + 1)

theorem P3300634253254929899.correct : P3300634253254929899.Spec := by
  intro n
  simp only [A254895, Nat.add_sub_cancel]

end A254895

/-! ## A254895.P14142961715039421683

`ceil(sqrt(A254896(n+1)/3))`
-/

namespace A254895.P14142961715039421683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254896 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A254895.P14142961715039421683

namespace A254895

/-- `ceil(sqrt(A254896(n+1)/3))` -/
def P14142961715039421683.Spec : Prop :=
  ∀ n, P14142961715039421683.a n = A254895 (n + 1)

end A254895

/-! ## A254895.P16766133393791022881

`round(sqrt(A254896(n+1)/3-A059320(n)+1))`
-/

namespace A254895.P16766133393791022881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A254896 (n + 1) : ℚ) / 3 - (A059320 n : ℚ) + 1 : ℝ))

end

end A254895.P16766133393791022881

namespace A254895

/-- `round(sqrt(A254896(n+1)/3-A059320(n)+1))` -/
def P16766133393791022881.Spec : Prop :=
  ∀ n, P16766133393791022881.a n = A254895 (n + 1)

end A254895

/-! ## A254895.P1217234253186484577

`round(sqrt(A000920(n+1)+A254896(n+1)/3+1))`
-/

namespace A254895.P1217234253186484577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A000920 (n + 1) : ℚ) + (A254896 (n + 1) : ℚ) / 3 + 1 : ℝ))

end

end A254895.P1217234253186484577

namespace A254895

/-- `round(sqrt(A000920(n+1)+A254896(n+1)/3+1))` -/
def P1217234253186484577.Spec : Prop :=
  ∀ n, P1217234253186484577.a n = A254895 (n + 1)

end A254895

/-! ## A254895.P18070012764048766567

`round(sqrt(A254896(n+1)/3-A180020(n+1)+1))`
-/

namespace A254895.P18070012764048766567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A254896 (n + 1) : ℚ) / 3 - (A180020 (n + 1) : ℚ) + 1 : ℝ))

end

end A254895.P18070012764048766567

namespace A254895

/-- `round(sqrt(A254896(n+1)/3-A180020(n+1)+1))` -/
def P18070012764048766567.Spec : Prop :=
  ∀ n, P18070012764048766567.a n = A254895 (n + 1)

end A254895

/-! ## A254895.P5540843631243148736

`gcd(A253674(n+1)-A253675(n+1), A254896(n+1))`
-/

namespace A254895.P5540843631243148736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253674 (n + 1) - A253675 (n + 1)) (A254896 (n + 1))

end

end A254895.P5540843631243148736

namespace A254895

/-- `gcd(A253674(n+1)-A253675(n+1), A254896(n+1))` -/
def P5540843631243148736.Spec : Prop :=
  ∀ n, (P5540843631243148736.a n : ℤ) = A254895 (n + 1)

end A254895

/-!
# A254896: Octagonal numbers (A000567) that are also centered square numbers (A001844).

The programs for A254896, there is no canonical definition to state claims against.
-/

/-! ## A254896.P10249317448732056470

`8*floor(A253675(n+1)/2)/3+1`
-/

namespace A254896.P10249317448732056470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * ⌊(A253675 (n + 1) : ℚ) / 2⌋ : ℚ) / 3 + 1

end

end A254896.P10249317448732056470

/-!
# A254897: Define a family of sequences as follows: a(1) and a(2) are prime numbers, then if a(n-2) and a(n-1) have the same parity a(n)=(a(n-2)+a(n-1))/2 and if not a(n)=a(n-2)/2+a(n-1) for a(n-2) even or a(n)=a(n-2)+a(n-1)/2 for a(n-1) even. Start the first sequence with the two smallest prime numbers 2 and 3; in general, start the next sequence with the two smallest prime numbers not present in all preceding sequences; the present sequence lists the initial term of all these sequences.

The programs for A254897, there is no canonical definition to state claims against.
-/

/-! ## A254897.P13003000550623288624

`∩[A132229(n+1), A217691(n+1)]`
-/

namespace A254897.P13003000550623288624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254897.P13003000550623288624

/-! ## A254897.P12387157633956339473

`∩[A217691(n+1), A357574(n+1)]`
-/

namespace A254897.P12387157633956339473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254897.P12387157633956339473

/-! ## A254897.P10294193321559388203

`p?[A094820(∑[A094848(3*n+4)])]`
-/

namespace A254897.P10294193321559388203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094848 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A254897.P10294193321559388203

/-!
# A254898: Read the first n decimal digits of Pi-3 backwards.

The programs for A254898, there is no canonical definition to state claims against.
-/

/-! ## A254898.P11555213077438968246

`A004086(A039916(n+1))`
-/

namespace A254898.P11555213077438968246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A039916 (n + 1)).toNat

end

end A254898.P11555213077438968246

/-! ## A254898.P3303666892487140804

`∑[10^n*Δ[A046974(n)]]`
-/

namespace A254898.P3303666892487140804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254898.P3303666892487140804

/-! ## A254898.P7583549417166137544

`∑[10^n*A001355(2*n+3)]`
-/

namespace A254898.P7583549417166137544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A001355 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254898.P7583549417166137544

/-! ## A254898.P17531370120122546983

`∑[Δ[A046974(n)]*A011557(n)]`
-/

namespace A254898.P17531370120122546983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254898.P17531370120122546983

/-! ## A254898.P10679683334946193276

`∑[A000796(n+1)*A011557(n)]`
-/

namespace A254898.P10679683334946193276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254898.P10679683334946193276

/-! ## A254898.P7253890221117093095

`∑[A000796(n+1)*A017934(2*n)]`
-/

namespace A254898.P7253890221117093095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) * A017934 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254898.P7253890221117093095

/-!
# A254899: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254899, there is no canonical definition to state claims against.
-/

/-! ## A254899.P15081368112466596820

`A254907((n+1)²+n²)`
-/

namespace A254899.P15081368112466596820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 ((n + 1) ^ 2 + n ^ 2)

end

end A254899.P15081368112466596820

