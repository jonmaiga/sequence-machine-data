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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

/-!
# A207200: Number of nX7 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207200, there is no canonical definition to state claims against.
-/

/-! ## A207200.P160743565518781471

`A207201(A167499(n+5)+2)`
-/

namespace A207200.P160743565518781471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A167499 (n + 5) + 2).toNat

end

end A207200.P160743565518781471

/-! ## A207200.P13400930000076831583

`A207201(eq[8, A131818(n+1)])`
-/

namespace A207200.P13400930000076831583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207200.P13400930000076831583

/-! ## A207200.P13545726199612039451

`A207201(A374008(n+1))`
-/

namespace A207200.P13545726199612039451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (A374008 (n + 1)).toNat

end

end A207200.P13545726199612039451

/-! ## A207200.P9139827052517718426

`A207201(eq[6, A193592(n)])`
-/

namespace A207200.P9139827052517718426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207200.P9139827052517718426

/-!
# A207201: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z-1 z-1 z in any row or column.

The programs for A207201, there is no canonical definition to state claims against.
-/

/-! ## A207201.P3476425818074435754

`A207221(n+1)-A055641(A098051(n))`
-/

namespace A207201.P3476425818074435754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (n + 1) - A055641 (A098051 n).toNat

end

end A207201.P3476425818074435754

/-! ## A207201.P4884197778770017271

`A207221(n+1)-A340999(A276086(n))`
-/

namespace A207201.P4884197778770017271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (n + 1) - A340999 ((A276086 n).toNat + 204)

end

end A207201.P4884197778770017271

/-! ## A207201.P710041453232978223

`A207221(n+1)-A010054(A207050(n+1))`
-/

namespace A207201.P710041453232978223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (n + 1) - A010054 (A207050 (n + 1)).toNat

end

end A207201.P710041453232978223

/-! ## A207201.P14340951828831491039

`A207221(n+1)-A321379(A164363(n+1))`
-/

namespace A207201.P14340951828831491039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (n + 1) - A321379 (A164363 (n + 1)).toNat

end

end A207201.P14340951828831491039

/-! ## A207201.P9220439996391049378

`A207221(n+1)-A353528(A324936(n+1))`
-/

namespace A207201.P9220439996391049378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (n + 1) - A353528 (A324936 (n + 1)).toNat

end

end A207201.P9220439996391049378

/-!
# A207202: Number of n X n 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207202, there is no canonical definition to state claims against.
-/

/-! ## A207202.P6213417741440952786

`A207208((n+1)²+n²)`
-/

namespace A207202.P6213417741440952786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 ((n + 1) ^ 2 + n ^ 2)

end

end A207202.P6213417741440952786

/-!
# A207203: Number of nX3 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207203, there is no canonical definition to state claims against.
-/

/-! ## A207203.P12178306324352774094

`A207208(∑[n+3]+1)`
-/

namespace A207203.P12178306324352774094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207203.P12178306324352774094

/-!
# A207204: Number of nX4 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207204, there is no canonical definition to state claims against.
-/

/-! ## A207204.P16470022447569239674

`A207208(A141214(n+1))`
-/

namespace A207204.P16470022447569239674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A141214 (n + 1)).toNat

end

end A207204.P16470022447569239674

/-! ## A207204.P9699383986960966988

`A207208(A155212(n)+5)`
-/

namespace A207204.P9699383986960966988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A155212 n + 5).toNat

end

end A207204.P9699383986960966988

/-! ## A207204.P12919793632260627547

`A207208(A056000(n)+7)`
-/

namespace A207204.P12919793632260627547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A056000 n + 7).toNat

end

end A207204.P12919793632260627547

/-! ## A207204.P13290318570366147149

`A207208(A052905(n+1)+2)`
-/

namespace A207204.P13290318570366147149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A052905 (n + 1) + 2).toNat

end

end A207204.P13290318570366147149

/-! ## A207204.P13215049054869161786

`A207208(eq[4, A057728(n+1)])`
-/

namespace A207204.P13215049054869161786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207204.P13215049054869161786

/-!
# A207205: Number of nX5 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207205, there is no canonical definition to state claims against.
-/

/-! ## A207205.P5400887625485625919

`A207208(A046691(n+3))`
-/

namespace A207205.P5400887625485625919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A046691 (n + 3)).toNat

end

end A207205.P5400887625485625919

/-! ## A207205.P3093621261594469886

`A207208(Δ[A023545(n+1)])`
-/

namespace A207205.P3093621261594469886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (f1 (n + 1) - f1 n).toNat

end

end A207205.P3093621261594469886

/-! ## A207205.P18204703071113707892

`A207208(A141214(n+2)-1)`
-/

namespace A207205.P18204703071113707892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A141214 (n + 2) - 1).toNat

end

end A207205.P18204703071113707892

/-! ## A207205.P13901325844422709337

`A207208(eq[5, A200370(n+1)])`
-/

namespace A207205.P13901325844422709337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207205.P13901325844422709337

/-! ## A207205.P10764618937605769849

`A207208(eq[6, A185782(n+1)])`
-/

namespace A207205.P10764618937605769849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207205.P10764618937605769849

/-!
# A207206: Number of nX6 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207206, there is no canonical definition to state claims against.
-/

/-! ## A207206.P11868511479122841176

`A207208(A052905(n+3))`
-/

namespace A207206.P11868511479122841176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A052905 (n + 3)).toNat

end

end A207206.P11868511479122841176

/-! ## A207206.P12585638727435626108

`A207208(eq[16, A057728(n+1)])`
-/

namespace A207206.P12585638727435626108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207206.P12585638727435626108

/-! ## A207206.P10875809619188866515

`A207208(Δ[Δ[A006504(n+1)]])`
-/

namespace A207206.P10875809619188866515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (f1 (n + 1) - f1 n).toNat

end

end A207206.P10875809619188866515

/-! ## A207206.P2499075663187571477

`A207208(Δ[A023545(n+2)]-1)`
-/

namespace A207206.P2499075663187571477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (f1 (n + 1) - f1 n - 1).toNat

end

end A207206.P2499075663187571477

/-!
# A207207: Number of nX7 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207207, there is no canonical definition to state claims against.
-/

/-! ## A207207.P10208296065015133980

`A207208(A052905(n+4)-1)`
-/

namespace A207207.P10208296065015133980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A052905 (n + 4) - 1).toNat

end

end A207207.P10208296065015133980

/-! ## A207207.P12538845153282665023

`A207208(eq[7, A200370(n+1)])`
-/

namespace A207207.P12538845153282665023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207207.P12538845153282665023

/-! ## A207207.P13550437245276722829

`A207208(eq[10, A185782(n+1)])`
-/

namespace A207207.P13550437245276722829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207207.P13550437245276722829

/-!
# A207208: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207208, there is no canonical definition to state claims against.
-/

/-! ## A207208.P5061335060165852869

`A207201(∏{e}[Δ[3^n], #+1]/2)`
-/

namespace A207208.P5061335060165852869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2)).toNat

end

end A207208.P5061335060165852869

/-! ## A207208.P13197971350662716809

`A206734(A084192(∑[n]))`
-/

namespace A207208.P13197971350662716809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207208.P13197971350662716809

/-! ## A207208.P17166733805359047760

`A206734(A084193(∑[n]))`
-/

namespace A207208.P17166733805359047760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207208.P17166733805359047760

/-! ## A207208.P14580641049363262114

`A028310(A206734(n+1))`
-/

namespace A207208.P14580641049363262114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A206734 (n + 1)).toNat

end

end A207208.P14580641049363262114

/-! ## A207208.P15162090609398494226

`A028310(A207201(n+1))`
-/

namespace A207208.P15162090609398494226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A207201 (n + 1)).toNat

end

end A207208.P15162090609398494226

/-!
# A207209: Number of 3Xn 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207209, there is no canonical definition to state claims against.
-/

/-! ## A207209.P2757408732003288654

`A207208(∑[n+2]+4)`
-/

namespace A207209.P2757408732003288654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207209.P2757408732003288654

/-! ## A207209.P9865051283383602683

`A207208(A167614(n+1))+A011731(n)`
-/

namespace A207209.P9865051283383602683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167614 (n + 1)).toNat + A011731 n

end

end A207209.P9865051283383602683

/-! ## A207209.P14617344389259428573

`A207208(A167614(n+1))+A025469(n)`
-/

namespace A207209.P14617344389259428573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167614 (n + 1)).toNat + A025469 n

end

end A207209.P14617344389259428573

/-! ## A207209.P5859021269221142910

`A207208(A167614(n+1))+A108782(n)`
-/

namespace A207209.P5859021269221142910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167614 (n + 1)).toNat + A108782 n

end

end A207209.P5859021269221142910

/-! ## A207209.P15527462619011406290

`A207208(A167614(n+1))+A184964(n)`
-/

namespace A207209.P15527462619011406290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167614 (n + 1)).toNat + A184964 n

end

end A207209.P15527462619011406290

/-!
# A207210: Number of 4Xn 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207210, there is no canonical definition to state claims against.
-/

/-! ## A207210.P17679111519953708489

`A207208(A141214(n)+7)`
-/

namespace A207210.P17679111519953708489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A141214 n + 7).toNat

end

end A207210.P17679111519953708489

/-! ## A207210.P15523925522509361563

`A207208(A052905(n)+9)`
-/

namespace A207210.P15523925522509361563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A052905 n + 9).toNat

end

end A207210.P15523925522509361563

/-! ## A207210.P16915152116364932298

`A207208(A055999(n)+10)`
-/

namespace A207210.P16915152116364932298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A055999 n + 10).toNat

end

end A207210.P16915152116364932298

/-! ## A207210.P12598057078083216971

`A207208(A167614(n+2)+1)`
-/

namespace A207210.P12598057078083216971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167614 (n + 2) + 1).toNat

end

end A207210.P12598057078083216971

/-! ## A207210.P12468061320351662902

`A207208(A167499(n+2)-1)`
-/

namespace A207210.P12468061320351662902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167499 (n + 2) - 1).toNat

end

end A207210.P12468061320351662902

/-!
# A207211: Number of 5Xn 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207211, there is no canonical definition to state claims against.
-/

/-! ## A207211.P9069929559227120851

`A207208(A167499(n+3))`
-/

namespace A207211.P9069929559227120851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A167499 (n + 3)).toNat

end

end A207211.P9069929559227120851

/-! ## A207211.P11559811521466593606

`A207208(A155212(n)+13)`
-/

namespace A207211.P11559811521466593606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A155212 n + 13).toNat

end

end A207211.P11559811521466593606

/-! ## A207211.P957998734827479635

`A207208(A056000(n)+15)`
-/

namespace A207211.P957998734827479635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A056000 n + 15).toNat

end

end A207211.P957998734827479635

/-! ## A207211.P4405137254502649914

`A207208(eq[7, A066657(n)])`
-/

namespace A207211.P4405137254502649914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207211.P4405137254502649914

/-! ## A207211.P14588000858504552731

`A207208(eq[6, A131818(n+1)])`
-/

namespace A207211.P14588000858504552731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207211.P14588000858504552731

/-!
# A207212: Number of 6Xn 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207212, there is no canonical definition to state claims against.
-/

/-! ## A207212.P13175696920777011231

`A207208(eq[7, A131818(n+1)])`
-/

namespace A207212.P13175696920777011231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207212.P13175696920777011231

/-!
# A207213: Number of 7Xn 0..2 arrays avoiding the pattern z-1 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A207213, there is no canonical definition to state claims against.
-/

/-! ## A207213.P12024199525913985435

`A207208(A253145(n+5)+7)`
-/

namespace A207213.P12024199525913985435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (A253145 (n + 5) + 7).toNat

end

end A207213.P12024199525913985435

/-! ## A207213.P3305905806642236394

`A207208(eq[8, A131818(n+1)])`
-/

namespace A207213.P3305905806642236394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207213.P3305905806642236394

/-!
# A207214: E.g.f.: Sum_{n>=0} exp(n*x) * Product_{k=1..n} (exp(k*x) - 1).

The programs for A207214, there is no canonical definition to state claims against.
-/

/-! ## A207214.P2471409879724896884

`A051772(A023815(n))`
-/

namespace A207214.P2471409879724896884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051772 (A023815 n).toNat

end

end A207214.P2471409879724896884

/-!
# A207215: Number of n X n 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207215, there is no canonical definition to state claims against.
-/

/-! ## A207215.P12952386105873037235

`A207221(∑[4*n]+1)`
-/

namespace A207215.P12952386105873037235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207215.P12952386105873037235

/-! ## A207215.P13548633331257295529

`or(A000038(n), A207221(A046092(n)+1))`
-/

namespace A207215.P13548633331257295529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207221 (A046092 n + 1).toNat)

end

end A207215.P13548633331257295529

/-!
# A207216: Number of nX3 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207216, there is no canonical definition to state claims against.
-/

/-! ## A207216.P11118275869932764925

`A207221(∑[n+2]+4)`
-/

namespace A207216.P11118275869932764925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207216.P11118275869932764925

/-! ## A207216.P8638172892361678654

`record[A207221(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A207216.P8638172892361678654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207216.P8638172892361678654

/-! ## A207216.P4069634298351250411

`lcm(A033999(n), A207221(A167614(n+1)))`
-/

namespace A207216.P4069634298351250411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207221 (A167614 (n + 1)).toNat)

end

end A207216.P4069634298351250411

/-! ## A207216.P14609066420304274173

`A207221(A167614(n+1))+A034427(n+1)`
-/

namespace A207216.P14609066420304274173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A167614 (n + 1)).toNat + A034427 (n + 1)

end

end A207216.P14609066420304274173

/-! ## A207216.P1823627640320584762

`A207221(A167614(n+1))%A207224(n+1)`
-/

namespace A207216.P1823627640320584762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207221 (A167614 (n + 1)).toNat) (A207224 (n + 1))

end

end A207216.P1823627640320584762

/-!
# A207217: Number of nX4 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207217, there is no canonical definition to state claims against.
-/

/-! ## A207217.P12431773136715102268

`A207221(A374004(n+1))`
-/

namespace A207217.P12431773136715102268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A374004 (n + 1)).toNat

end

end A207217.P12431773136715102268

/-! ## A207217.P14971797241560934461

`A207221(A141214(n)+7)`
-/

namespace A207217.P14971797241560934461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A141214 n + 7).toNat

end

end A207217.P14971797241560934461

/-! ## A207217.P16066269826726382964

`A207221(A052905(n)+9)`
-/

namespace A207217.P16066269826726382964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A052905 n + 9).toNat

end

end A207217.P16066269826726382964

/-! ## A207217.P17338942878138931434

`A207221(A055999(n)+10)`
-/

namespace A207217.P17338942878138931434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A055999 n + 10).toNat

end

end A207217.P17338942878138931434

/-! ## A207217.P12331281499879613458

`A207221(A167614(n+2)+1)`
-/

namespace A207217.P12331281499879613458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A167614 (n + 2) + 1).toNat

end

end A207217.P12331281499879613458

/-!
# A207218: Number of nX5 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207218, there is no canonical definition to state claims against.
-/

/-! ## A207218.P13725840241435569983

`A207221(A374005(n+1))`
-/

namespace A207218.P13725840241435569983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A374005 (n + 1)).toNat

end

end A207218.P13725840241435569983

/-! ## A207218.P13521856914639864576

`A207221(eq[7, A066657(n)])`
-/

namespace A207218.P13521856914639864576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207218.P13521856914639864576

/-! ## A207218.P7753907381950374460

`A207221(eq[6, A131818(n+1)])`
-/

namespace A207218.P7753907381950374460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207218.P7753907381950374460

/-! ## A207218.P15891760189630999746

`A207221(A167614(n+2)+A020715(n))`
-/

namespace A207218.P15891760189630999746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A167614 (n + 2) + A020715 n).toNat

end

end A207218.P15891760189630999746

/-! ## A207218.P11100766096659638382

`A207221(Δ[A264443(n)])`
-/

namespace A207218.P11100766096659638382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (f1 (n + 1) - f1 n).toNat

end

end A207218.P11100766096659638382

/-!
# A207219: Number of nX6 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207219, there is no canonical definition to state claims against.
-/

/-! ## A207219.P743047804499445506

`A207221(A374007(n+1))`
-/

namespace A207219.P743047804499445506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A374007 (n + 1)).toNat

end

end A207219.P743047804499445506

/-! ## A207219.P12444839660700177954

`A207221(A052905(n+3))`
-/

namespace A207219.P12444839660700177954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A052905 (n + 3)).toNat

end

end A207219.P12444839660700177954

/-! ## A207219.P919619263997045376

`A207221(eq[5, A193592(n)])`
-/

namespace A207219.P919619263997045376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207219.P919619263997045376

/-! ## A207219.P7442284060796974992

`A207221(Δ[Δ[A006504(n+1)]])`
-/

namespace A207219.P7442284060796974992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (f1 (n + 1) - f1 n).toNat

end

end A207219.P7442284060796974992

/-! ## A207219.P652289754099817562

`A207221(Δ[A023551(n+1)]+1)`
-/

namespace A207219.P652289754099817562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (f1 (n + 1) - f1 n + 1).toNat

end

end A207219.P652289754099817562

/-!
# A207220: Number of nX7 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207220, there is no canonical definition to state claims against.
-/

/-! ## A207220.P14328195312228018442

`A207221(A374008(n+1))`
-/

namespace A207220.P14328195312228018442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (A374008 (n + 1)).toNat

end

end A207220.P14328195312228018442

/-! ## A207220.P8806211441924888186

`A207221(eq[6, A193592(n)])`
-/

namespace A207220.P8806211441924888186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207220.P8806211441924888186

/-! ## A207220.P18204632091698025035

`A207221(Δ[A023551(n+2)])`
-/

namespace A207220.P18204632091698025035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207221 (f1 (n + 1) - f1 n).toNat

end

end A207220.P18204632091698025035

/-!
# A207221: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z z+1 z in any row or column.

The programs for A207221, there is no canonical definition to state claims against.
-/

/-! ## A207221.P17101429328528316827

`or(A207201(n+1), A340999(C(n, 2)))`
-/

namespace A207221.P17101429328528316827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207201 (n + 1)) (A340999 (Nat.choose n 2 + 204))

end

end A207221.P17101429328528316827

/-! ## A207221.P8831798749450192134

`A207201(n+1)+A055641(A098051(n))`
-/

namespace A207221.P8831798749450192134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207201 (n + 1) + A055641 (A098051 n).toNat

end

end A207221.P8831798749450192134

/-! ## A207221.P1694146898305649111

`A340999(A276086(n))+A207201(n+1)`
-/

namespace A207221.P1694146898305649111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A276086 n).toNat + 204) + A207201 (n + 1)

end

end A207221.P1694146898305649111

/-! ## A207221.P7166210454964458781

`or(A010060(A000975(n)), A207201(n+1))`
-/

namespace A207221.P7166210454964458781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A000975 n).toNat) (A207201 (n + 1))

end

end A207221.P7166210454964458781

/-! ## A207221.P14693035431602586999

`or(A000035(A024493(n)), A207201(n+1))`
-/

namespace A207221.P14693035431602586999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A024493 n).toNat) (A207201 (n + 1))

end

end A207221.P14693035431602586999

/-!
# A207222: Number of n X n 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207222, there is no canonical definition to state claims against.
-/

/-! ## A207222.P2154572379464781904

`A207228((n+1)²+n²)`
-/

namespace A207222.P2154572379464781904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 ((n + 1) ^ 2 + n ^ 2)

end

end A207222.P2154572379464781904

/-!
# A207223: Number of nX3 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207223, there is no canonical definition to state claims against.
-/

/-! ## A207223.P11318310837943274662

`A207228(∑[n+2]+4)`
-/

namespace A207223.P11318310837943274662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207223.P11318310837943274662

/-! ## A207223.P2204495537470756548

`or(1, A207228(A167614(n+1)))`
-/

namespace A207223.P2204495537470756548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207228 (A167614 (n + 1)).toNat)

end

end A207223.P2204495537470756548

/-! ## A207223.P17509369195307999936

`record[A073424(n+1)*A207228(n+4)]`
-/

namespace A207223.P17509369195307999936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A207228 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207223.P17509369195307999936

/-! ## A207223.P329104978405089192

`A207228(A046691(n)+7)+A025469(n)`
-/

namespace A207223.P329104978405089192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A046691 n + 7).toNat + A025469 n

end

end A207223.P329104978405089192

/-! ## A207223.P6076947169670230689

`A207228(A167614(n+1))%A207224(n+1)`
-/

namespace A207223.P6076947169670230689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207228 (A167614 (n + 1)).toNat) (A207224 (n + 1))

end

end A207223.P6076947169670230689

/-!
# A207224: Number of nX4 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207224, there is no canonical definition to state claims against.
-/

/-! ## A207224.P6842774804075003202

`A207228(A374004(n+1))`
-/

namespace A207224.P6842774804075003202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A374004 (n + 1)).toNat

end

end A207224.P6842774804075003202

/-! ## A207224.P15103363807071832755

`A207228(A141214(n)+7)`
-/

namespace A207224.P15103363807071832755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A141214 n + 7).toNat

end

end A207224.P15103363807071832755

/-! ## A207224.P660962302506068765

`A207228(A052905(n)+9)`
-/

namespace A207224.P660962302506068765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A052905 n + 9).toNat

end

end A207224.P660962302506068765

/-! ## A207224.P16425022259308181875

`A207228(A167614(n+2)+1)`
-/

namespace A207224.P16425022259308181875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A167614 (n + 2) + 1).toNat

end

end A207224.P16425022259308181875

/-! ## A207224.P12584654290404365627

`A207228(Δ[A264443(n)-n²])`
-/

namespace A207224.P12584654290404365627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (f1 (n + 1) - f1 n).toNat

end

end A207224.P12584654290404365627

/-!
# A207225: Number of nX5 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207225, there is no canonical definition to state claims against.
-/

/-! ## A207225.P20717623428111314

`A207228(A374005(n+1))`
-/

namespace A207225.P20717623428111314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A374005 (n + 1)).toNat

end

end A207225.P20717623428111314

/-! ## A207225.P6428274564079102314

`A207228(A167499(n+3))`
-/

namespace A207225.P6428274564079102314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A167499 (n + 3)).toNat

end

end A207225.P6428274564079102314

/-! ## A207225.P5406344127158762876

`A207228(A155212(n)+13)`
-/

namespace A207225.P5406344127158762876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A155212 n + 13).toNat

end

end A207225.P5406344127158762876

/-! ## A207225.P9349018592766620202

`A207228(A056000(n)+15)`
-/

namespace A207225.P9349018592766620202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A056000 n + 15).toNat

end

end A207225.P9349018592766620202

/-! ## A207225.P4408501963331533875

`A207228(eq[6, A131818(n+1)])`
-/

namespace A207225.P4408501963331533875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207225.P4408501963331533875

/-!
# A207226: Number of nX6 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207226, there is no canonical definition to state claims against.
-/

/-! ## A207226.P16268187059321515910

`A207228(A374007(n+1))`
-/

namespace A207226.P16268187059321515910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A374007 (n + 1)).toNat

end

end A207226.P16268187059321515910

/-! ## A207226.P3669071629990262669

`A207228(Δ[Δ[A006504(n+1)]])`
-/

namespace A207226.P3669071629990262669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (f1 (n + 1) - f1 n).toNat

end

end A207226.P3669071629990262669

/-! ## A207226.P1873553394188842605

`A207228(Δ[A264443(n+1)]-1)`
-/

namespace A207226.P1873553394188842605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (f1 (n + 1) - f1 n - 1).toNat

end

end A207226.P1873553394188842605

/-!
# A207227: Number of nX7 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column or nw-se diagonal.

The programs for A207227, there is no canonical definition to state claims against.
-/

/-! ## A207227.P13562905484458989337

`A207228(A374008(n+1))`
-/

namespace A207227.P13562905484458989337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A374008 (n + 1)).toNat

end

end A207227.P13562905484458989337

/-! ## A207227.P6419161637521074684

`A207228(eq[8, A131818(n+1)])`
-/

namespace A207227.P6419161637521074684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207227.P6419161637521074684

/-! ## A207227.P17005731639865369339

`A207228(A055999(n+4))`
-/

namespace A207227.P17005731639865369339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (A055999 (n + 4)).toNat

end

end A207227.P17005731639865369339

/-! ## A207227.P11528845184142101956

`A207228(eq[6, A193592(n)])`
-/

namespace A207227.P11528845184142101956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207227.P11528845184142101956

/-!
# A207229: Number of n X n 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207229, there is no canonical definition to state claims against.
-/

/-! ## A207229.P1328955878412266919

`A207235((n+1)²+n²)`
-/

namespace A207229.P1328955878412266919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 ((n + 1) ^ 2 + n ^ 2)

end

end A207229.P1328955878412266919

/-!
# A207230: Number of nX3 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207230, there is no canonical definition to state claims against.
-/

/-! ## A207230.P1448558205781310087

`A207235(∑[n+2]+4)`
-/

namespace A207230.P1448558205781310087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207230.P1448558205781310087

/-! ## A207230.P7301524746846209118

`or(1, A207235(A167614(n+1)))`
-/

namespace A207230.P7301524746846209118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207235 (A167614 (n + 1)).toNat)

end

end A207230.P7301524746846209118

/-! ## A207230.P3167661920687680300

`A207235(A046691(n)+7)+A025469(n)`
-/

namespace A207230.P3167661920687680300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A046691 n + 7).toNat + A025469 n

end

end A207230.P3167661920687680300

/-! ## A207230.P5371775517589345284

`A001222(A006005(n+2))*A207235(A046691(n)+7)`
-/

namespace A207230.P5371775517589345284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006005 (n + 2)).toNat * A207235 (A046691 n + 7).toNat

end

end A207230.P5371775517589345284

/-! ## A207230.P10933615275630361529

`A054977(A194899(n+1)²)*A207235(A046691(n)+7)`
-/

namespace A207230.P10933615275630361529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A194899 (n + 1) ^ 2).toNat * A207235 (A046691 n + 7).toNat

end

end A207230.P10933615275630361529

/-!
# A207231: Number of nX4 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207231, there is no canonical definition to state claims against.
-/

/-! ## A207231.P14620972342926076256

`A207235(A374004(n+1))`
-/

namespace A207231.P14620972342926076256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A374004 (n + 1)).toNat

end

end A207231.P14620972342926076256

/-! ## A207231.P8435946937878380789

`A207235(A055999(n)+10)`
-/

namespace A207231.P8435946937878380789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A055999 n + 10).toNat

end

end A207231.P8435946937878380789

/-! ## A207231.P10408717120767396105

`A207235(A167614(n+2)+1)`
-/

namespace A207231.P10408717120767396105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A167614 (n + 2) + 1).toNat

end

end A207231.P10408717120767396105

/-! ## A207231.P10292339862497825583

`A207235(eq[5, A131818(n+1)])`
-/

namespace A207231.P10292339862497825583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207231.P10292339862497825583

/-! ## A207231.P10690838573541120935

`A207235(Δ[A023545(n+1)-n²])`
-/

namespace A207231.P10690838573541120935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (f1 (n + 1) - f1 n).toNat

end

end A207231.P10690838573541120935

/-!
# A207232: Number of nX5 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207232, there is no canonical definition to state claims against.
-/

/-! ## A207232.P3112374888737841115

`A207235(A374005(n+1))`
-/

namespace A207232.P3112374888737841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A374005 (n + 1)).toNat

end

end A207232.P3112374888737841115

/-! ## A207232.P17590847874096454131

`A207235(eq[6, A131818(n+1)])`
-/

namespace A207232.P17590847874096454131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207232.P17590847874096454131

/-! ## A207232.P13913835637935868578

`A207235(A046691(n+3))`
-/

namespace A207232.P13913835637935868578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A046691 (n + 3)).toNat

end

end A207232.P13913835637935868578

/-! ## A207232.P5882521410160128891

`A207235(Δ[A023545(n+1)])`
-/

namespace A207232.P5882521410160128891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (f1 (n + 1) - f1 n).toNat

end

end A207232.P5882521410160128891

/-! ## A207232.P1133807297670232984

`A207235(eq[5, A200370(n+1)])`
-/

namespace A207232.P1133807297670232984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207232.P1133807297670232984

/-!
# A207233: Number of nX6 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207233, there is no canonical definition to state claims against.
-/

/-! ## A207233.P10761003875701933364

`A207235(A374007(n+1))`
-/

namespace A207233.P10761003875701933364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A374007 (n + 1)).toNat

end

end A207233.P10761003875701933364

/-! ## A207233.P15059965864798431116

`A207235(eq[7, A131818(n+1)])`
-/

namespace A207233.P15059965864798431116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207233.P15059965864798431116

/-! ## A207233.P17887657022248457149

`A207235(A052905(n+3))`
-/

namespace A207233.P17887657022248457149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A052905 (n + 3)).toNat

end

end A207233.P17887657022248457149

/-! ## A207233.P10373001062112507382

`A207235(eq[6, A200370(n+1)])`
-/

namespace A207233.P10373001062112507382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207233.P10373001062112507382

/-! ## A207233.P6233146266581095796

`A207235(Δ[Δ[A006504(n+1)]])`
-/

namespace A207233.P6233146266581095796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (f1 (n + 1) - f1 n).toNat

end

end A207233.P6233146266581095796

/-!
# A207234: Number of nX7 0..2 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207234, there is no canonical definition to state claims against.
-/

/-! ## A207234.P12961969754363820893

`A207235(A374008(n+1))`
-/

namespace A207234.P12961969754363820893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (A374008 (n + 1)).toNat

end

end A207234.P12961969754363820893

/-! ## A207234.P12906394312558552986

`A207235(eq[7, A200370(n+1)])`
-/

namespace A207234.P12906394312558552986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207235 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207234.P12906394312558552986

/-!
# A207236: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207236, there is no canonical definition to state claims against.
-/

/-! ## A207236.P3688289925883427370

`A207242(∑[4*n]+1)`
-/

namespace A207236.P3688289925883427370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207236.P3688289925883427370

/-! ## A207236.P8400222018176028749

`record[A207242(Δ[A079824(n+1)])]`
-/

namespace A207236.P8400222018176028749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207236.P8400222018176028749

/-! ## A207236.P3579736939004378709

`record[A003982(n)*A207242(n+1)]`
-/

namespace A207236.P3579736939004378709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207236.P3579736939004378709

/-! ## A207236.P2621042780062793406

`record[root(A207242(n+1), A143182(n))]`
-/

namespace A207236.P2621042780062793406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207242 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207236.P2621042780062793406

/-! ## A207236.P863241611373087293

`record[gcd(A114327(n), A207242(n+1))]`
-/

namespace A207236.P863241611373087293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207236.P863241611373087293

/-!
# A207237: Number of nX3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207237, there is no canonical definition to state claims against.
-/

/-! ## A207237.P8170533795152804351

`A208164(∑[n+3]+1)`
-/

namespace A207237.P8170533795152804351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207237.P8170533795152804351

/-! ## A207237.P12926654702002939239

`or(char[3], A208164(A034856(n+2)))`
-/

namespace A207237.P12926654702002939239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208164 (A034856 (n + 2)).toNat)

end

end A207237.P12926654702002939239

/-! ## A207237.P5333237823818265939

`A208164(Δ[A008778(n)])%A257354(n+1)`
-/

namespace A207237.P5333237823818265939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208164 (f1 (n + 1) - f1 n).toNat) (A257354 (n + 1))

end

end A207237.P5333237823818265939

/-! ## A207237.P12781443306408927975

`A208164(A034856(n+2))%A208161(n+1)`
-/

namespace A207237.P12781443306408927975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208164 (A034856 (n + 2)).toNat) (A208161 (n + 1))

end

end A207237.P12781443306408927975

/-! ## A207237.P13177589030774273787

`A138342(2*n+1)*A208164(A034856(n+2))`
-/

namespace A207237.P13177589030774273787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (2 * n + 1) * A208164 (A034856 (n + 2)).toNat

end

end A207237.P13177589030774273787

/-!
# A207238: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207238, there is no canonical definition to state claims against.
-/

/-! ## A207238.P17856227971933106144

`A207242(A141214(n+1))`
-/

namespace A207238.P17856227971933106144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A141214 (n + 1)).toNat

end

end A207238.P17856227971933106144

/-! ## A207238.P16072299530478825097

`A207242(A027379(n+2))`
-/

namespace A207238.P16072299530478825097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A027379 (n + 2)).toNat

end

end A207238.P16072299530478825097

/-! ## A207238.P11918268110782966423

`A207242(A155212(n)+5)`
-/

namespace A207238.P11918268110782966423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A155212 n + 5).toNat

end

end A207238.P11918268110782966423

/-! ## A207238.P7993580549150829604

`A207242(Δ[A006503(n+1)])`
-/

namespace A207238.P7993580549150829604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (f1 (n + 1) - f1 n).toNat

end

end A207238.P7993580549150829604

/-! ## A207238.P16853846535348220057

`A207242(A046691(n+2)+1)`
-/

namespace A207238.P16853846535348220057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A046691 (n + 2) + 1).toNat

end

end A207238.P16853846535348220057

/-!
# A207239: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207239, there is no canonical definition to state claims against.
-/

/-! ## A207239.P14160223661876757568

`A207242(A046691(n+3))`
-/

namespace A207239.P14160223661876757568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A046691 (n + 3)).toNat

end

end A207239.P14160223661876757568

/-! ## A207239.P13019468749597273659

`A207242(A060577(n+4))`
-/

namespace A207239.P13019468749597273659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A060577 (n + 4)).toNat

end

end A207239.P13019468749597273659

/-! ## A207239.P16519052256942172772

`A207242(Δ[A023545(n+1)])`
-/

namespace A207239.P16519052256942172772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (f1 (n + 1) - f1 n).toNat

end

end A207239.P16519052256942172772

/-! ## A207239.P9172495888152630456

`A207242(A000217(n+5)-4)`
-/

namespace A207239.P9172495888152630456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 5) - 4).toNat

end

end A207239.P9172495888152630456

/-! ## A207239.P3669590239142065363

`A207242(A000124(n+5)-5)`
-/

namespace A207239.P3669590239142065363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000124 (n + 5) - 5).toNat

end

end A207239.P3669590239142065363

/-!
# A207240: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207240, there is no canonical definition to state claims against.
-/

/-! ## A207240.P10099559103754972292

`A207242(A027379(n+4)-2)`
-/

namespace A207240.P10099559103754972292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A027379 (n + 4) - 2).toNat

end

end A207240.P10099559103754972292

/-! ## A207240.P6692083717868372389

`A207242(A000096(n+5)-4)`
-/

namespace A207240.P6692083717868372389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000096 (n + 5) - 4).toNat

end

end A207240.P6692083717868372389

/-! ## A207240.P12627833425426958767

`A207242(A000217(n+6)-5)`
-/

namespace A207240.P12627833425426958767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 6) - 5).toNat

end

end A207240.P12627833425426958767

/-! ## A207240.P3807935835585323846

`A207242(A000124(n+6)-6)`
-/

namespace A207240.P3807935835585323846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000124 (n + 6) - 6).toNat

end

end A207240.P3807935835585323846

/-! ## A207240.P4347446010799296681

`A207242(Δ[A023551(n+1)]+1)`
-/

namespace A207240.P4347446010799296681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (f1 (n + 1) - f1 n + 1).toNat

end

end A207240.P4347446010799296681

/-!
# A207241: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207241, there is no canonical definition to state claims against.
-/

/-! ## A207241.P3201276792624854033

`A207242(A055999(n+4))`
-/

namespace A207241.P3201276792624854033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A055999 (n + 4)).toNat

end

end A207241.P3201276792624854033

/-! ## A207241.P16674977042429120135

`A207242(Δ[A023551(n+2)])`
-/

namespace A207241.P16674977042429120135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (f1 (n + 1) - f1 n).toNat

end

end A207241.P16674977042429120135

/-! ## A207241.P6296267521774607369

`A207242(A000096(n+6)-5)`
-/

namespace A207241.P6296267521774607369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000096 (n + 6) - 5).toNat

end

end A207241.P6296267521774607369

/-! ## A207241.P11059694757971714272

`A207242(A133263(n+7)-8)`
-/

namespace A207241.P11059694757971714272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A133263 (n + 7) - 8).toNat

end

end A207241.P11059694757971714272

/-! ## A207241.P2680165898715805122

`A207242(A000217(n+6)+n+1)`
-/

namespace A207241.P2680165898715805122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207241.P2680165898715805122

/-!
# A207242: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207242, there is no canonical definition to state claims against.
-/

/-! ## A207242.P17376682566024448042

`A207500(n+1)-A185264(A324362(n))`
-/

namespace A207242.P17376682566024448042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (n + 1) - A185264 (A324362 n).toNat

end

end A207242.P17376682566024448042

/-! ## A207242.P4634541505634519754

`A207500(A007966(n²)+1)`
-/

namespace A207242.P4634541505634519754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (A007966 (n ^ 2) + 1).toNat

end

end A207242.P4634541505634519754

/-! ## A207242.P17785885371759459034

`A207500(n+1)%A029873(n)`
-/

namespace A207242.P17785885371759459034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207500 (n + 1)) (A029873 n)

end

end A207242.P17785885371759459034

/-! ## A207242.P14013337637387819399

`A207500(C(A269171(n+1), n))`
-/

namespace A207242.P14013337637387819399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (Nat.choose (A269171 (n + 1)).toNat n)

end

end A207242.P14013337637387819399

/-! ## A207242.P9662122197702048445

`A207500(n+1)+A010054(A121037(n+1))`
-/

namespace A207242.P9662122197702048445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (n + 1) + A010054 (A121037 (n + 1)).toNat

end

end A207242.P9662122197702048445

/-!
# A207243: Number of 3Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207243, there is no canonical definition to state claims against.
-/

/-! ## A207243.P18282707863637507283

`A207242(∑[n+2]+4)`
-/

namespace A207243.P18282707863637507283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207243.P18282707863637507283

/-! ## A207243.P11974219144123280832

`A207242(A167614(n+1))+A025466(n)`
-/

namespace A207243.P11974219144123280832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 1)).toNat + A025466 n

end

end A207243.P11974219144123280832

/-! ## A207243.P3617030878785146897

`A207242(A167614(n+1))+A185284(n)`
-/

namespace A207243.P3617030878785146897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 1)).toNat + A185284 n

end

end A207243.P3617030878785146897

/-! ## A207243.P12394077061335953524

`A207242(A167614(n+1))%A017033(n)`
-/

namespace A207243.P12394077061335953524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207242 (A167614 (n + 1)).toNat) (A017033 n)

end

end A207243.P12394077061335953524

/-! ## A207243.P14456407191312945750

`lcm(A155040(n), A207242(A167614(n+1)))`
-/

namespace A207243.P14456407191312945750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A207242 (A167614 (n + 1)).toNat)

end

end A207243.P14456407191312945750

/-!
# A207244: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207244, there is no canonical definition to state claims against.
-/

/-! ## A207244.P3351802929079493965

`A207242(A145018(n+4))`
-/

namespace A207244.P3351802929079493965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A145018 (n + 4)).toNat

end

end A207244.P3351802929079493965

/-! ## A207244.P133551518538517756

`A207242(A141214(n)+7)`
-/

namespace A207244.P133551518538517756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A141214 n + 7).toNat

end

end A207244.P133551518538517756

/-! ## A207244.P7526917291737611613

`A207242(A055999(n)+10)`
-/

namespace A207244.P7526917291737611613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A055999 n + 10).toNat

end

end A207244.P7526917291737611613

/-! ## A207244.P13994823256440619365

`A207242(A167614(n+2)+1)`
-/

namespace A207244.P13994823256440619365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 2) + 1).toNat

end

end A207244.P13994823256440619365

/-! ## A207244.P6860155179660981541

`A207242(A112355(n+1)+4)`
-/

namespace A207244.P6860155179660981541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A112355 (n + 1) + 4).toNat

end

end A207244.P6860155179660981541

/-!
# A207245: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207245, there is no canonical definition to state claims against.
-/

/-! ## A207245.P8215382811103924573

`A207242(A167499(n+3))`
-/

namespace A207245.P8215382811103924573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167499 (n + 3)).toNat

end

end A207245.P8215382811103924573

/-! ## A207245.P4279546445451464347

`A207242(A000124(n+4)+4)`
-/

namespace A207245.P4279546445451464347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000124 (n + 4) + 4).toNat

end

end A207245.P4279546445451464347

/-! ## A207245.P9715992950014085

`A207242(A000217(n+4)+5)`
-/

namespace A207245.P9715992950014085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 4) + 5).toNat

end

end A207245.P9715992950014085

/-! ## A207245.P5694893112032878938

`A207242(C(A020715(n), 2)-n)`
-/

namespace A207245.P5694893112032878938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (Nat.choose (A020715 n).toNat 2 - n)

end

end A207245.P5694893112032878938

/-! ## A207245.P9125766028120972953

`A207242(A167614(n+2)+n+6)`
-/

namespace A207245.P9125766028120972953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A207245.P9125766028120972953

/-!
# A207246: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207246, there is no canonical definition to state claims against.
-/

/-! ## A207246.P15381401986441673436

`A207242(A166136(n+4))`
-/

namespace A207246.P15381401986441673436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A166136 (n + 4)).toNat

end

end A207246.P15381401986441673436

/-! ## A207246.P7154414808321975538

`A207242(A167614(n+4)+3)`
-/

namespace A207246.P7154414808321975538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 4) + 3).toNat

end

end A207246.P7154414808321975538

/-! ## A207246.P4858638573560190266

`A207242(A000124(n+5)+5)`
-/

namespace A207246.P4858638573560190266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000124 (n + 5) + 5).toNat

end

end A207246.P4858638573560190266

/-! ## A207246.P4321330283989938319

`A207242(A000217(n+5)+6)`
-/

namespace A207246.P4321330283989938319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 5) + 6).toNat

end

end A207246.P4321330283989938319

/-! ## A207246.P10108981261662914342

`A207242(A020715(C(n+6, 2)))`
-/

namespace A207246.P10108981261662914342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A020715 (Nat.choose (n + 6) 2)).toNat

end

end A207246.P10108981261662914342

/-!
# A207247: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207247, there is no canonical definition to state claims against.
-/

/-! ## A207247.P10990273080321527575

`A207242(A167487(n+5))`
-/

namespace A207247.P10990273080321527575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167487 (n + 5)).toNat

end

end A207247.P10990273080321527575

/-! ## A207247.P12643203085890004344

`A207242(A167614(n+5)+4)`
-/

namespace A207247.P12643203085890004344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A167614 (n + 5) + 4).toNat

end

end A207247.P12643203085890004344

/-! ## A207247.P4414257745375138721

`A207242(A000217(n+6)+7)`
-/

namespace A207247.P4414257745375138721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A000217 (n + 6) + 7).toNat

end

end A207247.P4414257745375138721

/-! ## A207247.P3608411441129960316

`A207242(A052905(n+3)+12)`
-/

namespace A207247.P3608411441129960316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A052905 (n + 3) + 12).toNat

end

end A207247.P3608411441129960316

/-! ## A207247.P12743412546124838500

`A207242(A016777(n+8)+∑[n+3])`
-/

namespace A207247.P12743412546124838500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (A016777 (n + 8) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A207247.P12743412546124838500

/-!
# A207248: Number of n X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207248, there is no canonical definition to state claims against.
-/

/-! ## A207248.P3875699342338756140

`A207254((n+1)²+n²)`
-/

namespace A207248.P3875699342338756140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 ((n + 1) ^ 2 + n ^ 2)

end

end A207248.P3875699342338756140

/-! ## A207248.P7040987714131751326

`lcm(2, A207254(A001844(n)))`
-/

namespace A207248.P7040987714131751326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207254 (A001844 n).toNat)

end

end A207248.P7040987714131751326

/-! ## A207248.P1100995699391106357

`record[A003982(n)*A207254(n+1)]`
-/

namespace A207248.P1100995699391106357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207248.P1100995699391106357

/-! ## A207248.P10284298212930199137

`record[gcd(A166405(n), A207254(n+1))]`
-/

namespace A207248.P10284298212930199137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166405 n) (A207254 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207248.P10284298212930199137

/-! ## A207248.P12300119655577302759

`gcd(A000038(n), A207254(A001844(n)))`
-/

namespace A207248.P12300119655577302759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207254 (A001844 n).toNat)

end

end A207248.P12300119655577302759

/-!
# A207249: Number of n X 3 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207249, the canonical program `A207249.P9404039459940817354` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207249 has offset 1).

The definition of A207249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207249.P6497993152377687611

`ogf((6+24x+6x^2+22x^3+42x^4-6x^5-6x^7)/(1-2x-4x^2-7x^4-8x^5+x^8))`
-/

namespace A207249.P6497993152377687611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 6, 22, 42, -6, 0, -6] [1, -2, -4, 0, -7, -8, 0, 0, 1] n

end

end A207249.P6497993152377687611

namespace A207249

/-- `ogf((6+24x+6x^2+22x^3+42x^4-6x^5-6x^7)/(1-2x-4x^2-7x^4-8x^5+x^8))` -/
def P6497993152377687611.Spec : Prop :=
  ∀ n, P6497993152377687611.a n = A207249 (n + 1)

end A207249

/-! ## A207249.P9404039459940817354

`sqrt(A206981(n+1))*sqrt(A207854(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207249

/-- `sqrt(A206981(n+1))*sqrt(A207854(n+1))` -/
def P9404039459940817354.Spec : Prop :=
  ∀ n, P9404039459940817354.a n = (A207249 (n + 1) : ℝ)

end A207249

/-! ## A207249.P9212823106485556708

`sqrt(A206981(n+1)*A207854(n+1))`
-/

namespace A207249.P9212823106485556708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A207854 (n + 1) : ℝ)

end

end A207249.P9212823106485556708

namespace A207249

/-- `sqrt(A206981(n+1)*A207854(n+1))` -/
def P9212823106485556708.Spec : Prop :=
  ∀ n, P9212823106485556708.a n = (A207249 (n + 1) : ℝ)

end A207249

/-! ## A207249.P11989381205735657705

`A207254(∑[n+3]+1)`
-/

namespace A207249.P11989381205735657705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207249.P11989381205735657705

namespace A207249

/-- `A207254(∑[n+3]+1)` -/
def P11989381205735657705.Spec : Prop :=
  ∀ n, P11989381205735657705.a n = A207249 (n + 1)

end A207249

/-! ## A207249.P8920518283206104957

`A207808(∑[n+3]+1)`
-/

namespace A207249.P8920518283206104957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207249.P8920518283206104957

namespace A207249

/-- `A207808(∑[n+3]+1)` -/
def P8920518283206104957.Spec : Prop :=
  ∀ n, P8920518283206104957.a n = A207249 (n + 1)

end A207249

/-!
# A207250: Number of n X 4 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207250, the canonical program `A207250.P11170784498866221785` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207250 has offset 1).

The definition of A207250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207250.P14841541572883523915

`ogf((8+48x+32x^2+44x^3+152x^4+40x^5-40x^6-24x^7-16x^8+8x^9)/(1-2x-7x^2-2x^3-13x^4-27x^5-8x^6+4x^7+4x^8+2x^9-x^10))`
-/

namespace A207250.P14841541572883523915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 48, 32, 44, 152, 40, -40, -24, -16, 8] [1, -2, -7, -2, -13, -27, -8, 4, 4, 2, -1] n

end

end A207250.P14841541572883523915

namespace A207250

/-- `ogf((8+48x+32x^2+44x^3+152x^4+40x^5-40x^6-24x^7-16x^8+8x^9)/(1-2x-7x^2-2x^3-13x^4-27x^5-8x^6+4x^7+4x^8+2x^9-x^10))` -/
def P14841541572883523915.Spec : Prop :=
  ∀ n, P14841541572883523915.a n = A207250 (n + 1)

end A207250

/-! ## A207250.P11170784498866221785

`sqrt(A206981(n+1))*sqrt(A207947(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A207250

/-- `sqrt(A206981(n+1))*sqrt(A207947(n+1))` -/
def P11170784498866221785.Spec : Prop :=
  ∀ n, P11170784498866221785.a n = (A207250 (n + 1) : ℝ)

end A207250

/-! ## A207250.P15633129946211206402

`sqrt(A206981(n+1)*A207947(n+1))`
-/

namespace A207250.P15633129946211206402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206981 (n + 1) * A207947 (n + 1) : ℝ)

end

end A207250.P15633129946211206402

namespace A207250

/-- `sqrt(A206981(n+1)*A207947(n+1))` -/
def P15633129946211206402.Spec : Prop :=
  ∀ n, P15633129946211206402.a n = (A207250 (n + 1) : ℝ)

end A207250

/-! ## A207250.P9702873483774153504

`A207254(A027379(n+2))`
-/

namespace A207250.P9702873483774153504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A027379 (n + 2)).toNat

end

end A207250.P9702873483774153504

namespace A207250

/-- `A207254(A027379(n+2))` -/
def P9702873483774153504.Spec : Prop :=
  ∀ n, P9702873483774153504.a n = A207250 (n + 1)

end A207250

/-! ## A207250.P17687719437055074241

`A207254(A155212(n)+5)`
-/

namespace A207250.P17687719437055074241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A155212 n + 5).toNat

end

end A207250.P17687719437055074241

namespace A207250

/-- `A207254(A155212(n)+5)` -/
def P17687719437055074241.Spec : Prop :=
  ∀ n, P17687719437055074241.a n = A207250 (n + 1)

end A207250

/-!
# A207251: Number of nX5 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207251, there is no canonical definition to state claims against.
-/

/-! ## A207251.P10468210961267964856

`A207249(n+1)/A207946(n+1)*A207948(n+1)`
-/

namespace A207251.P10468210961267964856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207249 (n + 1) : ℚ) / (A207946 (n + 1) : ℚ) * (A207948 (n + 1) : ℚ)

end

end A207251.P10468210961267964856

/-! ## A207251.P2070977104842069931

`A207254(∑[n+5]+6)`
-/

namespace A207251.P2070977104842069931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207251.P2070977104842069931

/-! ## A207251.P11047068609035420176

`A207254(A046691(n+3))%A208290(n+1)`
-/

namespace A207251.P11047068609035420176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207254 (A046691 (n + 3)).toNat) (A208290 (n + 1))

end

end A207251.P11047068609035420176

/-! ## A207251.P4877292466959280985

`A207254(Δ[A023545(n+1)])%A208290(n+1)`
-/

namespace A207251.P4877292466959280985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207254 (f1 (n + 1) - f1 n).toNat) (A208290 (n + 1))

end

end A207251.P4877292466959280985

/-! ## A207251.P10742572351956265389

`A207254(A046691(n+3))+A127773(3*n+5)`
-/

namespace A207251.P10742572351956265389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A046691 (n + 3)).toNat + A127773 (3 * n + 5)

end

end A207251.P10742572351956265389

/-!
# A207252: Number of nX6 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207252, there is no canonical definition to state claims against.
-/

/-! ## A207252.P8524550540484603848

`A207254(A052905(n+3))`
-/

namespace A207252.P8524550540484603848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A052905 (n + 3)).toNat

end

end A207252.P8524550540484603848

/-! ## A207252.P1983685546639394853

`A207254(A000096(n+5)-4)`
-/

namespace A207252.P1983685546639394853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000096 (n + 5) - 4).toNat

end

end A207252.P1983685546639394853

/-! ## A207252.P17713773719929450686

`A207254(A000124(n+6)-6)`
-/

namespace A207252.P17713773719929450686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000124 (n + 6) - 6).toNat

end

end A207252.P17713773719929450686

/-! ## A207252.P2566327102557423100

`A207254(Δ[Δ[A006504(n+1)]])`
-/

namespace A207252.P2566327102557423100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (f1 (n + 1) - f1 n).toNat

end

end A207252.P2566327102557423100

/-! ## A207252.P12855515032376888959

`A207254(Δ[A023545(n+2)]-1)`
-/

namespace A207252.P12855515032376888959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (f1 (n + 1) - f1 n - 1).toNat

end

end A207252.P12855515032376888959

/-!
# A207253: Number of nX7 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207253, there is no canonical definition to state claims against.
-/

/-! ## A207253.P12154899579985954393

`A207254(A046691(n+5)-2)`
-/

namespace A207253.P12154899579985954393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A046691 (n + 5) - 2).toNat

end

end A207253.P12154899579985954393

/-! ## A207253.P15669925893493596937

`A207254(A000096(n+6)-5)`
-/

namespace A207253.P15669925893493596937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000096 (n + 6) - 5).toNat

end

end A207253.P15669925893493596937

/-! ## A207253.P8122502464009155973

`A207254(A000217(n+7)-6)`
-/

namespace A207253.P8122502464009155973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000217 (n + 7) - 6).toNat

end

end A207253.P8122502464009155973

/-! ## A207253.P11892613446514292058

`A207254(A000124(n+7)-7)`
-/

namespace A207253.P11892613446514292058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000124 (n + 7) - 7).toNat

end

end A207253.P11892613446514292058

/-! ## A207253.P16565525619701886733

`A207254(Δ[n²]+A000217(n+5)+6)`
-/

namespace A207253.P16565525619701886733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A207253.P16565525619701886733

/-!
# A207254: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207254, there is no canonical definition to state claims against.
-/

/-! ## A207254.P9070325504312764154

`A208287(A038722(n+1)%A050680(n+1))`
-/

namespace A207254.P9070325504312764154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208287 (Int.tmod (A038722 (n + 1)) (A050680 (n + 1))).toNat

end

end A207254.P9070325504312764154

/-! ## A207254.P1002477541868498884

`A208287(A038722(n+1))%A068150(n+1)`
-/

namespace A207254.P1002477541868498884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208287 (A038722 (n + 1)).toNat) (A068150 (n + 1))

end

end A207254.P1002477541868498884

/-! ## A207254.P13038042770928797656

`A208287(A038722(n+1))%A247135(A000032(n))`
-/

namespace A207254.P13038042770928797656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208287 (A038722 (n + 1)).toNat) (A247135 (A000032 n).toNat)

end

end A207254.P13038042770928797656

/-! ## A207254.P4402880867224904071

`A014963(A158117(n))*A208287(A038722(n+1))`
-/

namespace A207254.P4402880867224904071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158117 n).toNat * A208287 (A038722 (n + 1)).toNat

end

end A207254.P4402880867224904071

/-! ## A207254.P17352220416378383322

`A001222(A289154(n))*A208287(A038722(n+1))`
-/

namespace A207254.P17352220416378383322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289154 n).toNat * A208287 (A038722 (n + 1)).toNat

end

end A207254.P17352220416378383322

/-!
# A207255: Number of 4 X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207255, the canonical program `A207255.P3870769650535886976` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207255 has offset 1).

The definition of A207255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207255.P16618665985452970512

`ogf((10+50x-30x^2-10x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A207255.P16618665985452970512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 50, -30, -10] [1, -5, 10, -10, 5, -1] n

end

end A207255.P16618665985452970512

namespace A207255

/-- `ogf((10+50x-30x^2-10x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16618665985452970512.Spec : Prop :=
  ∀ n, P16618665985452970512.a n = A207255 (n + 1)

end A207255

/-! ## A207255.P65020011692717140

`5/6*(n+1)^4+35/3*(n+1)^3-5/6*(n+1)²-5/3*(n+1)`
-/

namespace A207255.P65020011692717140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 6 * ((n + 1) ^ 4 : ℚ) + (35 : ℚ) / 3 * ((n + 1) ^ 3 : ℚ) - (5 : ℚ) / 6 * ((n + 1) ^ 2 : ℚ) - (5 : ℚ) / 3 * (n + 1 : ℚ)

end

end A207255.P65020011692717140

namespace A207255

/-- `5/6*(n+1)^4+35/3*(n+1)^3-5/6*(n+1)²-5/3*(n+1)` -/
def P65020011692717140.Spec : Prop :=
  ∀ n, P65020011692717140.a n = (A207255 (n + 1) : ℚ)

end A207255

/-! ## A207255.P3870769650535886976

`∑[10*(∑[A028563(n)]+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207255

/-- `∑[10*(∑[A028563(n)]+1)]` -/
def P3870769650535886976.Spec : Prop :=
  ∀ n, P3870769650535886976.a n = A207255 (n + 1)

theorem P3870769650535886976.correct : P3870769650535886976.Spec := by
  intro n
  simp only [A207255, Nat.add_sub_cancel]

end A207255

/-! ## A207255.P1992215826510492366

`10*(A050509(n)+A002415(n))`
-/

namespace A207255.P1992215826510492366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A050509 n + A002415 n)

end

end A207255.P1992215826510492366

namespace A207255

/-- `10*(A050509(n)+A002415(n))` -/
def P1992215826510492366.Spec : Prop :=
  ∀ n, P1992215826510492366.a n = A207255 (n + 1)

end A207255

/-! ## A207255.P12551846655456001499

`10*(∑[A000447(n+1)]-A000537(n))`
-/

namespace A207255.P12551846655456001499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j - A000537 n)

end

end A207255.P12551846655456001499

namespace A207255

/-- `10*(∑[A000447(n+1)]-A000537(n))` -/
def P12551846655456001499.Spec : Prop :=
  ∀ n, P12551846655456001499.a n = A207255 (n + 1)

end A207255

/-! ## A207255.P15587855098341691881

`∑[10*(A000447(n+1)-A000578(n))]`
-/

namespace A207255.P15587855098341691881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A000447 (n + 1) - A000578 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207255.P15587855098341691881

namespace A207255

/-- `∑[10*(A000447(n+1)-A000578(n))]` -/
def P15587855098341691881.Spec : Prop :=
  ∀ n, P15587855098341691881.a n = A207255 (n + 1)

end A207255

/-! ## A207255.P3407716266052791354

`10*(A001752(2*n)-A000537(n))`
-/

namespace A207255.P3407716266052791354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A001752 (2 * n) - A000537 n)

end

end A207255.P3407716266052791354

namespace A207255

/-- `10*(A001752(2*n)-A000537(n))` -/
def P3407716266052791354.Spec : Prop :=
  ∀ n, P3407716266052791354.a n = A207255 (n + 1)

end A207255

/-!
# A207256: Number of 5 X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207256, the canonical program `A207256.P5268460493750723255` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207256 has offset 1).

The definition of A207256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207256.P5268460493750723255

`ogf((16+160x-64x^2-96x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207256

/-- `ogf((16+160x-64x^2-96x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P5268460493750723255.Spec : Prop :=
  ∀ n, P5268460493750723255.a n = A207256 (n + 1)

theorem P5268460493750723255.correct : P5268460493750723255.Spec := by
  intro n
  simp only [A207256, Nat.add_sub_cancel]

end A207256

/-! ## A207256.P15470981770847218017

`A207254(A167499(n+3))`
-/

namespace A207256.P15470981770847218017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A167499 (n + 3)).toNat

end

end A207256.P15470981770847218017

namespace A207256

/-- `A207254(A167499(n+3))` -/
def P15470981770847218017.Spec : Prop :=
  ∀ n, P15470981770847218017.a n = A207256 (n + 1)

end A207256

/-! ## A207256.P12187271431579057781

`A207254(A167614(n+3)+2)`
-/

namespace A207256.P12187271431579057781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A167614 (n + 3) + 2).toNat

end

end A207256.P12187271431579057781

namespace A207256

/-- `A207254(A167614(n+3)+2)` -/
def P12187271431579057781.Spec : Prop :=
  ∀ n, P12187271431579057781.a n = A207256 (n + 1)

end A207256

/-! ## A207256.P3830957229358439497

`A207254(A000124(n+4)+4)`
-/

namespace A207256.P3830957229358439497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000124 (n + 4) + 4).toNat

end

end A207256.P3830957229358439497

namespace A207256

/-- `A207254(A000124(n+4)+4)` -/
def P3830957229358439497.Spec : Prop :=
  ∀ n, P3830957229358439497.a n = A207256 (n + 1)

end A207256

/-! ## A207256.P6372241520728681150

`A207254(A000096(n+3)+6)`
-/

namespace A207256.P6372241520728681150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000096 (n + 3) + 6).toNat

end

end A207256.P6372241520728681150

namespace A207256

/-- `A207254(A000096(n+3)+6)` -/
def P6372241520728681150.Spec : Prop :=
  ∀ n, P6372241520728681150.a n = A207256 (n + 1)

end A207256

/-!
# A207257: Number of 6 X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207257, there is no canonical definition to state claims against.
-/

/-! ## A207257.P7755727635260768209

`A207254(A167614(n+4)+3)`
-/

namespace A207257.P7755727635260768209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A167614 (n + 4) + 3).toNat

end

end A207257.P7755727635260768209

/-! ## A207257.P12734921037911162311

`A207254(A000096(n+4)+7)`
-/

namespace A207257.P12734921037911162311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000096 (n + 4) + 7).toNat

end

end A207257.P12734921037911162311

/-! ## A207257.P507690881477306333

`A207254(A000217(n+5)+6)`
-/

namespace A207257.P507690881477306333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000217 (n + 5) + 6).toNat

end

end A207257.P507690881477306333

/-! ## A207257.P2298845118007919153

`A207254(Δ[A023545(n+1)]+10)`
-/

namespace A207257.P2298845118007919153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (f1 (n + 1) - f1 n + 10).toNat

end

end A207257.P2298845118007919153

/-! ## A207257.P7249248275302799428

`A207254(A055999(n+4)-A005408(n))`
-/

namespace A207257.P7249248275302799428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A055999 (n + 4) - A005408 n).toNat

end

end A207257.P7249248275302799428

/-!
# A207258: Number of 7 X n 0..1 arrays avoiding 0 0 1 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207258, there is no canonical definition to state claims against.
-/

/-! ## A207258.P6597302946627758597

`A207254(A000096(n+5)+8)`
-/

namespace A207258.P6597302946627758597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000096 (n + 5) + 8).toNat

end

end A207258.P6597302946627758597

/-! ## A207258.P477259466263102847

`A207254(A000217(n+6)+7)`
-/

namespace A207258.P477259466263102847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A000217 (n + 6) + 7).toNat

end

end A207258.P477259466263102847

/-! ## A207258.P17116582065032125385

`A207254(A052905(n+3)+12)`
-/

namespace A207258.P17116582065032125385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A052905 (n + 3) + 12).toNat

end

end A207258.P17116582065032125385

/-! ## A207258.P3209508726141113726

`A207254(A167614(n+3)+A005408(n+7))`
-/

namespace A207258.P3209508726141113726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A167614 (n + 3) + A005408 (n + 7)).toNat

end

end A207258.P3209508726141113726

/-! ## A207258.P11175867499291093834

`A207254(A167614(n+3)+A004273(n+8))`
-/

namespace A207258.P11175867499291093834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207254 (A167614 (n + 3) + A004273 (n + 8)).toNat

end

end A207258.P11175867499291093834

/-!
# A207259: The number of 2 X 2 matrices with no real eigenvalues and whose entries are integers of absolute value at most n.

The programs for A207259, there is no canonical definition to state claims against.
-/

/-! ## A207259.P14920444792656147463

`(2*(n+1)+1)^4-A219736(n+1)`
-/

namespace A207259.P14920444792656147463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 1) ^ 4 : ℤ) - A219736 (n + 1)

end

end A207259.P14920444792656147463

/-!
# A207260: Triangle read by rows: T(n,k) = k^2 + (1-(-1)^(n-k))/2.

The programs for A207260, the canonical program `A207260.P14930106105722422913` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207260 has offset 0).

The definition of A207260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207260.P14930106105722422913

`col(n)²+(1-(-1)^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207260

/-- `col(n)²+(1-(-1)^(row(n)-col(n)))/2` -/
def P14930106105722422913.Spec : Prop :=
  ∀ n, P14930106105722422913.a n = (A207260 n : ℚ)

end A207260

/-! ## A207260.P13508562291363661149

`(row(n)+col(n))%2+col(n)²`
-/

namespace A207260.P13508562291363661149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) % 2 + SequenceMachineLib.triCol n ^ 2

end

end A207260.P13508562291363661149

namespace A207260

/-- `(row(n)+col(n))%2+col(n)²` -/
def P13508562291363661149.Spec : Prop :=
  ∀ n, (P13508562291363661149.a n : ℤ) = A207260 n

end A207260

/-! ## A207260.P10152445704428413795

`col(n)²-(col(n)-row(n))%2`
-/

namespace A207260.P10152445704428413795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - Int.tmod ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) 2

end

end A207260.P10152445704428413795

namespace A207260

/-- `col(n)²-(col(n)-row(n))%2` -/
def P10152445704428413795.Spec : Prop :=
  ∀ n, P10152445704428413795.a n = A207260 n

end A207260

/-! ## A207260.P2392531188077543405

`and(1, A025581(n))+A002262(n)²`
-/

namespace A207260.P2392531188077543405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A025581 n) + A002262 n ^ 2

end

end A207260.P2392531188077543405

namespace A207260

/-- `and(1, A025581(n))+A002262(n)²` -/
def P2392531188077543405.Spec : Prop :=
  ∀ n, P2392531188077543405.a n = A207260 n

end A207260

/-! ## A207260.P14621180818948057442

`and(1, A051933(n))+A002262(n)²`
-/

namespace A207260.P14621180818948057442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051933 n) + A002262 n ^ 2

end

end A207260.P14621180818948057442

namespace A207260

/-- `and(1, A051933(n))+A002262(n)²` -/
def P14621180818948057442.Spec : Prop :=
  ∀ n, P14621180818948057442.a n = A207260 n

end A207260

/-! ## A207260.P8211460382640522353

`and(1, A069011(n))+A002262(n)²`
-/

namespace A207260.P8211460382640522353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A069011 n) + A002262 n ^ 2

end

end A207260.P8211460382640522353

namespace A207260

/-- `and(1, A069011(n))+A002262(n)²` -/
def P8211460382640522353.Spec : Prop :=
  ∀ n, P8211460382640522353.a n = A207260 n

end A207260

/-! ## A207260.P1468692458567268841

`and(1, A292564(n))+A002262(n)²`
-/

namespace A207260.P1468692458567268841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A292564 n) + A002262 n ^ 2

end

end A207260.P1468692458567268841

namespace A207260

/-- `and(1, A292564(n))+A002262(n)²` -/
def P1468692458567268841.Spec : Prop :=
  ∀ n, P1468692458567268841.a n = A207260 n

end A207260

/-! ## A207260.P6663967493961312683

`A002262(n)²+1-A128174(n+1)`
-/

namespace A207260.P6663967493961312683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (1 - A128174 (n + 1))

end

end A207260.P6663967493961312683

namespace A207260

/-- `A002262(n)²+1-A128174(n+1)` -/
def P6663967493961312683.Spec : Prop :=
  ∀ n, P6663967493961312683.a n = A207260 n

end A207260

/-! ## A207260.P8734924455303105073

`A143844(n)+A000035(A025581(n))`
-/

namespace A207260.P8734924455303105073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A000035 (A025581 n).toNat

end

end A207260.P8734924455303105073

namespace A207260

/-- `A143844(n)+A000035(A025581(n))` -/
def P8734924455303105073.Spec : Prop :=
  ∀ n, P8734924455303105073.a n = A207260 n

end A207260

/-! ## A207260.P5277068014972815700

`A000035(A025581(n))+A002262(n)²`
-/

namespace A207260.P5277068014972815700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025581 n).toNat + A002262 n ^ 2

end

end A207260.P5277068014972815700

namespace A207260

/-- `A000035(A025581(n))+A002262(n)²` -/
def P5277068014972815700.Spec : Prop :=
  ∀ n, P5277068014972815700.a n = A207260 n

end A207260

/-! ## A207260.P16705501154886864573

`A143844(n)+A010873(A095831(n+1))`
-/

namespace A207260.P16705501154886864573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A010873 (A095831 (n + 1)).toNat

end

end A207260.P16705501154886864573

namespace A207260

/-- `A143844(n)+A010873(A095831(n+1))` -/
def P16705501154886864573.Spec : Prop :=
  ∀ n, P16705501154886864573.a n = A207260 n

end A207260

/-! ## A207260.P16605169822348138409

`A002522(A002262(n))-A128174(n+1)`
-/

namespace A207260.P16605169822348138409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002262 n).toNat - A128174 (n + 1)

end

end A207260.P16605169822348138409

namespace A207260

/-- `A002522(A002262(n))-A128174(n+1)` -/
def P16605169822348138409.Spec : Prop :=
  ∀ n, P16605169822348138409.a n = A207260 n

end A207260

/-! ## A207260.P14858757276807379290

`A002262(n)²+A134521(n)-A007318(n)`
-/

namespace A207260.P14858757276807379290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A134521 n - A007318 n)

end

end A207260.P14858757276807379290

namespace A207260

/-- `A002262(n)²+A134521(n)-A007318(n)` -/
def P14858757276807379290.Spec : Prop :=
  ∀ n, P14858757276807379290.a n = A207260 n

end A207260

/-! ## A207260.P10156944635814067498

`A000035(A069011(n))+A002262(n)²`
-/

namespace A207260.P10156944635814067498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069011 n).toNat + A002262 n ^ 2

end

end A207260.P10156944635814067498

namespace A207260

/-- `A000035(A069011(n))+A002262(n)²` -/
def P10156944635814067498.Spec : Prop :=
  ∀ n, P10156944635814067498.a n = A207260 n

end A207260

/-! ## A207260.P188253947614113108

`A025426(A130321(n))+A002262(n)²`
-/

namespace A207260.P188253947614113108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A130321 n).toNat + A002262 n ^ 2

end

end A207260.P188253947614113108

namespace A207260

/-- `A025426(A130321(n))+A002262(n)²` -/
def P188253947614113108.Spec : Prop :=
  ∀ n, P188253947614113108.a n = A207260 n

end A207260

/-!
# A207262: a(n) = 2^(4n - 2) + 1.

The programs for A207262, the canonical program `A207262.P2938424053153398061` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207262 has offset 1).

The definition of A207262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207262.P2384122746520076260

`ogf((5-20x)/(1-17x+16x^2))`
-/

namespace A207262.P2384122746520076260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -20] [1, -17, 16] n

end

end A207262.P2384122746520076260

namespace A207262

/-- `ogf((5-20x)/(1-17x+16x^2))` -/
def P2384122746520076260.Spec : Prop :=
  ∀ n, P2384122746520076260.a n = A207262 (n + 1)

end A207262

/-! ## A207262.P747695333853664965

`4^(2*(n+1)-1)+1`
-/

namespace A207262.P747695333853664965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + 1

end

end A207262.P747695333853664965

namespace A207262

/-- `4^(2*(n+1)-1)+1` -/
def P747695333853664965.Spec : Prop :=
  ∀ n, P747695333853664965.a n = (A207262 (n + 1) : ℚ)

end A207262

/-! ## A207262.P10093996515187821188

`2^(4*(n+1)-2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A207262.P10093996515187821188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) + 1

end

end A207262.P10093996515187821188

namespace A207262

/-- `2^(4*(n+1)-2)+1` -/
def P10093996515187821188.Spec : Prop :=
  ∀ n, P10093996515187821188.a n = (A207262 (n + 1) : ℚ)

end A207262

/-! ## A207262.P2938424053153398061

`5*A299960(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207262

/-- `5*A299960(n)` -/
def P2938424053153398061.Spec : Prop :=
  ∀ n, P2938424053153398061.a n = A207262 (n + 1)

theorem P2938424053153398061.correct : P2938424053153398061.Spec := by
  intro n
  simp only [A207262, Nat.add_sub_cancel]

end A207262

/-! ## A207262.P10807295938991597063

`or(1, 4*16^n)`
-/

namespace A207262.P10807295938991597063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 16 ^ n)

end

end A207262.P10807295938991597063

namespace A207262

/-- `or(1, 4*16^n)` -/
def P10807295938991597063.Spec : Prop :=
  ∀ n, (P10807295938991597063.a n : ℤ) = A207262 (n + 1)

end A207262

/-! ## A207262.P3693509136315870088

`xor(1, 4*16^n)`
-/

namespace A207262.P3693509136315870088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 16 ^ n)

end

end A207262.P3693509136315870088

namespace A207262

/-- `xor(1, 4*16^n)` -/
def P3693509136315870088.Spec : Prop :=
  ∀ n, (P3693509136315870088.a n : ℤ) = A207262 (n + 1)

end A207262

/-! ## A207262.P1033264449532714011

`record[4^xor(1, n)+1]`
-/

namespace A207262.P1033264449532714011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207262.P1033264449532714011

namespace A207262

/-- `record[4^xor(1, n)+1]` -/
def P1033264449532714011.Spec : Prop :=
  ∀ n, (P1033264449532714011.a n : ℤ) = A207262 (n + 1)

end A207262

/-! ## A207262.P15539223109551847042

`record[∑[5*(-4)^n]]`
-/

namespace A207262.P15539223109551847042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (-4) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207262.P15539223109551847042

namespace A207262

/-- `record[∑[5*(-4)^n]]` -/
def P15539223109551847042.Spec : Prop :=
  ∀ n, P15539223109551847042.a n = A207262 (n + 1)

end A207262

/-! ## A207262.P14649828108436757118

`or(4, (4^(n+1))²)/4`
-/

namespace A207262.P14649828108436757118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 ((4 ^ (n + 1)) ^ 2) : ℚ) / 4

end

end A207262.P14649828108436757118

namespace A207262

/-- `or(4, (4^(n+1))²)/4` -/
def P14649828108436757118.Spec : Prop :=
  ∀ n, P14649828108436757118.a n = (A207262 (n + 1) : ℚ)

end A207262

/-! ## A207262.P6397945283214038034

`xor(4, (4^(n+1))²)/4`
-/

namespace A207262.P6397945283214038034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 ((4 ^ (n + 1)) ^ 2) : ℚ) / 4

end

end A207262.P6397945283214038034

namespace A207262

/-- `xor(4, (4^(n+1))²)/4` -/
def P6397945283214038034.Spec : Prop :=
  ∀ n, P6397945283214038034.a n = (A207262 (n + 1) : ℚ)

end A207262

/-!
# A207263: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207263, there is no canonical definition to state claims against.
-/

/-! ## A207263.P11544699761849279569

`A207269((n+1)²+n²)`
-/

namespace A207263.P11544699761849279569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 ((n + 1) ^ 2 + n ^ 2)

end

end A207263.P11544699761849279569

/-! ## A207263.P8497949408829733796

`record[gcd(A114327(n), A207269(n+1))]`
-/

namespace A207263.P8497949408829733796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207269 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207263.P8497949408829733796

/-! ## A207263.P6843244166575637260

`A207269(A001844(n))+A011736(n)`
-/

namespace A207263.P6843244166575637260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A001844 n).toNat + A011736 n

end

end A207263.P6843244166575637260

/-! ## A207263.P12661154278343316419

`A207269(A001844(n))+A011741(n)`
-/

namespace A207263.P12661154278343316419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A001844 n).toNat + A011741 n

end

end A207263.P12661154278343316419

/-! ## A207263.P5104165254719757184

`A207269(A001844(n))+A011742(n)`
-/

namespace A207263.P5104165254719757184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A001844 n).toNat + A011742 n

end

end A207263.P5104165254719757184

/-!
# A207264: Number of nX3 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207264, there is no canonical definition to state claims against.
-/

/-! ## A207264.P1660030318125389900

`A207269(∑[n+3]+1)`
-/

namespace A207264.P1660030318125389900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207264.P1660030318125389900

/-! ## A207264.P18342115436674013665

`A207762(∑[n+3]+1)`
-/

namespace A207264.P18342115436674013665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207264.P18342115436674013665

/-! ## A207264.P18103109858491614039

`A207762(A034856(n+2))%A207767(n+1)`
-/

namespace A207264.P18103109858491614039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207762 (A034856 (n + 2)).toNat) (A207767 (n + 1))

end

end A207264.P18103109858491614039

/-! ## A207264.P220772022161341012

`A207762(A034856(n+2))+A010054(3*n+2)`
-/

namespace A207264.P220772022161341012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A034856 (n + 2)).toNat + A010054 (3 * n + 2)

end

end A207264.P220772022161341012

/-! ## A207264.P16333908583860592128

`record[A207269(A198464(n+1))]`
-/

namespace A207264.P16333908583860592128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207264.P16333908583860592128

/-!
# A207265: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207265, there is no canonical definition to state claims against.
-/

/-! ## A207265.P6319276520913163358

`A207269(∑[n+4]+3)`
-/

namespace A207265.P6319276520913163358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A207265.P6319276520913163358

/-! ## A207265.P9233254299239765087

`or(A000007(n), A207269(A055998(n+2)))`
-/

namespace A207265.P9233254299239765087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207269 (A055998 (n + 2)).toNat)

end

end A207265.P9233254299239765087

/-! ## A207265.P7127440987008053880

`A207269(A167499(n)+A016777(n))%A207245(n+1)`
-/

namespace A207265.P7127440987008053880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207269 (A167499 n + A016777 n).toNat) (A207245 (n + 1))

end

end A207265.P7127440987008053880

/-! ## A207265.P10808638260186137946

`A014963(6*(n+1))*A207269(A167499(n)+A016777(n))`
-/

namespace A207265.P10808638260186137946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A207269 (A167499 n + A016777 n).toNat

end

end A207265.P10808638260186137946

/-! ## A207265.P12295197920333842425

`A070077(7-(-1)^n)*A207269(A167499(n)+A016777(n))`
-/

namespace A207265.P12295197920333842425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070077 (7 - (-1) ^ n).toNat * A207269 (A167499 n + A016777 n).toNat

end

end A207265.P12295197920333842425

/-!
# A207266: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207266, there is no canonical definition to state claims against.
-/

/-! ## A207266.P11687331213183107121

`A207269(A046691(n+3))`
-/

namespace A207266.P11687331213183107121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A046691 (n + 3)).toNat

end

end A207266.P11687331213183107121

/-! ## A207266.P5013128098203951670

`A207269(Δ[A023545(n+1)])`
-/

namespace A207266.P5013128098203951670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (f1 (n + 1) - f1 n).toNat

end

end A207266.P5013128098203951670

/-! ## A207266.P740731163520985755

`A207269(Δ[A111396(n)]-1)`
-/

namespace A207266.P740731163520985755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (f1 (n + 1) - f1 n - 1).toNat

end

end A207266.P740731163520985755

/-! ## A207266.P7962362933705158440

`A207269(A000217(n+5)-4)`
-/

namespace A207266.P7962362933705158440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 5) - 4).toNat

end

end A207266.P7962362933705158440

/-! ## A207266.P1070856050164351289

`A207269(A000124(n+5)-5)`
-/

namespace A207266.P1070856050164351289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000124 (n + 5) - 5).toNat

end

end A207266.P1070856050164351289

/-!
# A207267: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207267, there is no canonical definition to state claims against.
-/

/-! ## A207267.P5313061046385091313

`A207269(A052905(n+3))`
-/

namespace A207267.P5313061046385091313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A052905 (n + 3)).toNat

end

end A207267.P5313061046385091313

/-! ## A207267.P3631057178253912150

`A207269(A000096(n+5)-4)`
-/

namespace A207267.P3631057178253912150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000096 (n + 5) - 4).toNat

end

end A207267.P3631057178253912150

/-! ## A207267.P7024199815387921683

`A207269(A051936(n+6)+4)`
-/

namespace A207267.P7024199815387921683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A051936 (n + 6) + 4).toNat

end

end A207267.P7024199815387921683

/-! ## A207267.P15967029452983659558

`A207269(A000217(n+6)-5)`
-/

namespace A207267.P15967029452983659558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 6) - 5).toNat

end

end A207267.P15967029452983659558

/-! ## A207267.P15905315075651639820

`A207269(Δ[A023551(n+1)]+1)`
-/

namespace A207267.P15905315075651639820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (f1 (n + 1) - f1 n + 1).toNat

end

end A207267.P15905315075651639820

/-!
# A207268: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207268, there is no canonical definition to state claims against.
-/

/-! ## A207268.P11714077268648445170

`A207269(A055999(n+4))`
-/

namespace A207268.P11714077268648445170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A055999 (n + 4)).toNat

end

end A207268.P11714077268648445170

/-! ## A207268.P4685231013705957982

`A207269(Δ[A023551(n+2)])`
-/

namespace A207268.P4685231013705957982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (f1 (n + 1) - f1 n).toNat

end

end A207268.P4685231013705957982

/-! ## A207268.P3507543811746463161

`A207269(A055998(n+5)-3)`
-/

namespace A207268.P3507543811746463161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A055998 (n + 5) - 3).toNat

end

end A207268.P3507543811746463161

/-! ## A207268.P7853506804190632023

`A207269(A000217(n+7)-6)`
-/

namespace A207268.P7853506804190632023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 7) - 6).toNat

end

end A207268.P7853506804190632023

/-! ## A207268.P13162618078331847593

`A207269(A152947(n+9)-7)`
-/

namespace A207268.P13162618078331847593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A152947 (n + 9) - 7).toNat

end

end A207268.P13162618078331847593

/-!
# A207269: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207269, there is no canonical definition to state claims against.
-/

/-! ## A207269.P17879626275699332551

`A207488(n+1)%A075953(n)`
-/

namespace A207269.P17879626275699332551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207488 (n + 1)) (A075953 n)

end

end A207269.P17879626275699332551

/-! ## A207269.P13982721027819025979

`A207488(C(A151764(n+1), n))`
-/

namespace A207269.P13982721027819025979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (Nat.choose (A151764 (n + 1)).toNat n)

end

end A207269.P13982721027819025979

/-! ## A207269.P278209158364661534

`A207488(C(A194417(n+1), n))`
-/

namespace A207269.P278209158364661534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (Nat.choose (A194417 (n + 1)).toNat n)

end

end A207269.P278209158364661534

/-! ## A207269.P11506988492774031892

`A245794(n)!*A207488(n+1)`
-/

namespace A207269.P11506988492774031892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A245794 n).toNat : ℤ) * A207488 (n + 1)

end

end A207269.P11506988492774031892

/-! ## A207269.P18081633334117697241

`A207488(n+1)-A156537(3*(n+2))`
-/

namespace A207269.P18081633334117697241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (n + 1) - A156537 (3 * (n + 2))

end

end A207269.P18081633334117697241

/-!
# A207270: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207270, there is no canonical definition to state claims against.
-/

/-! ## A207270.P10091665920437828067

`A207269(∑[n+2]+4)`
-/

namespace A207270.P10091665920437828067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207270.P10091665920437828067

/-! ## A207270.P17709703010544351640

`A207269(A167614(n+1))*A304042(n)`
-/

namespace A207270.P17709703010544351640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A167614 (n + 1)).toNat * A304042 n

end

end A207270.P17709703010544351640

/-! ## A207270.P10776701858440646021

`lcm(A057077(n), A207269(A167614(n+1)))`
-/

namespace A207270.P10776701858440646021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A207269 (A167614 (n + 1)).toNat)

end

end A207270.P10776701858440646021

/-! ## A207270.P17820158748101579986

`A207269(A167614(n+1))%A053379(n+1)`
-/

namespace A207270.P17820158748101579986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207269 (A167614 (n + 1)).toNat) (A053379 (n + 1))

end

end A207270.P17820158748101579986

/-! ## A207270.P16090148625653751207

`A207488(∑[n+2]+4)`
-/

namespace A207270.P16090148625653751207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207488 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207270.P16090148625653751207

/-!
# A207271: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207271, there is no canonical definition to state claims against.
-/

/-! ## A207271.P15570143071009001908

`A207269(A052905(n)+9)`
-/

namespace A207271.P15570143071009001908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A052905 n + 9).toNat

end

end A207271.P15570143071009001908

/-! ## A207271.P8316394251379885046

`A207269(A055999(n)+10)`
-/

namespace A207271.P8316394251379885046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A055999 n + 10).toNat

end

end A207271.P8316394251379885046

/-! ## A207271.P12609986331545886173

`A207269(A167614(n+2)+1)`
-/

namespace A207271.P12609986331545886173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A167614 (n + 2) + 1).toNat

end

end A207271.P12609986331545886173

/-! ## A207271.P10497285991925053304

`A207269(A000217(n+3)+4)`
-/

namespace A207271.P10497285991925053304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 3) + 4).toNat

end

end A207271.P10497285991925053304

/-! ## A207271.P806134051022516762

`A207269(A027379(n+1)+7)`
-/

namespace A207271.P806134051022516762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A027379 (n + 1) + 7).toNat

end

end A207271.P806134051022516762

/-!
# A207272: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207272, there is no canonical definition to state claims against.
-/

/-! ## A207272.P5731642834003359707

`A207269(A167499(n+3))`
-/

namespace A207272.P5731642834003359707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A167499 (n + 3)).toNat

end

end A207272.P5731642834003359707

/-! ## A207272.P16536614825560510723

`A207269(A000217(n+4)+5)`
-/

namespace A207272.P16536614825560510723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 4) + 5).toNat

end

end A207272.P16536614825560510723

/-! ## A207272.P15778684929942513029

`A207269(A046691(n+2)+9)`
-/

namespace A207272.P15778684929942513029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A046691 (n + 2) + 9).toNat

end

end A207272.P15778684929942513029

/-! ## A207272.P16391569535778604230

`A207269(A000124(n+5)-(n+1))`
-/

namespace A207272.P16391569535778604230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207272.P16391569535778604230

/-! ## A207272.P12363651212615689582

`A207269(A003602(Δ[A026046(n+6)]))`
-/

namespace A207272.P12363651212615689582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A003602 (f1 (n + 1) - f1 n).toNat).toNat

end

end A207272.P12363651212615689582

/-!
# A207273: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207273, there is no canonical definition to state claims against.
-/

/-! ## A207273.P11548408268650669366

`A207269(A167499(n+4)+1)`
-/

namespace A207273.P11548408268650669366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A167499 (n + 4) + 1).toNat

end

end A207273.P11548408268650669366

/-! ## A207273.P11099589638193457760

`A207269(A134869(n+5)+5)`
-/

namespace A207273.P11099589638193457760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A134869 (n + 5) + 5).toNat

end

end A207273.P11099589638193457760

/-! ## A207273.P7978426856298955054

`A207269(A161680(n+6)+6)`
-/

namespace A207273.P7978426856298955054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A161680 (n + 6) + 6).toNat

end

end A207273.P7978426856298955054

/-! ## A207273.P6950350361422622999

`A207269(A005843(n+8)+A000096(n+2))`
-/

namespace A207273.P6950350361422622999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A207273.P6950350361422622999

/-! ## A207273.P7897874111732812495

`A207269(A051936(n+10)-A008587(n+5))`
-/

namespace A207273.P7897874111732812495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A051936 (n + 10) - A008587 (n + 5)).toNat

end

end A207273.P7897874111732812495

/-!
# A207274: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207274, there is no canonical definition to state claims against.
-/

/-! ## A207274.P3676478709780190270

`A207269(A167499(n+5)+2)`
-/

namespace A207274.P3676478709780190270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A167499 (n + 5) + 2).toNat

end

end A207274.P3676478709780190270

/-! ## A207274.P13618560665923504114

`A207269(A000217(n+6)+7)`
-/

namespace A207274.P13618560665923504114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A000217 (n + 6) + 7).toNat

end

end A207274.P13618560665923504114

/-! ## A207274.P2358353297912467035

`A207269(A161680(n+7)+7)`
-/

namespace A207274.P2358353297912467035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A161680 (n + 7) + 7).toNat

end

end A207274.P2358353297912467035

/-! ## A207274.P3113084416319065469

`A207269(A022856(n+10)+5)`
-/

namespace A207274.P3113084416319065469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A022856 (n + 10) + 5).toNat

end

end A207274.P3113084416319065469

/-! ## A207274.P12802906482128461719

`A207269(A038722(A055999(n+4)))`
-/

namespace A207274.P12802906482128461719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207269 (A038722 (A055999 (n + 4)).toNat).toNat

end

end A207274.P12802906482128461719

/-!
# A207275: Number of n X n 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207275, there is no canonical definition to state claims against.
-/

/-! ## A207275.P12680320574994705833

`A207283(∑[4*n]+1)`
-/

namespace A207275.P12680320574994705833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207275.P12680320574994705833

/-!
# A207276: Number of n X 1 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207276, the canonical program `A207276.P16385525762538278936` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207276 has offset 1).

The definition of A207276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207276.P4365893394840204800

`ogf((4+4x+2x^2+4x^3+2x^4)/(1-3x-2x^2-x^3-3x^4-x^5))`
-/

namespace A207276.P4365893394840204800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 2, 4, 2] [1, -3, -2, -1, -3, -1] n

end

end A207276.P4365893394840204800

namespace A207276

/-- `ogf((4+4x+2x^2+4x^3+2x^4)/(1-3x-2x^2-x^3-3x^4-x^5))` -/
def P4365893394840204800.Spec : Prop :=
  ∀ n, P4365893394840204800.a n = A207276 (n + 1)

end A207276

/-! ## A207276.P16385525762538278936

`3*a(n-1)+2*a(n-2)+a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=4, a(1)=16, a(2)=58, a(3)=214, a(4)=788`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A207276

/-- `3*a(n-1)+2*a(n-2)+a(n-3)+3*a(n-4)+a(n-5)` -/
def P16385525762538278936.Spec : Prop :=
  ∀ n, (P16385525762538278936.a n : ℤ) = A207276 (n + 1)

theorem P16385525762538278936.correct : P16385525762538278936.Spec := by
  intro n
  simp only [A207276, Nat.add_sub_cancel]

end A207276

/-! ## A207276.P11687524832414830036

`sqrt(A207277(n+1))`
-/

namespace A207276.P11687524832414830036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207277 (n + 1) : ℝ)

end

end A207276.P11687524832414830036

namespace A207276

/-- `sqrt(A207277(n+1))` -/
def P11687524832414830036.Spec : Prop :=
  ∀ n, P11687524832414830036.a n = (A207276 (n + 1) : ℝ)

end A207276

/-! ## A207276.P9751864599903835350

`A207479(∑[n]+1)`
-/

namespace A207276.P9751864599903835350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207276.P9751864599903835350

namespace A207276

/-- `A207479(∑[n]+1)` -/
def P9751864599903835350.Spec : Prop :=
  ∀ n, P9751864599903835350.a n = A207276 (n + 1)

end A207276

/-! ## A207276.P9176358111030333707

`lcm(2, A207479(A000124(n)))`
-/

namespace A207276.P9176358111030333707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207479 (A000124 n).toNat)

end

end A207276.P9176358111030333707

namespace A207276

/-- `lcm(2, A207479(A000124(n)))` -/
def P9176358111030333707.Spec : Prop :=
  ∀ n, (P9176358111030333707.a n : ℤ) = A207276 (n + 1)

end A207276

/-!
# A207277: Number of n X 2 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207277, the canonical program `A207277.P9988503482366594588` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207277 has offset 1).

The definition of A207277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A207276, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A207277.P9988503482366594588

`A207276(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207277

/-- `A207276(n+1)²` -/
def P9988503482366594588.Spec : Prop :=
  ∀ n, P9988503482366594588.a n = A207277 (n + 1)

theorem P9988503482366594588.correct : P9988503482366594588.Spec := by
  intro n
  simp only [A207277, Nat.add_sub_cancel]

end A207277

/-! ## A207277.P12829654488189038960

`A207276(n+1)^A000005(A060192(n))`
-/

namespace A207277.P12829654488189038960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207276 (n + 1) : ℚ) ^ (A000005 (A060192 n).toNat : ℤ)

end

end A207277.P12829654488189038960

namespace A207277

/-- `A207276(n+1)^A000005(A060192(n))` -/
def P12829654488189038960.Spec : Prop :=
  ∀ n, P12829654488189038960.a n = (A207277 (n + 1) : ℚ)

end A207277

/-! ## A207277.P12510894682243435332

`A207276(n+1)^A000005(A090798(n+1))`
-/

namespace A207277.P12510894682243435332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207276 (n + 1) : ℚ) ^ (A000005 (A090798 (n + 1)).toNat : ℤ)

end

end A207277.P12510894682243435332

namespace A207277

/-- `A207276(n+1)^A000005(A090798(n+1))` -/
def P12510894682243435332.Spec : Prop :=
  ∀ n, P12510894682243435332.a n = (A207277 (n + 1) : ℚ)

end A207277

/-!
# A207278: Number of nX3 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207278, there is no canonical definition to state claims against.
-/

/-! ## A207278.P1823206414293252561

`A207283(∑[n+2]+4)`
-/

namespace A207278.P1823206414293252561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207278.P1823206414293252561

/-! ## A207278.P7327789674387872298

`lcm(2, A207283(A167614(n+1)))`
-/

namespace A207278.P7327789674387872298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207283 (A167614 (n + 1)).toNat)

end

end A207278.P7327789674387872298

/-! ## A207278.P15279508235398032877

`A207283(A167614(n+1))+A011738(n)`
-/

namespace A207278.P15279508235398032877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A167614 (n + 1)).toNat + A011738 n

end

end A207278.P15279508235398032877

/-! ## A207278.P4025377341298931033

`A207283(A167614(n+1))+A025466(n)`
-/

namespace A207278.P4025377341298931033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A167614 (n + 1)).toNat + A025466 n

end

end A207278.P4025377341298931033

/-! ## A207278.P17179515927975487170

`A207283(A167614(n+1))+A053392(n)`
-/

namespace A207278.P17179515927975487170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A167614 (n + 1)).toNat + A053392 n

end

end A207278.P17179515927975487170

/-!
# A207279: Number of nX4 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207279, there is no canonical definition to state claims against.
-/

/-! ## A207279.P4332410464877475801

`A207283(A374004(n+1))`
-/

namespace A207279.P4332410464877475801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A374004 (n + 1)).toNat

end

end A207279.P4332410464877475801

/-! ## A207279.P11116675675636093817

`A207283(A141214(n)+7)`
-/

namespace A207279.P11116675675636093817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A141214 n + 7).toNat

end

end A207279.P11116675675636093817

/-! ## A207279.P2465980468961088178

`A207283(A052905(n)+9)`
-/

namespace A207279.P2465980468961088178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A052905 n + 9).toNat

end

end A207279.P2465980468961088178

/-! ## A207279.P8545801535461169763

`A207283(A055999(n)+10)`
-/

namespace A207279.P8545801535461169763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A055999 n + 10).toNat

end

end A207279.P8545801535461169763

/-!
# A207280: Number of nX5 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207280, there is no canonical definition to state claims against.
-/

/-! ## A207280.P6513682006271853970

`A207283(A374005(n+1))`
-/

namespace A207280.P6513682006271853970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A374005 (n + 1)).toNat

end

end A207280.P6513682006271853970

/-! ## A207280.P14907567308565389581

`A207283(A056000(n)+15)`
-/

namespace A207280.P14907567308565389581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (A056000 n + 15).toNat

end

end A207280.P14907567308565389581

/-! ## A207280.P10729586972312652700

`A207283(eq[7, A066657(n)])`
-/

namespace A207280.P10729586972312652700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207280.P10729586972312652700

/-!
# A207281: Number of nX6 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207281, there is no canonical definition to state claims against.
-/

/-! ## A207281.P12327705178427180878

`A207283(∑[n+5]+16)`
-/

namespace A207281.P12327705178427180878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207283 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A207281.P12327705178427180878

/-!
# A207283: T(n,k)=Number of nXk 0..3 arrays avoiding the patterns z z+1 z or z z-1 z in any row, column, diagonal or antidiagonal.

The programs for A207283, there is no canonical definition to state claims against.
-/

/-! ## A207283.P16953266338956714027

`A207479(A043317(n+1))`
-/

namespace A207283.P16953266338956714027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A043317 (n + 1)).toNat

end

end A207283.P16953266338956714027

/-! ## A207283.P14036927413730552829

`A207479(A044914(n+1))`
-/

namespace A207283.P14036927413730552829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A044914 (n + 1)).toNat

end

end A207283.P14036927413730552829

/-! ## A207283.P8274988652915629225

`A207479(A049872(n)+1)`
-/

namespace A207283.P8274988652915629225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A049872 n + 1).toNat

end

end A207283.P8274988652915629225

/-! ## A207283.P3520964469801300399

`A207535(A049872(n)+1)`
-/

namespace A207283.P3520964469801300399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207535 (A049872 n + 1).toNat

end

end A207283.P3520964469801300399

/-! ## A207283.P8430636162054641012

`A207479(A055648(n+1))`
-/

namespace A207283.P8430636162054641012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207479 (A055648 (n + 1)).toNat

end

end A207283.P8430636162054641012

/-!
# A207284: Number of n X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A207284, there is no canonical definition to state claims against.
-/

/-! ## A207284.P15315138801147619134

`A207290((n+1)²+n²)`
-/

namespace A207284.P15315138801147619134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 ((n + 1) ^ 2 + n ^ 2)

end

end A207284.P15315138801147619134

/-! ## A207284.P3404473331877781260

`lcm(2, A207290(A001844(n)))`
-/

namespace A207284.P3404473331877781260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207290 (A001844 n).toNat)

end

end A207284.P3404473331877781260

/-! ## A207284.P5893237701166524739

`A207290(A001844(n))+A025465(n)`
-/

namespace A207284.P5893237701166524739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A001844 n).toNat + A025465 n

end

end A207284.P5893237701166524739

/-! ## A207284.P328253640570476675

`A235145(n)+A207290(A001844(n))`
-/

namespace A207284.P328253640570476675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A207290 (A001844 n).toNat

end

end A207284.P328253640570476675

/-!
# A207285: Number of nX3 0..3 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A207285, there is no canonical definition to state claims against.
-/

/-! ## A207285.P7698841622932745997

`A207290(∑[n+2]+4)`
-/

namespace A207285.P7698841622932745997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207285.P7698841622932745997

/-! ## A207285.P16944161240289958771

`A207290(A167614(n+1))*A304042(n)`
-/

namespace A207285.P16944161240289958771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A167614 (n + 1)).toNat * A304042 n

end

end A207285.P16944161240289958771

/-! ## A207285.P5016928154530714866

`lcm(A020985(n), A207290(A167614(n+1)))`
-/

namespace A207285.P5016928154530714866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207290 (A167614 (n + 1)).toNat)

end

end A207285.P5016928154530714866

/-! ## A207285.P9574316513409166473

`or(A000038(n), A207290(A167614(n+1)))`
-/

namespace A207285.P9574316513409166473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207290 (A167614 (n + 1)).toNat)

end

end A207285.P9574316513409166473

/-! ## A207285.P9680243487325496283

`A324179(n+1)+A207290(A167614(n+1))`
-/

namespace A207285.P9680243487325496283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A207290 (A167614 (n + 1)).toNat

end

end A207285.P9680243487325496283

/-!
# A207286: Number of nX4 0..3 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A207286, there is no canonical definition to state claims against.
-/

/-! ## A207286.P10086272084592608483

`A207290(A055999(n)+10)`
-/

namespace A207286.P10086272084592608483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A055999 n + 10).toNat

end

end A207286.P10086272084592608483

/-! ## A207286.P4141991485992267541

`A207290(A167614(n+2)+1)`
-/

namespace A207286.P4141991485992267541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A167614 (n + 2) + 1).toNat

end

end A207286.P4141991485992267541

/-! ## A207286.P1656505497117611881

`A207290(eq[2, A152157(n)])`
-/

namespace A207286.P1656505497117611881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207286.P1656505497117611881

/-! ## A207286.P8866159374077880205

`A207290(eq[3, A193592(n)])`
-/

namespace A207286.P8866159374077880205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207286.P8866159374077880205

/-!
# A207287: Number of nX5 0..3 arrays avoiding the pattern z-2 z-1 z in any row or column.

The programs for A207287, there is no canonical definition to state claims against.
-/

/-! ## A207287.P9962506069097373302

`A207290(A155212(n)+13)`
-/

namespace A207287.P9962506069097373302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A155212 n + 13).toNat

end

end A207287.P9962506069097373302

/-! ## A207287.P7759624672475088142

`A207290(A056000(n)+15)`
-/

namespace A207287.P7759624672475088142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A056000 n + 15).toNat

end

end A207287.P7759624672475088142

/-! ## A207287.P9900594406267250389

`A207290(Δ[A264443(n)])`
-/

namespace A207287.P9900594406267250389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (f1 (n + 1) - f1 n).toNat

end

end A207287.P9900594406267250389

/-! ## A207287.P9472698756149863415

`A207290(A374005(n+1))`
-/

namespace A207287.P9472698756149863415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A374005 (n + 1)).toNat

end

end A207287.P9472698756149863415

/-! ## A207287.P9152690637753170902

`A207290(eq[3, A152157(n)])`
-/

namespace A207287.P9152690637753170902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207287.P9152690637753170902

/-!
# A207288: 

The programs for A207288, there is no canonical definition to state claims against.
-/

/-! ## A207288.P15120393907830827162

`A207290(eq[3, A219347(n)])`
-/

namespace A207288.P15120393907830827162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207288.P15120393907830827162

/-! ## A207288.P14270127598155462074

`A207290(eq[5, A193592(n)])`
-/

namespace A207288.P14270127598155462074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207288.P14270127598155462074

/-! ## A207288.P5371796911966499807

`A207290(eq[8, A258709(n)])`
-/

namespace A207288.P5371796911966499807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207288.P5371796911966499807

/-! ## A207288.P15019299527109895485

`A207290(eq[8, A243070(n+1)])`
-/

namespace A207288.P15019299527109895485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207288.P15019299527109895485

/-!
# A207289: 

The programs for A207289, there is no canonical definition to state claims against.
-/

/-! ## A207289.P11492921890476826413

`A207290(A055999(n+4))`
-/

namespace A207289.P11492921890476826413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A055999 (n + 4)).toNat

end

end A207289.P11492921890476826413

/-! ## A207289.P4762114397912911344

`A207290(eq[6, A193592(n)])`
-/

namespace A207289.P4762114397912911344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207289.P4762114397912911344

/-!
# A207291: Polya-Vinogradov numbers A177865 for primes p == 1 (mod 4).

The programs for A207291, there is no canonical definition to state claims against.
-/

/-! ## A207291.P12303931140300433392

`A177865(A080147(n+1))`
-/

namespace A207291.P12303931140300433392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A080147 (n + 1)).toNat

end

end A207291.P12303931140300433392

/-! ## A207291.P4305856959632124471

`A177865(A026233(p?[A058281(n)]))`
-/

namespace A207291.P4305856959632124471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207291.P4305856959632124471

/-! ## A207291.P577887644155994449

`A177865(A055396(p?[A058281(n)]))`
-/

namespace A207291.P577887644155994449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207291.P577887644155994449

/-! ## A207291.P8900765359492121080

`A177865(A230980(p?[A009001(n)]))`
-/

namespace A207291.P8900765359492121080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207291.P8900765359492121080

/-! ## A207291.P10594160962835232685

`A177865(A026233(p?[A073579(n+1)]))`
-/

namespace A207291.P10594160962835232685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207291.P10594160962835232685

/-!
# A207292: Polya-Vinogradov numbers A177865 for primes p == 3 (mod 4).

The programs for A207292, there is no canonical definition to state claims against.
-/

/-! ## A207292.P12328592023665749049

`A177865(A080148(n+1))`
-/

namespace A207292.P12328592023665749049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A080148 (n + 1)).toNat

end

end A207292.P12328592023665749049

/-! ## A207292.P9388127851253351084

`A177865(A000720(p?[4*n-1]))`
-/

namespace A207292.P9388127851253351084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177865 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A207292.P9388127851253351084

/-! ## A207292.P9880296158890881692

`A080791(A223706(n+1)+A020737(n))`
-/

namespace A207292.P9880296158890881692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A223706 (n + 1) + A020737 n).toNat

end

end A207292.P9880296158890881692

/-! ## A207292.P13831797836219849900

`A180783(2*n+3)-A339742(A006720(n))`
-/

namespace A207292.P13831797836219849900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180783 (2 * n + 3) - A339742 (A006720 n).toNat

end

end A207292.P13831797836219849900

/-! ## A207292.P11478051823075996234

`A290731(2*n+3)-A001676(A124795(n+1))`
-/

namespace A207292.P11478051823075996234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (2 * n + 3) - A001676 (A124795 (n + 1)).toNat

end

end A207292.P11478051823075996234

/-!
# A207293: Primes p whose digit sum s(p) is also prime but whose iterated digit sum s(s(p)) is not prime.

The programs for A207293, there is no canonical definition to state claims against.
-/

/-! ## A207293.P14333625402138395176

`∪[A038660(n+1), A119893(n+1)]`
-/

namespace A207293.P14333625402138395176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P14333625402138395176

/-! ## A207293.P14253551049889521553

`∪[A106759(n+1), A119893(n+1)]`
-/

namespace A207293.P14253551049889521553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P14253551049889521553

/-! ## A207293.P14913417068322575762

`∪[A108385(n+1), A119893(n+1)]`
-/

namespace A207293.P14913417068322575762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P14913417068322575762

/-! ## A207293.P18144476083509091275

`∪[A119893(n+1), A129190(n+1)]`
-/

namespace A207293.P18144476083509091275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P18144476083509091275

/-! ## A207293.P11061219661011218332

`∪[A119893(n+1), A152309(n+1)]`
-/

namespace A207293.P11061219661011218332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P11061219661011218332

/-! ## A207293.P10849089417089615759

`∪[A119893(n+1), A256081(n+1)]`
-/

namespace A207293.P10849089417089615759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P10849089417089615759

/-! ## A207293.P9582242096768418422

`∪[A119893(n+1), A327592(n+1)]`
-/

namespace A207293.P9582242096768418422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P9582242096768418422

/-! ## A207293.P16792762677973544501

`∪[A119893(n+1), A338476(n+1)]`
-/

namespace A207293.P16792762677973544501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A207293.P16792762677973544501

/-!
# A207295: 

The programs for A207295, there is no canonical definition to state claims against.
-/

/-! ## A207295.P11085087959810589707

`A207300((n+1)²+n²)`
-/

namespace A207295.P11085087959810589707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 ((n + 1) ^ 2 + n ^ 2)

end

end A207295.P11085087959810589707

/-!
# A207296: Number of (n+1)X3 0..3 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A207296, there is no canonical definition to state claims against.
-/

/-! ## A207296.P2706552140444106783

`A207300(∑[n+1]+2)`
-/

namespace A207296.P2706552140444106783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A207296.P2706552140444106783

/-! ## A207296.P7231156120210376376

`record[A103452(n)*A207300(n+3)]`
-/

namespace A207296.P7231156120210376376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A207300 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207296.P7231156120210376376

/-! ## A207296.P1274321768932703037

`record[root(A207300(n+3), A099375(n))]`
-/

namespace A207296.P1274321768932703037
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207300 (n + 3) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207296.P1274321768932703037

/-! ## A207296.P6116808519734360955

`A053501(n)*A207300(A000096(n+1))`
-/

namespace A207296.P6116808519734360955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n * A207300 (A000096 (n + 1)).toNat

end

end A207296.P6116808519734360955

/-!
# A207297: Number of (n+1)X4 0..3 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A207297, there is no canonical definition to state claims against.
-/

/-! ## A207297.P12956055550520497899

`A207300(∑[n+2]+4)`
-/

namespace A207297.P12956055550520497899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207297.P12956055550520497899

/-! ## A207297.P4329218534521921449

`A207300(A167614(n+1))+A102683(n)`
-/

namespace A207297.P4329218534521921449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (A167614 (n + 1)).toNat + A102683 n

end

end A207297.P4329218534521921449

/-! ## A207297.P5392950717117086161

`A207300(A167614(n+1))+A192541(n)`
-/

namespace A207297.P5392950717117086161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (A167614 (n + 1)).toNat + A192541 n

end

end A207297.P5392950717117086161

/-! ## A207297.P11258441032055283202

`A207300(A167614(n+1))+A125688(n+1)`
-/

namespace A207297.P11258441032055283202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (A167614 (n + 1)).toNat + A125688 (n + 1)

end

end A207297.P11258441032055283202

/-!
# A207298: Number of (n+1)X5 0..3 arrays with rows and columns of determinants of all 2X2 subblocks lexicographically nondecreasing.

The programs for A207298, there is no canonical definition to state claims against.
-/

/-! ## A207298.P6465913075730272404

`A207300(A167614(n+2)+1)`
-/

namespace A207298.P6465913075730272404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (A167614 (n + 2) + 1).toNat

end

end A207298.P6465913075730272404

/-! ## A207298.P2469844059422180738

`A207300(A020752(n+1))`
-/

namespace A207298.P2469844059422180738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207300 (A020752 (n + 1)).toNat

end

end A207298.P2469844059422180738

