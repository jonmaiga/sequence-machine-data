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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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

/-!
# A289000: Length of n-th iterate of the mapping 00->0010, 01->001, 10->001, starting with 00.

The programs for A289000, there is no canonical definition to state claims against.
-/

/-! ## A289000.P3699282058303922735

`A289028(n)-A185284(Δ[n²])`
-/

namespace A289000.P3699282058303922735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289028 n - A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289000.P3699282058303922735

/-! ## A289000.P13050013854381928555

`A289028(n)-A102681(A156953(n))`
-/

namespace A289000.P13050013854381928555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289028 n - A102681 (A156953 n).toNat

end

end A289000.P13050013854381928555

/-! ## A289000.P13212170465350747922

`A289028(n)-A025469(A338586(n))`
-/

namespace A289000.P13212170465350747922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289028 n - A025469 (A338586 n).toNat

end

end A289000.P13212170465350747922

/-! ## A289000.P15533906411604629205

`A289028(n)-A156729(A233308(n))`
-/

namespace A289000.P15533906411604629205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289028 n - A156729 (A233308 n).toNat

end

end A289000.P15533906411604629205

/-! ## A289000.P1676357206126692140

`xor(A185284(A005408(n)), A289028(n))`
-/

namespace A289000.P1676357206126692140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A005408 n).toNat) (A289028 n)

end

end A289000.P1676357206126692140

/-!
# A289002: Positions of 0 in A289235; complement of A289151.

The programs for A289002, there is no canonical definition to state claims against.
-/

/-! ## A289002.P16450054778178318813

`comp[A289151(n+1)-1]+1`
-/

namespace A289002.P16450054778178318813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289151 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289002.P16450054778178318813

/-! ## A289002.P1636277385604561766

`a(n-1)+A289235(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289002.P1636277385604561766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289235 (a (n - 1) + 1).toNat + 1)

end

end A289002.P1636277385604561766

/-! ## A289002.P11437555574087484695

`lt[A289235(n+1), 1]+1`
-/

namespace A289002.P11437555574087484695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289002.P11437555574087484695

/-! ## A289002.P18226347158611697603

`lt[n*A289235(A028310(n)), n]`
-/

namespace A289002.P18226347158611697603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289235 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289002.P18226347158611697603

/-! ## A289002.P4841984700358634888

`record[(n+1)/A110571(n*A289235(n+1))]`
-/

namespace A289002.P4841984700358634888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A110571 ((n : ℤ) * A289235 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289002.P4841984700358634888

/-! ## A289002.P9442911702507199805

`eq[A000038(n), A289235(A000038(n)+n)]`
-/

namespace A289002.P9442911702507199805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289002.P9442911702507199805

/-! ## A289002.P4603528749605175428

`eq[A289235(A289151(n+1)+1), A289235(n+1)]+1`
-/

namespace A289002.P4603528749605175428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A289151 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A289002.P4603528749605175428

/-!
# A289004: a(n) = 2*a(n-1) - a(n-2) + 2*a(n-4) - a(n-5) + a(n-7) - a(n-8) - a(n-10) for n >= 10, where a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 11, a(4) = 18, a(5) = 31, a(6) = 52, a(7) = 89, a(9) = 151, a(9) = 257.

The programs for A289004, there is no canonical definition to state claims against.
-/

/-! ## A289004.P17171906337309904059

`A289073(floor(a(n-1)/2)+1)-1` with `a(0)=2`
-/

namespace A289004.P17171906337309904059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A289073 (⌊(a (n - 1) : ℚ) / 2⌋ + 1).toNat - 1

end

end A289004.P17171906337309904059

/-! ## A289004.P14925279433347726906

`∑[A001953(Δ[A293078(n+1)])]`
-/

namespace A289004.P14925279433347726906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289004.P14925279433347726906

/-! ## A289004.P2954386650265371122

`∑[A214857(Δ[A293078(n+1)])]`
-/

namespace A289004.P2954386650265371122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289004.P2954386650265371122

/-! ## A289004.P18411370464305640218

`∑[A001953(Δ[A293077(n+1)/2])]`
-/

namespace A289004.P18411370464305640218
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293077 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289004.P18411370464305640218

/-! ## A289004.P13512496568354497850

`A293078(n+2)+A049472(A293078(n+1))`
-/

namespace A289004.P13512496568354497850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (n + 2) + A049472 (A293078 (n + 1)).toNat

end

end A289004.P13512496568354497850

/-!
# A289005: Decimal expansion of the limiting ratio of consecutive terms of A288235.

The programs for A289005, there is no canonical definition to state claims against.
-/

/-! ## A289005.P8879648135953725893

`A289032(A055647(n))`
-/

namespace A289005.P8879648135953725893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289032 ((A055647 n).toNat + 1)

end

end A289005.P8879648135953725893

/-! ## A289005.P8919578612365029663

`A289032(n)+A000007(A000079(n))`
-/

namespace A289005.P8919578612365029663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289032 (n + 1) + A000007 (A000079 n).toNat

end

end A289005.P8919578612365029663

/-! ## A289005.P8455262780351758062

`A289032(A000038(A000079(n))+n)`
-/

namespace A289005.P8455262780351758062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289032 ((A000038 (A000079 n).toNat + (n : ℤ)).toNat + 1)

end

end A289005.P8455262780351758062

/-! ## A289005.P5605019625378759182

`A289032(n)+A000007(A007910(n))`
-/

namespace A289005.P5605019625378759182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289032 (n + 1) + A000007 (A007910 n).toNat

end

end A289005.P5605019625378759182

/-! ## A289005.P17678169508286468479

`A289032(A000038(A007910(n))+n)`
-/

namespace A289005.P17678169508286468479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289032 ((A000038 (A007910 n).toNat + (n : ℤ)).toNat + 1)

end

end A289005.P17678169508286468479

/-!
# A289006: Conversion to octal of the binary expansion given by the first n terms of the period-3 sequence A011655 (repeat 0, 1, 1).

The programs for A289006, there is no canonical definition to state claims against.
-/

/-! ## A289006.P1714570914958206998

`A007094(floor(6*2^n/7))`
-/

namespace A289006.P1714570914958206998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ⌊6 * ((2 ^ n : ℚ) / 7)⌋.toNat

end

end A289006.P1714570914958206998

/-! ## A289006.P11923016700459961745

`A007094(A057744(n))-1`
-/

namespace A289006.P11923016700459961745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A057744 n).toNat - 1

end

end A289006.P11923016700459961745

/-! ## A289006.P4171506941267882688

`and(-1, A007094(∑[A294627(n)]))`
-/

namespace A289006.P4171506941267882688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A007094 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A289006.P4171506941267882688

/-! ## A289006.P2423021805892686396

`A007094(A033129(n)+1)-1`
-/

namespace A289006.P2423021805892686396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A033129 n + 1).toNat - 1

end

end A289006.P2423021805892686396

/-! ## A289006.P9258132529101311260

`A007094(A033129(n))%A000244(n)`
-/

namespace A289006.P9258132529101311260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A033129 n).toNat) (A000244 n)

end

end A289006.P9258132529101311260

/-!
# A289007: Fixed point of the mapping 00->0010, 01->001, 10->011, starting with 00.

The programs for A289007, there is no canonical definition to state claims against.
-/

/-! ## A289007.P1057423310371881544

`char[A289009(n+1)-1]`
-/

namespace A289007.P1057423310371881544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289009 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289007.P1057423310371881544

/-! ## A289007.P2669047913755918811

`char[comp[A289008(n+1)-1]]`
-/

namespace A289007.P2669047913755918811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289007.P2669047913755918811

/-! ## A289007.P10713255178480261951

`abs(char[A289008(Δ[n²]-n)-1]-1)`
-/

namespace A289007.P10713255178480261951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A289007.P10713255178480261951

/-! ## A289007.P6625648162012475697

`(1-char[A289008(xor(1, n)+1)-1])%2`
-/

namespace A289007.P6625648162012475697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A289007.P6625648162012475697

/-! ## A289007.P14706904829821184630

`(1-char[A289008(abs(xor(n, -2)))-1])%2`
-/

namespace A289007.P14706904829821184630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A289007.P14706904829821184630

/-! ## A289007.P15776873567836730753

`char[A023443(A289009(n+1))]`
-/

namespace A289007.P15776873567836730753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289009 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289007.P15776873567836730753

/-! ## A289007.P8328203588353834398

`char[A023443(comp[A289008(n+1)])]`
-/

namespace A289007.P8328203588353834398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289007.P8328203588353834398

/-! ## A289007.P12139635192269728716

`(char[A289008(A344180(n))-1]-1)²`
-/

namespace A289007.P12139635192269728716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (A344180 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A289007.P12139635192269728716

/-! ## A289007.P17022109670633798431

`floor(1/(char[A289008(A028310(n))-1]-(1-4/2)))`
-/

namespace A289007.P17022109670633798431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (1 - (4 : ℚ) / 2))⌋

end

end A289007.P17022109670633798431

/-!
# A289008: Positions of 0 in A289007; complement of A289009.

The programs for A289008, there is no canonical definition to state claims against.
-/

/-! ## A289008.P9116996086773949380

`1+eq[0, A289007(n+1)]`
-/

namespace A289008.P9116996086773949380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289008.P9116996086773949380

/-! ## A289008.P9258284601730408049

`lt[n*A289007(A028310(n)), n]`
-/

namespace A289008.P9258284601730408049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289007 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289008.P9258284601730408049

/-! ## A289008.P1171410634179690681

`record[n+1-A014107(n*A289007(n+1))]`
-/

namespace A289008.P1171410634179690681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014107 ((n : ℤ) * A289007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P1171410634179690681

/-! ## A289008.P14597732498248547390

`record[n+1-A051877(n)*A289007(n+1)]`
-/

namespace A289008.P14597732498248547390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051877 n * A289007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P14597732498248547390

/-! ## A289008.P9620011366195682682

`record[n+1-A289007(n+1)*A289009(n+1)]`
-/

namespace A289008.P9620011366195682682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289007 (n + 1) * A289009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P9620011366195682682

/-! ## A289008.P14801412296290048881

`record[n+1-A289007(n+1)*A289012(n+1)]`
-/

namespace A289008.P14801412296290048881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289007 (n + 1) * A289012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P14801412296290048881

/-! ## A289008.P1116011249366435980

`lt[A289007(A028310(n)), A057427(n)]`
-/

namespace A289008.P1116011249366435980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289008.P1116011249366435980

/-! ## A289008.P17988457147126110982

`record[A003602(n+1+A289007(n+1)+n)]`
-/

namespace A289008.P17988457147126110982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ((n + 1 : ℤ) + (A289007 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P17988457147126110982

/-! ## A289008.P12317240524794308450

`A055396(p?[A289007(n+1)+A000040(n+1)])`
-/

namespace A289008.P12317240524794308450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289008.P12317240524794308450

/-! ## A289008.P1895256099977261756

`record[n+1-A001045(n*A289007(n+1))]`
-/

namespace A289008.P1895256099977261756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001045 ((n : ℤ) * A289007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289008.P1895256099977261756

/-!
# A289009: Positions of 1 in A289007; complement of A289008.

The programs for A289009, there is no canonical definition to state claims against.
-/

/-! ## A289009.P2924647010497450857

`comp[A289008(n+1)-1]+1`
-/

namespace A289009.P2924647010497450857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289008 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289009.P2924647010497450857

/-! ## A289009.P13584563149554213222

`filter[n+1, A289007(#)]`
-/

namespace A289009.P13584563149554213222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289007 (f1 j) = 1) n)

end

end A289009.P13584563149554213222

/-! ## A289009.P3123850822366975914

`eq[1, A289007(n+1)]+1`
-/

namespace A289009.P3123850822366975914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289009.P3123850822366975914

/-! ## A289009.P1686314679973256878

`lt[1, A289007(n+2)+1]+2`
-/

namespace A289009.P1686314679973256878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A289009.P1686314679973256878

/-! ## A289009.P10797020623713259360

`lt[0, A289007(A028310(n))]`
-/

namespace A289009.P10797020623713259360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289009.P10797020623713259360

/-! ## A289009.P7135841824828614926

`eq[1, A289007(n^A062157(n)²)]`
-/

namespace A289009.P7135841824828614926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A062157 n ^ 2 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289009.P7135841824828614926

/-! ## A289009.P12134003453429683256

`A344180(eq[1, A289007(A344180(n))])`
-/

namespace A289009.P12134003453429683256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289009.P12134003453429683256

/-! ## A289009.P4647751622042167484

`A055396(p?[A000040(n+1)*A289007(n+1)])`
-/

namespace A289009.P4647751622042167484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A289007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A289009.P4647751622042167484

/-! ## A289009.P13113840265133035185

`eq[1, A289007(A233583(n+1))]`
-/

namespace A289009.P13113840265133035185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289007 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289009.P13113840265133035185

/-!
# A289010: Length of n-th iterate of the mapping 00->0010, 01->001, 10->011, starting with 00.

The programs for A289010, there is no canonical definition to state claims against.
-/

/-! ## A289010.P9921667253803503008

`A135660(7*2^n)+a(n-1)` with `a(0)=2`
-/

namespace A289010.P9921667253803503008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A135660 (7 * 2 ^ n) + a (n - 1)

end

end A289010.P9921667253803503008

/-! ## A289010.P9384020628509456007

`∑[A135660(A005009(n))]+1`
-/

namespace A289010.P9384020628509456007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A005009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289010.P9384020628509456007

/-! ## A289010.P8993569119156883627

`∑[A135660(A017029(2^n))]`
-/

namespace A289010.P8993569119156883627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A017029 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289010.P8993569119156883627

/-! ## A289010.P13983634664366120245

`∑[A135661(A156127(n))+1]+1`
-/

namespace A289010.P13983634664366120245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A156127 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289010.P13983634664366120245

/-! ## A289010.P8176693080813464191

`∑[A000196(5*2^n)-A110654(n)]`
-/

namespace A289010.P8176693080813464191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (5 * 2 ^ n) - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289010.P8176693080813464191

/-!
# A289011: Fixed point of the mapping 00->0010, 01->001, 10->100, starting with 00.

The programs for A289011, there is no canonical definition to state claims against.
-/

/-! ## A289011.P15501557536404221389

`char[A289013(n+1)-1]`
-/

namespace A289011.P15501557536404221389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289013 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289011.P15501557536404221389

/-! ## A289011.P14129111725771040245

`char[A289241(n+1)-4]`
-/

namespace A289011.P14129111725771040245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289011.P14129111725771040245

/-! ## A289011.P4911833060460032635

`char[A023443(A289013(n+1))]`
-/

namespace A289011.P4911833060460032635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289013 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289011.P4911833060460032635

/-! ## A289011.P8997946723210763240

`A289239(n+4)`
-/

namespace A289011.P8997946723210763240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 4)

end

end A289011.P8997946723210763240

/-! ## A289011.P14991362887592532646

`and(1, A289239(A020705(n)))`
-/

namespace A289011.P14991362887592532646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A289239 (A020705 n).toNat)

end

end A289011.P14991362887592532646

/-!
# A289012: Positions of 0 in A289011; complement of A289013.

The programs for A289012, there is no canonical definition to state claims against.
-/

/-! ## A289012.P14970797887096770539

`comp[A289241(n+1)-3]`
-/

namespace A289012.P14970797887096770539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A289012.P14970797887096770539

/-! ## A289012.P4332050385849349864

`A289240(n+3)-3`
-/

namespace A289012.P4332050385849349864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289240 (n + 3) - 3

end

end A289012.P4332050385849349864

/-! ## A289012.P1646844282046620836

`eq[0, A289011(n+1)]+1`
-/

namespace A289012.P1646844282046620836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289012.P1646844282046620836

/-! ## A289012.P4476815792492623594

`lt[n*A289011(A028310(n)), n]`
-/

namespace A289012.P4476815792492623594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289011 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289012.P4476815792492623594

/-! ## A289012.P7338054195860757094

`record[gcd(n+1, A289009(n+1)*A289011(n+1))]`
-/

namespace A289012.P7338054195860757094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A289009 (n + 1) * A289011 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289012.P7338054195860757094

/-! ## A289012.P3765950752530120188

`lt[n*char[A289013(n+1)], n]`
-/

namespace A289012.P3765950752530120188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289012.P3765950752530120188

/-! ## A289012.P14225622537126336851

`lt[char[A289013(n+1)], A057427(n)]`
-/

namespace A289012.P14225622537126336851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289012.P14225622537126336851

/-! ## A289012.P12232577674468787168

`eq[A000007(n), A289011(A028310(n))]`
-/

namespace A289012.P12232577674468787168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289012.P12232577674468787168

/-! ## A289012.P12647389525263731669

`lt[A289011(A028310(n)), A057427(n)]`
-/

namespace A289012.P12647389525263731669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289012.P12647389525263731669

/-! ## A289012.P8125655304646725707

`eq[0, A289239(n+3)]`
-/

namespace A289012.P8125655304646725707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289012.P8125655304646725707

/-! ## A289012.P16580270823152752285

`lt[Δ[A289239(n+2)], 1]`
-/

namespace A289012.P16580270823152752285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A289012.P16580270823152752285

/-! ## A289012.P429693393583517351

`record[A210882(A210882(n+1)-A289011(n+1))]`
-/

namespace A289012.P429693393583517351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A210882 (n + 1) - A289011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289012.P429693393583517351

/-! ## A289012.P6952354512826405088

`record[A289011(A187185(n+1))+A187185(n+1)]`
-/

namespace A289012.P6952354512826405088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (A187185 (n + 1)).toNat + A187185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289012.P6952354512826405088

/-!
# A289013: Positions of 1 in A289011; complement of A289012.

The programs for A289013, there is no canonical definition to state claims against.
-/

/-! ## A289013.P14963581265208959126

`A289241(n+2)-3`
-/

namespace A289013.P14963581265208959126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 2) - 3

end

end A289013.P14963581265208959126

/-! ## A289013.P4532378495827676553

`∑[abs(Δ[A289241(n+1)])]`
-/

namespace A289013.P4532378495827676553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P4532378495827676553

/-! ## A289013.P4971508834757886963

`∑[A000015(Δ[A289241(n+1)])]`
-/

namespace A289013.P4971508834757886963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P4971508834757886963

/-! ## A289013.P5064470555215763077

`∑[A000026(Δ[A289241(n+1)])]`
-/

namespace A289013.P5064470555215763077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P5064470555215763077

/-! ## A289013.P5383552865676366946

`∑[A000027(Δ[A289241(n+1)])]`
-/

namespace A289013.P5383552865676366946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P5383552865676366946

/-! ## A289013.P2041974802873921900

`∑[A000030(Δ[A289241(n+1)])]`
-/

namespace A289013.P2041974802873921900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P2041974802873921900

/-! ## A289013.P14184484838086950891

`∑[A000961(Δ[A289241(n+1)])]`
-/

namespace A289013.P14184484838086950891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P14184484838086950891

/-! ## A289013.P4133220855677769315

`∑[A001096(Δ[A289241(n+1)])]`
-/

namespace A289013.P4133220855677769315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P4133220855677769315

/-! ## A289013.P14543522499222415761

`∑[A289234(Δ[A289241(n+1)])]`
-/

namespace A289013.P14543522499222415761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289013.P14543522499222415761

/-! ## A289013.P4005410945433837511

`filter[n+1, A289011(#)]`
-/

namespace A289013.P4005410945433837511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289011 (f1 j) = 1) n)

end

end A289013.P4005410945433837511

/-! ## A289013.P17061610572174329330

`lt[0, A289011(n+1)]+1`
-/

namespace A289013.P17061610572174329330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289013.P17061610572174329330

/-! ## A289013.P4907056266929697946

`eq[1, A289011(A028310(n))]`
-/

namespace A289013.P4907056266929697946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289013.P4907056266929697946

/-! ## A289013.P6160638077523034096

`eq[1, A289011(A000007(n)+n)]`
-/

namespace A289013.P6160638077523034096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289011 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289013.P6160638077523034096

/-! ## A289013.P11591622605116528953

`lt[1-A289011(A028310(n)), A057427(n)]`
-/

namespace A289013.P11591622605116528953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A289011 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289013.P11591622605116528953

/-! ## A289013.P11234181780584694448

`A023445(A289241(n+2))`
-/

namespace A289013.P11234181780584694448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A289241 (n + 2)).toNat

end

end A289013.P11234181780584694448

/-! ## A289013.P15532407540265905385

`eq[A014963(3*A000010(n+1)), A289239(n+3)]`
-/

namespace A289013.P15532407540265905385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289013.P15532407540265905385

/-!
# A289014: Number of integers containing n in their base-10 home prime trajectory.

The programs for A289014, there is no canonical definition to state claims against.
-/

/-! ## A289014.P2842527682600353800

`A049710(A129947(n+1)+A025510(n+1))`
-/

namespace A289014.P2842527682600353800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A129947 (n + 1) + A025510 (n + 1)).toNat

end

end A289014.P2842527682600353800

/-! ## A289014.P10475115535082307550

`A046951(A178489(2*(n+11))+A035116(3*n+1)²)`
-/

namespace A289014.P10475115535082307550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A178489 (2 * (n + 11)) + A035116 (3 * n + 1) ^ 2).toNat

end

end A289014.P10475115535082307550

/-! ## A289014.P9524148224748359321

`gcd(A046951(A209115(n+4)), A352158(n+1))`
-/

namespace A289014.P9524148224748359321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046951 (A209115 (n + 4)).toNat) (A352158 (n + 1))

end

end A289014.P9524148224748359321

/-! ## A289014.P5781254431575255309

`A071202(ceil((n+1)/A102642(3*n+1)))`
-/

namespace A289014.P5781254431575255309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071202 ⌈(n + 1 : ℚ) / (A102642 (3 * n + 1) : ℚ)⌉.toNat

end

end A289014.P5781254431575255309

/-! ## A289014.P17068899514674417481

`gcd(A000607(A290251(3*n+2)), A095061(n+1))`
-/

namespace A289014.P17068899514674417481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000607 (A290251 (3 * n + 2)).toNat) (A095061 (n + 1))

end

end A289014.P17068899514674417481

/-!
# A289016: Fixed point of the mapping 00->0010, 01->010, 10->000, starting with 00.

The programs for A289016, there is no canonical definition to state claims against.
-/

/-! ## A289016.P10521463267406310578

`char[A289018(n+1)-1]`
-/

namespace A289016.P10521463267406310578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289016.P10521463267406310578

/-! ## A289016.P4504397775054544683

`char[comp[A289017(n+1)-1]]`
-/

namespace A289016.P4504397775054544683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289017 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289016.P4504397775054544683

/-! ## A289016.P11757514693027753502

`char[A023443(A289018(n+1))]`
-/

namespace A289016.P11757514693027753502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289018 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289016.P11757514693027753502

/-! ## A289016.P10541614521462488433

`char[A023443(comp[A289017(n+1)])]`
-/

namespace A289016.P10541614521462488433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289017 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289016.P10541614521462488433

/-! ## A289016.P9096529794615584583

`char[A289207(A289018(n+1)+1)]`
-/

namespace A289016.P9096529794615584583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A289018 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289016.P9096529794615584583

/-! ## A289016.P9509997287470492845

`char[A001478(n+1)+A289018(n+1)+n]`
-/

namespace A289016.P9509997287470492845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A289018 (n + 1) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289016.P9509997287470492845

/-! ## A289016.P18197390530638873439

`A057427(n)-char[A289017(n+1)-A057427(n)]`
-/

namespace A289016.P18197390530638873439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289017 (n + 1) - A057427 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289016.P18197390530638873439

/-! ## A289016.P16954043004090535554

`A002262(Δ[char[A289018(n+1)]]+1)`
-/

namespace A289016.P16954043004090535554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A289016.P16954043004090535554

/-! ## A289016.P14658410615969723949

`A249093(Δ[char[A289018(n+1)]]+3)`
-/

namespace A289016.P14658410615969723949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat

end

end A289016.P14658410615969723949

/-! ## A289016.P4914234803608426211

`A074290(Δ[comp[A289018(n+1)+n]]+1)`
-/

namespace A289016.P4914234803608426211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A289016.P4914234803608426211

/-! ## A289016.P7135475820725588478

`A211100(Δ[comp[A289018(n+1)+n]])-1`
-/

namespace A289016.P7135475820725588478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A289016.P7135475820725588478

/-! ## A289016.P5708776256665589537

`A216345(-Δ[-comp[A289018(n+1)+n]])-1`
-/

namespace A289016.P5708776256665589537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (-(f1 (n + 1) - f1 n)).toNat - 1

end

end A289016.P5708776256665589537

/-! ## A289016.P13846373182896629044

`A288307(-Δ[-comp[A289018(n+1)+n]])-1`
-/

namespace A289016.P13846373182896629044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288307 (-(f1 (n + 1) - f1 n)).toNat - 1

end

end A289016.P13846373182896629044

/-!
# A289017: Positions of 0 in A289016; complement of A289018.

The programs for A289017, there is no canonical definition to state claims against.
-/

/-! ## A289017.P15696674583001599996

`comp[A289018(n+1)-1]+1`
-/

namespace A289017.P15696674583001599996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289017.P15696674583001599996

/-! ## A289017.P2887949211762497183

`eq[0, A289016(n+1)]+1`
-/

namespace A289017.P2887949211762497183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289017.P2887949211762497183

/-! ## A289017.P822616862483436090

`a(n-1)+A289016(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289017.P822616862483436090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289016 (a (n - 1) + 1).toNat + 1)

end

end A289017.P822616862483436090

/-! ## A289017.P4061260115487705211

`lt[n*A289016(A028310(n)), n]`
-/

namespace A289017.P4061260115487705211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289016 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A289017.P4061260115487705211

/-! ## A289017.P8113840567079125617

`record[n+1-A005117(n+1)*A289016(n+1)]`
-/

namespace A289017.P8113840567079125617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005117 (n + 1) * A289016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289017.P8113840567079125617

/-! ## A289017.P13063882964459196925

`record[n+1-A006530(n+1)*A289016(n+1)]`
-/

namespace A289017.P13063882964459196925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006530 (n + 1) * A289016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289017.P13063882964459196925

/-! ## A289017.P8497595238417099359

`record[n+1-A020639(n+1)*A289016(n+1)]`
-/

namespace A289017.P8497595238417099359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020639 (n + 1) * A289016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289017.P8497595238417099359

/-! ## A289017.P4446434558993248340

`lt[char[A289018(n+1)], A057427(n)]`
-/

namespace A289017.P4446434558993248340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289018 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289017.P4446434558993248340

/-!
# A289018: Positions of 1 in A289016; complement of A289017.

The programs for A289018, there is no canonical definition to state claims against.
-/

/-! ## A289018.P18442123769467408392

`filter[n+1, A289016(#)]`
-/

namespace A289018.P18442123769467408392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289016 (f1 j) = 1) n)

end

end A289018.P18442123769467408392

/-! ## A289018.P16002290716324359512

`lt[0, A289016(n+1)]+1`
-/

namespace A289018.P16002290716324359512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289018.P16002290716324359512

/-! ## A289018.P13564456088296396294

`record[(n+3)*A289016(n+3)]`
-/

namespace A289018.P13564456088296396294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289016 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289018.P13564456088296396294

/-! ## A289018.P10277825206652557225

`lt[n*char[A289017(n+1)], n]`
-/

namespace A289018.P10277825206652557225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A289018.P10277825206652557225

/-! ## A289018.P10979915912597570614

`lt[0, A289016(A028310(n))]`
-/

namespace A289018.P10979915912597570614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289018.P10979915912597570614

/-! ## A289018.P7495507647363493451

`eq[1, A289016(A000007(n)+n)]`
-/

namespace A289018.P7495507647363493451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289018.P7495507647363493451

/-! ## A289018.P12058120856202282790

`lt[char[A289017(n+1)], A057427(n)]`
-/

namespace A289018.P12058120856202282790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289017 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289018.P12058120856202282790

/-! ## A289018.P17220743177339245006

`A092486(eq[1, A289016(A092486(n))])`
-/

namespace A289018.P17220743177339245006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A092486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289018.P17220743177339245006

/-! ## A289018.P5710225296344454102

`eq[1, A289016(A065033(2*n))]`
-/

namespace A289018.P5710225296344454102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289018.P5710225296344454102

/-! ## A289018.P3117177342264601660

`eq[1, A289016(A123108(2*n))]`
-/

namespace A289018.P3117177342264601660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289018.P3117177342264601660

/-! ## A289018.P10868793732049635358

`eq[1, A289016(A233583(n+1))]`
-/

namespace A289018.P10868793732049635358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289016 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289018.P10868793732049635358

/-!
# A289019: Length of n-th iterate of the mapping 00->0010, 01->010, 10->000, starting with 00.

The programs for A289019, there is no canonical definition to state claims against.
-/

/-! ## A289019.P9166389711268133419

`A289239(A294154(n))+A289153(n)`
-/

namespace A289019.P9166389711268133419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A294154 n).toNat + A289153 n

end

end A289019.P9166389711268133419

/-! ## A289019.P10615537468845471928

`A289153(n)+A289016(∑[A153480(n)])`
-/

namespace A289019.P10615537468845471928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289153 n + A289016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289019.P10615537468845471928

/-! ## A289019.P17384440389176167258

`A289153(n)+A000035(A206838(n+1))`
-/

namespace A289019.P17384440389176167258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289153 n + A000035 (A206838 (n + 1)).toNat

end

end A289019.P17384440389176167258

/-! ## A289019.P10989377553289562995

`A289153(n)+A102683(A014398(n))`
-/

namespace A289019.P10989377553289562995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289153 n + A102683 (A014398 n).toNat

end

end A289019.P10989377553289562995

/-! ## A289019.P14049402009820847827

`A289235(A000149(n))+A289153(n)`
-/

namespace A289019.P14049402009820847827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289235 (A000149 n).toNat + A289153 n

end

end A289019.P14049402009820847827

/-!
# A289020: Number of Dyck paths having exactly one peak in each of the levels 1,...,n and no other peaks.

The programs for A289020, there is no canonical definition to state claims against.
-/

/-! ## A289020.P7241288558113243404

`A288972(∑[n+2]-1)`
-/

namespace A289020.P7241288558113243404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A289020.P7241288558113243404

/-! ## A289020.P9675464761358707826

`gcd(A000038(n), A288972(A034856(n+1)))`
-/

namespace A289020.P9675464761358707826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288972 (A034856 (n + 1)).toNat)

end

end A289020.P9675464761358707826

/-! ## A289020.P11743490268389421860

`lcm(A040001(n), A288972(A034856(n+1)))`
-/

namespace A289020.P11743490268389421860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A288972 (A034856 (n + 1)).toNat)

end

end A289020.P11743490268389421860

/-! ## A289020.P12127556812303514688

`or(A000007(n), A288972(A034856(n+1)))`
-/

namespace A289020.P12127556812303514688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A288972 (A034856 (n + 1)).toNat)

end

end A289020.P12127556812303514688

/-! ## A289020.P14297671756061458862

`A288972(A034856(n+1))+A034540(n+1)`
-/

namespace A289020.P14297671756061458862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A034856 (n + 1)).toNat + A034540 (n + 1)

end

end A289020.P14297671756061458862

/-!
# A289023: Position in the sequence of numbers that are not perfect powers (A007916) of the smallest positive integer x such that for some positive integer y we have n = x^y (A052410).

The programs for A289023, there is no canonical definition to state claims against.
-/

/-! ## A289023.P12978758437260230348

`A278029(A052410(n+2))`
-/

namespace A289023.P12978758437260230348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A052410 (n + 2)).toNat

end

end A289023.P12978758437260230348

/-! ## A289023.P6678260108856210311

`A278029(A304776(n+2))`
-/

namespace A289023.P6678260108856210311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A304776 (n + 2)).toNat

end

end A289023.P6678260108856210311

/-! ## A289023.P41948004640991098

`A278029(A329814((n+2)²))`
-/

namespace A289023.P41948004640991098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A329814 ((n + 2) ^ 2)).toNat

end

end A289023.P41948004640991098

/-! ## A289023.P10645979905758664282

`A132351(A052410(n+2)-1)`
-/

namespace A289023.P10645979905758664282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (A052410 (n + 2) - 1).toNat

end

end A289023.P10645979905758664282

/-! ## A289023.P1669107821332283826

`A278028(∑[A288636(n+1)]+1)`
-/

namespace A289023.P1669107821332283826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278028 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A289023.P1669107821332283826

/-! ## A289023.P5061953843706722724

`A278028(∑[gcd(6, A089723(n+1))])`
-/

namespace A289023.P5061953843706722724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A089723 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278028 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289023.P5061953843706722724

/-! ## A289023.P7430348372909494581

`A277564(∑[A288636(n+1)+1]+2)`
-/

namespace A289023.P7430348372909494581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277564 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A289023.P7430348372909494581

/-! ## A289023.P15040941808701170055

`A277564(∑[∏{e}[n+1, A052409(#)]+2])`
-/

namespace A289023.P15040941808701170055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A052409 (Nat.factorization (f2 n) p) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289023.P15040941808701170055

/-! ## A289023.P13431389126757841921

`A278028(∑[∏{e}[n+1, A052409(#)]]+n)`
-/

namespace A289023.P13431389126757841921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A052409 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278028 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A289023.P13431389126757841921

/-! ## A289023.P14029143968969107300

`A278029(A304491(A304481(n+2)))`
-/

namespace A289023.P14029143968969107300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278029 (A304491 (A304481 (n + 2)).toNat).toNat

end

end A289023.P14029143968969107300

/-!
# A289024: Exponents a(1), a(2), ... such that E_10, 1 - 264*q - 135432*q^2 + ... (A013974) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ... .

The programs for A289024, there is no canonical definition to state claims against.
-/

/-! ## A289024.P2342303981304914630

`A110163(n+1)+A288851(n+1)`
-/

namespace A289024.P2342303981304914630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110163 (n + 1) + A288851 (n + 1)

end

end A289024.P2342303981304914630

/-! ## A289024.P1898875889516104579

`A289029(n+1)-A110163(n+1)`
-/

namespace A289024.P1898875889516104579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289029 (n + 1) - A110163 (n + 1)

end

end A289024.P1898875889516104579

/-! ## A289024.P5909574580633701001

`A288851(n+1)+A288471(n+1)/2`
-/

namespace A289024.P5909574580633701001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288851 (n + 1) : ℚ) + (A288471 (n + 1) : ℚ) / 2

end

end A289024.P5909574580633701001

/-!
# A289025: Fixed point of the mapping 00->0010, 01->010, 10->001, starting with 00.

The programs for A289025, there is no canonical definition to state claims against.
-/

/-! ## A289025.P10099350163061756104

`char[A289027(n+1)-1]`
-/

namespace A289025.P10099350163061756104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289027 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289025.P10099350163061756104

/-! ## A289025.P1364584226772155155

`char[comp[A289026(n+1)-1]]`
-/

namespace A289025.P1364584226772155155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289025.P1364584226772155155

/-! ## A289025.P5331674199076040705

`A112315(Δ[char[A289026(n+1)]]+1)`
-/

namespace A289025.P5331674199076040705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A289025.P5331674199076040705

/-! ## A289025.P16673174419903495259

`A285208(Δ[char[A289026(n+1)]]+2)`
-/

namespace A289025.P16673174419903495259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A289025.P16673174419903495259

/-! ## A289025.P3082289792216255302

`A303778(Δ[char[A289026(n+1)]]+1)%2`
-/

namespace A289025.P3082289792216255302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) 2

end

end A289025.P3082289792216255302

/-! ## A289025.P15087692177038369988

`A000005(Δ[char[A289026(n+1)]]+2)%2`
-/

namespace A289025.P15087692177038369988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat) 2

end

end A289025.P15087692177038369988

/-! ## A289025.P14567233735536851563

`A094950(Δ[char[A289026(n+1)]]+2)%2`
-/

namespace A289025.P14567233735536851563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat) 2

end

end A289025.P14567233735536851563

/-! ## A289025.P5824463555459324096

`A287003(Δ[char[A289026(n+1)]]+2)%2`
-/

namespace A289025.P5824463555459324096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287003 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat) 2

end

end A289025.P5824463555459324096

/-! ## A289025.P17257283936270296215

`A156259(Δ[comp[A289026(n+1)+n]]+1)`
-/

namespace A289025.P17257283936270296215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A289025.P17257283936270296215

/-! ## A289025.P2834831164291254352

`(A000124(Δ[char[A289026(n+1)]]+1)+6)%2`
-/

namespace A289025.P2834831164291254352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 6) 2

end

end A289025.P2834831164291254352

/-!
# A289026: Positions of 0 in A289025; complement of A289027.

The programs for A289026, there is no canonical definition to state claims against.
-/

/-! ## A289026.P5511099210032592359

`eq[0, A289025(n+1)]+1`
-/

namespace A289026.P5511099210032592359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289026.P5511099210032592359

/-! ## A289026.P11571103810707909712

`comp[A289027(n+1)-1]+1`
-/

namespace A289026.P11571103810707909712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289027 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289026.P11571103810707909712

/-! ## A289026.P5746055081074698346

`a(n-1)+A289025(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289026.P5746055081074698346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289025 (a (n - 1) + 1).toNat + 1)

end

end A289026.P5746055081074698346

/-! ## A289026.P4510514370695493078

`record[n+1-A020639(n+1)*A289025(n+1)]`
-/

namespace A289026.P4510514370695493078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020639 (n + 1) * A289025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289026.P4510514370695493078

/-! ## A289026.P865266940282300636

`A289025(A288998(n+1))+A288998(n+1)`
-/

namespace A289026.P865266940282300636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A288998 (n + 1)).toNat + A288998 (n + 1)

end

end A289026.P865266940282300636

/-! ## A289026.P1437847612385630963

`A289036(n+1)-A289025(A289036(n+1))`
-/

namespace A289026.P1437847612385630963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1) - A289025 (A289036 (n + 1)).toNat

end

end A289026.P1437847612385630963

/-! ## A289026.P17201172986630570937

`record[A038722(A038722(n+1)-A289025(n+1))]`
-/

namespace A289026.P17201172986630570937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1) - A289025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289026.P17201172986630570937

/-! ## A289026.P14406858228311201591

`record[n+1-A289025(n+1)*A289027(n+1)]`
-/

namespace A289026.P14406858228311201591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289025 (n + 1) * A289027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289026.P14406858228311201591

/-! ## A289026.P6935799743726064966

`lt[char[A289027(n+1)], A057427(n)]`
-/

namespace A289026.P6935799743726064966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289027 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A289026.P6935799743726064966

/-! ## A289026.P9026770510281152876

`eq[A028310(n)-n, A289025(A028310(n))]`
-/

namespace A289026.P9026770510281152876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289026.P9026770510281152876

/-! ## A289026.P7818081633101142863

`record[A289025(A023131(n+1))+A023131(n+1)]`
-/

namespace A289026.P7818081633101142863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A023131 (n + 1)).toNat + A023131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289026.P7818081633101142863

/-!
# A289027: Positions of 1 in A289025; complement of A289026.

The programs for A289027, there is no canonical definition to state claims against.
-/

/-! ## A289027.P15050886297805489585

`eq[1, A289025(n+1)]+1`
-/

namespace A289027.P15050886297805489585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289027.P15050886297805489585

/-! ## A289027.P13762672647574975000

`comp[A289026(n+1)-1]+1`
-/

namespace A289027.P13762672647574975000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289026 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289027.P13762672647574975000

/-! ## A289027.P13647736912530929676

`lt[0, A289025(abs(1-n)+1)]`
-/

namespace A289027.P13647736912530929676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289027.P13647736912530929676

/-! ## A289027.P3408171967782878754

`record[(n+3)*A289025(n+3)]`
-/

namespace A289027.P3408171967782878754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289025 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289027.P3408171967782878754

/-! ## A289027.P13138662515599195090

`lt[A289025(n+2), A289025(n+1)]+1`
-/

namespace A289027.P13138662515599195090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289027.P13138662515599195090

/-! ## A289027.P11464639490182423069

`filter[A001953(n+1), A289025(#)]`
-/

namespace A289027.P11464639490182423069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289025 (f1 j).toNat = 1) n)

end

end A289027.P11464639490182423069

/-! ## A289027.P1346913812835212386

`filter[A097432(n+1), A289025(#)]`
-/

namespace A289027.P1346913812835212386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289025 (f1 j).toNat = 1) n)

end

end A289027.P1346913812835212386

/-! ## A289027.P3396724942804607086

`filter[A063992(n+1), A289025(#)]`
-/

namespace A289027.P3396724942804607086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289025 (f1 j).toNat = 1) n)

end

end A289027.P3396724942804607086

/-! ## A289027.P16673553998791824615

`filter[n+1, A289025(#)]`
-/

namespace A289027.P16673553998791824615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289025 (f1 j) = 1) n)

end

end A289027.P16673553998791824615

/-! ## A289027.P696521206172196409

`eq[1, A289025(A028310(n))]`
-/

namespace A289027.P696521206172196409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289027.P696521206172196409

/-! ## A289027.P11557384321184672206

`lt[A285476(n), A289025(n+1)]+1`
-/

namespace A289027.P11557384321184672206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289027.P11557384321184672206

/-! ## A289027.P7069039504360685715

`eq[1, A289025(A065033(2*n))]`
-/

namespace A289027.P7069039504360685715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289027.P7069039504360685715

/-! ## A289027.P15209410360202130270

`eq[1, A289025(A008619(A004273(n)))]`
-/

namespace A289027.P15209410360202130270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289027.P15209410360202130270

/-! ## A289027.P17022460560812324726

`eq[1, A289025(A233583(n+1))]`
-/

namespace A289027.P17022460560812324726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289027.P17022460560812324726

/-!
# A289028: Length of n-th iterate of the mapping 00->0010, 10->010, 1-->001, starting with 00.

The programs for A289028, there is no canonical definition to state claims against.
-/

/-! ## A289028.P3279964013885236346

`A289000(n)+A185284(Δ[n²])`
-/

namespace A289028.P3279964013885236346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n + A185284 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A289028.P3279964013885236346

/-! ## A289028.P11770427073930337714

`A289000(n)+A102681(A156953(n))`
-/

namespace A289028.P11770427073930337714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n + A102681 (A156953 n).toNat

end

end A289028.P11770427073930337714

/-! ## A289028.P2521778966161901740

`A289000(n)+A025469(A338586(n))`
-/

namespace A289028.P2521778966161901740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n + A025469 (A338586 n).toNat

end

end A289028.P2521778966161901740

/-! ## A289028.P5106669713890725049

`A289000(n)+A156729(A233308(n))`
-/

namespace A289028.P5106669713890725049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289000 n + A156729 (A233308 n).toNat

end

end A289028.P5106669713890725049

/-! ## A289028.P5534154042141205675

`or(A025466(A000230(n)), A289000(n))`
-/

namespace A289028.P5534154042141205675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A000230 n).toNat) (A289000 n)

end

end A289028.P5534154042141205675

/-!
# A289029: Exponents a(1), a(2), ... such that E_14, 1 - 24*q - 196632*q^2 + ... (A058550) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ... .

The programs for A289029, there is no canonical definition to state claims against.
-/

/-! ## A289029.P7920032501935676752

`A110163(n+1)+A289024(n+1)`
-/

namespace A289029.P7920032501935676752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110163 (n + 1) + A289024 (n + 1)

end

end A289029.P7920032501935676752

/-! ## A289029.P11661490304383092560

`A288851(n+1)+A288471(n+1)`
-/

namespace A289029.P11661490304383092560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288851 (n + 1) + A288471 (n + 1)

end

end A289029.P11661490304383092560

/-! ## A289029.P10914005131683141276

`A288851(n+1)+2*A110163(n+1)`
-/

namespace A289029.P10914005131683141276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288851 (n + 1) + 2 * A110163 (n + 1)

end

end A289029.P10914005131683141276

/-! ## A289029.P950275536815864063

`A289024(n+1)+A288471(n+1)/2`
-/

namespace A289029.P950275536815864063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289024 (n + 1) : ℚ) + (A288471 (n + 1) : ℚ) / 2

end

end A289029.P950275536815864063

/-!
# A289030: Number of Dyck paths having exactly n peaks in each of the levels 1,2,3 and no other peaks.

The programs for A289030, there is no canonical definition to state claims against.
-/

/-! ## A289030.P15379950229986427772

`A288972(A167614(n+2))`
-/

namespace A289030.P15379950229986427772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A167614 (n + 2)).toNat

end

end A289030.P15379950229986427772

/-! ## A289030.P7212233625564656792

`A288972(A141214(n)+6)`
-/

namespace A289030.P7212233625564656792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A141214 n + 6).toNat

end

end A289030.P7212233625564656792

/-! ## A289030.P12148239856827090645

`A288972(A052905(n)+8)`
-/

namespace A289030.P12148239856827090645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A052905 n + 8).toNat

end

end A289030.P12148239856827090645

/-! ## A289030.P140421081346270556

`A288972(A055999(n)+9)`
-/

namespace A289030.P140421081346270556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A055999 n + 9).toNat

end

end A289030.P140421081346270556

/-! ## A289030.P12240869704670716937

`A288972(eq[3, A002262(n)])`
-/

namespace A289030.P12240869704670716937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289030.P12240869704670716937

/-!
# A289031: Number of perfect matchings on n+3 edges which represent RNA secondary folding structures characterized by the Reeder and Giegerich and the Lyngso and Pedersen families, but not the family characterized by Cao and Chen.

The programs for A289031, the canonical program `A289031.P18143589707004328162` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289031 has offset 1).

The definition of A289031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289031.P18143589707004328162

`2*a(n-1)-a(n-2)+A003517(n+2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A289031

/-- `2*a(n-1)-a(n-2)+A003517(n+2)` -/
def P18143589707004328162.Spec : Prop :=
  ∀ n, P18143589707004328162.a n = A289031 (n + 1)

theorem P18143589707004328162.correct : P18143589707004328162.Spec := by
  intro n
  simp only [A289031, Nat.add_sub_cancel]

end A289031

/-! ## A289031.P16224763917573081589

`∑[∑[A003517(n+2)]]`
-/

namespace A289031.P16224763917573081589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003517 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P16224763917573081589

namespace A289031

/-- `∑[∑[A003517(n+2)]]` -/
def P16224763917573081589.Spec : Prop :=
  ∀ n, P16224763917573081589.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P13734547964018654250

`∑[∑[∑[A026017(n+2)]]]`
-/

namespace A289031.P13734547964018654250
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026017 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P13734547964018654250

namespace A289031

/-- `∑[∑[∑[A026017(n+2)]]]` -/
def P13734547964018654250.Spec : Prop :=
  ∀ n, P13734547964018654250.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P14739375750305037268

`∑[∑[A000344(n+3)-A002057(n+1)]]`
-/

namespace A289031.P14739375750305037268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3) - A002057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P14739375750305037268

namespace A289031

/-- `∑[∑[A000344(n+3)-A002057(n+1)]]` -/
def P14739375750305037268.Spec : Prop :=
  ∀ n, P14739375750305037268.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P16028895400660161274

`∑[∑[A050166(∑[n+3])]]`
-/

namespace A289031.P16028895400660161274
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P16028895400660161274

namespace A289031

/-- `∑[∑[A050166(∑[n+3])]]` -/
def P16028895400660161274.Spec : Prop :=
  ∀ n, P16028895400660161274.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P112222801211756050

`∑[∑[A009766(A055999(n+3))]]`
-/

namespace A289031.P112222801211756050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A055999 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P112222801211756050

namespace A289031

/-- `∑[∑[A009766(A055999(n+3))]]` -/
def P112222801211756050.Spec : Prop :=
  ∀ n, P112222801211756050.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P11895626518675760791

`∑[∑[A106566(A000096(n+5)+7)]]`
-/

namespace A289031.P11895626518675760791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A000096 (n + 5) + 7).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P11895626518675760791

namespace A289031

/-- `∑[∑[A106566(A000096(n+5)+7)]]` -/
def P11895626518675760791.Spec : Prop :=
  ∀ n, P11895626518675760791.a n = A289031 (n + 1)

end A289031

/-! ## A289031.P15091007560783769822

`∑[∑[A009766(A000217(n+6)-6)]]`
-/

namespace A289031.P15091007560783769822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000217 (n + 6) - 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289031.P15091007560783769822

namespace A289031

/-- `∑[∑[A009766(A000217(n+6)-6)]]` -/
def P15091007560783769822.Spec : Prop :=
  ∀ n, P15091007560783769822.a n = A289031 (n + 1)

end A289031

/-!
# A289034: Fixed point of the morphism 0->010, 1->10 starting with 1.

The programs for A289034, the canonical program `A289034.P3101325627668885776` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289034 has offset 1).

The definition of A289034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289034.P7731708086537816211

`char[ceil(n*ϕ²)]`
-/

namespace A289034.P7731708086537816211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289034.P7731708086537816211

namespace A289034

/-- `char[ceil(n*ϕ²)]` -/
def P7731708086537816211.Spec : Prop :=
  ∀ n, (P7731708086537816211.a n : ℤ) = A289034 (n + 1)

end A289034

/-! ## A289034.P3748853704073446719

`Δ[ceil(ϕ*(n-1))]%2`
-/

namespace A289034.P3748853704073446719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A289034.P3748853704073446719

namespace A289034

/-- `Δ[ceil(ϕ*(n-1))]%2` -/
def P3748853704073446719.Spec : Prop :=
  ∀ n, P3748853704073446719.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P16141785304730768646

`and(1, Δ[floor(ϕ*(1-n))])`
-/

namespace A289034.P16141785304730768646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (1 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A289034.P16141785304730768646

namespace A289034

/-- `and(1, Δ[floor(ϕ*(1-n))])` -/
def P16141785304730768646.Spec : Prop :=
  ∀ n, P16141785304730768646.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P2283974048919424320

`xor(1, Δ[ceil((n-1)/ϕ)])`
-/

namespace A289034.P2283974048919424320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A289034.P2283974048919424320

namespace A289034

/-- `xor(1, Δ[ceil((n-1)/ϕ)])` -/
def P2283974048919424320.Spec : Prop :=
  ∀ n, P2283974048919424320.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P91816640265440760

`a(Δ[floor((n-1)/ϕ)])` with `a(0)=1, a(1)=0`
-/

namespace A289034.P91816640265440760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A289034.P91816640265440760

namespace A289034

/-- `a(Δ[floor((n-1)/ϕ)])` -/
def P91816640265440760.Spec : Prop :=
  ∀ n, (P91816640265440760.a n : ℤ) = A289034 (n + 1)

end A289034

/-! ## A289034.P12511328121431913109

`2-Δ[ceil(ϕ*(n-1))]!`
-/

namespace A289034.P12511328121431913109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A289034.P12511328121431913109

namespace A289034

/-- `2-Δ[ceil(ϕ*(n-1))]!` -/
def P12511328121431913109.Spec : Prop :=
  ∀ n, P12511328121431913109.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P11265036667809127001

`dr(1-Δ[ceil((n-1)/ϕ)])`
-/

namespace A289034.P11265036667809127001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - (f1 (n + 1) - f1 n))

end

end A289034.P11265036667809127001

namespace A289034

/-- `dr(1-Δ[ceil((n-1)/ϕ)])` -/
def P11265036667809127001.Spec : Prop :=
  ∀ n, (P11265036667809127001.a n : ℤ) = A289034 (n + 1)

end A289034

/-! ## A289034.P14806280796990081159

`log2(gcd(2, Δ[ceil((n-1)/ϕ)]))`
-/

namespace A289034.P14806280796990081159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (f1 (n + 1) - f1 n) : ℝ)

end

end A289034.P14806280796990081159

namespace A289034

/-- `log2(gcd(2, Δ[ceil((n-1)/ϕ)]))` -/
def P14806280796990081159.Spec : Prop :=
  ∀ n, P14806280796990081159.a n = (A289034 (n + 1) : ℝ)

end A289034

/-! ## A289034.P4719875113157794189

`and(1, Δ[floor((n-1)/ϕ²)])²`
-/

namespace A289034.P4719875113157794189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) ^ 2

end

end A289034.P4719875113157794189

namespace A289034

/-- `and(1, Δ[floor((n-1)/ϕ²)])²` -/
def P4719875113157794189.Spec : Prop :=
  ∀ n, P4719875113157794189.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P17317418843781058016

`Δ[floor(lcm(2, 2*n)-ϕ*(n-1))]`
-/

namespace A289034.P17317418843781058016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) - Real.goldenRatio * ((n : ℤ) - 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289034.P17317418843781058016

namespace A289034

/-- `Δ[floor(lcm(2, 2*n)-ϕ*(n-1))]` -/
def P17317418843781058016.Spec : Prop :=
  ∀ n, P17317418843781058016.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P1551016698212592278

`C(Δ[floor(2*n-(n-1)/ϕ)], 2)`
-/

namespace A289034.P1551016698212592278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - ((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A289034.P1551016698212592278

namespace A289034

/-- `C(Δ[floor(2*n-(n-1)/ϕ)], 2)` -/
def P1551016698212592278.Spec : Prop :=
  ∀ n, (P1551016698212592278.a n : ℤ) = A289034 (n + 1)

end A289034

/-! ## A289034.P6464570941836727494

`Δ[floor((n-1)/(gcd(n, n+1)+ϕ))]`
-/

namespace A289034.P6464570941836727494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / ((Nat.gcd n (n + 1) : ℝ) + Real.goldenRatio)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289034.P6464570941836727494

namespace A289034

/-- `Δ[floor((n-1)/(gcd(n, n+1)+ϕ))]` -/
def P6464570941836727494.Spec : Prop :=
  ∀ n, P6464570941836727494.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P10832788768720491946

`Δ[floor(C(n+1, n)-(n-1)/ϕ)]`
-/

namespace A289034.P10832788768720491946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) - ((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289034.P10832788768720491946

namespace A289034

/-- `Δ[floor(C(n+1, n)-(n-1)/ϕ)]` -/
def P10832788768720491946.Spec : Prop :=
  ∀ n, P10832788768720491946.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P3101325627668885776

`1-A189479(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289034

/-- `1-A189479(n+1)` -/
def P3101325627668885776.Spec : Prop :=
  ∀ n, P3101325627668885776.a n = A289034 (n + 1)

theorem P3101325627668885776.correct : P3101325627668885776.Spec := by
  intro n
  simp only [A289034, Nat.add_sub_cancel]

end A289034

/-! ## A289034.P14488818375043437234

`gcd(2, A060142(n))-1`
-/

namespace A289034.P14488818375043437234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A060142 n) : ℤ) - 1

end

end A289034.P14488818375043437234

namespace A289034

/-- `gcd(2, A060142(n))-1` -/
def P14488818375043437234.Spec : Prop :=
  ∀ n, P14488818375043437234.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P10128440283455424525

`A188433(n)-a(n-1)` with `a(0)=1`
-/

namespace A289034.P10128440283455424525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188433 n - a (n - 1)

end

end A289034.P10128440283455424525

namespace A289034

/-- `A188433(n)-a(n-1)` -/
def P10128440283455424525.Spec : Prop :=
  ∀ n, P10128440283455424525.a n = A289034 (n + 1)

end A289034

/-! ## A289034.P8384440398240041187

`log2(A000032(Δ[ceil((n-1)/ϕ)]))`
-/

namespace A289034.P8384440398240041187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000032 (f1 (n + 1) - f1 n).toNat : ℝ)

end

end A289034.P8384440398240041187

namespace A289034

/-- `log2(A000032(Δ[ceil((n-1)/ϕ)]))` -/
def P8384440398240041187.Spec : Prop :=
  ∀ n, P8384440398240041187.a n = (A289034 (n + 1) : ℝ)

end A289034

/-! ## A289034.P8575973501248242685

`A003849((2*n+1)%(n+3))`
-/

namespace A289034.P8575973501248242685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 ((2 * n + 1) % (n + 3))

end

end A289034.P8575973501248242685

namespace A289034

/-- `A003849((2*n+1)%(n+3))` -/
def P8575973501248242685.Spec : Prop :=
  ∀ n, P8575973501248242685.a n = A289034 (n + 1)

end A289034

/-!
# A289035: Fixed point of the mapping 00->0010, 01->010, 10->010, starting with 00.

The programs for A289035, the canonical program `A289035.P15604890525171698629` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289035 has offset 1).

The definition of A289035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289035.P9212849763990915607

`char[floor(n*sqrt(2))+2*(n+1)]`
-/

namespace A289035.P9212849763990915607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (2 * (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289035.P9212849763990915607

namespace A289035

/-- `char[floor(n*sqrt(2))+2*(n+1)]` -/
def P9212849763990915607.Spec : Prop :=
  ∀ n, (P9212849763990915607.a n : ℤ) = A289035 (n + 1)

end A289035

/-! ## A289035.P15604890525171698629

`A188297(n+1)-A188300(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289035

/-- `A188297(n+1)-A188300(n+1)` -/
def P15604890525171698629.Spec : Prop :=
  ∀ n, P15604890525171698629.a n = A289035 (n + 1)

theorem P15604890525171698629.correct : P15604890525171698629.Spec := by
  intro n
  simp only [A289035, Nat.add_sub_cancel]

end A289035

/-! ## A289035.P17543139872217853798

`A285073(A285077(n+1)-(n+1))`
-/

namespace A289035.P17543139872217853798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A285077 (n + 1) - (n + 1 : ℤ)).toNat

end

end A289035.P17543139872217853798

namespace A289035

/-- `A285073(A285077(n+1)-(n+1))` -/
def P17543139872217853798.Spec : Prop :=
  ∀ n, P17543139872217853798.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P17217562951405659788

`(1-A188041(n+1))*A188297(n+1)`
-/

namespace A289035.P17217562951405659788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A188041 (n + 1)) * A188297 (n + 1)

end

end A289035.P17217562951405659788

namespace A289035

/-- `(1-A188041(n+1))*A188297(n+1)` -/
def P17217562951405659788.Spec : Prop :=
  ∀ n, P17217562951405659788.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P7352286778665784583

`A166278(n+1-A083051(A183138(n+1)))`
-/

namespace A289035.P7352286778665784583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166278 ((n + 1 : ℤ) - A083051 (A183138 (n + 1)).toNat).toNat

end

end A289035.P7352286778665784583

namespace A289035

/-- `A166278(n+1-A083051(A183138(n+1)))` -/
def P7352286778665784583.Spec : Prop :=
  ∀ n, P7352286778665784583.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P6236031635148027634

`A188297(A188300(n+1)+n+1)`
-/

namespace A289035.P6236031635148027634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A188300 (n + 1) + (n + 1 : ℤ)).toNat

end

end A289035.P6236031635148027634

namespace A289035

/-- `A188297(A188300(n+1)+n+1)` -/
def P6236031635148027634.Spec : Prop :=
  ∀ n, P6236031635148027634.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P1784040821807711580

`A188041(A188041(n+1)+A003152(n+1))`
-/

namespace A289035.P1784040821807711580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A003152 (n + 1)).toNat

end

end A289035.P1784040821807711580

namespace A289035

/-- `A188041(A188041(n+1)+A003152(n+1))` -/
def P1784040821807711580.Spec : Prop :=
  ∀ n, P1784040821807711580.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P17731823908166510119

`A188041(A188041(n+1)+A186219(n+1))`
-/

namespace A289035.P17731823908166510119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186219 (n + 1)).toNat

end

end A289035.P17731823908166510119

namespace A289035

/-- `A188041(A188041(n+1)+A186219(n+1))` -/
def P17731823908166510119.Spec : Prop :=
  ∀ n, P17731823908166510119.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P12755347954830730818

`A188041(A188041(n+1)+A186221(n+1))`
-/

namespace A289035.P12755347954830730818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186221 (n + 1)).toNat

end

end A289035.P12755347954830730818

namespace A289035

/-- `A188041(A188041(n+1)+A186221(n+1))` -/
def P12755347954830730818.Spec : Prop :=
  ∀ n, P12755347954830730818.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P2608709702644068111

`A188041(A188041(n+1)+A186315(n+1))`
-/

namespace A289035.P2608709702644068111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186315 (n + 1)).toNat

end

end A289035.P2608709702644068111

namespace A289035

/-- `A188041(A188041(n+1)+A186315(n+1))` -/
def P2608709702644068111.Spec : Prop :=
  ∀ n, P2608709702644068111.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P5432997810695985718

`A188041(A188041(n+1)+A186317(n+1))`
-/

namespace A289035.P5432997810695985718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186317 (n + 1)).toNat

end

end A289035.P5432997810695985718

namespace A289035

/-- `A188041(A188041(n+1)+A186317(n+1))` -/
def P5432997810695985718.Spec : Prop :=
  ∀ n, P5432997810695985718.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P13606453665285924884

`A188041(A188041(n+1)+A186342(n+1))`
-/

namespace A289035.P13606453665285924884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186342 (n + 1)).toNat

end

end A289035.P13606453665285924884

namespace A289035

/-- `A188041(A188041(n+1)+A186342(n+1))` -/
def P13606453665285924884.Spec : Prop :=
  ∀ n, P13606453665285924884.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P12157181587709541880

`A188041(A188041(n+1)+A186344(n+1))`
-/

namespace A289035.P12157181587709541880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A188041 (n + 1) + A186344 (n + 1)).toNat

end

end A289035.P12157181587709541880

namespace A289035

/-- `A188041(A188041(n+1)+A186344(n+1))` -/
def P12157181587709541880.Spec : Prop :=
  ∀ n, P12157181587709541880.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P5922552354724481713

`A188041(A285074(n+1)+A188041(n+1))`
-/

namespace A289035.P5922552354724481713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A285074 (n + 1) + A188041 (n + 1)).toNat

end

end A289035.P5922552354724481713

namespace A289035

/-- `A188041(A285074(n+1)+A188041(n+1))` -/
def P5922552354724481713.Spec : Prop :=
  ∀ n, P5922552354724481713.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P5225883980452754729

`A188041(A285077(n+1)+A188041(n+1))`
-/

namespace A289035.P5225883980452754729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (A285077 (n + 1) + A188041 (n + 1)).toNat

end

end A289035.P5225883980452754729

namespace A289035

/-- `A188041(A285077(n+1)+A188041(n+1))` -/
def P5225883980452754729.Spec : Prop :=
  ∀ n, P5225883980452754729.a n = A289035 (n + 1)

end A289035

/-! ## A289035.P7933048994881653337

`A285073(A248183(n+2))`
-/

namespace A289035.P7933048994881653337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A248183 (n + 2)).toNat

end

end A289035.P7933048994881653337

namespace A289035

/-- `A285073(A248183(n+2))` -/
def P7933048994881653337.Spec : Prop :=
  ∀ n, P7933048994881653337.a n = A289035 (n + 1)

end A289035

/-!
# A289036: Positions of 0 in A289035; complement of A289037.

The programs for A289036, the canonical program `A289036.P1852993708503875542` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289036 has offset 1).

The definition of A289036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289036.P1852993708503875542

`2-floor((1-n)*sqrt(2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A289036

/-- `2-floor((1-n)*sqrt(2))` -/
def P1852993708503875542.Spec : Prop :=
  ∀ n, P1852993708503875542.a n = A289036 (n + 1)

theorem P1852993708503875542.correct : P1852993708503875542.Spec := by
  intro n
  simp only [A289036, Nat.add_sub_cancel]

end A289036

/-! ## A289036.P5626459156181160216

`∑[(char[floor(n*sqrt(2))+2+n]+1)%7]`
-/

namespace A289036.P5626459156181160216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289036.P5626459156181160216

namespace A289036

/-- `∑[(char[floor(n*sqrt(2))+2+n]+1)%7]` -/
def P5626459156181160216.Spec : Prop :=
  ∀ n, (P5626459156181160216.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P1632760314135279296

`∑[char[A285075(n+1)]+1]`
-/

namespace A289036.P1632760314135279296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289036.P1632760314135279296

namespace A289036

/-- `∑[char[A285075(n+1)]+1]` -/
def P1632760314135279296.Spec : Prop :=
  ∀ n, (P1632760314135279296.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P1982807422907289502

`comp[comp[A285074(n+1)]+n]`
-/

namespace A289036.P1982807422907289502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A289036.P1982807422907289502

namespace A289036

/-- `comp[comp[A285074(n+1)]+n]` -/
def P1982807422907289502.Spec : Prop :=
  ∀ n, (P1982807422907289502.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P13809647359908367780

`comp[comp[A049474(n)+1+n]+n]`
-/

namespace A289036.P13809647359908367780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A289036.P13809647359908367780

namespace A289036

/-- `comp[comp[A049474(n)+1+n]+n]` -/
def P13809647359908367780.Spec : Prop :=
  ∀ n, (P13809647359908367780.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P13760958921698676006

`∪[A188043(n+1), A188298(n+1)]`
-/

namespace A289036.P13760958921698676006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289036.P13760958921698676006

namespace A289036

/-- `∪[A188043(n+1), A188298(n+1)]` -/
def P13760958921698676006.Spec : Prop :=
  ∀ n, (P13760958921698676006.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P12996697454188044319

`∪[A188298(n+1), A188302(n+1)]`
-/

namespace A289036.P12996697454188044319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289036.P12996697454188044319

namespace A289036

/-- `∪[A188298(n+1), A188302(n+1)]` -/
def P12996697454188044319.Spec : Prop :=
  ∀ n, (P12996697454188044319.a n : ℤ) = A289036 (n + 1)

end A289036

/-! ## A289036.P2520548576096611438

`record[A188321(n+2)+n-A157928(n)]`
-/

namespace A289036.P2520548576096611438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (n + 2) + (n : ℤ) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289036.P2520548576096611438

namespace A289036

/-- `record[A188321(n+2)+n-A157928(n)]` -/
def P2520548576096611438.Spec : Prop :=
  ∀ n, P2520548576096611438.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P5717966628041461723

`record[A049474(n)+A040001(n)]`
-/

namespace A289036.P5717966628041461723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 n + A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289036.P5717966628041461723

namespace A289036

/-- `record[A049474(n)+A040001(n)]` -/
def P5717966628041461723.Spec : Prop :=
  ∀ n, P5717966628041461723.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P6076948613744135899

`A195119(A086377(n+1)-A285073(n+1))`
-/

namespace A289036.P6076948613744135899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A086377 (n + 1) - A285073 (n + 1)).toNat

end

end A289036.P6076948613744135899

namespace A289036

/-- `A195119(A086377(n+1)-A285073(n+1))` -/
def P6076948613744135899.Spec : Prop :=
  ∀ n, P6076948613744135899.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P14205475642548613390

`A195119(A285078(n+1)-A285073(n+1))`
-/

namespace A289036.P14205475642548613390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A285078 (n + 1) - A285073 (n + 1)).toNat

end

end A289036.P14205475642548613390

namespace A289036

/-- `A195119(A285078(n+1)-A285073(n+1))` -/
def P14205475642548613390.Spec : Prop :=
  ∀ n, P14205475642548613390.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P2951837313158662941

`record[A188299(n+1)-A286687(n+1)]`
-/

namespace A289036.P2951837313158662941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1) - A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289036.P2951837313158662941

namespace A289036

/-- `record[A188299(n+1)-A286687(n+1)]` -/
def P2951837313158662941.Spec : Prop :=
  ∀ n, P2951837313158662941.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P5011976553326848514

`record[A001952(A049472(n+1)+1)-2*(n+1)]`
-/

namespace A289036.P5011976553326848514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A049472 (n + 1) + 1).toNat - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289036.P5011976553326848514

namespace A289036

/-- `record[A001952(A049472(n+1)+1)-2*(n+1)]` -/
def P5011976553326848514.Spec : Prop :=
  ∀ n, P5011976553326848514.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P10643471889016061784

`record[A065475(A007069(n+1))-A001951(n)]`
-/

namespace A289036.P10643471889016061784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007069 (n + 1)).toNat - A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289036.P10643471889016061784

namespace A289036

/-- `record[A065475(A007069(n+1))-A001951(n)]` -/
def P10643471889016061784.Spec : Prop :=
  ∀ n, P10643471889016061784.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P9061948935561006813

`A195119(record[A294180(2*n+1)+n]-A285073(n+1))`
-/

namespace A289036.P9061948935561006813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A285073 (n + 1)).toNat

end

end A289036.P9061948935561006813

namespace A289036

/-- `A195119(record[A294180(2*n+1)+n]-A285073(n+1))` -/
def P9061948935561006813.Spec : Prop :=
  ∀ n, P9061948935561006813.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P6824596699873384374

`and(A140253(2*n+1), A210357(2*n+1))`
-/

namespace A289036.P6824596699873384374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140253 (2 * n + 1)) (A210357 (2 * n + 1))

end

end A289036.P6824596699873384374

namespace A289036

/-- `and(A140253(2*n+1), A210357(2*n+1))` -/
def P6824596699873384374.Spec : Prop :=
  ∀ n, P6824596699873384374.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P576400518362265535

`A210357(2*n+1)%A349324(A067059(n))`
-/

namespace A289036.P576400518362265535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210357 (2 * n + 1)) (A349324 (A067059 n).toNat)

end

end A289036.P576400518362265535

namespace A289036

/-- `A210357(2*n+1)%A349324(A067059(n))` -/
def P576400518362265535.Spec : Prop :=
  ∀ n, P576400518362265535.a n = A289036 (n + 1)

end A289036

/-! ## A289036.P6446105844106748535

`A055086(A024401(n+1))`
-/

namespace A289036.P6446105844106748535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A024401 (n + 1)).toNat

end

end A289036.P6446105844106748535

namespace A289036

/-- `A055086(A024401(n+1))` -/
def P6446105844106748535.Spec : Prop :=
  ∀ n, P6446105844106748535.a n = A289036 (n + 1)

end A289036

/-!
# A289037: Positions of 1 in A289035; complement of A289036.

The programs for A289037, the canonical program `A289037.P8224787134129977398` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289037 has offset 1).

The definition of A289037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289037.P16955818112106603911

`comp[ceil(n*sqrt(2))]+2`
-/

namespace A289037.P16955818112106603911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A289037.P16955818112106603911

namespace A289037

/-- `comp[ceil(n*sqrt(2))]+2` -/
def P16955818112106603911.Spec : Prop :=
  ∀ n, (P16955818112106603911.a n : ℤ) = A289037 (n + 1)

end A289037

/-! ## A289037.P8475433407537456557

`A000027(comp[floor((n+1)*sqrt(2))]+3)`
-/

namespace A289037.P8475433407537456557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A289037.P8475433407537456557

namespace A289037

/-- `A000027(comp[floor((n+1)*sqrt(2))]+3)` -/
def P8475433407537456557.Spec : Prop :=
  ∀ n, P8475433407537456557.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P8224787134129977398

`∑[A276864(A028310(n))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A289037

/-- `∑[A276864(A028310(n))]` -/
def P8224787134129977398.Spec : Prop :=
  ∀ n, P8224787134129977398.a n = A289037 (n + 1)

theorem P8224787134129977398.correct : P8224787134129977398.Spec := by
  intro n
  simp only [A289037, Nat.add_sub_cancel]

end A289037

/-! ## A289037.P203313288814243581

`A188299(A001951(n)+1)`
-/

namespace A289037.P203313288814243581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (A001951 n + 1).toNat

end

end A289037.P203313288814243581

namespace A289037

/-- `A188299(A001951(n)+1)` -/
def P203313288814243581.Spec : Prop :=
  ∀ n, P203313288814243581.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P8238328778932491297

`A188299(A049472(2*n)+1)`
-/

namespace A289037.P8238328778932491297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (A049472 (2 * n) + 1).toNat

end

end A289037.P8238328778932491297

namespace A289037

/-- `A188299(A049472(2*n)+1)` -/
def P8238328778932491297.Spec : Prop :=
  ∀ n, P8238328778932491297.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P538669181984082597

`A188299(A188298(2*n+1)-2*n)`
-/

namespace A289037.P538669181984082597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (A188298 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A289037.P538669181984082597

namespace A289037

/-- `A188299(A188298(2*n+1)-2*n)` -/
def P538669181984082597.Spec : Prop :=
  ∀ n, P538669181984082597.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P14804207545415590166

`A001953(A285075(n+1))`
-/

namespace A289037.P14804207545415590166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A285075 (n + 1)).toNat

end

end A289037.P14804207545415590166

namespace A289037

/-- `A001953(A285075(n+1))` -/
def P14804207545415590166.Spec : Prop :=
  ∀ n, P14804207545415590166.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P9141583284517995644

`A087057(A336109(2*(n+1)))`
-/

namespace A289037.P9141583284517995644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (A336109 (2 * (n + 1))).toNat

end

end A289037.P9141583284517995644

namespace A289037

/-- `A087057(A336109(2*(n+1)))` -/
def P9141583284517995644.Spec : Prop :=
  ∀ n, P9141583284517995644.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P14626722337724374366

`A001953(A001951(n)+2+n)`
-/

namespace A289037.P14626722337724374366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A001951 n + 2 + (n : ℤ)).toNat

end

end A289037.P14626722337724374366

namespace A289037

/-- `A001953(A001951(n)+2+n)` -/
def P14626722337724374366.Spec : Prop :=
  ∀ n, P14626722337724374366.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P12338013705178683465

`A087057(A001951(n)+2+n)`
-/

namespace A289037.P12338013705178683465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (A001951 n + 2 + (n : ℤ)).toNat

end

end A289037.P12338013705178683465

namespace A289037

/-- `A087057(A001951(n)+2+n)` -/
def P12338013705178683465.Spec : Prop :=
  ∀ n, P12338013705178683465.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P13288948363497050236

`A097432(A001951(n)+n+2)`
-/

namespace A289037.P13288948363497050236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097432 (A001951 n + (n + 2 : ℤ)).toNat

end

end A289037.P13288948363497050236

namespace A289037

/-- `A097432(A001951(n)+n+2)` -/
def P13288948363497050236.Spec : Prop :=
  ∀ n, P13288948363497050236.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P17984282361136163158

`A184117(A001951(n)+3+n)`
-/

namespace A289037.P17984282361136163158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (A001951 n + 3 + (n : ℤ)).toNat

end

end A289037.P17984282361136163158

namespace A289037

/-- `A184117(A001951(n)+3+n)` -/
def P17984282361136163158.Spec : Prop :=
  ∀ n, P17984282361136163158.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P11949326599793085110

`A001953(A049472(2*n)+n+2)`
-/

namespace A289037.P11949326599793085110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A049472 (2 * n) + (n + 2 : ℤ)).toNat

end

end A289037.P11949326599793085110

namespace A289037

/-- `A001953(A049472(2*n)+n+2)` -/
def P11949326599793085110.Spec : Prop :=
  ∀ n, P11949326599793085110.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P11398667315844073452

`A087057(A049472(2*n)+n+2)`
-/

namespace A289037.P11398667315844073452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (A049472 (2 * n) + (n + 2 : ℤ)).toNat

end

end A289037.P11398667315844073452

namespace A289037

/-- `A087057(A049472(2*n)+n+2)` -/
def P11398667315844073452.Spec : Prop :=
  ∀ n, P11398667315844073452.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P2904480161713894500

`A097432(A049472(2*n)+n+2)`
-/

namespace A289037.P2904480161713894500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097432 (A049472 (2 * n) + (n + 2 : ℤ)).toNat

end

end A289037.P2904480161713894500

namespace A289037

/-- `A097432(A049472(2*n)+n+2)` -/
def P2904480161713894500.Spec : Prop :=
  ∀ n, P2904480161713894500.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P5481380971069901083

`∩[A188042(n+1), A188299(n+1)]`
-/

namespace A289037.P5481380971069901083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289037.P5481380971069901083

namespace A289037

/-- `∩[A188042(n+1), A188299(n+1)]` -/
def P5481380971069901083.Spec : Prop :=
  ∀ n, (P5481380971069901083.a n : ℤ) = A289037 (n + 1)

end A289037

/-! ## A289037.P2139541667881957644

`A188301(3*(n+1))`
-/

namespace A289037.P2139541667881957644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (3 * (n + 1))

end

end A289037.P2139541667881957644

namespace A289037

/-- `A188301(3*(n+1))` -/
def P2139541667881957644.Spec : Prop :=
  ∀ n, P2139541667881957644.a n = A289037 (n + 1)

end A289037

/-! ## A289037.P9527908563669678866

`∩[A188299(n+1), A188301(n+1)]`
-/

namespace A289037.P9527908563669678866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289037.P9527908563669678866

namespace A289037

/-- `∩[A188299(n+1), A188301(n+1)]` -/
def P9527908563669678866.Spec : Prop :=
  ∀ n, (P9527908563669678866.a n : ℤ) = A289037 (n + 1)

end A289037

/-! ## A289037.P1804146647239028939

`filter[n+1, A289035(#)]`
-/

namespace A289037.P1804146647239028939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289035 (f1 j) = 1) n)

end

end A289037.P1804146647239028939

namespace A289037

/-- `filter[n+1, A289035(#)]` -/
def P1804146647239028939.Spec : Prop :=
  ∀ n, (P1804146647239028939.a n : ℤ) = A289037 (n + 1)

end A289037

/-! ## A289037.P7160679491167801095

`record[(n+3)*A036694(n+1)%2]`
-/

namespace A289037.P7160679491167801095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * Int.tmod (A036694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289037.P7160679491167801095

namespace A289037

/-- `record[(n+3)*A036694(n+1)%2]` -/
def P7160679491167801095.Spec : Prop :=
  ∀ n, P7160679491167801095.a n = A289037 (n + 1)

end A289037

/-!
# A289038: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A289038, there is no canonical definition to state claims against.
-/

/-! ## A289038.P6398830825409987087

`A007088(A289040(n))`
-/

namespace A289038.P6398830825409987087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289040 n).toNat

end

end A289038.P6398830825409987087

/-! ## A289038.P3922348789413655955

`A007088(A095121(n)+1-A288052(n))`
-/

namespace A289038.P3922348789413655955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288052 n)).toNat

end

end A289038.P3922348789413655955

/-! ## A289038.P16114738089621308255

`A007088(1-(A288052(n)-A095121(n)))`
-/

namespace A289038.P16114738089621308255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288052 n - A095121 n)).toNat

end

end A289038.P16114738089621308255

/-! ## A289038.P10287138210144382887

`A007088(A288053(n)+A289041(n)-A288052(n))`
-/

namespace A289038.P10287138210144382887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288053 n + (A289041 n - A288052 n)).toNat

end

end A289038.P10287138210144382887

/-! ## A289038.P3448001219737890056

`A007088(A288505(n)+A288905(n)-A288052(n))`
-/

namespace A289038.P3448001219737890056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288505 n + (A288905 n - A288052 n)).toNat

end

end A289038.P3448001219737890056

/-!
# A289039: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A289039, there is no canonical definition to state claims against.
-/

/-! ## A289039.P4284560296955514262

`A007088(A289041(n))`
-/

namespace A289039.P4284560296955514262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289041 n).toNat

end

end A289039.P4284560296955514262

/-! ## A289039.P4580455390723139974

`A007088(A095121(n)+1-A288053(n))`
-/

namespace A289039.P4580455390723139974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288053 n)).toNat

end

end A289039.P4580455390723139974

/-! ## A289039.P11627394167533625846

`A007088(1-(A288053(n)-A095121(n)))`
-/

namespace A289039.P11627394167533625846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288053 n - A095121 n)).toNat

end

end A289039.P11627394167533625846

/-! ## A289039.P13946915732050156032

`A007088(A288052(n)+A289040(n)-A288053(n))`
-/

namespace A289039.P13946915732050156032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n + (A289040 n - A288053 n)).toNat

end

end A289039.P13946915732050156032

/-! ## A289039.P10031596516708682715

`A007088(A288505(n)+A288905(n)-A288053(n))`
-/

namespace A289039.P10031596516708682715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288505 n + (A288905 n - A288053 n)).toNat

end

end A289039.P10031596516708682715

/-!
# A289040: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A289040, there is no canonical definition to state claims against.
-/

/-! ## A289040.P9147791652926922602

`A095121(n)+1-A288052(n)`
-/

namespace A289040.P9147791652926922602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288052 n)

end

end A289040.P9147791652926922602

/-! ## A289040.P2194277962838855112

`A052955(A004277(n))-A288052(n)`
-/

namespace A289040.P2194277962838855112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288052 n

end

end A289040.P2194277962838855112

/-! ## A289040.P12332893092370224847

`A288053(n)+A289041(n)-A288052(n)`
-/

namespace A289040.P12332893092370224847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A288052 n)

end

end A289040.P12332893092370224847

/-! ## A289040.P9461330278772412002

`A288505(n)+A288905(n)-A288052(n)`
-/

namespace A289040.P9461330278772412002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A288052 n)

end

end A289040.P9461330278772412002

/-! ## A289040.P1457022983378614105

`A288506(n)+A288906(n)-A288052(n)`
-/

namespace A289040.P1457022983378614105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A288052 n)

end

end A289040.P1457022983378614105

/-!
# A289041: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A289041, there is no canonical definition to state claims against.
-/

/-! ## A289041.P13715547178302255641

`A095121(n)+1-A288053(n)`
-/

namespace A289041.P13715547178302255641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288053 n)

end

end A289041.P13715547178302255641

/-! ## A289041.P12382895510553360404

`A052955(A004277(n))-A288053(n)`
-/

namespace A289041.P12382895510553360404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288053 n

end

end A289041.P12382895510553360404

/-! ## A289041.P4661214782265550273

`A288052(n)+A289040(n)-A288053(n)`
-/

namespace A289041.P4661214782265550273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A288053 n)

end

end A289041.P4661214782265550273

/-! ## A289041.P1254891124500612219

`A288505(n)+A288905(n)-A288053(n)`
-/

namespace A289041.P1254891124500612219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A288053 n)

end

end A289041.P1254891124500612219

/-! ## A289041.P14666510454764465861

`A288506(n)+A288906(n)-A288053(n)`
-/

namespace A289041.P14666510454764465861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A288053 n)

end

end A289041.P14666510454764465861

/-!
# A289042: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A289042, there is no canonical definition to state claims against.
-/

/-! ## A289042.P10853704245638068215

`A007088(A289044(n))`
-/

namespace A289042.P10853704245638068215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289044 n).toNat

end

end A289042.P10853704245638068215

/-! ## A289042.P12071453495720506783

`∏{e}[3^n, A289879(#)]`
-/

namespace A289042.P12071453495720506783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A289879 (Nat.factorization (f1 n) p)

end

end A289042.P12071453495720506783

/-! ## A289042.P13063706507360843280

`A305989(A289045(n))`
-/

namespace A289042.P13063706507360843280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289045 n).toNat

end

end A289042.P13063706507360843280

/-! ## A289042.P11547488236327974320

`A305989(A289882(n))`
-/

namespace A289042.P11547488236327974320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289882 n).toNat

end

end A289042.P11547488236327974320

/-! ## A289042.P8980891904989052524

`A289879(A163352(∑[n]))`
-/

namespace A289042.P8980891904989052524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289879 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289042.P8980891904989052524

/-!
# A289043: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A289043, there is no canonical definition to state claims against.
-/

/-! ## A289043.P13507086052908576501

`A007088(A289045(n))`
-/

namespace A289043.P13507086052908576501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289045 n).toNat

end

end A289043.P13507086052908576501

/-! ## A289043.P6584275404652843429

`∏{e}[3^n, A289880(#)]`
-/

namespace A289043.P6584275404652843429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A289880 (Nat.factorization (f1 n) p)

end

end A289043.P6584275404652843429

/-! ## A289043.P14620499266529254656

`A305989(A289044(n))`
-/

namespace A289043.P14620499266529254656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289044 n).toNat

end

end A289043.P14620499266529254656

/-! ## A289043.P10152076206468165696

`A305989(A289881(n))`
-/

namespace A289043.P10152076206468165696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289881 n).toNat

end

end A289043.P10152076206468165696

/-! ## A289043.P18069426802263527651

`A289880(A163352(∑[n]))`
-/

namespace A289043.P18069426802263527651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289880 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A289043.P18069426802263527651

/-!
# A289044: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A289044, there is no canonical definition to state claims against.
-/

/-! ## A289044.P3574905020503451672

`A057889(A289045(n))`
-/

namespace A289044.P3574905020503451672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289045 n).toNat

end

end A289044.P3574905020503451672

/-! ## A289044.P1824747740444166887

`∏{e}[3^n, A289881(#)]`
-/

namespace A289044.P1824747740444166887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A289881 (Nat.factorization (f1 n) p)

end

end A289044.P1824747740444166887

/-! ## A289044.P14502019189057934564

`A004151(A289881(n))`
-/

namespace A289044.P14502019189057934564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A289881 n).toNat

end

end A289044.P14502019189057934564

/-! ## A289044.P10672552199394855326

`A030101(A289882(n))`
-/

namespace A289044.P10672552199394855326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289882 n).toNat

end

end A289044.P10672552199394855326

/-! ## A289044.P11663438268275304921

`A289881(A004896(n+1))`
-/

namespace A289044.P11663438268275304921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289881 (A004896 (n + 1)).toNat

end

end A289044.P11663438268275304921

/-!
# A289045: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 539", based on the 5-celled von Neumann neighborhood.

The programs for A289045, there is no canonical definition to state claims against.
-/

/-! ## A289045.P1612756705881571114

`A057889(A289044(n))`
-/

namespace A289045.P1612756705881571114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289044 n).toNat

end

end A289045.P1612756705881571114

/-! ## A289045.P6219291545391137948

`A325401(or(1, A289044(n)))`
-/

namespace A289045.P6219291545391137948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A289044 n)).toNat

end

end A289045.P6219291545391137948

/-! ## A289045.P15904692263516135937

`A325401(floor(A289044(n)+acot(n)))`
-/

namespace A289045.P15904692263516135937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 ⌊(A289044 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A289045.P15904692263516135937

/-! ## A289045.P5630775509409554202

`A325401(lcm((-1)^n, A289044(n)))`
-/

namespace A289045.P5630775509409554202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm ((-1) ^ n) (A289044 n))

end

end A289045.P5630775509409554202

/-! ## A289045.P3956882753886355644

`A325401(A289044(n)+A000007(n))`
-/

namespace A289045.P3956882753886355644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289044 n + A000007 n).toNat

end

end A289045.P3956882753886355644

/-!
# A289046: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A289046, there is no canonical definition to state claims against.
-/

/-! ## A289046.P16521987635501548044

`A007088(A289048(n))`
-/

namespace A289046.P16521987635501548044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289048 n).toNat

end

end A289046.P16521987635501548044

/-!
# A289047: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A289047, there is no canonical definition to state claims against.
-/

/-! ## A289047.P14008636784256855126

`A007088(A289049(n))`
-/

namespace A289047.P14008636784256855126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289049 n).toNat

end

end A289047.P14008636784256855126

/-! ## A289047.P631459287857094860

`A305989(A289048(n))`
-/

namespace A289047.P631459287857094860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289048 n).toNat

end

end A289047.P631459287857094860

/-! ## A289047.P8928190316366278079

`A185544(2*A289049(n))`
-/

namespace A289047.P8928190316366278079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289049 n).toNat

end

end A289047.P8928190316366278079

/-! ## A289047.P3642884172681843854

`A185544(lcm(2, A289049(n)))`
-/

namespace A289047.P3642884172681843854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289049 n))

end

end A289047.P3642884172681843854

/-!
# A289048: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A289048, there is no canonical definition to state claims against.
-/

/-! ## A289048.P2785767725408892258

`A309767(A213000(n))+A288979(n)`
-/

namespace A289048.P2785767725408892258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309767 (A213000 n).toNat + A288979 n

end

end A289048.P2785767725408892258

/-!
# A289049: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 541", based on the 5-celled von Neumann neighborhood.

The programs for A289049, there is no canonical definition to state claims against.
-/

/-! ## A289049.P15709801826151733760

`A325401(A289048(n))`
-/

namespace A289049.P15709801826151733760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289048 n).toNat

end

end A289049.P15709801826151733760

/-! ## A289049.P3613103036196746767

`A281589(2*A289048(n))`
-/

namespace A289049.P3613103036196746767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A289048 n).toNat

end

end A289049.P3613103036196746767

/-! ## A289049.P12052975081388165083

`A030101(lcm(2, A289048(n)))`
-/

namespace A289049.P12052975081388165083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A289048 n))

end

end A289049.P12052975081388165083

/-! ## A289049.P10444078053960263756

`A030101(A289048(round(sqrt(n²+1))))`
-/

namespace A289049.P10444078053960263756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289048 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A289049.P10444078053960263756

/-! ## A289049.P16122476018130840511

`A030101(A289048(n)%(7*6^n))`
-/

namespace A289049.P16122476018130840511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.tmod (A289048 n) (7 * 6 ^ n : ℤ)).toNat

end

end A289049.P16122476018130840511

/-!
# A289052: a(1) = 1; a(n) = a(n-A006530(n-1)) + 1 for n > 1.

The programs for A289052, the canonical program `A289052.P122631715072368316` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289052 has offset 1).

The definition of A289052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289052.P122631715072368316

`a(n-A006530(n))+1` with `a(0)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A289052

/-- `a(n-A006530(n))+1` -/
def P122631715072368316.Spec : Prop :=
  ∀ n, (P122631715072368316.a n : ℤ) = A289052 (n + 1)

theorem P122631715072368316.correct : P122631715072368316.Spec := by
  intro n
  simp only [A289052, Nat.add_sub_cancel]

end A289052

/-! ## A289052.P2447128282268373649

`A309892(n)+1`
-/

namespace A289052.P2447128282268373649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 n + 1

end

end A289052.P2447128282268373649

namespace A289052

/-- `A309892(n)+1` -/
def P2447128282268373649.Spec : Prop :=
  ∀ n, P2447128282268373649.a n = A289052 (n + 1)

end A289052

/-! ## A289052.P5727791774841468947

`a(A076563(n))+1` with `a(0)=1, a(1)=2`
-/

namespace A289052.P5727791774841468947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A076563 n).toNat + 1

end

end A289052.P5727791774841468947

namespace A289052

/-- `a(A076563(n))+1` -/
def P5727791774841468947.Spec : Prop :=
  ∀ n, (P5727791774841468947.a n : ℤ) = A289052 (n + 1)

end A289052

/-! ## A289052.P2017609699622386060

`a(n-A053585(∏{p}[n, #]))+1` with `a(0)=1, a(1)=2`
-/

namespace A289052.P2017609699622386060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n : ℤ) - A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + 1

end

end A289052.P2017609699622386060

namespace A289052

/-- `a(n-A053585(∏{p}[n, #]))+1` -/
def P2017609699622386060.Spec : Prop :=
  ∀ n, (P2017609699622386060.a n : ℤ) = A289052 (n + 1)

end A289052

/-! ## A289052.P5441495861595869594

`A000005(2^a(n-A006530(n)))` with `a(0)=1`
-/

namespace A289052.P5441495861595869594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a ((n : ℤ) - A006530 n).toNat : ℤ))).toNat

end

end A289052.P5441495861595869594

namespace A289052

/-- `A000005(2^a(n-A006530(n)))` -/
def P5441495861595869594.Spec : Prop :=
  ∀ n, P5441495861595869594.a n = A289052 (n + 1)

end A289052

/-! ## A289052.P4552918408928326111

`A000005(A000079(a(n-A006530(n))))` with `a(0)=1`
-/

namespace A289052.P4552918408928326111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A000079 (a ((n : ℤ) - A006530 n).toNat).toNat).toNat

end

end A289052.P4552918408928326111

namespace A289052

/-- `A000005(A000079(a(n-A006530(n))))` -/
def P4552918408928326111.Spec : Prop :=
  ∀ n, P4552918408928326111.a n = A289052 (n + 1)

end A289052

/-!
# A289053: Array T(i,k) read by antidiagonals: position of prime(i)*prime(k) in A001358.

The programs for A289053, there is no canonical definition to state claims against.
-/

/-! ## A289053.P4226999442349214358

`A072000(A087112(A038722(n+1)))`
-/

namespace A289053.P4226999442349214358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A087112 (A038722 (n + 1)).toNat).toNat

end

end A289053.P4226999442349214358

/-! ## A289053.P551784285913424421

`A058933(A241916(A087112(n+1)))`
-/

namespace A289053.P551784285913424421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A241916 (A087112 (n + 1)).toNat).toNat

end

end A289053.P551784285913424421

/-!
# A289054: Number of Dyck paths having exactly two peaks in each of the levels 1,...,n and no other peaks.

The programs for A289054, there is no canonical definition to state claims against.
-/

/-! ## A289054.P3419291756605160509

`A288972(∑[n+3])`
-/

namespace A289054.P3419291756605160509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289054.P3419291756605160509

/-! ## A289054.P11196021128663027549

`or(1, A288972(A141214(n)))`
-/

namespace A289054.P11196021128663027549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288972 (A141214 n).toNat)

end

end A289054.P11196021128663027549

/-! ## A289054.P10578788126204448422

`or(1, A288972(A055998(n+1)))`
-/

namespace A289054.P10578788126204448422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288972 (A055998 (n + 1)).toNat)

end

end A289054.P10578788126204448422

/-! ## A289054.P11866265093335915555

`gcd(A000038(n), A288972(A141214(n)))`
-/

namespace A289054.P11866265093335915555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288972 (A141214 n).toNat)

end

end A289054.P11866265093335915555

/-! ## A289054.P244518177440948016

`A288972(A141214(n))+A217155(n+1)`
-/

namespace A289054.P244518177440948016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (A141214 n).toNat + A217155 (n + 1)

end

end A289054.P244518177440948016

/-!
# A289055: Triangle read by rows: T(n,k) = (k+1)*A028815(n) for 0 <= k <= n.

The programs for A289055, the canonical program `A289055.P6960658718910037824` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289055 has offset 0).

The definition of A289055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289055.P10192408170591018709

`A289108(n)+1`
-/

namespace A289055.P10192408170591018709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289108 n + 1

end

end A289055.P10192408170591018709

namespace A289055

/-- `A289108(n)+1` -/
def P10192408170591018709.Spec : Prop :=
  ∀ n, P10192408170591018709.a n = A289055 n

end A289055

/-! ## A289055.P6960658718910037824

`(1-C(∑[char[∑[n]]], 2)+n)*A028815(∑[char[∑[n+1]]])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A289055

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A028815(∑[char[∑[n+1]]])` -/
def P6960658718910037824.Spec : Prop :=
  ∀ n, P6960658718910037824.a n = A289055 n

theorem P6960658718910037824.correct : P6960658718910037824.Spec := by
  intro n
  simp only [A289055]

end A289055

/-! ## A289055.P9522251177196154763

`A020725(A289108(n))`
-/

namespace A289055.P9522251177196154763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A289108 n).toNat

end

end A289055.P9522251177196154763

namespace A289055

/-- `A020725(A289108(n))` -/
def P9522251177196154763.Spec : Prop :=
  ∀ n, P9522251177196154763.a n = A289055 n

end A289055

/-! ## A289055.P7384762680903209344

`A008619(2*A289108(n))`
-/

namespace A289055.P7384762680903209344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A289108 n).toNat

end

end A289055.P7384762680903209344

namespace A289055

/-- `A008619(2*A289108(n))` -/
def P7384762680903209344.Spec : Prop :=
  ∀ n, P7384762680903209344.a n = A289055 n

end A289055

/-! ## A289055.P17077290854603463796

`A027656(2*A289108(n))`
-/

namespace A289055.P17077290854603463796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A289108 n).toNat

end

end A289055.P17077290854603463796

namespace A289055

/-- `A027656(2*A289108(n))` -/
def P17077290854603463796.Spec : Prop :=
  ∀ n, P17077290854603463796.a n = A289055 n

end A289055

/-! ## A289055.P14979120502399122696

`A028242(2*A289108(n))`
-/

namespace A289055.P14979120502399122696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A289108 n).toNat

end

end A289055.P14979120502399122696

namespace A289055

/-- `A028242(2*A289108(n))` -/
def P14979120502399122696.Spec : Prop :=
  ∀ n, P14979120502399122696.a n = A289055 n

end A289055

/-! ## A289055.P2559006133375283316

`A052938(2*A289108(n))`
-/

namespace A289055.P2559006133375283316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A289108 n).toNat

end

end A289055.P2559006133375283316

namespace A289055

/-- `A052938(2*A289108(n))` -/
def P2559006133375283316.Spec : Prop :=
  ∀ n, P2559006133375283316.a n = A289055 n

end A289055

/-! ## A289055.P3149148260706636990

`A131732(2*A289108(n))`
-/

namespace A289055.P3149148260706636990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A289108 n).toNat

end

end A289055.P3149148260706636990

namespace A289055

/-- `A131732(2*A289108(n))` -/
def P3149148260706636990.Spec : Prop :=
  ∀ n, P3149148260706636990.a n = A289055 n

end A289055

/-! ## A289055.P17176411768111143873

`A008611(3*A289108(n))`
-/

namespace A289055.P17176411768111143873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A289108 n).toNat

end

end A289055.P17176411768111143873

namespace A289055

/-- `A008611(3*A289108(n))` -/
def P17176411768111143873.Spec : Prop :=
  ∀ n, P17176411768111143873.a n = A289055 n

end A289055

/-! ## A289055.P965764523240296825

`A008620(3*A289108(n))`
-/

namespace A289055.P965764523240296825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A289108 n).toNat

end

end A289055.P965764523240296825

namespace A289055

/-- `A008620(3*A289108(n))` -/
def P965764523240296825.Spec : Prop :=
  ∀ n, P965764523240296825.a n = A289055 n

end A289055

/-!
# A289056: Near 3-perfect numbers of the form 2^a*p^t*q, where a >= 1, t = 1 or 2, p < q are both primes.

The programs for A289056, there is no canonical definition to state claims against.
-/

/-! ## A289056.P8384473066508887639

`A008864(n+1)*A258700(A204451(n))`
-/

namespace A289056.P8384473066508887639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A258700 (A204451 n).toNat

end

end A289056.P8384473066508887639

/-!
# A289057: Fixed point of the mapping 00->0010, 01->010, 10->011, starting with 00.

The programs for A289057, there is no canonical definition to state claims against.
-/

/-! ## A289057.P1840954868901626799

`char[A289059(n+1)-1]`
-/

namespace A289057.P1840954868901626799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289059 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289057.P1840954868901626799

/-! ## A289057.P14241669866891273581

`char[comp[A289058(n+1)-1]]`
-/

namespace A289057.P14241669866891273581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289057.P14241669866891273581

/-! ## A289057.P6537667658972437976

`1-char[A289058(Δ[n²]-n)-1]`
-/

namespace A289057.P6537667658972437976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289057.P6537667658972437976

/-! ## A289057.P2187977779232336614

`(1-char[A289058(xor(1, n)+1)-1])²`
-/

namespace A289057.P2187977779232336614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A289057.P2187977779232336614

/-! ## A289057.P10105597978623600148

`(1-char[A289058(abs(xor(n, -2)))-1])²`
-/

namespace A289057.P10105597978623600148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A289057.P10105597978623600148

/-! ## A289057.P11321598915920481582

`abs(char[A289058(comp[2*n]-n)-1]-1)`
-/

namespace A289057.P11321598915920481582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A289057.P11321598915920481582

/-!
# A289058: Positions of 0 in A289057; complement of A289059.

The programs for A289058, there is no canonical definition to state claims against.
-/

/-! ## A289058.P4526242160746987188

`eq[0, A289057(n+1)]+1`
-/

namespace A289058.P4526242160746987188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289058.P4526242160746987188

/-! ## A289058.P6982001925045873176

`lt[A342674(n+1), A064289(A212207(2*n+3))]`
-/

namespace A289058.P6982001925045873176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A212207 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289058.P6982001925045873176

/-! ## A289058.P11152172808830564355

`∑[A126304(A113647(n))+1]`
-/

namespace A289058.P11152172808830564355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A113647 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289058.P11152172808830564355

/-! ## A289058.P14567609419390637999

`lt[A000265(A043330(n+1)), A238659(2*n+1)]`
-/

namespace A289058.P14567609419390637999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238659 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289058.P14567609419390637999

/-!
# A289059: Positions of 1 in A289057; complement of A289058.

The programs for A289059, there is no canonical definition to state claims against.
-/

/-! ## A289059.P9347208514167762404

`comp[A289058(n+1)-1]+1`
-/

namespace A289059.P9347208514167762404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289059.P9347208514167762404

/-! ## A289059.P9131708805595726544

`filter[n+1, A289057(#)]`
-/

namespace A289059.P9131708805595726544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289057 (f1 j) = 1) n)

end

end A289059.P9131708805595726544

/-! ## A289059.P11724762988938908789

`eq[1, A289057(n+1)]+1`
-/

namespace A289059.P11724762988938908789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289059.P11724762988938908789

/-! ## A289059.P16901777090560332552

`eq[1, A289057(A028310(n))]`
-/

namespace A289059.P16901777090560332552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289059.P16901777090560332552

/-! ## A289059.P17733876129141852908

`A020725(eq[1, A289057(n+1)])`
-/

namespace A289059.P17733876129141852908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289059.P17733876129141852908

/-! ## A289059.P1198212959284375071

`A065475(eq[1, A289057(n+1)])`
-/

namespace A289059.P1198212959284375071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289059.P1198212959284375071

/-! ## A289059.P16689469798704162794

`eq[char[A289058(n+1)], A000007(n)]`
-/

namespace A289059.P16689469798704162794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289058 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289059.P16689469798704162794

/-! ## A289059.P1104922732368896173

`eq[1, A289057(A233583(n+1))]`
-/

namespace A289059.P1104922732368896173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289057 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289059.P1104922732368896173

/-!
# A289060: a(n) = 3*a(n-1) - 3*a(n-2) + *a(n-3) for n >= 8, where a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 11, a(4) = 17, a(5) = 25, a(6) = 36, a(7) = 51.

The programs for A289060, the canonical program `A289060.P10017502344991093922` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289060 has offset 0).

The definition of A289060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289060.P10017502344991093922

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=11, a(4)=17, a(5)=25, a(6)=36, a(7)=51`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A289060

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10017502344991093922.Spec : Prop :=
  ∀ n, P10017502344991093922.a n = A289060 n

theorem P10017502344991093922.correct : P10017502344991093922.Spec := by
  intro n
  simp only [A289060]

end A289060

/-! ## A289060.P10457603507382066080

`∑[A004281(A004279(n))]-A004276(n)`
-/

namespace A289060.P10457603507382066080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A004279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004276 n

end

end A289060.P10457603507382066080

namespace A289060

/-- `∑[A004281(A004279(n))]-A004276(n)` -/
def P10457603507382066080.Spec : Prop :=
  ∀ n, P10457603507382066080.a n = A289060 n

end A289060

/-! ## A289060.P13113840394950897484

`∑[A004276(A004276(n)+2)]-A004276(n)`
-/

namespace A289060.P13113840394950897484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A004276 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004276 n

end

end A289060.P13113840394950897484

namespace A289060

/-- `∑[A004276(A004276(n)+2)]-A004276(n)` -/
def P13113840394950897484.Spec : Prop :=
  ∀ n, P13113840394950897484.a n = A289060 n

end A289060

/-! ## A289060.P6907650361452031243

`∑[∑[A336005(A055876(n+1))]]+1`
-/

namespace A289060.P6907650361452031243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336005 (A055876 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289060.P6907650361452031243

namespace A289060

/-- `∑[∑[A336005(A055876(n+1))]]+1` -/
def P6907650361452031243.Spec : Prop :=
  ∀ n, P6907650361452031243.a n = A289060 n

end A289060

/-! ## A289060.P8754933406265205023

`A132018(A133263(n))+A008615(A185283(n))`
-/

namespace A289060.P8754933406265205023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132018 (A133263 n).toNat + A008615 (A185283 n).toNat

end

end A289060.P8754933406265205023

namespace A289060

/-- `A132018(A133263(n))+A008615(A185283(n))` -/
def P8754933406265205023.Spec : Prop :=
  ∀ n, P8754933406265205023.a n = A289060 n

end A289060

/-!
# A289061: a(n) = 2 * (A288851(n) - 12).

The programs for A289061, there is no canonical definition to state claims against.
-/

/-! ## A289061.P6614201400971233289

`2*(A288851(n+1)-12)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289061.P6614201400971233289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A288851 (n + 1) - 12)

end

end A289061.P6614201400971233289

/-!
# A289066: Recurrence a(n+2) = Sum_{k=0..n} binomial(n,k)*a(k)*a(n+1-k) with a(0)=3, a(1)=1.

The programs for A289066, there is no canonical definition to state claims against.
-/

/-! ## A289066.P5728809698405800993

`A355817(n+1)+A080606(A376576(n))`
-/

namespace A289066.P5728809698405800993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355817 (n + 1) + A080606 (A376576 n).toNat

end

end A289066.P5728809698405800993

/-! ## A289066.P14332099088972470322

`A337459(A000108(n))-A002808(n+1)`
-/

namespace A289066.P14332099088972470322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337459 (A000108 n).toNat - A002808 (n + 1)

end

end A289066.P14332099088972470322

/-!
# A289070: a(n) = c(2n-1), where c(n+2) = Sum_{k=0..n} binomial(n,k)c(k)c(n+1-k) with c(0)=0, c(1)=3.

The programs for A289070, there is no canonical definition to state claims against.
-/

/-! ## A289070.P6504716695023505863

`3^(n+1)*A002105(n+1)`
-/

namespace A289070.P6504716695023505863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A002105 (n + 1)

end

end A289070.P6504716695023505863

/-! ## A289070.P13159772382791983598

`A002105(n+1)*A133494(n+2)`
-/

namespace A289070.P13159772382791983598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) * A133494 (n + 2)

end

end A289070.P13159772382791983598

/-! ## A289070.P4442173886176519287

`lcm(A000244(n+1), A002105(n+1))`
-/

namespace A289070.P4442173886176519287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 (n + 1)) (A002105 (n + 1))

end

end A289070.P4442173886176519287

/-! ## A289070.P7165455881831871653

`A002105(n+1)*A257611(A000217(n+1))`
-/

namespace A289070.P7165455881831871653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) * A257611 (A000217 (n + 1)).toNat

end

end A289070.P7165455881831871653

/-! ## A289070.P14122257521226785966

`A002105(n+1)*A006899(A122437(n+2))`
-/

namespace A289070.P14122257521226785966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) * A006899 (A122437 (n + 2)).toNat

end

end A289070.P14122257521226785966

/-!
# A289071: Fixed point of the mapping 00->0010, 01->010, 10->100, starting with 00.

The programs for A289071, there is no canonical definition to state claims against.
-/

/-! ## A289071.P15991454730621476301

`char[A289073(n+1)-1]`
-/

namespace A289071.P15991454730621476301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289073 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289071.P15991454730621476301

/-! ## A289071.P13291380813986006688

`char[comp[A289072(n+1)-1]]`
-/

namespace A289071.P13291380813986006688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289072 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289071.P13291380813986006688

/-! ## A289071.P12226577239247558041

`char[A023443(A289073(n+1))]`
-/

namespace A289071.P12226577239247558041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289073 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289071.P12226577239247558041

/-! ## A289071.P10291130288990535885

`char[A023443(comp[A289072(n+1)])]`
-/

namespace A289071.P10291130288990535885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289072 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289071.P10291130288990535885

/-! ## A289071.P17645400042648807434

`A095792(Δ[char[A289073(n+1)]]+2)`
-/

namespace A289071.P17645400042648807434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289073 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A289071.P17645400042648807434

/-!
# A289072: Positions of 0 in A289071; complement of A289073.

The programs for A289072, there is no canonical definition to state claims against.
-/

/-! ## A289072.P6610606953610271319

`comp[A289073(n+1)-1]+1`
-/

namespace A289072.P6610606953610271319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289073 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289072.P6610606953610271319

/-! ## A289072.P2065064613999125491

`eq[0, A289071(n+1)]+1`
-/

namespace A289072.P2065064613999125491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289072.P2065064613999125491

/-! ## A289072.P4484845022578400159

`a(n-1)+A289071(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A289072.P4484845022578400159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A289071 (a (n - 1) + 1).toNat + 1)

end

end A289072.P4484845022578400159

/-! ## A289072.P13934149542208501197

`record[n+1-A062048(n+1)*A289071(n+1)]`
-/

namespace A289072.P13934149542208501197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062048 (n + 1) * A289071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289072.P13934149542208501197

/-! ## A289072.P10016227959297517515

`record[n+1-A288217(n+1)*A289071(n+1)]`
-/

namespace A289072.P10016227959297517515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288217 (n + 1) * A289071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289072.P10016227959297517515

/-! ## A289072.P3865830328754486981

`record[(n+1)/A062048(n*A289071(n+1)+1)]`
-/

namespace A289072.P3865830328754486981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062048 ((n : ℤ) * A289071 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289072.P3865830328754486981

/-! ## A289072.P13950732525152743128

`eq[A028310(n)-n, A289071(A028310(n))]`
-/

namespace A289072.P13950732525152743128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289072.P13950732525152743128

/-! ## A289072.P8993549944420974147

`A289071(A289036(n+1))+A289036(n+1)`
-/

namespace A289072.P8993549944420974147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (A289036 (n + 1)).toNat + A289036 (n + 1)

end

end A289072.P8993549944420974147

/-!
# A289073: Positions of 1 in A289071; complement of A289072.

The programs for A289073, there is no canonical definition to state claims against.
-/

/-! ## A289073.P10524561405017732667

`filter[n+1, A289071(#)]`
-/

namespace A289073.P10524561405017732667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289071 (f1 j) = 1) n)

end

end A289073.P10524561405017732667

/-! ## A289073.P11631383143333733837

`eq[1, A289071(n+1)]+1`
-/

namespace A289073.P11631383143333733837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289073.P11631383143333733837

/-! ## A289073.P641942885636142721

`lt[0, A289071(abs(1-n)+1)]`
-/

namespace A289073.P641942885636142721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289073.P641942885636142721

/-! ## A289073.P6278187073657576458

`eq[1, A289071(A028310(n))]`
-/

namespace A289073.P6278187073657576458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289073.P6278187073657576458

/-! ## A289073.P8296610758909814044

`A020725(eq[1, A289071(n+1)])`
-/

namespace A289073.P8296610758909814044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289073.P8296610758909814044

/-! ## A289073.P6964248511288477822

`A065475(eq[1, A289071(n+1)])`
-/

namespace A289073.P6964248511288477822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289073.P6964248511288477822

/-! ## A289073.P17345794975006671029

`lt[A285476(n), A289071(n+1)]+1`
-/

namespace A289073.P17345794975006671029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289073.P17345794975006671029

/-! ## A289073.P16469361072537537807

`eq[1, A289071(A233583(n+1))]`
-/

namespace A289073.P16469361072537537807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289071 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289073.P16469361072537537807

/-!
# A289074: Fixed point of the mapping 00->0010, 01->011, 10->100, starting with 00.

The programs for A289074, there is no canonical definition to state claims against.
-/

/-! ## A289074.P14116330487377440798

`char[A289076(n+1)-1]`
-/

namespace A289074.P14116330487377440798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289074.P14116330487377440798

/-! ## A289074.P2484518868440818476

`char[comp[A289075(n+1)-1]]`
-/

namespace A289074.P2484518868440818476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289075 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289074.P2484518868440818476

/-! ## A289074.P14178517101827076593

`char[abs(A289076(Δ[n²]-n)-1)]`
-/

namespace A289074.P14178517101827076593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A289076 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289074.P14178517101827076593

/-! ## A289074.P12748559494023477504

`1-char[A289075(xor(1, n)+1)-1]`
-/

namespace A289074.P12748559494023477504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289075 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A289074.P12748559494023477504

/-! ## A289074.P8700932102382077808

`char[record[A289076(A152271(n))-1]]`
-/

namespace A289074.P8700932102382077808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (A152271 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A289074.P8700932102382077808

/-! ## A289074.P9045407644307980883

`char[comp[A023443(A289075(n+1))]]`
-/

namespace A289074.P9045407644307980883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A289075 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A289074.P9045407644307980883

/-! ## A289074.P15741416214354169160

`A353579(Δ[comp[A289076(n+1)+n]])-1`
-/

namespace A289074.P15741416214354169160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353579 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A289074.P15741416214354169160

/-!
# A289075: Positions of 0 in A289074; complement of A289076.

The programs for A289075, there is no canonical definition to state claims against.
-/

/-! ## A289075.P1210572385646482584

`comp[A289076(n+1)-1]+1`
-/

namespace A289075.P1210572385646482584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289075.P1210572385646482584

/-! ## A289075.P5103749442582653736

`eq[0, A289074(n+1)]+1`
-/

namespace A289075.P5103749442582653736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289075.P5103749442582653736

/-! ## A289075.P13358051567932989751

`eq[char[A289076(n+1)], A000007(n)]`
-/

namespace A289075.P13358051567932989751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289075.P13358051567932989751

/-! ## A289075.P9243605748814201685

`eq[char[A289076(n+1)], A000038(n)]`
-/

namespace A289075.P9243605748814201685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A289075.P9243605748814201685

/-! ## A289075.P16400403972213158273

`eq[A000007(n), A289074(A028310(n))]`
-/

namespace A289075.P16400403972213158273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289075.P16400403972213158273

/-! ## A289075.P9000043055729400383

`eq[A000038(n), A289074(A028310(n))]`
-/

namespace A289075.P9000043055729400383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289075.P9000043055729400383

/-!
# A289076: Positions of 1 in A289074; complement of A289075.

The programs for A289076, there is no canonical definition to state claims against.
-/

/-! ## A289076.P9233846838586800506

`filter[n+1, A289074(#)]`
-/

namespace A289076.P9233846838586800506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289074 (f1 j) = 1) n)

end

end A289076.P9233846838586800506

/-! ## A289076.P678727483287120914

`eq[1, A289074(n+1)]+1`
-/

namespace A289076.P678727483287120914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289076.P678727483287120914

/-! ## A289076.P14808022243585773830

`record[(n+3)*A289074(n+3)]`
-/

namespace A289076.P14808022243585773830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A289074 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289076.P14808022243585773830

/-! ## A289076.P13759373457427662313

`eq[1, A289074(A028310(n))]`
-/

namespace A289076.P13759373457427662313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289076.P13759373457427662313

/-! ## A289076.P2938453299346900165

`A020725(eq[1, A289074(n+1)])`
-/

namespace A289076.P2938453299346900165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289076.P2938453299346900165

/-! ## A289076.P3568941747195842717

`A065475(eq[1, A289074(n+1)])`
-/

namespace A289076.P3568941747195842717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A289076.P3568941747195842717

/-! ## A289076.P12712604073809682267

`eq[1, A289074(A000038(n)+n)]`
-/

namespace A289076.P12712604073809682267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289076.P12712604073809682267

/-! ## A289076.P2935104304510180127

`eq[1, A289074(A000007(n)+n)]`
-/

namespace A289076.P2935104304510180127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289076.P2935104304510180127

/-! ## A289076.P7679699181021946368

`eq[1, A289074(A233583(n+1))]`
-/

namespace A289076.P7679699181021946368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289074 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289076.P7679699181021946368

/-!
# A289077: a(n) = 2*a(n-1) + a(n-2) - 4*a(n-3) + 2*a(n-4) + a(n-5) -2*a(n-6) + a(n-7) for n >= 7, a(0) = 2, a(1) = 4, a(2) = 7, a(3) = 11, a(4) = 18, a(5) = 30, a(6) = 47.

The programs for A289077, there is no canonical definition to state claims against.
-/

/-! ## A289077.P2822524142029699709

`A005041(A190525(n+1))`
-/

namespace A289077.P2822524142029699709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A190525 (n + 1)).toNat

end

end A289077.P2822524142029699709

/-! ## A289077.P2654395144487309875

`A265370(A265387(n+5)-n²)`
-/

namespace A289077.P2654395144487309875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A265387 (n + 5) - (n ^ 2 : ℤ)).toNat

end

end A289077.P2654395144487309875

/-! ## A289077.P11163194319582627642

`A156351(∑[A156247(a(n-1)+1)-1])` with `a(0)=4, a(1)=2`
-/

namespace A289077.P11163194319582627642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A156247 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289077.P11163194319582627642

/-! ## A289077.P10903327621108052054

`A156351(∑[A156271(a(n-1)-1)+2])` with `a(0)=4, a(1)=2`
-/

namespace A289077.P10903327621108052054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  A156271 (f1 (n - 1) - 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289077.P10903327621108052054

/-! ## A289077.P9750779237641386943

`A351596(n+1)+A078843(A076654(3*n+1))`
-/

namespace A289077.P9750779237641386943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (n + 1) + A078843 (A076654 (3 * n + 1)).toNat

end

end A289077.P9750779237641386943

/-!
# A289078: Number of orderless same-trees of weight n.

The programs for A289078, there is no canonical definition to state claims against.
-/

/-! ## A289078.P2201088430495663790

`A316790(2^(n+1))`
-/

namespace A289078.P2201088430495663790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316790 (2 ^ (n + 1))

end

end A289078.P2201088430495663790

/-! ## A289078.P6556942439748476604

`A316790(record[and(-3, 2^n)])%A014211(n)`
-/

namespace A289078.P6556942439748476604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A014211 n)

end

end A289078.P6556942439748476604

/-! ## A289078.P8448814895267681421

`A316790(A046055(n+1))+A025469(n)`
-/

namespace A289078.P8448814895267681421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316790 (A046055 (n + 1)).toNat + A025469 n

end

end A289078.P8448814895267681421

/-! ## A289078.P10763315322285989250

`A316790(A151821(n+1))+A025469(n)`
-/

namespace A289078.P10763315322285989250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316790 (A151821 (n + 1)).toNat + A025469 n

end

end A289078.P10763315322285989250

/-! ## A289078.P12467362339970302570

`A316790(A046055(n+1))+A185203(n)`
-/

namespace A289078.P12467362339970302570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316790 (A046055 (n + 1)).toNat + A185203 n

end

end A289078.P12467362339970302570

/-!
# A289079: Number of orderless same-trees of weight n with all leaves equal to 1.

The programs for A289079, there is no canonical definition to state claims against.
-/

/-! ## A289079.P16864421140216445338

`A301367(∑[n+1])`
-/

namespace A289079.P16864421140216445338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289079.P16864421140216445338

/-! ## A289079.P14559153061895704929

`or(char[1], A301367(A000217(n+1)))`
-/

namespace A289079.P14559153061895704929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301367 (A000217 (n + 1)).toNat)

end

end A289079.P14559153061895704929

/-! ## A289079.P11604519770534752415

`A301367(A000217(n+1))%A014360(n)`
-/

namespace A289079.P11604519770534752415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301367 (A000217 (n + 1)).toNat) (A014360 n)

end

end A289079.P11604519770534752415

/-! ## A289079.P1469935258131103126

`gcd(A000038(n), A301367(A000217(n+1)))`
-/

namespace A289079.P1469935258131103126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A301367 (A000217 (n + 1)).toNat)

end

end A289079.P1469935258131103126

/-! ## A289079.P12350316545879464679

`∑{d}[A301367(A000217(n+1)), A000010(#)]`
-/

namespace A289079.P12350316545879464679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301367 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A289079.P12350316545879464679

/-! ## A289079.P1604426675667465583

`A301367(A000217(n+1))+A000007(n+1)`
-/

namespace A289079.P1604426675667465583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301367 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A289079.P1604426675667465583

/-! ## A289079.P5654548442009434775

`A007318(C(2, n))*A301367(A000217(n+1))`
-/

namespace A289079.P5654548442009434775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A301367 (A000217 (n + 1)).toNat

end

end A289079.P5654548442009434775

/-! ## A289079.P1335025102089346100

`A000108(round(n/39))*A301367(A000217(n+1))`
-/

namespace A289079.P1335025102089346100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A301367 (A000217 (n + 1)).toNat

end

end A289079.P1335025102089346100

/-! ## A289079.P11462144435241209657

`A301367(A000217(n+1))+A008683(4*(n+1))`
-/

namespace A289079.P11462144435241209657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301367 (A000217 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A289079.P11462144435241209657

/-! ## A289079.P1783160137563893871

`A301367(A000217(n+1))^(A020639(A000010(n+1))-1)`
-/

namespace A289079.P1783160137563893871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301367 (A000217 (n + 1)).toNat : ℚ) ^ (A020639 (A000010 (n + 1)).toNat - 1 : ℤ)

end

end A289079.P1783160137563893871

/-!
# A289080: a(0) = 1 and a(n) = A005169(n) - A005169(n-1).

The programs for A289080, there is no canonical definition to state claims against.
-/

/-! ## A289080.P8204481062492842129

`Δ[A005169(n-a(2%n))]` with `a(0)=0`
-/

namespace A289080.P8204481062492842129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A005169 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289080.P8204481062492842129

/-! ## A289080.P13398790690169271848

`Δ[A291652(A061579(A000124(n)))]`
-/

namespace A289080.P13398790690169271848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 (A061579 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289080.P13398790690169271848

/-! ## A289080.P299040729416205406

`A005169(n)-A185646(A268581(n))`
-/

namespace A289080.P299040729416205406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 n - A185646 (A268581 n).toNat

end

end A289080.P299040729416205406

/-! ## A289080.P9750425199544729586

`Δ[A185646(A190035(n+1)+A046092(n))]`
-/

namespace A289080.P9750425199544729586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A190035 (n + 1) + A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289080.P9750425199544729586

/-! ## A289080.P14462906342047120739

`Δ[A185646(A268581(n))]`
-/

namespace A289080.P14462906342047120739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A268581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289080.P14462906342047120739

/-! ## A289080.P5467858689300358764

`Δ[A185646(Δ[A192023(n+1)])]`
-/

namespace A289080.P5467858689300358764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192023 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289080.P5467858689300358764

/-!
# A289084: Real parts of the recursive sequence a(n+2) = Sum_{k=0..n} binomial(n,k)*a(k)*a(n+1-k), with a(0)=2, a(1)=i.

The programs for A289084, there is no canonical definition to state claims against.
-/

/-! ## A289084.P577586787961148916

`A289088(n)/A010182(A286508(n))`
-/

namespace A289084.P577586787961148916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289088 n : ℚ) / (A010182 (A286508 n).toNat : ℚ)

end

end A289084.P577586787961148916

/-! ## A289084.P15211784833165360712

`A289088(n)/A055642(A167217(n+1))`
-/

namespace A289084.P15211784833165360712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289088 n : ℚ) / (A055642 (A167217 (n + 1)).toNat : ℚ)

end

end A289084.P15211784833165360712

/-!
# A289086: Real parts of the recursive sequence a(n+2) = Sum_{k=0..n} binomial(n,k)*a(k)*a(n+1-k), with a(0)=1, a(1)=2i.

The programs for A289086, there is no canonical definition to state claims against.
-/

/-! ## A289086.P5390793376378401500

`A114327(C(2^(n+1)-n, 2)-n)+n`
-/

namespace A289086.P5390793376378401500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Nat.choose ((2 ^ (n + 1) : ℤ) - (n : ℤ)).toNat 2 - n) + (n : ℤ)

end

end A289086.P5390793376378401500

/-! ## A289086.P17500132764413348988

`A114327(A006516(n+1)-2*n)`
-/

namespace A289086.P17500132764413348988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A006516 (n + 1) - (2 * n : ℤ)).toNat

end

end A289086.P17500132764413348988

/-! ## A289086.P13272349646800427587

`A005803(n)*A351023(A302705(n))`
-/

namespace A289086.P13272349646800427587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 n * A351023 (A302705 n).toNat

end

end A289086.P13272349646800427587

/-!
# A289088: Real parts of the recursive sequence a(n+2) = Sum_{k=0..n} binomial(n,k)*a(k)*a(n+1-k), with a(0)=2, a(1)=2i.

The programs for A289088, there is no canonical definition to state claims against.
-/

/-! ## A289088.P1489707063530098032

`A271751(4^n)*A289084(n)`
-/

namespace A289088.P1489707063530098032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (4 ^ n) * A289084 n

end

end A289088.P1489707063530098032

/-! ## A289088.P618699804004613534

`A233583(A000244(n))-A052530(n)`
-/

namespace A289088.P618699804004613534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A000244 n).toNat - A052530 n

end

end A289088.P618699804004613534

/-! ## A289088.P10062527833377800352

`A001227(A297202(n))*A289084(n)`
-/

namespace A289088.P10062527833377800352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A297202 n).toNat * A289084 n

end

end A289088.P10062527833377800352

/-!
# A289089: Imaginary parts of the recursive sequence a(n+2) = Sum_{k=0..n} binomial(n,k)*a(k)*a(n+1-k), with a(0)=2, a(1)=2i.

The programs for A289089, there is no canonical definition to state claims against.
-/

/-! ## A289089.P5657295859920083444

`A052849(n)-A004396(A052571(n))`
-/

namespace A289089.P5657295859920083444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n - A004396 (A052571 n).toNat

end

end A289089.P5657295859920083444

/-!
# A289092: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A289092, there is no canonical definition to state claims against.
-/

/-! ## A289092.P4150464521548758209

`A007088(A289094(n))`
-/

namespace A289092.P4150464521548758209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289094 n).toNat

end

end A289092.P4150464521548758209

/-! ## A289092.P4668430621678270270

`A305989(A289095(n)/A016116(n+1))`
-/

namespace A289092.P4668430621678270270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A289092.P4668430621678270270

/-! ## A289092.P14786201923884442195

`A030101(A016116(n))*A305989(A289095(n)/A016116(n))`
-/

namespace A289092.P14786201923884442195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A016116 n).toNat * A305989 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A016116 n : ℚ))).toNat

end

end A289092.P14786201923884442195

/-! ## A289092.P18000807542507045699

`A305989(A289095(n)/A016116(n))*A305989(A060632(n))`
-/

namespace A289092.P18000807542507045699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A016116 n : ℚ))).toNat * A305989 (A060632 n).toNat

end

end A289092.P18000807542507045699

/-! ## A289092.P13132180741112253725

`A305989(A289095(n)/A016116(n))/A056926(A289094(n))`
-/

namespace A289092.P13132180741112253725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305989 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A016116 n : ℚ))).toNat : ℚ) / (A056926 (A289094 n).toNat : ℚ)

end

end A289092.P13132180741112253725

/-!
# A289093: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A289093, there is no canonical definition to state claims against.
-/

/-! ## A289093.P2777119754849334937

`A007088(A289095(n))`
-/

namespace A289093.P2777119754849334937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289095 n).toNat

end

end A289093.P2777119754849334937

/-! ## A289093.P12990721960889760572

`A185544(2*A289095(n))`
-/

namespace A289093.P12990721960889760572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289095 n).toNat

end

end A289093.P12990721960889760572

/-! ## A289093.P14616067979036199144

`A289890(A004880(n+1))`
-/

namespace A289093.P14616067979036199144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289890 (A004880 (n + 1)).toNat

end

end A289093.P14616067979036199144

/-! ## A289093.P4412251908200363626

`A289890(A004891(n+1))`
-/

namespace A289093.P4412251908200363626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289890 (A004891 (n + 1)).toNat

end

end A289093.P4412251908200363626

/-!
# A289094: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A289094, there is no canonical definition to state claims against.
-/

/-! ## A289094.P17054340385642966854

`A030101(A289095(n)/A016116(n+1))`
-/

namespace A289094.P17054340385642966854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A289094.P17054340385642966854

/-! ## A289094.P10213278607655163122

`A030101(2/A016116(n)*A289095(n))`
-/

namespace A289094.P10213278607655163122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A289095 n : ℚ))).toNat

end

end A289094.P10213278607655163122

/-! ## A289094.P10491747222176890456

`A030101(A289095(n)/A113402(2*n+1))`
-/

namespace A289094.P10491747222176890456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A113402 (2 * n + 1) : ℚ))).toNat

end

end A289094.P10491747222176890456

/-! ## A289094.P11227827248253062433

`A281589(A289095(n)/A113402(n+1))`
-/

namespace A289094.P11227827248253062433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A113402 (n + 1) : ℚ))).toNat

end

end A289094.P11227827248253062433

/-! ## A289094.P2467009043912228304

`lcm(Δ[A341936(n)], A030101(A289095(n)/A113402(n+1)))`
-/

namespace A289094.P2467009043912228304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A030101 (SequenceMachineLib.roundAway ((A289095 n : ℚ) / (A113402 (n + 1) : ℚ))).toNat)

end

end A289094.P2467009043912228304

/-!
# A289095: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 542", based on the 5-celled von Neumann neighborhood.

The programs for A289095, there is no canonical definition to state claims against.
-/

/-! ## A289095.P8856785961652657140

`A109680(A289892(n))`
-/

namespace A289095.P8856785961652657140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A289892 n).toNat

end

end A289095.P8856785961652657140

/-! ## A289095.P11624532086140577685

`A056926(A289892(n)²)`
-/

namespace A289095.P11624532086140577685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A289892 n ^ 2).toNat

end

end A289095.P11624532086140577685

/-! ## A289095.P13370088108144083738

`A289892(A004891(n+1))`
-/

namespace A289095.P13370088108144083738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289892 (A004891 (n + 1)).toNat

end

end A289095.P13370088108144083738

/-! ## A289095.P18135071994557180213

`A289892(A004902(n+1))`
-/

namespace A289095.P18135071994557180213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289892 (A004902 (n + 1)).toNat

end

end A289095.P18135071994557180213

/-!
# A289098: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A289098, the canonical program `A289098.P14226180583298410694` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289098 has offset 0).

The definition of A289098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289098.P14226180583298410694

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14, a(4)=29, a(5)=62`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A289098

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P14226180583298410694.Spec : Prop :=
  ∀ n, P14226180583298410694.a n = A289098 n

theorem P14226180583298410694.correct : P14226180583298410694.Spec := by
  intro n
  simp only [A289098]

end A289098

/-! ## A289098.P3731134907664890545

`ogf((1+2x^2-2x^4+4x^5)/(1-2x-x^2+2x^3))`
-/

namespace A289098.P3731134907664890545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 0, -2, 4] [1, -2, -1, 2] n

end

end A289098.P3731134907664890545

namespace A289098

/-- `ogf((1+2x^2-2x^4+4x^5)/(1-2x-x^2+2x^3))` -/
def P3731134907664890545.Spec : Prop :=
  ∀ n, P3731134907664890545.a n = A289098 n

end A289098

/-! ## A289098.P14231179936247199306

`or(2*a(n-1), a(n-1))-1` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A289098.P14231179936247199306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  Int.lor (2 * a (n - 1)) (a (n - 1)) - 1

end

end A289098.P14231179936247199306

namespace A289098

/-- `or(2*a(n-1), a(n-1))-1` -/
def P14231179936247199306.Spec : Prop :=
  ∀ n, P14231179936247199306.a n = A289098 n

end A289098

/-! ## A289098.P4920707848964080513

`or(a(n-1)+6, a(n-1))-1` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A289098.P4920707848964080513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  Int.lor (a (n - 1) + 6) (a (n - 1)) - 1

end

end A289098.P4920707848964080513

namespace A289098

/-- `or(a(n-1)+6, a(n-1))-1` -/
def P4920707848964080513.Spec : Prop :=
  ∀ n, P4920707848964080513.a n = A289098 n

end A289098

/-! ## A289098.P2666946978447168417

`A000918(n+1)+(3-n)%2`
-/

namespace A289098.P2666946978447168417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) + Int.tmod (3 - (n : ℤ)) 2

end

end A289098.P2666946978447168417

namespace A289098

/-- `A000918(n+1)+(3-n)%2` -/
def P2666946978447168417.Spec : Prop :=
  ∀ n, P2666946978447168417.a n = A289098 n

end A289098

/-! ## A289098.P15878391816191095979

`or(A130102(n), A290073(n))`
-/

namespace A289098.P15878391816191095979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130102 n) (A290073 n)

end

end A289098.P15878391816191095979

namespace A289098

/-- `or(A130102(n), A290073(n))` -/
def P15878391816191095979.Spec : Prop :=
  ∀ n, P15878391816191095979.a n = A289098 n

end A289098

/-! ## A289098.P17575587140034833119

`or(A283353(n), A286825(n))`
-/

namespace A289098.P17575587140034833119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283353 n) (A286825 n)

end

end A289098.P17575587140034833119

namespace A289098

/-- `or(A283353(n), A286825(n))` -/
def P17575587140034833119.Spec : Prop :=
  ∀ n, P17575587140034833119.a n = A289098 n

end A289098

/-! ## A289098.P14609720120077413719

`or(A283353(n), A286857(n))`
-/

namespace A289098.P14609720120077413719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283353 n) (A286857 n)

end

end A289098.P14609720120077413719

namespace A289098

/-- `or(A283353(n), A286857(n))` -/
def P14609720120077413719.Spec : Prop :=
  ∀ n, P14609720120077413719.a n = A289098 n

end A289098

/-! ## A289098.P5028645695153571693

`or(A283506(n), A286825(n))`
-/

namespace A289098.P5028645695153571693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283506 n) (A286825 n)

end

end A289098.P5028645695153571693

namespace A289098

/-- `or(A283506(n), A286825(n))` -/
def P5028645695153571693.Spec : Prop :=
  ∀ n, P5028645695153571693.a n = A289098 n

end A289098

/-! ## A289098.P16355276551053125130

`or(A283506(n), A286857(n))`
-/

namespace A289098.P16355276551053125130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283506 n) (A286857 n)

end

end A289098.P16355276551053125130

namespace A289098

/-- `or(A283506(n), A286857(n))` -/
def P16355276551053125130.Spec : Prop :=
  ∀ n, P16355276551053125130.a n = A289098 n

end A289098

/-! ## A289098.P17832770432723186015

`or(A283353(n), A289268(n))`
-/

namespace A289098.P17832770432723186015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283353 n) (A289268 n)

end

end A289098.P17832770432723186015

namespace A289098

/-- `or(A283353(n), A289268(n))` -/
def P17832770432723186015.Spec : Prop :=
  ∀ n, P17832770432723186015.a n = A289098 n

end A289098

/-! ## A289098.P17713032798437303040

`or(A283506(n), A289268(n))`
-/

namespace A289098.P17713032798437303040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283506 n) (A289268 n)

end

end A289098.P17713032798437303040

namespace A289098

/-- `or(A283506(n), A289268(n))` -/
def P17713032798437303040.Spec : Prop :=
  ∀ n, P17713032798437303040.a n = A289098 n

end A289098

/-! ## A289098.P5144210520590247476

`or(A286857(n), A290073(n))`
-/

namespace A289098.P5144210520590247476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286857 n) (A290073 n)

end

end A289098.P5144210520590247476

namespace A289098

/-- `or(A286857(n), A290073(n))` -/
def P5144210520590247476.Spec : Prop :=
  ∀ n, P5144210520590247476.a n = A289098 n

end A289098

/-! ## A289098.P120158635995662389

`or(A289268(n), A290073(n))`
-/

namespace A289098.P120158635995662389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289268 n) (A290073 n)

end

end A289098.P120158635995662389

namespace A289098

/-- `or(A289268(n), A290073(n))` -/
def P120158635995662389.Spec : Prop :=
  ∀ n, P120158635995662389.a n = A289098 n

end A289098

/-! ## A289098.P12634233053739927003

`xor(A134451(n), A286521(n))`
-/

namespace A289098.P12634233053739927003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134451 n) (A286521 n)

end

end A289098.P12634233053739927003

namespace A289098

/-- `xor(A134451(n), A286521(n))` -/
def P12634233053739927003.Spec : Prop :=
  ∀ n, P12634233053739927003.a n = A289098 n

end A289098

/-! ## A289098.P9662678952592420678

`A051049(n+1)-2%A281893(n)`
-/

namespace A289098.P9662678952592420678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1) - Int.tmod 2 (A281893 n)

end

end A289098.P9662678952592420678

namespace A289098

/-- `A051049(n+1)-2%A281893(n)` -/
def P9662678952592420678.Spec : Prop :=
  ∀ n, P9662678952592420678.a n = A289098 n

end A289098

/-!
# A289099: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 545", based on the 5-celled von Neumann neighborhood.

The programs for A289099, the canonical program `A289099.P12711524610052574698` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289099 has offset 0).

The definition of A289099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289099.P12711524610052574698

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=7, a(4)=23, a(5)=31`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A289099

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P12711524610052574698.Spec : Prop :=
  ∀ n, P12711524610052574698.a n = A289099 n

theorem P12711524610052574698.correct : P12711524610052574698.Spec := by
  intro n
  simp only [A289099]

end A289099

/-! ## A289099.P12493017635209780857

`or(n, ∑[A154383(n)])`
-/

namespace A289099.P12493017635209780857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289099.P12493017635209780857

namespace A289099

/-- `or(n, ∑[A154383(n)])` -/
def P12493017635209780857.Spec : Prop :=
  ∀ n, P12493017635209780857.a n = A289099 n

end A289099

/-! ## A289099.P14118486168199334089

`or(a(n-1), A092297(n))` with `a(0)=1`
-/

namespace A289099.P14118486168199334089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A092297 n)

end

end A289099.P14118486168199334089

namespace A289099

/-- `or(a(n-1), A092297(n))` -/
def P14118486168199334089.Spec : Prop :=
  ∀ n, P14118486168199334089.a n = A289099 n

end A289099

/-! ## A289099.P4790082559852642558

`or(or(n, A014551(n)), a(n-1))` with `a(0)=1`
-/

namespace A289099.P4790082559852642558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (Int.lor (n : ℤ) (A014551 n)) (a (n - 1))

end

end A289099.P4790082559852642558

namespace A289099

/-- `or(or(n, A014551(n)), a(n-1))` -/
def P4790082559852642558.Spec : Prop :=
  ∀ n, P4790082559852642558.a n = A289099 n

end A289099

/-! ## A289099.P12856757620415532319

`or(A052992(n), A305750(n))`
-/

namespace A289099.P12856757620415532319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052992 n) (A305750 n)

end

end A289099.P12856757620415532319

namespace A289099

/-- `or(A052992(n), A305750(n))` -/
def P12856757620415532319.Spec : Prop :=
  ∀ n, P12856757620415532319.a n = A289099 n

end A289099

/-! ## A289099.P7977505687383487376

`or(A140252(n), A286858(n))`
-/

namespace A289099.P7977505687383487376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140252 n) (A286858 n)

end

end A289099.P7977505687383487376

namespace A289099

/-- `or(A140252(n), A286858(n))` -/
def P7977505687383487376.Spec : Prop :=
  ∀ n, P7977505687383487376.a n = A289099 n

end A289099

/-! ## A289099.P15201831235081648056

`or(n, ∑[A131577(A004442(n))])`
-/

namespace A289099.P15201831235081648056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289099.P15201831235081648056

namespace A289099

/-- `or(n, ∑[A131577(A004442(n))])` -/
def P15201831235081648056.Spec : Prop :=
  ∀ n, P15201831235081648056.a n = A289099 n

end A289099

/-! ## A289099.P11417620755037546524

`A282005(n)+1-A288699(n)`
-/

namespace A289099.P11417620755037546524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 n + (1 - A288699 n)

end

end A289099.P11417620755037546524

namespace A289099

/-- `A282005(n)+1-A288699(n)` -/
def P11417620755037546524.Spec : Prop :=
  ∀ n, P11417620755037546524.a n = A289099 n

end A289099

/-! ## A289099.P3138893365728205961

`or(A116362(or(1, n)), A140252(n))`
-/

namespace A289099.P3138893365728205961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116362 (Nat.lor 1 n)) (A140252 n)

end

end A289099.P3138893365728205961

namespace A289099

/-- `or(A116362(or(1, n)), A140252(n))` -/
def P3138893365728205961.Spec : Prop :=
  ∀ n, P3138893365728205961.a n = A289099 n

end A289099

/-! ## A289099.P8409527180028135326

`or(n, A084170(n)-A084183(n))`
-/

namespace A289099.P8409527180028135326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A084170 n - A084183 n)

end

end A289099.P8409527180028135326

namespace A289099

/-- `or(n, A084170(n)-A084183(n))` -/
def P8409527180028135326.Spec : Prop :=
  ∀ n, P8409527180028135326.a n = A289099 n

end A289099

/-! ## A289099.P9734452613972216635

`or(n, or(A051049(n), A283507(n)))`
-/

namespace A289099.P9734452613972216635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.lor (A051049 n) (A283507 n))

end

end A289099.P9734452613972216635

namespace A289099

/-- `or(n, or(A051049(n), A283507(n)))` -/
def P9734452613972216635.Spec : Prop :=
  ∀ n, P9734452613972216635.a n = A289099 n

end A289099

/-! ## A289099.P134746792837260572

`or(A116362(A109613(n)), A140252(n))`
-/

namespace A289099.P134746792837260572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116362 (A109613 n).toNat) (A140252 n)

end

end A289099.P134746792837260572

namespace A289099

/-- `or(A116362(A109613(n)), A140252(n))` -/
def P134746792837260572.Spec : Prop :=
  ∀ n, P134746792837260572.a n = A289099 n

end A289099

/-! ## A289099.P16462643763492899409

`or(A106624(A004273(n)), A286858(n))`
-/

namespace A289099.P16462643763492899409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106624 (A004273 n).toNat) (A286858 n)

end

end A289099.P16462643763492899409

namespace A289099

/-- `or(A106624(A004273(n)), A286858(n))` -/
def P16462643763492899409.Spec : Prop :=
  ∀ n, P16462643763492899409.a n = A289099 n

end A289099

/-! ## A289099.P3809631960758411649

`or(A106624(A004273(n)), A289370(n))`
-/

namespace A289099.P3809631960758411649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106624 (A004273 n).toNat) (A289370 n)

end

end A289099.P3809631960758411649

namespace A289099

/-- `or(A106624(A004273(n)), A289370(n))` -/
def P3809631960758411649.Spec : Prop :=
  ∀ n, P3809631960758411649.a n = A289099 n

end A289099

/-! ## A289099.P3712590552797713490

`or(A282005(n)-1, A278346(A142150(n)))`
-/

namespace A289099.P3712590552797713490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282005 n - 1) (A278346 (A142150 n).toNat)

end

end A289099.P3712590552797713490

namespace A289099

/-- `or(A282005(n)-1, A278346(A142150(n)))` -/
def P3712590552797713490.Spec : Prop :=
  ∀ n, P3712590552797713490.a n = A289099 n

end A289099

/-! ## A289099.P15882895024888592334

`or(A289370(A004273(n)-n), A289370(n))`
-/

namespace A289099.P15882895024888592334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289370 (A004273 n - (n : ℤ)).toNat) (A289370 n)

end

end A289099.P15882895024888592334

namespace A289099

/-- `or(A289370(A004273(n)-n), A289370(n))` -/
def P15882895024888592334.Spec : Prop :=
  ∀ n, P15882895024888592334.a n = A289099 n

end A289099

/-! ## A289099.P16726270765351810451

`A290683(n+1)%Δ[A290662(n)]`
-/

namespace A289099.P16726270765351810451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290683 (n + 1)) (f1 (n + 1) - f1 n)

end

end A289099.P16726270765351810451

namespace A289099

/-- `A290683(n+1)%Δ[A290662(n)]` -/
def P16726270765351810451.Spec : Prop :=
  ∀ n, P16726270765351810451.a n = A289099 n

end A289099

