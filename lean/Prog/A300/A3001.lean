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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A300101: a(n) = (pp-1)/x, where pp = A001567(n) and x = ord(2,pp), the smallest positive integer such that 2^x == 1 (mod pp).

The programs for A300101, there is no canonical definition to state claims against.
-/

/-! ## A300101.P2722181868534427360

`(A001567(n+1)-1)/A306413(n+1)`
-/

namespace A300101.P2722181868534427360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001567 (n + 1) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P2722181868534427360

/-! ## A300101.P8509640270336993201

`floor(A001567(n+1)/A306413(n+1))`
-/

namespace A300101.P8509640270336993201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001567 (n + 1) : ℚ) / (A306413 (n + 1) : ℚ)⌋

end

end A300101.P8509640270336993201

/-! ## A300101.P12222584092055679444

`round(A001567(A000027(n+1))/A306413(n+1))`
-/

namespace A300101.P12222584092055679444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001567 (A000027 (n + 1)).toNat : ℚ) / (A306413 (n + 1) : ℚ))

end

end A300101.P12222584092055679444

/-! ## A300101.P14256713351437435460

`(∪[A050217(n+1), A080747(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P14256713351437435460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P14256713351437435460

/-! ## A300101.P8817039123842793139

`(∪[A066488(n+1), A080747(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P8817039123842793139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P8817039123842793139

/-! ## A300101.P7314502166678605441

`(∩[A020144(n+1), A122785(n+1)]-1)/A306413(n+1)`
-/

namespace A300101.P7314502166678605441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122785 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306413 (n + 1) : ℚ)

end

end A300101.P7314502166678605441

/-!
# A300103: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300103, there is no canonical definition to state claims against.
-/

/-! ## A300103.P15532993462533427981

`A300108(∑[4*n]+1)`
-/

namespace A300103.P15532993462533427981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300103.P15532993462533427981

/-! ## A300103.P18056616376453160752

`∑{digits}[n, A300108(A001844(#))]`
-/

namespace A300103.P18056616376453160752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300108 (A001844 x).toNat).sum

end

end A300103.P18056616376453160752

/-! ## A300103.P1616311940638846747

`record[A300108(Δ[A235355(n)])]`
-/

namespace A300103.P1616311940638846747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300103.P1616311940638846747

/-! ## A300103.P15649481073171367573

`and(-1, A300108(A001844(n)))`
-/

namespace A300103.P15649481073171367573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300108 (A001844 n).toNat)

end

end A300103.P15649481073171367573

/-! ## A300103.P2015669464694214982

`record[A300108(A330613(n+1))]`
-/

namespace A300103.P2015669464694214982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300103.P2015669464694214982

/-!
# A300104: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300104, there is no canonical definition to state claims against.
-/

/-! ## A300104.P11801152015724428550

`A300108(A374004(n+1))`
-/

namespace A300104.P11801152015724428550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374004 (n + 1)).toNat

end

end A300104.P11801152015724428550

/-! ## A300104.P13845482250840598078

`A300108(A141214(n)+7)`
-/

namespace A300104.P13845482250840598078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A141214 n + 7).toNat

end

end A300104.P13845482250840598078

/-! ## A300104.P15927286482926810127

`A300108(A052905(n)+9)`
-/

namespace A300104.P15927286482926810127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A052905 n + 9).toNat

end

end A300104.P15927286482926810127

/-! ## A300104.P3918189954569127005

`A300108(A167614(n+2)+1)`
-/

namespace A300104.P3918189954569127005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A167614 (n + 2) + 1).toNat

end

end A300104.P3918189954569127005

/-! ## A300104.P10619253427247439410

`A300108(A112355(n+1)+4)`
-/

namespace A300104.P10619253427247439410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A112355 (n + 1) + 4).toNat

end

end A300104.P10619253427247439410

/-!
# A300105: Number of n X 5 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300105, there is no canonical definition to state claims against.
-/

/-! ## A300105.P725730859782441869

`A300108(A374005(n+1))`
-/

namespace A300105.P725730859782441869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374005 (n + 1)).toNat

end

end A300105.P725730859782441869

/-! ## A300105.P10577019938214942595

`A300108(A167499(n+3))`
-/

namespace A300105.P10577019938214942595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A167499 (n + 3)).toNat

end

end A300105.P10577019938214942595

/-! ## A300105.P698289562404011039

`A300108(A155212(n)+13)`
-/

namespace A300105.P698289562404011039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A155212 n + 13).toNat

end

end A300105.P698289562404011039

/-! ## A300105.P13522565346932290241

`A300108(A056000(n)+15)`
-/

namespace A300105.P13522565346932290241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A056000 n + 15).toNat

end

end A300105.P13522565346932290241

/-! ## A300105.P432796135102814062

`A300108(A056115(n)+11)`
-/

namespace A300105.P432796135102814062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A056115 n + 11).toNat

end

end A300105.P432796135102814062

/-!
# A300106: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300106, there is no canonical definition to state claims against.
-/

/-! ## A300106.P16514228717622966061

`A300108(A374007(n+1))`
-/

namespace A300106.P16514228717622966061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374007 (n + 1)).toNat

end

end A300106.P16514228717622966061

/-! ## A300106.P12929617380596798659

`A300108(A056115(n)+21)`
-/

namespace A300106.P12929617380596798659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A056115 n + 21).toNat

end

end A300106.P12929617380596798659

/-! ## A300106.P2539443481470193984

`A300108(A167614(n+4)+3)`
-/

namespace A300106.P2539443481470193984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A167614 (n + 4) + 3).toNat

end

end A300106.P2539443481470193984

/-! ## A300106.P7908688999609314136

`A300108(eq[7, A131818(n+1)])`
-/

namespace A300106.P7908688999609314136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300106.P7908688999609314136

/-! ## A300106.P5245791650134412192

`A300108(eq[3, A219347(n)])`
-/

namespace A300106.P5245791650134412192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300106.P5245791650134412192

/-!
# A300107: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300107, there is no canonical definition to state claims against.
-/

/-! ## A300107.P14799557049420184267

`A300108(A374008(n+1))`
-/

namespace A300107.P14799557049420184267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A374008 (n + 1)).toNat

end

end A300107.P14799557049420184267

/-! ## A300107.P5222596197943865584

`A300108(A056119(n)+28)`
-/

namespace A300107.P5222596197943865584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A056119 n + 28).toNat

end

end A300107.P5222596197943865584

/-! ## A300107.P1742603313781294912

`A300108(eq[11, A066657(n)])`
-/

namespace A300107.P1742603313781294912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300107.P1742603313781294912

/-! ## A300107.P11718796400173749049

`A300108(eq[8, A131818(n+1)])`
-/

namespace A300107.P11718796400173749049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300107.P11718796400173749049

/-! ## A300107.P1735097629824033247

`A300108(A055999(n+4))`
-/

namespace A300107.P1735097629824033247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300108 (A055999 (n + 4)).toNat

end

end A300107.P1735097629824033247

/-!
# A300109: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300109, there is no canonical definition to state claims against.
-/

/-! ## A300109.P5985506966267717488

`A300115(∑[4*n]+1)`
-/

namespace A300109.P5985506966267717488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300109.P5985506966267717488

/-! ## A300109.P3377287112272186271

`record[A300115(Δ[A235355(n)])]`
-/

namespace A300109.P3377287112272186271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P3377287112272186271

/-! ## A300109.P6330507885950573273

`record[A300115(A330613(n+1))]`
-/

namespace A300109.P6330507885950573273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P6330507885950573273

/-! ## A300109.P14961618151076239613

`A300115(A001844(n))+char[10]`
-/

namespace A300109.P14961618151076239613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300109.P14961618151076239613

/-! ## A300109.P17842826665906177530

`record[A300115(Δ[A079824(n+1)])]`
-/

namespace A300109.P17842826665906177530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300109.P17842826665906177530

/-!
# A300110: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300110, there is no canonical definition to state claims against.
-/

/-! ## A300110.P18398335665691389331

`A300115(∑[n+2]+4)`
-/

namespace A300110.P18398335665691389331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300110.P18398335665691389331

/-! ## A300110.P4305351841359039277

`or(1, A300115(A167614(n+1)))`
-/

namespace A300110.P4305351841359039277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300115 (A167614 (n + 1)).toNat)

end

end A300110.P4305351841359039277

/-! ## A300110.P15979096340081462886

`or(1, A300115(A046691(n)+7))`
-/

namespace A300110.P15979096340081462886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300115 (A046691 n + 7).toNat)

end

end A300110.P15979096340081462886

/-! ## A300110.P17677082942023368883

`or(1, A300115(A167499(n)+n))`
-/

namespace A300110.P17677082942023368883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A300115 (A167499 n + (n : ℤ)).toNat)

end

end A300110.P17677082942023368883

/-! ## A300110.P6950162216755200940

`record[A300115(n+4)^A112295(n)]`
-/

namespace A300110.P6950162216755200940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300115 (n + 4) : ℚ) ^ (A112295 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300110.P6950162216755200940

/-!
# A300111: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300111, there is no canonical definition to state claims against.
-/

/-! ## A300111.P14173701993512136267

`A300115(∑[n+3]+7)`
-/

namespace A300111.P14173701993512136267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300111.P14173701993512136267

/-! ## A300111.P18072927655776561391

`A300115(A141214(n)+7)+char[18]`
-/

namespace A300111.P18072927655776561391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300111.P18072927655776561391

/-! ## A300111.P13206303546722159180

`A300115(Δ[A005286(n)]+5)+char[16]`
-/

namespace A300111.P13206303546722159180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300111.P13206303546722159180

/-! ## A300111.P8597680904405995428

`A300115(A141214(n)+7)%A000108(n+6)`
-/

namespace A300111.P8597680904405995428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300115 (A141214 n + 7).toNat) (A000108 (n + 6))

end

end A300111.P8597680904405995428

/-! ## A300111.P5808865692516833077

`A007318(C(2, n))*A300115(A141214(n)+7)`
-/

namespace A300111.P5808865692516833077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300115 (A141214 n + 7).toNat

end

end A300111.P5808865692516833077

/-!
# A300112: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300112, there is no canonical definition to state claims against.
-/

/-! ## A300112.P16587180726000828571

`A300115(∑[n+4]+11)`
-/

namespace A300112.P16587180726000828571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300112.P16587180726000828571

/-! ## A300112.P5504693847119796607

`A300115(A046691(n+3))+A243832(n)`
-/

namespace A300112.P5504693847119796607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A046691 (n + 3)).toNat + A243832 n

end

end A300112.P5504693847119796607

/-! ## A300112.P7880068028184854017

`A300115(A046691(n+3))%A100514(n+4)`
-/

namespace A300112.P7880068028184854017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300115 (A046691 (n + 3)).toNat) (A100514 (n + 4))

end

end A300112.P7880068028184854017

/-! ## A300112.P17184944002135980125

`A300115(A046691(n+3))+A000007(3*n+2)`
-/

namespace A300112.P17184944002135980125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A046691 (n + 3)).toNat + A000007 (3 * n + 2)

end

end A300112.P17184944002135980125

/-!
# A300113: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300113, there is no canonical definition to state claims against.
-/

/-! ## A300113.P9743755965901771044

`A300115(A374007(n+1))`
-/

namespace A300113.P9743755965901771044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A374007 (n + 1)).toNat

end

end A300113.P9743755965901771044

/-! ## A300113.P15895542867149640268

`A300115(A056115(n)+21)`
-/

namespace A300113.P15895542867149640268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A056115 n + 21).toNat

end

end A300113.P15895542867149640268

/-! ## A300113.P3931084172417490739

`A300115(A167499(n+4)+1)`
-/

namespace A300113.P3931084172417490739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A167499 (n + 4) + 1).toNat

end

end A300113.P3931084172417490739

/-! ## A300113.P18400266735419924513

`A300115(A167614(n+4)+3)`
-/

namespace A300113.P18400266735419924513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A167614 (n + 4) + 3).toNat

end

end A300113.P18400266735419924513

/-! ## A300113.P13164749289590545722

`A300115(A000124(n+5)+5)`
-/

namespace A300113.P13164749289590545722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A000124 (n + 5) + 5).toNat

end

end A300113.P13164749289590545722

/-!
# A300114: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300114, there is no canonical definition to state claims against.
-/

/-! ## A300114.P11950666377054311989

`A300115(A374008(n+1))`
-/

namespace A300114.P11950666377054311989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A374008 (n + 1)).toNat

end

end A300114.P11950666377054311989

/-! ## A300114.P18025599781401433794

`A300115(A056119(n)+28)`
-/

namespace A300114.P18025599781401433794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A056119 n + 28).toNat

end

end A300114.P18025599781401433794

/-! ## A300114.P7997159710727274244

`A300115(eq[11, A066657(n)])`
-/

namespace A300114.P7997159710727274244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300114.P7997159710727274244

/-! ## A300114.P9087371240112003760

`A300115(A167614(n+5)+4)`
-/

namespace A300114.P9087371240112003760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A167614 (n + 5) + 4).toNat

end

end A300114.P9087371240112003760

/-! ## A300114.P15995142289451863966

`A300115(A155212(n+2)+15)`
-/

namespace A300114.P15995142289451863966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (A155212 (n + 2) + 15).toNat

end

end A300114.P15995142289451863966

/-!
# A300117: Squarefree odd composite numbers n having a prime factor p such that (p-1)|(n-1).

The programs for A300117, there is no canonical definition to state claims against.
-/

/-! ## A300117.P5436416831574526784

`A052410(record[A000463(A306330(n+1))])`
-/

namespace A300117.P5436416831574526784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A306330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300117.P5436416831574526784

/-! ## A300117.P6609865198249699867

`∩[A100660(n+1), A136410(n+1)]`
-/

namespace A300117.P6609865198249699867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300117.P6609865198249699867

/-!
# A300118: Number of skew partitions whose quotient diagram is connected and whose numerator is the integer partition with Heinz number n.

The programs for A300118, there is no canonical definition to state claims against.
-/

/-! ## A300118.P11146596339503128500

`A056239(n+1)+A000070(A325135(n+1))`
-/

namespace A300118.P11146596339503128500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A000070 (A325135 (n + 1)).toNat

end

end A300118.P11146596339503128500

/-! ## A300118.P9737324022948992327

`A252464(n+1)+A025747(A325135(n+1))`
-/

namespace A300118.P9737324022948992327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + A025747 (A325135 (n + 1)).toNat

end

end A300118.P9737324022948992327

/-! ## A300118.P4847091196039819838

`A325134(n+1)+A000096(A325135(n+1))`
-/

namespace A300118.P4847091196039819838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) + A000096 (A325135 (n + 1)).toNat

end

end A300118.P4847091196039819838

/-! ## A300118.P1294626838350947927

`A000070(A325135(n+1))+log2(A248692(n+1))`
-/

namespace A300118.P1294626838350947927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000070 (A325135 (n + 1)).toNat : ℝ) + Real.logb 2 (A248692 (n + 1) : ℝ)

end

end A300118.P1294626838350947927

/-! ## A300118.P5437407317745232200

`A252464(n+1)+A000217(A325135(n+1)+1)`
-/

namespace A300118.P5437407317745232200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + A000217 (A325135 (n + 1) + 1).toNat

end

end A300118.P5437407317745232200

/-! ## A300118.P10226287051236469317

`A316436(2*(n+1))+A000217(A325135(n+1))`
-/

namespace A300118.P10226287051236469317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) + A000217 (A325135 (n + 1)).toNat

end

end A300118.P10226287051236469317

/-! ## A300118.P837019580266485435

`A000070(A325135(n+1))+∑{d}[n+1, A297109(#)]`
-/

namespace A300118.P837019580266485435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A325135 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A300118.P837019580266485435

/-! ## A300118.P2205725760115236934

`A318995(A003961(n+1))+A000124(A325135(n+1))`
-/

namespace A300118.P2205725760115236934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A003961 (n + 1)).toNat + A000124 (A325135 (n + 1)).toNat

end

end A300118.P2205725760115236934

/-! ## A300118.P17809059064333225112

`A318995(A045965(n+1))+A000124(A325135(n+1))`
-/

namespace A300118.P17809059064333225112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A045965 (n + 1)).toNat + A000124 (A325135 (n + 1)).toNat

end

end A300118.P17809059064333225112

/-! ## A300118.P15796133456022453899

`A001222(n+1)+A318995(n+1)+A000070(A325135(n+1))`
-/

namespace A300118.P15796133456022453899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A318995 (n + 1) + A000070 (A325135 (n + 1)).toNat)

end

end A300118.P15796133456022453899

/-!
# A300119: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: T(n, k) is the value where Collatz sequences starting at n and at k meet.

The programs for A300119, there is no canonical definition to state claims against.
-/

/-! ## A300119.P6467480479684829714

`A094235(ceil(sqrt(A309876(n))))`
-/

namespace A300119.P6467480479684829714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094235 ⌈Real.sqrt (A309876 n : ℝ)⌉.toNat

end

end A300119.P6467480479684829714

/-! ## A300119.P78073544411796141

`A160385(A202549(n+1)+3)`
-/

namespace A300119.P78073544411796141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A202549 (n + 1) + 3).toNat

end

end A300119.P78073544411796141

/-! ## A300119.P2089932123731021828

`A000120(A003968(A174546(n)))`
-/

namespace A300119.P2089932123731021828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003968 (A174546 n).toNat).toNat

end

end A300119.P2089932123731021828

/-! ## A300119.P8475666342188917965

`A047999(n)+A001222(A152936(n))`
-/

namespace A300119.P8475666342188917965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n + A001222 (A152936 n).toNat

end

end A300119.P8475666342188917965

/-! ## A300119.P12573145668278651087

`gcd(A300700(n), A326376(n+1))`
-/

namespace A300119.P12573145668278651087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300700 n) (A326376 (n + 1))

end

end A300119.P12573145668278651087

/-!
# A300120: Number of skew partitions whose quotient diagram is connected and whose numerator has weight n.

The programs for A300120, there is no canonical definition to state claims against.
-/

/-! ## A300120.P3152829894638319202

`∑[∑[A054844(A161633(n))]]`
-/

namespace A300120.P3152829894638319202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A161633 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P3152829894638319202

/-! ## A300120.P5177861433937035355

`∑[∑[A181819(A219212(n+2))]]`
-/

namespace A300120.P5177861433937035355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A219212 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P5177861433937035355

/-! ## A300120.P6545766693520828040

`∑[∑[A000005(A130715(n+1))]+1]`
-/

namespace A300120.P6545766693520828040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130715 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300120.P6545766693520828040

/-!
# A300121: Number of normal generalized Young tableaux, of shape the integer partition with Heinz number n, with all rows and columns weakly increasing and all regions connected skew partitions.

The programs for A300121, there is no canonical definition to state claims against.
-/

/-! ## A300121.P195152865191846197

`A296561(n+1)+A268159(A046096(n))`
-/

namespace A300121.P195152865191846197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A268159 (A046096 n).toNat

end

end A300121.P195152865191846197

/-! ## A300121.P9585462462770484792

`A296561(n+1)+A243046(A276532(n))`
-/

namespace A300121.P9585462462770484792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A243046 (A276532 n).toNat

end

end A300121.P9585462462770484792

/-! ## A300121.P3372476395024246750

`A326016(A235790(n+2))+A296561(n+1)`
-/

namespace A300121.P3372476395024246750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A235790 (n + 2)).toNat + A296561 (n + 1)

end

end A300121.P3372476395024246750

/-! ## A300121.P1209215122722416211

`A296561(n+1)+A240850(A327449(n+2))`
-/

namespace A300121.P1209215122722416211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A240850 (A327449 (n + 2)).toNat

end

end A300121.P1209215122722416211

/-! ## A300121.P12389600598674917886

`A296561(n+1)+A188973(A064230(n))`
-/

namespace A300121.P12389600598674917886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296561 (n + 1) + A188973 (A064230 n).toNat

end

end A300121.P12389600598674917886

/-!
# A300122: Number of normal generalized Young tableaux of size n with all rows and columns weakly increasing and all regions connected skew partitions.

The programs for A300122, there is no canonical definition to state claims against.
-/

/-! ## A300122.P16262003207975102891

`A221859(n)-A221861(A228923(n))`
-/

namespace A300122.P16262003207975102891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221859 n - A221861 (A228923 n).toNat

end

end A300122.P16262003207975102891

/-!
# A300123: Number of ways to tile the diagram of the integer partition with Heinz number n using connected skew partitions.

The programs for A300123, there is no canonical definition to state claims against.
-/

/-! ## A300123.P14088289771053436801

`A062570(A300121(n+1))%A223223(n+2)`
-/

namespace A300123.P14088289771053436801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062570 (A300121 (n + 1)).toNat) (A223223 (n + 2))

end

end A300123.P14088289771053436801

/-!
# A300124: Number of ways to tile the diagram of an integer partition of n using connected skew partitions.

The programs for A300124, there is no canonical definition to state claims against.
-/

/-! ## A300124.P4203879446747897244

`∑[∑[A364918(A000351(n))]]`
-/

namespace A300124.P4203879446747897244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364918 (A000351 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300124.P4203879446747897244

/-! ## A300124.P5327059224472586416

`A080444(A005190(n)*A059582(n))`
-/

namespace A300124.P5327059224472586416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080444 (A005190 n * A059582 n).toNat

end

end A300124.P5327059224472586416

/-!
# A300125: Number of closable Motzkin trees.

The programs for A300125, there is no canonical definition to state claims against.
-/

/-! ## A300125.P13872469792693588470

`A300129(n)+A300128(n)`
-/

namespace A300125.P13872469792693588470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300129 n + A300128 n

end

end A300125.P13872469792693588470

/-! ## A300125.P9305675983536156601

`A300128(n)-(A185238(n)-A300129(n))`
-/

namespace A300125.P9305675983536156601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300128 n - (A185238 n - A300129 n)

end

end A300125.P9305675983536156601

/-! ## A300125.P14722015535821540085

`A008617(∑[∑[A001006(n+1)]])`
-/

namespace A300125.P14722015535821540085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300125.P14722015535821540085

/-! ## A300125.P11202687115399534001

`A262249(A235648(n+2))`
-/

namespace A300125.P11202687115399534001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (A235648 (n + 2)).toNat

end

end A300125.P11202687115399534001

/-! ## A300125.P1469993431728331576

`A023193(A246563(n))%(2^n)`
-/

namespace A300125.P1469993431728331576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023193 (A246563 n).toNat) (2 ^ n : ℤ)

end

end A300125.P1469993431728331576

/-!
# A300128: Number of Motzkin trees that are "typable closable skeletons".

The programs for A300128, there is no canonical definition to state claims against.
-/

/-! ## A300128.P10674105380382358321

`A300125(n)-A300129(n)`
-/

namespace A300128.P10674105380382358321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A300129 n

end

end A300128.P10674105380382358321

/-! ## A300128.P6737784307157654990

`A023193(A246563(n))%(2^n)-A300129(n)`
-/

namespace A300128.P6737784307157654990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023193 (A246563 n).toNat) (2 ^ n : ℤ) - A300129 n

end

end A300128.P6737784307157654990

/-! ## A300128.P7441065774332557785

`A300125(n)-A004197(∑[(-1)^(n%3)]*A349401(n))`
-/

namespace A300128.P7441065774332557785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A004197 ((∑ j ∈ Finset.range (n + 1), f1 j) * A349401 n).toNat

end

end A300128.P7441065774332557785

/-! ## A300128.P16407534220302294283

`A300125(n)-A048158(A054519(n)+A054515(n))`
-/

namespace A300128.P16407534220302294283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A048158 (A054519 n + A054515 n).toNat

end

end A300128.P16407534220302294283

/-!
# A300129: Number of Motzkin trees that are "untypable closable skeletons".

The programs for A300129, there is no canonical definition to state claims against.
-/

/-! ## A300129.P17380537752808720505

`A300125(n)-A300128(n)`
-/

namespace A300129.P17380537752808720505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300125 n - A300128 n

end

end A300129.P17380537752808720505

/-! ## A300129.P7244021838124050366

`Δ[A020986(round(A178011(n)/9))]`
-/

namespace A300129.P7244021838124050366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (SequenceMachineLib.roundAway ((A178011 n : ℚ) / 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300129.P7244021838124050366

/-! ## A300129.P7408679062275897225

`A048158(A054515(n)+∑[∏{e}[n, #+1]])`
-/

namespace A300129.P7408679062275897225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A054515 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A300129.P7408679062275897225

/-! ## A300129.P4174446685470173775

`A004197(∑[(-1)^(n%3)]*A349401(n))`
-/

namespace A300129.P4174446685470173775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 ((∑ j ∈ Finset.range (n + 1), f1 j) * A349401 n).toNat

end

end A300129.P4174446685470173775

/-! ## A300129.P4218081834993957336

`A048158(A054519(n)+A054515(n))`
-/

namespace A300129.P4218081834993957336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A054519 n + A054515 n).toNat

end

end A300129.P4218081834993957336

/-!
# A300131: Largest number of points that can be placed on an n X n point grid so that no point is equally distant from two other points on the same straight line.

The programs for A300131, there is no canonical definition to state claims against.
-/

/-! ## A300131.P7883275454652406314

`lt[A186430(2*n+3)², A138798(n+2)]`
-/

namespace A300131.P7883275454652406314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186430 (2 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138798 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300131.P7883275454652406314

/-! ## A300131.P6767638214492714615

`lt[A286653(2*n+3), log(A344320(2*n+5))]`
-/

namespace A300131.P6767638214492714615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (2 * n + 3)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A344320 (2 * n + 5) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A300131.P6767638214492714615

/-! ## A300131.P10822164571994587268

`A214066(n)-A033999(A278301(n))`
-/

namespace A300131.P10822164571994587268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 n - A033999 (A278301 n).toNat

end

end A300131.P10822164571994587268

/-! ## A300131.P8661738653058801467

`A310707(n)-A138885(A299473(n))`
-/

namespace A300131.P8661738653058801467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310707 n - A138885 (A299473 n).toNat

end

end A300131.P8661738653058801467

/-! ## A300131.P269404249106300807

`lt[A000404(A303648(n)), A261333(2*n)]`
-/

namespace A300131.P269404249106300807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (A303648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300131.P269404249106300807

/-!
# A300132: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300132, there is no canonical definition to state claims against.
-/

/-! ## A300132.P4795053203854053226

`A300138(∑[4*n]+1)`
-/

namespace A300132.P4795053203854053226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300132.P4795053203854053226

/-! ## A300132.P5213622281642936939

`A300138(A001844(n))^A286334(n)`
-/

namespace A300132.P5213622281642936939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300138 (A001844 n).toNat : ℚ) ^ (A286334 n : ℤ)

end

end A300132.P5213622281642936939

/-! ## A300132.P5512055157726777492

`A300138(A001844(n))%A012535(n)`
-/

namespace A300132.P5512055157726777492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300138 (A001844 n).toNat) (A012535 n)

end

end A300132.P5512055157726777492

/-! ## A300132.P9560402217121383671

`gcd(A000038(n), A300138(A001844(n)))`
-/

namespace A300132.P9560402217121383671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300138 (A001844 n).toNat)

end

end A300132.P9560402217121383671

/-! ## A300132.P5291515997348962120

`lcm(A033999(n), A300138(A001844(n)))`
-/

namespace A300132.P5291515997348962120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300138 (A001844 n).toNat)

end

end A300132.P5291515997348962120

/-!
# A300133: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300133, there is no canonical definition to state claims against.
-/

/-! ## A300133.P12307396186002947913

`A300138(∑[n+2]+4)`
-/

namespace A300133.P12307396186002947913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300133.P12307396186002947913

/-! ## A300133.P4638199480352042110

`A300138(A167614(n+1))%(4^(n+1))`
-/

namespace A300133.P4638199480352042110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300138 (A167614 (n + 1)).toNat) (4 ^ (n + 1) : ℤ)

end

end A300133.P4638199480352042110

/-! ## A300133.P5699413336260067113

`A016192(n)*A300138(A167614(n+1))`
-/

namespace A300133.P5699413336260067113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A300138 (A167614 (n + 1)).toNat

end

end A300133.P5699413336260067113

/-! ## A300133.P13006002375943787173

`or(A000007(n), A300138(A167614(n+1)))`
-/

namespace A300133.P13006002375943787173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300138 (A167614 (n + 1)).toNat)

end

end A300133.P13006002375943787173

/-! ## A300133.P558193929355956148

`or(A010051(2*(n+1)), A300138(A167614(n+1)))`
-/

namespace A300133.P558193929355956148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (2 * (n + 1))) (A300138 (A167614 (n + 1)).toNat)

end

end A300133.P558193929355956148

/-!
# A300134: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300134, there is no canonical definition to state claims against.
-/

/-! ## A300134.P7473834037244619055

`A300138(A141214(n)+7)`
-/

namespace A300134.P7473834037244619055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A141214 n + 7).toNat

end

end A300134.P7473834037244619055

/-! ## A300134.P14600115276709683726

`A300138(A052905(n)+9)`
-/

namespace A300134.P14600115276709683726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A052905 n + 9).toNat

end

end A300134.P14600115276709683726

/-! ## A300134.P7000128115479849839

`A300138(A055999(n)+10)`
-/

namespace A300134.P7000128115479849839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A055999 n + 10).toNat

end

end A300134.P7000128115479849839

/-! ## A300134.P6577601454373649814

`A300138(A167614(n+2)+1)`
-/

namespace A300134.P6577601454373649814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167614 (n + 2) + 1).toNat

end

end A300134.P6577601454373649814

/-! ## A300134.P16079854882753448383

`A300138(A112355(n+1)+4)`
-/

namespace A300134.P16079854882753448383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A112355 (n + 1) + 4).toNat

end

end A300134.P16079854882753448383

/-!
# A300135: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300135, there is no canonical definition to state claims against.
-/

/-! ## A300135.P16789963294101315164

`A300138(∑[n+4]+11)`
-/

namespace A300135.P16789963294101315164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300135.P16789963294101315164

/-! ## A300135.P2659074228061000036

`record[A300138(A167499(A008612(n)))]`
-/

namespace A300135.P2659074228061000036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P2659074228061000036

/-! ## A300135.P10500810537289296847

`record[A300138(A167499(A028242(n)))]`
-/

namespace A300135.P10500810537289296847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P10500810537289296847

/-! ## A300135.P1042296240033249944

`record[A300138(A167499(A052938(n)))]`
-/

namespace A300135.P1042296240033249944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167499 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300135.P1042296240033249944

/-! ## A300135.P8378768719983425919

`gcd(A000038(n), A300138(A000217(n+4)+5))`
-/

namespace A300135.P8378768719983425919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300138 (A000217 (n + 4) + 5).toNat)

end

end A300135.P8378768719983425919

/-!
# A300136: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300136, there is no canonical definition to state claims against.
-/

/-! ## A300136.P15168656148475394890

`A300138(A056115(n)+21)`
-/

namespace A300136.P15168656148475394890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A056115 n + 21).toNat

end

end A300136.P15168656148475394890

/-! ## A300136.P17860373067231971444

`A300138(eq[6, A256910(n)])`
-/

namespace A300136.P17860373067231971444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300136.P17860373067231971444

/-! ## A300136.P14263721507076467974

`A300138(eq[6, A130270(n+1)])`
-/

namespace A300136.P14263721507076467974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300136.P14263721507076467974

/-! ## A300136.P7091389518890764891

`A300138(eq[7, A131818(n+1)])`
-/

namespace A300136.P7091389518890764891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300136.P7091389518890764891

/-! ## A300136.P7721194159126944699

`A300138(A374007(n+1))`
-/

namespace A300136.P7721194159126944699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A374007 (n + 1)).toNat

end

end A300136.P7721194159126944699

/-!
# A300137: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300137, there is no canonical definition to state claims against.
-/

/-! ## A300137.P2498881647296328169

`A300138(A167487(n+5))`
-/

namespace A300137.P2498881647296328169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A167487 (n + 5)).toNat

end

end A300137.P2498881647296328169

/-! ## A300137.P9063732950018233296

`A300138(A056119(n)+28)`
-/

namespace A300137.P9063732950018233296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A056119 n + 28).toNat

end

end A300137.P9063732950018233296

/-! ## A300137.P16396756786093606284

`A300138(eq[11, A066657(n)])`
-/

namespace A300137.P16396756786093606284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300137.P16396756786093606284

/-! ## A300137.P15152591952679189266

`A300138(eq[8, A131818(n+1)])`
-/

namespace A300137.P15152591952679189266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300137.P15152591952679189266

/-! ## A300137.P14734878269729490935

`A300138(A374008(n+1))`
-/

namespace A300137.P14734878269729490935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300138 (A374008 (n + 1)).toNat

end

end A300137.P14734878269729490935

/-!
# A300140: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300140, there is no canonical definition to state claims against.
-/

/-! ## A300140.P13127469988952250557

`A300146(∑[4*n]+1)`
-/

namespace A300140.P13127469988952250557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300140.P13127469988952250557

/-! ## A300140.P17296739072455172160

`∑{digits}[n, A300146(A001844(#))]`
-/

namespace A300140.P17296739072455172160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300146 (A001844 x).toNat).sum

end

end A300140.P17296739072455172160

/-! ## A300140.P10339397107163426748

`and(-1, A300146(A001844(n)))`
-/

namespace A300140.P10339397107163426748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A300146 (A001844 n).toNat)

end

end A300140.P10339397107163426748

/-! ## A300140.P13306227433038964045

`A300146(A001844(n))+A011731(n)`
-/

namespace A300140.P13306227433038964045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A001844 n).toNat + A011731 n

end

end A300140.P13306227433038964045

/-! ## A300140.P54136711704938728

`A326634(n)+A300146(A001844(n))`
-/

namespace A300140.P54136711704938728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326634 n + A300146 (A001844 n).toNat

end

end A300140.P54136711704938728

/-!
# A300141: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300141, there is no canonical definition to state claims against.
-/

/-! ## A300141.P13579497838851339949

`A300146(∑[n+2]+4)`
-/

namespace A300141.P13579497838851339949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300141.P13579497838851339949

/-! ## A300141.P11413872832737952942

`A300146(A167614(n+1))%A000351(n)`
-/

namespace A300141.P11413872832737952942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300146 (A167614 (n + 1)).toNat) (A000351 n)

end

end A300141.P11413872832737952942

/-! ## A300141.P3866166649004127279

`A300146(A055998(n)+6)%A003951(n)`
-/

namespace A300141.P3866166649004127279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300146 (A055998 n + 6).toNat) (A003951 n)

end

end A300141.P3866166649004127279

/-! ## A300141.P17975194158673388822

`A300146(A046691(n)+7)%A008349(n)`
-/

namespace A300141.P17975194158673388822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300146 (A046691 n + 7).toNat) (A008349 n)

end

end A300141.P17975194158673388822

/-! ## A300141.P14755000173341125995

`A300146(A000217(n+2)+3)%A002457(n)`
-/

namespace A300141.P14755000173341125995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300146 (A000217 (n + 2) + 3).toNat) (A002457 n)

end

end A300141.P14755000173341125995

/-!
# A300142: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300142, there is no canonical definition to state claims against.
-/

/-! ## A300142.P14081320749745029401

`A300146(A374004(n+1))`
-/

namespace A300142.P14081320749745029401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374004 (n + 1)).toNat

end

end A300142.P14081320749745029401

/-! ## A300142.P8363519697961241446

`A300146(A052905(n)+9)`
-/

namespace A300142.P8363519697961241446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A052905 n + 9).toNat

end

end A300142.P8363519697961241446

/-! ## A300142.P12173427794856935257

`A300146(A055999(n)+10)`
-/

namespace A300142.P12173427794856935257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A055999 n + 10).toNat

end

end A300142.P12173427794856935257

/-! ## A300142.P944243391310937157

`A300146(A167614(n+2)+1)`
-/

namespace A300142.P944243391310937157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A167614 (n + 2) + 1).toNat

end

end A300142.P944243391310937157

/-! ## A300142.P7618846168540708214

`A300146(A166136(n+2)-2)`
-/

namespace A300142.P7618846168540708214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A166136 (n + 2) - 2).toNat

end

end A300142.P7618846168540708214

/-!
# A300143: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300143, there is no canonical definition to state claims against.
-/

/-! ## A300143.P16451193522892354030

`A300146(A374005(n+1))`
-/

namespace A300143.P16451193522892354030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374005 (n + 1)).toNat

end

end A300143.P16451193522892354030

/-! ## A300143.P15432376877462829505

`A300146(A167499(n+3))`
-/

namespace A300143.P15432376877462829505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A167499 (n + 3)).toNat

end

end A300143.P15432376877462829505

/-! ## A300143.P13032174725174217346

`A300146(A155212(n)+13)`
-/

namespace A300143.P13032174725174217346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A155212 n + 13).toNat

end

end A300143.P13032174725174217346

/-! ## A300143.P9789466617204799848

`A300146(A056000(n)+15)`
-/

namespace A300143.P9789466617204799848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A056000 n + 15).toNat

end

end A300143.P9789466617204799848

/-! ## A300143.P5400906434507846283

`A300146(eq[6, A131818(n+1)])`
-/

namespace A300143.P5400906434507846283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300143.P5400906434507846283

/-!
# A300144: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300144, there is no canonical definition to state claims against.
-/

/-! ## A300144.P2754871984871806770

`A300146(A374007(n+1))`
-/

namespace A300144.P2754871984871806770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374007 (n + 1)).toNat

end

end A300144.P2754871984871806770

/-! ## A300144.P14263831397165758875

`A300146(A166136(n+4))`
-/

namespace A300144.P14263831397165758875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A166136 (n + 4)).toNat

end

end A300144.P14263831397165758875

/-! ## A300144.P468927015508770931

`A300146(A056115(n)+21)`
-/

namespace A300144.P468927015508770931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A056115 n + 21).toNat

end

end A300144.P468927015508770931

/-! ## A300144.P18067863965633434653

`A300146(A167499(n+4)+1)`
-/

namespace A300144.P18067863965633434653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A167499 (n + 4) + 1).toNat

end

end A300144.P18067863965633434653

/-! ## A300144.P1228086946466709359

`A300146(eq[6, A130270(n+1)])`
-/

namespace A300144.P1228086946466709359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300144.P1228086946466709359

/-!
# A300145: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300145, there is no canonical definition to state claims against.
-/

/-! ## A300145.P9630567209324561457

`A300146(A374008(n+1))`
-/

namespace A300145.P9630567209324561457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A374008 (n + 1)).toNat

end

end A300145.P9630567209324561457

/-! ## A300145.P15449935038330162586

`A300146(eq[8, A131818(n+1)])`
-/

namespace A300145.P15449935038330162586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300145.P15449935038330162586

/-! ## A300145.P3430515499718939564

`A300146(A055999(n+4))`
-/

namespace A300145.P3430515499718939564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A055999 (n + 4)).toNat

end

end A300145.P3430515499718939564

/-! ## A300145.P10387260111178923034

`A300146(eq[6, A193592(n)])`
-/

namespace A300145.P10387260111178923034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300145.P10387260111178923034

/-! ## A300145.P3414114326876826302

`A300146(A052905(n+4)-1)`
-/

namespace A300145.P3414114326876826302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (A052905 (n + 4) - 1).toNat

end

end A300145.P3414114326876826302

/-!
# A300146: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300146, there is no canonical definition to state claims against.
-/

/-! ## A300146.P4281581192145214360

`A309785(A174116(n))+A298454(n+1)`
-/

namespace A300146.P4281581192145214360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A174116 n).toNat + A298454 (n + 1)

end

end A300146.P4281581192145214360

/-! ## A300146.P873116445915130429

`A298834(n+1)+A166301(A174545(n)+1)`
-/

namespace A300146.P873116445915130429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (n + 1) + A166301 (A174545 n + 1).toNat

end

end A300146.P873116445915130429

/-! ## A300146.P2818475432102987003

`(A166301(A174116(n))+1)*A298834(n+1)`
-/

namespace A300146.P2818475432102987003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166301 (A174116 n).toNat + 1) * A298834 (n + 1)

end

end A300146.P2818475432102987003

/-! ## A300146.P17099308065808289137

`(A347689(A289481(n))+1)*A298834(n+1)`
-/

namespace A300146.P17099308065808289137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347689 (A289481 n).toNat + 1) * A298834 (n + 1)

end

end A300146.P17099308065808289137

/-!
# A300147: a(n) = (1/8) * Sum_{d|n} d * A110163(d).

The programs for A300147, there is no canonical definition to state claims against.
-/

/-! ## A300147.P7074204166731138152

`A289636(n+1)/8`
-/

namespace A300147.P7074204166731138152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289636 (n + 1) : ℚ) / 8

end

end A300147.P7074204166731138152

/-! ## A300147.P13690985205915245821

`A289638(n+1)/16`
-/

namespace A300147.P13690985205915245821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289638 (n + 1) : ℚ) / 16

end

end A300147.P13690985205915245821

/-! ## A300147.P3730323507737917346

`A289633(n+1)/48`
-/

namespace A300147.P3730323507737917346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289633 (n + 1) : ℚ) / 48

end

end A300147.P3730323507737917346

/-! ## A300147.P2806283938955335677

`(A289640(n+1)-A289637(n+1))/16`
-/

namespace A300147.P2806283938955335677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289640 (n + 1) - A289637 (n + 1) : ℚ) / 16

end

end A300147.P2806283938955335677

/-!
# A300148: Trajectory of the "Erase or triple" protocol applied to 1 (see Comments section for how the protocol works).

The programs for A300148, there is no canonical definition to state claims against.
-/

/-! ## A300148.P5549122515338620646

`A000244(n)%A031533(A190152(n))`
-/

namespace A300148.P5549122515338620646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A031533 (A190152 n).toNat)

end

end A300148.P5549122515338620646

/-!
# A300150: "Erase or triple": list of the successive integers that produce the next "altitude" record (see the comments section).

The programs for A300150, there is no canonical definition to state claims against.
-/

/-! ## A300150.P16454031577250335292

`A054353(or(A016861(n), A245043(n)))`
-/

namespace A300150.P16454031577250335292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Int.lor (A016861 n) (A245043 n)).toNat

end

end A300150.P16454031577250335292

/-!
# A300154: Consider a spiral on an infinite hexagonal grid. a(n) is the number of cells in the part of the spiral from 1st to n-th cell that are on the same column or diagonal (in any of three directions) as the n-th cell along the spiral, including that cell itself.

The programs for A300154, the canonical program `A300154.P12598035812061489662` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300154 has offset 1).

The definition of A300154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300154.P12598035812061489662

`n+1-A069905(∑[char[A001399(n)]])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300154

/-- `n+1-A069905(∑[char[A001399(n)]])` -/
def P12598035812061489662.Spec : Prop :=
  ∀ n, P12598035812061489662.a n = A300154 (n + 1)

theorem P12598035812061489662.correct : P12598035812061489662.Spec := by
  intro n
  simp only [A300154, Nat.add_sub_cancel]

end A300154

/-! ## A300154.P5829315677516718607

`A002260(eq[2, A010783(n+1)])`
-/

namespace A300154.P5829315677516718607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P5829315677516718607

namespace A300154

/-- `A002260(eq[2, A010783(n+1)])` -/
def P5829315677516718607.Spec : Prop :=
  ∀ n, P5829315677516718607.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P5228797333937602263

`A002262(eq[2, A010783(n+1)])`
-/

namespace A300154.P5228797333937602263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P5228797333937602263

namespace A300154

/-- `A002262(eq[2, A010783(n+1)])` -/
def P5228797333937602263.Spec : Prop :=
  ∀ n, P5228797333937602263.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P3268335921564915115

`A048151(eq[2, A010783(n+1)])`
-/

namespace A300154.P3268335921564915115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P3268335921564915115

namespace A300154

/-- `A048151(eq[2, A010783(n+1)])` -/
def P3268335921564915115.Spec : Prop :=
  ∀ n, P3268335921564915115.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P4974388904539884236

`A002260(eq[A050206(n+2), A204143(n+1)])`
-/

namespace A300154.P4974388904539884236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050206 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300154.P4974388904539884236

namespace A300154

/-- `A002260(eq[A050206(n+2), A204143(n+1)])` -/
def P4974388904539884236.Spec : Prop :=
  ∀ n, P4974388904539884236.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P13824619574229174745

`A002260(eq[A002262(n), A176346(n)])`
-/

namespace A300154.P13824619574229174745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300154.P13824619574229174745

namespace A300154

/-- `A002260(eq[A002262(n), A176346(n)])` -/
def P13824619574229174745.Spec : Prop :=
  ∀ n, P13824619574229174745.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P7958690144618741554

`A002262(eq[A002262(n), A176346(n)])`
-/

namespace A300154.P7958690144618741554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300154.P7958690144618741554

namespace A300154

/-- `A002262(eq[A002262(n), A176346(n)])` -/
def P7958690144618741554.Spec : Prop :=
  ∀ n, P7958690144618741554.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P17193367411342617802

`A002260(eq[A176346(n)+1, A002260(n+1)])`
-/

namespace A300154.P17193367411342617802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300154.P17193367411342617802

namespace A300154

/-- `A002260(eq[A176346(n)+1, A002260(n+1)])` -/
def P17193367411342617802.Spec : Prop :=
  ∀ n, P17193367411342617802.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P12657800933441360992

`A122197(eq[3, A013942(n+1)])`
-/

namespace A300154.P12657800933441360992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P12657800933441360992

namespace A300154

/-- `A122197(eq[3, A013942(n+1)])` -/
def P12657800933441360992.Spec : Prop :=
  ∀ n, P12657800933441360992.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P8743158066990784391

`A196199(eq[3, A013942(n+1)])`
-/

namespace A300154.P8743158066990784391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300154.P8743158066990784391

namespace A300154

/-- `A196199(eq[3, A013942(n+1)])` -/
def P8743158066990784391.Spec : Prop :=
  ∀ n, P8743158066990784391.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P13207128013478470815

`(A216522(n)+A087466(n+1))/2+1`
-/

namespace A300154.P13207128013478470815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216522 n + A087466 (n + 1) : ℚ) / 2 + 1

end

end A300154.P13207128013478470815

namespace A300154

/-- `(A216522(n)+A087466(n+1))/2+1` -/
def P13207128013478470815.Spec : Prop :=
  ∀ n, P13207128013478470815.a n = (A300154 (n + 1) : ℚ)

end A300154

/-! ## A300154.P8661152895922291364

`A008619(A216522(n)+A087466(n+1))`
-/

namespace A300154.P8661152895922291364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P8661152895922291364

namespace A300154

/-- `A008619(A216522(n)+A087466(n+1))` -/
def P8661152895922291364.Spec : Prop :=
  ∀ n, P8661152895922291364.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P17198934473195895600

`A027656(A216522(n)+A087466(n+1))`
-/

namespace A300154.P17198934473195895600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P17198934473195895600

namespace A300154

/-- `A027656(A216522(n)+A087466(n+1))` -/
def P17198934473195895600.Spec : Prop :=
  ∀ n, P17198934473195895600.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P18420545224480842468

`A052938(A216522(n)+A087466(n+1))`
-/

namespace A300154.P18420545224480842468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A216522 n + A087466 (n + 1)).toNat

end

end A300154.P18420545224480842468

namespace A300154

/-- `A052938(A216522(n)+A087466(n+1))` -/
def P18420545224480842468.Spec : Prop :=
  ∀ n, P18420545224480842468.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P616016829479494081

`A004525(A216522(n)+A087466(n+1))+1`
-/

namespace A300154.P616016829479494081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A216522 n + A087466 (n + 1)).toNat + 1

end

end A300154.P616016829479494081

namespace A300154

/-- `A004525(A216522(n)+A087466(n+1))+1` -/
def P616016829479494081.Spec : Prop :=
  ∀ n, P616016829479494081.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P9240338165111931144

`A004526(A216522(n)+A087466(n+1))+1`
-/

namespace A300154.P9240338165111931144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216522 n + A087466 (n + 1)).toNat + 1

end

end A300154.P9240338165111931144

namespace A300154

/-- `A004526(A216522(n)+A087466(n+1))+1` -/
def P9240338165111931144.Spec : Prop :=
  ∀ n, P9240338165111931144.a n = A300154 (n + 1)

end A300154

/-! ## A300154.P10890657075709230944

`A008619(A216522(n)+A087467(n+1))`
-/

namespace A300154.P10890657075709230944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A216522 n + A087467 (n + 1)).toNat

end

end A300154.P10890657075709230944

namespace A300154

/-- `A008619(A216522(n)+A087467(n+1))` -/
def P10890657075709230944.Spec : Prop :=
  ∀ n, P10890657075709230944.a n = A300154 (n + 1)

end A300154

/-!
# A300155: Numbers n for which A243822(n) = A000005(n).

The programs for A300155, there is no canonical definition to state claims against.
-/

/-! ## A300155.P11709344862786057600

`eq[0, A299990(n+1)]+1`
-/

namespace A300155.P11709344862786057600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300155.P11709344862786057600

/-! ## A300155.P14492673099151034107

`eq[0, A299990(A028310(n))]`
-/

namespace A300155.P14492673099151034107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300155.P14492673099151034107

/-! ## A300155.P9075879525850092960

`A020725(eq[0, A299990(n+1)])`
-/

namespace A300155.P9075879525850092960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P9075879525850092960

/-! ## A300155.P4703187706562445306

`A061767(eq[0, A299990(n+1)])`
-/

namespace A300155.P4703187706562445306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P4703187706562445306

/-! ## A300155.P2593311673020406532

`A020725(lt[A299990(n+1)², 1])`
-/

namespace A300155.P2593311673020406532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A300155.P2593311673020406532

/-! ## A300155.P16911793447164584927

`A113484(eq[0, A299990(n+1)])`
-/

namespace A300155.P16911793447164584927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300155.P16911793447164584927

/-! ## A300155.P17751830199322761500

`eq[0, A299990(A233583(n+1))]`
-/

namespace A300155.P17751830199322761500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300155.P17751830199322761500

/-!
# A300156: Indices of records in A299990.

The programs for A300156, there is no canonical definition to state claims against.
-/

/-! ## A300156.P8322358531990360125

`record[A315818(comp[A195843(n+1)])]`
-/

namespace A300156.P8322358531990360125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315818 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300156.P8322358531990360125

/-! ## A300156.P13879386519662405718

`A008458(A348748(n+1)%A318566(3*n+1))`
-/

namespace A300156.P13879386519662405718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A348748 (n + 1)) (A318566 (3 * n + 1))).toNat

end

end A300156.P13879386519662405718

/-! ## A300156.P4901181847670817285

`gcd(A333928(2*(n+1)), A377778(A102928(n+1)))`
-/

namespace A300156.P4901181847670817285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333928 (2 * (n + 1))) (A377778 (A102928 (n + 1)).toNat)

end

end A300156.P4901181847670817285

/-! ## A300156.P8765927020021604326

`A315721(A179458(n+2)%A321722(2*(n+1)))`
-/

namespace A300156.P8765927020021604326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315721 (Int.tmod (A179458 (n + 2)) (A321722 (2 * (n + 1)))).toNat

end

end A300156.P8765927020021604326

/-!
# A300157: Records in A299990.

The programs for A300157, there is no canonical definition to state claims against.
-/

/-! ## A300157.P14940573380944466099

`record[A299990(n+1)]`
-/

namespace A300157.P14940573380944466099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P14940573380944466099

/-! ## A300157.P15195916654719040300

`A299990(A300156(n+1))`
-/

namespace A300157.P15195916654719040300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A300156 (n + 1)).toNat

end

end A300157.P15195916654719040300

/-! ## A300157.P339851021493680286

`record[A010846(n+1)-A062011(n+1)]`
-/

namespace A300157.P339851021493680286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A062011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P339851021493680286

/-! ## A300157.P9699130105326513499

`record[A243822(n+1)-A000005(n+1)]`
-/

namespace A300157.P9699130105326513499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P9699130105326513499

/-! ## A300157.P16451479423329067522

`record[A010846(n+1)-2*A000005(n+1)]`
-/

namespace A300157.P16451479423329067522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300157.P16451479423329067522

/-!
# A300158: Absolute value of product of nonzero eigenvalues of upper left (n+1)X(n+1) rank 2 submatrix of Wythoff array.

The programs for A300158, there is no canonical definition to state claims against.
-/

/-! ## A300158.P11303110081751862178

`A175088(A214255(n))`
-/

namespace A300158.P11303110081751862178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (A214255 n).toNat

end

end A300158.P11303110081751862178

/-! ## A300158.P3790708612098441937

`A175088(round(sqrt(A026012(n))))`
-/

namespace A300158.P3790708612098441937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (SequenceMachineLib.roundAway (Real.sqrt (A026012 n : ℝ))).toNat

end

end A300158.P3790708612098441937

/-! ## A300158.P16077772367331626503

`A350628(n+1)+A187108(A079969(n))`
-/

namespace A300158.P16077772367331626503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350628 (n + 1) + A187108 (A079969 n).toNat

end

end A300158.P16077772367331626503

/-! ## A300158.P1653318767708853493

`A333222(A114921(n+2))+A143587(n+1)`
-/

namespace A300158.P1653318767708853493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A114921 (n + 2)).toNat + A143587 (n + 1)

end

end A300158.P1653318767708853493

/-!
# A300159: Number of ways of converting one set of lists containing n elements to another set of lists containing n elements by removing the last element from one of the lists and either appending it to an existing list or treating it as a new list.

The programs for A300159, there is no canonical definition to state claims against.
-/

/-! ## A300159.P11754235301129698840

`n*Δ[A059110(A161680(n))]`
-/

namespace A300159.P11754235301129698840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P11754235301129698840

/-! ## A300159.P546912696602171333

`n*Δ[A253286(A000124(n))]`
-/

namespace A300159.P546912696602171333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253286 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P546912696602171333

/-! ## A300159.P12575489730535772454

`n*Δ[A293053(A212342(n))]`
-/

namespace A300159.P12575489730535772454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293053 (A212342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P12575489730535772454

/-! ## A300159.P13447751142712644724

`n*Δ[A291709(A027379(n))]`
-/

namespace A300159.P13447751142712644724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P13447751142712644724

/-! ## A300159.P13343665191005732005

`n*Δ[A291709(A055998(n))]`
-/

namespace A300159.P13343665191005732005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A300159.P13343665191005732005

/-!
# A300161: Numbers n such that n^2 + 1 can be expressed as j^2 + k^2, j > k > 1, in more ways than for any smaller n.

The programs for A300161, there is no canonical definition to state claims against.
-/

/-! ## A300161.P9829711483774057744

`floor(sqrt(A300162(n+1)))`
-/

namespace A300161.P9829711483774057744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300162 (n + 1))

end

end A300161.P9829711483774057744

/-! ## A300161.P3763544410739365974

`round(sqrt(A300162(n+1)+A000051(n)))`
-/

namespace A300161.P3763544410739365974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300162 (n + 1) + A000051 n : ℝ))

end

end A300161.P3763544410739365974

/-! ## A300161.P15140336069132669306

`ceil(sqrt(A300162(n+1)-A016777(n)))`
-/

namespace A300161.P15140336069132669306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300162 (n + 1) - A016777 n : ℝ)⌉

end

end A300161.P15140336069132669306

/-! ## A300161.P15339016551131160165

`ceil(sqrt(A300162(n+1)-A313228(n)))`
-/

namespace A300161.P15339016551131160165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300162 (n + 1) - A313228 n : ℝ)⌉

end

end A300161.P15339016551131160165

/-! ## A300161.P17029028573004158098

`round(sqrt(A300162(n+1)+A050796(n+1)))`
-/

namespace A300161.P17029028573004158098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300162 (n + 1) + A050796 (n + 1) : ℝ))

end

end A300161.P17029028573004158098

/-!
# A300162: Numbers of the form n^2 + 1 that can be expressed as j^2 + k^2, j > k > 1, in more ways than any smaller number of this form.

The programs for A300162, there is no canonical definition to state claims against.
-/

/-! ## A300162.P902312878331476449

`1+A300161(n+1)²`
-/

namespace A300162.P902312878331476449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A300161 (n + 1) ^ 2

end

end A300162.P902312878331476449

/-! ## A300162.P12941585787096327135

`A058142(p?[A266593(n)])+A300161(n+1)^2`
-/

namespace A300162.P12941585787096327135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A300161 (n + 1) ^ 2

end

end A300162.P12941585787096327135

/-! ## A300162.P17048130052293607141

`A061987(p?[A266593(n)])+A300161(n+1)^2`
-/

namespace A300162.P17048130052293607141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A300161 (n + 1) ^ 2

end

end A300162.P17048130052293607141

/-! ## A300162.P3611932718172501288

`A300161(n+1)^A000005(A227421(n+1))+1`
-/

namespace A300162.P3611932718172501288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300161 (n + 1) : ℚ) ^ (A000005 (A227421 (n + 1)).toNat : ℤ) + 1

end

end A300162.P3611932718172501288

/-! ## A300162.P6915651510142727642

`A058142(Δ[A172513(n+1)])+A300161(n+1)^2`
-/

namespace A300162.P6915651510142727642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (f1 (n + 1) - f1 n).toNat + A300161 (n + 1) ^ 2

end

end A300162.P6915651510142727642

/-!
# A300163: Records in the number of ways to express a number of the form n^2 + 1 as j^2 + k^2 with j > k > 1.

The programs for A300163, there is no canonical definition to state claims against.
-/

/-! ## A300163.P2306013186905315489

`lt[A063942(A286378(2*n+3)), A188581(n+1)]`
-/

namespace A300163.P2306013186905315489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (A286378 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P2306013186905315489

/-! ## A300163.P11394028725121198635

`lt[A133310(n), A324696(A061142(n+1))]`
-/

namespace A300163.P11394028725121198635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324696 (A061142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P11394028725121198635

/-! ## A300163.P13523662512571278655

`lt[A075656(n+1), A198032(A181819(n+1))]`
-/

namespace A300163.P13523662512571278655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198032 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P13523662512571278655

/-! ## A300163.P1326595220414804527

`lt[A383247(n+1), A129863(A001222(n+1))]`
-/

namespace A300163.P1326595220414804527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P1326595220414804527

/-! ## A300163.P9668786819101316006

`lt[A337485(A289506(n+1)), A001222(n+1)]`
-/

namespace A300163.P9668786819101316006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 (A289506 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300163.P9668786819101316006

/-!
# A300164: Numbers of the form n^2+1 not expressible as j^2+k^2 with j>k>1.

The programs for A300164, there is no canonical definition to state claims against.
-/

/-! ## A300164.P7959572704413769632

`record[A065876(n)+C(n, n²)+n]`
-/

namespace A300164.P7959572704413769632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n + (Nat.choose n (n ^ 2) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300164.P7959572704413769632

/-! ## A300164.P1924434180453968299

`A054977(n)+A071557(n+1)²`
-/

namespace A300164.P1924434180453968299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A071557 (n + 1) ^ 2

end

end A300164.P1924434180453968299

/-! ## A300164.P2570442222262699219

`record[A065876(n)+A001057(A004275(n)+1)]`
-/

namespace A300164.P2570442222262699219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n + A001057 (A004275 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300164.P2570442222262699219

/-! ## A300164.P17036043692163342674

`∩[A224450(n+1), n²+1]`
-/

namespace A300164.P17036043692163342674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300164.P17036043692163342674

/-! ## A300164.P11551076367370886994

`∩[A002522(n), A224450(n+1)]`
-/

namespace A300164.P11551076367370886994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300164.P11551076367370886994

/-! ## A300164.P4375718441184791519

`∩[A087279(n+1), A224450(n+1)]`
-/

namespace A300164.P4375718441184791519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300164.P4375718441184791519

/-! ## A300164.P8727913755416435539

`filter[A002522(n+1), A354924(#)]`
-/

namespace A300164.P8727913755416435539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P8727913755416435539

/-! ## A300164.P18173909850449345940

`filter[A160457(n+2), A354924(#)]`
-/

namespace A300164.P18173909850449345940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P18173909850449345940

/-! ## A300164.P14473109513294905168

`filter[A013945(2*(n+1)), A354924(#)]`
-/

namespace A300164.P14473109513294905168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P14473109513294905168

/-! ## A300164.P9035345086406365523

`filter[A087279(2*(n+1)), A354924(#)]`
-/

namespace A300164.P9035345086406365523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P9035345086406365523

/-! ## A300164.P10560443431313218245

`filter[A338284(2*(n+1)), A354924(#)]`
-/

namespace A300164.P10560443431313218245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338284 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A300164.P10560443431313218245

/-!
# A300165: Numbers m such that m^2 + 1 can be expressed in more than one way as j^2 + k^2 with j > k > 1 and gcd(j,k) = 1.

The programs for A300165, there is no canonical definition to state claims against.
-/

/-! ## A300165.P15782808258991955673

`floor(sqrt(A300166(n+1)))`
-/

namespace A300165.P15782808258991955673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300166 (n + 1))

end

end A300165.P15782808258991955673

/-! ## A300165.P14580357225404352142

`A000027(round(sqrt(A300166(n+1))))`
-/

namespace A300165.P14580357225404352142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) : ℝ))).toNat

end

end A300165.P14580357225404352142

/-! ## A300165.P14235434590225966227

`A000027(sqrt(A300166(n+1)-1))`
-/

namespace A300165.P14235434590225966227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) - 1 : ℝ))).toNat

end

end A300165.P14235434590225966227

/-! ## A300165.P11076491883829331920

`round(sqrt(A300166(n+1)+A050796(n+1)))`
-/

namespace A300165.P11076491883829331920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) + A050796 (n + 1) : ℝ))

end

end A300165.P11076491883829331920

/-! ## A300165.P8556632120707757439

`round(sqrt(A300166(n+1)+A299707(n+1)))`
-/

namespace A300165.P8556632120707757439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) + A299707 (n + 1) : ℝ))

end

end A300165.P8556632120707757439

/-! ## A300165.P6004539500221269994

`round(sqrt(A300166(n+1)))%A299708(n+1)`
-/

namespace A300165.P6004539500221269994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) : ℝ))) (A299708 (n + 1))

end

end A300165.P6004539500221269994

/-! ## A300165.P13623188857956938474

`A028310(round(sqrt(A300166(n+1))))`
-/

namespace A300165.P13623188857956938474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) : ℝ))).toNat

end

end A300165.P13623188857956938474

/-! ## A300165.P17085883201541443520

`A028310(sqrt(A300166(n+1)-1))`
-/

namespace A300165.P17085883201541443520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A300166 (n + 1) - 1 : ℝ))).toNat

end

end A300165.P17085883201541443520

/-!
# A300166: Numbers of the form m^2 + 1 that can be expressed in more than one way as j^2 + k^2 with j > k > 1 and gcd(j,k) = 1.

The programs for A300166, there is no canonical definition to state claims against.
-/

/-! ## A300166.P18233374610185212255

`1+A300165(n+1)²`
-/

namespace A300166.P18233374610185212255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A300165 (n + 1) ^ 2

end

end A300166.P18233374610185212255

/-! ## A300166.P3004068903600303258

`A300165(n+1)*A300165(n+1)-A008683(A020483(n))`
-/

namespace A300166.P3004068903600303258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300165 (n + 1) * A300165 (n + 1) - A008683 (A020483 n).toNat

end

end A300166.P3004068903600303258

/-! ## A300166.P3960896953281623284

`A002522(A300165(n+1))`
-/

namespace A300166.P3960896953281623284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A300165 (n + 1)).toNat

end

end A300166.P3960896953281623284

/-! ## A300166.P8705253135308250433

`A007877(2*n+1)+A000290(A300165(n+1))`
-/

namespace A300166.P8705253135308250433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (2 * n + 1) + A000290 (A300165 (n + 1)).toNat

end

end A300166.P8705253135308250433

/-! ## A300166.P17000237083227081229

`A003484(2*n+5)+A000290(A300165(n+1))`
-/

namespace A300166.P17000237083227081229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * n + 5) + A000290 (A300165 (n + 1)).toNat

end

end A300166.P17000237083227081229

/-! ## A300166.P9668381850396746806

`A033638(2*A300165(n+1))`
-/

namespace A300166.P9668381850396746806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A300165 (n + 1)).toNat

end

end A300166.P9668381850396746806

/-! ## A300166.P16658518223323255905

`A087279(2*A300165(n+1))`
-/

namespace A300166.P16658518223323255905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (2 * A300165 (n + 1)).toNat

end

end A300166.P16658518223323255905

/-! ## A300166.P8212024792956215940

`∩[A281877(n+1), n²+1]`
-/

namespace A300166.P8212024792956215940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300166.P8212024792956215940

/-! ## A300166.P920453394276227895

`∩[A002522(n), A281877(n+1)]`
-/

namespace A300166.P920453394276227895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P920453394276227895

/-! ## A300166.P14948409086383252499

`∩[A050800(n+1), A281877(n+1)]`
-/

namespace A300166.P14948409086383252499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P14948409086383252499

/-! ## A300166.P6814599087727303021

`∩[A087279(n+1), A281877(n+1)]`
-/

namespace A300166.P6814599087727303021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P6814599087727303021

/-! ## A300166.P18339162416999420637

`∩[A134406(n+1), A281877(n+1)]`
-/

namespace A300166.P18339162416999420637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P18339162416999420637

/-! ## A300166.P1861364445121789698

`∩[A216765(n+1), A281877(n+1)]`
-/

namespace A300166.P1861364445121789698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P1861364445121789698

/-! ## A300166.P16250111089702875227

`∩[A299708(n+1), A281877(n+1)]`
-/

namespace A300166.P16250111089702875227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P16250111089702875227

/-! ## A300166.P1508313515049370154

`∩[A034106(n+1), A281877(n+1)]`
-/

namespace A300166.P1508313515049370154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P1508313515049370154

/-! ## A300166.P13429656474330681289

`∩[A080262(2*n+1), A281877(n+2)]`
-/

namespace A300166.P13429656474330681289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281877 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300166.P13429656474330681289

/-!
# A300167: Numbers n such that n^2+1 can be expressed as j^2+k^2, j>k>1, gcd(j,k)=1, in more ways than for any smaller n.

The programs for A300167, there is no canonical definition to state claims against.
-/

/-! ## A300167.P6545262884468278872

`floor(sqrt(A300168(n+1)))`
-/

namespace A300167.P6545262884468278872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A300168 (n + 1))

end

end A300167.P6545262884468278872

/-! ## A300167.P18373858782119400538

`sqrt(A300168(n+1)-A061901(n))`
-/

namespace A300167.P18373858782119400538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A061901 n : ℝ)

end

end A300167.P18373858782119400538

/-! ## A300167.P19159779298248724

`sqrt(A300168(n+1)-A196222(n))`
-/

namespace A300167.P19159779298248724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A196222 n : ℝ)

end

end A300167.P19159779298248724

/-! ## A300167.P1601431420886606904

`sqrt(A300168(n+1)-A133707(n+1))`
-/

namespace A300167.P1601431420886606904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A133707 (n + 1) : ℝ)

end

end A300167.P1601431420886606904

/-! ## A300167.P13579508415652820988

`sqrt(A300168(n+1)-A196017(n+1))`
-/

namespace A300167.P13579508415652820988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A300168 (n + 1) - A196017 (n + 1) : ℝ)

end

end A300167.P13579508415652820988

/-!
# A300168: Numbers of the form n^2+1 that can be expressed as j^2+k^2, j>k>1, gcd(j,k)=1, in more ways than any smaller number of this form.

The programs for A300168, there is no canonical definition to state claims against.
-/

/-! ## A300168.P13962708703663592380

`A300167(n+1)²+1`
-/

namespace A300168.P13962708703663592380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300167 (n + 1) ^ 2 + 1

end

end A300168.P13962708703663592380

/-!
# A300169: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300169, there is no canonical definition to state claims against.
-/

/-! ## A300169.P6803611498724643099

`A300175(∑[4*n]+1)`
-/

namespace A300169.P6803611498724643099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300169.P6803611498724643099

/-! ## A300169.P8267418103699078975

`A300175(A001844(n))+A025439(n)`
-/

namespace A300169.P8267418103699078975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A001844 n).toNat + A025439 n

end

end A300169.P8267418103699078975

/-! ## A300169.P14764123164269425788

`A300175(A001844(n))+A025469(n)`
-/

namespace A300169.P14764123164269425788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A001844 n).toNat + A025469 n

end

end A300169.P14764123164269425788

/-! ## A300169.P5927200245673356759

`A300175(A001844(n))+A185238(n)`
-/

namespace A300169.P5927200245673356759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A001844 n).toNat + A185238 n

end

end A300169.P5927200245673356759

/-! ## A300169.P3864532818771740785

`lcm(A033999(n), A300175(A001844(n)))`
-/

namespace A300169.P3864532818771740785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300175 (A001844 n).toNat)

end

end A300169.P3864532818771740785

/-!
# A300170: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300170, there is no canonical definition to state claims against.
-/

/-! ## A300170.P297252175882221514

`A300175(∑[n+2]+4)`
-/

namespace A300170.P297252175882221514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300170.P297252175882221514

/-! ## A300170.P7519628658758945636

`A300175(A167614(n+1))+A025466(n)`
-/

namespace A300170.P7519628658758945636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A167614 (n + 1)).toNat + A025466 n

end

end A300170.P7519628658758945636

/-! ## A300170.P7778089025314376153

`A300175(A167614(n+1))+A178798(n)`
-/

namespace A300170.P7778089025314376153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A167614 (n + 1)).toNat + A178798 n

end

end A300170.P7778089025314376153

/-! ## A300170.P4366180395461039269

`A300175(A167614(n+1))+A185284(n)`
-/

namespace A300170.P4366180395461039269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A167614 (n + 1)).toNat + A185284 n

end

end A300170.P4366180395461039269

/-! ## A300170.P2939067568355757005

`A254730(n)*A300175(A167614(n+1))`
-/

namespace A300170.P2939067568355757005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n * A300175 (A167614 (n + 1)).toNat

end

end A300170.P2939067568355757005

/-!
# A300171: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300171, there is no canonical definition to state claims against.
-/

/-! ## A300171.P2615236135303877206

`A300175(A141214(n)+7)`
-/

namespace A300171.P2615236135303877206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A141214 n + 7).toNat

end

end A300171.P2615236135303877206

/-! ## A300171.P7693727356754792364

`A300175(A052905(n)+9)`
-/

namespace A300171.P7693727356754792364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A052905 n + 9).toNat

end

end A300171.P7693727356754792364

/-! ## A300171.P16051599209031714775

`A300175(A055999(n)+10)`
-/

namespace A300171.P16051599209031714775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A055999 n + 10).toNat

end

end A300171.P16051599209031714775

/-! ## A300171.P10238995138412576541

`A300175(A167614(n+2)+1)`
-/

namespace A300171.P10238995138412576541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A167614 (n + 2) + 1).toNat

end

end A300171.P10238995138412576541

/-! ## A300171.P2987325570364428902

`A300175(eq[5, A131818(n+1)])`
-/

namespace A300171.P2987325570364428902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300171.P2987325570364428902

/-!
# A300172: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300172, there is no canonical definition to state claims against.
-/

/-! ## A300172.P2348716349733469687

`A300175(eq[6, A131818(n+1)])`
-/

namespace A300172.P2348716349733469687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300172.P2348716349733469687

/-! ## A300172.P2736744153288273892

`A300175(Δ[A264443(n)])`
-/

namespace A300172.P2736744153288273892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (f1 (n + 1) - f1 n).toNat

end

end A300172.P2736744153288273892

/-! ## A300172.P18161317785056217821

`A300175(A374005(n+1))`
-/

namespace A300172.P18161317785056217821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A374005 (n + 1)).toNat

end

end A300172.P18161317785056217821

/-! ## A300172.P17638595021855734

`A300175(A046691(n+3))`
-/

namespace A300172.P17638595021855734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A046691 (n + 3)).toNat

end

end A300172.P17638595021855734

/-! ## A300172.P2727399855091390887

`A300175(A056115(n)+11)`
-/

namespace A300172.P2727399855091390887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A056115 n + 11).toNat

end

end A300172.P2727399855091390887

/-!
# A300173: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300173, there is no canonical definition to state claims against.
-/

/-! ## A300173.P4051486901259455670

`A300175(A000124(n+5)+5)`
-/

namespace A300173.P4051486901259455670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A000124 (n + 5) + 5).toNat

end

end A300173.P4051486901259455670

/-! ## A300173.P18240501509889824391

`A300175(eq[6, A130270(n+1)])`
-/

namespace A300173.P18240501509889824391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300173.P18240501509889824391

/-! ## A300173.P14888243576757186539

`A300175(eq[7, A131818(n+1)])`
-/

namespace A300173.P14888243576757186539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300173.P14888243576757186539

/-! ## A300173.P15232184111641939072

`A300175(A374007(n+1))`
-/

namespace A300173.P15232184111641939072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A374007 (n + 1)).toNat

end

end A300173.P15232184111641939072

/-! ## A300173.P12942099390805099773

`A300175(A052905(n+3))`
-/

namespace A300173.P12942099390805099773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A052905 (n + 3)).toNat

end

end A300173.P12942099390805099773

/-!
# A300174: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300174, there is no canonical definition to state claims against.
-/

/-! ## A300174.P3068997256653081425

`A300175(eq[11, A066657(n)])`
-/

namespace A300174.P3068997256653081425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300174.P3068997256653081425

/-! ## A300174.P17086519731429519460

`A300175(eq[8, A131818(n+1)])`
-/

namespace A300174.P17086519731429519460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300174.P17086519731429519460

/-! ## A300174.P13996777920637538997

`A300175(A374008(n+1))`
-/

namespace A300174.P13996777920637538997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A374008 (n + 1)).toNat

end

end A300174.P13996777920637538997

/-! ## A300174.P6418488646170577381

`A300175(A055999(n+4))`
-/

namespace A300174.P6418488646170577381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (A055999 (n + 4)).toNat

end

end A300174.P6418488646170577381

/-! ## A300174.P11339688682223986457

`A300175(eq[4, A219347(n)])`
-/

namespace A300174.P11339688682223986457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300174.P11339688682223986457

/-!
# A300175: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300175, there is no canonical definition to state claims against.
-/

/-! ## A300175.P16750832446564217524

`A299334(n+1)+A121262(A228900(n))`
-/

namespace A300175.P16750832446564217524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (n + 1) + A121262 (A228900 n).toNat

end

end A300175.P16750832446564217524

/-! ## A300175.P6451562563610508939

`A299602(n+1)+A235943(A297978(n+1))`
-/

namespace A300175.P6451562563610508939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A300175.P6451562563610508939

/-! ## A300175.P10320219666509793158

`A298461(n+1)+A285097(A317525(n+1))`
-/

namespace A300175.P10320219666509793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (n + 1) + A285097 (A317525 (n + 1)).toNat

end

end A300175.P10320219666509793158

/-! ## A300175.P10532168090558615386

`A285097(A317525(n+1))+A127288(A298629(n+1))`
-/

namespace A300175.P10532168090558615386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A317525 (n + 1)).toNat + A127288 (A298629 (n + 1)).toNat

end

end A300175.P10532168090558615386

/-! ## A300175.P4434730298256078429

`A299602(n+1)+A185255(A298461(n+1))`
-/

namespace A300175.P4434730298256078429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) + A185255 (A298461 (n + 1)).toNat

end

end A300175.P4434730298256078429

/-!
# A300176: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300176, there is no canonical definition to state claims against.
-/

/-! ## A300176.P4861856302203593659

`A300182(∑[4*n]+1)`
-/

namespace A300176.P4861856302203593659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300176.P4861856302203593659

/-! ## A300176.P9371725605903632381

`gcd(A000038(n), A300182(A001844(n)))`
-/

namespace A300176.P9371725605903632381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300182 (A001844 n).toNat)

end

end A300176.P9371725605903632381

/-! ## A300176.P9079474796742143366

`lcm(A033999(n), A300182(A001844(n)))`
-/

namespace A300176.P9079474796742143366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300182 (A001844 n).toNat)

end

end A300176.P9079474796742143366

/-! ## A300176.P6937842923414479375

`or(A000007(n), A300182(A001844(n)))`
-/

namespace A300176.P6937842923414479375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300182 (A001844 n).toNat)

end

end A300176.P6937842923414479375

/-! ## A300176.P4590947261194689998

`or(A144600(n), A300182(A001844(n)))`
-/

namespace A300176.P4590947261194689998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A144600 n) (A300182 (A001844 n).toNat)

end

end A300176.P4590947261194689998

/-!
# A300177: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300177, the canonical program `A300177.P8645473972523018361` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300177 has offset 1).

The definition of A300177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300177.P8645473972523018361

`7*a(n-1)+7*a(n-2)+6*a(n-3)` with `a(0)=4, a(1)=32, a(2)=255`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A300177

/-- `7*a(n-1)+7*a(n-2)+6*a(n-3)` -/
def P8645473972523018361.Spec : Prop :=
  ∀ n, (P8645473972523018361.a n : ℤ) = A300177 (n + 1)

theorem P8645473972523018361.correct : P8645473972523018361.Spec := by
  intro n
  simp only [A300177, Nat.add_sub_cancel]

end A300177

/-! ## A300177.P1383079572198769316

`A300182(∑[n+2]+4)`
-/

namespace A300177.P1383079572198769316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300177.P1383079572198769316

namespace A300177

/-- `A300182(∑[n+2]+4)` -/
def P1383079572198769316.Spec : Prop :=
  ∀ n, P1383079572198769316.a n = A300177 (n + 1)

end A300177

/-! ## A300177.P4524396517770709606

`lcm(A016303(n), A300182(A167614(n+1)))`
-/

namespace A300177.P4524396517770709606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016303 n) (A300182 (A167614 (n + 1)).toNat)

end

end A300177.P4524396517770709606

namespace A300177

/-- `lcm(A016303(n), A300182(A167614(n+1)))` -/
def P4524396517770709606.Spec : Prop :=
  ∀ n, (P4524396517770709606.a n : ℤ) = A300177 (n + 1)

end A300177

/-! ## A300177.P10303392845189486726

`A300182(A167614(n+1))%A229517(n+1)`
-/

namespace A300177.P10303392845189486726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300182 (A167614 (n + 1)).toNat) (A229517 (n + 1))

end

end A300177.P10303392845189486726

namespace A300177

/-- `A300182(A167614(n+1))%A229517(n+1)` -/
def P10303392845189486726.Spec : Prop :=
  ∀ n, P10303392845189486726.a n = A300177 (n + 1)

end A300177

/-!
# A300178: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300178, there is no canonical definition to state claims against.
-/

/-! ## A300178.P7099670582715760678

`A300182(A374004(n+1))`
-/

namespace A300178.P7099670582715760678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374004 (n + 1)).toNat

end

end A300178.P7099670582715760678

/-! ## A300178.P1129641774537095525

`A300182(A055999(n)+10)`
-/

namespace A300178.P1129641774537095525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A055999 n + 10).toNat

end

end A300178.P1129641774537095525

/-! ## A300178.P13370141313679142998

`A300182(A167614(n+2)+1)`
-/

namespace A300178.P13370141313679142998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A167614 (n + 2) + 1).toNat

end

end A300178.P13370141313679142998

/-! ## A300178.P10155606690201630439

`A300182(Δ[A264443(n)-n²])`
-/

namespace A300178.P10155606690201630439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (f1 (n + 1) - f1 n).toNat

end

end A300178.P10155606690201630439

/-! ## A300178.P7701830950853687540

`A300182(Δ[A023545(n+1)-n²])`
-/

namespace A300178.P7701830950853687540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (f1 (n + 1) - f1 n).toNat

end

end A300178.P7701830950853687540

/-!
# A300179: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300179, there is no canonical definition to state claims against.
-/

/-! ## A300179.P3418525456119678069

`A300182(A374005(n+1))`
-/

namespace A300179.P3418525456119678069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374005 (n + 1)).toNat

end

end A300179.P3418525456119678069

/-! ## A300179.P16611561119708501557

`A300182(A167499(n+3))`
-/

namespace A300179.P16611561119708501557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A167499 (n + 3)).toNat

end

end A300179.P16611561119708501557

/-! ## A300179.P10429934385700608961

`A300182(Δ[A264443(n)])`
-/

namespace A300179.P10429934385700608961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (f1 (n + 1) - f1 n).toNat

end

end A300179.P10429934385700608961

/-! ## A300179.P2599666432593263431

`A300182(A046691(n+3))`
-/

namespace A300179.P2599666432593263431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A046691 (n + 3)).toNat

end

end A300179.P2599666432593263431

/-! ## A300179.P14418505954595770802

`A300182(eq[4, A193592(n)])`
-/

namespace A300179.P14418505954595770802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300179.P14418505954595770802

/-!
# A300180: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300180, there is no canonical definition to state claims against.
-/

/-! ## A300180.P15985903189406452773

`A300182(A374007(n+1))`
-/

namespace A300180.P15985903189406452773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374007 (n + 1)).toNat

end

end A300180.P15985903189406452773

/-! ## A300180.P16372877229241832560

`A300182(A056115(n)+21)`
-/

namespace A300180.P16372877229241832560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A056115 n + 21).toNat

end

end A300180.P16372877229241832560

/-! ## A300180.P16353362035152355937

`A300182(A052905(n+3))`
-/

namespace A300180.P16353362035152355937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A052905 (n + 3)).toNat

end

end A300180.P16353362035152355937

/-! ## A300180.P17079551387103414661

`A300182(A302537(n)+15)`
-/

namespace A300180.P17079551387103414661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A302537 n + 15).toNat

end

end A300180.P17079551387103414661

/-! ## A300180.P15995918295756883007

`A300182(eq[3, A219347(n)])`
-/

namespace A300180.P15995918295756883007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300180.P15995918295756883007

/-!
# A300181: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300181, there is no canonical definition to state claims against.
-/

/-! ## A300181.P15141555247995650877

`A300182(A374008(n+1))`
-/

namespace A300181.P15141555247995650877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (A374008 (n + 1)).toNat

end

end A300181.P15141555247995650877

/-! ## A300181.P660221601923986509

`A300182(eq[8, A131818(n+1)])`
-/

namespace A300181.P660221601923986509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300181.P660221601923986509

/-! ## A300181.P2438062152649390556

`A300182(eq[4, A219347(n)])`
-/

namespace A300181.P2438062152649390556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300181.P2438062152649390556

/-! ## A300181.P7257108113567433281

`A300182(eq[6, A193592(n)])`
-/

namespace A300181.P7257108113567433281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300181.P7257108113567433281

/-! ## A300181.P17785591543993891680

`A300182(eq[10, A185782(n+1)])`
-/

namespace A300181.P17785591543993891680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300181.P17785591543993891680

/-!
# A300182: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A300182, there is no canonical definition to state claims against.
-/

/-! ## A300182.P8485122384898960908

`A145342(A223569(n+1))/2`
-/

namespace A300182.P8485122384898960908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145342 (A223569 (n + 1)).toNat : ℚ) / 2

end

end A300182.P8485122384898960908

/-! ## A300182.P15064671684266960047

`A004525(A145342(A223569(n+1)))`
-/

namespace A300182.P15064671684266960047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145342 (A223569 (n + 1)).toNat).toNat

end

end A300182.P15064671684266960047

/-! ## A300182.P2658591116129178907

`A317517(n+1)+A055641(A059328(n))`
-/

namespace A300182.P2658591116129178907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317517 (n + 1) + A055641 (A059328 n).toNat

end

end A300182.P2658591116129178907

/-! ## A300182.P1043550831210114911

`A357849(A321312(n))+A317517(n+1)`
-/

namespace A300182.P1043550831210114911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A321312 n).toNat + A317517 (n + 1)

end

end A300182.P1043550831210114911

/-! ## A300182.P13708452188495140462

`or(A102683(A157273(n)), A317517(n+1))`
-/

namespace A300182.P13708452188495140462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A157273 n).toNat) (A317517 (n + 1))

end

end A300182.P13708452188495140462

/-!
# A300183: Number of partitions of n whose minimal excluded multiplicity is odd.

The programs for A300183, there is no canonical definition to state claims against.
-/

/-! ## A300183.P14570419452273239506

`A000041(n)-A299408(n)`
-/

namespace A300183.P14570419452273239506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A299408 n

end

end A300183.P14570419452273239506

/-! ## A300183.P2375683689795151166

`A213598(n)-A299408(n)`
-/

namespace A300183.P2375683689795151166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A299408 n

end

end A300183.P2375683689795151166

/-! ## A300183.P14405519297336963444

`sqrt(A001255(n))-A299408(n)`
-/

namespace A300183.P14405519297336963444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A299408 n : ℝ)

end

end A300183.P14405519297336963444

/-! ## A300183.P3330749066981425856

`∑[A002865(n)]-A299408(n)`
-/

namespace A300183.P3330749066981425856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A299408 n

end

end A300183.P3330749066981425856

/-! ## A300183.P187945924734942465

`A000065(n)+1-A299408(n)`
-/

namespace A300183.P187945924734942465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A299408 n)

end

end A300183.P187945924734942465

/-!
# A300185: Irregular triangle read by rows: T(n, {j,k}) is the number of partitions of n that have exactly j parts equal to k; 1 <= j <= n, 1 <= k <= n.

The programs for A300185, there is no canonical definition to state claims against.
-/

/-! ## A300185.P17605853353988148655

`A117944(gcd(A000975(n), A330050(n)))`
-/

namespace A300185.P17605853353988148655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 (Int.gcd (A000975 n) (A330050 n))

end

end A300185.P17605853353988148655

/-! ## A300185.P9837597994611800200

`A030308(A271269(n+1)+A217155(n+1))`
-/

namespace A300185.P9837597994611800200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A271269 (n + 1) + A217155 (n + 1)).toNat

end

end A300185.P9837597994611800200

/-! ## A300185.P476429206982915866

`A244735(eq[A016415(n), A165476(n)])`
-/

namespace A300185.P476429206982915866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300185.P476429206982915866

/-! ## A300185.P16564461973198088698

`A010060(A248470(n)+A082797(n+1))`
-/

namespace A300185.P16564461973198088698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A248470 n + A082797 (n + 1)).toNat

end

end A300185.P16564461973198088698

/-! ## A300185.P2593334361919085487

`A030308(A327481(3*n+2)*A332204(n+3))`
-/

namespace A300185.P2593334361919085487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A327481 (3 * n + 2) * A332204 (n + 3)).toNat

end

end A300185.P2593334361919085487

/-!
# A300186: Largest digit sum among all n-digit primes.

The programs for A300186, there is no canonical definition to state claims against.
-/

/-! ## A300186.P15564203981086449931

`∑{digits}[A069661(n+1), #]`
-/

namespace A300186.P15564203981086449931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A300186.P15564203981086449931

/-! ## A300186.P8844091048087446038

`∑{digits}[A069662(n+1), #]`
-/

namespace A300186.P8844091048087446038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A300186.P8844091048087446038

/-! ## A300186.P380272085483235822

`A008591(n)+dr(A069661(n+1))`
-/

namespace A300186.P380272085483235822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (SequenceMachineLib.digitalRoot (A069661 (n + 1)) : ℤ)

end

end A300186.P380272085483235822

/-! ## A300186.P5858511108434993203

`A008591(n)+dr(A069662(n+1))`
-/

namespace A300186.P5858511108434993203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + (SequenceMachineLib.digitalRoot (A069662 (n + 1)) : ℤ)

end

end A300186.P5858511108434993203

/-! ## A300186.P7776354756360044318

`A007318(C(2, n))*dr(A069662(n+1))+9*n`
-/

namespace A300186.P7776354756360044318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (SequenceMachineLib.digitalRoot (A069662 (n + 1)) : ℤ) + (9 * n : ℤ)

end

end A300186.P7776354756360044318

/-!
# A300187: a(n) = n! * [x^n] Product_{k>=1} (1 + x^k)^(n/k).

The programs for A300187, there is no canonical definition to state claims against.
-/

/-! ## A300187.P14781361658192307515

`A330338(2^C(n, 2))`
-/

namespace A300187.P14781361658192307515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330338 (2 ^ Nat.choose n 2)

end

end A300187.P14781361658192307515

/-!
# A300188: a(n) = n! * [x^n] Product_{k>=1} 1/(1 + x^k)^(n/k).

The programs for A300188, there is no canonical definition to state claims against.
-/

/-! ## A300188.P9474761684322149763

`(-1)^n*A131010(A091695(n))`
-/

namespace A300188.P9474761684322149763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131010 (A091695 n).toNat

end

end A300188.P9474761684322149763

/-!
# A300190: Number of solutions to 1 +- 2 +- 3 +- ... +- n == 0 (mod n).

The programs for A300190, the canonical program `A300190.P933532925247640132` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300190 has offset 1).

The definition of A300190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300190.P17722652470094577547

`A276283(n)%3*A000016(n+1)`
-/

namespace A300190.P17722652470094577547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276283 n) 3 * A000016 (n + 1)

end

end A300190.P17722652470094577547

namespace A300190

/-- `A276283(n)%3*A000016(n+1)` -/
def P17722652470094577547.Spec : Prop :=
  ∀ n, P17722652470094577547.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P933532925247640132

`(A096010(n+1)-1)*Δ[A098180(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A300190

/-- `(A096010(n+1)-1)*Δ[A098180(n)]` -/
def P933532925247640132.Spec : Prop :=
  ∀ n, P933532925247640132.a n = A300190 (n + 1)

theorem P933532925247640132.correct : P933532925247640132.Spec := by
  intro n
  simp only [A300190, Nat.add_sub_cancel]

end A300190

/-! ## A300190.P2662016848996026508

`abs((1-A096010(n+1))*(1-A010873(n)))`
-/

namespace A300190.P2662016848996026508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A096010 (n + 1)) * (1 - A010873 n)|

end

end A300190.P2662016848996026508

namespace A300190

/-- `abs((1-A096010(n+1))*(1-A010873(n)))` -/
def P2662016848996026508.Spec : Prop :=
  ∀ n, P2662016848996026508.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P18020142411230548395

`Δ[A098180(n)]*A053633(∑[n])`
-/

namespace A300190.P18020142411230548395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053633 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A300190.P18020142411230548395

namespace A300190

/-- `Δ[A098180(n)]*A053633(∑[n])` -/
def P18020142411230548395.Spec : Prop :=
  ∀ n, P18020142411230548395.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P7634889004891801829

`and(1-n, A000034(n))*A053633(∑[n])`
-/

namespace A300190.P7634889004891801829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A000034 n) * A053633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300190.P7634889004891801829

namespace A300190

/-- `and(1-n, A000034(n))*A053633(∑[n])` -/
def P7634889004891801829.Spec : Prop :=
  ∀ n, P7634889004891801829.a n = A300190 (n + 1)

end A300190

/-! ## A300190.P16415996582817457469

`A300328(∑[n]+1)/2`
-/

namespace A300190.P16415996582817457469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300328 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A300190.P16415996582817457469

namespace A300190

/-- `A300328(∑[n]+1)/2` -/
def P16415996582817457469.Spec : Prop :=
  ∀ n, P16415996582817457469.a n = (A300190 (n + 1) : ℚ)

end A300190

/-!
# A300192: Triangle read by rows: row n consists of the coefficients of the expansion of the polynomial (x^2 + 2*x + 1)^n + (x^2 - 1)*(x + 1)^n.

The programs for A300192, there is no canonical definition to state claims against.
-/

/-! ## A300192.P8591385550798663620

`A037835(n+1)*A337565(A000217(n))`
-/

namespace A300192.P8591385550798663620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037835 (n + 1) * A337565 (A000217 n).toNat

end

end A300192.P8591385550798663620

/-! ## A300192.P16968737327968704921

`A220354(A221715(2*n+5))*A331436(n+2)`
-/

namespace A300192.P16968737327968704921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220354 (A221715 (2 * n + 5)).toNat * A331436 (n + 2)

end

end A300192.P16968737327968704921

/-!
# A300193: Pseudo-safe-primes: numbers n = 2m+1 with 2^m congruent to n+1 or 3n-1 modulo m*n, but m composite.

The programs for A300193, there is no canonical definition to state claims against.
-/

/-! ## A300193.P1603453934052896237

`p?[2*A001567(n+1)+1]`
-/

namespace A300193.P1603453934052896237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001567 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A300193.P1603453934052896237

/-! ## A300193.P5720134838092407090

`p?[2*∩[A020136(n+1), A020137(n+1)]+1]`
-/

namespace A300193.P5720134838092407090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A300193.P5720134838092407090

/-! ## A300193.P15924858822114850696

`p?[2*(A300101(n+1)*A306413(n+1)+1)+1]`
-/

namespace A300193.P15924858822114850696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A300101 (n + 1) * A306413 (n + 1) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A300193.P15924858822114850696

