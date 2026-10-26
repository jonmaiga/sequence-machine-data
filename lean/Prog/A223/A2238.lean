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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A223800: Number of nX7 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223800, there is no canonical definition to state claims against.
-/

/-! ## A223800.P9245780745451853579

`A223801(eq[10, A185782(n+1)])`
-/

namespace A223800.P9245780745451853579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223800.P9245780745451853579

/-!
# A223801: T(n,k)=Number of nXk 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223801, there is no canonical definition to state claims against.
-/

/-! ## A223801.P1611231155721918596

`A223876(A084192(∑[n]))`
-/

namespace A223801.P1611231155721918596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223801.P1611231155721918596

/-! ## A223801.P9537727283017749330

`A223876(A084193(∑[n]))`
-/

namespace A223801.P9537727283017749330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223801.P9537727283017749330

/-! ## A223801.P9908741253621357845

`A004182(A223876(n+1))`
-/

namespace A223801.P9908741253621357845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A223876 (n + 1)).toNat

end

end A223801.P9908741253621357845

/-! ## A223801.P9920551910037240110

`A223876(A043317(n+1))`
-/

namespace A223801.P9920551910037240110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A043317 (n + 1)).toNat

end

end A223801.P9920551910037240110

/-! ## A223801.P2232699144974280326

`A223876(A044914(n+1))`
-/

namespace A223801.P2232699144974280326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A044914 (n + 1)).toNat

end

end A223801.P2232699144974280326

/-!
# A223802: Number of 3Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223802, there is no canonical definition to state claims against.
-/

/-! ## A223802.P9975110130979720118

`A223801(∑[n+2]+4)`
-/

namespace A223802.P9975110130979720118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223802.P9975110130979720118

/-! ## A223802.P5749627909321736811

`A223801(A167614(n+1))+A025466(n)`
-/

namespace A223802.P5749627909321736811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A167614 (n + 1)).toNat + A025466 n

end

end A223802.P5749627909321736811

/-! ## A223802.P11779972655132871419

`A223801(A167614(n+1))+A178798(n)`
-/

namespace A223802.P11779972655132871419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A167614 (n + 1)).toNat + A178798 n

end

end A223802.P11779972655132871419

/-! ## A223802.P15963126455147435964

`lcm(A033999(n), A223801(A167614(n+1)))`
-/

namespace A223802.P15963126455147435964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223801 (A167614 (n + 1)).toNat)

end

end A223802.P15963126455147435964

/-! ## A223802.P6206065214564676164

`A223801(A167614(n+1))%A222460(n+1)`
-/

namespace A223802.P6206065214564676164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223801 (A167614 (n + 1)).toNat) (A222460 (n + 1))

end

end A223802.P6206065214564676164

/-!
# A223803: Number of 4Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223803, there is no canonical definition to state claims against.
-/

/-! ## A223803.P5163645459820997195

`A223801(A141214(n)+7)`
-/

namespace A223803.P5163645459820997195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A141214 n + 7).toNat

end

end A223803.P5163645459820997195

/-! ## A223803.P7101014451136319390

`A223801(A052905(n)+9)`
-/

namespace A223803.P7101014451136319390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A052905 n + 9).toNat

end

end A223803.P7101014451136319390

/-! ## A223803.P5562593123842572978

`A223801(A055999(n)+10)`
-/

namespace A223803.P5562593123842572978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A055999 n + 10).toNat

end

end A223803.P5562593123842572978

/-! ## A223803.P13704209315844616576

`A223801(A167614(n+2)+1)`
-/

namespace A223803.P13704209315844616576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A167614 (n + 2) + 1).toNat

end

end A223803.P13704209315844616576

/-! ## A223803.P16038004803888804853

`A223801(eq[5, A131818(n+1)])`
-/

namespace A223803.P16038004803888804853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223803.P16038004803888804853

/-!
# A223804: Number of 5Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223804, there is no canonical definition to state claims against.
-/

/-! ## A223804.P10368372549012029067

`A223801(A155212(n)+13)`
-/

namespace A223804.P10368372549012029067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A155212 n + 13).toNat

end

end A223804.P10368372549012029067

/-! ## A223804.P1413972975120229156

`A223801(A056000(n)+15)`
-/

namespace A223804.P1413972975120229156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A056000 n + 15).toNat

end

end A223804.P1413972975120229156

/-! ## A223804.P10809511090478969227

`A223801(eq[7, A066657(n)])`
-/

namespace A223804.P10809511090478969227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223804.P10809511090478969227

/-! ## A223804.P17616129030769267891

`A223801(A000124(n+4)+4)`
-/

namespace A223804.P17616129030769267891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A000124 (n + 4) + 4).toNat

end

end A223804.P17616129030769267891

/-! ## A223804.P15990992693212513625

`A223801(A051936(n+4)+14)`
-/

namespace A223804.P15990992693212513625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (A051936 (n + 4) + 14).toNat

end

end A223804.P15990992693212513625

/-!
# A223805: Number of 6Xn 0..3 arrays with rows and antidiagonals unimodal.

The programs for A223805, there is no canonical definition to state claims against.
-/

/-! ## A223805.P8923596718500358126

`A223801(eq[7, A131818(n+1)])`
-/

namespace A223805.P8923596718500358126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223805.P8923596718500358126

/-!
# A223807: Number of nX3 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223807, there is no canonical definition to state claims against.
-/

/-! ## A223807.P2843695489161663981

`A223811(∑[n+2]+4)`
-/

namespace A223807.P2843695489161663981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223807.P2843695489161663981

/-! ## A223807.P4351964359558675316

`lcm(1-and(2, n), A223811(A167614(n+1)))`
-/

namespace A223807.P4351964359558675316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A223811 (A167614 (n + 1)).toNat)

end

end A223807.P4351964359558675316

/-! ## A223807.P12734129151647572005

`A223811(A167614(n+1))+A025437(n)`
-/

namespace A223807.P12734129151647572005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167614 (n + 1)).toNat + A025437 n

end

end A223807.P12734129151647572005

/-! ## A223807.P17395804545642104718

`A223811(A167614(n+1))+A105519(n)`
-/

namespace A223807.P17395804545642104718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167614 (n + 1)).toNat + A105519 n

end

end A223807.P17395804545642104718

/-! ## A223807.P1563461268224599939

`A223811(A167614(n+1))+A165656(n)`
-/

namespace A223807.P1563461268224599939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167614 (n + 1)).toNat + A165656 n

end

end A223807.P1563461268224599939

/-!
# A223808: Number of nX4 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223808, there is no canonical definition to state claims against.
-/

/-! ## A223808.P1521637026975236086

`A223811(A141214(n)+7)`
-/

namespace A223808.P1521637026975236086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A141214 n + 7).toNat

end

end A223808.P1521637026975236086

/-! ## A223808.P13837718725561917471

`A223811(A052905(n)+9)`
-/

namespace A223808.P13837718725561917471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A052905 n + 9).toNat

end

end A223808.P13837718725561917471

/-! ## A223808.P8454501831511776081

`A223811(A055999(n)+10)`
-/

namespace A223808.P8454501831511776081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A055999 n + 10).toNat

end

end A223808.P8454501831511776081

/-! ## A223808.P2778146759874523722

`A223811(eq[5, A066657(n)])`
-/

namespace A223808.P2778146759874523722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223808.P2778146759874523722

/-! ## A223808.P15940877746716371131

`A223811(A167614(n+2)+1)`
-/

namespace A223808.P15940877746716371131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167614 (n + 2) + 1).toNat

end

end A223808.P15940877746716371131

/-!
# A223809: Number of nX5 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223809, there is no canonical definition to state claims against.
-/

/-! ## A223809.P1441959775763612715

`A223811(A167499(n+3))`
-/

namespace A223809.P1441959775763612715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167499 (n + 3)).toNat

end

end A223809.P1441959775763612715

/-! ## A223809.P13780798908182565417

`A223811(A155212(n)+13)`
-/

namespace A223809.P13780798908182565417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A155212 n + 13).toNat

end

end A223809.P13780798908182565417

/-! ## A223809.P7710845323465961067

`A223811(A056000(n)+15)`
-/

namespace A223809.P7710845323465961067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A056000 n + 15).toNat

end

end A223809.P7710845323465961067

/-! ## A223809.P5832399719990066933

`A223811(eq[7, A066657(n)])`
-/

namespace A223809.P5832399719990066933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223809.P5832399719990066933

/-! ## A223809.P11103599501531535753

`A223811(A000217(n+4)+5)`
-/

namespace A223809.P11103599501531535753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A000217 (n + 4) + 5).toNat

end

end A223809.P11103599501531535753

/-!
# A223810: Number of nX6 0..3 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223810, there is no canonical definition to state claims against.
-/

/-! ## A223810.P10193031723769328729

`A223811(A056115(n)+21)`
-/

namespace A223810.P10193031723769328729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A056115 n + 21).toNat

end

end A223810.P10193031723769328729

/-! ## A223810.P12727586105675851279

`A223811(A167499(n+4)+1)`
-/

namespace A223810.P12727586105675851279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A167499 (n + 4) + 1).toNat

end

end A223810.P12727586105675851279

/-! ## A223810.P15980505671972395925

`A223811(A055998(n+3)+9)`
-/

namespace A223810.P15980505671972395925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A055998 (n + 3) + 9).toNat

end

end A223810.P15980505671972395925

/-! ## A223810.P12696942766821392272

`A223811(A056000(n+1)+16)`
-/

namespace A223810.P12696942766821392272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (A056000 (n + 1) + 16).toNat

end

end A223810.P12696942766821392272

/-! ## A223810.P2106338745059740655

`A223811(eq[7, A131818(n+1)])`
-/

namespace A223810.P2106338745059740655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223810.P2106338745059740655

/-!
# A223812: Number of nX3 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223812, there is no canonical definition to state claims against.
-/

/-! ## A223812.P17525721739506598939

`A223815(∑[n+3]+1)`
-/

namespace A223812.P17525721739506598939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223812.P17525721739506598939

/-! ## A223812.P8081391412447880433

`record[A223815(A198464(n+1))]`
-/

namespace A223812.P8081391412447880433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223812.P8081391412447880433

/-!
# A223813: Number of nX4 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223813, there is no canonical definition to state claims against.
-/

/-! ## A223813.P14138565754688214535

`A223815(∑[n+4]+3)`
-/

namespace A223813.P14138565754688214535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223813.P14138565754688214535

/-!
# A223814: Number of nX5 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223814, there is no canonical definition to state claims against.
-/

/-! ## A223814.P11908809534251597664

`A223815(Δ[A264443(n)])`
-/

namespace A223814.P11908809534251597664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (f1 (n + 1) - f1 n).toNat

end

end A223814.P11908809534251597664

/-! ## A223814.P12259905228280771309

`A223815(A046691(n+3))`
-/

namespace A223814.P12259905228280771309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A046691 (n + 3)).toNat

end

end A223814.P12259905228280771309

/-! ## A223814.P10270151601096853424

`A223815(A056115(n)+11)`
-/

namespace A223814.P10270151601096853424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A056115 n + 11).toNat

end

end A223814.P10270151601096853424

/-!
# A223816: Number of 2Xn 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223816, there is no canonical definition to state claims against.
-/

/-! ## A223816.P10644467222513998788

`A223815(∑[n+1]+2)`
-/

namespace A223816.P10644467222513998788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223816.P10644467222513998788

/-! ## A223816.P12402576310299422493

`record[A223815(A129502(n+1)+2)]`
-/

namespace A223816.P12402576310299422493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A129502 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223816.P12402576310299422493

/-!
# A223817: Number of 3Xn 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223817, there is no canonical definition to state claims against.
-/

/-! ## A223817.P15568793446177445985

`A223815(∑[n+2]+4)`
-/

namespace A223817.P15568793446177445985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223817.P15568793446177445985

/-! ## A223817.P14288811186795813190

`lcm((-1)^n, A223815(A167614(n+1)))`
-/

namespace A223817.P14288811186795813190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223815 (A167614 (n + 1)).toNat)

end

end A223817.P14288811186795813190

/-! ## A223817.P17116383552712745703

`A223815(A167614(n+1))+A025469(n)`
-/

namespace A223817.P17116383552712745703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A167614 (n + 1)).toNat + A025469 n

end

end A223817.P17116383552712745703

/-! ## A223817.P9804324514180575498

`A223815(A167614(n+1))+A086080(n)`
-/

namespace A223817.P9804324514180575498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A167614 (n + 1)).toNat + A086080 n

end

end A223817.P9804324514180575498

/-! ## A223817.P9917157988606293095

`A223815(A167614(n+1))+A107846(n)`
-/

namespace A223817.P9917157988606293095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A167614 (n + 1)).toNat + A107846 n

end

end A223817.P9917157988606293095

/-!
# A223818: Number of 4 X n 0..2 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223818, there is no canonical definition to state claims against.
-/

/-! ## A223818.P8920132862295343207

`A223815(A141214(n)+7)`
-/

namespace A223818.P8920132862295343207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A141214 n + 7).toNat

end

end A223818.P8920132862295343207

/-! ## A223818.P11671571829054334376

`A223815(A052905(n)+9)`
-/

namespace A223818.P11671571829054334376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A052905 n + 9).toNat

end

end A223818.P11671571829054334376

/-! ## A223818.P583999652806595738

`A223815(A055999(n)+10)`
-/

namespace A223818.P583999652806595738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A055999 n + 10).toNat

end

end A223818.P583999652806595738

/-! ## A223818.P17611773710001705351

`A223815(eq[5, A066657(n)])`
-/

namespace A223818.P17611773710001705351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223818.P17611773710001705351

/-! ## A223818.P10777299042920664322

`A223815(A167614(n+2)+1)`
-/

namespace A223818.P10777299042920664322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223815 (A167614 (n + 2) + 1).toNat

end

end A223818.P10777299042920664322

/-!
# A223819: Number of nX1 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223819, there is no canonical definition to state claims against.
-/

/-! ## A223819.P2982591576787325375

`A223160(n+1)%A223752(A000007(n)+n)`
-/

namespace A223819.P2982591576787325375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223160 (n + 1)) (A223752 (A000007 n + (n : ℤ)).toNat)

end

end A223819.P2982591576787325375

/-! ## A223819.P4303116588887097835

`A245134(∑[n+3]+1)`
-/

namespace A223819.P4303116588887097835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223819.P4303116588887097835

/-! ## A223819.P4144681974729950015

`lcm(2, A245134(A034856(n+2)))`
-/

namespace A223819.P4144681974729950015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A245134 (A034856 (n + 2)).toNat)

end

end A223819.P4144681974729950015

/-! ## A223819.P10603336616698984347

`sqrt(A223820(n+1))`
-/

namespace A223819.P10603336616698984347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223820 (n + 1) : ℝ)

end

end A223819.P10603336616698984347

/-! ## A223819.P12898526407195074045

`root(A223820(n+1), A020639(2*(n+1)))`
-/

namespace A223819.P12898526407195074045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223820 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A223819.P12898526407195074045

/-!
# A223820: Number of nX3 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223820, there is no canonical definition to state claims against.
-/

/-! ## A223820.P2708830382241876170

`A223819(n+1)²`
-/

namespace A223820.P2708830382241876170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223819 (n + 1) ^ 2

end

end A223820.P2708830382241876170

/-! ## A223820.P15977561955818028430

`A245134(∑[n+3]+1)²`
-/

namespace A223820.P15977561955818028430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A223820.P15977561955818028430

/-! ## A223820.P2053750700697556459

`A223819(n+1)^(2%A055983(n))`
-/

namespace A223820.P2053750700697556459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223819 (n + 1) : ℚ) ^ (Int.tmod 2 (A055983 n) : ℤ)

end

end A223820.P2053750700697556459

/-! ## A223820.P15110843178798553865

`A223819(n+1)*A245134(∑[n+3]+1)`
-/

namespace A223820.P15110843178798553865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223819 (n + 1) * A245134 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223820.P15110843178798553865

/-! ## A223820.P1078173494032192478

`A223819(n+1)^A020639(A285273(n+1))`
-/

namespace A223820.P1078173494032192478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223819 (n + 1) : ℚ) ^ (A020639 (A285273 (n + 1)).toNat : ℤ)

end

end A223820.P1078173494032192478

/-!
# A223821: Number of nX4 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223821, there is no canonical definition to state claims against.
-/

/-! ## A223821.P10134088068523598095

`A223824(∑[n+3]+7)`
-/

namespace A223821.P10134088068523598095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223821.P10134088068523598095

/-!
# A223822: Number of nX5 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223822, there is no canonical definition to state claims against.
-/

/-! ## A223822.P5620835609734564967

`A223824(A167499(n+3))`
-/

namespace A223822.P5620835609734564967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A167499 (n + 3)).toNat

end

end A223822.P5620835609734564967

/-! ## A223822.P17623907325226445650

`A223824(A155212(n)+13)`
-/

namespace A223822.P17623907325226445650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A155212 n + 13).toNat

end

end A223822.P17623907325226445650

/-! ## A223822.P4906228251942295321

`A223824(A056000(n)+15)`
-/

namespace A223822.P4906228251942295321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A056000 n + 15).toNat

end

end A223822.P4906228251942295321

/-! ## A223822.P13458582471462187192

`A223824(eq[7, A066657(n)])`
-/

namespace A223822.P13458582471462187192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223822.P13458582471462187192

/-! ## A223822.P15895142613397577014

`A223824(A167614(n+3)+2)`
-/

namespace A223822.P15895142613397577014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A167614 (n + 3) + 2).toNat

end

end A223822.P15895142613397577014

/-!
# A223823: Number of nX6 0..3 arrays with every row and column least squares fitting to a zero slope straight line, with a single point array taken as having zero slope.

The programs for A223823, there is no canonical definition to state claims against.
-/

/-! ## A223823.P4357464123247672744

`A223824(A167499(n+4)+1)`
-/

namespace A223823.P4357464123247672744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A167499 (n + 4) + 1).toNat

end

end A223823.P4357464123247672744

/-! ## A223823.P2997580329817920016

`A223824(A167614(n+4)+3)`
-/

namespace A223823.P2997580329817920016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A167614 (n + 4) + 3).toNat

end

end A223823.P2997580329817920016

/-! ## A223823.P5059590889665606994

`A223824(A000124(n+5)+5)`
-/

namespace A223823.P5059590889665606994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (A000124 (n + 5) + 5).toNat

end

end A223823.P5059590889665606994

/-! ## A223823.P726578412745370644

`A223824(eq[7, A131818(n+1)])`
-/

namespace A223823.P726578412745370644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223823.P726578412745370644

/-!
# A223825: Number of n X n 0..2 arrays with rows and columns unimodal.

The programs for A223825, there is no canonical definition to state claims against.
-/

/-! ## A223825.P6621075303706942326

`A223831(∑[4*n]+1)`
-/

namespace A223825.P6621075303706942326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223825.P6621075303706942326

/-! ## A223825.P12898176332199690489

`record[A223831(A330613(n+1))]`
-/

namespace A223825.P12898176332199690489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223825.P12898176332199690489

/-! ## A223825.P6796881141155741467

`record[A223831(A286457(n+2))]`
-/

namespace A223825.P6796881141155741467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223825.P6796881141155741467

/-! ## A223825.P2734480530617844069

`A223831(A001844(n))+char[12]`
-/

namespace A223825.P2734480530617844069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223825.P2734480530617844069

/-!
# A223826: Number of nX3 0..2 arrays with rows and columns unimodal.

The programs for A223826, there is no canonical definition to state claims against.
-/

/-! ## A223826.P10743021411531129707

`A223831(∑[n+2]+4)`
-/

namespace A223826.P10743021411531129707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223826.P10743021411531129707

/-! ## A223826.P17710909751399633652

`A223831(A167614(n+1))+char[16]`
-/

namespace A223826.P17710909751399633652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223826.P17710909751399633652

/-! ## A223826.P14533204974335842268

`record[root(A223831(n+4), A131112(n))]`
-/

namespace A223826.P14533204974335842268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223831 (n + 4) : ℝ) ^ (1 / (A131112 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223826.P14533204974335842268

/-! ## A223826.P9258950652067813428

`A223831(A167499(n)+n)+C(n, 64)²`
-/

namespace A223826.P9258950652067813428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A167499 n + (n : ℤ)).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A223826.P9258950652067813428

/-! ## A223826.P9628356101125515788

`A223831(A167614(n+1))*A339235(n)`
-/

namespace A223826.P9628356101125515788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A167614 (n + 1)).toNat * A339235 n

end

end A223826.P9628356101125515788

/-!
# A223827: Number of n X 4 0..2 arrays with rows and columns unimodal.

The programs for A223827, there is no canonical definition to state claims against.
-/

/-! ## A223827.P6792984404819682787

`A223831(∑[n+3]+7)`
-/

namespace A223827.P6792984404819682787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223827.P6792984404819682787

/-! ## A223827.P15348227741848916564

`A223831(A152949(n+5)+1)%A080452(n+5)`
-/

namespace A223827.P15348227741848916564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223831 (A152949 (n + 5) + 1).toNat) (A080452 (n + 5))

end

end A223827.P15348227741848916564

/-!
# A223828: Number of nX5 0..2 arrays with rows and columns unimodal.

The programs for A223828, there is no canonical definition to state claims against.
-/

/-! ## A223828.P16206183994980189705

`A223831(A374005(n+1))`
-/

namespace A223828.P16206183994980189705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A374005 (n + 1)).toNat

end

end A223828.P16206183994980189705

/-! ## A223828.P2744833706032964637

`A223831(A155212(n)+13)`
-/

namespace A223828.P2744833706032964637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A155212 n + 13).toNat

end

end A223828.P2744833706032964637

/-! ## A223828.P18301554825668864710

`A223831(A056000(n)+15)`
-/

namespace A223828.P18301554825668864710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A056000 n + 15).toNat

end

end A223828.P18301554825668864710

/-! ## A223828.P16061684615242400566

`A223831(eq[7, A066657(n)])`
-/

namespace A223828.P16061684615242400566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223828.P16061684615242400566

/-! ## A223828.P12608257209738197390

`A223831(A000124(n+4)+4)`
-/

namespace A223828.P12608257209738197390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A000124 (n + 4) + 4).toNat

end

end A223828.P12608257209738197390

/-!
# A223829: Number of nX6 0..2 arrays with rows and columns unimodal.

The programs for A223829, there is no canonical definition to state claims against.
-/

/-! ## A223829.P1789572148012674554

`A223831(∑[n+5]+16)`
-/

namespace A223829.P1789572148012674554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223829.P1789572148012674554

/-! ## A223829.P4463622387375230519

`A223831(A167499(n+4)+1)%A223809(n+1)`
-/

namespace A223829.P4463622387375230519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223831 (A167499 (n + 4) + 1).toNat) (A223809 (n + 1))

end

end A223829.P4463622387375230519

/-! ## A223829.P9066807343533050923

`A326459(n)+A223831(A052905(n+3))`
-/

namespace A223829.P9066807343533050923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 n + A223831 (A052905 (n + 3)).toNat

end

end A223829.P9066807343533050923

/-! ## A223829.P1513093022245445304

`A223831(A052905(n+3))*A242784(n)`
-/

namespace A223829.P1513093022245445304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A052905 (n + 3)).toNat * A242784 n

end

end A223829.P1513093022245445304

/-! ## A223829.P15774628649712609070

`A223831(A052905(n+3))%A230946(n+3)`
-/

namespace A223829.P15774628649712609070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223831 (A052905 (n + 3)).toNat) (A230946 (n + 3))

end

end A223829.P15774628649712609070

/-!
# A223830: Number of nX7 0..2 arrays with rows and columns unimodal.

The programs for A223830, there is no canonical definition to state claims against.
-/

/-! ## A223830.P12158060551596829683

`A223831(A374008(n+1))`
-/

namespace A223830.P12158060551596829683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A374008 (n + 1)).toNat

end

end A223830.P12158060551596829683

/-! ## A223830.P6423854709996252931

`A223831(A056119(n)+28)`
-/

namespace A223830.P6423854709996252931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A056119 n + 28).toNat

end

end A223830.P6423854709996252931

/-! ## A223830.P17909686767045296288

`A223831(A161680(n+7)+7)`
-/

namespace A223830.P17909686767045296288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (A161680 (n + 7) + 7).toNat

end

end A223830.P17909686767045296288

/-! ## A223830.P2755888965365825146

`A223831(eq[8, A131818(n+1)])`
-/

namespace A223830.P2755888965365825146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223830.P2755888965365825146

/-! ## A223830.P3051222090676277532

`A223831(C(n+7, 2)+n+1)`
-/

namespace A223830.P3051222090676277532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223831 (Nat.choose (n + 7) 2 + (n + 1))

end

end A223830.P3051222090676277532

/-!
# A223831: T(n,k)=Number of nXk 0..2 arrays with rows and columns unimodal.

The programs for A223831, there is no canonical definition to state claims against.
-/

/-! ## A223831.P13068671598300090708

`A004277(A223725(n+1))-A223742(n+1)`
-/

namespace A223831.P13068671598300090708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223725 (n + 1)).toNat - A223742 (n + 1)

end

end A223831.P13068671598300090708

/-!
# A223832: Number of n X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223832, there is no canonical definition to state claims against.
-/

/-! ## A223832.P15995064531455624015

`A194959(3*n+1)+A002265(A010049(3*n+1))`
-/

namespace A223832.P15995064531455624015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (3 * n + 1) + A002265 (A010049 (3 * n + 1)).toNat

end

end A223832.P15995064531455624015

/-!
# A223833: Number of n X 3 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223833, the canonical program `A223833.P15028342129609267398` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223833 has offset 1).

The definition of A223833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223833.P15028342129609267398

`∑[∑[4*n+3]+4]+n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A223833

/-- `∑[∑[4*n+3]+4]+n` -/
def P15028342129609267398.Spec : Prop :=
  ∀ n, (P15028342129609267398.a n : ℤ) = A223833 (n + 1)

theorem P15028342129609267398.correct : P15028342129609267398.Spec := by
  intro n
  simp only [A223833, Nat.add_sub_cancel]

end A223833

/-! ## A223833.P7512257753374288637

`∑[∑[A190035(n+1)+1]+1]`
-/

namespace A223833.P7512257753374288637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190035 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P7512257753374288637

namespace A223833

/-- `∑[∑[A190035(n+1)+1]+1]` -/
def P7512257753374288637.Spec : Prop :=
  ∀ n, P7512257753374288637.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P15097640257483627521

`Δ[A225894(n+1)+(1-n)²]`
-/

namespace A223833.P15097640257483627521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225894 (n + 1) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A223833.P15097640257483627521

namespace A223833

/-- `Δ[A225894(n+1)+(1-n)²]` -/
def P15097640257483627521.Spec : Prop :=
  ∀ n, P15097640257483627521.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P5324567844071282217

`∑[A010000(n)+A002378(n+2)]`
-/

namespace A223833.P5324567844071282217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n + A002378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P5324567844071282217

namespace A223833

/-- `∑[A010000(n)+A002378(n+2)]` -/
def P5324567844071282217.Spec : Prop :=
  ∀ n, P5324567844071282217.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P15637793614265212547

`∑[∑[record[A022998(n)+7]]]`
-/

namespace A223833.P15637793614265212547
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P15637793614265212547

namespace A223833

/-- `∑[∑[record[A022998(n)+7]]]` -/
def P15637793614265212547.Spec : Prop :=
  ∀ n, P15637793614265212547.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P12051170347376918398

`∑[A033816(n+1)-A028310(2*n)]`
-/

namespace A223833.P12051170347376918398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 (n + 1) - A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P12051170347376918398

namespace A223833

/-- `∑[A033816(n+1)-A028310(2*n)]` -/
def P12051170347376918398.Spec : Prop :=
  ∀ n, P12051170347376918398.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P11737832249360735966

`∑[A167499(2*n)+A103517(n)]`
-/

namespace A223833.P11737832249360735966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n) + A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P11737832249360735966

namespace A223833

/-- `∑[A167499(2*n)+A103517(n)]` -/
def P11737832249360735966.Spec : Prop :=
  ∀ n, P11737832249360735966.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P2056897602248211895

`∑[A077169(2*n+3)]`
-/

namespace A223833.P2056897602248211895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P2056897602248211895

namespace A223833

/-- `∑[A077169(2*n+3)]` -/
def P2056897602248211895.Spec : Prop :=
  ∀ n, P2056897602248211895.a n = A223833 (n + 1)

end A223833

/-! ## A223833.P14510044799671562998

`∑[∑[record[7-A009531(n)]]]`
-/

namespace A223833.P14510044799671562998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223833.P14510044799671562998

namespace A223833

/-- `∑[∑[record[7-A009531(n)]]]` -/
def P14510044799671562998.Spec : Prop :=
  ∀ n, P14510044799671562998.a n = A223833 (n + 1)

end A223833

/-!
# A223834: Number of n X 4 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223834, the canonical program `A223834.P10244681347192573641` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223834 has offset 1).

The definition of A223834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223834.P10244681347192573641

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=11, a(1)=46, a(2)=118, a(3)=249, a(4)=471, a(5)=824`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A223834

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10244681347192573641.Spec : Prop :=
  ∀ n, P10244681347192573641.a n = A223834 (n + 1)

theorem P10244681347192573641.correct : P10244681347192573641.Spec := by
  intro n
  simp only [A223834, Nat.add_sub_cancel]

end A223834

/-! ## A223834.P6397547356261656284

`A223838(∑[n+4]+3)`
-/

namespace A223834.P6397547356261656284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223834.P6397547356261656284

namespace A223834

/-- `A223838(∑[n+4]+3)` -/
def P6397547356261656284.Spec : Prop :=
  ∀ n, P6397547356261656284.a n = A223834 (n + 1)

end A223834

/-! ## A223834.P1090601512510993661

`A223838(A141214(n+1))+char[30]`
-/

namespace A223834.P1090601512510993661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223834.P1090601512510993661

namespace A223834

/-- `A223838(A141214(n+1))+char[30]` -/
def P1090601512510993661.Spec : Prop :=
  ∀ n, P1090601512510993661.a n = A223834 (n + 1)

end A223834

/-! ## A223834.P15904907399539084142

`or(C(2, n+2), A223838(A027379(n+2)))`
-/

namespace A223834.P15904907399539084142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A223838 (A027379 (n + 2)).toNat)

end

end A223834.P15904907399539084142

namespace A223834

/-- `or(C(2, n+2), A223838(A027379(n+2)))` -/
def P15904907399539084142.Spec : Prop :=
  ∀ n, P15904907399539084142.a n = A223834 (n + 1)

end A223834

/-! ## A223834.P3940855022917590832

`A007318(C(2, n))*A223838(A141214(n+1))`
-/

namespace A223834.P3940855022917590832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223838 (A141214 (n + 1)).toNat

end

end A223834.P3940855022917590832

namespace A223834

/-- `A007318(C(2, n))*A223838(A141214(n+1))` -/
def P3940855022917590832.Spec : Prop :=
  ∀ n, P3940855022917590832.a n = A223834 (n + 1)

end A223834

/-!
# A223835: Number of n X 5 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223835, there is no canonical definition to state claims against.
-/

/-! ## A223835.P1403607562366592721

`A223838(∑[n+5]+6)`
-/

namespace A223835.P1403607562366592721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223835.P1403607562366592721

/-! ## A223835.P8511943220757228853

`A223838(A046691(n+3))+char[34]`
-/

namespace A223835.P8511943220757228853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223835.P8511943220757228853

/-! ## A223835.P16323730786719526756

`A020985(n)²*A223838(A046691(n+3))`
-/

namespace A223835.P16323730786719526756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A223838 (A046691 (n + 3)).toNat

end

end A223835.P16323730786719526756

/-! ## A223835.P2207644527717149498

`A007318(C(2, n))*A223838(A046691(n+3))`
-/

namespace A223835.P2207644527717149498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223838 (A046691 (n + 3)).toNat

end

end A223835.P2207644527717149498

/-! ## A223835.P1574839886903526001

`A223838(A046691(n+3))/A007318(C(n, 2))`
-/

namespace A223835.P1574839886903526001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223838 (A046691 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A223835.P1574839886903526001

/-!
# A223836: Number of n X 6 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223836, there is no canonical definition to state claims against.
-/

/-! ## A223836.P13055067101955139580

`A223838(A052905(n+3))`
-/

namespace A223836.P13055067101955139580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A052905 (n + 3)).toNat

end

end A223836.P13055067101955139580

/-! ## A223836.P14125794465200782951

`A223838(A056119(n)+16)`
-/

namespace A223836.P14125794465200782951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A056119 n + 16).toNat

end

end A223836.P14125794465200782951

/-! ## A223836.P13037446095441516902

`A223838(eq[3, A219347(n)])`
-/

namespace A223836.P13037446095441516902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223836.P13037446095441516902

/-! ## A223836.P16682821614736651661

`A223838(eq[5, A193592(n)])`
-/

namespace A223836.P16682821614736651661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223836.P16682821614736651661

/-! ## A223836.P2738422636504529353

`A223838(A055999(n+3)+1)`
-/

namespace A223836.P2738422636504529353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A055999 (n + 3) + 1).toNat

end

end A223836.P2738422636504529353

/-!
# A223837: Number of n X 7 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223837, there is no canonical definition to state claims against.
-/

/-! ## A223837.P1049704078498761882

`A223838(C(n+7, 2)+n+1)`
-/

namespace A223837.P1049704078498761882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (Nat.choose (n + 7) 2 + n + 1)

end

end A223837.P1049704078498761882

/-! ## A223837.P4582871511538127816

`A223838(A055999(n+4))`
-/

namespace A223837.P4582871511538127816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A055999 (n + 4)).toNat

end

end A223837.P4582871511538127816

/-! ## A223837.P6357964292550643982

`A223838(eq[4, A219347(n)])`
-/

namespace A223837.P6357964292550643982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223837.P6357964292550643982

/-! ## A223837.P5687857429352402259

`A223838(eq[6, A193592(n)])`
-/

namespace A223837.P5687857429352402259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223837.P5687857429352402259

/-! ## A223837.P5730631318702369497

`A223838(Δ[A026054(n+4)])`
-/

namespace A223837.P5730631318702369497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (f1 (n + 1) - f1 n).toNat

end

end A223837.P5730631318702369497

/-!
# A223838: T(n,k) = number of n X k 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223838, there is no canonical definition to state claims against.
-/

/-! ## A223838.P10775249391949021579

`A224146(n+1)+A016389(A022166(n))`
-/

namespace A223838.P10775249391949021579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A022166 n).toNat

end

end A223838.P10775249391949021579

/-! ## A223838.P1176497139429451315

`A224146(n+1)+A016389(A027336(n))`
-/

namespace A223838.P1176497139429451315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A027336 n).toNat

end

end A223838.P1176497139429451315

/-! ## A223838.P15553693849170738955

`A224146(n+1)+A016389(A176561(n))`
-/

namespace A223838.P15553693849170738955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) + A016389 (A176561 n).toNat

end

end A223838.P15553693849170738955

/-! ## A223838.P14711384269312247276

`A224146(n+1)-A014707(A022171(n))`
-/

namespace A223838.P14711384269312247276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) - A014707 (A022171 n).toNat

end

end A223838.P14711384269312247276

/-! ## A223838.P7639510391211840319

`A224146(n+1)-A025465(A023105(n))`
-/

namespace A223838.P7639510391211840319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224146 (n + 1) - A025465 (A023105 n).toNat

end

end A223838.P7639510391211840319

/-!
# A223839: Number of 3 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223839, there is no canonical definition to state claims against.
-/

/-! ## A223839.P6334145725277075794

`A223838(∑[n+2]+4)`
-/

namespace A223839.P6334145725277075794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223839.P6334145725277075794

/-! ## A223839.P13000168680452440355

`or(char[4], A223838(A167614(n+1)))`
-/

namespace A223839.P13000168680452440355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223838 (A167614 (n + 1)).toNat)

end

end A223839.P13000168680452440355

/-! ## A223839.P763221332777844249

`A223838(A167614(n+1))+A185246(n)`
-/

namespace A223839.P763221332777844249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167614 (n + 1)).toNat + A185246 n

end

end A223839.P763221332777844249

/-! ## A223839.P13358333515103446885

`A167964(n+1)*A223838(A167614(n+1))`
-/

namespace A223839.P13358333515103446885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 (n + 1) * A223838 (A167614 (n + 1)).toNat

end

end A223839.P13358333515103446885

/-! ## A223839.P10744495344776505601

`A223838(A167614(n+1))+A000007(n+4)`
-/

namespace A223839.P10744495344776505601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167614 (n + 1)).toNat + A000007 (n + 4)

end

end A223839.P10744495344776505601

/-!
# A223840: Number of 4 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223840, there is no canonical definition to state claims against.
-/

/-! ## A223840.P17614591785301822680

`A223838(∑[n+3]+7)`
-/

namespace A223840.P17614591785301822680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223840.P17614591785301822680

/-! ## A223840.P10400372177221920775

`or(char[1], A223838(A055999(n)+10))`
-/

namespace A223840.P10400372177221920775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223838 (A055999 n + 10).toNat)

end

end A223840.P10400372177221920775

/-! ## A223840.P12703991856461860984

`gcd(11, A007318(n))*A223838(A055999(n)+10)`
-/

namespace A223840.P12703991856461860984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A223838 (A055999 n + 10).toNat

end

end A223840.P12703991856461860984

/-! ## A223840.P17611457121179217793

`A223838(A055999(n)+10)%A000045(n+16)`
-/

namespace A223840.P17611457121179217793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223838 (A055999 n + 10).toNat) (A000045 (n + 16))

end

end A223840.P17611457121179217793

/-! ## A223840.P16633981832659006210

`A000108(C(2, n+2))*A223838(A055999(n)+10)`
-/

namespace A223840.P16633981832659006210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A223838 (A055999 n + 10).toNat

end

end A223840.P16633981832659006210

/-!
# A223841: Number of 5 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223841, there is no canonical definition to state claims against.
-/

/-! ## A223841.P9500135067304987558

`A223838(A167499(n+3))`
-/

namespace A223841.P9500135067304987558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167499 (n + 3)).toNat

end

end A223841.P9500135067304987558

/-! ## A223841.P9023332200463646070

`A223838(A155212(n)+13)`
-/

namespace A223841.P9023332200463646070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A155212 n + 13).toNat

end

end A223841.P9023332200463646070

/-! ## A223841.P8731444852874813932

`A223838(A056000(n)+15)`
-/

namespace A223841.P8731444852874813932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A056000 n + 15).toNat

end

end A223841.P8731444852874813932

/-! ## A223841.P3300271027117153650

`A223838(A166136(n+3)-1)`
-/

namespace A223841.P3300271027117153650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A166136 (n + 3) - 1).toNat

end

end A223841.P3300271027117153650

/-! ## A223841.P12183635389913905756

`A223838(A167614(n+3)+2)`
-/

namespace A223841.P12183635389913905756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167614 (n + 3) + 2).toNat

end

end A223841.P12183635389913905756

/-!
# A223842: Number of 6 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223842, there is no canonical definition to state claims against.
-/

/-! ## A223842.P6625365878991391382

`A223838(∑[n+5]+16)`
-/

namespace A223842.P6625365878991391382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223842.P6625365878991391382

/-! ## A223842.P8113521672575112053

`A223838(A000124(n+5)+5)+char[28]`
-/

namespace A223842.P8113521672575112053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223842.P8113521672575112053

/-! ## A223842.P6620462461282890127

`A223838(A167499(n+4)+1)+(2*n)%2`
-/

namespace A223842.P6620462461282890127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167499 (n + 4) + 1).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A223842.P6620462461282890127

/-! ## A223842.P6154017030098319719

`A007318(C(2, n))*A223838(A000124(n+5)+5)`
-/

namespace A223842.P6154017030098319719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223838 (A000124 (n + 5) + 5).toNat

end

end A223842.P6154017030098319719

/-! ## A223842.P10030163891103628320

`A000041(C(n, n²))*A223838(A167499(n+4)+1)`
-/

namespace A223842.P10030163891103628320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A223838 (A167499 (n + 4) + 1).toNat

end

end A223842.P10030163891103628320

/-!
# A223843: Number of 7 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal and columns nondecreasing.

The programs for A223843, there is no canonical definition to state claims against.
-/

/-! ## A223843.P13975323909034396682

`A223838(A056119(n)+28)`
-/

namespace A223843.P13975323909034396682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A056119 n + 28).toNat

end

end A223843.P13975323909034396682

/-! ## A223843.P8024638072039303147

`A223838(A167614(n+5)+4)`
-/

namespace A223843.P8024638072039303147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A167614 (n + 5) + 4).toNat

end

end A223843.P8024638072039303147

/-! ## A223843.P8248625621961761367

`A223838(A133263(n+6)+5)`
-/

namespace A223843.P8248625621961761367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A133263 (n + 6) + 5).toNat

end

end A223843.P8248625621961761367

/-! ## A223843.P8416652034666393002

`A223838(A000124(n+6)+6)`
-/

namespace A223843.P8416652034666393002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A000124 (n + 6) + 6).toNat

end

end A223843.P8416652034666393002

/-! ## A223843.P4530275112731853691

`A223838(A000096(n+5)+8)`
-/

namespace A223843.P4530275112731853691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223838 (A000096 (n + 5) + 8).toNat

end

end A223843.P4530275112731853691

/-!
# A223844: Number of n X n 0..3 arrays with rows and columns unimodal.

The programs for A223844, there is no canonical definition to state claims against.
-/

/-! ## A223844.P5969561752370860177

`A223850((n+1)²+n²)`
-/

namespace A223844.P5969561752370860177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 ((n + 1) ^ 2 + n ^ 2)

end

end A223844.P5969561752370860177

/-!
# A223845: Number of nX3 0..3 arrays with rows and columns unimodal.

The programs for A223845, there is no canonical definition to state claims against.
-/

/-! ## A223845.P8300109551582435126

`A223850(∑[n+2]+4)`
-/

namespace A223845.P8300109551582435126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223845.P8300109551582435126

/-! ## A223845.P11382587214859465859

`A223850(A167614(n+1))+A185284(n)`
-/

namespace A223845.P11382587214859465859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A167614 (n + 1)).toNat + A185284 n

end

end A223845.P11382587214859465859

/-! ## A223845.P5417120196692143505

`A223850(A167614(n+1))*A304042(n)`
-/

namespace A223845.P5417120196692143505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A167614 (n + 1)).toNat * A304042 n

end

end A223845.P5417120196692143505

/-! ## A223845.P16939499204459319891

`lcm(A054977(n), A223850(A167614(n+1)))`
-/

namespace A223845.P16939499204459319891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A223850 (A167614 (n + 1)).toNat)

end

end A223845.P16939499204459319891

/-! ## A223845.P5221799340771972582

`or(A000038(n), A223850(A167614(n+1)))`
-/

namespace A223845.P5221799340771972582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223850 (A167614 (n + 1)).toNat)

end

end A223845.P5221799340771972582

/-!
# A223846: Number of nX4 0..3 arrays with rows and columns unimodal.

The programs for A223846, there is no canonical definition to state claims against.
-/

/-! ## A223846.P17145870839261089494

`A223850(A374004(n+1))`
-/

namespace A223846.P17145870839261089494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374004 (n + 1)).toNat

end

end A223846.P17145870839261089494

/-! ## A223846.P10221869209638535849

`A223850(A141214(n)+7)`
-/

namespace A223846.P10221869209638535849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A141214 n + 7).toNat

end

end A223846.P10221869209638535849

/-! ## A223846.P15483312615018230686

`A223850(A052905(n)+9)`
-/

namespace A223846.P15483312615018230686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A052905 n + 9).toNat

end

end A223846.P15483312615018230686

/-! ## A223846.P15419298683346014745

`A223850(A055999(n)+10)`
-/

namespace A223846.P15419298683346014745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A055999 n + 10).toNat

end

end A223846.P15419298683346014745

/-! ## A223846.P7386076800497127471

`A223850(A167614(n+2)+1)`
-/

namespace A223846.P7386076800497127471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A167614 (n + 2) + 1).toNat

end

end A223846.P7386076800497127471

/-!
# A223847: Number of nX5 0..3 arrays with rows and columns unimodal.

The programs for A223847, there is no canonical definition to state claims against.
-/

/-! ## A223847.P10214148865176557254

`A223850(A374005(n+1))`
-/

namespace A223847.P10214148865176557254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374005 (n + 1)).toNat

end

end A223847.P10214148865176557254

/-! ## A223847.P16646577133666330858

`A223850(A155212(n)+13)`
-/

namespace A223847.P16646577133666330858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A155212 n + 13).toNat

end

end A223847.P16646577133666330858

/-! ## A223847.P18082028717780859776

`A223850(A056000(n)+15)`
-/

namespace A223847.P18082028717780859776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A056000 n + 15).toNat

end

end A223847.P18082028717780859776

/-! ## A223847.P847772934401860959

`A223850(eq[6, A131818(n+1)])`
-/

namespace A223847.P847772934401860959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223847.P847772934401860959

/-! ## A223847.P11461403975461134481

`A223850(eq[5, A135223(n+1)]+1)`
-/

namespace A223847.P11461403975461134481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223847.P11461403975461134481

/-!
# A223848: Number of nX6 0..3 arrays with rows and columns unimodal.

The programs for A223848, there is no canonical definition to state claims against.
-/

/-! ## A223848.P14614680809245482278

`A223850(A374007(n+1))`
-/

namespace A223848.P14614680809245482278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374007 (n + 1)).toNat

end

end A223848.P14614680809245482278

/-! ## A223848.P16497916639287589305

`A223850(eq[7, A131818(n+1)])`
-/

namespace A223848.P16497916639287589305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223848.P16497916639287589305

/-! ## A223848.P1852698057963775832

`A223850(eq[5, A193592(n)])`
-/

namespace A223848.P1852698057963775832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223848.P1852698057963775832

/-! ## A223848.P7365086283377900420

`A223850(eq[6, A200370(n+1)])`
-/

namespace A223848.P7365086283377900420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223848.P7365086283377900420

/-! ## A223848.P5743485317737507614

`A223850(eq[8, A185782(n+1)])`
-/

namespace A223848.P5743485317737507614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223848.P5743485317737507614

/-!
# A223849: Number of nX7 0..3 arrays with rows and columns unimodal.

The programs for A223849, there is no canonical definition to state claims against.
-/

/-! ## A223849.P15885143120749000878

`A223850(A374008(n+1))`
-/

namespace A223849.P15885143120749000878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (A374008 (n + 1)).toNat

end

end A223849.P15885143120749000878

/-! ## A223849.P463571885865790654

`A223850(eq[7, A200370(n+1)])`
-/

namespace A223849.P463571885865790654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223849.P463571885865790654

/-! ## A223849.P7895108272474668710

`A223850(eq[8, A131818(n+1)])`
-/

namespace A223849.P7895108272474668710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223849.P7895108272474668710

/-!
# A223851: Poly-Cauchy numbers c_4^(-n).

The programs for A223851, the canonical program `A223851.P6292542752755418290` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223851 has offset 1).

The definition of A223851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223851.P6292542752755418290

`5^(n+1)+11*3^(n+1)-3*2^(2*(n+1)+1)-3*2^(n+2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A223851

/-- `5^(n+1)+11*3^(n+1)-3*2^(2*(n+1)+1)-3*2^(n+2)` -/
def P6292542752755418290.Spec : Prop :=
  ∀ n, P6292542752755418290.a n = A223851 (n + 1)

theorem P6292542752755418290.correct : P6292542752755418290.Spec := by
  intro n
  simp only [A223851, Nat.add_sub_cancel]

end A223851

/-!
# A223852: Poly-Cauchy numbers c_5^(-n).

The programs for A223852, there is no canonical definition to state claims against.
-/

/-! ## A223852.P3531313913609605772

`A383049(A167499(n+5))`
-/

namespace A223852.P3531313913609605772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A167499 (n + 5)).toNat

end

end A223852.P3531313913609605772

/-!
# A223853: a(n) = ceiling(li(2*2^n) - li(2^n)) - (pi(2*2^n) - pi(2^n)) with li(x) the logarithmic integral and pi(x) the prime counting function.

The programs for A223853, there is no canonical definition to state claims against.
-/

/-! ## A223853.P7803904626429236023

`A223900(n+1)-A036378(n+1)`
-/

namespace A223853.P7803904626429236023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - A036378 (n + 1)

end

end A223853.P7803904626429236023

/-! ## A223853.P15373710455176098049

`A223900(n+1)-Δ[A007053(n+1)]`
-/

namespace A223853.P15373710455176098049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (n + 1) - (f1 (n + 1) - f1 n)

end

end A223853.P15373710455176098049

/-! ## A223853.P10862539657842263758

`A223900(A254667(n+1))-A162145(n+2)`
-/

namespace A223853.P10862539657842263758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223900 (A254667 (n + 1)).toNat - A162145 (n + 2)

end

end A223853.P10862539657842263758

/-! ## A223853.P14452529887074419242

`A108955(2^(n+1))+1-A036378(n+1)`
-/

namespace A223853.P14452529887074419242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108955 (2 ^ (n + 1)) + 1 - A036378 (n + 1)

end

end A223853.P14452529887074419242

/-! ## A223853.P15206325387919467594

`A108955(2^(n+1))+1-Δ[A007053(n+1)]`
-/

namespace A223853.P15206325387919467594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108955 (2 ^ (n + 1)) + 1 - (f1 (n + 1) - f1 n)

end

end A223853.P15206325387919467594

/-!
# A223858: Number of n X n 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223858, there is no canonical definition to state claims against.
-/

/-! ## A223858.P1398932859055176240

`A223864(∑[4*n]+1)`
-/

namespace A223858.P1398932859055176240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223858.P1398932859055176240

/-! ## A223858.P6016973379027542045

`record[A003982(n)*A223864(n+1)]`
-/

namespace A223858.P6016973379027542045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223858.P6016973379027542045

/-! ## A223858.P13057759087865775070

`record[gcd(A049581(n), A223864(n+1))]`
-/

namespace A223858.P13057759087865775070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A223864 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223858.P13057759087865775070

/-! ## A223858.P15177036004352611221

`lcm(A223864(A001844(n)), A261494(n))`
-/

namespace A223858.P15177036004352611221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A223864 (A001844 n).toNat) (A261494 n)

end

end A223858.P15177036004352611221

/-! ## A223858.P1021539936112258385

`A223864(A001844(n))%A284340(n+1)`
-/

namespace A223858.P1021539936112258385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223864 (A001844 n).toNat) (A284340 (n + 1))

end

end A223858.P1021539936112258385

/-!
# A223859: Number of n X 3 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223859, there is no canonical definition to state claims against.
-/

/-! ## A223859.P14354589878883041514

`A223864(∑[n+3]+1)`
-/

namespace A223859.P14354589878883041514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223859.P14354589878883041514

/-! ## A223859.P2115131238796300087

`A093719(3*n)*A223864(A034856(n+2))`
-/

namespace A223859.P2115131238796300087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093719 (3 * n) * A223864 (A034856 (n + 2)).toNat

end

end A223859.P2115131238796300087

/-! ## A223859.P13532051112403238741

`A086382(3*(n+1))*A223864(A034856(n+2))`
-/

namespace A223859.P13532051112403238741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086382 (3 * (n + 1)) * A223864 (A034856 (n + 2)).toNat

end

end A223859.P13532051112403238741

/-! ## A223859.P15111499142145995587

`A223864(A034856(n+2))%A001147(2*(n+2))`
-/

namespace A223859.P15111499142145995587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223864 (A034856 (n + 2)).toNat) (A001147 (2 * (n + 2)))

end

end A223859.P15111499142145995587

/-!
# A223860: Number of n X 4 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223860, there is no canonical definition to state claims against.
-/

/-! ## A223860.P11000921327353412048

`A223864(A141214(n+1))`
-/

namespace A223860.P11000921327353412048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A141214 (n + 1)).toNat

end

end A223860.P11000921327353412048

/-! ## A223860.P6925312382795565303

`A223864(A155212(n)+5)`
-/

namespace A223860.P6925312382795565303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A155212 n + 5).toNat

end

end A223860.P6925312382795565303

/-! ## A223860.P4053942849515077351

`A223864(A056000(n)+7)`
-/

namespace A223860.P4053942849515077351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056000 n + 7).toNat

end

end A223860.P4053942849515077351

/-! ## A223860.P8661139379155226408

`A223864(eq[4, A209434(n)])`
-/

namespace A223860.P8661139379155226408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223860.P8661139379155226408

/-! ## A223860.P8099403095037180722

`A223864(A052905(n+1)+2)`
-/

namespace A223860.P8099403095037180722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A052905 (n + 1) + 2).toNat

end

end A223860.P8099403095037180722

/-!
# A223861: Number of nX5 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223861, there is no canonical definition to state claims against.
-/

/-! ## A223861.P13603197732834860767

`A223864(Δ[A264443(n)])`
-/

namespace A223861.P13603197732834860767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (f1 (n + 1) - f1 n).toNat

end

end A223861.P13603197732834860767

/-! ## A223861.P6919636561683859337

`A223864(A046691(n+3))`
-/

namespace A223861.P6919636561683859337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A046691 (n + 3)).toNat

end

end A223861.P6919636561683859337

/-! ## A223861.P11648192983163804081

`A223864(A056115(n)+11)`
-/

namespace A223861.P11648192983163804081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056115 n + 11).toNat

end

end A223861.P11648192983163804081

/-! ## A223861.P8754687854091527515

`A223864(eq[4, A193592(n)])`
-/

namespace A223861.P8754687854091527515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223861.P8754687854091527515

/-! ## A223861.P2907704266261459636

`A223864(Δ[A023545(n+1)])`
-/

namespace A223861.P2907704266261459636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (f1 (n + 1) - f1 n).toNat

end

end A223861.P2907704266261459636

/-!
# A223862: Number of nX6 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223862, there is no canonical definition to state claims against.
-/

/-! ## A223862.P14960977189677449746

`A223864(eq[3, A219347(n)])`
-/

namespace A223862.P14960977189677449746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223862.P14960977189677449746

/-! ## A223862.P17685560921680690305

`A223864(eq[5, A193592(n)])`
-/

namespace A223862.P17685560921680690305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223862.P17685560921680690305

/-! ## A223862.P1346153358911362086

`A223864(A000124(n+6)-6)`
-/

namespace A223862.P1346153358911362086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A000124 (n + 6) - 6).toNat

end

end A223862.P1346153358911362086

/-! ## A223862.P12615538140717390316

`A223864(eq[8, A185782(n+1)])`
-/

namespace A223862.P12615538140717390316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223862.P12615538140717390316

/-! ## A223862.P11254580696663570607

`A223864(Δ[Δ[A006504(n+1)]])`
-/

namespace A223862.P11254580696663570607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (f1 (n + 1) - f1 n).toNat

end

end A223862.P11254580696663570607

/-!
# A223863: Number of nX7 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223863, there is no canonical definition to state claims against.
-/

/-! ## A223863.P11050946573772010320

`A223864(A055999(n+4))`
-/

namespace A223863.P11050946573772010320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A055999 (n + 4)).toNat

end

end A223863.P11050946573772010320

/-! ## A223863.P401151637710617441

`A223864(eq[4, A219347(n)])`
-/

namespace A223863.P401151637710617441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223863.P401151637710617441

/-! ## A223863.P7476965190540343326

`A223864(eq[6, A193592(n)])`
-/

namespace A223863.P7476965190540343326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223863.P7476965190540343326

/-! ## A223863.P13737734977092018831

`A223864(A000124(n+7)-7)`
-/

namespace A223863.P13737734977092018831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A000124 (n + 7) - 7).toNat

end

end A223863.P13737734977092018831

/-! ## A223863.P3872910124657740550

`A223864(eq[10, A185782(n+1)])`
-/

namespace A223863.P3872910124657740550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223863.P3872910124657740550

/-!
# A223864: T(n,k)=Number of nXk 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223864, there is no canonical definition to state claims against.
-/

/-! ## A223864.P1912605510210922221

`A273943(A224173(n+1)+A223987(n+1))`
-/

namespace A223864.P1912605510210922221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A224173 (n + 1) + A223987 (n + 1)).toNat

end

end A223864.P1912605510210922221

/-! ## A223864.P10407087383331935389

`A224173(n+1)+A001281(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P10407087383331935389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A001281 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P10407087383331935389

/-! ## A223864.P9585522778754811863

`A224173(n+1)+A004525(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P9585522778754811863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A004525 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P9585522778754811863

/-! ## A223864.P2391296190090922628

`A224173(n+1)+A004526(A223987(n+1)-A224173(n+1))`
-/

namespace A223864.P2391296190090922628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1) + A004526 (A223987 (n + 1) - A224173 (n + 1)).toNat

end

end A223864.P2391296190090922628

/-! ## A223864.P18148849321025070506

`A014682(A224173(n+1)+A223987(n+1))`
-/

namespace A223864.P18148849321025070506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A224173 (n + 1) + A223987 (n + 1)).toNat

end

end A223864.P18148849321025070506

/-!
# A223865: Number of 2Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223865, there is no canonical definition to state claims against.
-/

/-! ## A223865.P15882371739440309423

`A224190(∑[n+2]+4)`
-/

namespace A223865.P15882371739440309423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223865.P15882371739440309423

/-! ## A223865.P6075523527611664829

`A224190(A167614(n+1))+A178798(n)`
-/

namespace A223865.P6075523527611664829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167614 (n + 1)).toNat + A178798 n

end

end A223865.P6075523527611664829

/-! ## A223865.P6633733178202974031

`A063435(n)*A224190(A167614(n+1))`
-/

namespace A223865.P6633733178202974031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A224190 (A167614 (n + 1)).toNat

end

end A223865.P6633733178202974031

/-! ## A223865.P8077249865502345640

`A224190(A167614(n+1))*A304042(n)`
-/

namespace A223865.P8077249865502345640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (A167614 (n + 1)).toNat * A304042 n

end

end A223865.P8077249865502345640

/-! ## A223865.P15042166292362292216

`A224190(A167614(n+1))%A016890(n)`
-/

namespace A223865.P15042166292362292216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224190 (A167614 (n + 1)).toNat) (A016890 n)

end

end A223865.P15042166292362292216

/-!
# A223866: Number of 3Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223866, there is no canonical definition to state claims against.
-/

/-! ## A223866.P13896133535697780515

`A223864(∑[n+2]+4)`
-/

namespace A223866.P13896133535697780515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223866.P13896133535697780515

/-! ## A223866.P3559995174826850782

`A223864(A167614(n+1))+A178780(n)`
-/

namespace A223866.P3559995174826850782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167614 (n + 1)).toNat + A178780 n

end

end A223866.P3559995174826850782

/-! ## A223866.P16414528796249923956

`A223864(A167614(n+1))+A185284(n)`
-/

namespace A223866.P16414528796249923956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167614 (n + 1)).toNat + A185284 n

end

end A223866.P16414528796249923956

/-! ## A223866.P11286175089348872050

`lcm(A033999(n), A223864(A167614(n+1)))`
-/

namespace A223866.P11286175089348872050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223864 (A167614 (n + 1)).toNat)

end

end A223866.P11286175089348872050

/-! ## A223866.P10876937512083361632

`or(A014083(n), A223864(A167614(n+1)))`
-/

namespace A223866.P10876937512083361632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014083 n) (A223864 (A167614 (n + 1)).toNat)

end

end A223866.P10876937512083361632

/-!
# A223867: Number of 4Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223867, there is no canonical definition to state claims against.
-/

/-! ## A223867.P6095031017088720679

`A223864(A141214(n)+7)`
-/

namespace A223867.P6095031017088720679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A141214 n + 7).toNat

end

end A223867.P6095031017088720679

/-! ## A223867.P15256512160514473179

`A223864(A052905(n)+9)`
-/

namespace A223867.P15256512160514473179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A052905 n + 9).toNat

end

end A223867.P15256512160514473179

/-! ## A223867.P1889560180529488859

`A223864(A055999(n)+10)`
-/

namespace A223867.P1889560180529488859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A055999 n + 10).toNat

end

end A223867.P1889560180529488859

/-! ## A223867.P18296076149123066807

`A223864(Δ[A008778(n)]+6)`
-/

namespace A223867.P18296076149123066807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (f1 (n + 1) - f1 n + 6).toNat

end

end A223867.P18296076149123066807

/-! ## A223867.P41161023195191059

`A223864(A167614(n+2)+1)`
-/

namespace A223867.P41161023195191059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167614 (n + 2) + 1).toNat

end

end A223867.P41161023195191059

/-!
# A223868: Number of 5Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223868, there is no canonical definition to state claims against.
-/

/-! ## A223868.P17046435726314627937

`A223864(A167499(n+3))`
-/

namespace A223868.P17046435726314627937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167499 (n + 3)).toNat

end

end A223868.P17046435726314627937

/-! ## A223868.P1084074264356627408

`A223864(A155212(n)+13)`
-/

namespace A223868.P1084074264356627408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A155212 n + 13).toNat

end

end A223868.P1084074264356627408

/-! ## A223868.P4501540332970283337

`A223864(A056000(n)+15)`
-/

namespace A223868.P4501540332970283337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056000 n + 15).toNat

end

end A223868.P4501540332970283337

/-! ## A223868.P331240345535581249

`A223864(eq[7, A066657(n)])`
-/

namespace A223868.P331240345535581249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223868.P331240345535581249

/-! ## A223868.P13162836405077643118

`A223864(A141214(n+1)+8)`
-/

namespace A223868.P13162836405077643118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A141214 (n + 1) + 8).toNat

end

end A223868.P13162836405077643118

/-!
# A223869: Number of 6Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223869, there is no canonical definition to state claims against.
-/

/-! ## A223869.P5343300422256066089

`A223864(A056115(n)+21)`
-/

namespace A223869.P5343300422256066089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056115 n + 21).toNat

end

end A223869.P5343300422256066089

/-! ## A223869.P15195088156258607618

`A223864(A052905(n+2)+11)`
-/

namespace A223869.P15195088156258607618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A052905 (n + 2) + 11).toNat

end

end A223869.P15195088156258607618

/-! ## A223869.P6565347482806478723

`A223864(eq[7, A131818(n+1)])`
-/

namespace A223869.P6565347482806478723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223869.P6565347482806478723

/-! ## A223869.P14013221321958045543

`A223864(A000124(n+6)-(n+1))`
-/

namespace A223869.P14013221321958045543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A223869.P14013221321958045543

/-! ## A223869.P9494953765646661419

`A223864(A055999(n+4)-(2*n+1))`
-/

namespace A223869.P9494953765646661419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A223869.P9494953765646661419

/-!
# A223870: Number of 7Xn 0..3 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223870, there is no canonical definition to state claims against.
-/

/-! ## A223870.P13594394551777500113

`A223864(A056119(n)+28)`
-/

namespace A223870.P13594394551777500113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A056119 n + 28).toNat

end

end A223870.P13594394551777500113

/-! ## A223870.P12865142217870162798

`A223864(eq[11, A066657(n)])`
-/

namespace A223870.P12865142217870162798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223870.P12865142217870162798

/-! ## A223870.P17968620314065000127

`A223864(A167499(n+5)+2)`
-/

namespace A223870.P17968620314065000127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A167499 (n + 5) + 2).toNat

end

end A223870.P17968620314065000127

/-! ## A223870.P13531206896554066937

`A223864(A000124(n+6)+6)`
-/

namespace A223870.P13531206896554066937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (A000124 (n + 6) + 6).toNat

end

end A223870.P13531206896554066937

/-! ## A223870.P2502054503853399688

`A223864(eq[8, A131818(n+1)])`
-/

namespace A223870.P2502054503853399688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223870.P2502054503853399688

/-!
# A223871: Number of n X 3 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223871, there is no canonical definition to state claims against.
-/

/-! ## A223871.P14032126815870819005

`A223876(∑[n+3]+1)`
-/

namespace A223871.P14032126815870819005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223871.P14032126815870819005

/-! ## A223871.P3107353214835459992

`A325801(n+1)+A223876(A055999(n)+4)`
-/

namespace A223871.P3107353214835459992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1) + A223876 (A055999 n + 4).toNat

end

end A223871.P3107353214835459992

/-! ## A223871.P802312167264624792

`A223876(A055999(n)+4)*A352269(2*(n+1))`
-/

namespace A223871.P802312167264624792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A055999 n + 4).toNat * A352269 (2 * (n + 1))

end

end A223871.P802312167264624792

/-!
# A223872: Number of nX4 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223872, there is no canonical definition to state claims against.
-/

/-! ## A223872.P18144633234395747552

`A223876(A141214(n+1))`
-/

namespace A223872.P18144633234395747552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A141214 (n + 1)).toNat

end

end A223872.P18144633234395747552

/-! ## A223872.P12847383074162600446

`A223876(A155212(n)+5)`
-/

namespace A223872.P12847383074162600446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A155212 n + 5).toNat

end

end A223872.P12847383074162600446

/-! ## A223872.P11759452305046277660

`A223876(A056000(n)+7)`
-/

namespace A223872.P11759452305046277660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A056000 n + 7).toNat

end

end A223872.P11759452305046277660

/-! ## A223872.P4138678040435744715

`A223876(eq[3, A193592(n)])`
-/

namespace A223872.P4138678040435744715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223872.P4138678040435744715

/-! ## A223872.P1736592333699610855

`A223876(eq[4, A209434(n)])`
-/

namespace A223872.P1736592333699610855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223872.P1736592333699610855

/-!
# A223873: Number of nX5 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223873, there is no canonical definition to state claims against.
-/

/-! ## A223873.P7385407136161132644

`A223876(Δ[A264443(n)])`
-/

namespace A223873.P7385407136161132644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (f1 (n + 1) - f1 n).toNat

end

end A223873.P7385407136161132644

/-! ## A223873.P18277629836879840861

`A223876(eq[2, A092921(n)])`
-/

namespace A223873.P18277629836879840861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223873.P18277629836879840861

/-! ## A223873.P16621852088140307085

`A223876(eq[4, A193592(n)])`
-/

namespace A223873.P16621852088140307085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223873.P16621852088140307085

/-! ## A223873.P14931769857745173058

`A223876(Δ[A023545(n+1)])`
-/

namespace A223873.P14931769857745173058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (f1 (n + 1) - f1 n).toNat

end

end A223873.P14931769857745173058

/-! ## A223873.P17247895430291304118

`A223876(eq[4, A168396(n+1)])`
-/

namespace A223873.P17247895430291304118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223873.P17247895430291304118

/-!
# A223874: Number of nX6 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223874, there is no canonical definition to state claims against.
-/

/-! ## A223874.P17976676073710112439

`A223876(eq[3, A219347(n)])`
-/

namespace A223874.P17976676073710112439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223874.P17976676073710112439

/-! ## A223874.P17651190182629373836

`A223876(eq[5, A193592(n)])`
-/

namespace A223874.P17651190182629373836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223874.P17651190182629373836

/-! ## A223874.P7955721553610468011

`A223876(eq[6, A200370(n+1)])`
-/

namespace A223874.P7955721553610468011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223874.P7955721553610468011

/-! ## A223874.P10530164622177875952

`A223876(eq[8, A185782(n+1)])`
-/

namespace A223874.P10530164622177875952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223874.P10530164622177875952

/-!
# A223875: Number of nX7 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223875, there is no canonical definition to state claims against.
-/

/-! ## A223875.P15148050167574242639

`A223876(eq[4, A219347(n)])`
-/

namespace A223875.P15148050167574242639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223875.P15148050167574242639

/-! ## A223875.P7677177052211604882

`A223876(eq[6, A193592(n)])`
-/

namespace A223875.P7677177052211604882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223875.P7677177052211604882

/-! ## A223875.P8807930035702777469

`A223876(eq[7, A200370(n+1)])`
-/

namespace A223875.P8807930035702777469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223875.P8807930035702777469

/-!
# A223877: Number of 3Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223877, there is no canonical definition to state claims against.
-/

/-! ## A223877.P12777586720543492310

`A223876(∑[n+2]+4)`
-/

namespace A223877.P12777586720543492310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223877.P12777586720543492310

/-! ## A223877.P8281121923459351968

`A223876(A167614(n+1))+A185036(n)`
-/

namespace A223877.P8281121923459351968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A167614 (n + 1)).toNat + A185036 n

end

end A223877.P8281121923459351968

/-! ## A223877.P544173608105971550

`lcm(A033999(n), A223876(A167614(n+1)))`
-/

namespace A223877.P544173608105971550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223876 (A167614 (n + 1)).toNat)

end

end A223877.P544173608105971550

/-! ## A223877.P3386463807833472196

`or(A223876(A167614(n+1)), A316864(n))`
-/

namespace A223877.P3386463807833472196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223876 (A167614 (n + 1)).toNat) (A316864 n)

end

end A223877.P3386463807833472196

/-! ## A223877.P12172446976799697528

`A223876(A167614(n+1))+A070140(n+1)`
-/

namespace A223877.P12172446976799697528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A167614 (n + 1)).toNat + A070140 (n + 1)

end

end A223877.P12172446976799697528

/-!
# A223878: Number of 4Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223878, there is no canonical definition to state claims against.
-/

/-! ## A223878.P1424831272922287948

`A223876(A141214(n)+7)`
-/

namespace A223878.P1424831272922287948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A141214 n + 7).toNat

end

end A223878.P1424831272922287948

/-! ## A223878.P4403114798765024141

`A223876(A052905(n)+9)`
-/

namespace A223878.P4403114798765024141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A052905 n + 9).toNat

end

end A223878.P4403114798765024141

/-! ## A223878.P1071578254976859841

`A223876(A055999(n)+10)`
-/

namespace A223878.P1071578254976859841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A055999 n + 10).toNat

end

end A223878.P1071578254976859841

/-! ## A223878.P1227719451903098800

`A223876(A167614(n+2)+1)`
-/

namespace A223878.P1227719451903098800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A167614 (n + 2) + 1).toNat

end

end A223878.P1227719451903098800

/-! ## A223878.P13404993600289004844

`A223876(A166136(n+2)-2)`
-/

namespace A223878.P13404993600289004844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A166136 (n + 2) - 2).toNat

end

end A223878.P13404993600289004844

/-!
# A223879: Number of 5Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223879, there is no canonical definition to state claims against.
-/

/-! ## A223879.P10621234139048461739

`A223876(A155212(n)+13)`
-/

namespace A223879.P10621234139048461739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A155212 n + 13).toNat

end

end A223879.P10621234139048461739

/-! ## A223879.P655195080047654034

`A223876(A056000(n)+15)`
-/

namespace A223879.P655195080047654034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A056000 n + 15).toNat

end

end A223879.P655195080047654034

/-! ## A223879.P1299956437376550859

`A223876(A051936(n+4)+14)`
-/

namespace A223879.P1299956437376550859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A051936 (n + 4) + 14).toNat

end

end A223879.P1299956437376550859

/-! ## A223879.P17137653635870216147

`A223876(eq[6, A131818(n+1)])`
-/

namespace A223879.P17137653635870216147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223879.P17137653635870216147

/-! ## A223879.P11869563531981479197

`A223876(eq[5, A135223(n+1)]+1)`
-/

namespace A223879.P11869563531981479197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223879.P11869563531981479197

/-!
# A223880: Number of 6Xn 0..3 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223880, there is no canonical definition to state claims against.
-/

/-! ## A223880.P6954663800445863437

`A223876(A166136(n+4))`
-/

namespace A223880.P6954663800445863437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A166136 (n + 4)).toNat

end

end A223880.P6954663800445863437

/-! ## A223880.P9491235641970643220

`A223876(A167499(n+4)+1)`
-/

namespace A223880.P9491235641970643220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A167499 (n + 4) + 1).toNat

end

end A223880.P9491235641970643220

/-! ## A223880.P8259500962069219713

`A223876(A000096(n+4)+7)`
-/

namespace A223880.P8259500962069219713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A000096 (n + 4) + 7).toNat

end

end A223880.P8259500962069219713

/-! ## A223880.P16194758693024397860

`A223876(A000217(n+5)+6)`
-/

namespace A223880.P16194758693024397860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (A000217 (n + 5) + 6).toNat

end

end A223880.P16194758693024397860

/-! ## A223880.P12158455351775751204

`A223876(eq[7, A131818(n+1)])`
-/

namespace A223880.P12158455351775751204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223880.P12158455351775751204

/-!
# A223881: Denominators in the expression m!/(prime(m-1)+1) for m > 1 such that this expression is not an integer.

The programs for A223881, there is no canonical definition to state claims against.
-/

/-! ## A223881.P16764172774098931978

`A023509(A225517(n+1)-1)`
-/

namespace A223881.P16764172774098931978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (A225517 (n + 1) - 1).toNat

end

end A223881.P16764172774098931978

/-!
# A223882: Number of n X 2 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223882, there is no canonical definition to state claims against.
-/

/-! ## A223882.P2180089285441630357

`A223885(∑[n+1]+2)`
-/

namespace A223882.P2180089285441630357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223882.P2180089285441630357

/-! ## A223882.P14030036106765138619

`A223892(∑[n+1]+2)`
-/

namespace A223882.P14030036106765138619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223882.P14030036106765138619

/-! ## A223882.P16689390897533155388

`record[A010054(n)*A223885(n+2)]`
-/

namespace A223882.P16689390897533155388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P16689390897533155388

/-! ## A223882.P14562125931592943072

`record[A223885(A133263(val(n+1, 2)+1))]`
-/

namespace A223882.P14562125931592943072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P14562125931592943072

/-! ## A223882.P14444946890141503779

`record[A223885(n+3)/A265981(n+1)]`
-/

namespace A223882.P14444946890141503779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223885 (n + 3) : ℚ) / (A265981 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223882.P14444946890141503779

/-!
# A223883: Number of nX3 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223883, there is no canonical definition to state claims against.
-/

/-! ## A223883.P10290019112425897340

`A223885(∑[n+2]+4)`
-/

namespace A223883.P10290019112425897340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223883.P10290019112425897340

/-! ## A223883.P7353757014814428860

`record[A100218(n)*A223885(n+4)]`
-/

namespace A223883.P7353757014814428860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A223885 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223883.P7353757014814428860

/-! ## A223883.P12738350471827488939

`record[gcd(A072024(n), A223885(n+4))]`
-/

namespace A223883.P12738350471827488939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072024 n) (A223885 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223883.P12738350471827488939

/-! ## A223883.P16588811673011509183

`lcm(∏{p}[n+1, -1%#], A223885(A167614(n+1)))`
-/

namespace A223883.P16588811673011509183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-1) (p : ℤ)) (A223885 (A167614 (n + 1)).toNat)

end

end A223883.P16588811673011509183

/-! ## A223883.P15483166033284669163

`A223885(A167614(n+1))+A025465(n)`
-/

namespace A223883.P15483166033284669163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A167614 (n + 1)).toNat + A025465 n

end

end A223883.P15483166033284669163

/-!
# A223884: Number of nX4 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223884, there is no canonical definition to state claims against.
-/

/-! ## A223884.P9389123190028897004

`A223885(∑[n+3]+7)`
-/

namespace A223884.P9389123190028897004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223884.P9389123190028897004

/-! ## A223884.P8686568037991034888

`record[A223885(A186350(2*(n+2)))]`
-/

namespace A223884.P8686568037991034888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A186350 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223884.P8686568037991034888

/-! ## A223884.P11805653828202606059

`record[A223885(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A223884.P11805653828202606059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223884.P11805653828202606059

/-!
# A223885: T(n,k)=Number of nXk 0..2 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223885, there is no canonical definition to state claims against.
-/

/-! ## A223885.P16738955612815784024

`A223892(n+1)-A185284(A000010(3*n+1))`
-/

namespace A223885.P16738955612815784024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A000010 (3 * n + 1)).toNat

end

end A223885.P16738955612815784024

/-! ## A223885.P11325902168497981556

`A223892(n+1)-A054896(A014378(n))`
-/

namespace A223885.P11325902168497981556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A054896 (A014378 n).toNat

end

end A223885.P11325902168497981556

/-! ## A223885.P9966315316096066381

`A223892(n+1)-A185284(A008486(n))`
-/

namespace A223885.P9966315316096066381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A008486 n).toNat

end

end A223885.P9966315316096066381

/-! ## A223885.P17965766850151447641

`A223892(n+1)-A185284(A008585(n))`
-/

namespace A223885.P17965766850151447641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (n + 1) - A185284 (A008585 n).toNat

end

end A223885.P17965766850151447641

/-! ## A223885.P4657311478660102960

`A223892(A327487(∑[n]))`
-/

namespace A223885.P4657311478660102960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223885.P4657311478660102960

/-!
# A223887: Number of 4-colored labeled graphs on n vertices.

The programs for A223887, there is no canonical definition to state claims against.
-/

/-! ## A223887.P14297907727299289825

`record[A322280(A052905(n))]`
-/

namespace A223887.P14297907727299289825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223887.P14297907727299289825

/-! ## A223887.P17896711390776997502

`A322280(A052905(n+2))`
-/

namespace A223887.P17896711390776997502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (A052905 (n + 2)).toNat

end

end A223887.P17896711390776997502

/-! ## A223887.P8597507725903025585

`A322280(A056115(n)+10)`
-/

namespace A223887.P8597507725903025585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (A056115 n + 10).toNat

end

end A223887.P8597507725903025585

/-! ## A223887.P16938781967680504755

`A322280(eq[4, A025581(n)])`
-/

namespace A223887.P16938781967680504755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223887.P16938781967680504755

/-! ## A223887.P18303798431080156869

`record[A322280(A141214(n)-2)]`
-/

namespace A223887.P18303798431080156869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322280 (A141214 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223887.P18303798431080156869

/-!
# A223888: Composite odious numbers (A000069) having no proper odious divisors greater than 1.

The programs for A223888, there is no canonical definition to state claims against.
-/

/-! ## A223888.P3945907811796218948

`∩[A230213(n+1), A390760(n+1)]`
-/

namespace A223888.P3945907811796218948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223888.P3945907811796218948

/-! ## A223888.P1803881092660151993

`∩[A151991(n+1), A230213(n+1)]`
-/

namespace A223888.P1803881092660151993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223888.P1803881092660151993

/-!
# A223889: The number of connected components of size > 1 over all simple labeled graphs on n nodes.

The programs for A223889, there is no canonical definition to state claims against.
-/

/-! ## A223889.P10608031922104354047

`A010078(A327078(n))-1`
-/

namespace A223889.P10608031922104354047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A327078 n).toNat - 1

end

end A223889.P10608031922104354047

/-! ## A223889.P17096418861207522840

`∑[∑[A072750(A113375(n))]]`
-/

namespace A223889.P17096418861207522840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (A113375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223889.P17096418861207522840

/-!
# A223890: Number of n X 3 0..2 arrays with row sums and column sums unimodal.

The programs for A223890, there is no canonical definition to state claims against.
-/

/-! ## A223890.P1064115407719299027

`A223892(∑[n+2]+4)`
-/

namespace A223890.P1064115407719299027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223890.P1064115407719299027

/-! ## A223890.P1346194626975985718

`A223892(A167614(n+1))+A025465(n)`
-/

namespace A223890.P1346194626975985718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A167614 (n + 1)).toNat + A025465 n

end

end A223890.P1346194626975985718

/-! ## A223890.P1148989985108689379

`A223892(A167614(n+1))+A064459(n)`
-/

namespace A223890.P1148989985108689379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A167614 (n + 1)).toNat + A064459 n

end

end A223890.P1148989985108689379

/-! ## A223890.P5450763290128876814

`A223892(A167614(n+1))+A171765(n)`
-/

namespace A223890.P5450763290128876814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A167614 (n + 1)).toNat + A171765 n

end

end A223890.P5450763290128876814

/-! ## A223890.P1769088676720671980

`A223892(A167614(n+1))+A185274(n)`
-/

namespace A223890.P1769088676720671980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A167614 (n + 1)).toNat + A185274 n

end

end A223890.P1769088676720671980

/-!
# A223891: Number of nX4 0..2 arrays with row sums and column sums unimodal.

The programs for A223891, there is no canonical definition to state claims against.
-/

/-! ## A223891.P8764062765232018613

`A223892(∑[n+3]+7)`
-/

namespace A223891.P8764062765232018613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223891.P8764062765232018613

/-! ## A223891.P17163188825679254063

`A223892(Δ[A008778(n)]+6)%A185122(n+6)`
-/

namespace A223891.P17163188825679254063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223892 (f1 (n + 1) - f1 n + 6).toNat) (A185122 (n + 6))

end

end A223891.P17163188825679254063

/-! ## A223891.P5652266348035160898

`record[A223892(A186350(2*(n+2)))]`
-/

namespace A223891.P5652266348035160898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223892 (A186350 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223891.P5652266348035160898

/-!
# A223892: T(n,k)=Number of nXk 0..2 arrays with row sums and column sums unimodal.

The programs for A223892, there is no canonical definition to state claims against.
-/

/-! ## A223892.P17999571206931450586

`A223885(n+1)+A185284(A000010(3*n+1))`
-/

namespace A223892.P17999571206931450586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A000010 (3 * n + 1)).toNat

end

end A223892.P17999571206931450586

/-! ## A223892.P18426442007048946914

`A223885(n+1)+A054896(A014378(n))`
-/

namespace A223892.P18426442007048946914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A054896 (A014378 n).toNat

end

end A223892.P18426442007048946914

/-! ## A223892.P15380990795873368861

`A223885(n+1)+A185284(A008486(n))`
-/

namespace A223892.P15380990795873368861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A008486 n).toNat

end

end A223892.P15380990795873368861

/-! ## A223892.P6826152746186858595

`A223885(n+1)+A185284(A008585(n))`
-/

namespace A223892.P6826152746186858595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223885 (n + 1) + A185284 (A008585 n).toNat

end

end A223892.P6826152746186858595

/-!
# A223893: Number of partitions of n into at most three distinct primes.

The programs for A223893, there is no canonical definition to state claims against.
-/

/-! ## A223893.P12211568672819228028

`A218469(n+1)-ceil((A002126(n)-atan(n))/2)`
-/

namespace A223893.P12211568672819228028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌈((A002126 n : ℝ) - Real.arctan (n : ℝ)) / 2⌉

end

end A223893.P12211568672819228028

/-! ## A223893.P3542638180164064549

`A218469(n+1)-floor(A002126(abs(1-n)+1)/2)`
-/

namespace A223893.P3542638180164064549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

end

end A223893.P3542638180164064549

/-! ## A223893.P12071877198061464554

`A218469(n+1)-floor((A002126(n)+A000038(n))/2)`
-/

namespace A223893.P12071877198061464554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - ⌊(A002126 n + A000038 n : ℚ) / 2⌋

end

end A223893.P12071877198061464554

/-! ## A223893.P7210313309732477971

`A010051(n+1)+A125688(n+1)+A117929(n+1)`
-/

namespace A223893.P7210313309732477971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A125688 (n + 1) + A117929 (n + 1))

end

end A223893.P7210313309732477971

/-! ## A223893.P16227574511322815487

`A218469(n+1)-A347550(n)`
-/

namespace A223893.P16227574511322815487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (n + 1) - A347550 n

end

end A223893.P16227574511322815487

/-! ## A223893.P12021142198396644321

`A347550(n+1)+A125688(n+1)`
-/

namespace A223893.P12021142198396644321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1) + A125688 (n + 1)

end

end A223893.P12021142198396644321

/-! ## A223893.P2417699399176095280

`A347550(n+1)+A068307(n+1)-A046926(n+1)`
-/

namespace A223893.P2417699399176095280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1) + (A068307 (n + 1) - A046926 (n + 1))

end

end A223893.P2417699399176095280

/-! ## A223893.P10878127283260045270

`A347550(n+1)+A068307(n+1)+A046926(n+1)*A057428(n)`
-/

namespace A223893.P10878127283260045270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (n + 1) + (A068307 (n + 1) + A046926 (n + 1) * A057428 n)

end

end A223893.P10878127283260045270

/-!
# A223894: Triangular array read by rows: T(n,k) is the number of connected components with size k summed over all simple labeled graphs on n nodes; n>=1, 1<=k<=n.

The programs for A223894, there is no canonical definition to state claims against.
-/

/-! ## A223894.P12987672465917729145

`A228315(n+1)/A002260(n+1)`
-/

namespace A223894.P12987672465917729145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A223894.P12987672465917729145

/-! ## A223894.P12157256103065393875

`A228315(n+1)/sqrt(A133819(n+1))`
-/

namespace A223894.P12157256103065393875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A223894.P12157256103065393875

/-! ## A223894.P4510152074284465421

`A228315(n+1)/A097285(2*n+1)`
-/

namespace A223894.P4510152074284465421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A097285 (2 * n + 1) : ℚ)

end

end A223894.P4510152074284465421

/-! ## A223894.P15073267382492701589

`A228315(n+1)/A070939(A059268(n))`
-/

namespace A223894.P15073267382492701589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A070939 (A059268 n).toNat : ℚ)

end

end A223894.P15073267382492701589

/-! ## A223894.P17465561132343154163

`A228315(n+1)/A001511(A018900(n+1))`
-/

namespace A223894.P17465561132343154163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228315 (n + 1) : ℚ) / (A001511 (A018900 (n + 1)).toNat : ℚ)

end

end A223894.P17465561132343154163

/-!
# A223895: E.g.f.: A(x) = Sum_{n>=0} 1/n! * Product_{k=1..n} -log(1 - sinh(k*x)).

The programs for A223895, there is no canonical definition to state claims against.
-/

/-! ## A223895.P9443821502744300890

`A008611(A199576(n)+ceil(xor(1, n)/2))`
-/

namespace A223895.P9443821502744300890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A199576 n + ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A223895.P9443821502744300890

/-! ## A223895.P12209769737489108178

`A008611(xor(A138099(n+1), A199576(n)))`
-/

namespace A223895.P12209769737489108178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor (A138099 (n + 1)) (A199576 n)).toNat

end

end A223895.P12209769737489108178

/-!
# A223896: E.g.f.: A(x) = Sum_{n>=0} (-log(1 - sinh(n*x)))^n/n!.

The programs for A223896, there is no canonical definition to state claims against.
-/

/-! ## A223896.P16903747253268083267

`A283467((2*n)^n+2)`
-/

namespace A223896.P16903747253268083267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 ((2 * n) ^ n + 2)

end

end A223896.P16903747253268083267

/-!
# A223897: E.g.f.: A(x) = Sum_{n>=0} 1/n! * Product_{k=1..n} -log(1 - sin(k*x)).

The programs for A223897, there is no canonical definition to state claims against.
-/

/-! ## A223897.P2540150621583568180

`A191251(A014500(n))`
-/

namespace A223897.P2540150621583568180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191251 (A014500 n).toNat

end

end A223897.P2540150621583568180

/-! ## A223897.P10345338369024395245

`A131485(A131490(n+1))`
-/

namespace A223897.P10345338369024395245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131485 (A131490 (n + 1)).toNat

end

end A223897.P10345338369024395245

/-!
# A223898: E.g.f.: A(x) = Sum_{n>=0} (-log(1 - sin(n*x)))^n/n!.

The programs for A223898, there is no canonical definition to state claims against.
-/

/-! ## A223898.P2882131045570365242

`A125311(n*(2*n+5))`
-/

namespace A223898.P2882131045570365242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 (n * (2 * n + 5))

end

end A223898.P2882131045570365242

/-!
# A223899: Poly-Cauchy numbers of the second kind hat c_n^(-2).

The programs for A223899, there is no canonical definition to state claims against.
-/

/-! ## A223899.P5349296550285904145

`A081046(n)-2*A081052(n)`
-/

namespace A223899.P5349296550285904145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081046 n - 2 * A081052 n

end

end A223899.P5349296550285904145

