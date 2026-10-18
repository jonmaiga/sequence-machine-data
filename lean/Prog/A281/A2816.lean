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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A281600: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281600, there is no canonical definition to state claims against.
-/

/-! ## A281600.P11653726624907734505

`A281605(∑[n+3]+1)`
-/

namespace A281600.P11653726624907734505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281600.P11653726624907734505

/-! ## A281600.P10100986751155542039

`A281605(A034856(n+2))%A320560(n)`
-/

namespace A281600.P10100986751155542039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281605 (A034856 (n + 2)).toNat) (A320560 (n + 10))

end

end A281600.P10100986751155542039

/-! ## A281600.P7924352828317091518

`A164660(n)²*A281605(A034856(n+2))`
-/

namespace A281600.P7924352828317091518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n ^ 2 * A281605 (A034856 (n + 2)).toNat

end

end A281600.P7924352828317091518

/-! ## A281600.P13956497307761234078

`A033999(2*n)*A281605(A034856(n+2))`
-/

namespace A281600.P13956497307761234078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A281605 (A034856 (n + 2)).toNat

end

end A281600.P13956497307761234078

/-! ## A281600.P17077237466671697618

`A014963(4*n+6)*A281605(A034856(n+2))`
-/

namespace A281600.P17077237466671697618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A281605 (A034856 (n + 2)).toNat

end

end A281600.P17077237466671697618

/-!
# A281601: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281601, there is no canonical definition to state claims against.
-/

/-! ## A281601.P6065343233754665341

`A281605(∑[n+4]+3)`
-/

namespace A281601.P6065343233754665341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281601.P6065343233754665341

/-! ## A281601.P12999349972391890684

`and(-1, A281605(A055998(n+2)))`
-/

namespace A281601.P12999349972391890684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A281605 (A055998 (n + 2)).toNat)

end

end A281601.P12999349972391890684

/-! ## A281601.P3341753271136121091

`A246465(n)*A281605(A027379(n+2))`
-/

namespace A281601.P3341753271136121091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 n * A281605 (A027379 (n + 2)).toNat

end

end A281601.P3341753271136121091

/-! ## A281601.P4094054147985406895

`lcm(A281605(A027379(n+2)), A372362(n))`
-/

namespace A281601.P4094054147985406895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A281605 (A027379 (n + 2)).toNat) (A372362 n)

end

end A281601.P4094054147985406895

/-! ## A281601.P14695279432059838675

`A281605(A055998(n+2))+A230513(n+1)`
-/

namespace A281601.P14695279432059838675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A055998 (n + 2)).toNat + A230513 (n + 1)

end

end A281601.P14695279432059838675

/-!
# A281602: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281602, there is no canonical definition to state claims against.
-/

/-! ## A281602.P10595192668766910572

`A281605(C(n+5, 2)+1+n)`
-/

namespace A281602.P10595192668766910572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (Nat.choose (n + 5) 2 + 1 + n)

end

end A281602.P10595192668766910572

/-! ## A281602.P15875241683563458971

`A281605(Δ[n²]+∑[n+3]+7)`
-/

namespace A281602.P15875241683563458971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 7 : ℕ) : ℤ)).toNat

end

end A281602.P15875241683563458971

/-!
# A281603: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281603, there is no canonical definition to state claims against.
-/

/-! ## A281603.P16127813429851225809

`A281605(A052905(n+3))`
-/

namespace A281603.P16127813429851225809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A052905 (n + 3)).toNat

end

end A281603.P16127813429851225809

/-! ## A281603.P10859500503313011666

`A281605(eq[3, A219347(n)])`
-/

namespace A281603.P10859500503313011666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281603.P10859500503313011666

/-! ## A281603.P3825613738334059739

`A281605(eq[5, A193592(n)])`
-/

namespace A281603.P3825613738334059739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281603.P3825613738334059739

/-! ## A281603.P1307352204055210444

`A281605(eq[8, A258709(n)])`
-/

namespace A281603.P1307352204055210444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281603.P1307352204055210444

/-! ## A281603.P12621578687250905887

`A281605(A055999(n+3)+1)`
-/

namespace A281603.P12621578687250905887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A055999 (n + 3) + 1).toNat

end

end A281603.P12621578687250905887

/-!
# A281604: Number of n X 7 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281604, there is no canonical definition to state claims against.
-/

/-! ## A281604.P16333841709492508101

`A281605(A055999(n+4))`
-/

namespace A281604.P16333841709492508101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A055999 (n + 4)).toNat

end

end A281604.P16333841709492508101

/-! ## A281604.P8427745418138051199

`A281605(eq[4, A219347(n)])`
-/

namespace A281604.P8427745418138051199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281604.P8427745418138051199

/-! ## A281604.P2160814035107339533

`A281605(eq[6, A193592(n)])`
-/

namespace A281604.P2160814035107339533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281604.P2160814035107339533

/-! ## A281604.P10208199146240158263

`A281605(Δ[A023551(n+2)])`
-/

namespace A281604.P10208199146240158263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (f1 (n + 1) - f1 n).toNat

end

end A281604.P10208199146240158263

/-!
# A281606: Number of 3Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281606, there is no canonical definition to state claims against.
-/

/-! ## A281606.P6631519101458543769

`A281605(∑[n+2]+4)`
-/

namespace A281606.P6631519101458543769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281606.P6631519101458543769

/-! ## A281606.P17110547981295343586

`A281605(A167614(n+1))+C(n, 64)`
-/

namespace A281606.P17110547981295343586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A281606.P17110547981295343586

/-! ## A281606.P8893567546715780646

`A281605(A167614(n+1))+A025442(n)`
-/

namespace A281606.P8893567546715780646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 1)).toNat + A025442 n

end

end A281606.P8893567546715780646

/-! ## A281606.P4372195857668287747

`A281605(A167614(n+1))+A065718(n)`
-/

namespace A281606.P4372195857668287747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 1)).toNat + A065718 n

end

end A281606.P4372195857668287747

/-! ## A281606.P18433153952838914451

`A281605(A167614(n+1))+A090620(n)`
-/

namespace A281606.P18433153952838914451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 1)).toNat + A090620 n

end

end A281606.P18433153952838914451

/-!
# A281607: Number of 4Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281607, there is no canonical definition to state claims against.
-/

/-! ## A281607.P8779534461508484842

`A281605(∑[n+3]+7)`
-/

namespace A281607.P8779534461508484842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281607.P8779534461508484842

/-!
# A281608: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281608, there is no canonical definition to state claims against.
-/

/-! ## A281608.P16780794104795611470

`A281605(∑[n+4]+11)`
-/

namespace A281608.P16780794104795611470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A281608.P16780794104795611470

/-!
# A281609: Number of 6Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281609, there is no canonical definition to state claims against.
-/

/-! ## A281609.P14833143524108273408

`A281605(A166136(n+4))`
-/

namespace A281609.P14833143524108273408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A166136 (n + 4)).toNat

end

end A281609.P14833143524108273408

/-! ## A281609.P2949001419348138319

`A281605(A056115(n)+21)`
-/

namespace A281609.P2949001419348138319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A056115 n + 21).toNat

end

end A281609.P2949001419348138319

/-! ## A281609.P699921469659659838

`A281605(A167499(n+4)+1)`
-/

namespace A281609.P699921469659659838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167499 (n + 4) + 1).toNat

end

end A281609.P699921469659659838

/-! ## A281609.P5052357834475119174

`A281605(A167487(n+4)-1)`
-/

namespace A281609.P5052357834475119174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167487 (n + 4) - 1).toNat

end

end A281609.P5052357834475119174

/-! ## A281609.P9009170562561381413

`A281605(A167614(n+4)+3)`
-/

namespace A281609.P9009170562561381413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 4) + 3).toNat

end

end A281609.P9009170562561381413

/-!
# A281610: Number of 7Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281610, there is no canonical definition to state claims against.
-/

/-! ## A281610.P14798501809526105251

`A281605(A167487(n+5))`
-/

namespace A281610.P14798501809526105251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167487 (n + 5)).toNat

end

end A281610.P14798501809526105251

/-! ## A281610.P7334648436700131684

`A281605(A056119(n)+28)`
-/

namespace A281610.P7334648436700131684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A056119 n + 28).toNat

end

end A281610.P7334648436700131684

/-! ## A281610.P16524135806673435185

`A281605(eq[11, A066657(n)])`
-/

namespace A281610.P16524135806673435185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281610.P16524135806673435185

/-! ## A281610.P5492804502158793353

`A281605(A167499(n+5)+2)`
-/

namespace A281610.P5492804502158793353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167499 (n + 5) + 2).toNat

end

end A281610.P5492804502158793353

/-! ## A281610.P2330633554046905533

`A281605(A167614(n+5)+4)`
-/

namespace A281610.P2330633554046905533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281605 (A167614 (n + 5) + 4).toNat

end

end A281610.P2330633554046905533

/-!
# A281611: Expansion of Sum_{p prime, i>=2} x^(p^i)/(1 - x^(p^i)) / Product_{j>=1} (1 - x^j).

The programs for A281611, there is no canonical definition to state claims against.
-/

/-! ## A281611.P5843758912704014164

`A073335(n+1)-A037032(n+1)`
-/

namespace A281611.P5843758912704014164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) - A037032 (n + 1)

end

end A281611.P5843758912704014164

/-! ## A281611.P3695695513661107594

`A073335(n+1)-∑[A144120(n+1)]`
-/

namespace A281611.P3695695513661107594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281611.P3695695513661107594

/-! ## A281611.P11757766597187188379

`A073335(n+1)+∑[A144121(n+1)-A138137(n+1)]`
-/

namespace A281611.P11757766597187188379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144121 (n + 1) - A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281611.P11757766597187188379

/-! ## A281611.P7902951985412868552

`A073335(n+1)-(A006128(n+1)-A144119(n+1))`
-/

namespace A281611.P7902951985412868552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) - (A006128 (n + 1) - A144119 (n + 1))

end

end A281611.P7902951985412868552

/-! ## A281611.P11365630692642662767

`A073335(n+1)+A144119(n+1)-∑[A138137(n+1)]`
-/

namespace A281611.P11365630692642662767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) + (A144119 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281611.P11365630692642662767

/-! ## A281611.P11346899470513785354

`A073335(n+1)-(A144115(n+1)+A144116(n+1)-A144119(n+1))`
-/

namespace A281611.P11346899470513785354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073335 (n + 1) - (A144115 (n + 1) + (A144116 (n + 1) - A144119 (n + 1)))

end

end A281611.P11346899470513785354

/-!
# A281612: Expansion of Sum_{i = p*q, p prime, q prime} x^i/(1 - x^i) / Product_{j>=1} (1 - x^j).

The programs for A281612, there is no canonical definition to state claims against.
-/

/-! ## A281612.P13707881874003676401

`A273859(A274153(n))`
-/

namespace A281612.P13707881874003676401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A274153 n).toNat

end

end A281612.P13707881874003676401

/-!
# A281613: Expansion of Sum_{i>=1} x^(i^3)/(1 - x^(i^3)) / Product_{j>=1} (1 - x^(j^3)).

The programs for A281613, there is no canonical definition to state claims against.
-/

/-! ## A281613.P3875509253422712653

`∑[A001817(A276086(A024645(n)))]`
-/

namespace A281613.P3875509253422712653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A276086 (A024645 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281613.P3875509253422712653

/-! ## A281613.P8874700195863507457

`∑[A005136(Δ[A213484(n)])]`
-/

namespace A281613.P8874700195863507457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281613.P8874700195863507457

/-! ## A281613.P13934472540422847227

`A032378(n+1)-A262681(A002413(n))`
-/

namespace A281613.P13934472540422847227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (n + 1) - A262681 (A002413 n).toNat

end

end A281613.P13934472540422847227

/-! ## A281613.P14965112513109558078

`A032378(n+1)-A262681(n^3)`
-/

namespace A281613.P14965112513109558078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (n + 1) - A262681 (n ^ 3)

end

end A281613.P14965112513109558078

/-! ## A281613.P1135759999276145868

`A008725(n)-A186741(A106834(n+1))`
-/

namespace A281613.P1135759999276145868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n - A186741 (A106834 (n + 1)).toNat

end

end A281613.P1135759999276145868

/-!
# A281614: Number of examples for Simpson's paradox with data items in [n].

The programs for A281614, there is no canonical definition to state claims against.
-/

/-! ## A281614.P7249216474500003580

`A339165(2^n-1)/2`
-/

namespace A281614.P7249216474500003580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339165 (2 ^ n - 1) : ℚ) / 2

end

end A281614.P7249216474500003580

/-! ## A281614.P16892305907043063571

`A121465(C(C(n, 2), 2)+1)`
-/

namespace A281614.P16892305907043063571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121465 (Nat.choose (Nat.choose n 2) 2 + 1)

end

end A281614.P16892305907043063571

/-!
# A281615: Expansion of Sum_{i>=1} x^(i*(i+1)/2)/(1 - x^(i*(i+1)/2)) / Product_{j>=1} (1 - x^(j*(j+1)/2)).

The programs for A281615, there is no canonical definition to state claims against.
-/

/-! ## A281615.P11633378671484500186

`A277576(n+1)+A001222(A284251(n))`
-/

namespace A281615.P11633378671484500186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277576 (n + 1) + A001222 (A284251 n).toNat

end

end A281615.P11633378671484500186

/-! ## A281615.P11890198884007282791

`∑[A056160(A046155(2^n))]`
-/

namespace A281615.P11890198884007282791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056160 (A046155 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281615.P11890198884007282791

/-! ## A281615.P7011526828370647454

`∑[A225644(A225638(3*n+1)²)]`
-/

namespace A281615.P7011526828370647454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A225638 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281615.P7011526828370647454

/-! ## A281615.P500027646054922497

`∑[A116543(A253647(n+1)²)]`
-/

namespace A281615.P500027646054922497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (A253647 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281615.P500027646054922497

/-! ## A281615.P13619614017163425858

`∑[A064628(A061338((4^n)%(3^n)))]`
-/

namespace A281615.P13619614017163425858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (A061338 (4 ^ n % 3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281615.P13619614017163425858

/-!
# A281616: Expansion of Sum_{p prime, i>=1} x^(p^i)/(1 - x^(p^i)) / Product_{p prime, j>=1} (1 - x^(p^j)).

The programs for A281616, there is no canonical definition to state claims against.
-/

/-! ## A281616.P5246181556550881573

`A117989(n+1)+A085974(A001006(n))`
-/

namespace A281616.P5246181556550881573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) + A085974 (A001006 n).toNat

end

end A281616.P5246181556550881573

/-! ## A281616.P5704521697590554572

`A117989(n+1)+A078128(A078136(n+4))`
-/

namespace A281616.P5704521697590554572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) + A078128 (A078136 (n + 4)).toNat

end

end A281616.P5704521697590554572

/-! ## A281616.P2913889995620366173

`A316867(A002846(n+1))+A117989(n+1)`
-/

namespace A281616.P2913889995620366173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A002846 (n + 1)).toNat + A117989 (n + 1)

end

end A281616.P2913889995620366173

/-! ## A281616.P12150278646545555643

`A341996(A080017(n+1))+A117989(n+1)`
-/

namespace A281616.P12150278646545555643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A080017 (n + 1)).toNat + A117989 (n + 1)

end

end A281616.P12150278646545555643

/-! ## A281616.P8175612501932640185

`A320927(A320910(n+1))+A117989(n+1)`
-/

namespace A281616.P8175612501932640185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (A320910 (n + 1)).toNat + A117989 (n + 1)

end

end A281616.P8175612501932640185

/-!
# A281617: Expansion of Sum_{i = p*q, p prime, q prime} x^i/(1 - x^i) / Product_{j = p*q, p prime, q prime} (1 - x^j).

The programs for A281617, there is no canonical definition to state claims against.
-/

/-! ## A281617.P16047759742518674523

`A280544(C(n, A205745(n+1)²))`
-/

namespace A281617.P16047759742518674523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280544 (Nat.choose n (A205745 (n + 1) ^ 2).toNat)

end

end A281617.P16047759742518674523

/-! ## A281617.P6702444080592438154

`A280544(n)%∑[A293939(3*n+2)]`
-/

namespace A281617.P6702444080592438154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293939 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280544 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281617.P6702444080592438154

/-! ## A281617.P518184776785156168

`A280544(A010054(A000079(n))+n)`
-/

namespace A281617.P518184776785156168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280544 (A010054 (A000079 n).toNat + (n : ℤ)).toNat

end

end A281617.P518184776785156168

/-! ## A281617.P14805128744992099186

`A280544(n)-A010054(A000079(n))`
-/

namespace A281617.P14805128744992099186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280544 n - A010054 (A000079 n).toNat

end

end A281617.P14805128744992099186

/-! ## A281617.P8974042507732954140

`A092931(A063834(n))*A280544(n)`
-/

namespace A281617.P8974042507732954140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092931 (A063834 n).toNat * A280544 n

end

end A281617.P8974042507732954140

/-!
# A281618: Fibonacci numbers F such that all the prime factors of F^2 + 1 are also Fibonacci numbers.

The programs for A281618, there is no canonical definition to state claims against.
-/

/-! ## A281618.P13966464923699112697

`A350707(A350714(n)+comp[2*(n+2)]+1)`
-/

namespace A281618.P13966464923699112697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350707 (A350714 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ)).toNat

end

end A281618.P13966464923699112697

/-! ## A281618.P16790721103171021822

`A000045(∪[A245236(n+1), A245245(n)])`
-/

namespace A281618.P16790721103171021822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245245 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A281618.P16790721103171021822

/-! ## A281618.P9049851199066117626

`A048680(2^ceil((n%4+n²)/4))`
-/

namespace A281618.P9049851199066117626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈((n % 4 + n ^ 2 : ℕ) : ℚ) / 4⌉ : ℤ))).toNat

end

end A281618.P9049851199066117626

/-! ## A281618.P7992020541456536079

`A000045(∏{e}[8*a(n-1)+1, #+1]+n)` with `a(0)=0, a(1)=2`
-/

namespace A281618.P7992020541456536079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  8 * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + n)

end

end A281618.P7992020541456536079

/-!
# A281622: Numbers k such that sigma(k-1) is a Mersenne prime (A000668).

The programs for A281622, there is no canonical definition to state claims against.
-/

/-! ## A281622.P16101304221697034854

`A292369(n+1)+1`
-/

namespace A281622.P16101304221697034854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292369 (n + 1) + 1

end

end A281622.P16101304221697034854

/-! ## A281622.P11737820201441994080

`∩[A023194(n+1), A017986(n)]+1`
-/

namespace A281622.P11737820201441994080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A281622.P11737820201441994080

/-! ## A281622.P3099082388987756460

`∩[A023194(n+1), A262975(n)]+1`
-/

namespace A281622.P3099082388987756460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262975 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A281622.P3099082388987756460

/-! ## A281622.P17499321222878249365

`∩[A023194(n+1), A369703(n+1)]+1`
-/

namespace A281622.P17499321222878249365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A281622.P17499321222878249365

/-! ## A281622.P6013986702516026056

`∩[A281882(n+1), A369703(n+1)]+1`
-/

namespace A281622.P6013986702516026056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A281622.P6013986702516026056

/-!
# A281623: Numbers of the form 2^phi(m) + 1, where phi = A000010 = Euler totient function.

The programs for A281623, there is no canonical definition to state claims against.
-/

/-! ## A281623.P17854041208890569588

`2^A002174(n+1)+1`
-/

namespace A281623.P17854041208890569588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002174 (n + 1) : ℤ) + 1

end

end A281623.P17854041208890569588

/-! ## A281623.P17765801506448240255

`2^A002202(n+1)+1`
-/

namespace A281623.P17765801506448240255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002202 (n + 1) : ℤ) + 1

end

end A281623.P17765801506448240255

/-! ## A281623.P12046324328870950706

`record[2^A351168(n+1)+1]`
-/

namespace A281623.P12046324328870950706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A351168 (n + 1) : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281623.P12046324328870950706

/-! ## A281623.P1290003284808453638

`A000051(A002174(n+1))`
-/

namespace A281623.P1290003284808453638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002174 (n + 1)).toNat

end

end A281623.P1290003284808453638

/-! ## A281623.P6559291579897555965

`A000051(A002202(n+1))`
-/

namespace A281623.P6559291579897555965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002202 (n + 1)).toNat

end

end A281623.P6559291579897555965

/-!
# A281624: Numbers m such that 2^phi(m) + 1 is prime (Fermat prime).

The programs for A281624, there is no canonical definition to state claims against.
-/

/-! ## A281624.P265258825562578913

`A003401(∑[A152844(n)])`
-/

namespace A281624.P265258825562578913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281624.P265258825562578913

/-! ## A281624.P17009035714346697024

`A003401(comp[A264444(n)])`
-/

namespace A281624.P17009035714346697024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A281624.P17009035714346697024

/-! ## A281624.P9307711235846485467

`A003401(comp[A328288(n)])`
-/

namespace A281624.P9307711235846485467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328288 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A281624.P9307711235846485467

/-! ## A281624.P1381380096431305909

`A003401(A022465(n+1))`
-/

namespace A281624.P1381380096431305909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (A022465 (n + 1)).toNat

end

end A281624.P1381380096431305909

/-! ## A281624.P12900496940451847956

`A003401(A052425(n+1))`
-/

namespace A281624.P12900496940451847956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (A052425 (n + 1)).toNat

end

end A281624.P12900496940451847956

/-!
# A281625: Numbers m>0 such that m = k*(reversal of k*m) for some k<=m.

The programs for A281625, there is no canonical definition to state claims against.
-/

/-! ## A281625.P1942174770127912216

`A061917(n+2)%p?[A006995(n+4)]`
-/

namespace A281625.P1942174770127912216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061917 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281625.P1942174770127912216

/-! ## A281625.P10946110321153635391

`A061917(n+2)*A325632(A339917(n+1))`
-/

namespace A281625.P10946110321153635391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) * A325632 (A339917 (n + 1)).toNat

end

end A281625.P10946110321153635391

/-! ## A281625.P4044024462725777659

`A061917(n+2)+A014025(A078425(n+1))`
-/

namespace A281625.P4044024462725777659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) + A014025 (A078425 (n + 1)).toNat

end

end A281625.P4044024462725777659

/-! ## A281625.P6003634537830088898

`A050320(A277098(n+1))*A061917(n+2)`
-/

namespace A281625.P6003634537830088898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A277098 (n + 1)).toNat * A061917 (n + 2)

end

end A281625.P6003634537830088898

/-! ## A281625.P14869217901506097338

`A061917(n+2)*A317937(A142119(n+1))`
-/

namespace A281625.P14869217901506097338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) * A317937 (A142119 (n + 1)).toNat

end

end A281625.P14869217901506097338

/-! ## A281625.P2884121797047170399

`A050320(A277098(Δ[n²]-n))+A061917(n+2)-1`
-/

namespace A281625.P2884121797047170399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A277098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + (A061917 (n + 2) - 1)

end

end A281625.P2884121797047170399

/-! ## A281625.P11809453988132546868

`eq[A057427(A121381(n)), A061906(n)]`
-/

namespace A281625.P11809453988132546868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A121381 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281625.P11809453988132546868

/-! ## A281625.P9785656653295091796

`A061917(n+2)+A010051(A090789(n+1))`
-/

namespace A281625.P9785656653295091796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) + A010051 (A090789 (n + 1)).toNat

end

end A281625.P9785656653295091796

/-! ## A281625.P7782206174884417624

`A061917(n+2)*A317937(A142115(n+1))`
-/

namespace A281625.P7782206174884417624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) * A317937 (A142115 (n + 1)).toNat

end

end A281625.P7782206174884417624

/-! ## A281625.P7557749986605254620

`A135481(A139610(2*n))+A061917(n+2)`
-/

namespace A281625.P7557749986605254620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A139610 (2 * n)).toNat + A061917 (n + 2)

end

end A281625.P7557749986605254620

/-! ## A281625.P2708602640434974759

`A061917(A073089(2*(n+1)²+1)+n+1)`
-/

namespace A281625.P2708602640434974759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (A073089 (2 * (n + 1) ^ 2 + 1) + (n : ℤ) + 1).toNat

end

end A281625.P2708602640434974759

/-! ## A281625.P17198777229185417219

`A061917(gcd(n+1, (n+1)*A057889(∑[n]))+1)`
-/

namespace A281625.P17198777229185417219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (Int.gcd (n + 1 : ℤ) ((n + 1 : ℤ) * A057889 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1)

end

end A281625.P17198777229185417219

/-! ## A281625.P15317283363480279513

`A061906(A002113(n+1))*A061917(n+2)`
-/

namespace A281625.P15317283363480279513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 (A002113 (n + 1)).toNat * A061917 (n + 2)

end

end A281625.P15317283363480279513

/-! ## A281625.P12560637375913348512

`A064834(A032350(n+1))+A061917(n+2)`
-/

namespace A281625.P12560637375913348512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A032350 (n + 1)).toNat + A061917 (n + 2)

end

end A281625.P12560637375913348512

/-! ## A281625.P8138350003962337179

`and(1, A001835(n+1))*A061917(n+2)`
-/

namespace A281625.P8138350003962337179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001835 (n + 1)) * A061917 (n + 2)

end

end A281625.P8138350003962337179

/-! ## A281625.P8057397531213049206

`A061917(n+2)+and(2, A073089(A008114(n)+1))`
-/

namespace A281625.P8057397531213049206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 2) + Int.land 2 (A073089 (A008114 n + 1).toNat)

end

end A281625.P8057397531213049206

/-! ## A281625.P5353150241964138299

`eq[1, A061674(n+1)]+1`
-/

namespace A281625.P5353150241964138299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A281625.P5353150241964138299

/-! ## A281625.P16561195549702499191

`eq[A054977(n), A061674(n)]`
-/

namespace A281625.P16561195549702499191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281625.P16561195549702499191

/-! ## A281625.P14586738509080426852

`eq[A057427(n), A061674(n)]`
-/

namespace A281625.P14586738509080426852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281625.P14586738509080426852

/-! ## A281625.P11869529591773651637

`eq[A061674(n), A158388(n)]`
-/

namespace A281625.P11869529591773651637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281625.P11869529591773651637

/-!
# A281626: a(n) = (sum of trivial divisors of n) - (sum of nontrivial divisors of n).

The programs for A281626, the canonical program `A281626.P8109773691282734575` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281626 has offset 1).

The definition of A281626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281626.P8109773691282734575

`2*(n+1)-abs(∑{d}[n+1, #]-2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281626

/-- `2*(n+1)-abs(∑{d}[n+1, #]-2)` -/
def P8109773691282734575.Spec : Prop :=
  ∀ n, P8109773691282734575.a n = A281626 (n + 1)

theorem P8109773691282734575.correct : P8109773691282734575.Spec := by
  intro n
  simp only [A281626, Nat.add_sub_cancel]

end A281626

/-! ## A281626.P5126414265341217231

`n+2-abs(A033879(n+1)-n)`
-/

namespace A281626.P5126414265341217231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - |A033879 (n + 1) - (n : ℤ)|

end

end A281626.P5126414265341217231

namespace A281626

/-- `n+2-abs(A033879(n+1)-n)` -/
def P5126414265341217231.Spec : Prop :=
  ∀ n, P5126414265341217231.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P15496538700862155116

`n--3%comp[∑[n]]-A001065(n+1)`
-/

namespace A281626.P15496538700862155116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A001065 (n + 1)

end

end A281626.P15496538700862155116

namespace A281626

/-- `n--3%comp[∑[n]]-A001065(n+1)` -/
def P15496538700862155116.Spec : Prop :=
  ∀ n, P15496538700862155116.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P11102711762659937341

`n+2-abs(A000203(n+1)-(n+2))`
-/

namespace A281626.P11102711762659937341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - |A000203 (n + 1) - (n + 2 : ℤ)|

end

end A281626.P11102711762659937341

namespace A281626

/-- `n+2-abs(A000203(n+1)-(n+2))` -/
def P11102711762659937341.Spec : Prop :=
  ∀ n, P11102711762659937341.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P11133402819516200401

`A235796(n+1)+A122553(n)`
-/

namespace A281626.P11133402819516200401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + A122553 n

end

end A281626.P11133402819516200401

namespace A281626

/-- `A235796(n+1)+A122553(n)` -/
def P11133402819516200401.Spec : Prop :=
  ∀ n, P11133402819516200401.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P10558449137298687468

`A122553(n)-A237588(n+1)`
-/

namespace A281626.P10558449137298687468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n - A237588 (n + 1)

end

end A281626.P10558449137298687468

namespace A281626

/-- `A122553(n)-A237588(n+1)` -/
def P10558449137298687468.Spec : Prop :=
  ∀ n, P10558449137298687468.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P11537354910878196228

`A005818(n+1)-A088580(n+1)`
-/

namespace A281626.P11537354910878196228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1) - A088580 (n + 1)

end

end A281626.P11537354910878196228

namespace A281626

/-- `A005818(n+1)-A088580(n+1)` -/
def P11537354910878196228.Spec : Prop :=
  ∀ n, P11537354910878196228.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P12918851222145318937

`A065475(n+1)-A048050(n+1)`
-/

namespace A281626.P12918851222145318937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A048050 (n + 1)

end

end A281626.P12918851222145318937

namespace A281626

/-- `A065475(n+1)-A048050(n+1)` -/
def P12918851222145318937.Spec : Prop :=
  ∀ n, P12918851222145318937.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P16580900319210620939

`A171463(n+1)-A001065(n+1)`
-/

namespace A281626.P16580900319210620939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (n + 1) - A001065 (n + 1)

end

end A281626.P16580900319210620939

namespace A281626

/-- `A171463(n+1)-A001065(n+1)` -/
def P16580900319210620939.Spec : Prop :=
  ∀ n, P16580900319210620939.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P3470223821750183359

`2-(A033880(n+1)+A000038(n))`
-/

namespace A281626.P3470223821750183359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033880 (n + 1) + A000038 n)

end

end A281626.P3470223821750183359

namespace A281626

/-- `2-(A033880(n+1)+A000038(n))` -/
def P3470223821750183359.Spec : Prop :=
  ∀ n, P3470223821750183359.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P7697408220590070576

`A033879(n+1)+2*A057427(n)`
-/

namespace A281626.P7697408220590070576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + 2 * A057427 n

end

end A281626.P7697408220590070576

namespace A281626

/-- `A033879(n+1)+2*A057427(n)` -/
def P7697408220590070576.Spec : Prop :=
  ∀ n, P7697408220590070576.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P11431652584442306190

`A103517(n)-(A048050(n+1)+n)`
-/

namespace A281626.P11431652584442306190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - (A048050 (n + 1) + (n : ℤ))

end

end A281626.P11431652584442306190

namespace A281626

/-- `A103517(n)-(A048050(n+1)+n)` -/
def P11431652584442306190.Spec : Prop :=
  ∀ n, P11431652584442306190.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P11507158107055068528

`2*A057428(n)²-A033880(n+1)`
-/

namespace A281626.P11507158107055068528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057428 n ^ 2 - A033880 (n + 1)

end

end A281626.P11507158107055068528

namespace A281626

/-- `2*A057428(n)²-A033880(n+1)` -/
def P11507158107055068528.Spec : Prop :=
  ∀ n, P11507158107055068528.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P7659149111321871257

`A114637(n+1)+1-A001065(n+1)`
-/

namespace A281626.P7659149111321871257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + (1 - A001065 (n + 1))

end

end A281626.P7659149111321871257

namespace A281626

/-- `A114637(n+1)+1-A001065(n+1)` -/
def P7659149111321871257.Spec : Prop :=
  ∀ n, P7659149111321871257.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P2271946515020256128

`A163300(n+1)+2-A000203(n+1)`
-/

namespace A281626.P2271946515020256128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + (2 - A000203 (n + 1))

end

end A281626.P2271946515020256128

namespace A281626

/-- `A163300(n+1)+2-A000203(n+1)` -/
def P2271946515020256128.Spec : Prop :=
  ∀ n, P2271946515020256128.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P4830445181994682635

`A087156(n+1)+2-A173455(n+1)`
-/

namespace A281626.P4830445181994682635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + (2 - A173455 (n + 1))

end

end A281626.P4830445181994682635

namespace A281626

/-- `A087156(n+1)+2-A173455(n+1)` -/
def P4830445181994682635.Spec : Prop :=
  ∀ n, P4830445181994682635.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P9907811680089842167

`A000203(n+1)-2*A048050(n+1)`
-/

namespace A281626.P9907811680089842167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A048050 (n + 1)

end

end A281626.P9907811680089842167

namespace A281626

/-- `A000203(n+1)-2*A048050(n+1)` -/
def P9907811680089842167.Spec : Prop :=
  ∀ n, P9907811680089842167.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P4198955307146766610

`2*A065475(n+1)-A000203(n+1)`
-/

namespace A281626.P4198955307146766610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065475 (n + 1) - A000203 (n + 1)

end

end A281626.P4198955307146766610

namespace A281626

/-- `2*A065475(n+1)-A000203(n+1)` -/
def P4198955307146766610.Spec : Prop :=
  ∀ n, P4198955307146766610.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P2255010806857936259

`A114637(n+1)-(A033880(n+1)+n)`
-/

namespace A281626.P2255010806857936259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) - (A033880 (n + 1) + (n : ℤ))

end

end A281626.P2255010806857936259

namespace A281626

/-- `A114637(n+1)-(A033880(n+1)+n)` -/
def P2255010806857936259.Spec : Prop :=
  ∀ n, P2255010806857936259.a n = A281626 (n + 1)

end A281626

/-! ## A281626.P14578073476703719348

`A065475(A065475(n+1))-A001065(n+1)`
-/

namespace A281626.P14578073476703719348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat - A001065 (n + 1)

end

end A281626.P14578073476703719348

namespace A281626

/-- `A065475(A065475(n+1))-A001065(n+1)` -/
def P14578073476703719348.Spec : Prop :=
  ∀ n, P14578073476703719348.a n = A281626 (n + 1)

end A281626

/-!
# A281627: a(n) is the smallest number k such that sigma(phi(k)) = A062402(k) is the n-th Mersenne prime (A000668(n)), or 0 if no such k exists.

The programs for A281627, there is no canonical definition to state claims against.
-/

/-! ## A281627.P11355348331134653448

`A276044(A000043(n+1))`
-/

namespace A281627.P11355348331134653448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276044 (A000043 (n + 1)).toNat

end

end A281627.P11355348331134653448

/-! ## A281627.P5384118592494678141

`A276044(A366029(n+1))`
-/

namespace A281627.P5384118592494678141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276044 (A366029 (n + 1)).toNat

end

end A281627.P5384118592494678141

/-! ## A281627.P2372769113847825391

`A053576(A000043(n+1)-1)`
-/

namespace A281627.P2372769113847825391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 (A000043 (n + 1) - 1).toNat

end

end A281627.P2372769113847825391

/-! ## A281627.P711121791250321005

`A045544(A309096(n+1))`
-/

namespace A281627.P711121791250321005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045544 (A309096 (n + 1)).toNat

end

end A281627.P711121791250321005

/-!
# A281628: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A281628, there is no canonical definition to state claims against.
-/

/-! ## A281628.P7637273423790428008

`A286078(or(1, n))-A281674(n+1)`
-/

namespace A281628.P7637273423790428008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286078 (Nat.lor 1 n) - A281674 (n + 1)

end

end A281628.P7637273423790428008

/-! ## A281628.P11264928804444721830

`A007088(A281630(n))`
-/

namespace A281628.P11264928804444721830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281630 n).toNat

end

end A281628.P11264928804444721830

/-! ## A281628.P9416217112071940078

`A185544(2*A281630(n))`
-/

namespace A281628.P9416217112071940078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281630 n).toNat

end

end A281628.P9416217112071940078

/-!
# A281629: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A281629, there is no canonical definition to state claims against.
-/

/-! ## A281629.P9651858654173252964

`A007088(A281631(n))`
-/

namespace A281629.P9651858654173252964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281631 n).toNat

end

end A281629.P9651858654173252964

/-! ## A281629.P15033641192584237575

`A185544(2*A281631(n))`
-/

namespace A281629.P15033641192584237575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281631 n).toNat

end

end A281629.P15033641192584237575

/-! ## A281629.P11148625898131593732

`A185544(A281631(n)+A281631(n))`
-/

namespace A281629.P11148625898131593732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A281631 n + A281631 n).toNat

end

end A281629.P11148625898131593732

/-!
# A281630: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 377", based on the 5-celled von Neumann neighborhood.

The programs for A281630, there is no canonical definition to state claims against.
-/

/-! ## A281630.P10136972096565382112

`A278957(n)-A025469(A151050(n))`
-/

namespace A281630.P10136972096565382112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278957 n - A025469 (A151050 n).toNat

end

end A281630.P10136972096565382112

/-! ## A281630.P1123498573585340431

`A278957(n)-A293162(A000255(n))`
-/

namespace A281630.P1123498573585340431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278957 n - A293162 (A000255 n).toNat

end

end A281630.P1123498573585340431

/-! ## A281630.P939354280909239026

`A278957(n)-A293162(A007564(n))`
-/

namespace A281630.P939354280909239026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278957 n - A293162 (A007564 n).toNat

end

end A281630.P939354280909239026

/-! ## A281630.P7185999284106545893

`xor(A278957(n), A350847(A028387(n)))`
-/

namespace A281630.P7185999284106545893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278957 n) (A350847 (A028387 n).toNat)

end

end A281630.P7185999284106545893

/-!
# A281632: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A281632, there is no canonical definition to state claims against.
-/

/-! ## A281632.P10156532123588009956

`A007088(A281634(n))`
-/

namespace A281632.P10156532123588009956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281634 n).toNat

end

end A281632.P10156532123588009956

/-! ## A281632.P6735354601536178281

`A185544(2*A281634(n))`
-/

namespace A281632.P6735354601536178281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281634 n).toNat

end

end A281632.P6735354601536178281

/-!
# A281633: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A281633, there is no canonical definition to state claims against.
-/

/-! ## A281633.P7550573779816596482

`A007088(A281635(n))`
-/

namespace A281633.P7550573779816596482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281635 n).toNat

end

end A281633.P7550573779816596482

/-! ## A281633.P16962073514228945960

`A185544(2*A281635(n))`
-/

namespace A281633.P16962073514228945960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281635 n).toNat

end

end A281633.P16962073514228945960

/-!
# A281636: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A281636, there is no canonical definition to state claims against.
-/

/-! ## A281636.P14598541644779740342

`A007088(A281638(n))`
-/

namespace A281636.P14598541644779740342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281638 n).toNat

end

end A281636.P14598541644779740342

/-! ## A281636.P12750888624669942660

`A007088(A000225(n+2)-A282825(n+1))`
-/

namespace A281636.P12750888624669942660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A282825 (n + 1)).toNat

end

end A281636.P12750888624669942660

/-! ## A281636.P454269941677006354

`A007088(A000079(n+2)-(A282825(n+1)+1))`
-/

namespace A281636.P454269941677006354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000079 (n + 2) - (A282825 (n + 1) + 1)).toNat

end

end A281636.P454269941677006354

/-! ## A281636.P11307571855629243270

`A007088(xor(A000225((2*n+1)%2+n+1), A282825(n+1)))`
-/

namespace A281636.P11307571855629243270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A000225 ((2 * n + 1) % 2 + (n + 1))) (A282825 (n + 1))).toNat

end

end A281636.P11307571855629243270

/-! ## A281636.P736877195674995624

`A256078(A282825(n+1))`
-/

namespace A281636.P736877195674995624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A282825 (n + 1)).toNat

end

end A281636.P736877195674995624

/-!
# A281637: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A281637, there is no canonical definition to state claims against.
-/

/-! ## A281637.P10736375331878445676

`A007088(A281639(n))`
-/

namespace A281637.P10736375331878445676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281639 n).toNat

end

end A281637.P10736375331878445676

/-! ## A281637.P7060472854104976808

`A305989(A281638(n))`
-/

namespace A281637.P7060472854104976808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281638 n).toNat

end

end A281637.P7060472854104976808

/-! ## A281637.P16056768953478967270

`A185544(2*A281639(n))`
-/

namespace A281637.P16056768953478967270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281639 n).toNat

end

end A281637.P16056768953478967270

/-! ## A281637.P16720042139170832952

`A185544(lcm(2, A281639(n)))`
-/

namespace A281637.P16720042139170832952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281639 n))

end

end A281637.P16720042139170832952

/-! ## A281637.P1479999132392466072

`A305989(A000225(n+2)-A282825(n+1))`
-/

namespace A281637.P1479999132392466072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A000225 (n + 2) - A282825 (n + 1)).toNat

end

end A281637.P1479999132392466072

/-!
# A281638: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A281638, there is no canonical definition to state claims against.
-/

/-! ## A281638.P2972591836928089739

`A000225(n+2)-A282825(n+1)`
-/

namespace A281638.P2972591836928089739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A282825 (n + 1)

end

end A281638.P2972591836928089739

/-! ## A281638.P7479288503105453795

`A000079(n+2)-(A282825(n+1)+1)`
-/

namespace A281638.P7479288503105453795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - (A282825 (n + 1) + 1)

end

end A281638.P7479288503105453795

/-! ## A281638.P10035898986450539694

`A000225(round(sqrt(n²+1))+2)%A282825(n+1)`
-/

namespace A281638.P10035898986450539694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat) (A282825 (n + 1))

end

end A281638.P10035898986450539694

/-! ## A281638.P3313119542850858106

`xor(A000225((2*n+1)%2+n+1), A282825(n+1))`
-/

namespace A281638.P3313119542850858106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 ((2 * n + 1) % 2 + (n + 1))) (A282825 (n + 1))

end

end A281638.P3313119542850858106

/-! ## A281638.P16418808081323830010

`record[A228035(A014132(n+1))]-A282825(n+1)`
-/

namespace A281638.P16418808081323830010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228035 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A282825 (n + 1)

end

end A281638.P16418808081323830010

/-!
# A281639: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 382", based on the 5-celled von Neumann neighborhood.

The programs for A281639, there is no canonical definition to state claims against.
-/

/-! ## A281639.P3557839326947394283

`A281638(n)-A055945(A281638(n))`
-/

namespace A281639.P3557839326947394283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281638 n - A055945 (A281638 n).toNat

end

end A281639.P3557839326947394283

/-! ## A281639.P13943819567558305946

`A030101(A281638(n))`
-/

namespace A281639.P13943819567558305946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281638 n).toNat

end

end A281639.P13943819567558305946

/-! ## A281639.P18061541630546752400

`A281589(2*A281638(n))`
-/

namespace A281639.P18061541630546752400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A281638 n).toNat

end

end A281639.P18061541630546752400

/-! ## A281639.P17216475602688917041

`A325401(2*A281638(n))`
-/

namespace A281639.P17216475602688917041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A281638 n).toNat

end

end A281639.P17216475602688917041

/-! ## A281639.P9926951809897247877

`A281589(lcm(2, A281638(n)))`
-/

namespace A281639.P9926951809897247877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A281638 n))

end

end A281639.P9926951809897247877

/-!
# A281640: Expansion of x * f(x, x) * f(x^5, x^25) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A281640, the canonical program `A281640.P12128737728100002910` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281640 has offset 1).

The definition of A281640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281640.P3727708856930246754

`A122855(3*(n+1)+2)`
-/

namespace A281640.P3727708856930246754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (3 * (n + 1) + 2)

end

end A281640.P3727708856930246754

namespace A281640

/-- `A122855(3*(n+1)+2)` -/
def P3727708856930246754.Spec : Prop :=
  ∀ n, P3727708856930246754.a n = A281640 (n + 1)

end A281640

/-! ## A281640.P12128737728100002910

`A260649(3*(n+1)+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A281640

/-- `A260649(3*(n+1)+2)` -/
def P12128737728100002910.Spec : Prop :=
  ∀ n, P12128737728100002910.a n = A281640 (n + 1)

theorem P12128737728100002910.correct : P12128737728100002910.Spec := by
  intro n
  simp only [A281640, Nat.add_sub_cancel]

end A281640

/-! ## A281640.P2087265436539884653

`-A140727(3*(n+1)+2)`
-/

namespace A281640.P2087265436539884653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140727 (3 * (n + 1) + 2)

end

end A281640.P2087265436539884653

namespace A281640

/-- `-A140727(3*(n+1)+2)` -/
def P2087265436539884653.Spec : Prop :=
  ∀ n, P2087265436539884653.a n = A281640 (n + 1)

end A281640

/-! ## A281640.P11612672052164673693

`A192323(3*n+5)/2`
-/

namespace A281640.P11612672052164673693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 (3 * n + 5) : ℚ) / 2

end

end A281640.P11612672052164673693

namespace A281640

/-- `A192323(3*n+5)/2` -/
def P11612672052164673693.Spec : Prop :=
  ∀ n, P11612672052164673693.a n = (A281640 (n + 1) : ℚ)

end A281640

/-! ## A281640.P446545438452963648

`A004526(A192323(3*(n+1)+2))`
-/

namespace A281640.P446545438452963648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A192323 (3 * (n + 1) + 2)).toNat

end

end A281640.P446545438452963648

namespace A281640

/-- `A004526(A192323(3*(n+1)+2))` -/
def P446545438452963648.Spec : Prop :=
  ∀ n, P446545438452963648.a n = A281640 (n + 1)

end A281640

/-! ## A281640.P6167317864072869976

`A140727(A017209(n)+11)`
-/

namespace A281640.P6167317864072869976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A017209 n + 11).toNat

end

end A281640.P6167317864072869976

namespace A281640

/-- `A140727(A017209(n)+11)` -/
def P6167317864072869976.Spec : Prop :=
  ∀ n, P6167317864072869976.a n = A281640 (n + 1)

end A281640

/-!
# A281647: Solutions x to the negative Pell equation x^2 - 10*y^2 = -6 with x > y > 0.

The programs for A281647, the canonical program `A281647.P16948053057489939283` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281647 has offset 1).

The definition of A281647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281647.P16948053057489939283

`38*a(n-2)-a(n-4)` with `a(0)=2, a(1)=22, a(2)=98, a(3)=838`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281647

/-- `38*a(n-2)-a(n-4)` -/
def P16948053057489939283.Spec : Prop :=
  ∀ n, P16948053057489939283.a n = A281647 (n + 1)

theorem P16948053057489939283.correct : P16948053057489939283.Spec := by
  intro n
  simp only [A281647, Nat.add_sub_cancel]

end A281647

/-! ## A281647.P13080255214839081947

`2*A295333(A047233(n+1))`
-/

namespace A281647.P13080255214839081947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295333 (A047233 (n + 1)).toNat

end

end A281647.P13080255214839081947

namespace A281647

/-- `2*A295333(A047233(n+1))` -/
def P13080255214839081947.Spec : Prop :=
  ∀ n, P13080255214839081947.a n = A281647 (n + 1)

end A281647

/-! ## A281647.P6288826614878895282

`record[Δ[A052454(A143097(n+1))]]`
-/

namespace A281647.P6288826614878895282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052454 (A143097 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281647.P6288826614878895282

namespace A281647

/-- `record[Δ[A052454(A143097(n+1))]]` -/
def P6288826614878895282.Spec : Prop :=
  ∀ n, P6288826614878895282.a n = A281647 (n + 1)

end A281647

/-!
# A281648: (Numerator of Bernoulli(2*n)) read mod n.

The programs for A281648, there is no canonical definition to state claims against.
-/

/-! ## A281648.P13709162044582244198

`(A000367(n+1)%(n+1)+n+1)%(n+1)`
-/

namespace A281648.P13709162044582244198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000367 (n + 1)) (n + 1 : ℤ) + (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A281648.P13709162044582244198

/-! ## A281648.P16271637140146142623

`A158505(2*(n+1))%(n+1)`
-/

namespace A281648.P16271637140146142623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158505 (2 * (n + 1))) (n + 1 : ℤ)

end

end A281648.P16271637140146142623

/-! ## A281648.P14679986084049038103

`A228827(∑[A020740(n+1)+1])%(n+1)`
-/

namespace A281648.P14679986084049038103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020740 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (n + 1 : ℤ)

end

end A281648.P14679986084049038103

/-! ## A281648.P12654477997469379402

`A228827(A187829(n+1))%(n+1)`
-/

namespace A281648.P12654477997469379402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228827 (A187829 (n + 1)).toNat) (n + 1 : ℤ)

end

end A281648.P12654477997469379402

/-! ## A281648.P7576774056877379465

`A331804(A187829(n+1)-A300711(n+1))`
-/

namespace A281648.P7576774056877379465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A187829 (n + 1) - A300711 (n + 1)).toNat

end

end A281648.P7576774056877379465

/-!
# A281649: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281649, there is no canonical definition to state claims against.
-/

/-! ## A281649.P12996204276253116102

`A281653(∑[n+3]+1)`
-/

namespace A281649.P12996204276253116102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281649.P12996204276253116102

/-! ## A281649.P5582449397291047368

`record[A281653(A198464(n+1))]`
-/

namespace A281649.P5582449397291047368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281649.P5582449397291047368

/-! ## A281649.P11487636121424499038

`record[gcd(A055138(n), A281653(n+1))]`
-/

namespace A281649.P11487636121424499038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A281653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281649.P11487636121424499038

/-!
# A281650: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281650, there is no canonical definition to state claims against.
-/

/-! ## A281650.P108006822199058527

`A281653(Δ[n²]+∑[n+2]+4)`
-/

namespace A281650.P108006822199058527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A281650.P108006822199058527

/-! ## A281650.P4359757737409916601

`lcm(2, A281653(A141214(n+1)))`
-/

namespace A281650.P4359757737409916601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281653 (A141214 (n + 1)).toNat)

end

end A281650.P4359757737409916601

/-! ## A281650.P17383159146712659243

`A281653(A141214(n+1))%A124149(n+1)`
-/

namespace A281650.P17383159146712659243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281653 (A141214 (n + 1)).toNat) (A124149 (n + 1))

end

end A281650.P17383159146712659243

/-! ## A281650.P10831143000837097716

`A094024(n*A010051(n+1))*A281653(A055998(n+2))`
-/

namespace A281650.P10831143000837097716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 ((n : ℤ) * A010051 (n + 1)).toNat * A281653 (A055998 (n + 2)).toNat

end

end A281650.P10831143000837097716

/-! ## A281650.P11684494965951535592

`A094024(n*A137502(n+1))*A281653(A055998(n+2))`
-/

namespace A281650.P11684494965951535592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 ((n : ℤ) * A137502 (n + 1)).toNat * A281653 (A055998 (n + 2)).toNat

end

end A281650.P11684494965951535592

/-!
# A281651: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281651, there is no canonical definition to state claims against.
-/

/-! ## A281651.P3171815936972238386

`A281653(∑[n+5]+6)`
-/

namespace A281651.P3171815936972238386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281651.P3171815936972238386

/-!
# A281652: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281652, there is no canonical definition to state claims against.
-/

/-! ## A281652.P13328844618527393270

`A281653(∑[n+6]+10)`
-/

namespace A281652.P13328844618527393270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A281652.P13328844618527393270

/-! ## A281652.P8714625998373160211

`A281653(A052905(n+3))+A000007(n+3)`
-/

namespace A281652.P8714625998373160211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A052905 (n + 3)).toNat + A000007 (n + 3)

end

end A281652.P8714625998373160211

/-! ## A281652.P16718226659779737894

`A281653(A052905(n+3))%A338677(3*(n+1))`
-/

namespace A281652.P16718226659779737894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281653 (A052905 (n + 3)).toNat) (A338677 (3 * (n + 1)))

end

end A281652.P16718226659779737894

/-!
# A281654: Number of 2 X n 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281654, there is no canonical definition to state claims against.
-/

/-! ## A281654.P7058859595745091350

`A281653(∑[n+1]+2)`
-/

namespace A281654.P7058859595745091350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281654.P7058859595745091350

/-! ## A281654.P4931252237188571406

`record[A281653(A249725(2*(n+1)))]`
-/

namespace A281654.P4931252237188571406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281654.P4931252237188571406

/-! ## A281654.P1906026795579764485

`record[A010054(n)*A281653(n+2)]`
-/

namespace A281654.P1906026795579764485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281654.P1906026795579764485

/-! ## A281654.P4397858110659790546

`record[A281653(n+2)/A055870(n)]`
-/

namespace A281654.P4397858110659790546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281653 (n + 2) : ℚ) / (A055870 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281654.P4397858110659790546

/-! ## A281654.P12448686662105614771

`record[A167374(n)*A281653(n+3)]`
-/

namespace A281654.P12448686662105614771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A281653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281654.P12448686662105614771

/-!
# A281655: Number of 3Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281655, there is no canonical definition to state claims against.
-/

/-! ## A281655.P3308029345951217627

`A281653(∑[n+2]+4)`
-/

namespace A281655.P3308029345951217627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281655.P3308029345951217627

/-! ## A281655.P5857004861928527992

`lcm((n+1)/∏{p}[n+1, #], A281653(A167614(n+1)))`
-/

namespace A281655.P5857004861928527992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A281653 (A167614 (n + 1)).toNat)

end

end A281655.P5857004861928527992

/-! ## A281655.P10922694538145356999

`A281653(A167614(n+1))+A011730(n)`
-/

namespace A281655.P10922694538145356999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A167614 (n + 1)).toNat + A011730 n

end

end A281655.P10922694538145356999

/-! ## A281655.P8136611538040093461

`A281653(A167614(n+1))+A011731(n)`
-/

namespace A281655.P8136611538040093461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A167614 (n + 1)).toNat + A011731 n

end

end A281655.P8136611538040093461

/-! ## A281655.P7632357336825984996

`A281653(A167614(n+1))+A011739(n)`
-/

namespace A281655.P7632357336825984996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A167614 (n + 1)).toNat + A011739 n

end

end A281655.P7632357336825984996

/-!
# A281656: Number of 4 X n 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281656, there is no canonical definition to state claims against.
-/

/-! ## A281656.P14473315309805469678

`A281653(∑[n+3]+7)`
-/

namespace A281656.P14473315309805469678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281656.P14473315309805469678

/-!
# A281657: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281657, there is no canonical definition to state claims against.
-/

/-! ## A281657.P14111471585820457137

`A281653(A155212(n)+13)`
-/

namespace A281657.P14111471585820457137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A155212 n + 13).toNat

end

end A281657.P14111471585820457137

/-! ## A281657.P15197447353473262226

`A281653(A056000(n)+15)`
-/

namespace A281657.P15197447353473262226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A056000 n + 15).toNat

end

end A281657.P15197447353473262226

/-! ## A281657.P17007593539480555941

`A281653(eq[7, A066657(n)])`
-/

namespace A281657.P17007593539480555941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281657.P17007593539480555941

/-! ## A281657.P15949922007342544794

`A281653(A166136(n+3)-1)`
-/

namespace A281657.P15949922007342544794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A166136 (n + 3) - 1).toNat

end

end A281657.P15949922007342544794

/-! ## A281657.P15874690100208630078

`A281653(A000124(n+4)+4)`
-/

namespace A281657.P15874690100208630078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A000124 (n + 4) + 4).toNat

end

end A281657.P15874690100208630078

/-!
# A281658: Number of 6Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281658, there is no canonical definition to state claims against.
-/

/-! ## A281658.P8702897429723074616

`A281653(A167499(n+4)+1)`
-/

namespace A281658.P8702897429723074616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A167499 (n + 4) + 1).toNat

end

end A281658.P8702897429723074616

/-! ## A281658.P8056033816144732398

`A281653(A167614(n+4)+3)`
-/

namespace A281658.P8056033816144732398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A167614 (n + 4) + 3).toNat

end

end A281658.P8056033816144732398

/-! ## A281658.P6064942634699520469

`A281653(A000124(n+5)+5)`
-/

namespace A281658.P6064942634699520469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A000124 (n + 5) + 5).toNat

end

end A281658.P6064942634699520469

/-! ## A281658.P9596992056451605817

`A281653(A000096(n+4)+7)`
-/

namespace A281658.P9596992056451605817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (A000096 (n + 4) + 7).toNat

end

end A281658.P9596992056451605817

/-!
# A281659: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with 9*x^2 + 16*y^2 + 24*z^2 + 48*w^2 a square, where x,y,z,w are nonnegative integers.

The programs for A281659, there is no canonical definition to state claims against.
-/

/-! ## A281659.P11647365493159523723

`A062756(A176868(n)+A022369(n))`
-/

namespace A281659.P11647365493159523723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A176868 n + A022369 n).toNat

end

end A281659.P11647365493159523723

/-!
# A281660: The least common multiple of 1+n and 1+n^2.

The programs for A281660, the canonical program `A281660.P13686491175995817642` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281660 has offset 0).

The definition of A281660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281660.P13686491175995817642

`(3+(-1)^n)*(1+n+n²+n^3)/4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281660

/-- `(3+(-1)^n)*(1+n+n²+n^3)/4` -/
def P13686491175995817642.Spec : Prop :=
  ∀ n, P13686491175995817642.a n = (A281660 n : ℚ)

end A281660

/-! ## A281660.P16533591853370407568

`A053698(n)/A000034(n)`
-/

namespace A281660.P16533591853370407568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053698 n : ℚ) / (A000034 n : ℚ)

end

end A281660.P16533591853370407568

namespace A281660

/-- `A053698(n)/A000034(n)` -/
def P16533591853370407568.Spec : Prop :=
  ∀ n, P16533591853370407568.a n = (A281660 n : ℚ)

end A281660

/-! ## A281660.P12708503862291458898

`lcm(n+1, n²+1)`
-/

namespace A281660.P12708503862291458898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2 + 1)

end

end A281660.P12708503862291458898

namespace A281660

/-- `lcm(n+1, n²+1)` -/
def P12708503862291458898.Spec : Prop :=
  ∀ n, (P12708503862291458898.a n : ℤ) = A281660 n

end A281660

/-! ## A281660.P13840188339886700904

`lcm(∑[2*n]-(n-1), ∑[2*n+1])/(n+1)`
-/

namespace A281660.P13840188339886700904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A281660.P13840188339886700904

namespace A281660

/-- `lcm(∑[2*n]-(n-1), ∑[2*n+1])/(n+1)` -/
def P13840188339886700904.Spec : Prop :=
  ∀ n, P13840188339886700904.a n = (A281660 n : ℚ)

end A281660

/-! ## A281660.P13454615249755363084

`A281661(n)/A002061(n)`
-/

namespace A281660.P13454615249755363084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281661 n : ℚ) / (A002061 n : ℚ)

end

end A281660.P13454615249755363084

namespace A281660

/-- `A281661(n)/A002061(n)` -/
def P13454615249755363084.Spec : Prop :=
  ∀ n, P13454615249755363084.a n = (A281660 n : ℚ)

end A281660

/-! ## A281660.P8156754455862337054

`gcd(A024002(n), A071237(n))`
-/

namespace A281660.P8156754455862337054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024002 n) (A071237 n)

end

end A281660.P8156754455862337054

namespace A281660

/-- `gcd(A024002(n), A071237(n))` -/
def P8156754455862337054.Spec : Prop :=
  ∀ n, (P8156754455862337054.a n : ℤ) = A281660 n

end A281660

/-! ## A281660.P14705279208498951593

`gcd(A024006(n), A281661(n))`
-/

namespace A281660.P14705279208498951593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024006 n) (A281661 n)

end

end A281660.P14705279208498951593

namespace A281660

/-- `gcd(A024006(n), A281661(n))` -/
def P14705279208498951593.Spec : Prop :=
  ∀ n, (P14705279208498951593.a n : ℤ) = A281660 n

end A281660

/-! ## A281660.P14333663010013863574

`A026741(n+1)+n²*A026741(n+1)`
-/

namespace A281660.P14333663010013863574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + (n ^ 2 : ℤ) * A026741 (n + 1)

end

end A281660.P14333663010013863574

namespace A281660

/-- `A026741(n+1)+n²*A026741(n+1)` -/
def P14333663010013863574.Spec : Prop :=
  ∀ n, P14333663010013863574.a n = A281660 n

end A281660

/-! ## A281660.P10507984468415213423

`A026741(n+1)+A000217(n)*A022998(n)`
-/

namespace A281660.P10507984468415213423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A000217 n * A022998 n

end

end A281660.P10507984468415213423

namespace A281660

/-- `A026741(n+1)+A000217(n)*A022998(n)` -/
def P10507984468415213423.Spec : Prop :=
  ∀ n, P10507984468415213423.a n = A281660 n

end A281660

/-! ## A281660.P15377062874468312361

`A026741(n+1)*A059100(n)-A026741(n+1)`
-/

namespace A281660.P15377062874468312361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A059100 n - A026741 (n + 1)

end

end A281660.P15377062874468312361

namespace A281660

/-- `A026741(n+1)*A059100(n)-A026741(n+1)` -/
def P15377062874468312361.Spec : Prop :=
  ∀ n, P15377062874468312361.a n = A281660 n

end A281660

/-!
# A281661: The least common multiple of 1 + n^2 and 1 + n^3.

The programs for A281661, the canonical program `A281661.P6809619640485791929` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281661 has offset 0).

The definition of A281661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281661.P6809619640485791929

`(n²+1)*(n^3+1)/(1+n%2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281661

/-- `(n²+1)*(n^3+1)/(1+n%2)` -/
def P6809619640485791929.Spec : Prop :=
  ∀ n, P6809619640485791929.a n = (A281661 n : ℚ)

end A281661

/-! ## A281661.P16187977015067109420

`(3+(-1)^n)*(1+n²+n^3+n^5)/4`
-/

namespace A281661.P16187977015067109420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ n : ℚ) * ((1 + n ^ 2 + n ^ 3 + n ^ 5 : ℚ) / 4)

end

end A281661.P16187977015067109420

namespace A281661

/-- `(3+(-1)^n)*(1+n²+n^3+n^5)/4` -/
def P16187977015067109420.Spec : Prop :=
  ∀ n, P16187977015067109420.a n = (A281661 n : ℚ)

end A281661

/-! ## A281661.P11439399033367364288

`lcm(n²+1, A000578(n)+1)`
-/

namespace A281661.P11439399033367364288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 + 1 : ℤ) (A000578 n + 1)

end

end A281661.P11439399033367364288

namespace A281661

/-- `lcm(n²+1, A000578(n)+1)` -/
def P11439399033367364288.Spec : Prop :=
  ∀ n, (P11439399033367364288.a n : ℤ) = A281661 n

end A281661

/-! ## A281661.P9810128673295169290

`lcm(n*n²+1, A002522(n))`
-/

namespace A281661.P9810128673295169290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n * n ^ 2 + 1 : ℤ) (A002522 n)

end

end A281661.P9810128673295169290

namespace A281661

/-- `lcm(n*n²+1, A002522(n))` -/
def P9810128673295169290.Spec : Prop :=
  ∀ n, (P9810128673295169290.a n : ℤ) = A281661 n

end A281661

/-! ## A281661.P12224259882440486201

`A228564(n)+n^3*A228564(n)`
-/

namespace A281661.P12224259882440486201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n + (n ^ 3 : ℤ) * A228564 n

end

end A281661.P12224259882440486201

namespace A281661

/-- `A228564(n)+n^3*A228564(n)` -/
def P12224259882440486201.Spec : Prop :=
  ∀ n, P12224259882440486201.a n = A281661 n

end A281661

/-! ## A281661.P6683098176833586371

`(A002061(n)*A281660(n))%(3^(n+3))`
-/

namespace A281661.P6683098176833586371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n * A281660 n) (3 ^ (n + 3) : ℤ)

end

end A281661.P6683098176833586371

namespace A281661

/-- `(A002061(n)*A281660(n))%(3^(n+3))` -/
def P6683098176833586371.Spec : Prop :=
  ∀ n, P6683098176833586371.a n = A281661 n

end A281661

/-!
# A281662: (Denominator of Bernoulli(2*n)) read mod n.

The programs for A281662, the canonical program `A281662.P12271729128554163798` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281662 has offset 1).

The definition of A281662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281662.P11615501283623809338

`A002445(n+1)%(n+1)`
-/

namespace A281662.P11615501283623809338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002445 (n + 1)) (n + 1 : ℤ)

end

end A281662.P11615501283623809338

namespace A281662

/-- `A002445(n+1)%(n+1)` -/
def P11615501283623809338.Spec : Prop :=
  ∀ n, P11615501283623809338.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P11482417364580668283

`A027762(n+1)%(n+1)`
-/

namespace A281662.P11482417364580668283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027762 (n + 1)) (n + 1 : ℤ)

end

end A281662.P11482417364580668283

namespace A281662

/-- `A027762(n+1)%(n+1)` -/
def P11482417364580668283.Spec : Prop :=
  ∀ n, P11482417364580668283.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P3803587563431411196

`A140814(n+1)%(n+1)`
-/

namespace A281662.P3803587563431411196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140814 (n + 1)) (n + 1 : ℤ)

end

end A281662.P3803587563431411196

namespace A281662

/-- `A140814(n+1)%(n+1)` -/
def P3803587563431411196.Spec : Prop :=
  ∀ n, P3803587563431411196.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P7861314095368270718

`A027642(2*(n+1))%(n+1)`
-/

namespace A281662.P7861314095368270718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027642 (2 * (n + 1))) (n + 1 : ℤ)

end

end A281662.P7861314095368270718

namespace A281662

/-- `A027642(2*(n+1))%(n+1)` -/
def P7861314095368270718.Spec : Prop :=
  ∀ n, P7861314095368270718.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P17437298261077930155

`A027760(2*(n+1))%(n+1)`
-/

namespace A281662.P17437298261077930155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027760 (2 * (n + 1))) (n + 1 : ℤ)

end

end A281662.P17437298261077930155

namespace A281662

/-- `A027760(2*(n+1))%(n+1)` -/
def P17437298261077930155.Spec : Prop :=
  ∀ n, P17437298261077930155.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P12906040196803384571

`A006954(n+2)%(n+1)`
-/

namespace A281662.P12906040196803384571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006954 (n + 2)) (n + 1 : ℤ)

end

end A281662.P12906040196803384571

namespace A281662

/-- `A006954(n+2)%(n+1)` -/
def P12906040196803384571.Spec : Prop :=
  ∀ n, P12906040196803384571.a n = A281662 (n + 1)

end A281662

/-! ## A281662.P12271729128554163798

`A132084(n+1)%(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A281662

/-- `A132084(n+1)%(n+1)` -/
def P12271729128554163798.Spec : Prop :=
  ∀ n, P12271729128554163798.a n = A281662 (n + 1)

theorem P12271729128554163798.correct : P12271729128554163798.Spec := by
  intro n
  simp only [A281662, Nat.add_sub_cancel]

end A281662

/-!
# A281664: Numbers k such that A000005(k) = A000005(A000217(k)).

The programs for A281664, the canonical program `A281664.P3503266122031613119` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281664 has offset 1).

The definition of A281664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045326, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281664.P3503266122031613119

`A045326(n+1)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A281664

/-- `A045326(n+1)-1` -/
def P3503266122031613119.Spec : Prop :=
  ∀ n, P3503266122031613119.a n = A281664 (n + 1)

theorem P3503266122031613119.correct : P3503266122031613119.Spec := by
  intro n
  simp only [A281664, Nat.add_sub_cancel]

end A281664

/-! ## A281664.P6513066070708375042

`p?[a(n-1)+4]-1` with `a(0)=2, a(1)=3`
-/

namespace A281664.P6513066070708375042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A281664.P6513066070708375042

namespace A281664

/-- `p?[a(n-1)+4]-1` -/
def P6513066070708375042.Spec : Prop :=
  ∀ n, P6513066070708375042.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P138437970285364664

`A082075(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A281664.P138437970285364664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A082075 (n - 1) + a (n - 1)

end

end A281664.P138437970285364664

namespace A281664

/-- `A082075(n-1)+a(n-1)` -/
def P138437970285364664.Spec : Prop :=
  ∀ n, P138437970285364664.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P9702005438689651394

`A002145(n)-a(n+1-C(n+1, n))` with `a(0)=1`
-/

namespace A281664.P9702005438689651394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002145 n - a (n + 1 - Nat.choose (n + 1) n)

end

end A281664.P9702005438689651394

namespace A281664

/-- `A002145(n)-a(n+1-C(n+1, n))` -/
def P9702005438689651394.Spec : Prop :=
  ∀ n, P9702005438689651394.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P14416806060396424921

`A038698(n+1)+A308567(n+1)+A045326(n+1)`
-/

namespace A281664.P14416806060396424921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + (A308567 (n + 1) + A045326 (n + 1))

end

end A281664.P14416806060396424921

namespace A281664

/-- `A038698(n+1)+A308567(n+1)+A045326(n+1)` -/
def P14416806060396424921.Spec : Prop :=
  ∀ n, P14416806060396424921.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P7456423653552268762

`p?[A332555(n+1)]-1`
-/

namespace A281664.P7456423653552268762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A281664.P7456423653552268762

namespace A281664

/-- `p?[A332555(n+1)]-1` -/
def P7456423653552268762.Spec : Prop :=
  ∀ n, P7456423653552268762.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P1231316746579555149

`p?[lcm(2, n+1)+n]-1`
-/

namespace A281664.P1231316746579555149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A281664.P1231316746579555149

namespace A281664

/-- `p?[lcm(2, n+1)+n]-1` -/
def P1231316746579555149.Spec : Prop :=
  ∀ n, P1231316746579555149.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P7570491581707883822

`p?[or(1, n)+1+n]-1`
-/

namespace A281664.P7570491581707883822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A281664.P7570491581707883822

namespace A281664

/-- `p?[or(1, n)+1+n]-1` -/
def P7570491581707883822.Spec : Prop :=
  ∀ n, P7570491581707883822.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P12784021206922100292

`p?[A097987(n+1)]-1`
-/

namespace A281664.P12784021206922100292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A281664.P12784021206922100292

namespace A281664

/-- `p?[A097987(n+1)]-1` -/
def P12784021206922100292.Spec : Prop :=
  ∀ n, P12784021206922100292.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P10680664779641953902

`record[A080088(n+1)-1]`
-/

namespace A281664.P10680664779641953902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080088 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P10680664779641953902

namespace A281664

/-- `record[A080088(n+1)-1]` -/
def P10680664779641953902.Spec : Prop :=
  ∀ n, P10680664779641953902.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P1286398758165581580

`A267101(A332807(2*n+1))-1`
-/

namespace A281664.P1286398758165581580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A332807 (2 * n + 1)).toNat - 1

end

end A281664.P1286398758165581580

namespace A281664

/-- `A267101(A332807(2*n+1))-1` -/
def P1286398758165581580.Spec : Prop :=
  ∀ n, P1286398758165581580.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P18179419903562625816

`p?[xor(n, a(n-1))]-1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A281664.P18179419903562625816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  Nat.xor n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A281664.P18179419903562625816

namespace A281664

/-- `p?[xor(n, a(n-1))]-1` -/
def P18179419903562625816.Spec : Prop :=
  ∀ n, P18179419903562625816.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P16253269494891015301

`record[A000010(or(2, n))]`
-/

namespace A281664.P16253269494891015301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P16253269494891015301

namespace A281664

/-- `record[A000010(or(2, n))]` -/
def P16253269494891015301.Spec : Prop :=
  ∀ n, P16253269494891015301.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P11672033609874914486

`record[A000010(lcm(2, n)+1)]`
-/

namespace A281664.P11672033609874914486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P11672033609874914486

namespace A281664

/-- `record[A000010(lcm(2, n)+1)]` -/
def P11672033609874914486.Spec : Prop :=
  ∀ n, P11672033609874914486.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P6762613135994021588

`record[A006530(or(2, n))]-1`
-/

namespace A281664.P6762613135994021588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A281664.P6762613135994021588

namespace A281664

/-- `record[A006530(or(2, n))]-1` -/
def P6762613135994021588.Spec : Prop :=
  ∀ n, P6762613135994021588.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P2434281624149926047

`record[A000010(abs(1-4*n))]`
-/

namespace A281664.P2434281624149926047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P2434281624149926047

namespace A281664

/-- `record[A000010(abs(1-4*n))]` -/
def P2434281624149926047.Spec : Prop :=
  ∀ n, P2434281624149926047.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P10665076863588126884

`record[A000010(n+2)/and(2, n)!]`
-/

namespace A281664.P10665076863588126884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P10665076863588126884

namespace A281664

/-- `record[A000010(n+2)/and(2, n)!]` -/
def P10665076863588126884.Spec : Prop :=
  ∀ n, P10665076863588126884.a n = (A281664 (n + 1) : ℚ)

end A281664

/-! ## A281664.P462919537175581074

`record[A006530(and(n, n+2)+2)-1]`
-/

namespace A281664.P462919537175581074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.land n (n + 2) + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P462919537175581074

namespace A281664

/-- `record[A006530(and(n, n+2)+2)-1]` -/
def P462919537175581074.Spec : Prop :=
  ∀ n, P462919537175581074.a n = A281664 (n + 1)

end A281664

/-! ## A281664.P12247639178025211476

`record[A000010(2*n+1)^-(-1)^n]`
-/

namespace A281664.P12247639178025211476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) ^ (-((-1) ^ n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281664.P12247639178025211476

namespace A281664

/-- `record[A000010(2*n+1)^-(-1)^n]` -/
def P12247639178025211476.Spec : Prop :=
  ∀ n, P12247639178025211476.a n = (A281664 (n + 1) : ℚ)

end A281664

/-!
# A281665: Numbers m such that A006667(m)/A006577(m) = 1/3.

The programs for A281665, there is no canonical definition to state claims against.
-/

/-! ## A281665.P5847285677570379177

`A329535(n+2)`
-/

namespace A281665.P5847285677570379177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329535 (n + 2)

end

end A281665.P5847285677570379177

/-! ## A281665.P2419302409222611699

`record[A329535(A286378(-xor(n, -1)))]`
-/

namespace A281665.P2419302409222611699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329535 (A286378 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281665.P2419302409222611699

/-! ## A281665.P7057479438852578530

`record[A329535(A000267(A008611(n)))]`
-/

namespace A281665.P7057479438852578530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329535 (A000267 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281665.P7057479438852578530

/-! ## A281665.P11229137859852359409

`record[A329535(A080513(A007599(n)))]`
-/

namespace A281665.P11229137859852359409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329535 (A080513 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281665.P11229137859852359409

/-! ## A281665.P9933651009383678903

`record[A329535(A020986(A098181(n)))]`
-/

namespace A281665.P9933651009383678903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329535 (A020986 (A098181 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281665.P9933651009383678903

/-!
# A281669: Expansion of Sum_{i>=1} x^(i^3)/(1 + x^(i^3)) * Product_{j>=1} (1 + x^(j^3)).

The programs for A281669, there is no canonical definition to state claims against.
-/

/-! ## A281669.P2030880990088660658

`∑{d}[A331845(n+1), C(#%6, #)]`
-/

namespace A281669.P2030880990088660658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (d % 6) d

end

end A281669.P2030880990088660658

/-! ## A281669.P4003763687457146115

`A002186(A331845(n+1))`
-/

namespace A281669.P4003763687457146115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (A331845 (n + 1)).toNat

end

end A281669.P4003763687457146115

/-! ## A281669.P12879362584807503312

`A055091(A331845(n+1)²)`
-/

namespace A281669.P12879362584807503312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A331845 (n + 1) ^ 2).toNat

end

end A281669.P12879362584807503312

/-! ## A281669.P5891362844902190740

`A019569(A331845(n+1)+1)`
-/

namespace A281669.P5891362844902190740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019569 (A331845 (n + 1) + 1).toNat

end

end A281669.P5891362844902190740

/-! ## A281669.P2024869303553755770

`A230864(A331845(n+1)+1)`
-/

namespace A281669.P2024869303553755770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230864 (A331845 (n + 1) + 1).toNat

end

end A281669.P2024869303553755770

/-! ## A281669.P11938802989398135213

`A333609(A331845(n+1)+1)`
-/

namespace A281669.P11938802989398135213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333609 (A331845 (n + 1) + 1).toNat

end

end A281669.P11938802989398135213

/-! ## A281669.P17314792802999447294

`A029362(A331845(n+1)+6)`
-/

namespace A281669.P17314792802999447294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 (A331845 (n + 1) + 6).toNat

end

end A281669.P17314792802999447294

/-! ## A281669.P10888154087850695028

`A048766(5*A331845(n+1))`
-/

namespace A281669.P10888154087850695028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (5 * A331845 (n + 1)).toNat

end

end A281669.P10888154087850695028

/-! ## A281669.P5217596844895099386

`lcm(Δ[A280130(n)], A002376(n+1))`
-/

namespace A281669.P5217596844895099386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A002376 (n + 1))

end

end A281669.P5217596844895099386

/-! ## A281669.P11797718163500322861

`A002376(n+1)*A279329(n+1)`
-/

namespace A281669.P11797718163500322861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1) * A279329 (n + 1)

end

end A281669.P11797718163500322861

/-! ## A281669.P8439347326151623139

`∑{e}[5*A331845(n+1), A000005(#)]`
-/

namespace A281669.P8439347326151623139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A331845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A281669.P8439347326151623139

/-! ## A281669.P3504726093064511034

`∑{e}[5*A331845(n+1), A000010(#)]`
-/

namespace A281669.P3504726093064511034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A331845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A281669.P3504726093064511034

/-! ## A281669.P16375189663771852918

`∑{e}[7*A331845(n+1), A020639(#!)]`
-/

namespace A281669.P16375189663771852918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A331845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorial (Nat.factorization (f1 n).natAbs p))

end

end A281669.P16375189663771852918

/-! ## A281669.P18275634509065401410

`A059939(A101776(A331845(n+1))²)`
-/

namespace A281669.P18275634509065401410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A101776 (A331845 (n + 1)).toNat ^ 2).toNat

end

end A281669.P18275634509065401410

/-! ## A281669.P11101978109696977596

`A084558(A331845(n)+Δ[A331845(n)])`
-/

namespace A281669.P11101978109696977596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A331845 n + (f1 (n + 1) - f1 n)).toNat

end

end A281669.P11101978109696977596

/-! ## A281669.P17066083371673923044

`∑{d}[A331845(n+1), A331845(A217038(#))]`
-/

namespace A281669.P17066083371673923044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A331845 (A217038 d).toNat

end

end A281669.P17066083371673923044

/-! ## A281669.P7267883080009468169

`A000120(∑[A279329(n)]*A279329(n+1))`
-/

namespace A281669.P7267883080009468169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((∑ j ∈ Finset.range (n + 1), f1 j) * A279329 (n + 1)).toNat

end

end A281669.P7267883080009468169

/-! ## A281669.P5531991771440644936

`∑{d}[A331845(n+1), A331845(#-A000005(#))]`
-/

namespace A281669.P5531991771440644936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A331845 ((d : ℤ) - A000005 d).toNat

end

end A281669.P5531991771440644936

/-! ## A281669.P9289278680825957485

`∑{d}[A030581(A331845(n+1)+6), A030581(#+1)]`
-/

namespace A281669.P9289278680825957485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030581 (A331845 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A030581 (d + 1)

end

end A281669.P9289278680825957485

/-!
# A281670: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A281670, there is no canonical definition to state claims against.
-/

/-! ## A281670.P14423922056645276562

`A007088(A281672(n))`
-/

namespace A281670.P14423922056645276562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281672 n).toNat

end

end A281670.P14423922056645276562

/-! ## A281670.P9041518066535930041

`A185544(2*A281672(n))`
-/

namespace A281670.P9041518066535930041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281672 n).toNat

end

end A281670.P9041518066535930041

/-!
# A281671: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A281671, there is no canonical definition to state claims against.
-/

/-! ## A281671.P6845530102447453967

`A007088(A281673(n))`
-/

namespace A281671.P6845530102447453967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281673 n).toNat

end

end A281671.P6845530102447453967

/-! ## A281671.P2792761449222772854

`A185544(2*A281673(n))`
-/

namespace A281671.P2792761449222772854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281673 n).toNat

end

end A281671.P2792761449222772854

/-!
# A281672: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 387", based on the 5-celled von Neumann neighborhood.

The programs for A281672, there is no canonical definition to state claims against.
-/

/-! ## A281672.P15945407872535722976

`and(∑[2^n], A236631(A084221(n)))`
-/

namespace A281672.P15945407872535722976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A236631 (A084221 n).toNat)

end

end A281672.P15945407872535722976

/-! ## A281672.P14937665203889152410

`and(A002384(A165859(n+1)), A213243(n+1))`
-/

namespace A281672.P14937665203889152410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002384 (A165859 (n + 1)).toNat) (A213243 (n + 1))

end

end A281672.P14937665203889152410

/-!
# A281674: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A281674, there is no canonical definition to state claims against.
-/

/-! ## A281674.P35759423643331019

`A007088(A281676(n))`
-/

namespace A281674.P35759423643331019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281676 n).toNat

end

end A281674.P35759423643331019

/-! ## A281674.P9029244810703822715

`A185544(2*A281676(n))`
-/

namespace A281674.P9029244810703822715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281676 n).toNat

end

end A281674.P9029244810703822715

/-! ## A281674.P1801711392690092155

`xor(A010894(A005101(n+1)), A279137(n))`
-/

namespace A281674.P1801711392690092155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A005101 (n + 1)).toNat + 21)) (A279137 n)

end

end A281674.P1801711392690092155

/-! ## A281674.P4834907785136227877

`xor(A010894(A005101(n+1)), A279752(n))`
-/

namespace A281674.P4834907785136227877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A005101 (n + 1)).toNat + 21)) (A279752 n)

end

end A281674.P4834907785136227877

/-!
# A281675: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 389", based on the 5-celled von Neumann neighborhood.

The programs for A281675, there is no canonical definition to state claims against.
-/

/-! ## A281675.P4727732928759114253

`A007088(A281677(n))`
-/

namespace A281675.P4727732928759114253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281677 n).toNat

end

end A281675.P4727732928759114253

/-! ## A281675.P10711647927732038764

`A185544(2*A281677(n))`
-/

namespace A281675.P10711647927732038764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281677 n).toNat

end

end A281675.P10711647927732038764

/-!
# A281679: Number of perfect matchings in the graph C_10 X C_n.

The programs for A281679, there is no canonical definition to state claims against.
-/

/-! ## A281679.P8014483893838906798

`A341741(A167499(n+5))`
-/

namespace A281679.P8014483893838906798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A167499 (n + 5)).toNat

end

end A281679.P8014483893838906798

/-! ## A281679.P5055103321841487263

`A341741(eq[6, A128227(n)])`
-/

namespace A281679.P5055103321841487263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281679.P5055103321841487263

/-! ## A281679.P12703469773356501351

`A341741(A167614(n+5)+2)`
-/

namespace A281679.P12703469773356501351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A167614 (n + 5) + 2).toNat

end

end A281679.P12703469773356501351

/-! ## A281679.P14277707181233815367

`A341741(A056000(n+2)+15)`
-/

namespace A281679.P14277707181233815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A056000 (n + 2) + 15).toNat

end

end A281679.P14277707181233815367

/-! ## A281679.P8026169966798490722

`A341741(eq[6, A048151(n+1)])`
-/

namespace A281679.P8026169966798490722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281679.P8026169966798490722

/-!
# A281680: a(0)=1; for n > 0, if 2n+1 is prime, then a(n)=1, otherwise a(n) = (2n+1)/(largest proper divisor of 2n+1).

The programs for A281680, there is no canonical definition to state claims against.
-/

/-! ## A281680.P9438710182561059984

`A107286(Δ[n²])`
-/

namespace A281680.P9438710182561059984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A281680.P9438710182561059984

/-! ## A281680.P449370819925983529

`or(1, A107286(2*n+1))`
-/

namespace A281680.P449370819925983529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A107286 (2 * n + 1))

end

end A281680.P449370819925983529

/-! ## A281680.P10663134121922429345

`abs(abs(A090368(n+1)-n)-n)`
-/

namespace A281680.P10663134121922429345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A090368 (n + 1) - (n : ℤ)| - (n : ℤ))|

end

end A281680.P10663134121922429345

/-! ## A281680.P10174995306048987595

`abs(abs(A020639(Δ[n²])-n)-n)`
-/

namespace A281680.P10174995306048987595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)| - (n : ℤ))|

end

end A281680.P10174995306048987595

/-! ## A281680.P15392523456254381970

`A020639(∏{p}[2*n+1, #%(2*n)])`
-/

namespace A281680.P15392523456254381970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p % (2 * n))

end

end A281680.P15392523456254381970

/-! ## A281680.P4239722417026692660

`ceil((2*n+1)/A322982(2*n+1))`
-/

namespace A281680.P4239722417026692660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / (A322982 (2 * n + 1) : ℚ)⌉

end

end A281680.P4239722417026692660

/-! ## A281680.P7236038444929072577

`or(1, A020639(2*n+1)%(2*n+1))`
-/

namespace A281680.P7236038444929072577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (A020639 (2 * n + 1)) (2 * n + 1 : ℤ))

end

end A281680.P7236038444929072577

/-! ## A281680.P1175245172839302988

`A020639(A171435(Δ[n²]))`
-/

namespace A281680.P1175245172839302988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A171435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A281680.P1175245172839302988

/-! ## A281680.P11265976920153099545

`A006530(A107286(2*n+1))`
-/

namespace A281680.P11265976920153099545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A107286 (2 * n + 1)).toNat

end

end A281680.P11265976920153099545

/-! ## A281680.P13313325107447948526

`A126773(A107286(n+1+n))`
-/

namespace A281680.P13313325107447948526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (A107286 (n + 1 + n)).toNat

end

end A281680.P13313325107447948526

/-! ## A281680.P3547635574655330290

`A032742(2*A107286(2*n+1))`
-/

namespace A281680.P3547635574655330290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * A107286 (2 * n + 1)).toNat

end

end A281680.P3547635574655330290

/-! ## A281680.P10339333035490817790

`A085392(2*A107286(2*n+1))`
-/

namespace A281680.P10339333035490817790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A107286 (2 * n + 1)).toNat

end

end A281680.P10339333035490817790

/-! ## A281680.P10186618196591138519

`filter[A107286(2*n+1), A000035(#)]`
-/

namespace A281680.P10186618196591138519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A281680.P10186618196591138519

/-! ## A281680.P134933537887258803

`filter[A107286(2*n+1), A008966(#)]`
-/

namespace A281680.P134933537887258803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A281680.P134933537887258803

/-! ## A281680.P4584795329892425114

`filter[A107286(2*n+1), A010055(#)]`
-/

namespace A281680.P4584795329892425114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A281680.P4584795329892425114

/-! ## A281680.P3870339655273674029

`filter[A107286(2*n+1), A035263(#)]`
-/

namespace A281680.P3870339655273674029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A281680.P3870339655273674029

/-! ## A281680.P1234650269400122053

`filter[A107286(2*n+1), A039982(#)]`
-/

namespace A281680.P1234650269400122053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A281680.P1234650269400122053

/-! ## A281680.P125143102844884342

`filter[A107286(2*n+1), A080339(#)]`
-/

namespace A281680.P125143102844884342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A281680.P125143102844884342

/-! ## A281680.P1341439399279269843

`filter[A107286(2*n+1), A080545(#)]`
-/

namespace A281680.P1341439399279269843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A281680.P1341439399279269843

/-! ## A281680.P18135745773820156169

`A020639((2*n+1)/A006530(comp[2*n]))`
-/

namespace A281680.P18135745773820156169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ))).toNat

end

end A281680.P18135745773820156169

/-!
# A281681: a(n) = A055396(A071904(n)) - 1.

The programs for A281681, there is no canonical definition to state claims against.
-/

/-! ## A281681.P11609729817781425490

`A055396(A071904(n+1))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281681.P11609729817781425490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A071904 (n + 1)).toNat - 1

end

end A281681.P11609729817781425490

/-! ## A281681.P6029571351943704376

`A383259(A162022(n+1)+1)`
-/

namespace A281681.P6029571351943704376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383259 (A162022 (n + 1) + 1).toNat

end

end A281681.P6029571351943704376

/-! ## A281681.P1181133674783595811

`A000720(A162022(n+1)-1)`
-/

namespace A281681.P1181133674783595811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A162022 (n + 1) - 1).toNat

end

end A281681.P1181133674783595811

/-! ## A281681.P16837648672617016271

`A033270(A020639(A071904(n+1)))`
-/

namespace A281681.P16837648672617016271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020639 (A071904 (n + 1)).toNat).toNat

end

end A281681.P16837648672617016271

/-! ## A281681.P9077665381061924022

`A033270(A020639(A014076(n+2)))`
-/

namespace A281681.P9077665381061924022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020639 (A014076 (n + 2)).toNat).toNat

end

end A281681.P9077665381061924022

/-! ## A281681.P4276571626392645636

`A038802(A047845(n+2))`
-/

namespace A281681.P4276571626392645636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038802 (A047845 (n + 2)).toNat

end

end A281681.P4276571626392645636

/-! ## A281681.P5984436340978860821

`A038802(A153238(n+1)+1)`
-/

namespace A281681.P5984436340978860821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038802 (A153238 (n + 1) + 1).toNat

end

end A281681.P5984436340978860821

/-! ## A281681.P16632558970029186266

`A070804(p?[A107286(2*n+1)])`
-/

namespace A281681.P16632558970029186266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281681.P16632558970029186266

/-! ## A281681.P2654296258291945037

`A000720(p?[A107286(2*n+1)]-1)`
-/

namespace A281681.P2654296258291945037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A281681.P2654296258291945037

/-! ## A281681.P16422501729065239477

`A003963(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P16422501729065239477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P16422501729065239477

/-! ## A281681.P6214832217588270834

`A026233(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P6214832217588270834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P6214832217588270834

/-! ## A281681.P16458839846007740243

`A026238(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P16458839846007740243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P16458839846007740243

/-! ## A281681.P17284539438825504601

`A049084(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P17284539438825504601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P17284539438825504601

/-! ## A281681.P11812073163602312131

`A061395(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P11812073163602312131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P11812073163602312131

/-! ## A281681.P1497152549143046562

`A066136(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P1497152549143046562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P1497152549143046562

/-! ## A281681.P2090918738733141353

`A230980(p?[A107286(2*n+1)]-1)`
-/

namespace A281681.P2090918738733141353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A281681.P2090918738733141353

/-! ## A281681.P12637877286688283588

`A319855(p?[A107286(2*n+1)])-1`
-/

namespace A281681.P12637877286688283588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A281681.P12637877286688283588

/-! ## A281681.P15665846282793159342

`A000720(A057237(A005381(2*n+1)))`
-/

namespace A281681.P15665846282793159342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057237 (A005381 (2 * n + 1)).toNat).toNat

end

end A281681.P15665846282793159342

/-! ## A281681.P6586737908002836817

`A055399(Δ[A163631(n+1)])-1`
-/

namespace A281681.P6586737908002836817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055399 (f1 (n + 1) - f1 n).toNat - 1

end

end A281681.P6586737908002836817

/-! ## A281681.P11039161062399634133

`A055396(A007921(n+1)+2)-1`
-/

namespace A281681.P11039161062399634133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007921 (n + 1) + 2).toNat - 1

end

end A281681.P11039161062399634133

/-!
# A281683: Expansion of Product_{k>=1} (1 - x^(2*k-1))^(2*k-1)/(1 - x^(2*k))^(2*k).

The programs for A281683, there is no canonical definition to state claims against.
-/

/-! ## A281683.P6717338892557316500

`(-1)^n*A224364(n)`
-/

namespace A281683.P6717338892557316500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A224364 n

end

end A281683.P6717338892557316500

/-! ## A281683.P17071989416590796714

`A224364(n)/A033999(n)`
-/

namespace A281683.P17071989416590796714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224364 n : ℚ) / (A033999 n : ℚ)

end

end A281683.P17071989416590796714

/-! ## A281683.P11956419677644841935

`-A033999(n+1)*A224364(n)`
-/

namespace A281683.P11956419677644841935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A224364 n)

end

end A281683.P11956419677644841935

/-! ## A281683.P1894414881880662684

`-A062157(n+2)*A224364(n)`
-/

namespace A281683.P1894414881880662684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 (n + 2) * A224364 n)

end

end A281683.P1894414881880662684

/-! ## A281683.P4940737392268751775

`A224364(n)/A034947(2*n+1)`
-/

namespace A281683.P4940737392268751775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224364 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

end

end A281683.P4940737392268751775

/-! ## A281683.P1488202757938228259

`A224364(n)/A057079(A008585(n))`
-/

namespace A281683.P1488202757938228259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224364 n : ℚ) / (A057079 (A008585 n).toNat : ℚ)

end

end A281683.P1488202757938228259

/-! ## A281683.P9799167659808062273

`A224364(n)/A273225(n)*A274621(n)`
-/

namespace A281683.P9799167659808062273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224364 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A281683.P9799167659808062273

/-! ## A281683.P2287597551502649397

`A064027(n+1)*A224364(n)/A321543(n+1)`
-/

namespace A281683.P2287597551502649397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064027 (n + 1) * A224364 n : ℚ) / (A321543 (n + 1) : ℚ)

end

end A281683.P2287597551502649397

/-!
# A281686: Numbers k such that A001222(k) = A001222(A003415(k)).

The programs for A281686, there is no canonical definition to state claims against.
-/

/-! ## A281686.P15212381158437400305

`A110087(record[A355302(n+1)])`
-/

namespace A281686.P15212381158437400305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110087 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A281686.P15212381158437400305

/-! ## A281686.P16237144317749103762

`lt[A064052(A089710(2*(n+1))), A250120(n)]`
-/

namespace A281686.P16237144317749103762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (A089710 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281686.P16237144317749103762

/-! ## A281686.P17775127760151516375

`lt[A361110(A089710(2*(n+1))), A000201(n+1)]`
-/

namespace A281686.P17775127760151516375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361110 (A089710 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281686.P17775127760151516375

/-!
# A281687: Number of partitions of 2*n into the sum of two totient numbers (A002202).

The programs for A281687, there is no canonical definition to state claims against.
-/

/-! ## A281687.P17456688706842798544

`A282778(n)+a(n-1)` with `a(0)=1`
-/

namespace A281687.P17456688706842798544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282778 n + a (n - 1)

end

end A281687.P17456688706842798544

/-! ## A281687.P10539248072709267267

`∑[A282778(floor(acot(n)+n))]+1`
-/

namespace A281687.P10539248072709267267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A281687.P10539248072709267267

/-! ## A281687.P11794550673453934823

`∑[A282778(round(sqrt(n²+1)))]+1`
-/

namespace A281687.P11794550673453934823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A281687.P11794550673453934823

/-! ## A281687.P2566904534767739649

`∑[A282778(floor(3/(or(1, n)+n)+n))]`
-/

namespace A281687.P2566904534767739649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 ⌊3 / (Nat.lor 1 n + n : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281687.P2566904534767739649

/-! ## A281687.P8745822040379497747

`∑[A282778(floor(3/A273421(n)+n))]`
-/

namespace A281687.P8745822040379497747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 ⌊3 / (A273421 n : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281687.P8745822040379497747

/-! ## A281687.P13858038511514134280

`∑[A282778(floor(3/A035198(n)+n))]`
-/

namespace A281687.P13858038511514134280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 ⌊3 / (A035198 n : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281687.P13858038511514134280

/-! ## A281687.P2093833447729084510

`∑[A282778(floor(3/A020639((n+1)²+n)+n))]`
-/

namespace A281687.P2093833447729084510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282778 ⌊3 / (A020639 ((n + 1) ^ 2 + n) : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281687.P2093833447729084510

/-!
# A281688: Expansion of Sum_{i>=0} x^(2^i)/(1 - x^(2^i)) / Product_{j>=0} (1 - x^(2^j)).

The programs for A281688, there is no canonical definition to state claims against.
-/

/-! ## A281688.P11650149748187987697

`A325368(eq[A010059(3*(n+1)), A038569(n)]+1)`
-/

namespace A281688.P11650149748187987697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A281688.P11650149748187987697

/-! ## A281688.P7015555555691950009

`or(A007302(A000110(n)), A303748(n))`
-/

namespace A281688.P7015555555691950009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007302 (A000110 n).toNat) (A303748 n)

end

end A281688.P7015555555691950009

/-! ## A281688.P7791519542930967526

`or(A007302(A287256(n)), A303748(n))`
-/

namespace A281688.P7791519542930967526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007302 (A287256 n).toNat) (A303748 n)

end

end A281688.P7791519542930967526

/-! ## A281688.P14360376142912909322

`or(A007302(A287257(n)), A303748(n))`
-/

namespace A281688.P14360376142912909322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007302 (A287257 n).toNat) (A303748 n)

end

end A281688.P14360376142912909322

/-! ## A281688.P7744038163189227482

`A239235(A259201(3*n+1))+A027193(n)`
-/

namespace A281688.P7744038163189227482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A259201 (3 * n + 1 + 20)).toNat + A027193 n

end

end A281688.P7744038163189227482

/-!
# A281689: Expansion of Sum_{k>=2} x^Fibonacci(k)/(1 - x^Fibonacci(k)) / Product_{k>=2} (1 - x^Fibonacci(k)).

The programs for A281689, there is no canonical definition to state claims against.
-/

/-! ## A281689.P15757257035522779343

`∑[∑[A034968(A006882(n))]]`
-/

namespace A281689.P15757257035522779343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A006882 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281689.P15757257035522779343

/-! ## A281689.P1512235191520755484

`A002024(∑[A131882(n)²])`
-/

namespace A281689.P1512235191520755484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131882 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281689.P1512235191520755484

/-! ## A281689.P8737893430417872462

`A123578(∑[A131882(n)²])`
-/

namespace A281689.P8737893430417872462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131882 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281689.P8737893430417872462

/-! ## A281689.P1873727722307926805

`∑[record[A353382(A196844(n))]]`
-/

namespace A281689.P1873727722307926805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353382 (A196844 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281689.P1873727722307926805

/-! ## A281689.P5333092000833912236

`A117908(A232752(3*n+2))+A095944(n+1)`
-/

namespace A281689.P5333092000833912236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117908 (A232752 (3 * n + 2)).toNat + A095944 (n + 1)

end

end A281689.P5333092000833912236

/-!
# A281690: Number of nX3 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281690, there is no canonical definition to state claims against.
-/

/-! ## A281690.P1981059313760261625

`A281693(∑[n+3]+1)`
-/

namespace A281690.P1981059313760261625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281690.P1981059313760261625

/-! ## A281690.P3885780579939000107

`record[A281693(A198464(n+1))]`
-/

namespace A281690.P3885780579939000107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281690.P3885780579939000107

/-! ## A281690.P7681333501137650956

`record[A129686(n+1)*A281693(n+1)]`
-/

namespace A281690.P7681333501137650956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (n + 1) * A281693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281690.P7681333501137650956

/-! ## A281690.P13115071103563228403

`A281693(Δ[A008778(n)])+A185246(n)`
-/

namespace A281690.P13115071103563228403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (f1 (n + 1) - f1 n).toNat + A185246 n

end

end A281690.P13115071103563228403

/-! ## A281690.P14010001343091248086

`A158388(n)*A281693(Δ[A008778(n)])`
-/

namespace A281690.P14010001343091248086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A281693 (f1 (n + 1) - f1 n).toNat

end

end A281690.P14010001343091248086

/-!
# A281691: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281691, there is no canonical definition to state claims against.
-/

/-! ## A281691.P1404822064045792365

`A281693(∑[n+4]+3)`
-/

namespace A281691.P1404822064045792365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281691.P1404822064045792365

/-! ## A281691.P12348800705417732850

`A281693(A141214(n+1))%A290009(n)`
-/

namespace A281691.P12348800705417732850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281693 (A141214 (n + 1)).toNat) (A290009 n)

end

end A281691.P12348800705417732850

/-! ## A281691.P9491854575780809912

`A260390(2*n+5)*A281693(A141214(n+1))`
-/

namespace A281691.P9491854575780809912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (2 * n + 5) * A281693 (A141214 (n + 1)).toNat

end

end A281691.P9491854575780809912

/-! ## A281691.P6991046742064482540

`A281693(A141214(n+1))*A328457(2*n+5)`
-/

namespace A281691.P6991046742064482540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A141214 (n + 1)).toNat * A328457 (2 * n + 5)

end

end A281691.P6991046742064482540

/-!
# A281692: Number of nX5 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281692, there is no canonical definition to state claims against.
-/

/-! ## A281692.P15422998134167954521

`A281693(∑[n+5]+6)`
-/

namespace A281692.P15422998134167954521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281692.P15422998134167954521

/-!
# A281694: Number of 2Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281694, there is no canonical definition to state claims against.
-/

/-! ## A281694.P10043244436037562227

`A281693(∑[n+1]+2)`
-/

namespace A281694.P10043244436037562227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281694.P10043244436037562227

/-! ## A281694.P10154806758333842409

`A281693(A133263(n+1))+A000035(2*n)`
-/

namespace A281694.P10154806758333842409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A281694.P10154806758333842409

/-! ## A281694.P5699985547311484547

`A281693(A133263(n+1))%A023882(n+1)`
-/

namespace A281694.P5699985547311484547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281693 (A133263 (n + 1)).toNat) (A023882 (n + 1))

end

end A281694.P5699985547311484547

/-! ## A281694.P15610380588702797580

`lcm(A025177(n+1), A281693(A133263(n+1)))`
-/

namespace A281694.P15610380588702797580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025177 (n + 1)) (A281693 (A133263 (n + 1)).toNat)

end

end A281694.P15610380588702797580

/-!
# A281695: Number of 3Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281695, there is no canonical definition to state claims against.
-/

/-! ## A281695.P18255500930414961636

`A281693(∑[n+2]+4)`
-/

namespace A281695.P18255500930414961636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281695.P18255500930414961636

/-! ## A281695.P12900819147741593457

`or(char[1], A281693(A167614(n+1)))`
-/

namespace A281695.P12900819147741593457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281693 (A167614 (n + 1)).toNat)

end

end A281695.P12900819147741593457

/-! ## A281695.P11307046432972028475

`A281693(A167614(n+1))+A011731(n)`
-/

namespace A281695.P11307046432972028475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167614 (n + 1)).toNat + A011731 n

end

end A281695.P11307046432972028475

/-! ## A281695.P4479854795466393815

`A281693(A167614(n+1))+A011734(n)`
-/

namespace A281695.P4479854795466393815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167614 (n + 1)).toNat + A011734 n

end

end A281695.P4479854795466393815

/-! ## A281695.P8864442103153794379

`A281693(A167614(n+1))+A025466(n)`
-/

namespace A281695.P8864442103153794379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167614 (n + 1)).toNat + A025466 n

end

end A281695.P8864442103153794379

/-!
# A281696: Number of 4Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281696, there is no canonical definition to state claims against.
-/

/-! ## A281696.P4831290499794025715

`A281693(A141214(n)+7)`
-/

namespace A281696.P4831290499794025715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A141214 n + 7).toNat

end

end A281696.P4831290499794025715

/-! ## A281696.P8188117575643169248

`A281693(A052905(n)+9)`
-/

namespace A281696.P8188117575643169248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A052905 n + 9).toNat

end

end A281696.P8188117575643169248

/-! ## A281696.P15512719439418175942

`A281693(A055999(n)+10)`
-/

namespace A281696.P15512719439418175942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A055999 n + 10).toNat

end

end A281696.P15512719439418175942

/-! ## A281696.P18227620647439730386

`A281693(eq[5, A066657(n)])`
-/

namespace A281696.P18227620647439730386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281696.P18227620647439730386

/-! ## A281696.P1191738589740605476

`A281693(A167614(n+2)+1)`
-/

namespace A281696.P1191738589740605476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167614 (n + 2) + 1).toNat

end

end A281696.P1191738589740605476

/-!
# A281697: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281697, there is no canonical definition to state claims against.
-/

/-! ## A281697.P15777346511704885727

`A281693(∑[n+4]+11)`
-/

namespace A281697.P15777346511704885727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A281697.P15777346511704885727

/-! ## A281697.P7904007665476319580

`A281693(A167499(n+3))+A011731(n)`
-/

namespace A281697.P7904007665476319580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167499 (n + 3)).toNat + A011731 n

end

end A281697.P7904007665476319580

/-! ## A281697.P16649843251579485980

`A281693(A167499(n+3))+A025466(n)`
-/

namespace A281697.P16649843251579485980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167499 (n + 3)).toNat + A025466 n

end

end A281697.P16649843251579485980

/-! ## A281697.P10601989131352962400

`A281693(A167499(n+3))+A151878(2*(n+2))`
-/

namespace A281697.P10601989131352962400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281693 (A167499 (n + 3)).toNat + A151878 (2 * (n + 2))

end

end A281697.P10601989131352962400

/-! ## A281697.P10803545384145714520

`A281693(A167499(n+3))%A151617(3*(n+1))`
-/

namespace A281697.P10803545384145714520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281693 (A167499 (n + 3)).toNat) (A151617 (3 * (n + 1)))

end

end A281697.P10803545384145714520

/-!
# A281698: a(n) = 5*2^(n-1) + 2^(2*n-1) + 6^n + 1.

The programs for A281698, the canonical program `A281698.P13749213329271070590` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281698 has offset 0).

The definition of A281698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281698.P13749213329271070590

`5*2^(n-1)+2^(2*n-1)+6^n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281698

/-- `5*2^(n-1)+2^(2*n-1)+6^n+1` -/
def P13749213329271070590.Spec : Prop :=
  ∀ n, P13749213329271070590.a n = (A281698 n : ℚ)

end A281698

/-! ## A281698.P4741108034330188004

`(A279512(n)+A000051(n)²)/2`
-/

namespace A281698.P4741108034330188004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279512 n + A000051 n ^ 2 : ℚ) / 2

end

end A281698.P4741108034330188004

namespace A281698

/-- `(A279512(n)+A000051(n)²)/2` -/
def P4741108034330188004.Spec : Prop :=
  ∀ n, P4741108034330188004.a n = (A281698 n : ℚ)

end A281698

/-! ## A281698.P16112513505871182175

`record[A034856(n+2)+A000400(A007814(n+1))]`
-/

namespace A281698.P16112513505871182175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 2) + A000400 (A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281698.P16112513505871182175

namespace A281698

/-- `record[A034856(n+2)+A000400(A007814(n+1))]` -/
def P16112513505871182175.Spec : Prop :=
  ∀ n, P16112513505871182175.a n = A281698 n

end A281698

/-!
# A281699: Sierpinski stellated octahedron numbers: a(n) = 2*(-3*2^(n+1) + 2^(2*n+3) + 5).

The programs for A281699, the canonical program `A281699.P16259989632962626318` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281699 has offset 0).

The definition of A281699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281699.P16259989632962626318

`16*4^n-12*2^n+10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A281699

/-- `16*4^n-12*2^n+10` -/
def P16259989632962626318.Spec : Prop :=
  ∀ n, P16259989632962626318.a n = A281699 n

theorem P16259989632962626318.correct : P16259989632962626318.Spec := by
  intro n
  simp only [A281699]

end A281699

/-! ## A281699.P16545676830972456743

`xor(3, A289999(n))`
-/

namespace A281699.P16545676830972456743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A289999 n)

end

end A281699.P16545676830972456743

namespace A281699

/-- `xor(3, A289999(n))` -/
def P16545676830972456743.Spec : Prop :=
  ∀ n, P16545676830972456743.a n = A281699 n

end A281699

/-! ## A281699.P2868339928504390599

`2*(A195460(n+1)+6)`
-/

namespace A281699.P2868339928504390599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195460 (n + 1) + 6)

end

end A281699.P2868339928504390599

namespace A281699

/-- `2*(A195460(n+1)+6)` -/
def P2868339928504390599.Spec : Prop :=
  ∀ n, P2868339928504390599.a n = A281699 n

end A281699

/-! ## A281699.P11313401148255088693

`xor(2, 6*A123290(n+2))`
-/

namespace A281699.P11313401148255088693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (6 * A123290 (n + 2))

end

end A281699.P11313401148255088693

namespace A281699

/-- `xor(2, 6*A123290(n+2))` -/
def P11313401148255088693.Spec : Prop :=
  ∀ n, P11313401148255088693.a n = A281699 n

end A281699

/-! ## A281699.P17280915114082235597

`2*(3*(A006095(n+2)+1)+1)`
-/

namespace A281699.P17280915114082235597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A006095 (n + 2) + 1) + 1)

end

end A281699.P17280915114082235597

namespace A281699

/-- `2*(3*(A006095(n+2)+1)+1)` -/
def P17280915114082235597.Spec : Prop :=
  ∀ n, P17280915114082235597.a n = A281699 n

end A281699

/-! ## A281699.P9690440584145437690

`abs(A195463(n)+4*A169726(n)-1)`
-/

namespace A281699.P9690440584145437690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195463 n + (4 * A169726 n - 1)|

end

end A281699.P9690440584145437690

namespace A281699

/-- `abs(A195463(n)+4*A169726(n)-1)` -/
def P9690440584145437690.Spec : Prop :=
  ∀ n, P9690440584145437690.a n = A281699 n

end A281699

/-! ## A281699.P10842399320489971830

`abs(A195463(n)+∑[A153893(n)²-1])`
-/

namespace A281699.P10842399320489971830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195463 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A281699.P10842399320489971830

namespace A281699

/-- `abs(A195463(n)+∑[A153893(n)²-1])` -/
def P10842399320489971830.Spec : Prop :=
  ∀ n, P10842399320489971830.a n = A281699 n

end A281699

/-! ## A281699.P1580699586135222070

`2*(A000225(n)*A056469(n+4)+7)`
-/

namespace A281699.P1580699586135222070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 n * A056469 (n + 4) + 7)

end

end A281699.P1580699586135222070

namespace A281699

/-- `2*(A000225(n)*A056469(n+4)+7)` -/
def P1580699586135222070.Spec : Prop :=
  ∀ n, P1580699586135222070.a n = A281699 n

end A281699

/-! ## A281699.P10218388694339045346

`∑[xor(A033484(2*(n+1)), A033484(n+1))]`
-/

namespace A281699.P10218388694339045346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033484 (2 * (n + 1))) (A033484 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281699.P10218388694339045346

namespace A281699

/-- `∑[xor(A033484(2*(n+1)), A033484(n+1))]` -/
def P10218388694339045346.Spec : Prop :=
  ∀ n, P10218388694339045346.a n = A281699 n

end A281699

/-! ## A281699.P12132615412724347508

`2*(A165751(n+1)+A020737(2*n+1))`
-/

namespace A281699.P12132615412724347508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A165751 (n + 1) + A020737 (2 * n + 1))

end

end A281699.P12132615412724347508

namespace A281699

/-- `2*(A165751(n+1)+A020737(2*n+1))` -/
def P12132615412724347508.Spec : Prop :=
  ∀ n, P12132615412724347508.a n = A281699 n

end A281699

/-! ## A281699.P9031299226941097128

`2*(A020737(2*n+1)-A131128(n+1))`
-/

namespace A281699.P9031299226941097128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020737 (2 * n + 1) - A131128 (n + 1))

end

end A281699.P9031299226941097128

namespace A281699

/-- `2*(A020737(2*n+1)-A131128(n+1))` -/
def P9031299226941097128.Spec : Prop :=
  ∀ n, P9031299226941097128.a n = A281699 n

end A281699

