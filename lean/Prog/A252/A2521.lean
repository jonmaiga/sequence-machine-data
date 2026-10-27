import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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

/-!
# A252100: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252100, there is no canonical definition to state claims against.
-/

/-! ## A252100.P2156502677057165647

`A252105(∑[n+2]+4)`
-/

namespace A252100.P2156502677057165647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252100.P2156502677057165647

/-! ## A252100.P2653809180006391202

`lcm(A033999(n), A252105(A167614(n+1)))`
-/

namespace A252100.P2653809180006391202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252105 (A167614 (n + 1)).toNat)

end

end A252100.P2653809180006391202

/-! ## A252100.P4455185467013494628

`or(A000007(n), A252105(A167614(n+1)))`
-/

namespace A252100.P4455185467013494628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252105 (A167614 (n + 1)).toNat)

end

end A252100.P4455185467013494628

/-! ## A252100.P4484427477473633955

`or(A151878(n), A252105(A167614(n+1)))`
-/

namespace A252100.P4484427477473633955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A252105 (A167614 (n + 1)).toNat)

end

end A252100.P4484427477473633955

/-! ## A252100.P8313550711226358566

`A252105(A167614(n+1))+A000007(n+1)`
-/

namespace A252100.P8313550711226358566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A252100.P8313550711226358566

/-!
# A252101: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252101, there is no canonical definition to state claims against.
-/

/-! ## A252101.P3422693072328305629

`A252105(∑[n+3]+7)`
-/

namespace A252101.P3422693072328305629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252101.P3422693072328305629

/-! ## A252101.P8646589047137956023

`or(A000007(n), A252105(A052905(n)+9))`
-/

namespace A252101.P8646589047137956023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252105 (A052905 n + 9).toNat)

end

end A252101.P8646589047137956023

/-! ## A252101.P8258998881435667575

`A000035(2*n+1)*A252105(A141214(n)+7)`
-/

namespace A252101.P8258998881435667575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A252105 (A141214 n + 7).toNat

end

end A252101.P8258998881435667575

/-! ## A252101.P5549901196472895109

`A000034(A002378(n))*A252105(A052905(n)+9)`
-/

namespace A252101.P5549901196472895109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002378 n).toNat * A252105 (A052905 n + 9).toNat

end

end A252101.P5549901196472895109

/-!
# A252102: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252102, there is no canonical definition to state claims against.
-/

/-! ## A252102.P9219214281487986122

`A252105(A167499(n+3))`
-/

namespace A252102.P9219214281487986122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A167499 (n + 3)).toNat

end

end A252102.P9219214281487986122

/-! ## A252102.P17735408010296238090

`A252105(A167614(n+3)+2)`
-/

namespace A252102.P17735408010296238090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A167614 (n + 3) + 2).toNat

end

end A252102.P17735408010296238090

/-! ## A252102.P1027326970662595988

`A252105(A000217(n+4)+5)`
-/

namespace A252102.P1027326970662595988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A000217 (n + 4) + 5).toNat

end

end A252102.P1027326970662595988

/-! ## A252102.P7463976455634090436

`A252105(A052905(n+1)+10)`
-/

namespace A252102.P7463976455634090436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A052905 (n + 1) + 10).toNat

end

end A252102.P7463976455634090436

/-! ## A252102.P12500417094220512897

`A252105(A374005(n+1))`
-/

namespace A252102.P12500417094220512897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A374005 (n + 1)).toNat

end

end A252102.P12500417094220512897

/-!
# A252103: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252103, there is no canonical definition to state claims against.
-/

/-! ## A252103.P4997547287655799815

`A252105(A166136(n+4))`
-/

namespace A252103.P4997547287655799815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A166136 (n + 4)).toNat

end

end A252103.P4997547287655799815

/-! ## A252103.P3282690956101295342

`A252105(A167499(n+4)+1)`
-/

namespace A252103.P3282690956101295342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A167499 (n + 4) + 1).toNat

end

end A252103.P3282690956101295342

/-! ## A252103.P10280896841835862442

`A252105(A000124(n+5)+5)`
-/

namespace A252103.P10280896841835862442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A000124 (n + 5) + 5).toNat

end

end A252103.P10280896841835862442

/-! ## A252103.P2209285871341234675

`A252105(A000217(n+5)+6)`
-/

namespace A252103.P2209285871341234675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A000217 (n + 5) + 6).toNat

end

end A252103.P2209285871341234675

/-! ## A252103.P7248608377818848033

`A252105(A055999(n+2)+12)`
-/

namespace A252103.P7248608377818848033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A055999 (n + 2) + 12).toNat

end

end A252103.P7248608377818848033

/-!
# A252104: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252104, there is no canonical definition to state claims against.
-/

/-! ## A252104.P12273390677224043530

`A252105(eq[8, A131818(n+1)])`
-/

namespace A252104.P12273390677224043530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252104.P12273390677224043530

/-! ## A252104.P14000728110515630017

`A252105(A374008(n+1))`
-/

namespace A252104.P14000728110515630017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A374008 (n + 1)).toNat

end

end A252104.P14000728110515630017

/-! ## A252104.P7669619957156326112

`A252105(A055999(n+4))`
-/

namespace A252104.P7669619957156326112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A055999 (n + 4)).toNat

end

end A252104.P7669619957156326112

/-! ## A252104.P17904604163953709060

`A252105(eq[4, A219347(n)])`
-/

namespace A252104.P17904604163953709060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252104.P17904604163953709060

/-! ## A252104.P14198020425054916874

`A252105(eq[6, A193592(n)])`
-/

namespace A252104.P14198020425054916874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252104.P14198020425054916874

/-!
# A252106: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252106, there is no canonical definition to state claims against.
-/

/-! ## A252106.P14793329688851540823

`A252114(∑[4*n]+1)`
-/

namespace A252106.P14793329688851540823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252106.P14793329688851540823

/-! ## A252106.P9681753026021623764

`lcm((-1)^n, A252114(A001844(n)))`
-/

namespace A252106.P9681753026021623764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252114 (A001844 n).toNat)

end

end A252106.P9681753026021623764

/-! ## A252106.P13997341714364581133

`and(-5, A252114(A000982(2*n+1)))`
-/

namespace A252106.P13997341714364581133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A252114 (A000982 (2 * n + 1)).toNat)

end

end A252106.P13997341714364581133

/-! ## A252106.P13710311290886420549

`A252114(A001844(n))+A025469(n)`
-/

namespace A252106.P13710311290886420549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A001844 n).toNat + A025469 n

end

end A252106.P13710311290886420549

/-! ## A252106.P629248505368022270

`A252114(A001844(n))*A316439(n+1)`
-/

namespace A252106.P629248505368022270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A001844 n).toNat * A316439 (n + 1)

end

end A252106.P629248505368022270

/-!
# A252107: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252107, there is no canonical definition to state claims against.
-/

/-! ## A252107.P6816774248733308469

`A252114(∑[n]+1)`
-/

namespace A252107.P6816774248733308469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252107.P6816774248733308469

/-! ## A252107.P10671719160116867785

`or(char[1], A252114(A000124(n)))`
-/

namespace A252107.P10671719160116867785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252114 (A000124 n).toNat)

end

end A252107.P10671719160116867785

/-! ## A252107.P8455029129012941014

`A252114(A000124(n))+A025443(n)`
-/

namespace A252107.P8455029129012941014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000124 n).toNat + A025443 n

end

end A252107.P8455029129012941014

/-! ## A252107.P5320356113715549503

`A252114(A000124(n))+A025444(n)`
-/

namespace A252107.P5320356113715549503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000124 n).toNat + A025444 n

end

end A252107.P5320356113715549503

/-! ## A252107.P16123051072704573904

`A007318(∑[n])*A252114(A000124(n))`
-/

namespace A252107.P16123051072704573904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252114 (A000124 n).toNat

end

end A252107.P16123051072704573904

/-!
# A252108: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252108, there is no canonical definition to state claims against.
-/

/-! ## A252108.P17835836358071590547

`A252114(∑[n+1]+2)`
-/

namespace A252108.P17835836358071590547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252108.P17835836358071590547

/-! ## A252108.P4427292950993171474

`and(-3, A252114(A000096(n)+3))`
-/

namespace A252108.P4427292950993171474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A252114 (A000096 n + 3).toNat)

end

end A252108.P4427292950993171474

/-! ## A252108.P5411011941373195762

`lcm(A001221(n+2), A252114(A000096(n)+3))`
-/

namespace A252108.P5411011941373195762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A252114 (A000096 n + 3).toNat)

end

end A252108.P5411011941373195762

/-! ## A252108.P16088654760661927704

`ceil(1/A000041(n))*A252114(A000096(n)+3)`
-/

namespace A252108.P16088654760661927704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A252114 (A000096 n + 3).toNat

end

end A252108.P16088654760661927704

/-! ## A252108.P14072961697392843282

`A007318(C(2, n+2))*A252114(A000096(n)+3)`
-/

namespace A252108.P14072961697392843282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A252114 (A000096 n + 3).toNat

end

end A252108.P14072961697392843282

/-!
# A252109: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252109, there is no canonical definition to state claims against.
-/

/-! ## A252109.P12547262723181754723

`A252114(∑[n+2]+4)`
-/

namespace A252109.P12547262723181754723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252109.P12547262723181754723

/-! ## A252109.P8884348640614176561

`lcm(2, A252114(A167614(n+1)))`
-/

namespace A252109.P8884348640614176561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252114 (A167614 (n + 1)).toNat)

end

end A252109.P8884348640614176561

/-! ## A252109.P7356766673507430772

`A252114(A034856(n+1)+5)+char[30]`
-/

namespace A252109.P7356766673507430772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252109.P7356766673507430772

/-! ## A252109.P3414155071064121232

`A252114(A167614(n+1))+A025443(n)`
-/

namespace A252109.P3414155071064121232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A167614 (n + 1)).toNat + A025443 n

end

end A252109.P3414155071064121232

/-! ## A252109.P8866602215253019917

`A252114(A167614(n+1))+A025444(n)`
-/

namespace A252109.P8866602215253019917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A167614 (n + 1)).toNat + A025444 n

end

end A252109.P8866602215253019917

/-!
# A252110: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252110, there is no canonical definition to state claims against.
-/

/-! ## A252110.P193538621225735556

`A252114(∑[n+3]+7)`
-/

namespace A252110.P193538621225735556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252110.P193538621225735556

/-! ## A252110.P7401795452823256486

`lcm(2, A252114(A052905(n)+9))`
-/

namespace A252110.P7401795452823256486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252114 (A052905 n + 9).toNat)

end

end A252110.P7401795452823256486

/-! ## A252110.P15156127261055494934

`and(-A007318(n), A252114(A055999(n)+10))`
-/

namespace A252110.P15156127261055494934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A252114 (A055999 n + 10).toNat)

end

end A252110.P15156127261055494934

/-! ## A252110.P13548214200214727769

`A252114(A055999(n)+10)/A007318(C(n, n²))`
-/

namespace A252110.P13548214200214727769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252114 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A252110.P13548214200214727769

/-! ## A252110.P16024040863585904022

`A252114(A055999(n)+10)/A000041(C(2, n+2))`
-/

namespace A252110.P16024040863585904022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252114 (A055999 n + 10).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A252110.P16024040863585904022

/-!
# A252111: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252111, there is no canonical definition to state claims against.
-/

/-! ## A252111.P12531161356943508824

`A252114(A167499(n+3))`
-/

namespace A252111.P12531161356943508824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A167499 (n + 3)).toNat

end

end A252111.P12531161356943508824

/-! ## A252111.P11302608429506285165

`A252114(A155212(n)+13)`
-/

namespace A252111.P11302608429506285165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A155212 n + 13).toNat

end

end A252111.P11302608429506285165

/-! ## A252111.P2645542308326214101

`A252114(A056000(n)+15)`
-/

namespace A252111.P2645542308326214101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A056000 n + 15).toNat

end

end A252111.P2645542308326214101

/-! ## A252111.P2285778129783062306

`A252114(A167614(n+3)+2)`
-/

namespace A252111.P2285778129783062306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A167614 (n + 3) + 2).toNat

end

end A252111.P2285778129783062306

/-! ## A252111.P16520627815944520029

`A252114(A000124(n+4)+4)`
-/

namespace A252111.P16520627815944520029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000124 (n + 4) + 4).toNat

end

end A252111.P16520627815944520029

/-!
# A252112: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252112, there is no canonical definition to state claims against.
-/

/-! ## A252112.P4518242701250168372

`A252114(∑[n+5]+16)`
-/

namespace A252112.P4518242701250168372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252112.P4518242701250168372

/-! ## A252112.P9709563484052425140

`xor(1, A252114(A167614(n+4)+3)+1)`
-/

namespace A252112.P9709563484052425140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A252114 (A167614 (n + 4) + 3).toNat + 1)

end

end A252112.P9709563484052425140

/-! ## A252112.P5965044058364086828

`A252114(A133263(n+5)+4)+A025443(n)`
-/

namespace A252112.P5965044058364086828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A133263 (n + 5) + 4).toNat + A025443 n

end

end A252112.P5965044058364086828

/-! ## A252112.P4256170205253417740

`A252114(A133263(n+5)+4)+A025444(n)`
-/

namespace A252112.P4256170205253417740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A133263 (n + 5) + 4).toNat + A025444 n

end

end A252112.P4256170205253417740

/-! ## A252112.P14229533002087003530

`A252114(A000124(n+6)-6)+A025443(n)`
-/

namespace A252112.P14229533002087003530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000124 (n + 6) - 6).toNat + A025443 n

end

end A252112.P14229533002087003530

/-!
# A252113: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252113, there is no canonical definition to state claims against.
-/

/-! ## A252113.P18153726307582077231

`A252114(A056119(n)+28)`
-/

namespace A252113.P18153726307582077231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A056119 n + 28).toNat

end

end A252113.P18153726307582077231

/-! ## A252113.P7902411353039139501

`A252114(A000124(n+6)+6)`
-/

namespace A252113.P7902411353039139501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000124 (n + 6) + 6).toNat

end

end A252113.P7902411353039139501

/-! ## A252113.P12893262280469758618

`A252114(A000096(n+5)+8)`
-/

namespace A252113.P12893262280469758618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000096 (n + 5) + 8).toNat

end

end A252113.P12893262280469758618

/-! ## A252113.P17274593742346350359

`A252114(A000217(n+6)+7)`
-/

namespace A252113.P17274593742346350359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A000217 (n + 6) + 7).toNat

end

end A252113.P17274593742346350359

/-! ## A252113.P9730571643344851502

`A252114(A055998(n+4)+10)`
-/

namespace A252113.P9730571643344851502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A055998 (n + 4) + 10).toNat

end

end A252113.P9730571643344851502

/-!
# A252118: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 6.

The programs for A252118, there is no canonical definition to state claims against.
-/

/-! ## A252118.P7508890754035878870

`A252121(∑[n]+1)`
-/

namespace A252118.P7508890754035878870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252118.P7508890754035878870

/-! ## A252118.P12576443914318068222

`lcm(2, A252121(A000124(n)))`
-/

namespace A252118.P12576443914318068222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252121 (A000124 n).toNat)

end

end A252118.P12576443914318068222

/-! ## A252118.P14225808906627569413

`record[A010054(n)*A252121(n+1)]`
-/

namespace A252118.P14225808906627569413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252118.P14225808906627569413

/-! ## A252118.P973078528235855624

`record[A176227(n)*A252121(n+1)]`
-/

namespace A252118.P973078528235855624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176227 n * A252121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252118.P973078528235855624

/-!
# A252119: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 6.

The programs for A252119, there is no canonical definition to state claims against.
-/

/-! ## A252119.P9559754971521298063

`A252121(A000124(n+1)+1)`
-/

namespace A252119.P9559754971521298063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (A000124 (n + 1) + 1).toNat

end

end A252119.P9559754971521298063

/-! ## A252119.P15027812114071859547

`A252121(∑[A320144(n+1)]+2)`
-/

namespace A252119.P15027812114071859547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A252119.P15027812114071859547

/-!
# A252122: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252122, there is no canonical definition to state claims against.
-/

/-! ## A252122.P13999747088242704302

`A252130(∑[4*n]+1)`
-/

namespace A252122.P13999747088242704302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252122.P13999747088242704302

/-! ## A252122.P17646526142014503043

`record[gcd(A114327(n), A252130(n+1))]`
-/

namespace A252122.P17646526142014503043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252122.P17646526142014503043

/-! ## A252122.P2709191358975270431

`A252130(A001844(n))+A025469(n)`
-/

namespace A252122.P2709191358975270431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A001844 n).toNat + A025469 n

end

end A252122.P2709191358975270431

/-! ## A252122.P5155524103195298836

`lcm(A054977(n), A252130(A001844(n)))`
-/

namespace A252122.P5155524103195298836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252130 (A001844 n).toNat)

end

end A252122.P5155524103195298836

/-! ## A252122.P8360657037333952916

`A252130(A001844(n))%A235428(n+1)`
-/

namespace A252122.P8360657037333952916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252130 (A001844 n).toNat) (A235428 (n + 1))

end

end A252122.P8360657037333952916

/-!
# A252123: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252123, there is no canonical definition to state claims against.
-/

/-! ## A252123.P7016324976265500132

`A252130(∑[n]+1)`
-/

namespace A252123.P7016324976265500132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252123.P7016324976265500132

/-! ## A252123.P7694471166381763209

`or(char[3], A252130(A000124(n)))`
-/

namespace A252123.P7694471166381763209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252130 (A000124 n).toNat)

end

end A252123.P7694471166381763209

/-! ## A252123.P8754977732429114833

`record[root(A252130(n+1), A007318(n))]`
-/

namespace A252123.P8754977732429114833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P8754977732429114833

/-! ## A252123.P10708737272403197420

`record[root(A252130(n+1), A193842(n))]`
-/

namespace A252123.P10708737272403197420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 1) : ℝ) ^ (1 / (A193842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P10708737272403197420

/-! ## A252123.P7195395857009605461

`record[gcd(A002262(n), A252130(n+1))]`
-/

namespace A252123.P7195395857009605461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P7195395857009605461

/-!
# A252124: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252124, there is no canonical definition to state claims against.
-/

/-! ## A252124.P16509352640414655974

`A252130(∑[n+1]+2)`
-/

namespace A252124.P16509352640414655974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252124.P16509352640414655974

/-! ## A252124.P9585667811012015272

`record[root(A252130(n+2), A193842(n))]`
-/

namespace A252124.P9585667811012015272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 2) : ℝ) ^ (1 / (A193842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P9585667811012015272

/-! ## A252124.P7912181039801906415

`record[gcd(A002262(n), A252130(n+2))]`
-/

namespace A252124.P7912181039801906415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252130 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P7912181039801906415

/-! ## A252124.P15990068352908324135

`record[A073424(n+1)*A252130(n+3)]`
-/

namespace A252124.P15990068352908324135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A252130 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P15990068352908324135

/-! ## A252124.P17998844314104287429

`record[gcd(A095884(n+1), A252130(n+3))]`
-/

namespace A252124.P17998844314104287429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095884 (n + 1)) (A252130 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P17998844314104287429

/-!
# A252125: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252125, there is no canonical definition to state claims against.
-/

/-! ## A252125.P17789930731379323975

`A252130(∑[n+2]+4)`
-/

namespace A252125.P17789930731379323975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252125.P17789930731379323975

/-! ## A252125.P14796156420638747667

`lcm(A020985(n), A252130(A167614(n+1)))`
-/

namespace A252125.P14796156420638747667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A252130 (A167614 (n + 1)).toNat)

end

end A252125.P14796156420638747667

/-! ## A252125.P8831594678454371896

`or(A000038(n), A252130(A167614(n+1)))`
-/

namespace A252125.P8831594678454371896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252130 (A167614 (n + 1)).toNat)

end

end A252125.P8831594678454371896

/-! ## A252125.P11078851516202955741

`or(A084904(n), A252130(A167614(n+1)))`
-/

namespace A252125.P11078851516202955741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084904 n) (A252130 (A167614 (n + 1)).toNat)

end

end A252125.P11078851516202955741

/-! ## A252125.P6081959717560554240

`A252130(A167614(n+1))+A000038(n+1)`
-/

namespace A252125.P6081959717560554240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A252125.P6081959717560554240

/-!
# A252126: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252126, there is no canonical definition to state claims against.
-/

/-! ## A252126.P11295042013124610192

`A252130(∑[n+3]+7)`
-/

namespace A252126.P11295042013124610192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252126.P11295042013124610192

/-!
# A252127: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252127, there is no canonical definition to state claims against.
-/

/-! ## A252127.P16397869943174754660

`A252130(A374005(n+1))`
-/

namespace A252127.P16397869943174754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374005 (n + 1)).toNat

end

end A252127.P16397869943174754660

/-! ## A252127.P5957226007311831425

`A252130(A167499(n+3))`
-/

namespace A252127.P5957226007311831425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A167499 (n + 3)).toNat

end

end A252127.P5957226007311831425

/-! ## A252127.P3629581934069256979

`A252130(A000124(n+4)+4)`
-/

namespace A252127.P3629581934069256979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A000124 (n + 4) + 4).toNat

end

end A252127.P3629581934069256979

/-! ## A252127.P10594791341654870788

`A252130(A027379(n+2)+8)`
-/

namespace A252127.P10594791341654870788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A027379 (n + 2) + 8).toNat

end

end A252127.P10594791341654870788

/-! ## A252127.P4672998833818313365

`A252130(A000217(n+3)+n+9)`
-/

namespace A252127.P4672998833818313365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A000217 (n + 3) + (n + 9 : ℤ)).toNat

end

end A252127.P4672998833818313365

/-!
# A252128: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252128, there is no canonical definition to state claims against.
-/

/-! ## A252128.P10652367752435767802

`A252130(A374007(n+1))`
-/

namespace A252128.P10652367752435767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374007 (n + 1)).toNat

end

end A252128.P10652367752435767802

/-! ## A252128.P7155194278507926447

`A252130(Δ[A264443(n)]+10)`
-/

namespace A252128.P7155194278507926447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (f1 (n + 1) - f1 n + 10).toNat

end

end A252128.P7155194278507926447

/-! ## A252128.P15743890509326112760

`A252130(Δ[A023545(n+1)]+10)`
-/

namespace A252128.P15743890509326112760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (f1 (n + 1) - f1 n + 10).toNat

end

end A252128.P15743890509326112760

/-! ## A252128.P17403855465257319447

`A252130(A052905(n+3))`
-/

namespace A252128.P17403855465257319447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A052905 (n + 3)).toNat

end

end A252128.P17403855465257319447

/-! ## A252128.P12552825145109680263

`A252130(eq[5, A193592(n)])`
-/

namespace A252128.P12552825145109680263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252128.P12552825145109680263

/-!
# A252129: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252129, there is no canonical definition to state claims against.
-/

/-! ## A252129.P8593681473452210445

`A252130(A374008(n+1))`
-/

namespace A252129.P8593681473452210445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374008 (n + 1)).toNat

end

end A252129.P8593681473452210445

/-! ## A252129.P9337341764765821278

`A252130(Δ[A264443(n+1)]+11)`
-/

namespace A252129.P9337341764765821278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (f1 (n + 1) - f1 n + 11).toNat

end

end A252129.P9337341764765821278

/-! ## A252129.P14653478460165394902

`A252130(Δ[A023545(n+2)]+11)`
-/

namespace A252129.P14653478460165394902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (f1 (n + 1) - f1 n + 11).toNat

end

end A252129.P14653478460165394902

/-! ## A252129.P9069553256754881387

`A252130(eq[4, A219347(n)])`
-/

namespace A252129.P9069553256754881387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252129.P9069553256754881387

/-! ## A252129.P10051661757943842862

`A252130(eq[6, A193592(n)])`
-/

namespace A252129.P10051661757943842862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252129.P10051661757943842862

/-!
# A252131: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252131, there is no canonical definition to state claims against.
-/

/-! ## A252131.P16133729287572417803

`A252139((n+1)²+n²)`
-/

namespace A252131.P16133729287572417803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 ((n + 1) ^ 2 + n ^ 2)

end

end A252131.P16133729287572417803

/-! ## A252131.P8125484941677344626

`A252139(A001844(n))+A025466(n)`
-/

namespace A252131.P8125484941677344626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A001844 n).toNat + A025466 n

end

end A252131.P8125484941677344626

/-! ## A252131.P1026549887234729858

`A252139(A001844(n))+A185284(n)`
-/

namespace A252131.P1026549887234729858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A001844 n).toNat + A185284 n

end

end A252131.P1026549887234729858

/-! ## A252131.P3222202917321278131

`lcm(A033999(n), A252139(A001844(n)))`
-/

namespace A252131.P3222202917321278131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252139 (A001844 n).toNat)

end

end A252131.P3222202917321278131

/-! ## A252131.P2130737680397254612

`A014963(16*n+36)*A252139(A001844(n))`
-/

namespace A252131.P2130737680397254612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (16 * n + 36) * A252139 (A001844 n).toNat

end

end A252131.P2130737680397254612

/-!
# A252132: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252132, there is no canonical definition to state claims against.
-/

/-! ## A252132.P17726673831842402191

`A252139(∑[n]+1)`
-/

namespace A252132.P17726673831842402191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252132.P17726673831842402191

/-! ## A252132.P16500099080215616909

`A252139(A000124(n))+A025466(n)`
-/

namespace A252132.P16500099080215616909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000124 n).toNat + A025466 n

end

end A252132.P16500099080215616909

/-! ## A252132.P8431794573860929885

`A252139(A000124(n))%A252125(n+1)`
-/

namespace A252132.P8431794573860929885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252139 (A000124 n).toNat) (A252125 (n + 1))

end

end A252132.P8431794573860929885

/-! ## A252132.P342518229008928954

`lcm(A076479(n+1), A252139(A000124(n)))`
-/

namespace A252132.P342518229008928954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A252139 (A000124 n).toNat)

end

end A252132.P342518229008928954

/-! ## A252132.P16598863013320734091

`A252139(A000124(n))+A240351(2*n+1)`
-/

namespace A252132.P16598863013320734091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000124 n).toNat + A240351 (2 * n + 1)

end

end A252132.P16598863013320734091

/-!
# A252133: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252133, there is no canonical definition to state claims against.
-/

/-! ## A252133.P5997271673411459285

`A252139(∑[n+1]+2)`
-/

namespace A252133.P5997271673411459285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252133.P5997271673411459285

/-! ## A252133.P16740111955376980595

`A252139(A133263(n+1))%A252125(n+1)`
-/

namespace A252133.P16740111955376980595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252139 (A133263 (n + 1)).toNat) (A252125 (n + 1))

end

end A252133.P16740111955376980595

/-! ## A252133.P5229930274156141030

`A252139(A000096(n)+3)%A252101(n+1)`
-/

namespace A252133.P5229930274156141030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252139 (A000096 n + 3).toNat) (A252101 (n + 1))

end

end A252133.P5229930274156141030

/-! ## A252133.P11439372107326020278

`A252139(A000096(n+1))+A034535(n+1)`
-/

namespace A252133.P11439372107326020278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000096 (n + 1)).toNat + A034535 (n + 1)

end

end A252133.P11439372107326020278

/-! ## A252133.P5439601243503725122

`A000027(A252139(∑[n+2]))`
-/

namespace A252133.P5439601243503725122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A252139 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252133.P5439601243503725122

/-!
# A252134: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252134, there is no canonical definition to state claims against.
-/

/-! ## A252134.P14263752197660073898

`A252139(∑[n+2]+4)`
-/

namespace A252134.P14263752197660073898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252134.P14263752197660073898

/-! ## A252134.P8745515671980036072

`or(1, A252139(A167614(n+1)))`
-/

namespace A252134.P8745515671980036072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252139 (A167614 (n + 1)).toNat)

end

end A252134.P8745515671980036072

/-! ## A252134.P4533666859864371585

`A252139(A167614(n+1))+A025466(n)`
-/

namespace A252134.P4533666859864371585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167614 (n + 1)).toNat + A025466 n

end

end A252134.P4533666859864371585

/-! ## A252134.P10355866631310917966

`A252139(A167614(n+1))+A185284(n)`
-/

namespace A252134.P10355866631310917966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167614 (n + 1)).toNat + A185284 n

end

end A252134.P10355866631310917966

/-! ## A252134.P9294002961922709931

`lcm(A033999(n), A252139(A167614(n+1)))`
-/

namespace A252134.P9294002961922709931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252139 (A167614 (n + 1)).toNat)

end

end A252134.P9294002961922709931

/-!
# A252135: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252135, there is no canonical definition to state claims against.
-/

/-! ## A252135.P9238127290751361261

`A252139(A141214(n)+7)`
-/

namespace A252135.P9238127290751361261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A141214 n + 7).toNat

end

end A252135.P9238127290751361261

/-! ## A252135.P2980946833547274217

`A252139(A167614(n+2)+1)`
-/

namespace A252135.P2980946833547274217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167614 (n + 2) + 1).toNat

end

end A252135.P2980946833547274217

/-! ## A252135.P13601088970825725507

`A252139(A167499(n+2)-1)`
-/

namespace A252135.P13601088970825725507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167499 (n + 2) - 1).toNat

end

end A252135.P13601088970825725507

/-! ## A252135.P5467941659691796811

`A252139(A166136(n+2)-2)`
-/

namespace A252135.P5467941659691796811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A166136 (n + 2) - 2).toNat

end

end A252135.P5467941659691796811

/-! ## A252135.P10506645896518999192

`A252139(A166136(n+1)+1+n)`
-/

namespace A252135.P10506645896518999192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A252135.P10506645896518999192

/-!
# A252136: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252136, there is no canonical definition to state claims against.
-/

/-! ## A252136.P17016202999025137323

`A252139(A167499(n+3))`
-/

namespace A252136.P17016202999025137323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167499 (n + 3)).toNat

end

end A252136.P17016202999025137323

/-! ## A252136.P5853638594623788722

`A252139(A056000(n)+15)`
-/

namespace A252136.P5853638594623788722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A056000 n + 15).toNat

end

end A252136.P5853638594623788722

/-! ## A252136.P14278811889379561348

`A252139(A133263(n+4)+3)`
-/

namespace A252136.P14278811889379561348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A133263 (n + 4) + 3).toNat

end

end A252136.P14278811889379561348

/-! ## A252136.P6090584063921309540

`A252139(A000124(n+4)+4)`
-/

namespace A252136.P6090584063921309540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000124 (n + 4) + 4).toNat

end

end A252136.P6090584063921309540

/-! ## A252136.P594601562007207626

`A252139(Δ[A023551(n+1)]-2*n)`
-/

namespace A252136.P594601562007207626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A252136.P594601562007207626

/-!
# A252137: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252137, there is no canonical definition to state claims against.
-/

/-! ## A252137.P12494939962187049544

`A252139(A166136(n+4))`
-/

namespace A252137.P12494939962187049544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A166136 (n + 4)).toNat

end

end A252137.P12494939962187049544

/-! ## A252137.P9396037344351359344

`A252139(A167499(n+4)+1)`
-/

namespace A252137.P9396037344351359344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167499 (n + 4) + 1).toNat

end

end A252137.P9396037344351359344

/-! ## A252137.P14415681281187038481

`A252139(A000124(n+5)+5)`
-/

namespace A252137.P14415681281187038481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000124 (n + 5) + 5).toNat

end

end A252137.P14415681281187038481

/-! ## A252137.P5378912213138670370

`A252139(A000217(n+5)+6)`
-/

namespace A252137.P5378912213138670370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A000217 (n + 5) + 6).toNat

end

end A252137.P5378912213138670370

/-! ## A252137.P22664385219305250

`A252139(A167614(n+5)+A001489(n+3))`
-/

namespace A252137.P22664385219305250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167614 (n + 5) + A001489 (n + 3)).toNat

end

end A252137.P22664385219305250

/-!
# A252138: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252138, there is no canonical definition to state claims against.
-/

/-! ## A252138.P14798745911220938792

`A252139(A161680(n+7)+7)`
-/

namespace A252138.P14798745911220938792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A161680 (n + 7) + 7).toNat

end

end A252138.P14798745911220938792

/-! ## A252138.P6905283310920622846

`A252139(eq[8, A131818(n+1)])`
-/

namespace A252138.P6905283310920622846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252138.P6905283310920622846

/-! ## A252138.P12470093332139022817

`A252139(A374008(n+1))`
-/

namespace A252138.P12470093332139022817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A374008 (n + 1)).toNat

end

end A252138.P12470093332139022817

/-! ## A252138.P14001229262736262657

`A252139(A055999(n+4))`
-/

namespace A252138.P14001229262736262657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A055999 (n + 4)).toNat

end

end A252138.P14001229262736262657

/-! ## A252138.P15104224019049699989

`A252139(eq[6, A193592(n)])`
-/

namespace A252138.P15104224019049699989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252138.P15104224019049699989

/-!
# A252140: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252140, there is no canonical definition to state claims against.
-/

/-! ## A252140.P10145286554903960057

`A252148(∑[4*n]+1)`
-/

namespace A252140.P10145286554903960057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252140.P10145286554903960057

/-! ## A252140.P9950930803138552217

`A252148(A001844(n))+char[19]`
-/

namespace A252140.P9950930803138552217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252140.P9950930803138552217

/-! ## A252140.P8965263556073887351

`A252148(A001844(n))^A119335(n)`
-/

namespace A252140.P8965263556073887351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252148 (A001844 n).toNat : ℚ) ^ (A119335 n : ℤ)

end

end A252140.P8965263556073887351

/-! ## A252140.P17972680942635461113

`A252148(A001844(n))/A007318(∑[n])`
-/

namespace A252140.P17972680942635461113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252148 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A252140.P17972680942635461113

/-! ## A252140.P13434409451027561703

`A008835(n+1)*A252148(A001844(n))`
-/

namespace A252140.P13434409451027561703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A252148 (A001844 n).toNat

end

end A252140.P13434409451027561703

/-!
# A252141: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252141, there is no canonical definition to state claims against.
-/

/-! ## A252141.P16056603815285073440

`A252148(∑[n]+1)`
-/

namespace A252141.P16056603815285073440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252141.P16056603815285073440

/-! ## A252141.P8385431071927233212

`record[A252148(n+1)]`
-/

namespace A252141.P8385431071927233212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252141.P8385431071927233212

/-! ## A252141.P16628377915901507149

`and(-1, A252148(A000124(n)))`
-/

namespace A252141.P16628377915901507149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252148 (A000124 n).toNat)

end

end A252141.P16628377915901507149

/-! ## A252141.P10342602949347780376

`A252148(A000124(n))+A243835(n)`
-/

namespace A252141.P10342602949347780376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A000124 n).toNat + A243835 n

end

end A252141.P10342602949347780376

/-! ## A252141.P12682083834924235238

`A015936(n)*A252148(A000124(n))`
-/

namespace A252141.P12682083834924235238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 n * A252148 (A000124 n).toNat

end

end A252141.P12682083834924235238

/-!
# A252142: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252142, there is no canonical definition to state claims against.
-/

/-! ## A252142.P7979551410233039410

`A252148(∑[n+1]+2)`
-/

namespace A252142.P7979551410233039410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252142.P7979551410233039410

/-! ## A252142.P11039816641780459925

`A000027(A252148(∑[n+2]))`
-/

namespace A252142.P11039816641780459925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A252148 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252142.P11039816641780459925

/-!
# A252143: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252143, there is no canonical definition to state claims against.
-/

/-! ## A252143.P17028742234153689212

`A252148(∑[n+2]+4)`
-/

namespace A252143.P17028742234153689212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252143.P17028742234153689212

/-! ## A252143.P201896828097497466

`or(char[1], A252148(A167614(n+1)))`
-/

namespace A252143.P201896828097497466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252148 (A167614 (n + 1)).toNat)

end

end A252143.P201896828097497466

/-! ## A252143.P7610891451707779899

`A252148(A167614(n+1))+A243835(n)`
-/

namespace A252143.P7610891451707779899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167614 (n + 1)).toNat + A243835 n

end

end A252143.P7610891451707779899

/-! ## A252143.P3677893164443603629

`A252148(A167614(n+1))%A222814(n+1)`
-/

namespace A252143.P3677893164443603629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252148 (A167614 (n + 1)).toNat) (A222814 (n + 1))

end

end A252143.P3677893164443603629

/-! ## A252143.P4840497078373713102

`A007318(C(2, n+2))*A252148(A167614(n+1))`
-/

namespace A252143.P4840497078373713102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A252148 (A167614 (n + 1)).toNat

end

end A252143.P4840497078373713102

/-!
# A252144: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252144, there is no canonical definition to state claims against.
-/

/-! ## A252144.P11143167463877452700

`A252148(∑[n+3]+7)`
-/

namespace A252144.P11143167463877452700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252144.P11143167463877452700

/-! ## A252144.P13890059587867298381

`A252148(A374004(n+1))%A250507(n+1)`
-/

namespace A252144.P13890059587867298381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252148 (A374004 (n + 1)).toNat) (A250507 (n + 1))

end

end A252144.P13890059587867298381

/-! ## A252144.P2358639026035369028

`A252148(A055998(n+2))%A222814(n+1)`
-/

namespace A252144.P2358639026035369028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252148 (A055998 (n + 2)).toNat) (A222814 (n + 1))

end

end A252144.P2358639026035369028

/-!
# A252145: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252145, there is no canonical definition to state claims against.
-/

/-! ## A252145.P4370550893136476306

`A252148(A167499(n+3))`
-/

namespace A252145.P4370550893136476306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167499 (n + 3)).toNat

end

end A252145.P4370550893136476306

/-! ## A252145.P16411145560058491985

`A252148(A155212(n)+13)`
-/

namespace A252145.P16411145560058491985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A155212 n + 13).toNat

end

end A252145.P16411145560058491985

/-! ## A252145.P12005921732148561767

`A252148(A056000(n)+15)`
-/

namespace A252145.P12005921732148561767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A056000 n + 15).toNat

end

end A252145.P12005921732148561767

/-! ## A252145.P14495739240092956499

`A252148(eq[7, A066657(n)])`
-/

namespace A252145.P14495739240092956499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252145.P14495739240092956499

/-! ## A252145.P12742598716855827372

`A252148(A167614(n+3)+2)`
-/

namespace A252145.P12742598716855827372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167614 (n + 3) + 2).toNat

end

end A252145.P12742598716855827372

/-!
# A252146: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252146, there is no canonical definition to state claims against.
-/

/-! ## A252146.P1306579141642397459

`A252148(A056115(n)+21)`
-/

namespace A252146.P1306579141642397459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A056115 n + 21).toNat

end

end A252146.P1306579141642397459

/-! ## A252146.P2966548165770461583

`A252148(A167499(n+4)+1)`
-/

namespace A252146.P2966548165770461583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167499 (n + 4) + 1).toNat

end

end A252146.P2966548165770461583

/-! ## A252146.P17924417519031991283

`A252148(A167487(n+4)-1)`
-/

namespace A252146.P17924417519031991283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167487 (n + 4) - 1).toNat

end

end A252146.P17924417519031991283

/-! ## A252146.P6883288641124140500

`A252148(A000124(n+5)+5)`
-/

namespace A252146.P6883288641124140500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A000124 (n + 5) + 5).toNat

end

end A252146.P6883288641124140500

/-! ## A252146.P16120554824075779758

`A252148(A000096(n+4)+7)`
-/

namespace A252146.P16120554824075779758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A000096 (n + 4) + 7).toNat

end

end A252146.P16120554824075779758

/-!
# A252147: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252147, there is no canonical definition to state claims against.
-/

/-! ## A252147.P13601929849734105785

`A252148(A167487(n+5))`
-/

namespace A252147.P13601929849734105785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167487 (n + 5)).toNat

end

end A252147.P13601929849734105785

/-! ## A252147.P2216340031342111057

`A252148(eq[11, A066657(n)])`
-/

namespace A252147.P2216340031342111057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252147.P2216340031342111057

/-! ## A252147.P3569762745743436323

`A252148(A167499(n+5)+2)`
-/

namespace A252147.P3569762745743436323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167499 (n + 5) + 2).toNat

end

end A252147.P3569762745743436323

/-! ## A252147.P8097477040878400167

`A252148(A167614(n+5)+4)`
-/

namespace A252147.P8097477040878400167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167614 (n + 5) + 4).toNat

end

end A252147.P8097477040878400167

/-! ## A252147.P2126693555137713587

`A252148(A340266(n+5)+5)`
-/

namespace A252147.P2126693555137713587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A340266 (n + 5) + 5).toNat

end

end A252147.P2126693555137713587

/-!
# A252149: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252149, there is no canonical definition to state claims against.
-/

/-! ## A252149.P3352044158115493125

`A252157(∑[4*n]+1)`
-/

namespace A252149.P3352044158115493125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252149.P3352044158115493125

/-! ## A252149.P14541806607951879505

`A252157(A001844(n))+char[16]`
-/

namespace A252149.P14541806607951879505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252149.P14541806607951879505

/-! ## A252149.P2732802912945831996

`record[A003982(n)*A252157(n+1)]`
-/

namespace A252149.P2732802912945831996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P2732802912945831996

/-! ## A252149.P10724034851632603615

`record[root(A252157(n+1), A143182(n))]`
-/

namespace A252149.P10724034851632603615
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252157 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P10724034851632603615

/-! ## A252149.P849590975845936109

`record[A010052(2*n+1)*A252157(n+1)]`
-/

namespace A252149.P849590975845936109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A252157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P849590975845936109

/-!
# A252150: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252150, there is no canonical definition to state claims against.
-/

/-! ## A252150.P914255910528344381

`A252157(∑[n]+1)`
-/

namespace A252150.P914255910528344381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252150.P914255910528344381

/-! ## A252150.P18000458538055252184

`record[A252157(A114091(n+1))]`
-/

namespace A252150.P18000458538055252184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P18000458538055252184

/-! ## A252150.P10676039632821281727

`record[A252157(A249725(n+1))]`
-/

namespace A252150.P10676039632821281727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P10676039632821281727

/-! ## A252150.P1678596283509471604

`record[A252157(A249742(n+1))]`
-/

namespace A252150.P1678596283509471604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P1678596283509471604

/-! ## A252150.P5613975775206925561

`record[A252157(A254052(n+1))]`
-/

namespace A252150.P5613975775206925561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P5613975775206925561

/-!
# A252151: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252151, there is no canonical definition to state claims against.
-/

/-! ## A252151.P3266205570548834528

`A252157(∑[n+1]+2)`
-/

namespace A252151.P3266205570548834528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252151.P3266205570548834528

/-! ## A252151.P17256567854589196471

`A252157(A133263(n+1))^A327767(2*n+1)`
-/

namespace A252151.P17256567854589196471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252157 (A133263 (n + 1)).toNat : ℚ) ^ (A327767 (2 * n + 1) : ℤ)

end

end A252151.P17256567854589196471

/-! ## A252151.P5268917345669943396

`A252157(A133263(n+1))+A001222(4^floor(A050328(n+1)/10))`
-/

namespace A252151.P5268917345669943396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A133263 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊(A050328 (n + 1) : ℚ) / 10⌋ : ℤ))).toNat

end

end A252151.P5268917345669943396

/-! ## A252151.P1912849699449167022

`A252157(A000096(n+1))%A252156(n+1)`
-/

namespace A252151.P1912849699449167022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252157 (A000096 (n + 1)).toNat) (A252156 (n + 1))

end

end A252151.P1912849699449167022

/-!
# A252152: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252152, there is no canonical definition to state claims against.
-/

/-! ## A252152.P11264043120793475028

`A252157(∑[n+2]+4)`
-/

namespace A252152.P11264043120793475028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252152.P11264043120793475028

/-! ## A252152.P1981208516565836673

`or(char[2], A252157(A167614(n+1)))`
-/

namespace A252152.P1981208516565836673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252157 (A167614 (n + 1)).toNat)

end

end A252152.P1981208516565836673

/-! ## A252152.P11900827827565738486

`A252157(A167499(n)+n)+char[36]`
-/

namespace A252152.P11900827827565738486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252152.P11900827827565738486

/-! ## A252152.P16854521344423655201

`A252157(A167614(n+1))+A034475(n+1)`
-/

namespace A252152.P16854521344423655201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167614 (n + 1)).toNat + A034475 (n + 1)

end

end A252152.P16854521344423655201

/-! ## A252152.P9796893569156115446

`A252157(A167614(n+1))+A000007(n+4)`
-/

namespace A252152.P9796893569156115446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167614 (n + 1)).toNat + A000007 (n + 4)

end

end A252152.P9796893569156115446

/-!
# A252153: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252153, there is no canonical definition to state claims against.
-/

/-! ## A252153.P13558328038638717497

`A252157(∑[n+3]+7)`
-/

namespace A252153.P13558328038638717497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252153.P13558328038638717497

/-!
# A252154: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252154, there is no canonical definition to state claims against.
-/

/-! ## A252154.P7888783893887827974

`A252157(C(n+6, 2)-n)`
-/

namespace A252154.P7888783893887827974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (Nat.choose (n + 6) 2 - n)

end

end A252154.P7888783893887827974

/-! ## A252154.P5273562027658806058

`A252157(A167499(n+3))`
-/

namespace A252154.P5273562027658806058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167499 (n + 3)).toNat

end

end A252154.P5273562027658806058

/-! ## A252154.P16366821358035829465

`A252157(A155212(n)+13)`
-/

namespace A252154.P16366821358035829465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A155212 n + 13).toNat

end

end A252154.P16366821358035829465

/-! ## A252154.P1219071310900657001

`A252157(A056000(n)+15)`
-/

namespace A252154.P1219071310900657001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A056000 n + 15).toNat

end

end A252154.P1219071310900657001

/-! ## A252154.P13045844979554247307

`A252157(eq[7, A066657(n)])`
-/

namespace A252154.P13045844979554247307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252154.P13045844979554247307

/-!
# A252155: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252155, there is no canonical definition to state claims against.
-/

/-! ## A252155.P11696216431035511835

`A252157(∑[n+5]+16)`
-/

namespace A252155.P11696216431035511835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252155.P11696216431035511835

/-!
# A252156: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252156, there is no canonical definition to state claims against.
-/

/-! ## A252156.P10513529297212062207

`A252157(A167487(n+5))`
-/

namespace A252156.P10513529297212062207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167487 (n + 5)).toNat

end

end A252156.P10513529297212062207

/-! ## A252156.P10954994197728776984

`A252157(A056119(n)+28)`
-/

namespace A252156.P10954994197728776984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A056119 n + 28).toNat

end

end A252156.P10954994197728776984

/-! ## A252156.P13360703400318696608

`A252157(eq[11, A066657(n)])`
-/

namespace A252156.P13360703400318696608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252156.P13360703400318696608

/-! ## A252156.P1155122646764887431

`A252157(A167499(n+5)+2)`
-/

namespace A252156.P1155122646764887431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167499 (n + 5) + 2).toNat

end

end A252156.P1155122646764887431

/-! ## A252156.P7510959140988152588

`A252157(A167614(n+5)+4)`
-/

namespace A252156.P7510959140988152588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167614 (n + 5) + 4).toNat

end

end A252156.P7510959140988152588

/-!
# A252159: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252159, there is no canonical definition to state claims against.
-/

/-! ## A252159.P9952298960705293058

`A252167(∑[4*n]+1)`
-/

namespace A252159.P9952298960705293058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252159.P9952298960705293058

/-! ## A252159.P15161709349178854483

`lcm(A033999(n), A252167(A001844(n)))`
-/

namespace A252159.P15161709349178854483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252167 (A001844 n).toNat)

end

end A252159.P15161709349178854483

/-! ## A252159.P13918177160838536390

`or(A252167(A001844(n)), A304002(n))`
-/

namespace A252159.P13918177160838536390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252167 (A001844 n).toNat) (A304002 n)

end

end A252159.P13918177160838536390

/-! ## A252159.P5899543057972121217

`A007318(∑[n])*A252167(A001844(n))`
-/

namespace A252159.P5899543057972121217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252167 (A001844 n).toNat

end

end A252159.P5899543057972121217

/-! ## A252159.P14228587591740134

`A252167(A001844(n))+A034563(n+1)`
-/

namespace A252159.P14228587591740134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A001844 n).toNat + A034563 (n + 1)

end

end A252159.P14228587591740134

/-!
# A252160: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252160, there is no canonical definition to state claims against.
-/

/-! ## A252160.P7540197744882995672

`A252167(∑[n]+1)`
-/

namespace A252160.P7540197744882995672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252160.P7540197744882995672

/-! ## A252160.P9347584789684616675

`record[A252167(A106247(n))]`
-/

namespace A252160.P9347584789684616675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P9347584789684616675

/-! ## A252160.P12569679515655800165

`record[A252167(n+1)/A086645(n)]`
-/

namespace A252160.P12569679515655800165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P12569679515655800165

/-! ## A252160.P8558341435143064767

`record[A252167(n+1)/A088617(n)]`
-/

namespace A252160.P8558341435143064767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℚ) / (A088617 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P8558341435143064767

/-! ## A252160.P5652230752909124923

`record[root(A252167(n+1), A193592(n))]`
-/

namespace A252160.P5652230752909124923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P5652230752909124923

/-!
# A252161: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252161, there is no canonical definition to state claims against.
-/

/-! ## A252161.P7490608508279441433

`A252167(∑[n+1]+2)`
-/

namespace A252161.P7490608508279441433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252161.P7490608508279441433

/-! ## A252161.P13337617787365983321

`A252167(A000096(n)+3)+A185284(n)`
-/

namespace A252161.P13337617787365983321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A000096 n + 3).toNat + A185284 n

end

end A252161.P13337617787365983321

/-! ## A252161.P17000948382168746307

`A152851(n)*A252167(A000096(n)+3)`
-/

namespace A252161.P17000948382168746307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A252167 (A000096 n + 3).toNat

end

end A252161.P17000948382168746307

/-! ## A252161.P8420108158398420583

`A252167(A000096(n)+3)%A016967(n)`
-/

namespace A252161.P8420108158398420583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252167 (A000096 n + 3).toNat) (A016967 n)

end

end A252161.P8420108158398420583

/-! ## A252161.P103258590328063650

`A252167(A133263(n+1))%A252154(n+1)`
-/

namespace A252161.P103258590328063650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252167 (A133263 (n + 1)).toNat) (A252154 (n + 1))

end

end A252161.P103258590328063650

/-!
# A252162: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252162, there is no canonical definition to state claims against.
-/

/-! ## A252162.P11904487701639713990

`A252167(∑[n+2]+4)`
-/

namespace A252162.P11904487701639713990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252162.P11904487701639713990

/-! ## A252162.P11781934944404484807

`A252167(A167614(n+1))+A185284(n)`
-/

namespace A252162.P11781934944404484807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167614 (n + 1)).toNat + A185284 n

end

end A252162.P11781934944404484807

/-! ## A252162.P14458800300159737735

`A152851(n)*A252167(A167614(n+1))`
-/

namespace A252162.P14458800300159737735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A252167 (A167614 (n + 1)).toNat

end

end A252162.P14458800300159737735

/-! ## A252162.P1945419543314700852

`or(A000007(n), A252167(A167614(n+1)))`
-/

namespace A252162.P1945419543314700852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252167 (A167614 (n + 1)).toNat)

end

end A252162.P1945419543314700852

/-! ## A252162.P14807499840972307012

`or(A151933(n), A252167(A167614(n+1)))`
-/

namespace A252162.P14807499840972307012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A252167 (A167614 (n + 1)).toNat)

end

end A252162.P14807499840972307012

/-!
# A252163: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252163, there is no canonical definition to state claims against.
-/

/-! ## A252163.P10660943701912679116

`A252167(A374004(n+1))`
-/

namespace A252163.P10660943701912679116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374004 (n + 1)).toNat

end

end A252163.P10660943701912679116

/-! ## A252163.P8481942080137094525

`A252167(A141214(n)+7)`
-/

namespace A252163.P8481942080137094525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A141214 n + 7).toNat

end

end A252163.P8481942080137094525

/-! ## A252163.P10786468326557395279

`A252167(A052905(n)+9)`
-/

namespace A252163.P10786468326557395279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A052905 n + 9).toNat

end

end A252163.P10786468326557395279

/-! ## A252163.P10020520156739044979

`A252167(A055999(n)+10)`
-/

namespace A252163.P10020520156739044979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A055999 n + 10).toNat

end

end A252163.P10020520156739044979

/-! ## A252163.P2967156205401923202

`A252167(Δ[A008778(n)]+6)`
-/

namespace A252163.P2967156205401923202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (f1 (n + 1) - f1 n + 6).toNat

end

end A252163.P2967156205401923202

/-!
# A252164: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252164, there is no canonical definition to state claims against.
-/

/-! ## A252164.P4068546853441942461

`A252167(A374005(n+1))`
-/

namespace A252164.P4068546853441942461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374005 (n + 1)).toNat

end

end A252164.P4068546853441942461

/-! ## A252164.P12576238379301771970

`A252167(A167499(n+3))`
-/

namespace A252164.P12576238379301771970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167499 (n + 3)).toNat

end

end A252164.P12576238379301771970

/-! ## A252164.P5422474663411191772

`A252167(A056000(n)+15)`
-/

namespace A252164.P5422474663411191772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A056000 n + 15).toNat

end

end A252164.P5422474663411191772

/-! ## A252164.P5242845885868058128

`A252167(A000217(n+4)+5)`
-/

namespace A252164.P5242845885868058128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A000217 (n + 4) + 5).toNat

end

end A252164.P5242845885868058128

/-! ## A252164.P13043808796395751779

`A252167(Δ[A264443(n)])`
-/

namespace A252164.P13043808796395751779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (f1 (n + 1) - f1 n).toNat

end

end A252164.P13043808796395751779

/-!
# A252165: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252165, there is no canonical definition to state claims against.
-/

/-! ## A252165.P17806751894413011741

`A252167(A374007(n+1))`
-/

namespace A252165.P17806751894413011741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374007 (n + 1)).toNat

end

end A252165.P17806751894413011741

/-! ## A252165.P16066202489646328783

`A252167(A000217(n+5)+6)`
-/

namespace A252165.P16066202489646328783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A000217 (n + 5) + 6).toNat

end

end A252165.P16066202489646328783

/-! ## A252165.P9875472331268530725

`A252167(A141214(n+2)+9)`
-/

namespace A252165.P9875472331268530725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A141214 (n + 2) + 9).toNat

end

end A252165.P9875472331268530725

/-! ## A252165.P17117412734159543159

`A252167(A167614(n+5)+4-A000027(n+7))`
-/

namespace A252165.P17117412734159543159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167614 (n + 5) + 4 - A000027 (n + 7)).toNat

end

end A252165.P17117412734159543159

/-! ## A252165.P11955164905497437225

`A252167(Δ[Δ[A006504(n+1)]])`
-/

namespace A252165.P11955164905497437225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (f1 (n + 1) - f1 n).toNat

end

end A252165.P11955164905497437225

/-!
# A252166: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252166, there is no canonical definition to state claims against.
-/

/-! ## A252166.P15815032208860758072

`A252167(A374008(n+1))`
-/

namespace A252166.P15815032208860758072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374008 (n + 1)).toNat

end

end A252166.P15815032208860758072

/-! ## A252166.P4703918183781210900

`A252167(A167487(n+5))`
-/

namespace A252166.P4703918183781210900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167487 (n + 5)).toNat

end

end A252166.P4703918183781210900

/-! ## A252166.P11345009605612236772

`A252167(A167499(n+5)+2)`
-/

namespace A252166.P11345009605612236772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167499 (n + 5) + 2).toNat

end

end A252166.P11345009605612236772

/-! ## A252166.P13737001464859824875

`A252167(A167614(n+5)+4)`
-/

namespace A252166.P13737001464859824875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A167614 (n + 5) + 4).toNat

end

end A252166.P13737001464859824875

/-! ## A252166.P12771866885070454084

`A252167(Δ[A023551(n+1)]+13)`
-/

namespace A252166.P12771866885070454084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (f1 (n + 1) - f1 n + 13).toNat

end

end A252166.P12771866885070454084

/-!
# A252168: Smallest k > 0 such that |(2n-1) - 2^k| is prime, or -1 if no such k exists.

The programs for A252168, there is no canonical definition to state claims against.
-/

/-! ## A252168.P16785185775373909748

`gcd(A276417(n), A346971(n+2))`
-/

namespace A252168.P16785185775373909748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276417 n) (A346971 (n + 2))

end

end A252168.P16785185775373909748

/-! ## A252168.P2904326271300779647

`A276417(n)+A049084(A364546(2*n+3))`
-/

namespace A252168.P2904326271300779647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n + A049084 (A364546 (2 * n + 3)).toNat

end

end A252168.P2904326271300779647

/-! ## A252168.P13402692826382408788

`gcd(A097946(A001037(n)), A276417(n))`
-/

namespace A252168.P13402692826382408788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097946 (A001037 n).toNat) (A276417 n)

end

end A252168.P13402692826382408788

/-! ## A252168.P16973030661536564972

`A001511(A240690(2*(n+1))+A055587(2*(n+1)))`
-/

namespace A252168.P16973030661536564972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A240690 (2 * (n + 1)) + A055587 (2 * (n + 1))).toNat

end

end A252168.P16973030661536564972

/-! ## A252168.P14758102214891120754

`A028920(A056449(n)-A276417(n))`
-/

namespace A252168.P14758102214891120754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A056449 n - A276417 n).toNat

end

end A252168.P14758102214891120754

/-!
# A252169: Beatty sequence for sqrt(Pi*phi) where phi is the golden ratio A001622.

The programs for A252169, the canonical program `A252169.P14682295271147615884` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252169 has offset 1).

The definition of A252169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252169.P14682295271147615884

`floor((n+1)*sqrt(π*ϕ))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252169

/-- `floor((n+1)*sqrt(π*ϕ))` -/
def P14682295271147615884.Spec : Prop :=
  ∀ n, P14682295271147615884.a n = A252169 (n + 1)

theorem P14682295271147615884.correct : P14682295271147615884.Spec := by
  intro n
  simp only [A252169, Nat.add_sub_cancel]

end A252169

/-! ## A252169.P4570758746715686767

`A057353(3*(n+1))%A160162(n+3)`
-/

namespace A252169.P4570758746715686767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057353 (3 * (n + 1))) (A160162 (n + 3))

end

end A252169.P4570758746715686767

namespace A252169

/-- `A057353(3*(n+1))%A160162(n+3)` -/
def P4570758746715686767.Spec : Prop :=
  ∀ n, P4570758746715686767.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P17696850147119620557

`∑[A020639((n+2)*(A133263(n+6)+4))]`
-/

namespace A252169.P17696850147119620557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * (A133263 (n + 6) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252169.P17696850147119620557

namespace A252169

/-- `∑[A020639((n+2)*(A133263(n+6)+4))]` -/
def P17696850147119620557.Spec : Prop :=
  ∀ n, P17696850147119620557.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P13274370047389726720

`Δ[A130519(3*n+2)]%A336328(n+1)`
-/

namespace A252169.P13274370047389726720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A336328 (n + 1))

end

end A252169.P13274370047389726720

namespace A252169

/-- `Δ[A130519(3*n+2)]%A336328(n+1)` -/
def P13274370047389726720.Spec : Prop :=
  ∀ n, P13274370047389726720.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P11033910856570109426

`∑[∑[A114458(A001318(3*n+1))%2+2]%2+2]`
-/

namespace A252169.P11033910856570109426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114458 (A001318 (3 * n + 1)).toNat) 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252169.P11033910856570109426

namespace A252169

/-- `∑[∑[A114458(A001318(3*n+1))%2+2]%2+2]` -/
def P11033910856570109426.Spec : Prop :=
  ∀ n, P11033910856570109426.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P5581739341283669512

`A248375(2*(n+1))%A111458(A018819(n))`
-/

namespace A252169.P5581739341283669512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248375 (2 * (n + 1))) (A111458 (A018819 n).toNat)

end

end A252169.P5581739341283669512

namespace A252169

/-- `A248375(2*(n+1))%A111458(A018819(n))` -/
def P5581739341283669512.Spec : Prop :=
  ∀ n, P5581739341283669512.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P15411674680153169551

`A057353(3*(n+1))%A003628(A119565(n))`
-/

namespace A252169.P15411674680153169551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057353 (3 * (n + 1))) (A003628 (A119565 n).toNat)

end

end A252169.P15411674680153169551

namespace A252169

/-- `A057353(3*(n+1))%A003628(A119565(n))` -/
def P15411674680153169551.Spec : Prop :=
  ∀ n, P15411674680153169551.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P5114099936437354529

`A248375(2*(n+1))+A010057(A100916(n+1))`
-/

namespace A252169.P5114099936437354529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (2 * (n + 1)) + A010057 (A100916 (n + 1)).toNat

end

end A252169.P5114099936437354529

namespace A252169

/-- `A248375(2*(n+1))+A010057(A100916(n+1))` -/
def P5114099936437354529.Spec : Prop :=
  ∀ n, P5114099936437354529.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P3793745168470807149

`A248375(2*(n+1))+A010057(A256970(n+1))`
-/

namespace A252169.P3793745168470807149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (2 * (n + 1)) + A010057 (A256970 (n + 1)).toNat

end

end A252169.P3793745168470807149

namespace A252169

/-- `A248375(2*(n+1))+A010057(A256970(n+1))` -/
def P3793745168470807149.Spec : Prop :=
  ∀ n, P3793745168470807149.a n = A252169 (n + 1)

end A252169

/-!
# A252170: Smallest primitive prime factor of 12^n-1.

The programs for A252170, there is no canonical definition to state claims against.
-/

/-! ## A252170.P3971831406902977277

`A020639(record[lcm(12, a(n-1))+1])` with `a(0)=11, a(1)=0`
-/

namespace A252170.P3971831406902977277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 0] fun n f1 =>
  Nat.lcm 12 (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A252170.P3971831406902977277

/-!
# A252171: Number of length n+2 0..2 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252171, there is no canonical definition to state claims against.
-/

/-! ## A252171.P9601012239921965970

`A252177(∑[n+2])`
-/

namespace A252171.P9601012239921965970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252171.P9601012239921965970

/-! ## A252171.P17995930084529353409

`or(1, A252177(A000096(n+1)))`
-/

namespace A252171.P17995930084529353409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252177 (A000096 (n + 1)).toNat)

end

end A252171.P17995930084529353409

/-! ## A252171.P13189125730315133074

`A252177(A000096(n+1))%A000108(n+6)`
-/

namespace A252171.P13189125730315133074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252177 (A000096 (n + 1)).toNat) (A000108 (n + 6))

end

end A252171.P13189125730315133074

/-! ## A252171.P11365214755753851075

`A007318(C(2, n))*A252177(A000096(n+1))`
-/

namespace A252171.P11365214755753851075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252177 (A000096 (n + 1)).toNat

end

end A252171.P11365214755753851075

/-! ## A252171.P7908596679034143507

`A007318(A007318(2*n))*A252177(A000096(n+1))`
-/

namespace A252171.P7908596679034143507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A252177 (A000096 (n + 1)).toNat

end

end A252171.P7908596679034143507

/-!
# A252172: Number of length n+2 0..3 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252172, there is no canonical definition to state claims against.
-/

/-! ## A252172.P17259815924124692744

`A252177(∑[n+3]+1)`
-/

namespace A252172.P17259815924124692744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252172.P17259815924124692744

/-! ## A252172.P7503759142833796964

`lcm(2, A252177(Δ[A008778(n)]))`
-/

namespace A252172.P7503759142833796964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252177 (f1 (n + 1) - f1 n).toNat)

end

end A252172.P7503759142833796964

/-! ## A252172.P4482868830854428326

`and(-2, A252177(A052905(n)+3))`
-/

namespace A252172.P4482868830854428326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A252177 (A052905 n + 3).toNat)

end

end A252172.P4482868830854428326

/-! ## A252172.P17026436104834422597

`A007318(C(2, n))*A252177(A052905(n)+3)`
-/

namespace A252172.P17026436104834422597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252177 (A052905 n + 3).toNat

end

end A252172.P17026436104834422597

/-! ## A252172.P3433734968244440270

`A252177(A052905(n)+3)+A072629(2*(n+1))`
-/

namespace A252172.P3433734968244440270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A052905 n + 3).toNat + A072629 (2 * (n + 1))

end

end A252172.P3433734968244440270

/-!
# A252173: Number of length n+2 0..4 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252173, there is no canonical definition to state claims against.
-/

/-! ## A252173.P3330429093520366542

`A252177(C(n+5, 2)-3)`
-/

namespace A252173.P3330429093520366542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (Nat.choose (n + 5) 2 - 3)

end

end A252173.P3330429093520366542

/-! ## A252173.P12989834615103925292

`A252177(∑[n+5]-(n-2))`
-/

namespace A252173.P12989834615103925292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A252173.P12989834615103925292

/-! ## A252173.P11654160501469725390

`or(1, A252177(A055998(n+2)))`
-/

namespace A252173.P11654160501469725390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A252177 (A055998 (n + 2)).toNat)

end

end A252173.P11654160501469725390

/-! ## A252173.P13074800852996011473

`A297246(n+1)+A252177(A027379(n+2))`
-/

namespace A252173.P13074800852996011473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (n + 1) + A252177 (A027379 (n + 2)).toNat

end

end A252173.P13074800852996011473

/-! ## A252173.P13534367668502885288

`A007318(C(2, n²))*A252177(A055998(n+2))`
-/

namespace A252173.P13534367668502885288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n ^ 2)) * A252177 (A055998 (n + 2)).toNat

end

end A252173.P13534367668502885288

/-!
# A252174: Number of length n+2 0..5 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252174, there is no canonical definition to state claims against.
-/

/-! ## A252174.P13783332940298754195

`A252177(Δ[A264443(n)])`
-/

namespace A252174.P13783332940298754195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (f1 (n + 1) - f1 n).toNat

end

end A252174.P13783332940298754195

/-! ## A252174.P11315933199566489010

`A252177(A056115(n)+11)`
-/

namespace A252174.P11315933199566489010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A056115 n + 11).toNat

end

end A252174.P11315933199566489010

/-! ## A252174.P9526578685560995292

`A252177(eq[2, A092921(n)])`
-/

namespace A252174.P9526578685560995292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252174.P9526578685560995292

/-! ## A252174.P2710710870290200422

`A252177(eq[3, A152157(n)])`
-/

namespace A252174.P2710710870290200422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252174.P2710710870290200422

/-! ## A252174.P12080934165688979128

`A252177(eq[4, A193592(n)])`
-/

namespace A252174.P12080934165688979128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252174.P12080934165688979128

/-!
# A252175: Number of length n+2 0..6 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252175, there is no canonical definition to state claims against.
-/

/-! ## A252175.P13468043924350237139

`A252177(A052905(n+3))`
-/

namespace A252175.P13468043924350237139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A052905 (n + 3)).toNat

end

end A252175.P13468043924350237139

/-! ## A252175.P16591186343891242776

`A252177(A056119(n)+16)`
-/

namespace A252175.P16591186343891242776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A056119 n + 16).toNat

end

end A252175.P16591186343891242776

/-! ## A252175.P6338312771834988971

`A252177(eq[3, A219347(n)])`
-/

namespace A252175.P6338312771834988971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252175.P6338312771834988971

/-! ## A252175.P281493660757816485

`A252177(eq[5, A193592(n)])`
-/

namespace A252175.P281493660757816485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252175.P281493660757816485

/-! ## A252175.P624823955850163578

`A252177(eq[8, A258709(n)])`
-/

namespace A252175.P624823955850163578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252175.P624823955850163578

/-!
# A252176: Number of length n+2 0..7 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252176, there is no canonical definition to state claims against.
-/

/-! ## A252176.P12796456527917713855

`A252177(A055999(n+4))`
-/

namespace A252176.P12796456527917713855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A055999 (n + 4)).toNat

end

end A252176.P12796456527917713855

/-! ## A252176.P129834989751596001

`A252177(eq[4, A219347(n)])`
-/

namespace A252176.P129834989751596001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252176.P129834989751596001

/-! ## A252176.P13674916608298187751

`A252177(eq[6, A193592(n)])`
-/

namespace A252176.P13674916608298187751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252176.P13674916608298187751

/-! ## A252176.P617546573790332742

`A252177(Δ[A023551(n+2)])`
-/

namespace A252176.P617546573790332742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (f1 (n + 1) - f1 n).toNat

end

end A252176.P617546573790332742

/-! ## A252176.P11639238040256218384

`A252177(A046691(n+5)-2)`
-/

namespace A252176.P11639238040256218384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A046691 (n + 5) - 2).toNat

end

end A252176.P11639238040256218384

/-!
# A252178: Number of length 2+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252178, the canonical program `A252178.P5229348059605843036` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252178 has offset 1).

The definition of A252178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252178.P5229348059605843036

`(n+1)^4/6+7*(n+1)^3/3+29*(n+1)²/6+11*(n+1)/3+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A252178

/-- `(n+1)^4/6+7*(n+1)^3/3+29*(n+1)²/6+11*(n+1)/3+1` -/
def P5229348059605843036.Spec : Prop :=
  ∀ n, P5229348059605843036.a n = (A252178 (n + 1) : ℚ)

end A252178

/-! ## A252178.P2262387318187975275

`A252177(∑[n+1]+2)`
-/

namespace A252178.P2262387318187975275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252178.P2262387318187975275

namespace A252178

/-- `A252177(∑[n+1]+2)` -/
def P2262387318187975275.Spec : Prop :=
  ∀ n, P2262387318187975275.a n = A252178 (n + 1)

end A252178

/-!
# A252179: Number of length 3+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252179, there is no canonical definition to state claims against.
-/

/-! ## A252179.P15570741379834360938

`A252177(∑[n+2]+4)`
-/

namespace A252179.P15570741379834360938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252179.P15570741379834360938

/-! ## A252179.P17034150319073181141

`record[A252177(A152950(n+1))]`
-/

namespace A252179.P17034150319073181141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A152950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252179.P17034150319073181141

/-! ## A252179.P10380583900406505518

`record[A252177(A000124(n)+2)]`
-/

namespace A252179.P10380583900406505518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252179.P10380583900406505518

/-! ## A252179.P12682880367265124004

`record[A252177(A000217(n)+3)]`
-/

namespace A252179.P12682880367265124004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252179.P12682880367265124004

/-! ## A252179.P16118366672983516220

`A252177(A167614(n+1))+char[17]`
-/

namespace A252179.P16118366672983516220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252179.P16118366672983516220

/-!
# A252180: Number of length 4+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252180, there is no canonical definition to state claims against.
-/

/-! ## A252180.P16087360001085657545

`A252177(∑[n+3]+7)`
-/

namespace A252180.P16087360001085657545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252180.P16087360001085657545

/-! ## A252180.P1347182771913483249

`and(-3, A252177(A167614(n+2)+1))`
-/

namespace A252180.P1347182771913483249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A252177 (A167614 (n + 2) + 1).toNat)

end

end A252180.P1347182771913483249

/-! ## A252180.P14071572790433021116

`A007318(C(n, 2))*A252177(A167614(n+2)+1)`
-/

namespace A252180.P14071572790433021116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252177 (A167614 (n + 2) + 1).toNat

end

end A252180.P14071572790433021116

/-! ## A252180.P5715908869691373081

`A252177(A167614(n+2)+1)^A007318(floor(n/4))`
-/

namespace A252180.P5715908869691373081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252177 (A167614 (n + 2) + 1).toNat : ℚ) ^ (A007318 ⌊(n : ℚ) / 4⌋.toNat : ℤ)

end

end A252180.P5715908869691373081

/-!
# A252181: Number of length 5+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252181, there is no canonical definition to state claims against.
-/

/-! ## A252181.P13937914198802194724

`A252177(∑[n+4]+11)`
-/

namespace A252181.P13937914198802194724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252181.P13937914198802194724

/-! ## A252181.P14505727471900642865

`((-1)^n)²*A252177(A167499(n+3))`
-/

namespace A252181.P14505727471900642865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A252177 (A167499 (n + 3)).toNat

end

end A252181.P14505727471900642865

/-! ## A252181.P16258709959217388671

`A252177(A167499(n+3))%A098706(n+3)`
-/

namespace A252181.P16258709959217388671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252177 (A167499 (n + 3)).toNat) (A098706 (n + 3))

end

end A252181.P16258709959217388671

/-! ## A252181.P14068760694305393477

`A252177(A167499(n+3))+char[A017365(n+1)]`
-/

namespace A252181.P14068760694305393477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A252181.P14068760694305393477

/-! ## A252181.P4554911744693396741

`A252177(A167499(n+3))+A102683(A001497(n))`
-/

namespace A252181.P4554911744693396741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A167499 (n + 3)).toNat + A102683 (A001497 n).toNat

end

end A252181.P4554911744693396741

/-!
# A252182: Number of length 6+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252182, there is no canonical definition to state claims against.
-/

/-! ## A252182.P3368242443371760993

`A252177(A056115(n)+21)`
-/

namespace A252182.P3368242443371760993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A056115 n + 21).toNat

end

end A252182.P3368242443371760993

/-! ## A252182.P134940379066616077

`A252177(A167499(n+4)+1)`
-/

namespace A252182.P134940379066616077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A167499 (n + 4) + 1).toNat

end

end A252182.P134940379066616077

/-! ## A252182.P17170369811675721576

`A252177(A167614(n+4)+3)`
-/

namespace A252182.P17170369811675721576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A167614 (n + 4) + 3).toNat

end

end A252182.P17170369811675721576

/-! ## A252182.P7863341601719002062

`A252177(A000217(n+5)+6)`
-/

namespace A252182.P7863341601719002062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A000217 (n + 5) + 6).toNat

end

end A252182.P7863341601719002062

/-! ## A252182.P16163633140986254711

`A252177(A052905(n+2)+11)`
-/

namespace A252182.P16163633140986254711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A052905 (n + 2) + 11).toNat

end

end A252182.P16163633140986254711

/-!
# A252183: Number of length 7+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252183, there is no canonical definition to state claims against.
-/

/-! ## A252183.P3286297731180610828

`A252177(∑[n+6]+22)`
-/

namespace A252183.P3286297731180610828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A252183.P3286297731180610828

/-!
# A252184: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252184, there is no canonical definition to state claims against.
-/

/-! ## A252184.P18394841675108308870

`A252192(∑[4*n]+1)`
-/

namespace A252184.P18394841675108308870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252184.P18394841675108308870

/-! ## A252184.P5425386410029844233

`and(-1, A252192(A001844(n)))`
-/

namespace A252184.P5425386410029844233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252192 (A001844 n).toNat)

end

end A252184.P5425386410029844233

/-! ## A252184.P1144303305572129098

`record[A003982(n)*A252192(n+1)]`
-/

namespace A252184.P1144303305572129098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P1144303305572129098

/-! ## A252184.P4872882756924127579

`record[gcd(A037012(n), A252192(n+1))]`
-/

namespace A252184.P4872882756924127579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A252192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P4872882756924127579

/-! ## A252184.P15169331516517576541

`record[root(A252192(n+1), A059897(n+1))]`
-/

namespace A252184.P15169331516517576541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252192 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P15169331516517576541

/-!
# A252185: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252185, there is no canonical definition to state claims against.
-/

/-! ## A252185.P6140654310642630569

`A252192(∑[n]+1)`
-/

namespace A252185.P6140654310642630569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252185.P6140654310642630569

/-! ## A252185.P1091279729751167877

`record[A252192(A106247(n))]`
-/

namespace A252185.P1091279729751167877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P1091279729751167877

/-! ## A252185.P11564164295137931371

`record[A252192(A056534(n+1))]`
-/

namespace A252185.P11564164295137931371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P11564164295137931371

/-! ## A252185.P2171459294967619891

`record[A252192(A056536(n+1))]`
-/

namespace A252185.P2171459294967619891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P2171459294967619891

/-! ## A252185.P15793255143317073399

`record[A252192(A114091(n+1))]`
-/

namespace A252185.P15793255143317073399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P15793255143317073399

/-!
# A252186: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252186, there is no canonical definition to state claims against.
-/

/-! ## A252186.P11298497074665379770

`A252192(∑[n+1]+2)`
-/

namespace A252186.P11298497074665379770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252186.P11298497074665379770

/-! ## A252186.P13565690971748321562

`lcm(2, A252192(A133263(n+1)))`
-/

namespace A252186.P13565690971748321562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252192 (A133263 (n + 1)).toNat)

end

end A252186.P13565690971748321562

/-! ## A252186.P12454505405928109838

`record[A167374(n)*A252192(n+3)]`
-/

namespace A252186.P12454505405928109838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A252192 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252186.P12454505405928109838

/-! ## A252186.P9001078499108912666

`A007318(C(2, n))*A252192(A133263(n+1))`
-/

namespace A252186.P9001078499108912666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252192 (A133263 (n + 1)).toNat

end

end A252186.P9001078499108912666

/-! ## A252186.P308675414487196460

`A252192(A133263(n+1))+A000045(C(n, 64))`
-/

namespace A252186.P308675414487196460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A133263 (n + 1)).toNat + A000045 (Nat.choose n 64)

end

end A252186.P308675414487196460

/-!
# A252187: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252187, there is no canonical definition to state claims against.
-/

/-! ## A252187.P9544760184910117479

`A252192(∑[n+2]+4)`
-/

namespace A252187.P9544760184910117479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252187.P9544760184910117479

/-! ## A252187.P11499247018858095916

`or(char[2], A252192(A167614(n+1)))`
-/

namespace A252187.P11499247018858095916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252192 (A167614 (n + 1)).toNat)

end

end A252187.P11499247018858095916

/-! ## A252187.P411853170448317580

`or(char[2], A252192(A000217(n+2)+3))`
-/

namespace A252187.P411853170448317580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252192 (A000217 (n + 2) + 3).toNat)

end

end A252187.P411853170448317580

/-! ## A252187.P16645975902487909011

`record[A252192(n+4)/A093375(n+1)]`
-/

namespace A252187.P16645975902487909011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252192 (n + 4) : ℚ) / (A093375 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252187.P16645975902487909011

/-! ## A252187.P1852666972008236469

`A015198(n)*A252192(A167614(n+1))`
-/

namespace A252187.P1852666972008236469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A252192 (A167614 (n + 1)).toNat

end

end A252187.P1852666972008236469

/-!
# A252188: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0, 1, 3, 6, or 7.

The programs for A252188, there is no canonical definition to state claims against.
-/

/-! ## A252188.P9833127568023359725

`A252192(∑[n+3]+7)`
-/

namespace A252188.P9833127568023359725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252188.P9833127568023359725

/-! ## A252188.P10322356609398030441

`A252192(A052905(n)+9)+char[45]`
-/

namespace A252188.P10322356609398030441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252188.P10322356609398030441

/-! ## A252188.P702915343837208287

`or(char[3], A252192(A167614(n+2)+1))`
-/

namespace A252188.P702915343837208287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252192 (A167614 (n + 2) + 1).toNat)

end

end A252188.P702915343837208287

/-! ## A252188.P14064744459737694633

`or(char[3], A252192(A000217(n+3)+4))`
-/

namespace A252188.P14064744459737694633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252192 (A000217 (n + 3) + 4).toNat)

end

end A252188.P14064744459737694633

/-! ## A252188.P10407335964648919044

`A007318(C(2, n))*A252192(A000217(n+3)+4)`
-/

namespace A252188.P10407335964648919044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252192 (A000217 (n + 3) + 4).toNat

end

end A252188.P10407335964648919044

/-!
# A252189: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252189, there is no canonical definition to state claims against.
-/

/-! ## A252189.P16407668387272311262

`A252192(∑[n+4]+11)`
-/

namespace A252189.P16407668387272311262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252189.P16407668387272311262

/-!
# A252190: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252190, there is no canonical definition to state claims against.
-/

/-! ## A252190.P7841063401973192740

`A252192(∑[n+5]+16)`
-/

namespace A252190.P7841063401973192740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252190.P7841063401973192740

/-!
# A252191: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252191, there is no canonical definition to state claims against.
-/

/-! ## A252191.P10116816467182597015

`A252192(A167487(n+5))`
-/

namespace A252191.P10116816467182597015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A167487 (n + 5)).toNat

end

end A252191.P10116816467182597015

/-! ## A252191.P5566324673651610153

`A252192(A056119(n)+28)`
-/

namespace A252191.P5566324673651610153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A056119 n + 28).toNat

end

end A252191.P5566324673651610153

/-! ## A252191.P1174577835286266404

`A252192(A167499(n+5)+2)`
-/

namespace A252191.P1174577835286266404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A167499 (n + 5) + 2).toNat

end

end A252191.P1174577835286266404

/-! ## A252191.P16563842240373097362

`A252192(A000124(n+6)+6)`
-/

namespace A252191.P16563842240373097362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A000124 (n + 6) + 6).toNat

end

end A252191.P16563842240373097362

/-! ## A252191.P7768287014210058877

`A252192(A000217(n+6)+7)`
-/

namespace A252191.P7768287014210058877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A000217 (n + 6) + 7).toNat

end

end A252191.P7768287014210058877

/-!
# A252193: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252193, there is no canonical definition to state claims against.
-/

/-! ## A252193.P14330354396787054971

`A252201(∑[4*n]+1)`
-/

namespace A252193.P14330354396787054971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252193.P14330354396787054971

/-! ## A252193.P4674118714396438983

`record[gcd(A114327(n), A252201(n+1))]`
-/

namespace A252193.P4674118714396438983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252201 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252193.P4674118714396438983

/-! ## A252193.P9481543319054256988

`A252201(A001844(n))+A011738(n)`
-/

namespace A252193.P9481543319054256988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A001844 n).toNat + A011738 n

end

end A252193.P9481543319054256988

/-! ## A252193.P8403956299001328345

`A252201(A001844(n))+A025439(n)`
-/

namespace A252193.P8403956299001328345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A001844 n).toNat + A025439 n

end

end A252193.P8403956299001328345

/-! ## A252193.P18001544288542338282

`A014963(gcd(n, n+1))*A252201(A001844(n))`
-/

namespace A252193.P18001544288542338282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A252201 (A001844 n).toNat

end

end A252193.P18001544288542338282

/-!
# A252194: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252194, there is no canonical definition to state claims against.
-/

/-! ## A252194.P10442372859839185442

`A252201(∑[n]+1)`
-/

namespace A252194.P10442372859839185442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252194.P10442372859839185442

/-! ## A252194.P6818257094327628133

`record[A010054(n)*A252201(n+1)]`
-/

namespace A252194.P6818257094327628133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P6818257094327628133

/-! ## A252194.P11892548635568430831

`record[A252201(n+1)/A056940(n)]`
-/

namespace A252194.P11892548635568430831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℚ) / (A056940 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P11892548635568430831

/-! ## A252194.P7844925003073340138

`record[A252201(n+1)/A180960(n)]`
-/

namespace A252194.P7844925003073340138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℚ) / (A180960 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P7844925003073340138

/-! ## A252194.P10712180176736933267

`record[root(A252201(n+1), A008288(n))]`
-/

namespace A252194.P10712180176736933267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P10712180176736933267

/-!
# A252195: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252195, there is no canonical definition to state claims against.
-/

/-! ## A252195.P1676115675377008532

`A252201(∑[n+1]+2)`
-/

namespace A252195.P1676115675377008532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252195.P1676115675377008532

/-! ## A252195.P1140803475883287289

`or(A000007(n), A252201(A000096(n+1)))`
-/

namespace A252195.P1140803475883287289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252201 (A000096 (n + 1)).toNat)

end

end A252195.P1140803475883287289

/-! ## A252195.P17311652876265614384

`A252201(A000096(n+1))+A000007(n+1)`
-/

namespace A252195.P17311652876265614384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A252195.P17311652876265614384

/-! ## A252195.P3590647780234529285

`A054977(n+1)*A252201(A000096(n+1))`
-/

namespace A252195.P3590647780234529285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A252201 (A000096 (n + 1)).toNat

end

end A252195.P3590647780234529285

/-! ## A252195.P6305307599998119278

`lcm(A008836(n+1), A252201(A000096(n+1)))`
-/

namespace A252195.P6305307599998119278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A252201 (A000096 (n + 1)).toNat)

end

end A252195.P6305307599998119278

/-!
# A252196: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252196, there is no canonical definition to state claims against.
-/

/-! ## A252196.P8441766647063918692

`A252201(∑[n+2]+4)`
-/

namespace A252196.P8441766647063918692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252196.P8441766647063918692

/-! ## A252196.P1074677593038004058

`A252201(A167614(n+1))+A185284(n)`
-/

namespace A252196.P1074677593038004058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A167614 (n + 1)).toNat + A185284 n

end

end A252196.P1074677593038004058

/-! ## A252196.P10478424101965486104

`or(A084904(n), A252201(A167614(n+1)))`
-/

namespace A252196.P10478424101965486104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084904 n) (A252201 (A167614 (n + 1)).toNat)

end

end A252196.P10478424101965486104

/-! ## A252196.P1164732118144572203

`A252201(A000124(n+2)+2)+A008683(9*(n+1))`
-/

namespace A252196.P1164732118144572203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A000124 (n + 2) + 2).toNat + A008683 (9 * (n + 1))

end

end A252196.P1164732118144572203

/-! ## A252196.P6629505435462728220

`A014963(C(n+5, 3))*A252201(A000124(n+2)+2)`
-/

namespace A252196.P6629505435462728220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 3) * A252201 (A000124 (n + 2) + 2).toNat

end

end A252196.P6629505435462728220

/-!
# A252197: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252197, there is no canonical definition to state claims against.
-/

/-! ## A252197.P15588624478778920875

`A252201(∑[n+3]+7)`
-/

namespace A252197.P15588624478778920875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252197.P15588624478778920875

/-! ## A252197.P11231927624093341750

`A264668(n)+A252201(A055999(n)+10)`
-/

namespace A252197.P11231927624093341750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A252201 (A055999 n + 10).toNat

end

end A252197.P11231927624093341750

/-! ## A252197.P726208983543847208

`A252201(A055999(n)+10)+A000007(n+6)`
-/

namespace A252197.P726208983543847208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A055999 n + 10).toNat + A000007 (n + 6)

end

end A252197.P726208983543847208

/-! ## A252197.P10195866652905513204

`A007318(C(3, n))*A252201(A055999(n)+10)`
-/

namespace A252197.P10195866652905513204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A252201 (A055999 n + 10).toNat

end

end A252197.P10195866652905513204

/-! ## A252197.P2665300412598074995

`A007318(A000217(n))*A252201(A055999(n)+10)`
-/

namespace A252197.P2665300412598074995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A252201 (A055999 n + 10).toNat

end

end A252197.P2665300412598074995

/-!
# A252198: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252198, there is no canonical definition to state claims against.
-/

/-! ## A252198.P3695076914418163416

`A252201(A374005(n+1))`
-/

namespace A252198.P3695076914418163416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374005 (n + 1)).toNat

end

end A252198.P3695076914418163416

/-! ## A252198.P4638422942676895089

`A252201(A167499(n+3))`
-/

namespace A252198.P4638422942676895089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A167499 (n + 3)).toNat

end

end A252198.P4638422942676895089

/-! ## A252198.P7280247732719368337

`A252201(A027379(n+2)+8)`
-/

namespace A252198.P7280247732719368337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A027379 (n + 2) + 8).toNat

end

end A252198.P7280247732719368337

/-! ## A252198.P15454466176070511351

`A252201(A052905(n+3)-(2*n+1))`
-/

namespace A252198.P15454466176070511351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A252198.P15454466176070511351

/-! ## A252198.P15605157578066856136

`A252201(A167614(n+1)+2*n+9)`
-/

namespace A252198.P15605157578066856136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A167614 (n + 1) + (2 * n + 9 : ℤ)).toNat

end

end A252198.P15605157578066856136

/-!
# A252199: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252199, there is no canonical definition to state claims against.
-/

/-! ## A252199.P7784643302795167961

`A252201(A374007(n+1))`
-/

namespace A252199.P7784643302795167961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374007 (n + 1)).toNat

end

end A252199.P7784643302795167961

/-! ## A252199.P9096698899416996352

`A252201(A167499(n+4)+1)`
-/

namespace A252199.P9096698899416996352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A167499 (n + 4) + 1).toNat

end

end A252199.P9096698899416996352

/-! ## A252199.P7619627645800036825

`A252201(A000124(n+5)+5)`
-/

namespace A252199.P7619627645800036825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A000124 (n + 5) + 5).toNat

end

end A252199.P7619627645800036825

/-! ## A252199.P5412329066928502779

`A252201(A000217(n+5)+6)`
-/

namespace A252199.P5412329066928502779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A000217 (n + 5) + 6).toNat

end

end A252199.P5412329066928502779

/-! ## A252199.P14082488982172596421

`A252201(A055998(n+3)+9)`
-/

namespace A252199.P14082488982172596421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A055998 (n + 3) + 9).toNat

end

end A252199.P14082488982172596421

