import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A218900: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 4Xn array.

The programs for A218900, there is no canonical definition to state claims against.
-/

/-! ## A218900.P7966856356681340065

`A218897(A141214(n)+7)`
-/

namespace A218900.P7966856356681340065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A141214 n + 7).toNat

end

end A218900.P7966856356681340065

/-! ## A218900.P1646273239236395746

`A218897(A052905(n)+9)`
-/

namespace A218900.P1646273239236395746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A052905 n + 9).toNat

end

end A218900.P1646273239236395746

/-! ## A218900.P1028841500919550962

`A218897(A055999(n)+10)`
-/

namespace A218900.P1028841500919550962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A055999 n + 10).toNat

end

end A218900.P1028841500919550962

/-! ## A218900.P14995515522776133901

`A218897(A167614(n+2)+1)`
-/

namespace A218900.P14995515522776133901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A167614 (n + 2) + 1).toNat

end

end A218900.P14995515522776133901

/-! ## A218900.P6867455442809972764

`A218897(A166136(n+2)-2)`
-/

namespace A218900.P6867455442809972764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A166136 (n + 2) - 2).toNat

end

end A218900.P6867455442809972764

/-!
# A218901: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 5Xn array.

The programs for A218901, there is no canonical definition to state claims against.
-/

/-! ## A218901.P541452153415063151

`A218897(A167499(n+3))`
-/

namespace A218901.P541452153415063151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A167499 (n + 3)).toNat

end

end A218901.P541452153415063151

/-! ## A218901.P2246159412693338970

`A218897(A155212(n)+13)`
-/

namespace A218901.P2246159412693338970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A155212 n + 13).toNat

end

end A218901.P2246159412693338970

/-! ## A218901.P2649829654188643784

`A218897(A056000(n)+15)`
-/

namespace A218901.P2649829654188643784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A056000 n + 15).toNat

end

end A218901.P2649829654188643784

/-! ## A218901.P6268706082002683988

`A218897(A000124(n+4)+4)`
-/

namespace A218901.P6268706082002683988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A000124 (n + 4) + 4).toNat

end

end A218901.P6268706082002683988

/-! ## A218901.P6890311257211392884

`A218897(A051936(n+4)+14)`
-/

namespace A218901.P6890311257211392884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A051936 (n + 4) + 14).toNat

end

end A218901.P6890311257211392884

/-!
# A218902: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 6Xn array.

The programs for A218902, there is no canonical definition to state claims against.
-/

/-! ## A218902.P4047297009374137709

`A218897(A166136(n+4))`
-/

namespace A218902.P4047297009374137709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A166136 (n + 4)).toNat

end

end A218902.P4047297009374137709

/-! ## A218902.P17221665622693835706

`A218897(A056115(n)+21)`
-/

namespace A218902.P17221665622693835706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A056115 n + 21).toNat

end

end A218902.P17221665622693835706

/-! ## A218902.P17306626150649001423

`A218897(A167499(n+4)+1)`
-/

namespace A218902.P17306626150649001423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A167499 (n + 4) + 1).toNat

end

end A218902.P17306626150649001423

/-! ## A218902.P12276801563605226103

`A218897(eq[7, A131818(n+1)])`
-/

namespace A218902.P12276801563605226103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218902.P12276801563605226103

/-! ## A218902.P13807817992019034848

`A218897(A000124(n+6)-(n+1))`
-/

namespace A218902.P13807817992019034848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A218902.P13807817992019034848

/-!
# A218903: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..1 7Xn array.

The programs for A218903, there is no canonical definition to state claims against.
-/

/-! ## A218903.P17404676359139202378

`A218897(eq[11, A066657(n)])`
-/

namespace A218903.P17404676359139202378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218903.P17404676359139202378

/-! ## A218903.P16690123027330295191

`A218897(A167499(n+5)+2)`
-/

namespace A218903.P16690123027330295191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A167499 (n + 5) + 2).toNat

end

end A218903.P16690123027330295191

/-! ## A218903.P10756868735022331244

`A218897(A000217(n+6)+7)`
-/

namespace A218903.P10756868735022331244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A000217 (n + 6) + 7).toNat

end

end A218903.P10756868735022331244

/-! ## A218903.P14281385062872425807

`A218897(eq[8, A131818(n+1)])`
-/

namespace A218903.P14281385062872425807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218903.P14281385062872425807

/-! ## A218903.P12866237660693340538

`A218897(A347525(n+5)+∑[n])`
-/

namespace A218903.P12866237660693340538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218897 (A347525 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A218903.P12866237660693340538

/-!
# A218904: Sum of the sizes of the kernels of all integer partitions of n.

The programs for A218904, there is no canonical definition to state claims against.
-/

/-! ## A218904.P471247153334130138

`A066186(n+1)-A208483(n+1)`
-/

namespace A218904.P471247153334130138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A208483 (n + 1)

end

end A218904.P471247153334130138

/-! ## A218904.P4207217452758132193

`record[A206561(n+1)]-A208483(n+1)`
-/

namespace A218904.P4207217452758132193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A208483 (n + 1)

end

end A218904.P4207217452758132193

/-! ## A218904.P4870547759467922818

`(n+1)*A000041(n+1)-A208483(n+1)`
-/

namespace A218904.P4870547759467922818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A208483 (n + 1)

end

end A218904.P4870547759467922818

/-! ## A218904.P420065687120939049

`A090104(A027423(n))+n²`
-/

namespace A218904.P420065687120939049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090104 (A027423 n).toNat + (n ^ 2 : ℤ)

end

end A218904.P420065687120939049

/-!
# A218905: Irregular triangle, read by rows, of kernel sizes of the integer partitions of n taken in graded reverse lexicographic ordering.

The programs for A218905, there is no canonical definition to state claims against.
-/

/-! ## A218905.P12114127111315674034

`A243987(∑[A168219(A063759(n))])`
-/

namespace A218905.P12114127111315674034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (A063759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218905.P12114127111315674034

/-! ## A218905.P15026006467354081006

`A267263(A201461(n)+5)`
-/

namespace A218905.P15026006467354081006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A201461 n + 5).toNat

end

end A218905.P15026006467354081006

/-! ## A218905.P8114026506786301647

`gcd(A000120(A260677(n)), A082853(n))`
-/

namespace A218905.P8114026506786301647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A260677 n).toNat) (A082853 n)

end

end A218905.P8114026506786301647

/-! ## A218905.P8857920795016042224

`A175022(A187829(n+1)^A280522(n+1))`
-/

namespace A218905.P8857920795016042224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175022 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) ^ (A280522 (n + 1) : ℤ))).toNat

end

end A218905.P8857920795016042224

/-! ## A218905.P10245113458064817663

`A115577(3*n+1)+A084888(A304620(n+4))`
-/

namespace A218905.P10245113458064817663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (3 * n + 1) + A084888 (A304620 (n + 4)).toNat

end

end A218905.P10245113458064817663

/-!
# A218906: Number of different kernels of integer partitions of n.

The programs for A218906, there is no canonical definition to state claims against.
-/

/-! ## A218906.P1320911624815128500

`∑[A000700(n+1)]`
-/

namespace A218906.P1320911624815128500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P1320911624815128500

/-! ## A218906.P10560823139600938876

`A304631(n+1)-1`
-/

namespace A218906.P10560823139600938876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 (n + 1) - 1

end

end A218906.P10560823139600938876

/-! ## A218906.P16391284286954543616

`∑[abs(A081362(n+1))]`
-/

namespace A218906.P16391284286954543616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P16391284286954543616

/-! ## A218906.P15269665602134285619

`∑[A330373(n+1)/(n+1)]`
-/

namespace A218906.P15269665602134285619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330373 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P15269665602134285619

/-! ## A218906.P18404663433073507186

`∑[gcd(A000038(n), A081362(n+1))]`
-/

namespace A218906.P18404663433073507186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P18404663433073507186

/-! ## A218906.P3936472597244739115

`∑[lcm(A020985(n), A081362(n+1))]`
-/

namespace A218906.P3936472597244739115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P3936472597244739115

/-! ## A218906.P9772662148049260489

`∑[A027358(n+1)+A027357(n+1)]`
-/

namespace A218906.P9772662148049260489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027358 (n + 1) + A027357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P9772662148049260489

/-! ## A218906.P1834245356402620102

`∑[A046682(n+1)-A000701(n+1)]`
-/

namespace A218906.P1834245356402620102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (n + 1) - A000701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P1834245356402620102

/-! ## A218906.P5651408896316695195

`∑[abs(A027187(n+1)-A027193(n+1))]`
-/

namespace A218906.P5651408896316695195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027187 (n + 1) - A027193 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P5651408896316695195

/-! ## A218906.P9600571764927558719

`∑[A027349(n+1)+A027349(n+2)]`
-/

namespace A218906.P9600571764927558719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (n + 1) + A027349 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P9600571764927558719

/-! ## A218906.P7675901167691671789

`∑[A027348(n+1)+A027347(n+1)]`
-/

namespace A218906.P7675901167691671789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027348 (n + 1) + A027347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P7675901167691671789

/-! ## A218906.P10747505533089562702

`∑[A027359(∑[n+1])]`
-/

namespace A218906.P10747505533089562702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P10747505533089562702

/-! ## A218906.P546980051906802797

`∑[A276422(∑[n+2])]`
-/

namespace A218906.P546980051906802797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P546980051906802797

/-! ## A218906.P5648264521277667024

`∑[∑{d}[A081362(n+1), A000010(#)]]`
-/

namespace A218906.P5648264521277667024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P5648264521277667024

/-! ## A218906.P4882425596117763521

`∑[A027355(∑[n]+1)]`
-/

namespace A218906.P4882425596117763521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027355 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P4882425596117763521

/-! ## A218906.P5512210202524832609

`∑[A027360(∑[n]+1)]`
-/

namespace A218906.P5512210202524832609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027360 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P5512210202524832609

/-! ## A218906.P1508605362027557846

`∑[A116929(∑[n+1])]`
-/

namespace A218906.P1508605362027557846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116929 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P1508605362027557846

/-! ## A218906.P18097618545379876646

`∑[A027354(∑[n+1])]`
-/

namespace A218906.P18097618545379876646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027354 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P18097618545379876646

/-! ## A218906.P6173216830954558695

`∑[A290307(A034856(n+2))]`
-/

namespace A218906.P6173216830954558695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P6173216830954558695

/-! ## A218906.P9331622527594611911

`∑[A027356(A081267(n+1))]`
-/

namespace A218906.P9331622527594611911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A081267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218906.P9331622527594611911

/-!
# A218907: Triangle, read by rows, of integer partitions of n by kernel size k.

The programs for A218907, there is no canonical definition to state claims against.
-/

/-! ## A218907.P8556116502888042220

`A230025(∑[char[∑[n]]]²-n)`
-/

namespace A218907.P8556116502888042220
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230025 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A218907.P8556116502888042220

/-! ## A218907.P16442344998615971210

`A230025(A038722(n+1))%19`
-/

namespace A218907.P16442344998615971210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230025 (A038722 (n + 1)).toNat) 19

end

end A218907.P16442344998615971210

/-! ## A218907.P13991244389794836453

`lcm(A033999(n), A230025(A038722(n+1)))`
-/

namespace A218907.P13991244389794836453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A230025 (A038722 (n + 1)).toNat)

end

end A218907.P13991244389794836453

/-! ## A218907.P13808842855889408605

`or(A000007(n), A230025(A038722(n+1)))`
-/

namespace A218907.P13808842855889408605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A230025 (A038722 (n + 1)).toNat)

end

end A218907.P13808842855889408605

/-! ## A218907.P1063834868731471792

`A230025(A038722(n+1))/A065941(∑[n])`
-/

namespace A218907.P1063834868731471792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230025 (A038722 (n + 1)).toNat : ℚ) / (A065941 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A218907.P1063834868731471792

/-! ## A218907.P12890460191860250490

`char[A004450(n)]*A230025(A038722(n+1))`
-/

namespace A218907.P12890460191860250490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A230025 (A038722 (n + 1)).toNat

end

end A218907.P12890460191860250490

/-! ## A218907.P625001547942704655

`ceil(1/A000041(n))*A230025(A038722(n+1))`
-/

namespace A218907.P625001547942704655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A230025 (A038722 (n + 1)).toNat

end

end A218907.P625001547942704655

/-! ## A218907.P4642354231734896100

`A014963(4*n+6)*A230025(A038722(n+1))`
-/

namespace A218907.P4642354231734896100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A230025 (A038722 (n + 1)).toNat

end

end A218907.P4642354231734896100

/-! ## A218907.P1764884911437659498

`A230025(A038722(n+1))+val(A000040(n+3), 2)`
-/

namespace A218907.P1764884911437659498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230025 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 3)).toNat 2 : ℤ)

end

end A218907.P1764884911437659498

/-! ## A218907.P13938420383498667619

`A230025(A038722(n+1))^and(1, A000040(n+1))`
-/

namespace A218907.P13938420383498667619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230025 (A038722 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A218907.P13938420383498667619

/-!
# A218909: Number of conjugacy classes of abelian subgroups of the symmetric group.

The programs for A218909, there is no canonical definition to state claims against.
-/

/-! ## A218909.P792656115649955195

`A000196(or(n², A152450(n)))`
-/

namespace A218909.P792656115649955195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (n ^ 2 : ℤ) (A152450 n)).toNat

end

end A218909.P792656115649955195

/-! ## A218909.P1127759315826346469

`A102451(3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A218909.P1127759315826346469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A102451 (3 * a (n - 2)).toNat

end

end A218909.P1127759315826346469

/-!
# A218913: Number of distinct orders of subgroups of the symmetric group.

The programs for A218913, there is no canonical definition to state claims against.
-/

/-! ## A218913.P7274295874480036707

`A027423(n)-A218915(n)`
-/

namespace A218913.P7274295874480036707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A218915 n

end

end A218913.P7274295874480036707

/-! ## A218913.P468551104717044237

`A153823(n)+1-A218915(n)`
-/

namespace A218913.P468551104717044237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + (1 - A218915 n)

end

end A218913.P468551104717044237

/-! ## A218913.P14824694119096033560

`2*n!/A125721(n)-A218915(n)`
-/

namespace A218913.P14824694119096033560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℚ) / (A125721 n : ℚ) - (A218915 n : ℚ)

end

end A218913.P14824694119096033560

/-! ## A218913.P14879901718677449287

`floor(A337106(n)+atan(n))+1-A218915(n)`
-/

namespace A218913.P14879901718677449287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337106 n : ℝ) + Real.arctan (n : ℝ)⌋ + 1 - A218915 n

end

end A218913.P14879901718677449287

/-! ## A218913.P1584088211149060021

`A015906(A153823(n))-A218915(n)`
-/

namespace A218913.P1584088211149060021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A153823 n).toNat - A218915 n

end

end A218913.P1584088211149060021

/-!
# A218914: Number of distinct orders of subgroups of the alternating group.

The programs for A218914, there is no canonical definition to state claims against.
-/

/-! ## A218914.P10553887107291620530

`A130048(A294811(n+1))`
-/

namespace A218914.P10553887107291620530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (A294811 (n + 1)).toNat

end

end A218914.P10553887107291620530

/-! ## A218914.P7867954041708728430

`A257212(A072863(n))-A319951(n)`
-/

namespace A218914.P7867954041708728430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A072863 n).toNat - A319951 n

end

end A218914.P7867954041708728430

/-! ## A218914.P10784876502886481340

`A117332(A014214(n))-A135549(2*n+1)`
-/

namespace A218914.P10784876502886481340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A014214 n).toNat - A135549 (2 * n + 1)

end

end A218914.P10784876502886481340

/-! ## A218914.P17145125065649752801

`A117332(A094993(n))-A135549(2*n+1)`
-/

namespace A218914.P17145125065649752801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A094993 n).toNat - A135549 (2 * n + 1)

end

end A218914.P17145125065649752801

/-! ## A218914.P1922855767739552643

`A117332(A014214(n))-A357645(A357183(n))`
-/

namespace A218914.P1922855767739552643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A014214 n).toNat - A357645 (A357183 n).toNat

end

end A218914.P1922855767739552643

/-!
# A218915: Number of missing subgroup orders of the symmetric group, that is, i divides Factorial(n) but the symmetric group on n points does not have a subgroup of order i.

The programs for A218915, there is no canonical definition to state claims against.
-/

/-! ## A218915.P8505148665571657025

`A027423(n)-A218913(n)`
-/

namespace A218915.P8505148665571657025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A218913 n

end

end A218915.P8505148665571657025

/-! ## A218915.P10541226490029770444

`A153823(n)+1-A218913(n)`
-/

namespace A218915.P10541226490029770444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + (1 - A218913 n)

end

end A218915.P10541226490029770444

/-! ## A218915.P16474450528939845454

`2*n!/A125721(n)-A218913(n)`
-/

namespace A218915.P16474450528939845454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℚ) / (A125721 n : ℚ) - (A218913 n : ℚ)

end

end A218915.P16474450528939845454

/-! ## A218915.P9085679985069590355

`floor(A337106(n)+atan(n))+1-A218913(n)`
-/

namespace A218915.P9085679985069590355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337106 n : ℝ) + Real.arctan (n : ℝ)⌋ + 1 - A218913 n

end

end A218915.P9085679985069590355

/-! ## A218915.P4872149981358102726

`A015906(A153823(n))-A218913(n)`
-/

namespace A218915.P4872149981358102726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A153823 n).toNat - A218913 n

end

end A218915.P4872149981358102726

/-!
# A218916: Number of missing subgroup orders of the alternating group, that is, i divides the order of the alternating group but the alternating group does not have a subgroup of order i.

The programs for A218916, there is no canonical definition to state claims against.
-/

/-! ## A218916.P4784452725794003989

`A338730(A308994(∑[n]))`
-/

namespace A218916.P4784452725794003989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338730 (A308994 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218916.P4784452725794003989

/-! ## A218916.P8953066347519296882

`A208243(A166298(n)+1)`
-/

namespace A218916.P8953066347519296882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208243 (A166298 n + 1).toNat

end

end A218916.P8953066347519296882

/-! ## A218916.P17912414929540840000

`∑[A063993(A305122(n)²)]`
-/

namespace A218916.P17912414929540840000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 (A305122 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218916.P17912414929540840000

/-! ## A218916.P15678384380396167290

`∑[A365312(2*n)%A283314(n)]`
-/

namespace A218916.P15678384380396167290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365312 (2 * n)) (A283314 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218916.P15678384380396167290

/-! ## A218916.P6219427919570102084

`A087803((n+1)²/∏{p}[n+1, #])%A003007(n+1)`
-/

namespace A218916.P6219427919570102084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087803 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A003007 (n + 1))

end

end A218916.P6219427919570102084

/-!
# A218917: Sum of the entries of the table of marks of the symmetric group.

The programs for A218917, there is no canonical definition to state claims against.
-/

/-! ## A218917.P5931176521221029007

`A116619(n^(n+1)+1)`
-/

namespace A218917.P5931176521221029007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (n ^ (n + 1) + 1)

end

end A218917.P5931176521221029007

/-!
# A218918: Sum of the entries of the table of marks of the alternating group.

The programs for A218918, there is no canonical definition to state claims against.
-/

/-! ## A218918.P10668431360853316906

`A192646(A116404(n))`
-/

namespace A218918.P10668431360853316906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192646 (A116404 n).toNat

end

end A218918.P10668431360853316906

/-! ## A218918.P14110202282038413160

`A126208(A127361(n)²)`
-/

namespace A218918.P14110202282038413160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (A127361 n ^ 2).toNat

end

end A218918.P14110202282038413160

/-!
# A218919: Sum of the diagonal entries of the table of marks of the symmetric group.

The programs for A218919, there is no canonical definition to state claims against.
-/

/-! ## A218919.P12729822084473485243

`A287870(∑[2^n]+∏[gcd(2, n)]-1)`
-/

namespace A218919.P12729822084473485243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)).toNat

end

end A218919.P12729822084473485243

/-! ## A218919.P958031424734181494

`A237269(∑[n]+C(n, ceil(n/2)+2)²²)`
-/

namespace A218919.P958031424734181494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237269 (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat ^ 2) ^ 2)

end

end A218919.P958031424734181494

/-!
# A218920: Sum of the diagonal entries of the table of marks of the alternating group.

The programs for A218920, there is no canonical definition to state claims against.
-/

/-! ## A218920.P14600430907809506717

`A006984(A192945(n)+A080145(n))`
-/

namespace A218920.P14600430907809506717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A192945 n + A080145 n).toNat

end

end A218920.P14600430907809506717

/-! ## A218920.P17363381133347846147

`A064823(A206476(n+1)*A245373(n))`
-/

namespace A218920.P17363381133347846147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064823 (A206476 (n + 1) * A245373 n).toNat

end

end A218920.P17363381133347846147

/-!
# A218921: Number of incidences in the poset of conjugacy classes of subgroups of the symmetric group.

The programs for A218921, there is no canonical definition to state claims against.
-/

/-! ## A218921.P10671211417194350807

`A033865(A148959(n))`
-/

namespace A218921.P10671211417194350807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A148959 n).toNat

end

end A218921.P10671211417194350807

/-! ## A218921.P15422898505989933666

`A335239(A148271(n))+1`
-/

namespace A218921.P15422898505989933666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (A148271 n).toNat + 1

end

end A218921.P15422898505989933666

/-!
# A218922: Number of incidences in the poset of conjugacy classes of subgroups of the alternating group.

The programs for A218922, there is no canonical definition to state claims against.
-/

/-! ## A218922.P1443137549022173510

`A105702(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A218922.P1443137549022173510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A105702 (2 * a (n - 2)).toNat

end

end A218922.P1443137549022173510

/-! ## A218922.P6608132818763511847

`A376635(A148657(n))`
-/

namespace A218922.P6608132818763511847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A148657 n).toNat

end

end A218922.P6608132818763511847

/-! ## A218922.P7026281291448099024

`A328674(A382079(∑[n]))`
-/

namespace A218922.P7026281291448099024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (A382079 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218922.P7026281291448099024

/-!
# A218923: Number of incidences in the subgroup lattice of the symmetric group.

The programs for A218923, there is no canonical definition to state claims against.
-/

/-! ## A218923.P11683370167001749217

`A254524(A019059(n+2))`
-/

namespace A218923.P11683370167001749217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A019059 (n + 2)).toNat

end

end A218923.P11683370167001749217

/-! ## A218923.P17766220564383097118

`A020652(n!*A263004(n))`
-/

namespace A218923.P17766220564383097118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 ((Nat.factorial n : ℤ) * A263004 n).toNat

end

end A218923.P17766220564383097118

/-!
# A218924: Number of incidences in the subgroup lattice of the alternating group.

The programs for A218924, there is no canonical definition to state claims against.
-/

/-! ## A218924.P7065603910308093579

`A162217(A180000(n)*A279570(n))`
-/

namespace A218924.P7065603910308093579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162217 (A180000 n * A279570 n).toNat

end

end A218924.P7065603910308093579

/-!
# A218925: Number of edges in the Hasse diagram of the poset of conjugacy classes of subgroups of the symmetric group.

The programs for A218925, there is no canonical definition to state claims against.
-/

/-! ## A218925.P11321744642590099413

`A335134(A049939(n+1))`
-/

namespace A218925.P11321744642590099413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (A049939 (n + 1)).toNat

end

end A218925.P11321744642590099413

/-! ## A218925.P3516463558451696188

`A007305(A335626(n)-A295073(n))`
-/

namespace A218925.P3516463558451696188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A335626 n - A295073 n).toNat

end

end A218925.P3516463558451696188

/-! ## A218925.P6568634233552607711

`A332772(A006882(n))-A352865(n)`
-/

namespace A218925.P6568634233552607711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332772 (A006882 n).toNat - A352865 n

end

end A218925.P6568634233552607711

/-!
# A218927: Number of edges in the Hasse diagram of the subgroup lattice of the symmetric group.

The programs for A218927, there is no canonical definition to state claims against.
-/

/-! ## A218927.P6514333968693572575

`∑[A279645(A145158(n))]`
-/

namespace A218927.P6514333968693572575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A145158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218927.P6514333968693572575

/-! ## A218927.P9247561847510048413

`A032615(A262928(∑[10*n]))`
-/

namespace A218927.P9247561847510048413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A262928 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218927.P9247561847510048413

/-!
# A218934: Number of abelian conjugacy classes of subgroups of the alternating group.

The programs for A218934, there is no canonical definition to state claims against.
-/

/-! ## A218934.P17952855384207111714

`A290137(lt[A290136(n+1), A094435(2*(n+1))])`
-/

namespace A218934.P17952855384207111714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290137 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A218934.P17952855384207111714

/-!
# A218935: Number of cyclic conjugacy classes of subgroups of the alternating group.

The programs for A218935, there is no canonical definition to state claims against.
-/

/-! ## A218935.P4260185684496818268

`or(char[∑{digits}[n, n*#]], A046682(n))`
-/

namespace A218935.P4260185684496818268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => n * x).sum

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A046682 n)

end

end A218935.P4260185684496818268

/-! ## A218935.P16483247558120426193

`or(char[∑{digits}[n, n*#]], A180652(n))`
-/

namespace A218935.P16483247558120426193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => n * x).sum

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180652 n)

end

end A218935.P16483247558120426193

/-! ## A218935.P15398428762928012403

`A025770(A302488(n))`
-/

namespace A218935.P15398428762928012403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A302488 n).toNat

end

end A218935.P15398428762928012403

/-! ## A218935.P16568659002291139905

`A328369(A265254(n))`
-/

namespace A218935.P16568659002291139905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A265254 n).toNat

end

end A218935.P16568659002291139905

/-! ## A218935.P2631894283768928580

`A328369(A303944(n))`
-/

namespace A218935.P2631894283768928580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A303944 n).toNat

end

end A218935.P2631894283768928580

/-!
# A218936: Number of nilpotent conjugacy classes of subgroups of the alternating group.

The programs for A218936, there is no canonical definition to state claims against.
-/

/-! ## A218936.P12381294976368497417

`A120562(A120588(n+1)-A209349(3*n+4))`
-/

namespace A218936.P12381294976368497417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A120588 (n + 1) - A209349 (3 * n + 4)).toNat

end

end A218936.P12381294976368497417

/-! ## A218936.P3928229552766250330

`A120562(A120304(n)+2-A209349(3*n+4))`
-/

namespace A218936.P3928229552766250330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A120304 n + 2 - A209349 (3 * n + 4)).toNat

end

end A218936.P3928229552766250330

/-! ## A218936.P9075103348094437824

`A120562(A126120(2*n)-A209349(3*n+4))`
-/

namespace A218936.P9075103348094437824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A126120 (2 * n) - A209349 (3 * n + 4)).toNat

end

end A218936.P9075103348094437824

/-! ## A218936.P7783986061666829632

`A120562(abs(A090192(2*n+1))-A209349(3*n+4))`
-/

namespace A218936.P7783986061666829632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (|A090192 (2 * n + 1)| - A209349 (3 * n + 4)).toNat

end

end A218936.P7783986061666829632

/-! ## A218936.P5097274756971250102

`A210481(A000682(n+1)+2)`
-/

namespace A218936.P5097274756971250102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210481 (A000682 (n + 1) + 2).toNat

end

end A218936.P5097274756971250102

/-!
# A218938: Number of supersolvable conjugacy classes of subgroups of the alternating group.

The programs for A218938, there is no canonical definition to state claims against.
-/

/-! ## A218938.P8558149007662805286

`A319289(A263779(n)+A063422(n))`
-/

namespace A218938.P8558149007662805286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 (A263779 n + A063422 n).toNat

end

end A218938.P8558149007662805286

/-! ## A218938.P12791883754638355251

`A052364(lcm(A001316(n), A154603(n)))`
-/

namespace A218938.P12791883754638355251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052364 (Int.lcm (A001316 n) (A154603 n))

end

end A218938.P12791883754638355251

/-! ## A218938.P5405621025013894851

`A135662(C(A000430(n+1), A008619(n)))`
-/

namespace A218938.P5405621025013894851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (Nat.choose (A000430 (n + 1)).toNat (A008619 n).toNat)

end

end A218938.P5405621025013894851

/-! ## A218938.P8586947624525851921

`A008619(lcm(A000196(n), A004067(n+7)))`
-/

namespace A218938.P8586947624525851921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lcm (A000196 n) (A004067 (n + 7)))

end

end A218938.P8586947624525851921

/-! ## A218938.P16087275290788191426

`A008619(A004067(n+7)*A119963(n+4))`
-/

namespace A218938.P16087275290788191426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004067 (n + 7) * A119963 (n + 4)).toNat

end

end A218938.P16087275290788191426

/-!
# A218939: Total number of distinct nilpotent subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218939, there is no canonical definition to state claims against.
-/

/-! ## A218939.P5318948623580520413

`A093414(A079571(n))+A093387(n+1)`
-/

namespace A218939.P5318948623580520413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093414 (A079571 n).toNat + A093387 (n + 1)

end

end A218939.P5318948623580520413

/-! ## A218939.P15615299035084288643

`A352240(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A218939.P15615299035084288643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A352240 (a (n - 1)).toNat

end

end A218939.P15615299035084288643

/-!
# A218940: Total number of distinct solvable subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218940, there is no canonical definition to state claims against.
-/

/-! ## A218940.P1030574032168512899

`A005432(n)-A342854(A342854(n+1))`
-/

namespace A218940.P1030574032168512899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005432 n - A342854 (A342854 (n + 1)).toNat

end

end A218940.P1030574032168512899

/-! ## A218940.P16329507934180853394

`A272574(comp[or(6, n)]!)`
-/

namespace A218940.P16329507934180853394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272574 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A218940.P16329507934180853394

/-!
# A218941: Total number of distinct supersolvable subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218941, there is no canonical definition to state claims against.
-/

/-! ## A218941.P6015430028610500615

`ceil(A142153(n+1)/π)`
-/

namespace A218941.P6015430028610500615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A142153 (n + 1) : ℝ) / Real.pi⌉

end

end A218941.P6015430028610500615

/-! ## A218941.P12223358888981310760

`A185283(∑[ceil(n/3)]^n)`
-/

namespace A218941.P12223358888981310760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n).toNat

end

end A218941.P12223358888981310760

/-!
# A218942: Total number of distinct abelian subgroups of the alternating group, counting conjugates as distinct.

The programs for A218942, there is no canonical definition to state claims against.
-/

/-! ## A218942.P14066425689413781545

`A008620(A032089(n+1)*A148251(n))`
-/

namespace A218942.P14066425689413781545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A032089 (n + 1) * A148251 n).toNat

end

end A218942.P14066425689413781545

/-! ## A218942.P4586174277070742861

`A008616(∑[(-1)^n+n*a(n-1)])` with `a(0)=2, a(1)=2`
-/

namespace A218942.P4586174277070742861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  (-1) ^ n + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218942.P4586174277070742861

/-! ## A218942.P9627217308610859865

`A244780(a(n-1)+a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A218942.P9627217308610859865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A244780 (a (n - 1) + a (n - 2) + 1).toNat

end

end A218942.P9627217308610859865

/-!
# A218943: Total number of distinct nilpotent subgroups of the alternating group, counting conjugates as distinct.

The programs for A218943, there is no canonical definition to state claims against.
-/

/-! ## A218943.P3766193030462613796

`A239456(A000041(2*n+1)+floor(n/2)+4)`
-/

namespace A218943.P3766193030462613796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239456 (A000041 (2 * n + 1) + (⌊(n : ℚ) / 2⌋ + 4)).toNat

end

end A218943.P3766193030462613796

/-! ## A218943.P12073149847865438601

`A337680(A000108(n))+A089423(n)`
-/

namespace A218943.P12073149847865438601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337680 (A000108 n).toNat + A089423 n

end

end A218943.P12073149847865438601

/-!
# A218944: Total number of distinct solvable subgroups of the alternating group, counting conjugates as distinct.

The programs for A218944, there is no canonical definition to state claims against.
-/

/-! ## A218944.P8530345026364272321

`A065361(A341471(n))`
-/

namespace A218944.P8530345026364272321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A341471 n).toNat

end

end A218944.P8530345026364272321

/-! ## A218944.P1920756913669974722

`A115065(A062460(n+1))`
-/

namespace A218944.P1920756913669974722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115065 (A062460 (n + 1)).toNat

end

end A218944.P1920756913669974722

/-!
# A218945: Total number of supersolvable subgroups of the alternating group, counting conjugates as distinct.

The programs for A218945, there is no canonical definition to state claims against.
-/

/-! ## A218945.P3087005690889982422

`A081832(A004213(n))`
-/

namespace A218945.P3087005690889982422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (A004213 n).toNat

end

end A218945.P3087005690889982422

/-! ## A218945.P7423108351280064865

`A194990(A215708(n))`
-/

namespace A218945.P7423108351280064865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A215708 n).toNat

end

end A218945.P7423108351280064865

/-!
# A218952: Number of conjugacy classes of connected nilpotent subgroups of the alternating group.

The programs for A218952, there is no canonical definition to state claims against.
-/

/-! ## A218952.P5634764142985957295

`(n-2)^A122879(3^n)`
-/

namespace A218952.P5634764142985957295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A122879 (3 ^ n) : ℤ)

end

end A218952.P5634764142985957295

/-! ## A218952.P9570596206092881543

`(n-2)^A086073((n+1)²²)`
-/

namespace A218952.P9570596206092881543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A086073 (((n + 1) ^ 2) ^ 2) : ℤ)

end

end A218952.P9570596206092881543

/-! ## A218952.P3905307086709120396

`(n-2)^A044937((n+2)²²)`
-/

namespace A218952.P3905307086709120396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A044937 (((n + 2) ^ 2) ^ 2) : ℤ)

end

end A218952.P3905307086709120396

/-! ## A218952.P3664659293893644790

`(n-2)^A352727((n+2)²²)`
-/

namespace A218952.P3664659293893644790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A352727 (((n + 2) ^ 2) ^ 2) : ℤ)

end

end A218952.P3664659293893644790

/-! ## A218952.P3725147156996184097

`(n-2)^(A252904(∑[n+2]+4)%3)`
-/

namespace A218952.P3725147156996184097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (Int.tmod (A252904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)) 3 : ℤ)

end

end A218952.P3725147156996184097

/-!
# A218953: Number of conjugacy classes of connected solvable subgroups of the alternating group.

The programs for A218953, there is no canonical definition to state claims against.
-/

/-! ## A218953.P4914651453519136121

`A298731(A298723(n+1)-A298810(n))`
-/

namespace A218953.P4914651453519136121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 (A298723 (n + 1) - A298810 n).toNat

end

end A218953.P4914651453519136121

/-! ## A218953.P12492341345280794925

`A298731(A298723(n+1)-A025487(n+1))`
-/

namespace A218953.P12492341345280794925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 (A298723 (n + 1) - A025487 (n + 1)).toNat

end

end A218953.P12492341345280794925

/-!
# A218954: Number of conjugacy classes of connected supersolvable subgroups of the alternating group.

The programs for A218954, there is no canonical definition to state claims against.
-/

/-! ## A218954.P168119651175832922

`A352685(record[A352687(n+1)])`
-/

namespace A218954.P168119651175832922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352685 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218954.P168119651175832922

/-! ## A218954.P12901756760756152989

`A000700(n)*A054073(A110498(n+1))`
-/

namespace A218954.P12901756760756152989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A054073 (A110498 (n + 1)).toNat

end

end A218954.P12901756760756152989

/-!
# A218955: Total number of maximal solvable subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218955, there is no canonical definition to state claims against.
-/

/-! ## A218955.P2286387600978147525

`A218960(comp[or(8, n)])`
-/

namespace A218955.P2286387600978147525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218960 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A218955.P2286387600978147525

/-! ## A218955.P16373562174062773186

`A218960(∏{p}[n^7, #])`
-/

namespace A218955.P16373562174062773186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218960 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A218955.P16373562174062773186

/-! ## A218955.P1313616578074504799

`A218960(n*floor(n/4))`
-/

namespace A218955.P1313616578074504799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218960 ((n : ℤ) * ⌊(n : ℚ) / 4⌋).toNat

end

end A218955.P1313616578074504799

/-! ## A218955.P566251493993700276

`A140734(A120939(n+1))`
-/

namespace A218955.P566251493993700276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140734 (A120939 (n + 1)).toNat

end

end A218955.P566251493993700276

/-!
# A218956: Total number of maximal supersolvable subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218956, there is no canonical definition to state claims against.
-/

/-! ## A218956.P5621828515602932100

`A181094(∏{p}[∑[C(n, 3)], #]+1)`
-/

namespace A218956.P5621828515602932100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (∏ p ∈ Nat.primeFactors (f1 n), p + 1)

end

end A218956.P5621828515602932100

/-! ## A218956.P7836442076753785133

`xor(8, A147381(3*n+5)+8)`
-/

namespace A218956.P7836442076753785133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 (A147381 (3 * n + 5) + 8)

end

end A218956.P7836442076753785133

/-! ## A218956.P13797384560742884668

`A090863(A069728(n))`
-/

namespace A218956.P13797384560742884668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090863 (A069728 n).toNat

end

end A218956.P13797384560742884668

/-!
# A218957: Total number of maximal abelian subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218957, there is no canonical definition to state claims against.
-/

/-! ## A218957.P17106530643553740923

`A364818(A000246(n))+A000246(n)`
-/

namespace A218957.P17106530643553740923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364818 (A000246 n).toNat + A000246 n

end

end A218957.P17106530643553740923

/-! ## A218957.P15903403189973976384

`A324288(A322620(n)+A246818(n))`
-/

namespace A218957.P15903403189973976384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (A322620 n + A246818 n).toNat

end

end A218957.P15903403189973976384

/-! ## A218957.P9009820835389969124

`A089610(A158094(n+1)+A000217(n))`
-/

namespace A218957.P9009820835389969124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A158094 (n + 1) + A000217 n).toNat

end

end A218957.P9009820835389969124

/-!
# A218958: Total number of maximal cyclic subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218958, there is no canonical definition to state claims against.
-/

/-! ## A218958.P4622300802259215397

`A070804(or(3, A136281(n)))`
-/

namespace A218958.P4622300802259215397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (Int.lor 3 (A136281 n)).toNat

end

end A218958.P4622300802259215397

/-! ## A218958.P9845561070473835827

`A031261(A110729(n))*A106337(n)`
-/

namespace A218958.P9845561070473835827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031261 (A110729 n).toNat * A106337 n

end

end A218958.P9845561070473835827

/-! ## A218958.P1559526383865395394

`A106337(n)*A257567(A042313(n))`
-/

namespace A218958.P1559526383865395394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106337 n * A257567 (A042313 n).toNat

end

end A218958.P1559526383865395394

/-!
# A218959: Total number of maximal nilpotent subgroups of the symmetric group, counting conjugates as distinct.

The programs for A218959, there is no canonical definition to state claims against.
-/

/-! ## A218959.P18236545155611132364

`A080616(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A218959.P18236545155611132364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A080616 (a (n - 2)).toNat + a (n - 1)

end

end A218959.P18236545155611132364

/-! ## A218959.P7279909833041674512

`A090572(a(n-2))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A218959.P7279909833041674512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A090572 (a (n - 2)).toNat + a (n - 1)

end

end A218959.P7279909833041674512

/-! ## A218959.P1116828203840286933

`A319320(∑[2^(n-1)-a(n-1)])` with `a(0)=4, a(1)=2`
-/

namespace A218959.P1116828203840286933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319320 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218959.P1116828203840286933

/-!
# A218961: Total number of maximal supersolvable subgroups of the alternating group, counting conjugates as distinct.

The programs for A218961, there is no canonical definition to state claims against.
-/

/-! ## A218961.P16025751824771035081

`A008679(3*A336174(n))`
-/

namespace A218961.P16025751824771035081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (3 * A336174 n).toNat

end

end A218961.P16025751824771035081

/-! ## A218961.P13339746782344127017

`A093411(A105321(n)+A000142(n))`
-/

namespace A218961.P13339746782344127017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A105321 n + A000142 n).toNat

end

end A218961.P13339746782344127017

/-! ## A218961.P14024995913024833235

`A338748(n)-A338714(A338729(n))`
-/

namespace A218961.P14024995913024833235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338748 n - A338714 (A338729 n).toNat

end

end A218961.P14024995913024833235

/-! ## A218961.P11082558887978605222

`A038722(A179663(n*A002265(n)))`
-/

namespace A218961.P11082558887978605222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A179663 ((n : ℤ) * A002265 n).toNat).toNat

end

end A218961.P11082558887978605222

/-!
# A218962: Total number of maximal abelian subgroups of the alternating group, counting conjugates as distinct.

The programs for A218962, there is no canonical definition to state claims against.
-/

/-! ## A218962.P2832148434771103765

`filter[A392405(n+1), A166253(#)]`
-/

namespace A218962.P2832148434771103765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166253 (f1 j).toNat = 1) n)

end

end A218962.P2832148434771103765

/-! ## A218962.P540604761861171323

`filter[A392405(n+1), A237048(#)]`
-/

namespace A218962.P540604761861171323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A237048 (f1 j).toNat = 1) n)

end

end A218962.P540604761861171323

/-! ## A218962.P8909662053876909165

`filter[A392405(n+1), A246500(#)]`
-/

namespace A218962.P8909662053876909165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246500 (f1 j).toNat = 1) n)

end

end A218962.P8909662053876909165

/-! ## A218962.P4645577173479784388

`filter[A392405(n+1), A284957(#)]`
-/

namespace A218962.P4645577173479784388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284957 (f1 j).toNat = 1) n)

end

end A218962.P4645577173479784388

/-!
# A218963: Total number of maximal cyclic subgroups of the alternating group, counting conjugates as distinct.

The programs for A218963, there is no canonical definition to state claims against.
-/

/-! ## A218963.P5568045154232743379

`A173068(floor(2^(n-1))+1)+1`
-/

namespace A218963.P5568045154232743379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat + 1

end

end A218963.P5568045154232743379

/-! ## A218963.P7320139878630981903

`A290649(A011919(n))`
-/

namespace A218963.P7320139878630981903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290649 (A011919 n).toNat

end

end A218963.P7320139878630981903

/-! ## A218963.P6569128233141593420

`A104177(A242903(n))`
-/

namespace A218963.P6569128233141593420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104177 (A242903 n).toNat

end

end A218963.P6569128233141593420

/-!
# A218964: Total number of maximal nilpotent subgroups of the alternating group, counting conjugates as distinct.

The programs for A218964, there is no canonical definition to state claims against.
-/

/-! ## A218964.P17880999729499404841

`C(A131023(n+1), A306433(A131023(n+1)))`
-/

namespace A218964.P17880999729499404841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131023 (n + 1)).toNat (A306433 (A131023 (n + 1)).toNat).toNat

end

end A218964.P17880999729499404841

/-!
# A218965: Number of conjugacy classes of subgroups of the symmetric group which are not subgroups of the alternating group.

The programs for A218965, there is no canonical definition to state claims against.
-/

/-! ## A218965.P16234373062649117603

`A000638(n)-A218966(n)`
-/

namespace A218965.P16234373062649117603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000638 n - A218966 n

end

end A218965.P16234373062649117603

/-! ## A218965.P9198615371496840449

`∑[A000637(n)]-A218966(n)`
-/

namespace A218965.P9198615371496840449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218966 n

end

end A218965.P9198615371496840449

/-!
# A218966: Number of conjugacy classes of subgroups of the symmetric which are also subgroups of the alternating group.

The programs for A218966, there is no canonical definition to state claims against.
-/

/-! ## A218966.P14310587011093979467

`A000638(n)-A218965(n)`
-/

namespace A218966.P14310587011093979467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000638 n - A218965 n

end

end A218966.P14310587011093979467

/-! ## A218966.P17294495923964443588

`∑[A000637(n)]-A218965(n)`
-/

namespace A218966.P17294495923964443588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A218965 n

end

end A218966.P17294495923964443588

/-! ## A218966.P4219758234208225345

`A160714(round(sqrt(A000325(n))))`
-/

namespace A218966.P4219758234208225345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160714 (SequenceMachineLib.roundAway (Real.sqrt (A000325 n : ℝ))).toNat

end

end A218966.P4219758234208225345

/-!
# A218967: Number of connected conjugacy classes of subgroups of the alternating group.

The programs for A218967, there is no canonical definition to state claims against.
-/

/-! ## A218967.P9494054133483518932

`A116653(n^A110656(n))`
-/

namespace A218967.P9494054133483518932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A218967.P9494054133483518932

/-! ## A218967.P1857240701154484426

`A116653(n^A115338(n))`
-/

namespace A218967.P1857240701154484426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115338 n : ℤ))).toNat

end

end A218967.P1857240701154484426

/-! ## A218967.P17212497053264738626

`A116653(C(n, A110656(n)))`
-/

namespace A218967.P17212497053264738626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (Nat.choose n (A110656 n).toNat)

end

end A218967.P17212497053264738626

/-! ## A218967.P7650408394473260072

`A116653(C(n, A115338(n)))`
-/

namespace A218967.P7650408394473260072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116653 (Nat.choose n (A115338 n).toNat)

end

end A218967.P7650408394473260072

/-! ## A218967.P13366884290154219416

`∏{e}[A000351(n), A116653(#)]`
-/

namespace A218967.P13366884290154219416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A116653 (Nat.factorization (f1 n).natAbs p)

end

end A218967.P13366884290154219416

/-!
# A218969: Number of atomic species corresponding to conjugacy classes of subgroups of the symmetric group which are not subgroups of the alternating group.

The programs for A218969, there is no canonical definition to state claims against.
-/

/-! ## A218969.P14688336264132908186

`A004736(A276534(n))*A276505(n+1)`
-/

namespace A218969.P14688336264132908186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A276534 n).toNat * A276505 (n + 1)

end

end A218969.P14688336264132908186

/-! ## A218969.P12692985871309718434

`A299278(A319719(n+2))%A349052(n)`
-/

namespace A218969.P12692985871309718434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299278 (A319719 (n + 2)).toNat) (A349052 n)

end

end A218969.P12692985871309718434

/-!
# A218970: Number of connected cyclic conjugacy classes of subgroups of the symmetric group.

The programs for A218970, there is no canonical definition to state claims against.
-/

/-! ## A218970.P13345836239503110697

`A304716(round(acot(n)+n))-1`
-/

namespace A218970.P13345836239503110697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A218970.P13345836239503110697

/-! ## A218970.P15475990142680076138

`A304716(floor(sqrt(n²+4)))-1`
-/

namespace A218970.P15475990142680076138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (Nat.sqrt (n ^ 2 + 4)) - 1

end

end A218970.P15475990142680076138

/-! ## A218970.P15094534042324460365

`A340998(A000065(n))+A018783(n)`
-/

namespace A218970.P15094534042324460365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A000065 n).toNat + 140) + A018783 n

end

end A218970.P15094534042324460365

/-! ## A218970.P10021337787857045265

`A341027(A047967(n))+A018783(n)`
-/

namespace A218970.P10021337787857045265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A047967 n).toNat + 220) + A018783 n

end

end A218970.P10021337787857045265

/-! ## A218970.P16567892423294720648

`A018783(n)+A010054(A284405(n))`
-/

namespace A218970.P16567892423294720648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A010054 (A284405 n).toNat

end

end A218970.P16567892423294720648

/-!
# A218972: Number of connected nilpotent conjugacy classes of subgroups of the symmetric group.

The programs for A218972, there is no canonical definition to state claims against.
-/

/-! ## A218972.P6456970733280795300

`A360285(A301596(n))`
-/

namespace A218972.P6456970733280795300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360285 (A301596 n).toNat

end

end A218972.P6456970733280795300

/-! ## A218972.P13776127568022217570

`A133380(A222048(n)+1)`
-/

namespace A218972.P13776127568022217570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133380 (A222048 n + 1).toNat

end

end A218972.P13776127568022217570

/-! ## A218972.P4123157975607358847

`A128221(A275389(n+1))`
-/

namespace A218972.P4123157975607358847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (A275389 (n + 1)).toNat

end

end A218972.P4123157975607358847

/-! ## A218972.P8961327270361696590

`A360285(A115212(n+1))`
-/

namespace A218972.P8961327270361696590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360285 (A115212 (n + 1)).toNat

end

end A218972.P8961327270361696590

/-! ## A218972.P5660998813130860135

`A133380(A358392(n+1))`
-/

namespace A218972.P5660998813130860135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133380 (A358392 (n + 1)).toNat

end

end A218972.P5660998813130860135

/-!
# A218975: Number of connected cyclic conjugacy classes of subgroups of the alternating group.

The programs for A218975, there is no canonical definition to state claims against.
-/

/-! ## A218975.P13508984601678820571

`A307719(n)+A205988(n)`
-/

namespace A218975.P13508984601678820571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 n + A205988 n

end

end A218975.P13508984601678820571

/-! ## A218975.P9320292803232625094

`A348892(n)+A307719(n)`
-/

namespace A218975.P9320292803232625094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348892 n + A307719 n

end

end A218975.P9320292803232625094

/-! ## A218975.P18078738706828619818

`A360068(n)+A356718(n)`
-/

namespace A218975.P18078738706828619818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 n + A356718 n

end

end A218975.P18078738706828619818

/-! ## A218975.P4187691770989667839

`A307719(n)+char[A191661(n+2)]`
-/

namespace A218975.P4187691770989667839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191661 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218975.P4187691770989667839

/-! ## A218975.P3953009069174740845

`A307719(n)+A003849(A317293(n))`
-/

namespace A218975.P3953009069174740845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 n + A003849 (A317293 n).toNat

end

end A218975.P3953009069174740845

/-!
# A218977: Primes of the form 2n^2 - 181 for n >= 0.

The programs for A218977, there is no canonical definition to state claims against.
-/

/-! ## A218977.P11116983733069471773

`A001105(n)-A075004(A138962(3*n+5))`
-/

namespace A218977.P11116983733069471773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A075004 (A138962 (3 * n + 5)).toNat

end

end A218977.P11116983733069471773

/-! ## A218977.P1640960851249408401

`A001105(n)-A008379(A014963(A007900(n)))`
-/

namespace A218977.P1640960851249408401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A008379 (A014963 (A007900 n).toNat).toNat

end

end A218977.P1640960851249408401

/-! ## A218977.P15488523831687115102

`A001105(n)-A134672(A134702(n+2))`
-/

namespace A218977.P15488523831687115102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A134672 (A134702 (n + 2)).toNat

end

end A218977.P15488523831687115102

/-!
# A218979: Numbers n such that some sum of n consecutive positive cubes is a square.

The programs for A218979, there is no canonical definition to state claims against.
-/

/-! ## A218979.P14374169194217356887

`lt[A035544(n), A006530(A357644(n))]`
-/

namespace A218979.P14374169194217356887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A357644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218979.P14374169194217356887

/-! ## A218979.P5458652814631169811

`lt[A271086(n)+1, A271083(A175228(n+1))]`
-/

namespace A218979.P5458652814631169811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271086 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271083 (A175228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218979.P5458652814631169811

/-! ## A218979.P3370400795183547829

`lt[A356172(A356192(n+3)), A356167(n+2)]`
-/

namespace A218979.P3370400795183547829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356172 (A356192 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356167 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218979.P3370400795183547829

/-! ## A218979.P8784687000542071703

`lt[A001057(3*n+1), A000010(A175228(n+1))]`
-/

namespace A218979.P8784687000542071703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A175228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218979.P8784687000542071703

/-! ## A218979.P4390209936734958480

`A121538(n+1)+A023532(A326151(n+3))`
-/

namespace A218979.P4390209936734958480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121538 (n + 1) + A023532 (A326151 (n + 3)).toNat

end

end A218979.P4390209936734958480

/-!
# A218980: Integers not in A218852.

The programs for A218980, there is no canonical definition to state claims against.
-/

/-! ## A218980.P12642055899838822944

`eq[char[A218852(n+1)], A151933(n)]`
-/

namespace A218980.P12642055899838822944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A218980.P12642055899838822944

/-! ## A218980.P12808490458580937487

`eq[char[A218852(n+1)], A151622(n)]`
-/

namespace A218980.P12808490458580937487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218852 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A218980.P12808490458580937487

/-! ## A218980.P14361453447031265630

`eq[A097601(2*n), A277349(n)]`
-/

namespace A218980.P14361453447031265630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218980.P14361453447031265630

/-! ## A218980.P10914342626288395690

`eq[A097601(2*n), A127841(n+1)]`
-/

namespace A218980.P10914342626288395690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218980.P10914342626288395690

/-! ## A218980.P11395396191998987508

`eq[A017887(2*n+1), A127841(n+1)]`
-/

namespace A218980.P11395396191998987508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218980.P11395396191998987508

/-!
# A218981: Numbers n for which sigma(n) = sigma(w) + sigma(x) + sigma(y) + sigma(z), where n = w + x + y + z, with w, x, y, z all positive.

The programs for A218981, there is no canonical definition to state claims against.
-/

/-! ## A218981.P8863540546542173642

`lt[A293981(A381569(n)), A087682(3*n+1)]`
-/

namespace A218981.P8863540546542173642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293981 (A381569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087682 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218981.P8863540546542173642

/-!
# A218982: Power ceiling-floor sequence of sqrt(5).

The programs for A218982, the canonical program `A218982.P5840465678255860575` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218982 has offset 0).

The definition of A218982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218982.P5840465678255860575

`ceil(sqrt(5)*a(n-1))-n%2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218982

/-- `ceil(sqrt(5)*a(n-1))-n%2` -/
def P5840465678255860575.Spec : Prop :=
  ∀ n, P5840465678255860575.a n = A218982 n

theorem P5840465678255860575.correct : P5840465678255860575.Spec := by
  intro n
  simp only [A218982]

end A218982

/-! ## A218982.P464771361826955884

`(-1)^n+ceil(sqrt(5)*a(n-1))-char[2*n]` with `a(0)=3`
-/

namespace A218982.P464771361826955884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (-1) ^ n + (⌈Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌉ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A218982.P464771361826955884

namespace A218982

/-- `(-1)^n+ceil(sqrt(5)*a(n-1))-char[2*n]` -/
def P464771361826955884.Spec : Prop :=
  ∀ n, P464771361826955884.a n = A218982 n

end A218982

/-! ## A218982.P1364539697843753580

`ceil(sqrt(5)*a(n-1))-A000035(n)` with `a(0)=3`
-/

namespace A218982.P1364539697843753580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌉ - A000035 n

end

end A218982.P1364539697843753580

namespace A218982

/-- `ceil(sqrt(5)*a(n-1))-A000035(n)` -/
def P1364539697843753580.Spec : Prop :=
  ∀ n, P1364539697843753580.a n = A218982 n

end A218982

/-! ## A218982.P18248524218101994320

`A022839(a(n-1))-(1-n)%2` with `a(0)=3`
-/

namespace A218982.P18248524218101994320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A022839 (a (n - 1)).toNat - Int.tmod (1 - (n : ℤ)) 2

end

end A218982.P18248524218101994320

namespace A218982

/-- `A022839(a(n-1))-(1-n)%2` -/
def P18248524218101994320.Spec : Prop :=
  ∀ n, P18248524218101994320.a n = A218982 n

end A218982

/-! ## A218982.P4897369143831117068

`A184586(a(n-1))+A040001(n)` with `a(0)=3`
-/

namespace A218982.P4897369143831117068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A184586 (a (n - 1)).toNat + A040001 n

end

end A218982.P4897369143831117068

namespace A218982

/-- `A184586(a(n-1))+A040001(n)` -/
def P4897369143831117068.Spec : Prop :=
  ∀ n, P4897369143831117068.a n = A218982 n

end A218982

/-!
# A218983: Power ceiling sequence of sqrt(5).

The programs for A218983, the canonical program `A218983.P5244798616663754976` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218983 has offset 0).

The definition of A218983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218983.P5244798616663754976

`ceil(sqrt(5)*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218983

/-- `ceil(sqrt(5)*a(n-1))` -/
def P5244798616663754976.Spec : Prop :=
  ∀ n, P5244798616663754976.a n = A218983 n

theorem P5244798616663754976.correct : P5244798616663754976.Spec := by
  intro n
  simp only [A218983]

end A218983

/-! ## A218983.P16528693229566225644

`floor(sqrt(5)*a(n-1))+1` with `a(0)=3`
-/

namespace A218983.P16528693229566225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ)⌋ + 1

end

end A218983.P16528693229566225644

namespace A218983

/-- `floor(sqrt(5)*a(n-1))+1` -/
def P16528693229566225644.Spec : Prop :=
  ∀ n, P16528693229566225644.a n = A218983 n

end A218983

/-! ## A218983.P9931163432433209017

`ceil(a(n-1)/sqrt(1/5))` with `a(0)=3`
-/

namespace A218983.P9931163432433209017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 5 : ℝ)⌉

end

end A218983.P9931163432433209017

namespace A218983

/-- `ceil(a(n-1)/sqrt(1/5))` -/
def P9931163432433209017.Spec : Prop :=
  ∀ n, P9931163432433209017.a n = A218983 n

end A218983

/-! ## A218983.P16680601999123737191

`-floor(-sqrt(5)*a(n-1))` with `a(0)=3`
-/

namespace A218983.P16680601999123737191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -⌊-(Real.sqrt (5 : ℝ) * (a (n - 1) : ℝ))⌋

end

end A218983.P16680601999123737191

namespace A218983

/-- `-floor(-sqrt(5)*a(n-1))` -/
def P16680601999123737191.Spec : Prop :=
  ∀ n, P16680601999123737191.a n = A218983 n

end A218983

/-! ## A218983.P13070704803446488496

`floor((ϕ+2)*a(n-1)/ϕ)+1` with `a(0)=3`
-/

namespace A218983.P13070704803446488496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(Real.goldenRatio + 2) * ((a (n - 1) : ℝ) / Real.goldenRatio)⌋ + 1

end

end A218983.P13070704803446488496

namespace A218983

/-- `floor((ϕ+2)*a(n-1)/ϕ)+1` -/
def P13070704803446488496.Spec : Prop :=
  ∀ n, P13070704803446488496.a n = A218983 n

end A218983

/-! ## A218983.P15228855888994444865

`floor((5*a(n-1)²)^(1/2))+1` with `a(0)=3`
-/

namespace A218983.P15228855888994444865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(5 * a (n - 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ + 1

end

end A218983.P15228855888994444865

namespace A218983

/-- `floor((5*a(n-1)²)^(1/2))+1` -/
def P15228855888994444865.Spec : Prop :=
  ∀ n, P15228855888994444865.a n = A218983 n

end A218983

/-!
# A218984: Power floor sequence of 2+sqrt(6).

The programs for A218984, the canonical program `A218984.P15138228941476182601` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218984 has offset 0).

The definition of A218984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218984.P15138228941476182601

`5*a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=17, a(2)=75`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218984

/-- `5*a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P15138228941476182601.Spec : Prop :=
  ∀ n, P15138228941476182601.a n = A218984 n

theorem P15138228941476182601.correct : P15138228941476182601.Spec := by
  intro n
  simp only [A218984]

end A218984

/-! ## A218984.P10891809778295488331

`floor((sqrt(6)+3)*a(n-1))-a(n-1)` with `a(0)=4`
-/

namespace A218984.P10891809778295488331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(Real.sqrt (6 : ℝ) + 3) * (a (n - 1) : ℝ)⌋ - a (n - 1)

end

end A218984.P10891809778295488331

namespace A218984

/-- `floor((sqrt(6)+3)*a(n-1))-a(n-1)` -/
def P10891809778295488331.Spec : Prop :=
  ∀ n, P10891809778295488331.a n = A218984 n

end A218984

/-! ## A218984.P16821155990315486332

`∑[A164549(n+1)/2]+1`
-/

namespace A218984.P16821155990315486332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164549 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218984.P16821155990315486332

namespace A218984

/-- `∑[A164549(n+1)/2]+1` -/
def P16821155990315486332.Spec : Prop :=
  ∀ n, P16821155990315486332.a n = (A218984 n : ℚ)

end A218984

/-! ## A218984.P12982411275407355164

`A090017(n+2)-∑[A090017(n)]`
-/

namespace A218984.P12982411275407355164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218984.P12982411275407355164

namespace A218984

/-- `A090017(n+2)-∑[A090017(n)]` -/
def P12982411275407355164.Spec : Prop :=
  ∀ n, P12982411275407355164.a n = A218984 n

end A218984

/-! ## A218984.P1284100250740973111

`Δ[A090017(n+1)]+∑[A084059(n)]`
-/

namespace A218984.P1284100250740973111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A218984.P1284100250740973111

namespace A218984

/-- `Δ[A090017(n+1)]+∑[A084059(n)]` -/
def P1284100250740973111.Spec : Prop :=
  ∀ n, P1284100250740973111.a n = A218984 n

end A218984

/-! ## A218984.P11236984091878649662

`A021001(n+1)-A218985(n)`
-/

namespace A218984.P11236984091878649662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 (n + 1) - A218985 n

end

end A218984.P11236984091878649662

namespace A218984

/-- `A021001(n+1)-A218985(n)` -/
def P11236984091878649662.Spec : Prop :=
  ∀ n, P11236984091878649662.a n = A218984 n

end A218984

/-! ## A218984.P12473491947969453578

`floor(a(n-1)²/a(n-2))+3` with `a(0)=4, a(1)=17`
-/

namespace A218984.P12473491947969453578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 3

end

end A218984.P12473491947969453578

namespace A218984

/-- `floor(a(n-1)²/a(n-2))+3` -/
def P12473491947969453578.Spec : Prop :=
  ∀ n, P12473491947969453578.a n = A218984 n

end A218984

/-!
# A218985: Power ceiling sequence of 2+sqrt(6).

The programs for A218985, the canonical program `A218985.P12317084141022595501` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218985 has offset 0).

The definition of A218985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218985.P12317084141022595501

`5*a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=5, a(1)=23, a(2)=103`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218985

/-- `5*a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P12317084141022595501.Spec : Prop :=
  ∀ n, P12317084141022595501.a n = A218985 n

theorem P12317084141022595501.correct : P12317084141022595501.Spec := by
  intro n
  simp only [A218985]

end A218985

/-! ## A218985.P3831460153421367437

`ceil((sqrt(6)+3)*a(n-1))-a(n-1)` with `a(0)=5`
-/

namespace A218985.P3831460153421367437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈(Real.sqrt (6 : ℝ) + 3) * (a (n - 1) : ℝ)⌉ - a (n - 1)

end

end A218985.P3831460153421367437

namespace A218985

/-- `ceil((sqrt(6)+3)*a(n-1))-a(n-1)` -/
def P3831460153421367437.Spec : Prop :=
  ∀ n, P3831460153421367437.a n = A218985 n

end A218985

/-! ## A218985.P6758213588742747488

`floor(a(n-1)/a(n-2)*a(n-1))-2` with `a(0)=5, a(1)=23`
-/

namespace A218985.P6758213588742747488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 23] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ - 2

end

end A218985.P6758213588742747488

namespace A218985

/-- `floor(a(n-1)/a(n-2)*a(n-1))-2` -/
def P6758213588742747488.Spec : Prop :=
  ∀ n, P6758213588742747488.a n = A218985 n

end A218985

/-! ## A218985.P4737382418925750069

`∑[A090017(n+2)]+1`
-/

namespace A218985.P4737382418925750069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218985.P4737382418925750069

namespace A218985

/-- `∑[A090017(n+2)]+1` -/
def P4737382418925750069.Spec : Prop :=
  ∀ n, P4737382418925750069.a n = A218985 n

end A218985

/-! ## A218985.P9551257200905648705

`A218984(n)+∑[A123347(n)]`
-/

namespace A218985.P9551257200905648705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218984 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218985.P9551257200905648705

namespace A218985

/-- `A218984(n)+∑[A123347(n)]` -/
def P9551257200905648705.Spec : Prop :=
  ∀ n, P9551257200905648705.a n = A218985 n

end A218985

/-! ## A218985.P12385488650731645914

`A164549(n+1)-∑[A084059(n)]`
-/

namespace A218985.P12385488650731645914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218985.P12385488650731645914

namespace A218985

/-- `A164549(n+1)-∑[A084059(n)]` -/
def P12385488650731645914.Spec : Prop :=
  ∀ n, P12385488650731645914.a n = A218985 n

end A218985

/-! ## A218985.P17889560257724009508

`A218984(n)+∑[A026655(2*n)]`
-/

namespace A218985.P17889560257724009508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218984 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218985.P17889560257724009508

namespace A218985

/-- `A218984(n)+∑[A026655(2*n)]` -/
def P17889560257724009508.Spec : Prop :=
  ∀ n, P17889560257724009508.a n = A218985 n

end A218985

/-! ## A218985.P3451046336676765597

`A218984(n)+∑[1/2*A084059(n+1)]`
-/

namespace A218985.P3451046336676765597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A084059 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218984 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218985.P3451046336676765597

namespace A218985

/-- `A218984(n)+∑[1/2*A084059(n+1)]` -/
def P3451046336676765597.Spec : Prop :=
  ∀ n, P3451046336676765597.a n = (A218985 n : ℚ)

end A218985

/-! ## A218985.P11819481316334801511

`∑[A026655(2*n)]+∑[A164549(n+1)/2]+1`
-/

namespace A218985.P11819481316334801511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164549 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A218985.P11819481316334801511

namespace A218985

/-- `∑[A026655(2*n)]+∑[A164549(n+1)/2]+1` -/
def P11819481316334801511.Spec : Prop :=
  ∀ n, P11819481316334801511.a n = (A218985 n : ℚ)

end A218985

/-! ## A218985.P5548781900745923299

`∑[1/2*A084059(n+1)]+∑[A164549(n+1)/2]+1`
-/

namespace A218985.P5548781900745923299
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A084059 (n + 1) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164549 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A218985.P5548781900745923299

namespace A218985

/-- `∑[1/2*A084059(n+1)]+∑[A164549(n+1)/2]+1` -/
def P5548781900745923299.Spec : Prop :=
  ∀ n, P5548781900745923299.a n = (A218985 n : ℚ)

end A218985

/-! ## A218985.P1514404815142681898

`floor(A164549(n+2)/5)`
-/

namespace A218985.P1514404815142681898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164549 (n + 2) : ℚ) / 5⌋

end

end A218985.P1514404815142681898

namespace A218985

/-- `floor(A164549(n+2)/5)` -/
def P1514404815142681898.Spec : Prop :=
  ∀ n, P1514404815142681898.a n = A218985 n

end A218985

/-! ## A218985.P1931268738786177436

`A123347(n+2)-A218984(n+1)`
-/

namespace A218985.P1931268738786177436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 (n + 2) - A218984 (n + 1)

end

end A218985.P1931268738786177436

namespace A218985

/-- `A123347(n+2)-A218984(n+1)` -/
def P1931268738786177436.Spec : Prop :=
  ∀ n, P1931268738786177436.a n = A218985 n

end A218985

/-!
# A218986: Power floor sequence of 2+sqrt(7).

The programs for A218986, the canonical program `A218986.P11422075189166870675` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218986 has offset 0).

The definition of A218986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218986.P11422075189166870675

`5*a(n-1)-a(n-2)-3*a(n-3)` with `a(0)=4, a(1)=18, a(2)=83`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218986

/-- `5*a(n-1)-a(n-2)-3*a(n-3)` -/
def P11422075189166870675.Spec : Prop :=
  ∀ n, P11422075189166870675.a n = A218986 n

theorem P11422075189166870675.correct : P11422075189166870675.Spec := by
  intro n
  simp only [A218986]

end A218986

/-! ## A218986.P17811156545515864487

`round((sqrt(7)+2)*a(n-1))-1` with `a(0)=4`
-/

namespace A218986.P17811156545515864487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (7 : ℝ) + 2) * (a (n - 1) : ℝ)) - 1

end

end A218986.P17811156545515864487

namespace A218986

/-- `round((sqrt(7)+2)*a(n-1))-1` -/
def P17811156545515864487.Spec : Prop :=
  ∀ n, P17811156545515864487.a n = A218986 n

end A218986

/-! ## A218986.P4366582646600477358

`A218987(n)-∑[A126473(n)]`
-/

namespace A218986.P4366582646600477358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218987 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218986.P4366582646600477358

namespace A218986

/-- `A218987(n)-∑[A126473(n)]` -/
def P4366582646600477358.Spec : Prop :=
  ∀ n, P4366582646600477358.a n = A218986 n

end A218986

/-! ## A218986.P5365103224587003579

`A015530(n+2)-∑[A015530(n)]`
-/

namespace A218986.P5365103224587003579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218986.P5365103224587003579

namespace A218986

/-- `A015530(n+2)-∑[A015530(n)]` -/
def P5365103224587003579.Spec : Prop :=
  ∀ n, P5365103224587003579.a n = A218986 n

end A218986

/-! ## A218986.P11584050631491867684

`ceil(A126473(n+2)/6)`
-/

namespace A218986.P11584050631491867684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126473 (n + 2) : ℚ) / 6⌉

end

end A218986.P11584050631491867684

namespace A218986

/-- `ceil(A126473(n+2)/6)` -/
def P11584050631491867684.Spec : Prop :=
  ∀ n, P11584050631491867684.a n = A218986 n

end A218986

/-! ## A218986.P11599390772150364560

`floor(A082063(A082063(n+1))+A126473(n+2)/6)`
-/

namespace A218986.P11599390772150364560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082063 (A082063 (n + 1)).toNat : ℚ) + (A126473 (n + 2) : ℚ) / 6⌋

end

end A218986.P11599390772150364560

namespace A218986

/-- `floor(A082063(A082063(n+1))+A126473(n+2)/6)` -/
def P11599390772150364560.Spec : Prop :=
  ∀ n, P11599390772150364560.a n = A218986 n

end A218986

/-! ## A218986.P12181151506745914250

`floor(A126473(n+2)/6-A008683(A068486(n+1)))`
-/

namespace A218986.P12181151506745914250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126473 (n + 2) : ℚ) / 6 - (A008683 (A068486 (n + 1)).toNat : ℚ)⌋

end

end A218986.P12181151506745914250

namespace A218986

/-- `floor(A126473(n+2)/6-A008683(A068486(n+1)))` -/
def P12181151506745914250.Spec : Prop :=
  ∀ n, P12181151506745914250.a n = A218986 n

end A218986

/-!
# A218987: Power ceiling sequence of 2+sqrt(7).

The programs for A218987, the canonical program `A218987.P11119294406792587757` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218987 has offset 0).

The definition of A218987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218987.P11119294406792587757

`5*a(n-1)-a(n-2)-3*a(n-3)` with `a(0)=5, a(1)=24, a(2)=112`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218987

/-- `5*a(n-1)-a(n-2)-3*a(n-3)` -/
def P11119294406792587757.Spec : Prop :=
  ∀ n, P11119294406792587757.a n = A218987 n

theorem P11119294406792587757.correct : P11119294406792587757.Spec := by
  intro n
  simp only [A218987]

end A218987

/-! ## A218987.P16923555828303998531

`round((sqrt(7)+2)*a(n-1))+1` with `a(0)=5`
-/

namespace A218987.P16923555828303998531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (7 : ℝ) + 2) * (a (n - 1) : ℝ)) + 1

end

end A218987.P16923555828303998531

namespace A218987

/-- `round((sqrt(7)+2)*a(n-1))+1` -/
def P16923555828303998531.Spec : Prop :=
  ∀ n, P16923555828303998531.a n = A218987 n

end A218987

/-! ## A218987.P10138986415724548254

`∑[record[3*a(n-2)+4*a(n-1)]]` with `a(0)=5, a(1)=0, a(2)=1`
-/

namespace A218987.P10138986415724548254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 0, 1] fun n f2 =>
  3 * f2 (n - 2) + 4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218987.P10138986415724548254

namespace A218987

/-- `∑[record[3*a(n-2)+4*a(n-1)]]` -/
def P10138986415724548254.Spec : Prop :=
  ∀ n, (P10138986415724548254.a n : ℤ) = A218987 n

end A218987

/-! ## A218987.P593993204035059396

`∑[A015530(n+2)]+1`
-/

namespace A218987.P593993204035059396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218987.P593993204035059396

namespace A218987

/-- `∑[A015530(n+2)]+1` -/
def P593993204035059396.Spec : Prop :=
  ∀ n, P593993204035059396.a n = A218987 n

end A218987

/-! ## A218987.P11794032820407602526

`∑[∑[A122558(n+1)]+1]+1`
-/

namespace A218987.P11794032820407602526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218987.P11794032820407602526

namespace A218987

/-- `∑[∑[A122558(n+1)]+1]+1` -/
def P11794032820407602526.Spec : Prop :=
  ∀ n, P11794032820407602526.a n = A218987 n

end A218987

/-! ## A218987.P13961574383081532868

`A218986(n)+∑[A126473(n)]`
-/

namespace A218987.P13961574383081532868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218986 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218987.P13961574383081532868

namespace A218987

/-- `A218986(n)+∑[A126473(n)]` -/
def P13961574383081532868.Spec : Prop :=
  ∀ n, P13961574383081532868.a n = A218987 n

end A218987

/-! ## A218987.P10922862395448640646

`floor(A086901(n+4)/6)`
-/

namespace A218987.P10922862395448640646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086901 (n + 4) : ℚ) / 6⌋

end

end A218987.P10922862395448640646

namespace A218987

/-- `floor(A086901(n+4)/6)` -/
def P10922862395448640646.Spec : Prop :=
  ∀ n, P10922862395448640646.a n = A218987 n

end A218987

/-! ## A218987.P1501074342432773742

`A126473(n+2)-A218986(n+1)`
-/

namespace A218987.P1501074342432773742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 (n + 2) - A218986 (n + 1)

end

end A218987.P1501074342432773742

namespace A218987

/-- `A126473(n+2)-A218986(n+1)` -/
def P1501074342432773742.Spec : Prop :=
  ∀ n, P1501074342432773742.a n = A218987 n

end A218987

/-!
# A218988: Power floor sequence of 2+sqrt(8).

The programs for A218988, the canonical program `A218988.P6442661371903956481` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218988 has offset 0).

The definition of A218988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218988.P6442661371903956481

`5*a(n-1)-4*a(n-3)` with `a(0)=4, a(1)=19, a(2)=91`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218988

/-- `5*a(n-1)-4*a(n-3)` -/
def P6442661371903956481.Spec : Prop :=
  ∀ n, P6442661371903956481.a n = A218988 n

theorem P6442661371903956481.correct : P6442661371903956481.Spec := by
  intro n
  simp only [A218988]

end A218988

/-! ## A218988.P9249235888665614195

`∑[round((sqrt(8)+2)*a(n-1))]` with `a(0)=4, a(1)=15`
-/

namespace A218988.P9249235888665614195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 15] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218988.P9249235888665614195

namespace A218988

/-- `∑[round((sqrt(8)+2)*a(n-1))]` -/
def P9249235888665614195.Spec : Prop :=
  ∀ n, P9249235888665614195.a n = A218988 n

end A218988

/-! ## A218988.P2077939687325822511

`2*floor((sqrt(2)+1)*a(n-1))+1` with `a(0)=4`
-/

namespace A218988.P2077939687325822511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 1

end

end A218988.P2077939687325822511

namespace A218988

/-- `2*floor((sqrt(2)+1)*a(n-1))+1` -/
def P2077939687325822511.Spec : Prop :=
  ∀ n, P2077939687325822511.a n = A218988 n

end A218988

/-! ## A218988.P11933615943143453937

`4*(a(n-1)+a(n-2))-1` with `a(0)=4, a(1)=19`
-/

namespace A218988.P11933615943143453937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 19] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - 1

end

end A218988.P11933615943143453937

namespace A218988

/-- `4*(a(n-1)+a(n-2))-1` -/
def P11933615943143453937.Spec : Prop :=
  ∀ n, P11933615943143453937.a n = A218988 n

end A218988

/-! ## A218988.P12460151447349681072

`floor(a(n-1)/(3-sqrt(8)))-a(n-1)` with `a(0)=4`
-/

namespace A218988.P12460151447349681072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ - a (n - 1)

end

end A218988.P12460151447349681072

namespace A218988

/-- `floor(a(n-1)/(3-sqrt(8)))-a(n-1)` -/
def P12460151447349681072.Spec : Prop :=
  ∀ n, P12460151447349681072.a n = A218988 n

end A218988

/-! ## A218988.P10192623507170610788

`∑[A155117(n+1)]+1`
-/

namespace A218988.P10192623507170610788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218988.P10192623507170610788

namespace A218988

/-- `∑[A155117(n+1)]+1` -/
def P10192623507170610788.Spec : Prop :=
  ∀ n, P10192623507170610788.a n = A218988 n

end A218988

/-! ## A218988.P517357995669501460

`A218989(n)-∑[A086347(n)]`
-/

namespace A218988.P517357995669501460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218989 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218988.P517357995669501460

namespace A218988

/-- `A218989(n)-∑[A086347(n)]` -/
def P517357995669501460.Spec : Prop :=
  ∀ n, P517357995669501460.a n = A218988 n

end A218988

/-! ## A218988.P14377109901821956798

`∑[A000129(n+2)*A042950(n)]`
-/

namespace A218988.P14377109901821956798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) * A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218988.P14377109901821956798

namespace A218988

/-- `∑[A000129(n+2)*A042950(n)]` -/
def P14377109901821956798.Spec : Prop :=
  ∀ n, P14377109901821956798.a n = A218988 n

end A218988

/-! ## A218988.P10127451044193835452

`∑[Δ[A055010(n)]*A215928(n+2)]`
-/

namespace A218988.P10127451044193835452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A215928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218988.P10127451044193835452

namespace A218988

/-- `∑[Δ[A055010(n)]*A215928(n+2)]` -/
def P10127451044193835452.Spec : Prop :=
  ∀ n, P10127451044193835452.a n = A218988 n

end A218988

/-! ## A218988.P1094651420603770660

`A057087(n+1)+A086347(n+1)-A218989(n)`
-/

namespace A218988.P1094651420603770660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1) + (A086347 (n + 1) - A218989 n)

end

end A218988.P1094651420603770660

namespace A218988

/-- `A057087(n+1)+A086347(n+1)-A218989(n)` -/
def P1094651420603770660.Spec : Prop :=
  ∀ n, P1094651420603770660.a n = A218988 n

end A218988

/-! ## A218988.P3779521213550877071

`A341248(n+1)+A341248(n+2)-A341250(n+1)`
-/

namespace A218988.P3779521213550877071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341248 (n + 1) + (A341248 (n + 2) - A341250 (n + 1))

end

end A218988.P3779521213550877071

namespace A218988

/-- `A341248(n+1)+A341248(n+2)-A341250(n+1)` -/
def P3779521213550877071.Spec : Prop :=
  ∀ n, P3779521213550877071.a n = A218988 n

end A218988

/-!
# A218989: Power ceiling sequence of 2+sqrt(8).

The programs for A218989, the canonical program `A218989.P8451231176134927025` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218989 has offset 0).

The definition of A218989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218989.P8451231176134927025

`5*a(n-1)-4*a(n-3)` with `a(0)=5, a(1)=25, a(2)=121`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218989

/-- `5*a(n-1)-4*a(n-3)` -/
def P8451231176134927025.Spec : Prop :=
  ∀ n, P8451231176134927025.a n = A218989 n

theorem P8451231176134927025.correct : P8451231176134927025.Spec := by
  intro n
  simp only [A218989]

end A218989

/-! ## A218989.P13267662533506181097

`or(1, round((sqrt(8)+2)*a(n-1)))` with `a(0)=5`
-/

namespace A218989.P13267662533506181097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ)))

end

end A218989.P13267662533506181097

namespace A218989

/-- `or(1, round((sqrt(8)+2)*a(n-1)))` -/
def P13267662533506181097.Spec : Prop :=
  ∀ n, P13267662533506181097.a n = A218989 n

end A218989

/-! ## A218989.P14619612599499186142

`2*floor((sqrt(2)+1)*a(n-1))+1` with `a(0)=5`
-/

namespace A218989.P14619612599499186142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ + 1

end

end A218989.P14619612599499186142

namespace A218989

/-- `2*floor((sqrt(2)+1)*a(n-1))+1` -/
def P14619612599499186142.Spec : Prop :=
  ∀ n, P14619612599499186142.a n = A218989 n

end A218989

/-! ## A218989.P11340117434893705365

`record[(a(n-1)+a(n-2))/(1/2)²+1]` with `a(0)=5, a(1)=1, a(2)=5`
-/

namespace A218989.P11340117434893705365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 1, 5] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) / ((1 : ℚ) / 2) ^ 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218989.P11340117434893705365

namespace A218989

/-- `record[(a(n-1)+a(n-2))/(1/2)²+1]` -/
def P11340117434893705365.Spec : Prop :=
  ∀ n, P11340117434893705365.a n = (A218989 n : ℚ)

end A218989

/-! ## A218989.P1803205813304432612

`∑[A057087(n+1)]+1`
-/

namespace A218989.P1803205813304432612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218989.P1803205813304432612

namespace A218989

/-- `∑[A057087(n+1)]+1` -/
def P1803205813304432612.Spec : Prop :=
  ∀ n, P1803205813304432612.a n = A218989 n

end A218989

/-! ## A218989.P1805089500002839140

`2*A341250(n+2)-1`
-/

namespace A218989.P1805089500002839140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341250 (n + 2) - 1

end

end A218989.P1805089500002839140

namespace A218989

/-- `2*A341250(n+2)-1` -/
def P1805089500002839140.Spec : Prop :=
  ∀ n, P1805089500002839140.a n = A218989 n

end A218989

/-! ## A218989.P13856048492684943852

`2*A182691(2*n+1)-1`
-/

namespace A218989.P13856048492684943852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182691 (2 * n + 1) - 1

end

end A218989.P13856048492684943852

namespace A218989

/-- `2*A182691(2*n+1)-1` -/
def P13856048492684943852.Spec : Prop :=
  ∀ n, P13856048492684943852.a n = A218989 n

end A218989

/-! ## A218989.P6424775703655869625

`∑[2^n*A052542(n+2)]+1`
-/

namespace A218989.P6424775703655869625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052542 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218989.P6424775703655869625

namespace A218989

/-- `∑[2^n*A052542(n+2)]+1` -/
def P6424775703655869625.Spec : Prop :=
  ∀ n, P6424775703655869625.a n = A218989 n

end A218989

/-! ## A218989.P6828853302759335190

`A218988(n)+∑[A086347(n)]`
-/

namespace A218989.P6828853302759335190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218988 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218989.P6828853302759335190

namespace A218989

/-- `A218988(n)+∑[A086347(n)]` -/
def P6828853302759335190.Spec : Prop :=
  ∀ n, P6828853302759335190.a n = A218989 n

end A218989

/-! ## A218989.P13478562824316450434

`∑[Δ[A213667(n+1)]*A000079(n)]`
-/

namespace A218989.P13478562824316450434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218989.P13478562824316450434

namespace A218989

/-- `∑[Δ[A213667(n+1)]*A000079(n)]` -/
def P13478562824316450434.Spec : Prop :=
  ∀ n, P13478562824316450434.a n = A218989 n

end A218989

/-! ## A218989.P2328884622277889587

`A006668(n+3)-∑[A006668(n+2)]`
-/

namespace A218989.P2328884622277889587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006668 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218989.P2328884622277889587

namespace A218989

/-- `A006668(n+3)-∑[A006668(n+2)]` -/
def P2328884622277889587.Spec : Prop :=
  ∀ n, P2328884622277889587.a n = A218989 n

end A218989

/-! ## A218989.P5791500513533176829

`A086347(n+2)-A218988(n+1)`
-/

namespace A218989.P5791500513533176829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 (n + 2) - A218988 (n + 1)

end

end A218989.P5791500513533176829

namespace A218989

/-- `A086347(n+2)-A218988(n+1)` -/
def P5791500513533176829.Spec : Prop :=
  ∀ n, P5791500513533176829.a n = A218989 n

end A218989

/-! ## A218989.P14944715286920194811

`A341248(n+3)-A341250(n+3)`
-/

namespace A218989.P14944715286920194811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341248 (n + 3) - A341250 (n + 3)

end

end A218989.P14944715286920194811

namespace A218989

/-- `A341248(n+3)-A341250(n+3)` -/
def P14944715286920194811.Spec : Prop :=
  ∀ n, P14944715286920194811.a n = A218989 n

end A218989

/-!
# A218990: Power ceiling-floor sequence of 3+sqrt(8).

The programs for A218990, the canonical program `A218990.P5171819307986676000` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218990 has offset 0).

The definition of A218990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218990.P5171819307986676000

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=6, a(1)=34, a(2)=199`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218990

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P5171819307986676000.Spec : Prop :=
  ∀ n, P5171819307986676000.a n = A218990 n

theorem P5171819307986676000.correct : P5171819307986676000.Spec := by
  intro n
  simp only [A218990]

end A218990

/-! ## A218990.P13989866703641655216

`A001109(n+2)-A084158(n)`
-/

namespace A218990.P13989866703641655216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 2) - A084158 n

end

end A218990.P13989866703641655216

namespace A218990

/-- `A001109(n+2)-A084158(n)` -/
def P13989866703641655216.Spec : Prop :=
  ∀ n, P13989866703641655216.a n = A218990 n

end A218990

/-! ## A218990.P2455977756125500056

`A001109(n+2)-∑[A079291(n)]`
-/

namespace A218990.P2455977756125500056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P2455977756125500056

namespace A218990

/-- `A001109(n+2)-∑[A079291(n)]` -/
def P2455977756125500056.Spec : Prop :=
  ∀ n, P2455977756125500056.a n = A218990 n

end A218990

/-! ## A218990.P7968422997059952047

`A084158(n+1)+A001653(n+2)`
-/

namespace A218990.P7968422997059952047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 (n + 1) + A001653 (n + 2)

end

end A218990.P7968422997059952047

namespace A218990

/-- `A084158(n+1)+A001653(n+2)` -/
def P7968422997059952047.Spec : Prop :=
  ∀ n, P7968422997059952047.a n = A218990 n

end A218990

/-! ## A218990.P331114011504704237

`A084158(n+2)+A079291(n+1)`
-/

namespace A218990.P331114011504704237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 (n + 2) + A079291 (n + 1)

end

end A218990.P331114011504704237

namespace A218990

/-- `A084158(n+2)+A079291(n+1)` -/
def P331114011504704237.Spec : Prop :=
  ∀ n, P331114011504704237.a n = A218990 n

end A218990

/-! ## A218990.P13800758471328126388

`A089928(2*n)+A084158(n+2)`
-/

namespace A218990.P13800758471328126388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 (2 * n) + A084158 (n + 2)

end

end A218990.P13800758471328126388

namespace A218990

/-- `A089928(2*n)+A084158(n+2)` -/
def P13800758471328126388.Spec : Prop :=
  ∀ n, P13800758471328126388.a n = A218990 n

end A218990

/-! ## A218990.P12785449694998888071

`A001653(n+2)+∑[A077985(n)²]`
-/

namespace A218990.P12785449694998888071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P12785449694998888071

namespace A218990

/-- `A001653(n+2)+∑[A077985(n)²]` -/
def P12785449694998888071.Spec : Prop :=
  ∀ n, P12785449694998888071.a n = A218990 n

end A218990

/-! ## A218990.P10117264669737636791

`A001653(n+2)+∑[∑[A001333(n)]²]`
-/

namespace A218990.P10117264669737636791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P10117264669737636791

namespace A218990

/-- `A001653(n+2)+∑[∑[A001333(n)]²]` -/
def P10117264669737636791.Spec : Prop :=
  ∀ n, P10117264669737636791.a n = A218990 n

end A218990

/-! ## A218990.P2310591260364638995

`A084158(n+1)+A000129(2*n+3)`
-/

namespace A218990.P2310591260364638995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 (n + 1) + A000129 (2 * n + 3)

end

end A218990.P2310591260364638995

namespace A218990

/-- `A084158(n+1)+A000129(2*n+3)` -/
def P2310591260364638995.Spec : Prop :=
  ∀ n, P2310591260364638995.a n = A218990 n

end A218990

/-! ## A218990.P11756578468928842892

`A001653(n+2)+∑[A000129(n+1)²]`
-/

namespace A218990.P11756578468928842892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P11756578468928842892

namespace A218990

/-- `A001653(n+2)+∑[A000129(n+1)²]` -/
def P11756578468928842892.Spec : Prop :=
  ∀ n, P11756578468928842892.a n = A218990 n

end A218990

/-! ## A218990.P319077759231466939

`A001653(n+2)+∑[A215936(n+3)²]`
-/

namespace A218990.P319077759231466939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P319077759231466939

namespace A218990

/-- `A001653(n+2)+∑[A215936(n+3)²]` -/
def P319077759231466939.Spec : Prop :=
  ∀ n, P319077759231466939.a n = A218990 n

end A218990

/-! ## A218990.P12633165763316882610

`A000129(2*n+3)+∑[A000129(n+1)²]`
-/

namespace A218990.P12633165763316882610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218990.P12633165763316882610

namespace A218990

/-- `A000129(2*n+3)+∑[A000129(n+1)²]` -/
def P12633165763316882610.Spec : Prop :=
  ∀ n, P12633165763316882610.a n = A218990 n

end A218990

/-! ## A218990.P17854429113948116495

`A079291(n+1)+A204062(n+1)+A204062(n)`
-/

namespace A218990.P17854429113948116495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 (n + 1) + (A204062 (n + 1) + A204062 n)

end

end A218990.P17854429113948116495

namespace A218990

/-- `A079291(n+1)+A204062(n+1)+A204062(n)` -/
def P17854429113948116495.Spec : Prop :=
  ∀ n, P17854429113948116495.a n = A218990 n

end A218990

/-! ## A218990.P14830475928801700860

`A001653(n+2)+A041011(n+1)*A041011(n)`
-/

namespace A218990.P14830475928801700860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + A041011 (n + 1) * A041011 n

end

end A218990.P14830475928801700860

namespace A218990

/-- `A001653(n+2)+A041011(n+1)*A041011(n)` -/
def P14830475928801700860.Spec : Prop :=
  ∀ n, P14830475928801700860.a n = A218990 n

end A218990

/-!
# A218991: Power floor sequence of 3+sqrt(10).

The programs for A218991, the canonical program `A218991.P18128907807338537620` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218991 has offset 0).

The definition of A218991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218991.P18128907807338537620

`7*a(n-1)-5*a(n-2)-a(n-3)` with `a(0)=6, a(1)=36, a(2)=221`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218991

/-- `7*a(n-1)-5*a(n-2)-a(n-3)` -/
def P18128907807338537620.Spec : Prop :=
  ∀ n, P18128907807338537620.a n = A218991 n

theorem P18128907807338537620.correct : P18128907807338537620.Spec := by
  intro n
  simp only [A218991]

end A218991

/-! ## A218991.P4111918122700023510

`((5+sqrt(10))*(3-sqrt(10))^(n+2)+(5-sqrt(10))*(3+sqrt(10))^(n+2)+2)/12`
-/

namespace A218991.P4111918122700023510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (10 : ℝ)) * (3 - Real.sqrt (10 : ℝ)) ^ (n + 2) + (5 - Real.sqrt (10 : ℝ)) * (3 + Real.sqrt (10 : ℝ)) ^ (n + 2) + 2) / 12

end

end A218991.P4111918122700023510

namespace A218991

/-- `((5+sqrt(10))*(3-sqrt(10))^(n+2)+(5-sqrt(10))*(3+sqrt(10))^(n+2)+2)/12` -/
def P4111918122700023510.Spec : Prop :=
  ∀ n, P4111918122700023510.a n = (A218991 n : ℝ)

end A218991

/-! ## A218991.P4865150521916302181

`∑[A155195(n+1)]+1`
-/

namespace A218991.P4865150521916302181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218991.P4865150521916302181

namespace A218991

/-- `∑[A155195(n+1)]+1` -/
def P4865150521916302181.Spec : Prop :=
  ∀ n, P4865150521916302181.a n = A218991 n

end A218991

/-! ## A218991.P562791988200314617

`∑[A228472(2*n)]+1`
-/

namespace A218991.P562791988200314617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218991.P562791988200314617

namespace A218991

/-- `∑[A228472(2*n)]+1` -/
def P562791988200314617.Spec : Prop :=
  ∀ n, P562791988200314617.a n = A218991 n

end A218991

/-! ## A218991.P11520954959699898845

`A179237(n+2)-A218992(n)`
-/

namespace A218991.P11520954959699898845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 (n + 2) - A218992 n

end

end A218991.P11520954959699898845

namespace A218991

/-- `A179237(n+2)-A218992(n)` -/
def P11520954959699898845.Spec : Prop :=
  ∀ n, P11520954959699898845.a n = A218991 n

end A218991

/-! ## A218991.P4520945622603104679

`∑[A116559(A008458(n+1))]+1`
-/

namespace A218991.P4520945622603104679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A008458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218991.P4520945622603104679

namespace A218991

/-- `∑[A116559(A008458(n+1))]+1` -/
def P4520945622603104679.Spec : Prop :=
  ∀ n, P4520945622603104679.a n = A218991 n

end A218991

/-! ## A218991.P8615523834777488667

`A005668(n+2)-∑[A005668(n)]`
-/

namespace A218991.P8615523834777488667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218991.P8615523834777488667

namespace A218991

/-- `A005668(n+2)-∑[A005668(n)]` -/
def P8615523834777488667.Spec : Prop :=
  ∀ n, P8615523834777488667.a n = A218991 n

end A218991

/-! ## A218991.P6866591310278303893

`A228469(2*(n+1))-A218992(n)`
-/

namespace A218991.P6866591310278303893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (2 * (n + 1)) - A218992 n

end

end A218991.P6866591310278303893

namespace A218991

/-- `A228469(2*(n+1))-A218992(n)` -/
def P6866591310278303893.Spec : Prop :=
  ∀ n, P6866591310278303893.a n = A218991 n

end A218991

/-! ## A218991.P14748110927260417613

`1-(A010873(4*n)-∑[A228472(2*n)])`
-/

namespace A218991.P14748110927260417613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A010873 (4 * n) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218991.P14748110927260417613

namespace A218991

/-- `1-(A010873(4*n)-∑[A228472(2*n)])` -/
def P14748110927260417613.Spec : Prop :=
  ∀ n, P14748110927260417613.a n = A218991 n

end A218991

/-!
# A218992: Power ceiling sequence of 3+sqrt(10).

The programs for A218992, the canonical program `A218992.P6340173313361500615` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218992 has offset 0).

The definition of A218992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218992.P6340173313361500615

`7*a(n-1)-5*a(n-2)-a(n-3)` with `a(0)=7, a(1)=44, a(2)=272`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A218992

/-- `7*a(n-1)-5*a(n-2)-a(n-3)` -/
def P6340173313361500615.Spec : Prop :=
  ∀ n, P6340173313361500615.a n = A218992 n

theorem P6340173313361500615.correct : P6340173313361500615.Spec := by
  intro n
  simp only [A218992]

end A218992

/-! ## A218992.P1612088726749058589

`((5+sqrt(10))*(3-sqrt(10))^(n+3)+(5-sqrt(10))*(3+sqrt(10))^(n+3)-10)/60`
-/

namespace A218992.P1612088726749058589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (10 : ℝ)) * (3 - Real.sqrt (10 : ℝ)) ^ (n + 3) + (5 - Real.sqrt (10 : ℝ)) * (3 + Real.sqrt (10 : ℝ)) ^ (n + 3) - 10) / 60

end

end A218992.P1612088726749058589

namespace A218992

/-- `((5+sqrt(10))*(3-sqrt(10))^(n+3)+(5-sqrt(10))*(3+sqrt(10))^(n+3)-10)/60` -/
def P1612088726749058589.Spec : Prop :=
  ∀ n, P1612088726749058589.a n = (A218992 n : ℝ)

end A218992

/-! ## A218992.P8836434418420611493

`∑[A005668(n+2)]+1`
-/

namespace A218992.P8836434418420611493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A218992.P8836434418420611493

namespace A218992

/-- `∑[A005668(n+2)]+1` -/
def P8836434418420611493.Spec : Prop :=
  ∀ n, P8836434418420611493.a n = A218992 n

end A218992

/-! ## A218992.P18246565533925248620

`A179237(n+2)-A218991(n)`
-/

namespace A218992.P18246565533925248620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179237 (n + 2) - A218991 n

end

end A218992.P18246565533925248620

namespace A218992

/-- `A179237(n+2)-A218991(n)` -/
def P18246565533925248620.Spec : Prop :=
  ∀ n, P18246565533925248620.a n = A218992 n

end A218992

/-! ## A218992.P731679298982820889

`A228469(2*(n+1))-A218991(n)`
-/

namespace A218992.P731679298982820889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (2 * (n + 1)) - A218991 n

end

end A218992.P731679298982820889

namespace A218992

/-- `A228469(2*(n+1))-A218991(n)` -/
def P731679298982820889.Spec : Prop :=
  ∀ n, P731679298982820889.a n = A218992 n

end A218992

/-! ## A218992.P10929605845944573128

`record[a(n-1)+A085447(n)-A005668(n+1)]` with `a(0)=7, a(1)=5, a(2)=1`
-/

namespace A218992.P10929605845944573128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 5, 1] fun n f1 =>
  f1 (n - 1) + (A085447 n - A005668 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218992.P10929605845944573128

namespace A218992

/-- `record[a(n-1)+A085447(n)-A005668(n+1)]` -/
def P10929605845944573128.Spec : Prop :=
  ∀ n, P10929605845944573128.a n = A218992 n

end A218992

/-!
# A218993: Numerator of the least reduced fraction b/c > 1 using divisors b and c of n.

The programs for A218993, there is no canonical definition to state claims against.
-/

/-! ## A218993.P13010193354577808235

`(n+2)/gcd(n+2, A063649(n+2))`
-/

namespace A218993.P13010193354577808235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A063649 (n + 2)) : ℚ)

end

end A218993.P13010193354577808235

/-! ## A218993.P2095636600286415767

`sqrt(A063718(n+2)/A219094(n+2))`
-/

namespace A218993.P2095636600286415767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A063718 (n + 2) : ℚ) / (A219094 (n + 2) : ℚ) : ℝ)

end

end A218993.P2095636600286415767

/-! ## A218993.P11791664061575780530

`A063718(n+2)/gcd(A063718(n+2), A082986(n+1))`
-/

namespace A218993.P11791664061575780530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063718 (n + 2) : ℚ) / (Int.gcd (A063718 (n + 2)) (A082986 (n + 1)) : ℚ)

end

end A218993.P11791664061575780530

/-! ## A218993.P6334884025057434902

`lcm(A063648(n+2), A063649(n+2))/A063649(n+2)`
-/

namespace A218993.P6334884025057434902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A063648 (n + 2)) (A063649 (n + 2)) : ℚ) / (A063649 (n + 2) : ℚ)

end

end A218993.P6334884025057434902

/-! ## A218993.P16158359722163506431

`A063427(n+2)/A063428(n+2)*A219093(n+2)`
-/

namespace A218993.P16158359722163506431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063427 (n + 2) : ℚ) / (A063428 (n + 2) : ℚ) * (A219093 (n + 2) : ℚ)

end

end A218993.P16158359722163506431

/-! ## A218993.P117335505371963500

`lcm(A063427(n+2), A063718(n+2))/A063427(n+2)`
-/

namespace A218993.P117335505371963500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A063427 (n + 2)) (A063718 (n + 2)) : ℚ) / (A063427 (n + 2) : ℚ)

end

end A218993.P117335505371963500

/-! ## A218993.P1499631688108834497

`A277227(A063649(n+2)+∑[n])`
-/

namespace A218993.P1499631688108834497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A063649 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A218993.P1499631688108834497

/-!
# A218994: Integers m that belong to at least two distinct Lucas sequences U(P,Q) with P>0 different from m, |Q|=1, and (P,Q) different from (3,1).

The programs for A218994, there is no canonical definition to state claims against.
-/

/-! ## A218994.P4464873868874762241

`A033996(A107822(a(n-2)+6))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A218994.P4464873868874762241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A033996 (A107822 (a (n - 2) + 6).toNat).toNat

end

end A218994.P4464873868874762241

/-!
# A218996: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A218996, there is no canonical definition to state claims against.
-/

/-! ## A218996.P3902714226758112936

`A219002(∑[4*n]+1)`
-/

namespace A218996.P3902714226758112936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218996.P3902714226758112936

/-!
# A218997: Unmatched value maps: number of n X 3 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X 3 array.

The programs for A218997, there is no canonical definition to state claims against.
-/

/-! ## A218997.P7998037796984525010

`A219002(∑[n+3]+1)`
-/

namespace A218997.P7998037796984525010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218997.P7998037796984525010

/-! ## A218997.P2738603375236030640

`record[A219002(A198464(n+1))]`
-/

namespace A218997.P2738603375236030640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218997.P2738603375236030640

/-! ## A218997.P17597406847426528706

`lcm(2, A219002(A034856(n+2)))`
-/

namespace A218997.P17597406847426528706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A219002 (A034856 (n + 2)).toNat)

end

end A218997.P17597406847426528706

/-! ## A218997.P8052421665312531213

`record[ratio[A219002(A130297(n+1))]]`
-/

namespace A218997.P8052421665312531213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A130297 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218997.P8052421665312531213

/-! ## A218997.P7811662871495932572

`A008683(A014963(n+1))²*A219002(A034856(n+2))`
-/

namespace A218997.P7811662871495932572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A219002 (A034856 (n + 2)).toNat

end

end A218997.P7811662871495932572

/-!
# A218998: Unmatched value maps: number of nX4 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A218998, there is no canonical definition to state claims against.
-/

/-! ## A218998.P7078323120771831718

`A219002(∑[n+4]+3)`
-/

namespace A218998.P7078323120771831718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A218998.P7078323120771831718

/-! ## A218998.P11152633906504277031

`A225413(n)+A219002(A141214(n+1))`
-/

namespace A218998.P11152633906504277031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A219002 (A141214 (n + 1)).toNat

end

end A218998.P11152633906504277031

/-! ## A218998.P2381562698706270077

`A219002(A141214(n+1))+A080224(n+1)`
-/

namespace A218998.P2381562698706270077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A141214 (n + 1)).toNat + A080224 (n + 1)

end

end A218998.P2381562698706270077

/-! ## A218998.P17622005419053226020

`A337165(3*n+4)+A219002(A141214(n+1))`
-/

namespace A218998.P17622005419053226020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (3 * n + 4) + A219002 (A141214 (n + 1)).toNat

end

end A218998.P17622005419053226020

/-!
# A218999: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A218999, there is no canonical definition to state claims against.
-/

/-! ## A218999.P9678712601466474703

`A219002(∑[n+5]+6)`
-/

namespace A218999.P9678712601466474703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A218999.P9678712601466474703

/-! ## A218999.P6722823242673191068

`A263014(n+1)+A219002(Δ[A264443(n)])`
-/

namespace A218999.P6722823242673191068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 1) + A219002 (f1 (n + 1) - f1 n).toNat

end

end A218999.P6722823242673191068

/-! ## A218999.P15043217038478934649

`A219002(Δ[A023545(n+1)])*A294335(n)`
-/

namespace A218999.P15043217038478934649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (f1 (n + 1) - f1 n).toNat * A294335 n

end

end A218999.P15043217038478934649

