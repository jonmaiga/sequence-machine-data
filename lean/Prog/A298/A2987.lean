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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A298700: a(n) = (n/2)*Sum_{k=1..n} C(n + k, n)*C(k, n - k)/k.

The programs for A298700, there is no canonical definition to state claims against.
-/

/-! ## A298700.P9188590353794779312

`A055836(n)-a(n-1)` with `a(0)=1`
-/

namespace A298700.P9188590353794779312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055836 n - a (n - 1)

end

end A298700.P9188590353794779312

/-! ## A298700.P12223585855700316999

`A213684(n+1)+A038112(n)-a(n-1)` with `a(0)=1`
-/

namespace A298700.P12223585855700316999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213684 (n + 1) + A038112 n - a (n - 1)

end

end A298700.P12223585855700316999

/-!
# A298702: Numbers k such that k!+1 reversed is a prime.

The programs for A298702, there is no canonical definition to state claims against.
-/

/-! ## A298702.P12012719470967026812

`record[A143574(n)+A000034(A259356(n))]`
-/

namespace A298702.P12012719470967026812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n + A000034 (A259356 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298702.P12012719470967026812

/-!
# A298703: Numbers n such that number of groups of order n exceeds phi(n) (count numbers <= n and prime to n).

The programs for A298703, there is no canonical definition to state claims against.
-/

/-! ## A298703.P13720906498574098314

`lt[A000010(abs(1-n)+1), A000001(n)]`
-/

namespace A298703.P13720906498574098314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298703.P13720906498574098314

/-! ## A298703.P2779784957725411390

`lt[A000010(n+1), A000001(n+1)]+1`
-/

namespace A298703.P2779784957725411390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A298703.P2779784957725411390

/-! ## A298703.P9790024488119706841

`lt[A225530(n), A000001(n)]`
-/

namespace A298703.P9790024488119706841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298703.P9790024488119706841

/-! ## A298703.P6303051171088519746

`lt[A225530(n)², A297420(n)]`
-/

namespace A298703.P6303051171088519746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298703.P6303051171088519746

/-! ## A298703.P7909773323575586344

`lt[A225530(n), A201733(A028310(n))]`
-/

namespace A298703.P7909773323575586344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298703.P7909773323575586344

/-!
# A298706: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298706, there is no canonical definition to state claims against.
-/

/-! ## A298706.P14823878724307332731

`A298712(∑[4*n]+1)`
-/

namespace A298706.P14823878724307332731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298706.P14823878724307332731

/-! ## A298706.P4716138221266624929

`A298712(n²+(n+1)²)/gcd(11, n)`
-/

namespace A298706.P4716138221266624929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298712 (n ^ 2 + (n + 1) ^ 2) : ℚ) / (Nat.gcd 11 n : ℚ)

end

end A298706.P4716138221266624929

/-! ## A298706.P8345475012795190636

`A298712(A001844(n))+char[10]`
-/

namespace A298706.P8345475012795190636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298706.P8345475012795190636

/-! ## A298706.P9489902972212150183

`lcm(A033999(n), A298712(n²+(n+1)²))`
-/

namespace A298706.P9489902972212150183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298712 (n ^ 2 + (n + 1) ^ 2))

end

end A298706.P9489902972212150183

/-! ## A298706.P8749945283833266701

`A298712(n²+(n+1)²)+A287285(2*n+1)`
-/

namespace A298706.P8749945283833266701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (n ^ 2 + (n + 1) ^ 2) + A287285 (2 * n + 1)

end

end A298706.P8749945283833266701

/-!
# A298707: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298707, there is no canonical definition to state claims against.
-/

/-! ## A298707.P3897092908099159041

`A298712(∑[n+2]+4)`
-/

namespace A298707.P3897092908099159041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298707.P3897092908099159041

/-! ## A298707.P4006076949199070523

`A298712(A046691(n)+7)+char[18]`
-/

namespace A298707.P4006076949199070523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298707.P4006076949199070523

/-! ## A298707.P31651735864160413

`ceil(sin(n)²)*A298712(A167614(n+1))`
-/

namespace A298707.P31651735864160413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A298712 (A167614 (n + 1)).toNat

end

end A298707.P31651735864160413

/-! ## A298707.P9665083346855712709

`A298712(A167614(n+1))%A048488(n)`
-/

namespace A298707.P9665083346855712709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298712 (A167614 (n + 1)).toNat) (A048488 n)

end

end A298707.P9665083346855712709

/-! ## A298707.P9063045272230449745

`A298712(A046691(n)+7)%A000108(n+2)`
-/

namespace A298707.P9063045272230449745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298712 (A046691 n + 7).toNat) (A000108 (n + 2))

end

end A298707.P9063045272230449745

/-!
# A298708: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298708, there is no canonical definition to state claims against.
-/

/-! ## A298708.P2072819745981068371

`A298712(∑[n+3]+7)`
-/

namespace A298708.P2072819745981068371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298708.P2072819745981068371

/-! ## A298708.P6117653476435729637

`A298712(A167614(n+2)+1)+C(n, 64)`
-/

namespace A298708.P6117653476435729637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A167614 (n + 2) + 1).toNat + (Nat.choose n 64 : ℤ)

end

end A298708.P6117653476435729637

/-! ## A298708.P1425814185499486688

`A298712(A055999(n)+10)/A014963(12*n+6)`
-/

namespace A298708.P1425814185499486688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298712 (A055999 n + 10).toNat : ℚ) / (A014963 (12 * n + 6) : ℚ)

end

end A298708.P1425814185499486688

/-! ## A298708.P1258700388249970466

`A014963(6*(n+1))*A298712(A167614(n+2)+1)`
-/

namespace A298708.P1258700388249970466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A298712 (A167614 (n + 2) + 1).toNat

end

end A298708.P1258700388249970466

/-! ## A298708.P14975809181357487610

`A298712(A167614(n+2)+1)+A008683(9*(n+2))`
-/

namespace A298708.P14975809181357487610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A167614 (n + 2) + 1).toNat + A008683 (9 * (n + 2))

end

end A298708.P14975809181357487610

/-!
# A298709: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298709, there is no canonical definition to state claims against.
-/

/-! ## A298709.P17493814759741807928

`A298712(C(n+6, 2)-n)`
-/

namespace A298709.P17493814759741807928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (Nat.choose (n + 6) 2 - n)

end

end A298709.P17493814759741807928

/-! ## A298709.P1786472475286107151

`A298712(A167499(n+3))`
-/

namespace A298709.P1786472475286107151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A167499 (n + 3)).toNat

end

end A298709.P1786472475286107151

/-! ## A298709.P13582415358990032059

`A298712(A155212(n)+13)`
-/

namespace A298709.P13582415358990032059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A155212 n + 13).toNat

end

end A298709.P13582415358990032059

/-! ## A298709.P11969317135751982515

`A298712(A056000(n)+15)`
-/

namespace A298709.P11969317135751982515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A056000 n + 15).toNat

end

end A298709.P11969317135751982515

/-! ## A298709.P10156486379131700908

`A298712(eq[7, A066657(n)])`
-/

namespace A298709.P10156486379131700908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298709.P10156486379131700908

/-!
# A298710: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298710, there is no canonical definition to state claims against.
-/

/-! ## A298710.P13931644690594752041

`A298712(∑[n+5]+16)`
-/

namespace A298710.P13931644690594752041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298710.P13931644690594752041

/-! ## A298710.P251078553585145090

`A298712(A000217(n+5)+6)+char[15]`
-/

namespace A298710.P251078553585145090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298710.P251078553585145090

/-! ## A298710.P14391683752752009533

`A007318(C(n, 2))*A298712(A000217(n+5)+6)`
-/

namespace A298710.P14391683752752009533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298712 (A000217 (n + 5) + 6).toNat

end

end A298710.P14391683752752009533

/-! ## A298710.P17833604961101289750

`A014963(15*(n+2))*A298712(A000217(n+5)+6)`
-/

namespace A298710.P17833604961101289750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 2)) * A298712 (A000217 (n + 5) + 6).toNat

end

end A298710.P17833604961101289750

/-!
# A298711: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298711, there is no canonical definition to state claims against.
-/

/-! ## A298711.P9515236678533614663

`A298712(A056119(n)+28)`
-/

namespace A298711.P9515236678533614663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A056119 n + 28).toNat

end

end A298711.P9515236678533614663

/-! ## A298711.P17041292165264050564

`A298712(eq[11, A066657(n)])`
-/

namespace A298711.P17041292165264050564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298711.P17041292165264050564

/-! ## A298711.P12988340778962125198

`A298712(A167499(n+5)+2)`
-/

namespace A298711.P12988340778962125198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A167499 (n + 5) + 2).toNat

end

end A298711.P12988340778962125198

/-! ## A298711.P7236831683629080778

`A298712(A077169(n+7)+2)`
-/

namespace A298711.P7236831683629080778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A077169 (n + 7) + 2).toNat

end

end A298711.P7236831683629080778

/-! ## A298711.P8755186859431218683

`A298712(A000124(n+6)+6)`
-/

namespace A298711.P8755186859431218683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298712 (A000124 (n + 6) + 6).toNat

end

end A298711.P8755186859431218683

/-!
# A298712: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298712, there is no canonical definition to state claims against.
-/

/-! ## A298712.P8007383350799551670

`A298063(A281873(n+1))%(8*n+2-A099375(n))`
-/

namespace A298712.P8007383350799551670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298063 (A281873 (n + 1)).toNat) ((8 * n + 2 : ℤ) - A099375 n)

end

end A298712.P8007383350799551670

/-! ## A298712.P8804041286466561460

`A298063(A281873(n+1))%A105027(A000124(n))`
-/

namespace A298712.P8804041286466561460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298063 (A281873 (n + 1)).toNat) (A105027 (A000124 n).toNat)

end

end A298712.P8804041286466561460

/-!
# A298713: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298713, there is no canonical definition to state claims against.
-/

/-! ## A298713.P3034790401616017950

`A298719(∑[4*n]+1)`
-/

namespace A298713.P3034790401616017950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298713.P3034790401616017950

/-! ## A298713.P3644470078914882504

`record[A298719(∑[A266981(n)])]`
-/

namespace A298713.P3644470078914882504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298713.P3644470078914882504

/-! ## A298713.P13346052421187475680

`record[A298719(Δ[A235355(n)])]`
-/

namespace A298713.P13346052421187475680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298713.P13346052421187475680

/-! ## A298713.P4980911292541881910

`record[A298719(A092530(n)+1)]`
-/

namespace A298713.P4980911292541881910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A092530 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298713.P4980911292541881910

/-! ## A298713.P15361183958510603647

`record[A298719(A330613(n+1))]`
-/

namespace A298713.P15361183958510603647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298713.P15361183958510603647

/-!
# A298714: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298714, there is no canonical definition to state claims against.
-/

/-! ## A298714.P11908548740802976124

`A298719(∑[n+2]+4)`
-/

namespace A298714.P11908548740802976124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298714.P11908548740802976124

/-! ## A298714.P3921481338061737576

`A298719(A167614(n+1))+A055967(n)`
-/

namespace A298714.P3921481338061737576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A167614 (n + 1)).toNat + A055967 n

end

end A298714.P3921481338061737576

/-! ## A298714.P8206193504324100664

`A298719(A167614(n+1))+A185246(n)`
-/

namespace A298714.P8206193504324100664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A167614 (n + 1)).toNat + A185246 n

end

end A298714.P8206193504324100664

/-! ## A298714.P17661598065917799467

`A278657(n)*A298719(A167614(n+1))`
-/

namespace A298714.P17661598065917799467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A298719 (A167614 (n + 1)).toNat

end

end A298714.P17661598065917799467

/-! ## A298714.P16888459643580851144

`A298719(A167614(n+1))%A008704(n)`
-/

namespace A298714.P16888459643580851144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298719 (A167614 (n + 1)).toNat) (A008704 n)

end

end A298714.P16888459643580851144

/-!
# A298715: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298715, there is no canonical definition to state claims against.
-/

/-! ## A298715.P17553262844575936134

`A298719(A374004(n+1))`
-/

namespace A298715.P17553262844575936134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A374004 (n + 1)).toNat

end

end A298715.P17553262844575936134

/-! ## A298715.P10019844401697821745

`A298719(A141214(n)+7)`
-/

namespace A298715.P10019844401697821745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A141214 n + 7).toNat

end

end A298715.P10019844401697821745

/-! ## A298715.P16362848157762545703

`A298719(A052905(n)+9)`
-/

namespace A298715.P16362848157762545703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A052905 n + 9).toNat

end

end A298715.P16362848157762545703

/-! ## A298715.P10948501037108623486

`A298719(A055999(n)+10)`
-/

namespace A298715.P10948501037108623486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A055999 n + 10).toNat

end

end A298715.P10948501037108623486

/-! ## A298715.P13939528599380751308

`A298719(A167614(n+2)+1)`
-/

namespace A298715.P13939528599380751308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A167614 (n + 2) + 1).toNat

end

end A298715.P13939528599380751308

/-!
# A298716: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298716, there is no canonical definition to state claims against.
-/

/-! ## A298716.P4528783186059102720

`A298719(A374005(n+1))`
-/

namespace A298716.P4528783186059102720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A374005 (n + 1)).toNat

end

end A298716.P4528783186059102720

/-! ## A298716.P15344406985698310858

`A298719(A167499(n+3))`
-/

namespace A298716.P15344406985698310858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A167499 (n + 3)).toNat

end

end A298716.P15344406985698310858

/-! ## A298716.P14267592115662514069

`A298719(A155212(n)+13)`
-/

namespace A298716.P14267592115662514069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A155212 n + 13).toNat

end

end A298716.P14267592115662514069

/-! ## A298716.P6613570080806578387

`A298719(eq[7, A066657(n)])`
-/

namespace A298716.P6613570080806578387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298716.P6613570080806578387

/-! ## A298716.P3012795822006855424

`A298719(A167614(n+3)+2)`
-/

namespace A298716.P3012795822006855424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A167614 (n + 3) + 2).toNat

end

end A298716.P3012795822006855424

/-!
# A298717: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298717, there is no canonical definition to state claims against.
-/

/-! ## A298717.P6859650599729661474

`A298719(C(n+6, 2)+6)`
-/

namespace A298717.P6859650599729661474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (Nat.choose (n + 6) 2 + 6)

end

end A298717.P6859650599729661474

/-! ## A298717.P11564522897399426217

`A298719(A374007(n+1))`
-/

namespace A298717.P11564522897399426217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A374007 (n + 1)).toNat

end

end A298717.P11564522897399426217

/-! ## A298717.P6474617658432361583

`A298719(A056115(n)+21)`
-/

namespace A298717.P6474617658432361583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A056115 n + 21).toNat

end

end A298717.P6474617658432361583

/-! ## A298717.P8250186304995179978

`A298719(A056000(n+1)+16)`
-/

namespace A298717.P8250186304995179978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A056000 (n + 1) + 16).toNat

end

end A298717.P8250186304995179978

/-! ## A298717.P17237093619097972195

`A298719(eq[6, A130270(n+1)])`
-/

namespace A298717.P17237093619097972195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298717.P17237093619097972195

/-!
# A298718: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298718, there is no canonical definition to state claims against.
-/

/-! ## A298718.P8010855248063586707

`A298719(A374008(n+1))`
-/

namespace A298718.P8010855248063586707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A374008 (n + 1)).toNat

end

end A298718.P8010855248063586707

/-! ## A298718.P18099582627882857210

`A298719(A056119(n)+28)`
-/

namespace A298718.P18099582627882857210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (A056119 n + 28).toNat

end

end A298718.P18099582627882857210

/-! ## A298718.P8521744786471289346

`A298719(eq[11, A066657(n)])`
-/

namespace A298718.P8521744786471289346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298718.P8521744786471289346

/-! ## A298718.P12309982394136888310

`A298719(eq[8, A131818(n+1)])`
-/

namespace A298718.P12309982394136888310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298718.P12309982394136888310

/-! ## A298718.P6148060470074124941

`A298719(eq[4, A219347(n)])`
-/

namespace A298718.P6148060470074124941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298718.P6148060470074124941

/-!
# A298720: EBCDIC codes for lower case letters.

The programs for A298720, there is no canonical definition to state claims against.
-/

/-! ## A298720.P16184734385125888995

`A298728(n+1)-64`
-/

namespace A298720.P16184734385125888995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298728 (n + 1) - 64

end

end A298720.P16184734385125888995

/-! ## A298720.P15050624632522388101

`A063946(A298728(n+1))`
-/

namespace A298720.P15050624632522388101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A298728 (n + 1)).toNat

end

end A298720.P15050624632522388101

/-! ## A298720.P4197244215263555924

`xor(64, A298728(A028310(n+1)))`
-/

namespace A298720.P4197244215263555924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 64 (A298728 (A028310 (n + 1)).toNat)

end

end A298720.P4197244215263555924

/-! ## A298720.P14526082112749063501

`xor(and(64, A130765(n+1)), A298728(n+1))`
-/

namespace A298720.P14526082112749063501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 64 (A130765 (n + 1))) (A298728 (n + 1))

end

end A298720.P14526082112749063501

/-! ## A298720.P4619165263851730709

`xor(64, ∪[A158372(n+1), A298728(n+1)])`
-/

namespace A298720.P4619165263851730709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 64 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298720.P4619165263851730709

/-!
# A298721: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298721, there is no canonical definition to state claims against.
-/

/-! ## A298721.P2913352361296272872

`A298727(∑[4*n]+1)`
-/

namespace A298721.P2913352361296272872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298721.P2913352361296272872

/-! ## A298721.P2174434263056708377

`A298727(A001844(n))+char[13]`
-/

namespace A298721.P2174434263056708377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298721.P2174434263056708377

/-! ## A298721.P18273691902363811325

`A220054(n)*A298727(A001844(n))`
-/

namespace A298721.P18273691902363811325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 n * A298727 (A001844 n).toNat

end

end A298721.P18273691902363811325

/-! ## A298721.P653977694460401568

`A298727(A001844(n))*A303694(n)`
-/

namespace A298721.P653977694460401568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A001844 n).toNat * A303694 n

end

end A298721.P653977694460401568

/-! ## A298721.P2613684524682702302

`A298727(A001844(n))^A136400(n)`
-/

namespace A298721.P2613684524682702302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298727 (A001844 n).toNat : ℚ) ^ (A136400 n : ℤ)

end

end A298721.P2613684524682702302

/-!
# A298722: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298722, there is no canonical definition to state claims against.
-/

/-! ## A298722.P11143381921352494138

`A298727(∑[n+2]+4)`
-/

namespace A298722.P11143381921352494138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298722.P11143381921352494138

/-! ## A298722.P12438849314224550567

`or(1, A298727(A167614(n+1)))`
-/

namespace A298722.P12438849314224550567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298727 (A167614 (n + 1)).toNat)

end

end A298722.P12438849314224550567

/-! ## A298722.P6227069021619717255

`or(1, A298727(A027379(n)+6))`
-/

namespace A298722.P6227069021619717255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298727 (A027379 n + 6).toNat)

end

end A298722.P6227069021619717255

/-! ## A298722.P8118758891235082922

`A298727(A167614(n+1))+A025466(n)`
-/

namespace A298722.P8118758891235082922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167614 (n + 1)).toNat + A025466 n

end

end A298722.P8118758891235082922

/-! ## A298722.P12450016392167391009

`A298727(A167614(n+1))+A185284(n)`
-/

namespace A298722.P12450016392167391009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167614 (n + 1)).toNat + A185284 n

end

end A298722.P12450016392167391009

/-!
# A298723: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298723, there is no canonical definition to state claims against.
-/

/-! ## A298723.P14980548966838039298

`A298727(∑[n+3]+7)`
-/

namespace A298723.P14980548966838039298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298723.P14980548966838039298

/-! ## A298723.P5151956137183193246

`A298727(A052905(n)+9)+char[18]`
-/

namespace A298723.P5151956137183193246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298723.P5151956137183193246

/-! ## A298723.P1508841773391797376

`A298727(A000217(n+3)+4)+char[20]`
-/

namespace A298723.P1508841773391797376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298723.P1508841773391797376

/-! ## A298723.P12682670073359518154

`A298727(A052905(n)+9)%A000108(n+7)`
-/

namespace A298723.P12682670073359518154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298727 (A052905 n + 9).toNat) (A000108 (n + 7))

end

end A298723.P12682670073359518154

/-! ## A298723.P14636441177741966344

`A007318(C(2, n))*A298727(A052905(n)+9)`
-/

namespace A298723.P14636441177741966344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298727 (A052905 n + 9).toNat

end

end A298723.P14636441177741966344

/-!
# A298724: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298724, there is no canonical definition to state claims against.
-/

/-! ## A298724.P753505929276885780

`A298727(∑[n+4]+11)`
-/

namespace A298724.P753505929276885780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298724.P753505929276885780

/-! ## A298724.P6020558728666460890

`A298727(A167499(n+3))+char[17]`
-/

namespace A298724.P6020558728666460890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298724.P6020558728666460890

/-! ## A298724.P16933167473072021480

`A298727(A167614(n+3)+2)+char[20]`
-/

namespace A298724.P16933167473072021480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167614 (n + 3) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298724.P16933167473072021480

/-! ## A298724.P7083556313836330330

`A298727(A374005(n+1))+A025466(n)`
-/

namespace A298724.P7083556313836330330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A374005 (n + 1)).toNat + A025466 n

end

end A298724.P7083556313836330330

/-! ## A298724.P12958696389313491802

`A298727(A374005(n+1))%A092759(n+1)`
-/

namespace A298724.P12958696389313491802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298727 (A374005 (n + 1)).toNat) (A092759 (n + 1))

end

end A298724.P12958696389313491802

/-!
# A298725: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298725, there is no canonical definition to state claims against.
-/

/-! ## A298725.P18318540234982443770

`A298727(A374007(n+1))`
-/

namespace A298725.P18318540234982443770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A374007 (n + 1)).toNat

end

end A298725.P18318540234982443770

/-! ## A298725.P9112537577823409500

`A298727(A166136(n+4))`
-/

namespace A298725.P9112537577823409500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A166136 (n + 4)).toNat

end

end A298725.P9112537577823409500

/-! ## A298725.P12159467977464533742

`A298727(A056115(n)+21)`
-/

namespace A298725.P12159467977464533742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A056115 n + 21).toNat

end

end A298725.P12159467977464533742

/-! ## A298725.P1437580182146292181

`A298727(∑[A020710(n)]+16)`
-/

namespace A298725.P1437580182146292181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A298725.P1437580182146292181

/-! ## A298725.P2254976627274030238

`A298727(A167614(n+4)+3)`
-/

namespace A298725.P2254976627274030238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167614 (n + 4) + 3).toNat

end

end A298725.P2254976627274030238

/-!
# A298726: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298726, there is no canonical definition to state claims against.
-/

/-! ## A298726.P1863172202974627858

`A298727(A374008(n+1))`
-/

namespace A298726.P1863172202974627858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A374008 (n + 1)).toNat

end

end A298726.P1863172202974627858

/-! ## A298726.P4109365392751955211

`A298727(A056119(n)+28)`
-/

namespace A298726.P4109365392751955211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A056119 n + 28).toNat

end

end A298726.P4109365392751955211

/-! ## A298726.P9156172610334568306

`A298727(eq[11, A066657(n)])`
-/

namespace A298726.P9156172610334568306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298726.P9156172610334568306

/-! ## A298726.P5740177785209892938

`A298727(A166136(n+5)+1)`
-/

namespace A298726.P5740177785209892938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A166136 (n + 5) + 1).toNat

end

end A298726.P5740177785209892938

/-! ## A298726.P11611120086278698646

`A298727(A167499(n+5)+2)`
-/

namespace A298726.P11611120086278698646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298727 (A167499 (n + 5) + 2).toNat

end

end A298726.P11611120086278698646

/-!
# A298727: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298727, there is no canonical definition to state claims against.
-/

/-! ## A298727.P17238796275802809529

`A299561(n+1)-A340988(A026758(n))`
-/

namespace A298727.P17238796275802809529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1) - A340988 ((A026758 n).toNat + 91)

end

end A298727.P17238796275802809529

/-! ## A298727.P4097495899827398488

`A299561(n+1)%A002762(n)`
-/

namespace A298727.P4097495899827398488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299561 (n + 1)) (A002762 n)

end

end A298727.P4097495899827398488

/-! ## A298727.P9929547626230621092

`A299561(A265647(∑[∑[n+1]]))`
-/

namespace A298727.P9929547626230621092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (A265647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A298727.P9929547626230621092

/-! ## A298727.P18369221748035798763

`A299561(n+1)^A185284(n)!`
-/

namespace A298727.P18369221748035798763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1) ^ Nat.factorial (A185284 n).toNat

end

end A298727.P18369221748035798763

/-! ## A298727.P3518099996004726934

`A299561(n+1)+A154272(∑[∑[n+1]]+1)`
-/

namespace A298727.P3518099996004726934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1) + A154272 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298727.P3518099996004726934

/-!
# A298728: EBCDIC codes for upper case letters.

The programs for A298728, there is no canonical definition to state claims against.
-/

/-! ## A298728.P8223800502806892980

`A298720(n+1)+64`
-/

namespace A298728.P8223800502806892980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298720 (n + 1) + 64

end

end A298728.P8223800502806892980

/-! ## A298728.P2901994507089064323

`A007378(A298720(n+1))`
-/

namespace A298728.P2901994507089064323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (A298720 (n + 1)).toNat

end

end A298728.P2901994507089064323

/-! ## A298728.P234969391318703346

`A063946(A298720(abs(xor(n, -1))))`
-/

namespace A298728.P234969391318703346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A298720 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A298728.P234969391318703346

/-! ## A298728.P12939630946380222991

`A063946(A298720(-xor(n, -1)))`
-/

namespace A298728.P12939630946380222991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A298720 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A298728.P12939630946380222991

/-!
# A298730: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)/2))^(k*(k+1)/2).

The programs for A298730, there is no canonical definition to state claims against.
-/

/-! ## A298730.P12181114744692830131

`A225355(A364910(n))`
-/

namespace A298730.P12181114744692830131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225355 (A364910 n).toNat

end

end A298730.P12181114744692830131

/-! ## A298730.P15467354934981540411

`A358522(A007294(n)²)`
-/

namespace A298730.P15467354934981540411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A007294 n ^ 2).toNat

end

end A298730.P15467354934981540411

/-! ## A298730.P14709995604997434174

`A221528(A032020(n))/4`
-/

namespace A298730.P14709995604997434174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221528 (A032020 n).toNat : ℚ) / 4

end

end A298730.P14709995604997434174

/-! ## A298730.P9950190189808137482

`A049279(∏[A220424(n+2)²])`
-/

namespace A298730.P9950190189808137482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220424 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049279 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298730.P9950190189808137482

/-! ## A298730.P6179517422178214490

`A196179(∑[char[3*n]]^A003056(n))`
-/

namespace A298730.P6179517422178214490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196179 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A298730.P6179517422178214490

/-!
# A298731: Number of distinct representations of n as a sum of four terms of A020330 (including 0), where order does not matter.

The programs for A298731, there is no canonical definition to state claims against.
-/

/-! ## A298731.P16525673882676324027

`A275946(A290335(n))^A348980(n+1)^A026794(n+1)`
-/

namespace A298731.P16525673882676324027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A275946 (A290335 n).toNat : ℝ) ^ ((A348980 (n + 1) : ℚ) ^ (A026794 (n + 1) : ℤ) : ℝ)

end

end A298731.P16525673882676324027

/-! ## A298731.P12272686875150501007

`A275946(A290335(n)%A325085(n+1))`
-/

namespace A298731.P12272686875150501007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (Int.tmod (A290335 n) (A325085 (n + 1))).toNat

end

end A298731.P12272686875150501007

/-! ## A298731.P18255827170908032258

`A275946(A290335(n))^A014963(A034856(n+1))`
-/

namespace A298731.P18255827170908032258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275946 (A290335 n).toNat : ℚ) ^ (A014963 (A034856 (n + 1)).toNat : ℤ)

end

end A298731.P18255827170908032258

/-! ## A298731.P9739312514821523648

`ceil(A290335(n)/A057995(n))`
-/

namespace A298731.P9739312514821523648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A290335 n : ℚ) / (A057995 n : ℚ)⌉

end

end A298731.P9739312514821523648

/-! ## A298731.P16486610536002140630

`ceil(A290335(n)/A070009(n+1))`
-/

namespace A298731.P16486610536002140630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A290335 n : ℚ) / (A070009 (n + 1) : ℚ)⌉

end

end A298731.P16486610536002140630

/-!
# A298734: a(n) = n-th term in periodic sequence repeating the divisors of n in decreasing order.

The programs for A298734, there is no canonical definition to state claims against.
-/

/-! ## A298734.P14648668413841517991

`(n+1)/A122377(n+1)`
-/

namespace A298734.P14648668413841517991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A122377 (n + 1) : ℚ)

end

end A298734.P14648668413841517991

/-! ## A298734.P4257427889166254652

`A027750(A006218(n+1)-n%A000005(n+1))`
-/

namespace A298734.P4257427889166254652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 (n + 1) - Int.tmod (n : ℤ) (A000005 (n + 1))).toNat

end

end A298734.P4257427889166254652

/-! ## A298734.P14787120018109415888

`val(A000079(n), A000079(A122377(n+1)))+1`
-/

namespace A298734.P14787120018109415888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A122377 (n + 1)).toNat).toNat + 1

end

end A298734.P14787120018109415888

/-! ## A298734.P5445632064635484535

`val(A000302(n), A000302(A122377(n+1)))+1`
-/

namespace A298734.P5445632064635484535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000302 n).toNat (A000302 (A122377 (n + 1)).toNat).toNat + 1

end

end A298734.P5445632064635484535

/-! ## A298734.P552699589188984624

`A054531(A122377(n+1)+∑[n])`
-/

namespace A298734.P552699589188984624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A122377 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A298734.P552699589188984624

/-! ## A298734.P13298907626132878215

`A126988(A122377(n+1)+A000217(n))`
-/

namespace A298734.P13298907626132878215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A122377 (n + 1) + A000217 n).toNat

end

end A298734.P13298907626132878215

/-!
# A298735: Number of odd squares dividing n.

The programs for A298735, the canonical program `A298735.P15480129147772865535` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298735 has offset 1).

The definition of A298735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A298735.P15480129147772865535

`A046951(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A298735

/-- `A046951(A000265(n+1))` -/
def P15480129147772865535.Spec : Prop :=
  ∀ n, P15480129147772865535.a n = A298735 (n + 1)

theorem P15480129147772865535.correct : P15480129147772865535.Spec := by
  intro n
  simp only [A298735, Nat.add_sub_cancel]

end A298735

/-! ## A298735.P8832451276709016911

`A046951(4*(n+1))-A046951(n+1)`
-/

namespace A298735.P8832451276709016911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (4 * (n + 1)) - A046951 (n + 1)

end

end A298735.P8832451276709016911

namespace A298735

/-- `A046951(4*(n+1))-A046951(n+1)` -/
def P8832451276709016911.Spec : Prop :=
  ∀ n, P8832451276709016911.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P15687474792533094965

`A351308(n+1)%8`
-/

namespace A298735.P15687474792533094965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351308 (n + 1)) 8

end

end A298735.P15687474792533094965

namespace A298735

/-- `A351308(n+1)%8` -/
def P15687474792533094965.Spec : Prop :=
  ∀ n, P15687474792533094965.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P11793689224297449987

`and(7, A351307(n+1))`
-/

namespace A298735.P11793689224297449987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A351307 (n + 1))

end

end A298735.P11793689224297449987

namespace A298735

/-- `and(7, A351307(n+1))` -/
def P11793689224297449987.Spec : Prop :=
  ∀ n, P11793689224297449987.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P6494895759632609536

`∑{d}[n+1, A098108(#)]`
-/

namespace A298735.P6494895759632609536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A098108 d

end

end A298735.P6494895759632609536

namespace A298735

/-- `∑{d}[n+1, A098108(#)]` -/
def P6494895759632609536.Spec : Prop :=
  ∀ n, P6494895759632609536.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P694034118286737835

`∑{d}[n+1, (#*A000203(#))%2]`
-/

namespace A298735.P694034118286737835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d : ℤ) * A000203 d) 2

end

end A298735.P694034118286737835

namespace A298735

/-- `∑{d}[n+1, (#*A000203(#))%2]` -/
def P694034118286737835.Spec : Prop :=
  ∀ n, P694034118286737835.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P9223586154669777835

`∑{d}[n+1, and(1, and(#, A000005(#)))]`
-/

namespace A298735.P9223586154669777835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (Int.land (d : ℤ) (A000005 d))

end

end A298735.P9223586154669777835

namespace A298735

/-- `∑{d}[n+1, and(1, and(#, A000005(#)))]` -/
def P9223586154669777835.Spec : Prop :=
  ∀ n, P9223586154669777835.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P8910653183428058816

`A046951((n+1)/2^val(n+1, 2))`
-/

namespace A298735.P8910653183428058816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A298735.P8910653183428058816

namespace A298735

/-- `A046951((n+1)/2^val(n+1, 2))` -/
def P8910653183428058816.Spec : Prop :=
  ∀ n, P8910653183428058816.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P11655435459461797183

`A001227(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A298735.P11655435459461797183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A298735.P11655435459461797183

namespace A298735

/-- `A001227(∏{p}[n+1, #^val(n+1, #²)])` -/
def P11655435459461797183.Spec : Prop :=
  ∀ n, P11655435459461797183.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P14669882753244606558

`∑{d}[(n+1)/and(n+1, -(n+1)), A053866(#)]`
-/

namespace A298735.P14669882753244606558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A053866 d

end

end A298735.P14669882753244606558

namespace A298735

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A053866(#)]` -/
def P14669882753244606558.Spec : Prop :=
  ∀ n, P14669882753244606558.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P9817900710821327424

`A001227(A000188(n+1))`
-/

namespace A298735.P9817900710821327424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000188 (n + 1)).toNat

end

end A298735.P9817900710821327424

namespace A298735

/-- `A001227(A000188(n+1))` -/
def P9817900710821327424.Spec : Prop :=
  ∀ n, P9817900710821327424.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P2434486210696764182

`A046951(A064989(n+1))`
-/

namespace A298735.P2434486210696764182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A064989 (n + 1)).toNat

end

end A298735.P2434486210696764182

namespace A298735

/-- `A046951(A064989(n+1))` -/
def P2434486210696764182.Spec : Prop :=
  ∀ n, P2434486210696764182.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P13872020192854675857

`A001227(A337101(2*(n+1)))`
-/

namespace A298735.P13872020192854675857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A337101 (2 * (n + 1))).toNat

end

end A298735.P13872020192854675857

namespace A298735

/-- `A001227(A337101(2*(n+1)))` -/
def P13872020192854675857.Spec : Prop :=
  ∀ n, P13872020192854675857.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P13315106360265235085

`A046951(n+1)/A115362(n)`
-/

namespace A298735.P13315106360265235085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) / (A115362 n : ℚ)

end

end A298735.P13315106360265235085

namespace A298735

/-- `A046951(n+1)/A115362(n)` -/
def P13315106360265235085.Spec : Prop :=
  ∀ n, P13315106360265235085.a n = (A298735 (n + 1) : ℚ)

end A298735

/-! ## A298735.P7265430330084100729

`∑{d}[A000265(n+1), A093709(#)]`
-/

namespace A298735.P7265430330084100729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093709 d

end

end A298735.P7265430330084100729

namespace A298735

/-- `∑{d}[A000265(n+1), A093709(#)]` -/
def P7265430330084100729.Spec : Prop :=
  ∀ n, P7265430330084100729.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P11867390166204686284

`A065704(n+1)/A001511(n+1)`
-/

namespace A298735.P11867390166204686284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065704 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A298735.P11867390166204686284

namespace A298735

/-- `A065704(n+1)/A001511(n+1)` -/
def P11867390166204686284.Spec : Prop :=
  ∀ n, P11867390166204686284.a n = (A298735 (n + 1) : ℚ)

end A298735

/-! ## A298735.P6870664600831662894

`∑{d}[n+1, A008836(#)*A069733((n+1)/#)]`
-/

namespace A298735.P6870664600831662894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A069733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298735.P6870664600831662894

namespace A298735

/-- `∑{d}[n+1, A008836(#)*A069733((n+1)/#)]` -/
def P6870664600831662894.Spec : Prop :=
  ∀ n, P6870664600831662894.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P9757030178569893081

`∑{d}[n+1, A001227(#)*A166698((n+1)/#)]`
-/

namespace A298735.P9757030178569893081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A166698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298735.P9757030178569893081

namespace A298735

/-- `∑{d}[n+1, A001227(#)*A166698((n+1)/#)]` -/
def P9757030178569893081.Spec : Prop :=
  ∀ n, P9757030178569893081.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P10641796392851017179

`∑{d}[n+1, A008442(#)*A209661((n+1)/#)]`
-/

namespace A298735.P10641796392851017179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A209661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298735.P10641796392851017179

namespace A298735

/-- `∑{d}[n+1, A008442(#)*A209661((n+1)/#)]` -/
def P10641796392851017179.Spec : Prop :=
  ∀ n, P10641796392851017179.a n = A298735 (n + 1)

end A298735

/-! ## A298735.P7644658182837539724

`∑{d}[n+1, A000005(#)*A358839((n+1)/#)]`
-/

namespace A298735.P7644658182837539724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A358839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298735.P7644658182837539724

namespace A298735

/-- `∑{d}[n+1, A000005(#)*A358839((n+1)/#)]` -/
def P7644658182837539724.Spec : Prop :=
  ∀ n, P7644658182837539724.a n = A298735 (n + 1)

end A298735

/-!
# A298736: a(n) = s(n) - prime(n+1)+3, where s(n) = smallest even number x > prime(n) such that the difference x-p is composite for all primes p <= prime(n).

The programs for A298736, there is no canonical definition to state claims against.
-/

/-! ## A298736.P6375792763276220800

`A152522(n+1)-A000040(n+2)+3`
-/

namespace A298736.P6375792763276220800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - A000040 (n + 2) + 3

end

end A298736.P6375792763276220800

/-! ## A298736.P4683535005285966762

`A152522(n+1)-A154115(n+1)`
-/

namespace A298736.P4683535005285966762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - A154115 (n + 1)

end

end A298736.P4683535005285966762

/-! ## A298736.P7406194794873509496

`A152522(n+1)-record[A063070(n+1)]`
-/

namespace A298736.P7406194794873509496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298736.P7406194794873509496

/-! ## A298736.P17770178868509404326

`A152522(n+1)-record[A303603(n+1)]`
-/

namespace A298736.P17770178868509404326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298736.P17770178868509404326

/-! ## A298736.P3223594272636321391

`A152522(n+1)+3-A008578(n+3)`
-/

namespace A298736.P3223594272636321391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) + (3 - A008578 (n + 3))

end

end A298736.P3223594272636321391

/-! ## A298736.P16050647960891939967

`A152522(n+1)-record[n+1-A082467(n+4)]`
-/

namespace A298736.P16050647960891939967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A082467 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298736.P16050647960891939967

/-! ## A298736.P6215955645978963021

`A152522(n+1)-record[A007432(A144396(n+1))]`
-/

namespace A298736.P6215955645978963021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007432 (A144396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298736.P6215955645978963021

/-! ## A298736.P1955109173734931577

`A152522(n+1)-A007432(p?[A144396(n+1)])`
-/

namespace A298736.P1955109173734931577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1) - A007432 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298736.P1955109173734931577

/-!
# A298739: First differences of A000001 (the number of groups of order n).

The programs for A298739, there is no canonical definition to state claims against.
-/

/-! ## A298739.P10477561605298727353

`A000001(n+2)-A000001(n+1)`
-/

namespace A298739.P10477561605298727353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 2) - A000001 (n + 1)

end

end A298739.P10477561605298727353

/-! ## A298739.P10625490626376928935

`Δ[A000001(n+1)]`
-/

namespace A298739.P10625490626376928935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P10625490626376928935

/-! ## A298739.P8225182576658794368

`Δ[sqrt(A297420(n+1))]`
-/

namespace A298739.P8225182576658794368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P8225182576658794368

/-! ## A298739.P8368829911660849275

`Δ[A060689(n+1)+A000688(n+1)]`
-/

namespace A298739.P8368829911660849275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P8368829911660849275

/-! ## A298739.P8777475146575744388

`Δ[A060689(n+1)+A104404(n+1)-A104488(n+1)]`
-/

namespace A298739.P8777475146575744388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + (A104404 (n + 1) - A104488 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P8777475146575744388

/-! ## A298739.P3862328310427409322

`Δ[A066295(n+1)+2*A060689(n+1)]`
-/

namespace A298739.P3862328310427409322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066295 (n + 1) + 2 * A060689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P3862328310427409322

/-! ## A298739.P17590616703166386609

`Δ[A060689(n+1)+A066060(n+1)-A088806(n+1)]`
-/

namespace A298739.P17590616703166386609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + (A066060 (n + 1) - A088806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P17590616703166386609

/-! ## A298739.P10514738526099816907

`Δ[A238877(2*n+1)+A060689(n+1)]`
-/

namespace A298739.P10514738526099816907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1) + A060689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P10514738526099816907

/-! ## A298739.P1808014759434432195

`Δ[A238877(2*n+1)+A238877(2*(n+1))]`
-/

namespace A298739.P1808014759434432195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1) + A238877 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P1808014759434432195

/-! ## A298739.P9396308337034936047

`Δ[A068385(n+1)+A066389(n+1)]`
-/

namespace A298739.P9396308337034936047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068385 (n + 1) + A066389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298739.P9396308337034936047

/-!
# A298741: Solution (a(n)) of the complementary equation in Comments.

The programs for A298741, there is no canonical definition to state claims against.
-/

/-! ## A298741.P8288763098786529806

`∑[A325362(record[A112538(n+2)])]`
-/

namespace A298741.P8288763098786529806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112538 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298741.P8288763098786529806

/-! ## A298741.P8355627304958193128

`A023190(A024786(3*n+4))-1`
-/

namespace A298741.P8355627304958193128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A024786 (3 * n + 4)).toNat - 1

end

end A298741.P8355627304958193128

/-!
# A298746: Numbers n whose base-2 representation can be written as the concatenation of the base-2 representations of a list of prime numbers, allowing leading zeros.

The programs for A298746, there is no canonical definition to state claims against.
-/

/-! ## A298746.P9823593613112118844

`lt[A020639(A092406(2*(n+1))), A092421(n+1)]`
-/

namespace A298746.P9823593613112118844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092406 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298746.P9823593613112118844

/-! ## A298746.P10683852626995223959

`lt[A306684(A306711(2*n+5)), A306662(n)]`
-/

namespace A298746.P10683852626995223959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A306711 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298746.P10683852626995223959

/-! ## A298746.P13002011703751144164

`lt[A144112(A000041(n)), A331102(n)]`
-/

namespace A298746.P13002011703751144164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298746.P13002011703751144164

/-! ## A298746.P8959718450203327363

`lt[A010121(A282582(n)), A331102(n)]`
-/

namespace A298746.P8959718450203327363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A282582 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298746.P8959718450203327363

/-!
# A298747: If n = 2^(2*m+1)+j, 0 <= j < 3*2^(2*m+1), then a(n) = 2^(3*m)+j.

The programs for A298747, there is no canonical definition to state claims against.
-/

/-! ## A298747.P17605304542238487301

`lt[A136502(A072376(n)), A061023(n)]`
-/

namespace A298747.P17605304542238487301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136502 (A072376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P17605304542238487301

/-! ## A298747.P16408866072017144277

`lt[A046988(A070939(n)), A236933(n)]`
-/

namespace A298747.P16408866072017144277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046988 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P16408866072017144277

/-! ## A298747.P13661409408250819054

`lt[A136502(A072376(n)), A336695(n+1)+1]`
-/

namespace A298747.P13661409408250819054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136502 (A072376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336695 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P13661409408250819054

/-! ## A298747.P14429868000918257333

`lt[A136502(A072376(n)), A326758(3*n+1)]`
-/

namespace A298747.P14429868000918257333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136502 (A072376 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326758 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P14429868000918257333

/-! ## A298747.P7972893105586114212

`lt[A339574(n+1), A178484(A178482(2*n+1))]`
-/

namespace A298747.P7972893105586114212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178484 (A178482 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P7972893105586114212

/-! ## A298747.P13110857590298608306

`lt[A277042(A070939(n)), A087283(n+3)]`
-/

namespace A298747.P13110857590298608306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277042 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087283 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P13110857590298608306

/-! ## A298747.P8582237063010618022

`lt[A195993(n+4), A195884(A070941(n))]`
-/

namespace A298747.P8582237063010618022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195993 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195884 (A070941 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P8582237063010618022

/-! ## A298747.P6904393272792473618

`lt[A317086(A003817(n)), A299984(n)]`
-/

namespace A298747.P6904393272792473618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 (A003817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299984 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298747.P6904393272792473618

/-!
# A298748: Heinz numbers of aperiodic (relatively prime multiplicities) integer partitions with relatively prime parts.

The programs for A298748, there is no canonical definition to state claims against.
-/

/-! ## A298748.P18079610130079675527

`record[A316437(A007916(n+1))]`
-/

namespace A298748.P18079610130079675527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A007916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298748.P18079610130079675527

/-! ## A298748.P6039373311559816637

`record[A052410(A289509(n+1))]`
-/

namespace A298748.P6039373311559816637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A289509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298748.P6039373311559816637

/-! ## A298748.P12493696070922004963

`record[A316437(A025478(n+2))]`
-/

namespace A298748.P12493696070922004963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A025478 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298748.P12493696070922004963

/-! ## A298748.P17599506195272287156

`record[A316437(A052410(n+2))]`
-/

namespace A298748.P17599506195272287156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A052410 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298748.P17599506195272287156

/-! ## A298748.P2940281500220600465

`filter[A289509(n+1), A132350(#)]`
-/

namespace A298748.P2940281500220600465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A298748.P2940281500220600465

/-! ## A298748.P7383711218090161965

`record[A316437(sqrt(A153158(n+1)))]`
-/

namespace A298748.P7383711218090161965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (SequenceMachineLib.roundAway (Real.sqrt (A153158 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298748.P7383711218090161965

/-! ## A298748.P7636583137953824645

`eq[1, A052409(A327529(n+1))]+1`
-/

namespace A298748.P7636583137953824645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A327529 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298748.P7636583137953824645

/-! ## A298748.P18442142458507537248

`∩[A007916(n+1), A289509(n+1)]`
-/

namespace A298748.P18442142458507537248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298748.P18442142458507537248

/-!
# A298753: Triangle read by rows, T(n,m) = Sum_{k=1..m} k*k!*(-1)^(m+k)*Stirling2(m,k)* C(2*n+k-2*m-1,n-m)/(n+k-m), for n >= 0 and 0 <= m <= n.

The programs for A298753, there is no canonical definition to state claims against.
-/

/-! ## A298753.P15097195685383784505

`A172380(n)-A178798(A179454(n))`
-/

namespace A298753.P15097195685383784505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 n - A178798 (A179454 n).toNat

end

end A298753.P15097195685383784505

/-! ## A298753.P10646172969703795661

`A173050(n)-A178798(A179454(n))`
-/

namespace A298753.P10646172969703795661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173050 n - A178798 (A179454 n).toNat

end

end A298753.P10646172969703795661

/-! ## A298753.P9750529410852359661

`xor(A082858(A331278(n)), A172380(n))`
-/

namespace A298753.P9750529410852359661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082858 (A331278 n).toNat) (A172380 n)

end

end A298753.P9750529410852359661

/-! ## A298753.P5104248974693327965

`dr(A330709(A168193(A264428(n))))`
-/

namespace A298753.P5104248974693327965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A330709 (A168193 (A264428 n).toNat).toNat)

end

end A298753.P5104248974693327965

/-! ## A298753.P7699628522420660003

`A293113(n)+A254001(A176199(n))`
-/

namespace A298753.P7699628522420660003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 n + A254001 (A176199 n).toNat

end

end A298753.P7699628522420660003

/-!
# A298754: Numerator of sigma_3(n)/sigma_2(n).

The programs for A298754, the canonical program `A298754.P9048762497722160628` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298754 has offset 1).

The definition of A298754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298754.P9048762497722160628

`lcm(∑{d}[n+1, #^3], ∑{d}[n+1, #²])/∑{d}[n+1, #²]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298754

/-- `lcm(∑{d}[n+1, #^3], ∑{d}[n+1, #²])/∑{d}[n+1, #²]` -/
def P9048762497722160628.Spec : Prop :=
  ∀ n, P9048762497722160628.a n = (A298754 (n + 1) : ℚ)

end A298754

/-! ## A298754.P9424967549377239378

`∑{d}[n+1, #^3]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²])`
-/

namespace A298754.P9424967549377239378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℚ) / (Nat.gcd (∑ d ∈ Nat.divisors (f2 n), d ^ 3) (∑ d ∈ Nat.divisors (f3 n), d ^ 2) : ℚ)

end

end A298754.P9424967549377239378

namespace A298754

/-- `∑{d}[n+1, #^3]/gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²])` -/
def P9424967549377239378.Spec : Prop :=
  ∀ n, P9424967549377239378.a n = (A298754 (n + 1) : ℚ)

end A298754

/-! ## A298754.P9509454636727694368

`A001158(n+1)/gcd(A001157(n+1), A001158(n+1))`
-/

namespace A298754.P9509454636727694368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (Int.gcd (A001157 (n + 1)) (A001158 (n + 1)) : ℚ)

end

end A298754.P9509454636727694368

namespace A298754

/-- `A001158(n+1)/gcd(A001157(n+1), A001158(n+1))` -/
def P9509454636727694368.Spec : Prop :=
  ∀ n, P9509454636727694368.a n = (A298754 (n + 1) : ℚ)

end A298754

/-! ## A298754.P5495665350749553887

`A001158(n+1)/A001157(n+1)*A091260(n+1)`
-/

namespace A298754.P5495665350749553887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ) * (A091260 (n + 1) : ℚ)

end

end A298754.P5495665350749553887

namespace A298754

/-- `A001158(n+1)/A001157(n+1)*A091260(n+1)` -/
def P5495665350749553887.Spec : Prop :=
  ∀ n, P5495665350749553887.a n = (A298754 (n + 1) : ℚ)

end A298754

/-! ## A298754.P12287596912734425079

`A204273(n+1)/gcd(A204272(n+1), A204273(n+1))`
-/

namespace A298754.P12287596912734425079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204273 (n + 1) : ℚ) / (Int.gcd (A204272 (n + 1)) (A204273 (n + 1)) : ℚ)

end

end A298754.P12287596912734425079

namespace A298754

/-- `A204273(n+1)/gcd(A204272(n+1), A204273(n+1))` -/
def P12287596912734425079.Spec : Prop :=
  ∀ n, P12287596912734425079.a n = (A298754 (n + 1) : ℚ)

end A298754

/-!
# A298755: Quantitative (discrete) Helly numbers for the integer lattice Z^2.

The programs for A298755, there is no canonical definition to state claims against.
-/

/-! ## A298755.P10917323197354002487

`A298562(n)%19`
-/

namespace A298755.P10917323197354002487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298562 n) 19

end

end A298755.P10917323197354002487

/-! ## A298755.P6931105501369261641

`A089867(A298562(n))`
-/

namespace A298755.P6931105501369261641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A298562 n).toNat

end

end A298755.P6931105501369261641

/-! ## A298755.P10852005886614075950

`A298562(A033619(n+1))`
-/

namespace A298755.P10852005886614075950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 (A033619 (n + 1)).toNat

end

end A298755.P10852005886614075950

/-! ## A298755.P13077266126428953953

`A353886(A298562(n)+1)`
-/

namespace A298755.P13077266126428953953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353886 (A298562 n + 1).toNat

end

end A298755.P13077266126428953953

/-! ## A298755.P8822014592836158194

`A298562(n)+char[A224433(n)]`
-/

namespace A298755.P8822014592836158194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224433 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298755.P8822014592836158194

/-! ## A298755.P6261202527829721234

`A298562(n)+C(A069010(n), 4)`
-/

namespace A298755.P6261202527829721234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + (Nat.choose (A069010 n).toNat 4 : ℤ)

end

end A298755.P6261202527829721234

/-! ## A298755.P878942343863682130

`A298562(n)+char[A096279(n+1)]`
-/

namespace A298755.P878942343863682130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096279 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298755.P878942343863682130

/-! ## A298755.P11251287202730757537

`A298562(n)+char[A235421(n+1)]`
-/

namespace A298755.P11251287202730757537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235421 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298755.P11251287202730757537

/-! ## A298755.P9918387118159826304

`A298562(n)+char[A072260(2*(n+1))]`
-/

namespace A298755.P9918387118159826304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072260 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298755.P9918387118159826304

/-! ## A298755.P15001298699880315686

`A298562(char[A212014(2*(n+2))]+n)`
-/

namespace A298755.P15001298699880315686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212014 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298562 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A298755.P15001298699880315686

/-!
# A298758: Numbers k such that both k and 2k-1 are Poulet numbers (Fermat pseudoprimes to base 2).

The programs for A298758, there is no canonical definition to state claims against.
-/

/-! ## A298758.P1289539446933864813

`ceil(A303531(n+1)/2)`
-/

namespace A298758.P1289539446933864813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A303531 (n + 1) : ℚ) / 2⌉

end

end A298758.P1289539446933864813

/-! ## A298758.P14553436463410396359

`(A303531(Δ[n²]-n)+1)/2`
-/

namespace A298758.P14553436463410396359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A298758.P14553436463410396359

/-!
# A298759: Numbers k such that bphi(k) = k/2, where bphi is the bi-unitary analog of Euler's totient function (A116550).

The programs for A298759, there is no canonical definition to state claims against.
-/

/-! ## A298759.P2165427205936419081

`A002378(∑[A093560(n!-1)])`
-/

namespace A298759.P2165427205936419081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (Nat.factorial n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298759.P2165427205936419081

/-! ## A298759.P15901340263454532225

`A002378(A052845(2^floor(n/2))+n+1)`
-/

namespace A298759.P15901340263454532225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A052845 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat + (n + 1 : ℤ)).toNat

end

end A298759.P15901340263454532225

/-!
# A298760: Numbers k such that there is a record number of consecutive prime centered k-gonal numbers after 1.

The programs for A298760, there is no canonical definition to state claims against.
-/

/-! ## A298760.P5370195368472889957

`A287896(A155626(n))`
-/

namespace A298760.P5370195368472889957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A155626 n).toNat

end

end A298760.P5370195368472889957

/-! ## A298760.P5363690535210296176

`record[A349923(A019464(n))]`
-/

namespace A298760.P5363690535210296176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349923 (A019464 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298760.P5363690535210296176

/-!
# A298762: Numbers n such that uphi(n) = uphi(n+2) - uphi(n+1), where uphi is the unitary totient function (A047994).

The programs for A298762, there is no canonical definition to state claims against.
-/

/-! ## A298762.P16221731137751113919

`A292033(n+1)-2`
-/

namespace A298762.P16221731137751113919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292033 (n + 1) - 2

end

end A298762.P16221731137751113919

/-! ## A298762.P13951299158233282855

`abs(A292033(n+1)+A280560(2*n+1))`
-/

namespace A298762.P13951299158233282855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292033 (n + 1) + A280560 (2 * n + 1)|

end

end A298762.P13951299158233282855

/-! ## A298762.P7777469188607574712

`A299990(A035497(n+1))+A292033(n+1)`
-/

namespace A298762.P7777469188607574712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A035497 (n + 1)).toNat + A292033 (n + 1)

end

end A298762.P7777469188607574712

/-! ## A298762.P2059764629871424886

`A369978(A045714(n+1))+A292033(n+1)`
-/

namespace A298762.P2059764629871424886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369978 (A045714 (n + 1)).toNat + A292033 (n + 1)

end

end A298762.P2059764629871424886

/-! ## A298762.P9348074380755409851

`A339717(A098420(n+1))+A292033(n+1)`
-/

namespace A298762.P9348074380755409851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339717 (A098420 (n + 1)).toNat + A292033 (n + 1)

end

end A298762.P9348074380755409851

/-!
# A298764: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298764, there is no canonical definition to state claims against.
-/

/-! ## A298764.P8441503668322641781

`A298770(∑[4*n]+1)`
-/

namespace A298764.P8441503668322641781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298764.P8441503668322641781

/-! ## A298764.P14814836607154739734

`record[A298770(Δ[A235355(n)])]`
-/

namespace A298764.P14814836607154739734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298764.P14814836607154739734

/-! ## A298764.P14520490506475185321

`record[A298770(A330613(n+1))]`
-/

namespace A298764.P14520490506475185321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298764.P14520490506475185321

/-! ## A298764.P16806698236369828680

`A298770(A001844(n))+char[13]`
-/

namespace A298764.P16806698236369828680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298764.P16806698236369828680

/-! ## A298764.P6139646027091490846

`A298770(A001844(n))*A333733(n)`
-/

namespace A298764.P6139646027091490846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A001844 n).toNat * A333733 n

end

end A298764.P6139646027091490846

/-!
# A298765: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298765, there is no canonical definition to state claims against.
-/

/-! ## A298765.P10029523902250357148

`A298770(∑[n+2]+4)`
-/

namespace A298765.P10029523902250357148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298765.P10029523902250357148

/-! ## A298765.P201985866852545287

`A299567(∑[n+2]+4)`
-/

namespace A298765.P201985866852545287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298765.P201985866852545287

/-! ## A298765.P3548077113001258785

`and(-1, A299567(A167614(n+1)))`
-/

namespace A298765.P3548077113001258785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A299567 (A167614 (n + 1)).toNat)

end

end A298765.P3548077113001258785

/-! ## A298765.P12233095284835102988

`record[A010054(n)*A298770(n+3)]`
-/

namespace A298765.P12233095284835102988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A298770 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298765.P12233095284835102988

/-! ## A298765.P3290399363456603161

`record[gcd(A298770(n+1), A303913(n))]`
-/

namespace A298765.P3290399363456603161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298770 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298765.P3290399363456603161

/-!
# A298766: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298766, there is no canonical definition to state claims against.
-/

/-! ## A298766.P10266684224166349152

`A298770(∑[n+3]+7)`
-/

namespace A298766.P10266684224166349152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298766.P10266684224166349152

/-! ## A298766.P10397145720149072181

`A298770(A055999(n)+10)+char[16]`
-/

namespace A298766.P10397145720149072181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298766.P10397145720149072181

/-! ## A298766.P16724715601585322716

`A298770(A167614(n+2)+1)+char[16]`
-/

namespace A298766.P16724715601585322716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298766.P16724715601585322716

/-! ## A298766.P6064455435122424520

`A298770(A145018(n+4))%A001003(n+4)`
-/

namespace A298766.P6064455435122424520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298770 (A145018 (n + 4)).toNat) (A001003 (n + 4))

end

end A298766.P6064455435122424520

/-! ## A298766.P15937166256579931940

`A007318(C(n, 2))*A298770(A055999(n)+10)`
-/

namespace A298766.P15937166256579931940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298770 (A055999 n + 10).toNat

end

end A298766.P15937166256579931940

/-!
# A298767: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298767, there is no canonical definition to state claims against.
-/

/-! ## A298767.P12794515463191109065

`A298770(A374005(n+1))`
-/

namespace A298767.P12794515463191109065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A374005 (n + 1)).toNat

end

end A298767.P12794515463191109065

/-! ## A298767.P14502844375164034215

`A298770(A155212(n)+13)`
-/

namespace A298767.P14502844375164034215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A155212 n + 13).toNat

end

end A298767.P14502844375164034215

/-! ## A298767.P14935237468960963423

`A298770(A056000(n)+15)`
-/

namespace A298767.P14935237468960963423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A056000 n + 15).toNat

end

end A298767.P14935237468960963423

/-! ## A298767.P10650018885273440328

`A298770(eq[7, A066657(n)])`
-/

namespace A298767.P10650018885273440328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298767.P10650018885273440328

/-!
# A298768: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298768, there is no canonical definition to state claims against.
-/

/-! ## A298768.P6366137704259089242

`A298770(A374007(n+1))`
-/

namespace A298768.P6366137704259089242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A374007 (n + 1)).toNat

end

end A298768.P6366137704259089242

/-! ## A298768.P7781705306230891030

`A298770(A056115(n)+21)`
-/

namespace A298768.P7781705306230891030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A056115 n + 21).toNat

end

end A298768.P7781705306230891030

/-! ## A298768.P11703007930562757860

`A298770(A167499(n+4)+1)`
-/

namespace A298768.P11703007930562757860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A167499 (n + 4) + 1).toNat

end

end A298768.P11703007930562757860

/-! ## A298768.P15019929101017657054

`A298770(A167614(n+4)+3)`
-/

namespace A298768.P15019929101017657054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A167614 (n + 4) + 3).toNat

end

end A298768.P15019929101017657054

/-! ## A298768.P4769124986416499472

`A298770(A133263(n+5)+4)`
-/

namespace A298768.P4769124986416499472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A133263 (n + 5) + 4).toNat

end

end A298768.P4769124986416499472

/-!
# A298769: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298769, there is no canonical definition to state claims against.
-/

/-! ## A298769.P15105229130842009866

`A298770(A374008(n+1))`
-/

namespace A298769.P15105229130842009866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A374008 (n + 1)).toNat

end

end A298769.P15105229130842009866

/-! ## A298769.P10599992337598699920

`A298770(eq[11, A066657(n)])`
-/

namespace A298769.P10599992337598699920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298769.P10599992337598699920

/-! ## A298769.P14301212268477476075

`A298770(A167499(n+5)+2)`
-/

namespace A298769.P14301212268477476075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A167499 (n + 5) + 2).toNat

end

end A298769.P14301212268477476075

/-! ## A298769.P9339824363819587904

`A298770(A167614(n+5)+4)`
-/

namespace A298769.P9339824363819587904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (A167614 (n + 5) + 4).toNat

end

end A298769.P9339824363819587904

/-! ## A298769.P7136471727725247416

`A298770(eq[8, A131818(n+1)])`
-/

namespace A298769.P7136471727725247416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298770 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298769.P7136471727725247416

/-!
# A298770: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298770, there is no canonical definition to state claims against.
-/

/-! ## A298770.P9428531601398128486

`A051724(12*A299567(n+1))`
-/

namespace A298770.P9428531601398128486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (12 * A299567 (n + 1)).toNat

end

end A298770.P9428531601398128486

/-! ## A298770.P10792208864985428630

`A299567(n+1)^A185203(n)!`
-/

namespace A298770.P10792208864985428630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (n + 1) ^ Nat.factorial (A185203 n).toNat

end

end A298770.P10792208864985428630

/-! ## A298770.P11270071377945953301

`A299567(n+1)%A074304(n+1)`
-/

namespace A298770.P11270071377945953301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299567 (n + 1)) (A074304 (n + 1))

end

end A298770.P11270071377945953301

/-! ## A298770.P16483597271996985045

`A299567(n+1)+A000007(A212585(n))`
-/

namespace A298770.P16483597271996985045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (n + 1) + A000007 (A212585 n).toNat

end

end A298770.P16483597271996985045

/-! ## A298770.P3289436467790804886

`A299567(n+1)+A066035(A326842(n))`
-/

namespace A298770.P3289436467790804886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299567 (n + 1) + A066035 (A326842 n).toNat

end

end A298770.P3289436467790804886

/-!
# A298771: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298771, there is no canonical definition to state claims against.
-/

/-! ## A298771.P4532491955888914532

`A298775(∑[4*n]+1)`
-/

namespace A298771.P4532491955888914532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298771.P4532491955888914532

/-! ## A298771.P1451945644383605796

`record[A298775(A330613(n+1))]`
-/

namespace A298771.P1451945644383605796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298771.P1451945644383605796

/-! ## A298771.P4649610120277677893

`A298775(A001844(n))+char[10]`
-/

namespace A298771.P4649610120277677893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298771.P4649610120277677893

/-! ## A298771.P17068709702384948020

`A298775(A001844(n))%A005259(n)`
-/

namespace A298771.P17068709702384948020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298775 (A001844 n).toNat) (A005259 n)

end

end A298771.P17068709702384948020

/-! ## A298771.P3531741327183956980

`gcd(A185284(n), A298775(A001844(n)))`
-/

namespace A298771.P3531741327183956980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A298775 (A001844 n).toNat)

end

end A298771.P3531741327183956980

/-!
# A298772: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298772, there is no canonical definition to state claims against.
-/

/-! ## A298772.P7844968241408165906

`A298775(A374005(n+1))`
-/

namespace A298772.P7844968241408165906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A374005 (n + 1)).toNat

end

end A298772.P7844968241408165906

/-! ## A298772.P4519161048638707043

`A298775(A167499(n+3))`
-/

namespace A298772.P4519161048638707043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167499 (n + 3)).toNat

end

end A298772.P4519161048638707043

/-! ## A298772.P2920274576958107069

`A298775(A155212(n)+13)`
-/

namespace A298772.P2920274576958107069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A155212 n + 13).toNat

end

end A298772.P2920274576958107069

/-! ## A298772.P5058938613520043811

`A298775(A056000(n)+15)`
-/

namespace A298772.P5058938613520043811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A056000 n + 15).toNat

end

end A298772.P5058938613520043811

/-! ## A298772.P2041170776831749437

`A298775(eq[7, A066657(n)])`
-/

namespace A298772.P2041170776831749437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298772.P2041170776831749437

/-!
# A298773: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298773, there is no canonical definition to state claims against.
-/

/-! ## A298773.P16017265239410730889

`A298775(A374007(n+1))`
-/

namespace A298773.P16017265239410730889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A374007 (n + 1)).toNat

end

end A298773.P16017265239410730889

/-! ## A298773.P12690977347590605141

`A298775(A166136(n+4))`
-/

namespace A298773.P12690977347590605141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A166136 (n + 4)).toNat

end

end A298773.P12690977347590605141

/-! ## A298773.P4792625592022693080

`A298775(A056115(n)+21)`
-/

namespace A298773.P4792625592022693080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A056115 n + 21).toNat

end

end A298773.P4792625592022693080

/-! ## A298773.P2363968358282659520

`A298775(A167487(n+4)-1)`
-/

namespace A298773.P2363968358282659520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167487 (n + 4) - 1).toNat

end

end A298773.P2363968358282659520

/-! ## A298773.P11483183491498996233

`A298775(A167614(n+4)+3)`
-/

namespace A298773.P11483183491498996233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167614 (n + 4) + 3).toNat

end

end A298773.P11483183491498996233

/-!
# A298774: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298774, there is no canonical definition to state claims against.
-/

/-! ## A298774.P1924842281732862936

`A298775(A374008(n+1))`
-/

namespace A298774.P1924842281732862936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A374008 (n + 1)).toNat

end

end A298774.P1924842281732862936

/-! ## A298774.P11628110574598802432

`A298775(A167487(n+5))`
-/

namespace A298774.P11628110574598802432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167487 (n + 5)).toNat

end

end A298774.P11628110574598802432

/-! ## A298774.P18013117989507764030

`A298775(A056119(n)+28)`
-/

namespace A298774.P18013117989507764030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A056119 n + 28).toNat

end

end A298774.P18013117989507764030

/-! ## A298774.P14759444254741472718

`A298775(eq[11, A066657(n)])`
-/

namespace A298774.P14759444254741472718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298774.P14759444254741472718

/-! ## A298774.P10796953613740886280

`A298775(A167499(n+5)+2)`
-/

namespace A298774.P10796953613740886280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298775 (A167499 (n + 5) + 2).toNat

end

end A298774.P10796953613740886280

/-!
# A298775: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298775, there is no canonical definition to state claims against.
-/

/-! ## A298775.P17884030674025043281

`A297959(n+1)+A025469(A080510(n+1))`
-/

namespace A298775.P17884030674025043281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A025469 (A080510 (n + 1)).toNat

end

end A298775.P17884030674025043281

/-! ## A298775.P3643267404914406806

`A297959(n+1)+A054899(A010894(n))`
-/

namespace A298775.P3643267404914406806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A054899 (A010894 (n + 21)).toNat

end

end A298775.P3643267404914406806

/-! ## A298775.P9665396051068596251

`A297959(n+1)+A011732(A010894(n)²)`
-/

namespace A298775.P9665396051068596251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A011732 (A010894 (n + 21) ^ 2).toNat

end

end A298775.P9665396051068596251

/-! ## A298775.P17706061274489359521

`A297959(n+1)+A011732(2*A010894(n))`
-/

namespace A298775.P17706061274489359521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (n + 1) + A011732 (2 * A010894 (n + 21)).toNat

end

end A298775.P17706061274489359521

/-!
# A298776: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298776, there is no canonical definition to state claims against.
-/

/-! ## A298776.P13452141345156472402

`A298782(∑[4*n]+1)`
-/

namespace A298776.P13452141345156472402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298776.P13452141345156472402

/-! ## A298776.P1018030870738274395

`and(-1, A298782(A001844(n)))`
-/

namespace A298776.P1018030870738274395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298782 (A001844 n).toNat)

end

end A298776.P1018030870738274395

/-! ## A298776.P18212888571798581842

`A298782(n+1)*A298782(n²+(n+1)²)`
-/

namespace A298776.P18212888571798581842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (n + 1) * A298782 (n ^ 2 + (n + 1) ^ 2)

end

end A298776.P18212888571798581842

/-! ## A298776.P689401696300301499

`A298782(A001844(n))+A025439(n)`
-/

namespace A298776.P689401696300301499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A001844 n).toNat + A025439 n

end

end A298776.P689401696300301499

/-! ## A298776.P17820580991651761566

`A298782(A001844(n))+A025466(n)`
-/

namespace A298776.P17820580991651761566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A001844 n).toNat + A025466 n

end

end A298776.P17820580991651761566

/-!
# A298777: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298777, the canonical program `A298777.P12818519690739495720` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298777 has offset 1).

The definition of A298777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298777.P11225946874028031590

`ogf((-1-4x^2+5x^3+4x^4-x^5+3x^6)/(-1+x+x^2))`
-/

namespace A298777.P11225946874028031590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 4, -5, -4, 1, -3] [1, -1, -1] n

end

end A298777.P11225946874028031590

namespace A298777

/-- `ogf((-1-4x^2+5x^3+4x^4-x^5+3x^6)/(-1+x+x^2))` -/
def P11225946874028031590.Spec : Prop :=
  ∀ n, P11225946874028031590.a n = A298777 (n + 1)

end A298777

/-! ## A298777.P12818519690739495720

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=2, a(4)=4, a(5)=7, a(6)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298777

/-- `a(n-1)+a(n-2)` -/
def P12818519690739495720.Spec : Prop :=
  ∀ n, (P12818519690739495720.a n : ℤ) = A298777 (n + 1)

theorem P12818519690739495720.correct : P12818519690739495720.Spec := by
  intro n
  simp only [A298777, Nat.add_sub_cancel]

end A298777

/-! ## A298777.P7505077357708715356

`A298782(∑[n+2]+4)`
-/

namespace A298777.P7505077357708715356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298777.P7505077357708715356

namespace A298777

/-- `A298782(∑[n+2]+4)` -/
def P7505077357708715356.Spec : Prop :=
  ∀ n, P7505077357708715356.a n = A298777 (n + 1)

end A298777

/-! ## A298777.P853359512664212835

`and(-1, A298782(A167614(n+1)))`
-/

namespace A298777.P853359512664212835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298782 (A167614 (n + 1)).toNat)

end

end A298777.P853359512664212835

namespace A298777

/-- `and(-1, A298782(A167614(n+1)))` -/
def P853359512664212835.Spec : Prop :=
  ∀ n, P853359512664212835.a n = A298777 (n + 1)

end A298777

/-! ## A298777.P11541675890798360483

`A326686(n)+A298782(A167614(n+1))`
-/

namespace A298777.P11541675890798360483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A298782 (A167614 (n + 1)).toNat

end

end A298777.P11541675890798360483

namespace A298777

/-- `A326686(n)+A298782(A167614(n+1))` -/
def P11541675890798360483.Spec : Prop :=
  ∀ n, P11541675890798360483.a n = A298777 (n + 1)

end A298777

/-!
# A298778: Number of n X 4 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298778, there is no canonical definition to state claims against.
-/

/-! ## A298778.P13535625863725538458

`A298782(∑[n+3]+7)`
-/

namespace A298778.P13535625863725538458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298778.P13535625863725538458

/-! ## A298778.P13906421913447835241

`A298782(A052905(n)+9)+char[24]`
-/

namespace A298778.P13906421913447835241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298778.P13906421913447835241

/-! ## A298778.P17607908803708196144

`A298782(A052905(n)+9)%A000108(n+3)`
-/

namespace A298778.P17607908803708196144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298782 (A052905 n + 9).toNat) (A000108 (n + 3))

end

end A298778.P17607908803708196144

/-! ## A298778.P17991588784437798284

`and(1, A000041(n))!*A298782(A052905(n)+9)`
-/

namespace A298778.P17991588784437798284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000041 n)).toNat : ℤ) * A298782 (A052905 n + 9).toNat

end

end A298778.P17991588784437798284

/-! ## A298778.P3224492639766365629

`A007318(C(2, n+1))*A298782(A052905(n)+9)`
-/

namespace A298778.P3224492639766365629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A298782 (A052905 n + 9).toNat

end

end A298778.P3224492639766365629

/-!
# A298779: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298779, there is no canonical definition to state claims against.
-/

/-! ## A298779.P10135426392575253589

`A298782(A374005(n+1))`
-/

namespace A298779.P10135426392575253589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A374005 (n + 1)).toNat

end

end A298779.P10135426392575253589

/-! ## A298779.P4002375290508334339

`A298782(A167499(n+3))`
-/

namespace A298779.P4002375290508334339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A167499 (n + 3)).toNat

end

end A298779.P4002375290508334339

/-! ## A298779.P6860627198617879000

`A298782(A155212(n)+13)`
-/

namespace A298779.P6860627198617879000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A155212 n + 13).toNat

end

end A298779.P6860627198617879000

/-! ## A298779.P12151896865990652089

`A298782(A056000(n)+15)`
-/

namespace A298779.P12151896865990652089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A056000 n + 15).toNat

end

end A298779.P12151896865990652089

/-! ## A298779.P11776822961873598652

`A298782(eq[7, A066657(n)])`
-/

namespace A298779.P11776822961873598652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298779.P11776822961873598652

/-!
# A298780: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298780, there is no canonical definition to state claims against.
-/

/-! ## A298780.P13922809150838242617

`A298782(A374007(n+1))`
-/

namespace A298780.P13922809150838242617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A374007 (n + 1)).toNat

end

end A298780.P13922809150838242617

/-! ## A298780.P16307537923686603395

`A298782(A166136(n+4))`
-/

namespace A298780.P16307537923686603395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A166136 (n + 4)).toNat

end

end A298780.P16307537923686603395

/-! ## A298780.P5308133391855112600

`A298782(A056115(n)+21)`
-/

namespace A298780.P5308133391855112600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A056115 n + 21).toNat

end

end A298780.P5308133391855112600

/-! ## A298780.P7871200338325787401

`A298782(A167499(n+4)+1)`
-/

namespace A298780.P7871200338325787401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A167499 (n + 4) + 1).toNat

end

end A298780.P7871200338325787401

/-! ## A298780.P13697711592510943692

`A298782(A167614(n+4)+3)`
-/

namespace A298780.P13697711592510943692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A167614 (n + 4) + 3).toNat

end

end A298780.P13697711592510943692

/-!
# A298781: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298781, there is no canonical definition to state claims against.
-/

/-! ## A298781.P1637775818965921447

`A298782(A374008(n+1))`
-/

namespace A298781.P1637775818965921447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A374008 (n + 1)).toNat

end

end A298781.P1637775818965921447

/-! ## A298781.P9671209680000376307

`A298782(A167487(n+5))`
-/

namespace A298781.P9671209680000376307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A167487 (n + 5)).toNat

end

end A298781.P9671209680000376307

/-! ## A298781.P576380246120629729

`A298782(A056119(n)+28)`
-/

namespace A298781.P576380246120629729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A056119 n + 28).toNat

end

end A298781.P576380246120629729

/-! ## A298781.P11866800187604478842

`A298782(eq[11, A066657(n)])`
-/

namespace A298781.P11866800187604478842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298781.P11866800187604478842

/-! ## A298781.P3629567160078363810

`A298782(A167614(n+5)+4)`
-/

namespace A298781.P3629567160078363810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298782 (A167614 (n + 5) + 4).toNat

end

end A298781.P3629567160078363810

/-!
# A298782: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298782, there is no canonical definition to state claims against.
-/

/-! ## A298782.P10522923724053396040

`A298444(n+1)-A376975(A299521(n+1))`
-/

namespace A298782.P10522923724053396040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (n + 1) - A376975 (A299521 (n + 1)).toNat

end

end A298782.P10522923724053396040

/-! ## A298782.P9107614378063885414

`A247143(A298444(n+1))%A322791(3*(n+1))`
-/

namespace A298782.P9107614378063885414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247143 (A298444 (n + 1)).toNat) (A322791 (3 * (n + 1)))

end

end A298782.P9107614378063885414

/-!
# A298784: Expansion of (1 + x^2)*(1 + 3*x + x^2) / ((1 - x)*(1 - x^3)).

The programs for A298784, the canonical program `A298784.P6278140967888580230` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298784 has offset 0).

The definition of A298784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2+3x^3+x^4)/(1-x-x^3+x^4))` (program `A298784.P6278140967888580230`, by `A298784.P6278140967888580230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298784.P6278140967888580230

`ogf((1+3x+2x^2+3x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298784

/-- `ogf((1+3x+2x^2+3x^3+x^4)/(1-x-x^3+x^4))` -/
def P6278140967888580230.Spec : Prop :=
  ∀ n, P6278140967888580230.a n = A298784 n

theorem P6278140967888580230.correct : P6278140967888580230.Spec := by
  intro n
  simp only [A298784]

end A298784

/-! ## A298784.P7116562854605103586

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=10, a(4)=14`
-/

namespace A298784.P7116562854605103586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 10, 14] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A298784.P7116562854605103586

namespace A298784

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P7116562854605103586.Spec : Prop :=
  ∀ n, P7116562854605103586.a n = A298784 n

end A298784

/-! ## A298784.P18429599028917539053

`a(n-3)+10` with `a(0)=1, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A298784.P18429599028917539053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 10] fun n a =>
  a (n - 3) + 10

end

end A298784.P18429599028917539053

namespace A298784

/-- `a(n-3)+10` -/
def P18429599028917539053.Spec : Prop :=
  ∀ n, (P18429599028917539053.a n : ℤ) = A298784 n

end A298784

/-! ## A298784.P10460134410812268802

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A298784.P10460134410812268802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298784.P10460134410812268802

namespace A298784

/-- `∑[floor(a(n-3))]` -/
def P10460134410812268802.Spec : Prop :=
  ∀ n, (P10460134410812268802.a n : ℤ) = A298784 n

end A298784

/-! ## A298784.P18208184029343590942

`∑[gcd(4, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A298784.P18208184029343590942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f1 =>
  Nat.gcd 4 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298784.P18208184029343590942

namespace A298784

/-- `∑[gcd(4, a(n-3))]` -/
def P18208184029343590942.Spec : Prop :=
  ∀ n, (P18208184029343590942.a n : ℤ) = A298784 n

end A298784

/-! ## A298784.P617712717802150539

`∑[a(n-3)%5]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A298784.P617712717802150539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298784.P617712717802150539

namespace A298784

/-- `∑[a(n-3)%5]` -/
def P617712717802150539.Spec : Prop :=
  ∀ n, (P617712717802150539.a n : ℤ) = A298784 n

end A298784

/-! ## A298784.P9531079928131145140

`∑[a((n+1)²%3)+1]` with `a(0)=1, a(1)=3`
-/

namespace A298784.P9531079928131145140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 ((n + 1) ^ 2 % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298784.P9531079928131145140

namespace A298784

/-- `∑[a((n+1)²%3)+1]` -/
def P9531079928131145140.Spec : Prop :=
  ∀ n, (P9531079928131145140.a n : ℤ) = A298784 n

end A298784

/-! ## A298784.P5184896198917265175

`A301694(n)-2*n`
-/

namespace A298784.P5184896198917265175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - (2 * n : ℤ)

end

end A298784.P5184896198917265175

namespace A298784

/-- `A301694(n)-2*n` -/
def P5184896198917265175.Spec : Prop :=
  ∀ n, P5184896198917265175.a n = A298784 n

end A298784

/-! ## A298784.P8425871419256325752

`floor(sqrt(A047342(n+1)²+2))+n`
-/

namespace A298784.P8425871419256325752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A047342 (n + 1) ^ 2 + 2) + (n : ℤ)

end

end A298784.P8425871419256325752

namespace A298784

/-- `floor(sqrt(A047342(n+1)²+2))+n` -/
def P8425871419256325752.Spec : Prop :=
  ∀ n, P8425871419256325752.a n = A298784 n

end A298784

/-! ## A298784.P637789828406097199

`A008576(n)+A004396(n)`
-/

namespace A298784.P637789828406097199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + A004396 n

end

end A298784.P637789828406097199

namespace A298784

/-- `A008576(n)+A004396(n)` -/
def P637789828406097199.Spec : Prop :=
  ∀ n, P637789828406097199.a n = A298784 n

end A298784

/-! ## A298784.P9262798284661198089

`A222657(n)+A004273(n)`
-/

namespace A298784.P9262798284661198089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222657 n + A004273 n

end

end A298784.P9262798284661198089

namespace A298784

/-- `A222657(n)+A004273(n)` -/
def P9262798284661198089.Spec : Prop :=
  ∀ n, P9262798284661198089.a n = A298784 n

end A298784

/-! ## A298784.P10159980909032929017

`A298786(n)+A102283(n)`
-/

namespace A298784.P10159980909032929017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A102283 n

end

end A298784.P10159980909032929017

namespace A298784

/-- `A298786(n)+A102283(n)` -/
def P10159980909032929017.Spec : Prop :=
  ∀ n, P10159980909032929017.a n = A298784 n

end A298784

/-! ## A298784.P12203894559142065627

`A316317(n)+A101455(n)`
-/

namespace A298784.P12203894559142065627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n + A101455 n

end

end A298784.P12203894559142065627

namespace A298784

/-- `A316317(n)+A101455(n)` -/
def P12203894559142065627.Spec : Prop :=
  ∀ n, P12203894559142065627.a n = A298784 n

end A298784

/-! ## A298784.P8685168261781528767

`A298789(n)-A087509(n)`
-/

namespace A298784.P8685168261781528767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 n - A087509 n

end

end A298784.P8685168261781528767

namespace A298784

/-- `A298789(n)-A087509(n)` -/
def P8685168261781528767.Spec : Prop :=
  ∀ n, P8685168261781528767.a n = A298784 n

end A298784

/-! ## A298784.P14774716404781562812

`A047342(n+1)+A028310(n)`
-/

namespace A298784.P14774716404781562812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1) + A028310 n

end

end A298784.P14774716404781562812

namespace A298784

/-- `A047342(n+1)+A028310(n)` -/
def P14774716404781562812.Spec : Prop :=
  ∀ n, P14774716404781562812.a n = A298784 n

end A298784

/-! ## A298784.P17794501381066414646

`A008706(n)-A008854(n+1)`
-/

namespace A298784.P17794501381066414646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A008854 (n + 1)

end

end A298784.P17794501381066414646

namespace A298784

/-- `A008706(n)-A008854(n+1)` -/
def P17794501381066414646.Spec : Prop :=
  ∀ n, P17794501381066414646.a n = A298784 n

end A298784

/-! ## A298784.P12497838590467400333

`A008458(n)-A047395(n+1)`
-/

namespace A298784.P12497838590467400333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047395 (n + 1)

end

end A298784.P12497838590467400333

namespace A298784

/-- `A008458(n)-A047395(n+1)` -/
def P12497838590467400333.Spec : Prop :=
  ∀ n, P12497838590467400333.a n = A298784 n

end A298784

/-! ## A298784.P18258499485594219137

`A219529(n)-A047266(n+1)`
-/

namespace A298784.P18258499485594219137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A047266 (n + 1)

end

end A298784.P18258499485594219137

namespace A298784

/-- `A219529(n)-A047266(n+1)` -/
def P18258499485594219137.Spec : Prop :=
  ∀ n, P18258499485594219137.a n = A298784 n

end A298784

/-! ## A298784.P15093127586468268116

`A271114(n)-A047529(n+1)`
-/

namespace A298784.P15093127586468268116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047529 (n + 1)

end

end A298784.P15093127586468268116

namespace A298784

/-- `A271114(n)-A047529(n+1)` -/
def P15093127586468268116.Spec : Prop :=
  ∀ n, P15093127586468268116.a n = A298784 n

end A298784

/-! ## A298784.P14833563020800763241

`A301298(n)-A042965(n+1)`
-/

namespace A298784.P14833563020800763241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A042965 (n + 1)

end

end A298784.P14833563020800763241

namespace A298784

/-- `A301298(n)-A042965(n+1)` -/
def P14833563020800763241.Spec : Prop :=
  ∀ n, P14833563020800763241.a n = A298784 n

end A298784

/-!
# A298785: Partial sums of A298784.

The programs for A298785, the canonical program `A298785.P5971004465829544622` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298785 has offset 0).

The definition of A298785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298785.P5971004465829544622

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=21, a(4)=35`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298785

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P5971004465829544622.Spec : Prop :=
  ∀ n, P5971004465829544622.a n = A298785 n

theorem P5971004465829544622.correct : P5971004465829544622.Spec := by
  intro n
  simp only [A298785]

end A298785

/-! ## A298785.P16847166957982418026

`ceil(∑[10*n]/3)+1`
-/

namespace A298785.P16847166957982418026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉ + 1

end

end A298785.P16847166957982418026

namespace A298785

/-- `ceil(∑[10*n]/3)+1` -/
def P16847166957982418026.Spec : Prop :=
  ∀ n, P16847166957982418026.a n = A298785 n

end A298785

/-! ## A298785.P14605731518799743659

`∑[a(n-3)+10]` with `a(0)=1, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A298785.P14605731518799743659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6, 10] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P14605731518799743659

namespace A298785

/-- `∑[a(n-3)+10]` -/
def P14605731518799743659.Spec : Prop :=
  ∀ n, (P14605731518799743659.a n : ℤ) = A298785 n

end A298785

/-! ## A298785.P14389982557521618795

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A298785.P14389982557521618795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P14389982557521618795

namespace A298785

/-- `∑[∑[floor(a(n-3))]]` -/
def P14389982557521618795.Spec : Prop :=
  ∀ n, (P14389982557521618795.a n : ℤ) = A298785 n

end A298785

/-! ## A298785.P9257112797892653908

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A298785.P9257112797892653908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P9257112797892653908

namespace A298785

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P9257112797892653908.Spec : Prop :=
  ∀ n, (P9257112797892653908.a n : ℤ) = A298785 n

end A298785

/-! ## A298785.P13911138292907992299

`∑[∑[a(n-3)%5]]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A298785.P13911138292907992299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4, 4] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P13911138292907992299

namespace A298785

/-- `∑[∑[a(n-3)%5]]` -/
def P13911138292907992299.Spec : Prop :=
  ∀ n, (P13911138292907992299.a n : ℤ) = A298785 n

end A298785

/-! ## A298785.P2056887212960873803

`∑[A298784(n)]`
-/

namespace A298785.P2056887212960873803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P2056887212960873803

namespace A298785

/-- `∑[A298784(n)]` -/
def P2056887212960873803.Spec : Prop :=
  ∀ n, P2056887212960873803.a n = A298785 n

end A298785

/-! ## A298785.P8077724088941417593

`or(1, A298787(n))`
-/

namespace A298785.P8077724088941417593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A298787 n)

end

end A298785.P8077724088941417593

namespace A298785

/-- `or(1, A298787(n))` -/
def P8077724088941417593.Spec : Prop :=
  ∀ n, P8077724088941417593.a n = A298785 n

end A298785

/-! ## A298785.P17598067930040155366

`or(1, A316358(n))`
-/

namespace A298785.P17598067930040155366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316358 n)

end

end A298785.P17598067930040155366

namespace A298785

/-- `or(1, A316358(n))` -/
def P17598067930040155366.Spec : Prop :=
  ∀ n, P17598067930040155366.a n = A298785 n

end A298785

/-! ## A298785.P9985387831496022774

`or(1, ∑[A316317(n)])`
-/

namespace A298785.P9985387831496022774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298785.P9985387831496022774

namespace A298785

/-- `or(1, ∑[A316317(n)])` -/
def P9985387831496022774.Spec : Prop :=
  ∀ n, P9985387831496022774.a n = A298785 n

end A298785

/-! ## A298785.P2423682159656247558

`or(1, A000969(n)+n²)`
-/

namespace A298785.P2423682159656247558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000969 n + (n ^ 2 : ℤ))

end

end A298785.P2423682159656247558

namespace A298785

/-- `or(1, A000969(n)+n²)` -/
def P2423682159656247558.Spec : Prop :=
  ∀ n, P2423682159656247558.a n = A298785 n

end A298785

/-! ## A298785.P18132322602829519961

`∑[A301694(n)-2*n]`
-/

namespace A298785.P18132322602829519961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P18132322602829519961

namespace A298785

/-- `∑[A301694(n)-2*n]` -/
def P18132322602829519961.Spec : Prop :=
  ∀ n, P18132322602829519961.a n = A298785 n

end A298785

/-! ## A298785.P5658121483228721457

`ceil((∑[A008592(n)]+3)/3)`
-/

namespace A298785.P5658121483228721457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 3⌉

end

end A298785.P5658121483228721457

namespace A298785

/-- `ceil((∑[A008592(n)]+3)/3)` -/
def P5658121483228721457.Spec : Prop :=
  ∀ n, P5658121483228721457.a n = A298785 n

end A298785

/-! ## A298785.P7720633181310637974

`ceil(A005902(n)/(2*n+1))`
-/

namespace A298785.P7720633181310637974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005902 n : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A298785.P7720633181310637974

namespace A298785

/-- `ceil(A005902(n)/(2*n+1))` -/
def P7720633181310637974.Spec : Prop :=
  ∀ n, P7720633181310637974.a n = A298785 n

end A298785

/-! ## A298785.P3600511831031074136

`∑[A063225(n+1)-A063199(n+2)]`
-/

namespace A298785.P3600511831031074136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1) - A063199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P3600511831031074136

namespace A298785

/-- `∑[A063225(n+1)-A063199(n+2)]` -/
def P3600511831031074136.Spec : Prop :=
  ∀ n, P3600511831031074136.a n = A298785 n

end A298785

/-! ## A298785.P7780469219066089366

`∑[A004277(A004526(comp[4*n+1])+n)]`
-/

namespace A298785.P7780469219066089366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004526 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P7780469219066089366

namespace A298785

/-- `∑[A004277(A004526(comp[4*n+1])+n)]` -/
def P7780469219066089366.Spec : Prop :=
  ∀ n, P7780469219066089366.a n = A298785 n

end A298785

/-! ## A298785.P2412560259938646781

`∑[A004277(abs(n-A002264(8*n+1)))]`
-/

namespace A298785.P2412560259938646781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 |(n : ℤ) - A002264 (8 * n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298785.P2412560259938646781

namespace A298785

/-- `∑[A004277(abs(n-A002264(8*n+1)))]` -/
def P2412560259938646781.Spec : Prop :=
  ∀ n, P2412560259938646781.a n = A298785 n

end A298785

/-! ## A298785.P13517005281772072239

`A187715(A096777(n+1))`
-/

namespace A298785.P13517005281772072239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (A096777 (n + 1)).toNat

end

end A298785.P13517005281772072239

namespace A298785

/-- `A187715(A096777(n+1))` -/
def P13517005281772072239.Spec : Prop :=
  ∀ n, P13517005281772072239.a n = A298785 n

end A298785

/-! ## A298785.P15292297503672723917

`A063213(∑[n]+1)`
-/

namespace A298785.P15292297503672723917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298785.P15292297503672723917

namespace A298785

/-- `A063213(∑[n]+1)` -/
def P15292297503672723917.Spec : Prop :=
  ∀ n, P15292297503672723917.a n = A298785 n

end A298785

/-! ## A298785.P17888864659534336709

`A005408(∑[A004396(n)+n])`
-/

namespace A298785.P17888864659534336709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298785.P17888864659534336709

namespace A298785

/-- `A005408(∑[A004396(n)+n])` -/
def P17888864659534336709.Spec : Prop :=
  ∀ n, P17888864659534336709.a n = A298785 n

end A298785

/-!
# A298786: Expansion of (x^4 + 2*x^3 + 4*x^2 + 2*x + 1) / ((1 - x)*(1 - x^3)).

The programs for A298786, the canonical program `A298786.P14431482331037710348` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298786 has offset 0).

The definition of A298786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+4x^2+2x^3+x^4)/(1-x-x^3+x^4))` (program `A298786.P14431482331037710348`, by `A298786.P14431482331037710348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298786.P14431482331037710348

`ogf((1+2x+4x^2+2x^3+x^4)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298786

/-- `ogf((1+2x+4x^2+2x^3+x^4)/(1-x-x^3+x^4))` -/
def P14431482331037710348.Spec : Prop :=
  ∀ n, P14431482331037710348.a n = A298786 n

theorem P14431482331037710348.correct : P14431482331037710348.Spec := by
  intro n
  simp only [A298786]

end A298786

/-! ## A298786.P17634179260359275862

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=10, a(4)=13`
-/

namespace A298786.P17634179260359275862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 10, 13] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A298786.P17634179260359275862

namespace A298786

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P17634179260359275862.Spec : Prop :=
  ∀ n, P17634179260359275862.a n = A298786 n

end A298786

/-! ## A298786.P2500161662155808217

`a(n-3)+10` with `a(0)=1, a(1)=3, a(2)=7, a(3)=10`
-/

namespace A298786.P2500161662155808217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 10] fun n a =>
  a (n - 3) + 10

end

end A298786.P2500161662155808217

namespace A298786

/-- `a(n-3)+10` -/
def P2500161662155808217.Spec : Prop :=
  ∀ n, (P2500161662155808217.a n : ℤ) = A298786 n

end A298786

/-! ## A298786.P1999597926606754813

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A298786.P1999597926606754813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298786.P1999597926606754813

namespace A298786

/-- `∑[floor(a(n-3))]` -/
def P1999597926606754813.Spec : Prop :=
  ∀ n, (P1999597926606754813.a n : ℤ) = A298786 n

end A298786

/-! ## A298786.P1834405053581783153

`ceil((abs(2-10*n)+1)/3)`
-/

namespace A298786.P1834405053581783153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - (10 * n : ℤ)| + 1 : ℚ) / 3⌉

end

end A298786.P1834405053581783153

namespace A298786

/-- `ceil((abs(2-10*n)+1)/3)` -/
def P1834405053581783153.Spec : Prop :=
  ∀ n, P1834405053581783153.a n = A298786 n

end A298786

/-! ## A298786.P10217690433893214920

`∑[a(n-3)%5]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=3`
-/

namespace A298786.P10217690433893214920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3, 3] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298786.P10217690433893214920

namespace A298786

/-- `∑[a(n-3)%5]` -/
def P10217690433893214920.Spec : Prop :=
  ∀ n, (P10217690433893214920.a n : ℤ) = A298786 n

end A298786

/-! ## A298786.P8998124491292602667

`∑[a(gcd(3, n+1))+1]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A298786.P8998124491292602667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (Nat.gcd 3 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298786.P8998124491292602667

namespace A298786

/-- `∑[a(gcd(3, n+1))+1]` -/
def P8998124491292602667.Spec : Prop :=
  ∀ n, (P8998124491292602667.a n : ℤ) = A298786 n

end A298786

/-! ## A298786.P18205888426170260854

`A219529(n)-2*n`
-/

namespace A298786.P18205888426170260854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (2 * n : ℤ)

end

end A298786.P18205888426170260854

namespace A298786

/-- `A219529(n)-2*n` -/
def P18205888426170260854.Spec : Prop :=
  ∀ n, P18205888426170260854.a n = A298786 n

end A298786

/-! ## A298786.P7976741950060575734

`A004277(n)+comp[4*n+2]`
-/

namespace A298786.P7976741950060575734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A298786.P7976741950060575734

namespace A298786

/-- `A004277(n)+comp[4*n+2]` -/
def P7976741950060575734.Spec : Prop :=
  ∀ n, P7976741950060575734.a n = A298786 n

end A298786

/-! ## A298786.P11204852386177156131

`comp[2*(n+1)]+A042965(n+1)+1`
-/

namespace A298786.P11204852386177156131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A042965 (n + 1) + 1)

end

end A298786.P11204852386177156131

namespace A298786

/-- `comp[2*(n+1)]+A042965(n+1)+1` -/
def P11204852386177156131.Spec : Prop :=
  ∀ n, P11204852386177156131.a n = A298786 n

end A298786

/-! ## A298786.P14497570643880372842

`A008574(n)-A004396(n)`
-/

namespace A298786.P14497570643880372842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A004396 n

end

end A298786.P14497570643880372842

namespace A298786

/-- `A008574(n)-A004396(n)` -/
def P14497570643880372842.Spec : Prop :=
  ∀ n, P14497570643880372842.a n = A298786 n

end A298786

/-! ## A298786.P7112603902209118351

`A298784(n)-A102283(n)`
-/

namespace A298786.P7112603902209118351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n - A102283 n

end

end A298786.P7112603902209118351

namespace A298786

/-- `A298784(n)-A102283(n)` -/
def P7112603902209118351.Spec : Prop :=
  ∀ n, P7112603902209118351.a n = A298786 n

end A298786

/-! ## A298786.P9370196685274042136

`A008486(n)+A002264(n+1)`
-/

namespace A298786.P9370196685274042136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A002264 (n + 1)

end

end A298786.P9370196685274042136

namespace A298786

/-- `A008486(n)+A002264(n+1)` -/
def P9370196685274042136.Spec : Prop :=
  ∀ n, P9370196685274042136.a n = A298786 n

end A298786

/-! ## A298786.P3332845254563867124

`A042965(n+1)+A004277(n)`
-/

namespace A298786.P3332845254563867124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A004277 n

end

end A298786.P3332845254563867124

namespace A298786

/-- `A042965(n+1)+A004277(n)` -/
def P3332845254563867124.Spec : Prop :=
  ∀ n, P3332845254563867124.a n = A298786 n

end A298786

/-! ## A298786.P17643154387033000041

`A047386(n+1)+A028310(n)`
-/

namespace A298786.P17643154387033000041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (n + 1) + A028310 n

end

end A298786.P17643154387033000041

namespace A298786

/-- `A047386(n+1)+A028310(n)` -/
def P17643154387033000041.Spec : Prop :=
  ∀ n, P17643154387033000041.a n = A298786 n

end A298786

/-! ## A298786.P9525053099603391872

`A008706(n)-A047222(n+1)`
-/

namespace A298786.P9525053099603391872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A047222 (n + 1)

end

end A298786.P9525053099603391872

namespace A298786

/-- `A008706(n)-A047222(n+1)` -/
def P9525053099603391872.Spec : Prop :=
  ∀ n, P9525053099603391872.a n = A298786 n

end A298786

/-! ## A298786.P5677070057688811869

`A008458(n)-A047622(n+1)`
-/

namespace A298786.P5677070057688811869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047622 (n + 1)

end

end A298786.P5677070057688811869

namespace A298786

/-- `A008458(n)-A047622(n+1)` -/
def P5677070057688811869.Spec : Prop :=
  ∀ n, P5677070057688811869.a n = A298786 n

end A298786

/-! ## A298786.P13672638117249659648

`A063087(n+1)-A011655(n)`
-/

namespace A298786.P13672638117249659648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) - A011655 n

end

end A298786.P13672638117249659648

namespace A298786

/-- `A063087(n+1)-A011655(n)` -/
def P13672638117249659648.Spec : Prop :=
  ∀ n, P13672638117249659648.a n = A298786 n

end A298786

/-! ## A298786.P9412808713939469284

`A271114(n)-A047408(n+1)`
-/

namespace A298786.P9412808713939469284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047408 (n + 1)

end

end A298786.P9412808713939469284

namespace A298786

/-- `A271114(n)-A047408(n+1)` -/
def P9412808713939469284.Spec : Prop :=
  ∀ n, P9412808713939469284.a n = A298786 n

end A298786

/-! ## A298786.P1993730032881189292

`A298024(n)-A042965(n+1)`
-/

namespace A298786.P1993730032881189292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A042965 (n + 1)

end

end A298786.P1993730032881189292

namespace A298786

/-- `A298024(n)-A042965(n+1)` -/
def P1993730032881189292.Spec : Prop :=
  ∀ n, P1993730032881189292.a n = A298786 n

end A298786

/-!
# A298787: Partial sums of A298786.

The programs for A298787, the canonical program `A298787.P6170136641178690964` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298787 has offset 0).

The definition of A298787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298787.P6170136641178690964

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=21, a(4)=34`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298787

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6170136641178690964.Spec : Prop :=
  ∀ n, P6170136641178690964.a n = A298787 n

theorem P6170136641178690964.correct : P6170136641178690964.Spec := by
  intro n
  simp only [A298787]

end A298787

/-! ## A298787.P10593458305388819751

`(8+15*n+15*n²+A061347(n+2))/9`
-/

namespace A298787.P10593458305388819751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 + 15 * n + 15 * n ^ 2 : ℤ) + A061347 (n + 2) : ℚ) / 9

end

end A298787.P10593458305388819751

namespace A298787

/-- `(8+15*n+15*n²+A061347(n+2))/9` -/
def P10593458305388819751.Spec : Prop :=
  ∀ n, P10593458305388819751.a n = (A298787 n : ℚ)

end A298787

/-! ## A298787.P5017901430937820085

`floor(∑[10*n]/3)+1`
-/

namespace A298787.P5017901430937820085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋ + 1

end

end A298787.P5017901430937820085

namespace A298787

/-- `floor(∑[10*n]/3)+1` -/
def P5017901430937820085.Spec : Prop :=
  ∀ n, P5017901430937820085.a n = A298787 n

end A298787

/-! ## A298787.P12732517316280106206

`∑[a(n-3)+10]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=10`
-/

namespace A298787.P12732517316280106206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 10] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P12732517316280106206

namespace A298787

/-- `∑[a(n-3)+10]` -/
def P12732517316280106206.Spec : Prop :=
  ∀ n, (P12732517316280106206.a n : ℤ) = A298787 n

end A298787

/-! ## A298787.P14786340584003159329

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A298787.P14786340584003159329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P14786340584003159329

namespace A298787

/-- `∑[∑[floor(a(n-3))]]` -/
def P14786340584003159329.Spec : Prop :=
  ∀ n, (P14786340584003159329.a n : ℤ) = A298787 n

end A298787

/-! ## A298787.P4526438973361132758

`∑[∑[a(n-3)%5]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=3`
-/

namespace A298787.P4526438973361132758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3, 3] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P4526438973361132758

namespace A298787

/-- `∑[∑[a(n-3)%5]]` -/
def P4526438973361132758.Spec : Prop :=
  ∀ n, (P4526438973361132758.a n : ℤ) = A298787 n

end A298787

/-! ## A298787.P2034622067449528417

`∑[A298786(n)]`
-/

namespace A298787.P2034622067449528417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P2034622067449528417

namespace A298787

/-- `∑[A298786(n)]` -/
def P2034622067449528417.Spec : Prop :=
  ∀ n, P2034622067449528417.a n = A298787 n

end A298787

/-! ## A298787.P585236162243872410

`∑[A219529(n)-2*n]`
-/

namespace A298787.P585236162243872410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P585236162243872410

namespace A298787

/-- `∑[A219529(n)-2*n]` -/
def P585236162243872410.Spec : Prop :=
  ∀ n, P585236162243872410.a n = A298787 n

end A298787

/-! ## A298787.P1296275677637739003

`ceil(ceil(5*A003215(n)/3)/3)`
-/

namespace A298787.P1296275677637739003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(5 * A003215 n : ℚ) / 3⌉ : ℚ) / 3⌉

end

end A298787.P1296275677637739003

namespace A298787

/-- `ceil(ceil(5*A003215(n)/3)/3)` -/
def P1296275677637739003.Spec : Prop :=
  ∀ n, P1296275677637739003.a n = A298787 n

end A298787

/-! ## A298787.P1923313961483224005

`∑[A042965(n+1)+A004277(n)]`
-/

namespace A298787.P1923313961483224005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P1923313961483224005

namespace A298787

/-- `∑[A042965(n+1)+A004277(n)]` -/
def P1923313961483224005.Spec : Prop :=
  ∀ n, P1923313961483224005.a n = A298787 n

end A298787

/-! ## A298787.P7678318372931029364

`∑[A042965(A028310(n)+1)+2*n]`
-/

namespace A298787.P7678318372931029364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A028310 n + 1).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P7678318372931029364

namespace A298787

/-- `∑[A042965(A028310(n)+1)+2*n]` -/
def P7678318372931029364.Spec : Prop :=
  ∀ n, P7678318372931029364.a n = A298787 n

end A298787

/-! ## A298787.P5877390253360231586

`Δ[A212677(n)+n²]`
-/

namespace A298787.P5877390253360231586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212677 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298787.P5877390253360231586

namespace A298787

/-- `Δ[A212677(n)+n²]` -/
def P5877390253360231586.Spec : Prop :=
  ∀ n, P5877390253360231586.a n = A298787 n

end A298787

/-! ## A298787.P2577601180937124002

`∑[A008576(2*n)-2*n]`
-/

namespace A298787.P2577601180937124002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P2577601180937124002

namespace A298787

/-- `∑[A008576(2*n)-2*n]` -/
def P2577601180937124002.Spec : Prop :=
  ∀ n, P2577601180937124002.a n = A298787 n

end A298787

/-! ## A298787.P12113789678989778439

`∑[A131737(2*n+1)+2*n]`
-/

namespace A298787.P12113789678989778439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (2 * n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P12113789678989778439

namespace A298787

/-- `∑[A131737(2*n+1)+2*n]` -/
def P12113789678989778439.Spec : Prop :=
  ∀ n, P12113789678989778439.a n = A298787 n

end A298787

/-! ## A298787.P4812866578910949801

`(A008810(2*n+1)+A000982(2*n+1))/2`
-/

namespace A298787.P4812866578910949801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008810 (2 * n + 1) + A000982 (2 * n + 1) : ℚ) / 2

end

end A298787.P4812866578910949801

namespace A298787

/-- `(A008810(2*n+1)+A000982(2*n+1))/2` -/
def P4812866578910949801.Spec : Prop :=
  ∀ n, P4812866578910949801.a n = (A298787 n : ℚ)

end A298787

/-! ## A298787.P8093951238501788941

`∑[A312901(n)-n]`
-/

namespace A298787.P8093951238501788941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P8093951238501788941

namespace A298787

/-- `∑[A312901(n)-n]` -/
def P8093951238501788941.Spec : Prop :=
  ∀ n, P8093951238501788941.a n = A298787 n

end A298787

/-! ## A298787.P2520572821864244545

`A211543(A016897(n))`
-/

namespace A298787.P2520572821864244545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211543 (A016897 n).toNat

end

end A298787.P2520572821864244545

namespace A298787

/-- `A211543(A016897(n))` -/
def P2520572821864244545.Spec : Prop :=
  ∀ n, P2520572821864244545.a n = A298787 n

end A298787

/-! ## A298787.P12312684884552407755

`∑[A004525(A316317(2*n))]`
-/

namespace A298787.P12312684884552407755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A316317 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298787.P12312684884552407755

namespace A298787

/-- `∑[A004525(A316317(2*n))]` -/
def P12312684884552407755.Spec : Prop :=
  ∀ n, P12312684884552407755.a n = A298787 n

end A298787

/-! ## A298787.P6947094370131537483

`A025795(10*n)`
-/

namespace A298787.P6947094370131537483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (10 * n)

end

end A298787.P6947094370131537483

namespace A298787

/-- `A025795(10*n)` -/
def P6947094370131537483.Spec : Prop :=
  ∀ n, P6947094370131537483.a n = A298787 n

end A298787

/-! ## A298787.P18099815423782444321

`A008682(4*5*n)`
-/

namespace A298787.P18099815423782444321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (4 * (5 * n))

end

end A298787.P18099815423782444321

namespace A298787

/-- `A008682(4*5*n)` -/
def P18099815423782444321.Spec : Prop :=
  ∀ n, P18099815423782444321.a n = A298787 n

end A298787

/-!
# A298788: Coordination sequence for bey tiling (or net) with respect to a trivalent node.

The programs for A298788, the canonical program `A298788.P13696456544168235858` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298788 has offset 0).

The definition of A298788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298788.P13696456544168235858

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=13, a(5)=17, a(6)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298788

/-- `2*a(n-3)-a(n-6)` -/
def P13696456544168235858.Spec : Prop :=
  ∀ n, P13696456544168235858.a n = A298788 n

theorem P13696456544168235858.correct : P13696456544168235858.Spec := by
  intro n
  simp only [A298788]

end A298788

/-! ## A298788.P11241137248331982461

`A008574(n)-A102899(n)`
-/

namespace A298788.P11241137248331982461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A102899 n

end

end A298788.P11241137248331982461

namespace A298788

/-- `A008574(n)-A102899(n)` -/
def P11241137248331982461.Spec : Prop :=
  ∀ n, P11241137248331982461.a n = A298788 n

end A298788

/-! ## A298788.P9190897265328333205

`A298024(n)-A006369(n)`
-/

namespace A298788.P9190897265328333205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A006369 n

end

end A298788.P9190897265328333205

namespace A298788

/-- `A298024(n)-A006369(n)` -/
def P9190897265328333205.Spec : Prop :=
  ∀ n, P9190897265328333205.a n = A298788 n

end A298788

/-! ## A298788.P6389550669856428097

`A008486(n)+n-A102899(n)`
-/

namespace A298788.P6389550669856428097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A102899 n)

end

end A298788.P6389550669856428097

namespace A298788

/-- `A008486(n)+n-A102899(n)` -/
def P6389550669856428097.Spec : Prop :=
  ∀ n, P6389550669856428097.a n = A298788 n

end A298788

/-! ## A298788.P5475154702488517957

`A008574(n)-A004396(n*A102283(n)²)`
-/

namespace A298788.P5475154702488517957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A004396 ((n : ℤ) * A102283 n ^ 2).toNat

end

end A298788.P5475154702488517957

namespace A298788

/-- `A008574(n)-A004396(n*A102283(n)²)` -/
def P5475154702488517957.Spec : Prop :=
  ∀ n, P5475154702488517957.a n = A298788 n

end A298788

/-! ## A298788.P751520935664995874

`A004277(2*n)-A102899(n)`
-/

namespace A298788.P751520935664995874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A102899 n

end

end A298788.P751520935664995874

namespace A298788

/-- `A004277(2*n)-A102899(n)` -/
def P751520935664995874.Spec : Prop :=
  ∀ n, P751520935664995874.a n = A298788 n

end A298788

/-! ## A298788.P11623754558691241648

`A257143(A004396(2*n))+2*n`
-/

namespace A298788.P11623754558691241648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A004396 (2 * n)).toNat + (2 * n : ℤ)

end

end A298788.P11623754558691241648

namespace A298788

/-- `A257143(A004396(2*n))+2*n` -/
def P11623754558691241648.Spec : Prop :=
  ∀ n, P11623754558691241648.a n = A298788 n

end A298788

/-! ## A298788.P1849139709836125408

`A008574(n)-A087509(2*n)`
-/

namespace A298788.P1849139709836125408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A087509 (2 * n)

end

end A298788.P1849139709836125408

namespace A298788

/-- `A008574(n)-A087509(2*n)` -/
def P1849139709836125408.Spec : Prop :=
  ∀ n, P1849139709836125408.a n = A298788 n

end A298788

/-! ## A298788.P13167008548616104397

`A008576(2*n)-A186101(2*n)`
-/

namespace A298788.P13167008548616104397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A186101 (2 * n)

end

end A298788.P13167008548616104397

namespace A298788

/-- `A008576(2*n)-A186101(2*n)` -/
def P13167008548616104397.Spec : Prop :=
  ∀ n, P13167008548616104397.a n = A298788 n

end A298788

/-! ## A298788.P8404246789762522607

`2*A008576(2*n)-A298789(2*n)`
-/

namespace A298788.P8404246789762522607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008576 (2 * n) - A298789 (2 * n)

end

end A298788.P8404246789762522607

namespace A298788

/-- `2*A008576(2*n)-A298789(2*n)` -/
def P8404246789762522607.Spec : Prop :=
  ∀ n, P8404246789762522607.a n = A298788 n

end A298788

/-! ## A298788.P5749318962132806933

`A008458(2*n)-(A087509(2*n)+8*n)`
-/

namespace A298788.P5749318962132806933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (2 * n) - (A087509 (2 * n) + (8 * n : ℤ))

end

end A298788.P5749318962132806933

namespace A298788

/-- `A008458(2*n)-(A087509(2*n)+8*n)` -/
def P5749318962132806933.Spec : Prop :=
  ∀ n, P5749318962132806933.a n = A298788 n

end A298788

/-! ## A298788.P7495480081315301846

`A254667(2*n+1)+2*n-A110090(n+1)`
-/

namespace A298788.P7495480081315301846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (2 * n + 1) + ((2 * n : ℤ) - A110090 (n + 1))

end

end A298788.P7495480081315301846

namespace A298788

/-- `A254667(2*n+1)+2*n-A110090(n+1)` -/
def P7495480081315301846.Spec : Prop :=
  ∀ n, P7495480081315301846.a n = A298788 n

end A298788

/-! ## A298788.P8968433627954157602

`A008574(n)-A131360(A285872(2*n+1))`
-/

namespace A298788.P8968433627954157602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A131360 (A285872 (2 * n + 1)).toNat

end

end A298788.P8968433627954157602

namespace A298788

/-- `A008574(n)-A131360(A285872(2*n+1))` -/
def P8968433627954157602.Spec : Prop :=
  ∀ n, P8968433627954157602.a n = A298788 n

end A298788

/-! ## A298788.P11244906938946424222

`A010000(2*n+1)-(A110090(n+1)+A010000(2*n))`
-/

namespace A298788.P11244906938946424222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n + 1) - (A110090 (n + 1) + A010000 (2 * n))

end

end A298788.P11244906938946424222

namespace A298788

/-- `A010000(2*n+1)-(A110090(n+1)+A010000(2*n))` -/
def P11244906938946424222.Spec : Prop :=
  ∀ n, P11244906938946424222.a n = A298788 n

end A298788

/-! ## A298788.P5078911550392085680

`A301688(n)-A091684(n)`
-/

namespace A298788.P5078911550392085680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n - A091684 n

end

end A298788.P5078911550392085680

namespace A298788

/-- `A301688(n)-A091684(n)` -/
def P5078911550392085680.Spec : Prop :=
  ∀ n, P5078911550392085680.a n = A298788 n

end A298788

/-! ## A298788.P17072913171890686780

`A298024(n)+A301686(n)-A301694(n)`
-/

namespace A298788.P17072913171890686780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A301686 n - A301694 n)

end

end A298788.P17072913171890686780

namespace A298788

/-- `A298024(n)+A301686(n)-A301694(n)` -/
def P17072913171890686780.Spec : Prop :=
  ∀ n, P17072913171890686780.a n = A298788 n

end A298788

/-! ## A298788.P15601580384414528857

`A312901(n)-A051176(n)`
-/

namespace A298788.P15601580384414528857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n - A051176 n

end

end A298788.P15601580384414528857

namespace A298788

/-- `A312901(n)-A051176(n)` -/
def P15601580384414528857.Spec : Prop :=
  ∀ n, P15601580384414528857.a n = A298788 n

end A298788

/-! ## A298788.P7973752195555808166

`A315907(n)-A074305(n)`
-/

namespace A298788.P7973752195555808166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315907 n - A074305 n

end

end A298788.P7973752195555808166

namespace A298788

/-- `A315907(n)-A074305(n)` -/
def P7973752195555808166.Spec : Prop :=
  ∀ n, P7973752195555808166.a n = A298788 n

end A298788

/-! ## A298788.P13696476942433685871

`A004396(A008486(n)+n*A052901(n))`
-/

namespace A298788.P13696476942433685871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n + (n : ℤ) * A052901 n).toNat

end

end A298788.P13696476942433685871

namespace A298788

/-- `A004396(A008486(n)+n*A052901(n))` -/
def P13696476942433685871.Spec : Prop :=
  ∀ n, P13696476942433685871.a n = A298788 n

end A298788

/-! ## A298788.P11006035173511563031

`A004396(A008486(n)+n*A082204(n))`
-/

namespace A298788.P11006035173511563031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n + (n : ℤ) * A082204 n).toNat

end

end A298788.P11006035173511563031

namespace A298788

/-- `A004396(A008486(n)+n*A082204(n))` -/
def P11006035173511563031.Spec : Prop :=
  ∀ n, P11006035173511563031.a n = A298788 n

end A298788

/-!
# A298789: Coordination sequence for bey tiling (or net) with respect to a tetravalent node.

The programs for A298789, the canonical program `A298789.P11856137795003091233` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298789 has offset 0).

The definition of A298789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298789.P11856137795003091233

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10, a(4)=15, a(5)=18, a(6)=20`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298789

/-- `2*a(n-3)-a(n-6)` -/
def P11856137795003091233.Spec : Prop :=
  ∀ n, P11856137795003091233.a n = A298789 n

theorem P11856137795003091233.correct : P11856137795003091233.Spec := by
  intro n
  simp only [A298789]

end A298789

/-! ## A298789.P4704347130159410341

`ceil(abs(1-8*n)/3)+(lcm(3, n)/3+n)/2`
-/

namespace A298789.P4704347130159410341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ : ℚ) + ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2

end

end A298789.P4704347130159410341

namespace A298789

/-- `ceil(abs(1-8*n)/3)+(lcm(3, n)/3+n)/2` -/
def P4704347130159410341.Spec : Prop :=
  ∀ n, P4704347130159410341.a n = (A298789 n : ℚ)

end A298789

/-! ## A298789.P9226830161285496713

`A186101(n)+A008576(n)`
-/

namespace A298789.P9226830161285496713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n + A008576 n

end

end A298789.P9226830161285496713

namespace A298789

/-- `A186101(n)+A008576(n)` -/
def P9226830161285496713.Spec : Prop :=
  ∀ n, P9226830161285496713.a n = A298789 n

end A298789

/-! ## A298789.P11190166253130471031

`A298784(n)+A087509(n)`
-/

namespace A298789.P11190166253130471031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A087509 n

end

end A298789.P11190166253130471031

namespace A298789

/-- `A298784(n)+A087509(n)` -/
def P11190166253130471031.Spec : Prop :=
  ∀ n, P11190166253130471031.a n = A298789 n

end A298789

/-! ## A298789.P6195955324471788575

`A008574(n)-A186731(n)`
-/

namespace A298789.P6195955324471788575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A186731 n

end

end A298789.P6195955324471788575

namespace A298789

/-- `A008574(n)-A186731(n)` -/
def P6195955324471788575.Spec : Prop :=
  ∀ n, P6195955324471788575.a n = A298789 n

end A298789

/-! ## A298789.P11821292645328202559

`A008486(n)+n-A186731(n)`
-/

namespace A298789.P11821292645328202559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A186731 n)

end

end A298789.P11821292645328202559

namespace A298789

/-- `A008486(n)+n-A186731(n)` -/
def P11821292645328202559.Spec : Prop :=
  ∀ n, P11821292645328202559.a n = A298789 n

end A298789

/-! ## A298789.P6961185133642590810

`n+1+A004525(A006369(n))+record[A006369(n)]`
-/

namespace A298789.P6961185133642590810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004525 (A006369 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A298789.P6961185133642590810

namespace A298789

/-- `n+1+A004525(A006369(n))+record[A006369(n)]` -/
def P6961185133642590810.Spec : Prop :=
  ∀ n, P6961185133642590810.a n = A298789 n

end A298789

/-! ## A298789.P4723801957289780700

`A267528(2*n+1)+A026741(A004396(n))`
-/

namespace A298789.P4723801957289780700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (2 * n + 1) + A026741 (A004396 n).toNat

end

end A298789.P4723801957289780700

namespace A298789

/-- `A267528(2*n+1)+A026741(A004396(n))` -/
def P4723801957289780700.Spec : Prop :=
  ∀ n, P4723801957289780700.a n = A298789 n

end A298789

/-! ## A298789.P17792513709400826999

`A008574(n)+A301688(n)-A298024(n)`
-/

namespace A298789.P17792513709400826999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A301688 n - A298024 n)

end

end A298789.P17792513709400826999

namespace A298789

/-- `A008574(n)+A301688(n)-A298024(n)` -/
def P17792513709400826999.Spec : Prop :=
  ∀ n, P17792513709400826999.a n = A298789 n

end A298789

/-! ## A298789.P16003752395375087053

`record[A186731(2*(n+1))]-A186731(n)`
-/

namespace A298789.P16003752395375087053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A186731 n

end

end A298789.P16003752395375087053

namespace A298789

/-- `record[A186731(2*(n+1))]-A186731(n)` -/
def P16003752395375087053.Spec : Prop :=
  ∀ n, P16003752395375087053.a n = A298789 n

end A298789

/-! ## A298789.P1361112786589816174

`A186731(2*A008486(n))-A186731(n)`
-/

namespace A298789.P1361112786589816174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (2 * A008486 n).toNat - A186731 n

end

end A298789.P1361112786589816174

namespace A298789

/-- `A186731(2*A008486(n))-A186731(n)` -/
def P1361112786589816174.Spec : Prop :=
  ∀ n, P1361112786589816174.a n = A298789 n

end A298789

/-! ## A298789.P15431232012105284472

`A123108(8*n)-A186731(n)`
-/

namespace A298789.P15431232012105284472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (8 * n) - A186731 n

end

end A298789.P15431232012105284472

namespace A298789

/-- `A123108(8*n)-A186731(n)` -/
def P15431232012105284472.Spec : Prop :=
  ∀ n, P15431232012105284472.a n = A298789 n

end A298789

/-! ## A298789.P10899403424276216750

`A313230(A008574(n))/2-A008458(n)`
-/

namespace A298789.P10899403424276216750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313230 (A008574 n).toNat : ℚ) / 2 - (A008458 n : ℚ)

end

end A298789.P10899403424276216750

namespace A298789

/-- `A313230(A008574(n))/2-A008458(n)` -/
def P10899403424276216750.Spec : Prop :=
  ∀ n, P10899403424276216750.a n = (A298789 n : ℚ)

end A298789

/-!
# A298790: Partial sums of A298788.

The programs for A298790, the canonical program `A298790.P15438403944406877605` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298790 has offset 0).

The definition of A298790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298790.P15438403944406877605

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=11, a(3)=23, a(4)=36, a(5)=53, a(6)=77`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298790

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P15438403944406877605.Spec : Prop :=
  ∀ n, P15438403944406877605.a n = A298790 n

theorem P15438403944406877605.correct : P15438403944406877605.Spec := by
  intro n
  simp only [A298790]

end A298790

/-! ## A298790.P3054424343117703614

`∑[A298788(n)]`
-/

namespace A298790.P3054424343117703614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P3054424343117703614

namespace A298790

/-- `∑[A298788(n)]` -/
def P3054424343117703614.Spec : Prop :=
  ∀ n, P3054424343117703614.a n = A298790 n

end A298790

/-! ## A298790.P7889892532289032552

`∑[A008574(n)-A102899(n)]`
-/

namespace A298790.P7889892532289032552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A102899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P7889892532289032552

namespace A298790

/-- `∑[A008574(n)-A102899(n)]` -/
def P7889892532289032552.Spec : Prop :=
  ∀ n, P7889892532289032552.a n = A298790 n

end A298790

/-! ## A298790.P7308743848891099915

`∑[A298024(n)-A006369(n)]`
-/

namespace A298790.P7308743848891099915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P7308743848891099915

namespace A298790

/-- `∑[A298024(n)-A006369(n)]` -/
def P7308743848891099915.Spec : Prop :=
  ∀ n, P7308743848891099915.a n = A298790 n

end A298790

/-! ## A298790.P1028538839803751061

`A298788(n%A298788(n))+a(n-1)` with `a(0)=1`
-/

namespace A298790.P1028538839803751061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298788 (Int.tmod (n : ℤ) (A298788 n)).toNat + a (n - 1)

end

end A298790.P1028538839803751061

namespace A298790

/-- `A298788(n%A298788(n))+a(n-1)` -/
def P1028538839803751061.Spec : Prop :=
  ∀ n, P1028538839803751061.a n = A298790 n

end A298790

/-! ## A298790.P17118945487275558925

`∑[A004277(2*n)-A102899(n)]`
-/

namespace A298790.P17118945487275558925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A102899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P17118945487275558925

namespace A298790

/-- `∑[A004277(2*n)-A102899(n)]` -/
def P17118945487275558925.Spec : Prop :=
  ∀ n, P17118945487275558925.a n = A298790 n

end A298790

/-! ## A298790.P16707427959513716553

`∑[A257143(A004396(2*n))+2*n]`
-/

namespace A298790.P16707427959513716553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A004396 (2 * n)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P16707427959513716553

namespace A298790

/-- `∑[A257143(A004396(2*n))+2*n]` -/
def P16707427959513716553.Spec : Prop :=
  ∀ n, P16707427959513716553.a n = A298790 n

end A298790

/-! ## A298790.P910175410327910647

`floor(A038620(2*n+1)/3)`
-/

namespace A298790.P910175410327910647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038620 (2 * n + 1) : ℚ) / 3⌋

end

end A298790.P910175410327910647

namespace A298790

/-- `floor(A038620(2*n+1)/3)` -/
def P910175410327910647.Spec : Prop :=
  ∀ n, P910175410327910647.a n = A298790 n

end A298790

/-! ## A298790.P18067222406713885307

`A001844(n)-∑[A087509(2*n)]`
-/

namespace A298790.P18067222406713885307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P18067222406713885307

namespace A298790

/-- `A001844(n)-∑[A087509(2*n)]` -/
def P18067222406713885307.Spec : Prop :=
  ∀ n, P18067222406713885307.a n = A298790 n

end A298790

/-! ## A298790.P5554616864981531609

`∑[A008574(n)-A087509(2*n)]`
-/

namespace A298790.P5554616864981531609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A087509 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P5554616864981531609

namespace A298790

/-- `∑[A008574(n)-A087509(2*n)]` -/
def P5554616864981531609.Spec : Prop :=
  ∀ n, P5554616864981531609.a n = A298790 n

end A298790

/-! ## A298790.P14623755756047688565

`∑[A008576(2*n)-A186101(2*n)]`
-/

namespace A298790.P14623755756047688565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A186101 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P14623755756047688565

namespace A298790

/-- `∑[A008576(2*n)-A186101(2*n)]` -/
def P14623755756047688565.Spec : Prop :=
  ∀ n, P14623755756047688565.a n = A298790 n

end A298790

/-! ## A298790.P11172858293047139412

`A397108(2*n+1)-A397110(2*n)`
-/

namespace A298790.P11172858293047139412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397108 (2 * n + 1) - A397110 (2 * n)

end

end A298790.P11172858293047139412

namespace A298790

/-- `A397108(2*n+1)-A397110(2*n)` -/
def P11172858293047139412.Spec : Prop :=
  ∀ n, P11172858293047139412.a n = A298790 n

end A298790

/-! ## A298790.P6425773553191271608

`A008133(2*n)+∑[A042968(2*n+1)]`
-/

namespace A298790.P6425773553191271608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298790.P6425773553191271608

namespace A298790

/-- `A008133(2*n)+∑[A042968(2*n+1)]` -/
def P6425773553191271608.Spec : Prop :=
  ∀ n, P6425773553191271608.a n = A298790 n

end A298790

/-! ## A298790.P13649128073725322082

`A000982(2*n+1)-A000982(A004523(n+1))`
-/

namespace A298790.P13649128073725322082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n + 1) - A000982 (A004523 (n + 1)).toNat

end

end A298790.P13649128073725322082

namespace A298790

/-- `A000982(2*n+1)-A000982(A004523(n+1))` -/
def P13649128073725322082.Spec : Prop :=
  ∀ n, P13649128073725322082.a n = A298790 n

end A298790

/-! ## A298790.P9521654826056593770

`A007980(2*n)+A002264(2*n+1)*A002264(2*n)`
-/

namespace A298790.P9521654826056593770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (2 * n) + A002264 (2 * n + 1) * A002264 (2 * n)

end

end A298790.P9521654826056593770

namespace A298790

/-- `A007980(2*n)+A002264(2*n+1)*A002264(2*n)` -/
def P9521654826056593770.Spec : Prop :=
  ∀ n, P9521654826056593770.a n = A298790 n

end A298790

/-! ## A298790.P14688715070433303830

`A186101(2*n+1)+A004523(2*n+1)*A004523(2*n)`
-/

namespace A298790.P14688715070433303830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (2 * n + 1) + A004523 (2 * n + 1) * A004523 (2 * n)

end

end A298790.P14688715070433303830

namespace A298790

/-- `A186101(2*n+1)+A004523(2*n+1)*A004523(2*n)` -/
def P14688715070433303830.Spec : Prop :=
  ∀ n, P14688715070433303830.a n = A298790 n

end A298790

/-! ## A298790.P16872180585567330329

`A001399(4*n)+A002264(2*n+1)*A002264(2*n)`
-/

namespace A298790.P16872180585567330329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (4 * n) + A002264 (2 * n + 1) * A002264 (2 * n)

end

end A298790.P16872180585567330329

namespace A298790

/-- `A001399(4*n)+A002264(2*n+1)*A002264(2*n)` -/
def P16872180585567330329.Spec : Prop :=
  ∀ n, P16872180585567330329.a n = A298790 n

end A298790

/-!
# A298791: Partial sums of A298789.

The programs for A298791, the canonical program `A298791.P1570153081482171846` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298791 has offset 0).

The definition of A298791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298791.P1076195037745372926

`∑[ceil(abs(1-8*n)/3)+(lcm(3, n)/3+n)/2]`
-/

namespace A298791.P1076195037745372926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ : ℚ) + ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298791.P1076195037745372926

namespace A298791

/-- `∑[ceil(abs(1-8*n)/3)+(lcm(3, n)/3+n)/2]` -/
def P1076195037745372926.Spec : Prop :=
  ∀ n, P1076195037745372926.a n = (A298791 n : ℚ)

end A298791

/-! ## A298791.P1570153081482171846

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=22, a(4)=37, a(5)=55, a(6)=75`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A298791

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P1570153081482171846.Spec : Prop :=
  ∀ n, P1570153081482171846.a n = A298791 n

theorem P1570153081482171846.correct : P1570153081482171846.Spec := by
  intro n
  simp only [A298791]

end A298791

/-! ## A298791.P3482281331619982926

`∑[A298789(n)]`
-/

namespace A298791.P3482281331619982926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298791.P3482281331619982926

namespace A298791

/-- `∑[A298789(n)]` -/
def P3482281331619982926.Spec : Prop :=
  ∀ n, P3482281331619982926.a n = A298791 n

end A298791

/-! ## A298791.P1641293479818372095

`A238738(n)+A005449(n)`
-/

namespace A298791.P1641293479818372095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238738 n + A005449 n

end

end A298791.P1641293479818372095

namespace A298791

/-- `A238738(n)+A005449(n)` -/
def P1641293479818372095.Spec : Prop :=
  ∀ n, P1641293479818372095.a n = A298791 n

end A298791

/-! ## A298791.P11521503145691698717

`∑[A186101(n)+A008576(n)]`
-/

namespace A298791.P11521503145691698717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n + A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298791.P11521503145691698717

namespace A298791

/-- `∑[A186101(n)+A008576(n)]` -/
def P11521503145691698717.Spec : Prop :=
  ∀ n, P11521503145691698717.a n = A298791 n

end A298791

/-! ## A298791.P10029725473970353284

`A001844(n)-∑[A186731(n)]`
-/

namespace A298791.P10029725473970353284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298791.P10029725473970353284

namespace A298791

/-- `A001844(n)-∑[A186731(n)]` -/
def P10029725473970353284.Spec : Prop :=
  ∀ n, P10029725473970353284.a n = A298791 n

end A298791

/-! ## A298791.P8146658455146487741

`∑[A008574(n)-A186731(n)]`
-/

namespace A298791.P8146658455146487741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A186731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298791.P8146658455146487741

namespace A298791

/-- `∑[A008574(n)-A186731(n)]` -/
def P8146658455146487741.Spec : Prop :=
  ∀ n, P8146658455146487741.a n = A298791 n

end A298791

/-! ## A298791.P8260820934208616750

`n²+A238738(n)+A000217(n)`
-/

namespace A298791.P8260820934208616750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A238738 n + A000217 n)

end

end A298791.P8260820934208616750

namespace A298791

/-- `n²+A238738(n)+A000217(n)` -/
def P8260820934208616750.Spec : Prop :=
  ∀ n, P8260820934208616750.a n = A298791 n

end A298791

/-! ## A298791.P16606482079676205730

`A298789(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A298791.P16606482079676205730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298789 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A298791.P16606482079676205730

namespace A298791

/-- `A298789(n%A000040(n))+a(n-1)` -/
def P16606482079676205730.Spec : Prop :=
  ∀ n, P16606482079676205730.a n = A298791 n

end A298791

/-! ## A298791.P4981783688157305570

`A298789(n)+a(n-1)%A298790(n)` with `a(0)=1`
-/

namespace A298791.P4981783688157305570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298789 n + Int.tmod (a (n - 1)) (A298790 n)

end

end A298791.P4981783688157305570

namespace A298791

/-- `A298789(n)+a(n-1)%A298790(n)` -/
def P4981783688157305570.Spec : Prop :=
  ∀ n, P4981783688157305570.a n = A298791 n

end A298791

/-! ## A298791.P428339931866770594

`A238738(n)+A211539(2*n)`
-/

namespace A298791.P428339931866770594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238738 n + A211539 (2 * n)

end

end A298791.P428339931866770594

namespace A298791

/-- `A238738(n)+A211539(2*n)` -/
def P428339931866770594.Spec : Prop :=
  ∀ n, P428339931866770594.a n = A298791 n

end A298791

/-!
# A298792: Coordination sequence for the bil tiling (or net) with respect to a trivalent node of the first type.

The programs for A298792, there is no canonical definition to state claims against.
-/

/-! ## A298792.P10572466207511272718

`A348237(n)+A001222(A122025(n+1))`
-/

namespace A298792.P10572466207511272718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348237 n + A001222 (A122025 (n + 1)).toNat

end

end A298792.P10572466207511272718

/-!
# A298793: Coordination sequence for the bil tiling (or net) with respect to a trivalent node of the second type.

The programs for A298793, there is no canonical definition to state claims against.
-/

/-! ## A298793.P2654655272833605470

`A209885(n+1)+A194591(A005578(n))`
-/

namespace A298793.P2654655272833605470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209885 (n + 1) + A194591 (A005578 n).toNat

end

end A298793.P2654655272833605470

/-! ## A298793.P8671724013053319076

`A008486(n)-A281082(A281089(n+4))`
-/

namespace A298793.P8671724013053319076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A281082 (A281089 (n + 4)).toNat

end

end A298793.P8671724013053319076

/-! ## A298793.P12147342650049818270

`A107846(A000625(n))+A050942(2*n+1)`
-/

namespace A298793.P12147342650049818270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000625 n).toNat + A050942 (2 * n + 1)

end

end A298793.P12147342650049818270

/-! ## A298793.P565592336375013609

`eq[A001511(A243061(n+1)), A096830(n+1)]`
-/

namespace A298793.P565592336375013609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A243061 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298793.P565592336375013609

/-! ## A298793.P17333963362042413417

`A285830(A189378(n+1))+A088462(A339950(n+1))`
-/

namespace A298793.P17333963362042413417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285830 (A189378 (n + 1)).toNat + A088462 (A339950 (n + 1)).toNat

end

end A298793.P17333963362042413417

/-!
# A298799: Expansion of (1-27*x)^(-1/9).

The programs for A298799, there is no canonical definition to state claims against.
-/

/-! ## A298799.P1862701221543305257

`A035024(n)/3^n`
-/

namespace A298799.P1862701221543305257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035024 n : ℚ) / (3 ^ n : ℚ)

end

end A298799.P1862701221543305257

/-! ## A298799.P12068089729442677830

`floor(A035024(n)/A000244(n))`
-/

namespace A298799.P12068089729442677830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035024 n : ℚ) / (A000244 n : ℚ)⌋

end

end A298799.P12068089729442677830

/-! ## A298799.P13736810242837026565

`A000984(n)/A098658(n)*A035024(n)`
-/

namespace A298799.P13736810242837026565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A098658 n : ℚ) * (A035024 n : ℚ)

end

end A298799.P13736810242837026565

/-! ## A298799.P1558273912998684498

`A035024(n)/A000244(n)*A059268(∑[n])`
-/

namespace A298799.P1558273912998684498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035024 n : ℚ) / (A000244 n : ℚ) * (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A298799.P1558273912998684498

/-! ## A298799.P7632270867016177954

`A035024(n)/A000244(n)*A128227(∑[n])`
-/

namespace A298799.P7632270867016177954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035024 n : ℚ) / (A000244 n : ℚ) * (A128227 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A298799.P7632270867016177954

/-! ## A298799.P17737470240632312339

`char[A027656(n)]/A000244(n)*A035024(n)`
-/

namespace A298799.P17737470240632312339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A000244 n : ℚ) * (A035024 n : ℚ)

end

end A298799.P17737470240632312339

/-! ## A298799.P9376132237213904120

`A035024(n)/A000244(n)-A112367(A112367(n))`
-/

namespace A298799.P9376132237213904120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035024 n : ℚ) / (A000244 n : ℚ) - (A112367 (A112367 n).toNat : ℚ)

end

end A298799.P9376132237213904120

