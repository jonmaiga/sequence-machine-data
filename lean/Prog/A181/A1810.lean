import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A181000: T(n,k)=number of nXk binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an odd number of 1s.

The programs for A181000, there is no canonical definition to state claims against.
-/

/-! ## A181000.P11987672948310095467

`char[∑[4*n]]*A275723(2^floor(n/3))`
-/

namespace A181000.P11987672948310095467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A275723 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A181000.P11987672948310095467

/-! ## A181000.P12791507475132881662

`char[∑[4*n]]*A068695(∏[2-n²%3]-1)`
-/

namespace A181000.P12791507475132881662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A068695 (∏ j ∈ Finset.range (n + 1), f3 j - 1).toNat

end

end A181000.P12791507475132881662

/-! ## A181000.P17133627502208855245

`A051585(A036491(n+2)+2)`
-/

namespace A181000.P17133627502208855245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051585 (A036491 (n + 2) + 2).toNat

end

end A181000.P17133627502208855245

/-! ## A181000.P11994578152712355933

`A363920(n)%A204120(n+1)`
-/

namespace A181000.P11994578152712355933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363920 n) (A204120 (n + 1))

end

end A181000.P11994578152712355933

/-! ## A181000.P1195927231769261036

`A133781(n+1)%A204118(n+1)`
-/

namespace A181000.P1195927231769261036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133781 (n + 1)) (A204118 (n + 1))

end

end A181000.P1195927231769261036

/-!
# A181001: Number of (n+2)Xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an odd number of 1s.

The programs for A181001, there is no canonical definition to state claims against.
-/

/-! ## A181001.P11976800593542310355

`A181000(∑[4*(n+1)])`
-/

namespace A181001.P11976800593542310355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181001.P11976800593542310355

/-! ## A181001.P3380766756974662862

`A181000(A061925(2*n+3))+A178780(n)`
-/

namespace A181001.P3380766756974662862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A061925 (2 * n + 3)).toNat + A178780 n

end

end A181001.P3380766756974662862

/-! ## A181001.P12420137038934664513

`A326523(n)+A181000(A061925(2*n+3))`
-/

namespace A181001.P12420137038934664513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n + A181000 (A061925 (2 * n + 3)).toNat

end

end A181001.P12420137038934664513

/-! ## A181001.P4792308196723559094

`A235924(n+1)+A181000(A061925(2*n+3))`
-/

namespace A181001.P4792308196723559094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235924 (n + 1) + A181000 (A061925 (2 * n + 3)).toNat

end

end A181001.P4792308196723559094

/-! ## A181001.P745752024475712073

`A365138(n+1)+A181000(A061925(2*n+3))`
-/

namespace A181001.P745752024475712073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365138 (n + 1) + A181000 (A061925 (2 * n + 3)).toNat

end

end A181001.P745752024475712073

/-!
# A181002: Number of (n+4)Xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an odd number of 1s.

The programs for A181002, there is no canonical definition to state claims against.
-/

/-! ## A181002.P13961817451377303733

`A181000(A090288(n+1)+1)`
-/

namespace A181002.P13961817451377303733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A090288 (n + 1) + 1).toNat

end

end A181002.P13961817451377303733

/-! ## A181002.P2183897956669056174

`A181000(A074148(2*(n+2))-1)`
-/

namespace A181002.P2183897956669056174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A074148 (2 * (n + 2)) - 1).toNat

end

end A181002.P2183897956669056174

/-! ## A181002.P6375250504597335753

`A181000(A000124(2*(n+2))+n)`
-/

namespace A181002.P6375250504597335753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A181002.P6375250504597335753

/-! ## A181002.P4735893098432408934

`A181000(A000384(n+3)-n)`
-/

namespace A181002.P4735893098432408934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (A000384 (n + 3) - (n : ℤ)).toNat

end

end A181002.P4735893098432408934

/-!
# A181003: Number of n X n binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1s.

The programs for A181003, there is no canonical definition to state claims against.
-/

/-! ## A181003.P11659261466547924758

`A181004(∑[4*n]+1)`
-/

namespace A181003.P11659261466547924758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181003.P11659261466547924758

/-! ## A181003.P15448775893257769039

`A181004(A001844(n))+char[10]`
-/

namespace A181003.P15448775893257769039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181003.P15448775893257769039

/-! ## A181003.P11998453239452149323

`A047996(n)*A181004(A001844(n))`
-/

namespace A181003.P11998453239452149323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A181004 (A001844 n).toNat

end

end A181003.P11998453239452149323

/-! ## A181003.P15043481371800427106

`gcd(A076489(n), A181004(A001844(n)))`
-/

namespace A181003.P15043481371800427106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076489 n) (A181004 (A001844 n).toNat)

end

end A181003.P15043481371800427106

/-! ## A181003.P11131276626453689163

`A007318(∑[n])*A181004(A001844(n))`
-/

namespace A181003.P11131276626453689163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A181004 (A001844 n).toNat

end

end A181003.P11131276626453689163

/-!
# A181004: T(n,k) = number of n X k binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1's.

The programs for A181004, there is no canonical definition to state claims against.
-/

/-! ## A181004.P16693710853740320364

`A035327(A047996(n)%A241731(n))`
-/

namespace A181004.P16693710853740320364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A047996 n) (A241731 n)).toNat

end

end A181004.P16693710853740320364

/-! ## A181004.P12166782489317288018

`A216191(A216218(n)*A343870(n+1))`
-/

namespace A181004.P12166782489317288018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216191 (A216218 n * A343870 (n + 1)).toNat

end

end A181004.P12166782489317288018

/-! ## A181004.P1996257242347812989

`A098578(A155797(n))%4`
-/

namespace A181004.P1996257242347812989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098578 (A155797 n).toNat) 4

end

end A181004.P1996257242347812989

/-! ## A181004.P13148345554786932619

`C(A089840(A059117(n)), ∑{e}[n+1, #])`
-/

namespace A181004.P13148345554786932619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089840 (A059117 n).toNat).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A181004.P13148345554786932619

/-! ## A181004.P11821814694572966391

`C(A004198(n), A102395(A102377(n)))`
-/

namespace A181004.P11821814694572966391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004198 n).toNat (A102395 (A102377 n).toNat).toNat

end

end A181004.P11821814694572966391

/-!
# A181005: Number of (n+1)xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1s.

The programs for A181005, there is no canonical definition to state claims against.
-/

/-! ## A181005.P5996977202547650966

`A181004(2*(n+1)²)`
-/

namespace A181005.P5996977202547650966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (2 * (n + 1) ^ 2)

end

end A181005.P5996977202547650966

/-! ## A181005.P458554945063535084

`A181004(A001105(n+1))+A180995(n+1)`
-/

namespace A181005.P458554945063535084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A001105 (n + 1)).toNat + A180995 (n + 1)

end

end A181005.P458554945063535084

/-! ## A181005.P8997960796593693461

`A181029(n+1)+A181004(A001105(n+1))`
-/

namespace A181005.P8997960796593693461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181029 (n + 1) + A181004 (A001105 (n + 1)).toNat

end

end A181005.P8997960796593693461

/-! ## A181005.P8265975588659866758

`A181004(A058331(n+1))%A069009(3*n)`
-/

namespace A181005.P8265975588659866758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181004 (A058331 (n + 1)).toNat) (A069009 (3 * n))

end

end A181005.P8265975588659866758

/-! ## A181005.P11897530790769239327

`A181004(3*n+2)+A181004(A058331(n+1))`
-/

namespace A181005.P11897530790769239327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (3 * n + 2) + A181004 (A058331 (n + 1)).toNat

end

end A181005.P11897530790769239327

/-!
# A181006: Number of (n+2)xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1s.

The programs for A181006, there is no canonical definition to state claims against.
-/

/-! ## A181006.P2638319435639517766

`A181004(∑[4*(n+1)])`
-/

namespace A181006.P2638319435639517766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181006.P2638319435639517766

/-! ## A181006.P14072957933897438803

`A181004(A046092(n+1))+A132710(3*(n+1))`
-/

namespace A181006.P14072957933897438803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A046092 (n + 1)).toNat + A132710 (3 * (n + 1))

end

end A181006.P14072957933897438803

/-! ## A181006.P18168261693852867614

`A326016(n+1)+A181004(A007590(2*n+3))`
-/

namespace A181006.P18168261693852867614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (n + 1) + A181004 (A007590 (2 * n + 3)).toNat

end

end A181006.P18168261693852867614

/-!
# A181007: Number of (n+3)xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1s.

The programs for A181007, there is no canonical definition to state claims against.
-/

/-! ## A181007.P15087176018607685734

`A181004((n+1)²+(n+3)²)`
-/

namespace A181007.P15087176018607685734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A181007.P15087176018607685734

/-! ## A181007.P14621706286019238101

`A181004(A074148(2*n+3))%A069009(3*n)`
-/

namespace A181007.P14621706286019238101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181004 (A074148 (2 * n + 3)).toNat) (A069009 (3 * n))

end

end A181007.P14621706286019238101

/-! ## A181007.P6810060346881128345

`A181004(A074148(2*n+3))+A181004(3*n+2)`
-/

namespace A181007.P6810060346881128345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A074148 (2 * n + 3)).toNat + A181004 (3 * n + 2)

end

end A181007.P6810060346881128345

/-!
# A181008: Number of (n+4)xn binary matrices with rows and columns each in strictly increasing order as binary numbers and each row and column having an even number of 1s.

The programs for A181008, there is no canonical definition to state claims against.
-/

/-! ## A181008.P1633519490142732367

`A181004(A090288(n+1)+1)`
-/

namespace A181008.P1633519490142732367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A090288 (n + 1) + 1).toNat

end

end A181008.P1633519490142732367

/-! ## A181008.P4573845911093357700

`A181004(A099776(n+2)-2)`
-/

namespace A181008.P4573845911093357700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A099776 (n + 2) - 2).toNat

end

end A181008.P4573845911093357700

/-! ## A181008.P1093379595613032113

`A181004(A000124(2*(n+2))+n)`
-/

namespace A181008.P1093379595613032113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A181008.P1093379595613032113

/-! ## A181008.P13677007266790616677

`A181004(A000217(2*(n+2))+n+1)`
-/

namespace A181008.P13677007266790616677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181004 (A000217 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A181008.P13677007266790616677

/-!
# A181009: T(n,k)=number of nXk binary matrices with rows and columns each in strictly increasing order as binary numbers and the number of 1s in rows being even and in columns being odd.

The programs for A181009, there is no canonical definition to state claims against.
-/

/-! ## A181009.P7545922607493827819

`round(A165190(n)/A135876(n+3))`
-/

namespace A181009.P7545922607493827819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A165190 n : ℚ) / (A135876 (n + 3) : ℚ))

end

end A181009.P7545922607493827819

/-! ## A181009.P18013097014626582978

`A152148(n)%A136148(A152146(n))`
-/

namespace A181009.P18013097014626582978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152148 n) (A136148 (A152146 n).toNat)

end

end A181009.P18013097014626582978

/-! ## A181009.P7391113838424394074

`A010054(n+4)*A102669(A059515(n))`
-/

namespace A181009.P7391113838424394074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A102669 (A059515 n).toNat

end

end A181009.P7391113838424394074

/-! ## A181009.P17880727865072214102

`C(A325192(n), A259273(A243081(n+3)))`
-/

namespace A181009.P17880727865072214102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325192 n).toNat (A259273 (A243081 (n + 3)).toNat).toNat

end

end A181009.P17880727865072214102

/-! ## A181009.P6777437695467422072

`C(A351742(n), A000118(A324563(n+4)))`
-/

namespace A181009.P6777437695467422072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351742 n).toNat (A000118 (A324563 (n + 4)).toNat).toNat

end

end A181009.P6777437695467422072

/-!
# A181010: Number of n X n binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181010, there is no canonical definition to state claims against.
-/

/-! ## A181010.P4085282056452715209

`A181011(∑[4*n]+1)`
-/

namespace A181010.P4085282056452715209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181010.P4085282056452715209

/-! ## A181010.P3176790790418276732

`A181011(A001844(n))+char[13]`
-/

namespace A181010.P3176790790418276732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181010.P3176790790418276732

/-! ## A181010.P11031818384559434666

`A007318(∑[n])*A181011(A001844(n))`
-/

namespace A181010.P11031818384559434666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A181011 (A001844 n).toNat

end

end A181010.P11031818384559434666

/-! ## A181010.P10102888766419000736

`char[A007318(n)]*A181011(A001844(n))`
-/

namespace A181010.P10102888766419000736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A181011 (A001844 n).toNat

end

end A181010.P10102888766419000736

/-! ## A181010.P5799715778956228786

`A216037(n+2)+A181011(A001844(n))`
-/

namespace A181010.P5799715778956228786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216037 (n + 2) + A181011 (A001844 n).toNat

end

end A181010.P5799715778956228786

/-!
# A181011: T(n,k)=number of nXk binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181011, there is no canonical definition to state claims against.
-/

/-! ## A181011.P14969924272368498220

`A138886(A381474(n+1))`
-/

namespace A181011.P14969924272368498220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138886 (A381474 (n + 1)).toNat

end

end A181011.P14969924272368498220

/-! ## A181011.P12931431405324678722

`A025435(A318024(n+1)+7)`
-/

namespace A181011.P12931431405324678722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A318024 (n + 1) + 7).toNat

end

end A181011.P12931431405324678722

/-! ## A181011.P1982528219499150692

`floor(A334348(n)/2)^A291289(n)`
-/

namespace A181011.P1982528219499150692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A334348 n : ℚ) / 2⌋ : ℚ) ^ (A291289 n : ℤ)

end

end A181011.P1982528219499150692

/-! ## A181011.P2603187005357699797

`A000073(A334348(n))^A000931(n)`
-/

namespace A181011.P2603187005357699797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (A334348 n).toNat : ℚ) ^ (A000931 n : ℤ)

end

end A181011.P2603187005357699797

/-! ## A181011.P1134151838981233621

`A000073(A334348(n))^A187500(n)`
-/

namespace A181011.P1134151838981233621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (A334348 n).toNat : ℚ) ^ (A187500 n : ℤ)

end

end A181011.P1134151838981233621

/-!
# A181012: Number of nX(n+1) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181012, there is no canonical definition to state claims against.
-/

/-! ## A181012.P2453207958257288038

`A181011(2*(n+1)²)`
-/

namespace A181012.P2453207958257288038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (2 * (n + 1) ^ 2)

end

end A181012.P2453207958257288038

/-! ## A181012.P16882276579379003085

`A335278(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A181012.P16882276579379003085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  A335278 (a (n - 1)).toNat

end

end A181012.P16882276579379003085

/-! ## A181012.P14110377260027583399

`A125975(A214459(n))`
-/

namespace A181012.P14110377260027583399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A214459 n).toNat

end

end A181012.P14110377260027583399

/-!
# A181013: Number of nX(n+2) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181013, there is no canonical definition to state claims against.
-/

/-! ## A181013.P11528728966194924563

`A181011(∑[4*(n+1)])`
-/

namespace A181013.P11528728966194924563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181013.P11528728966194924563

/-! ## A181013.P3508266538347979808

`floor(A330297(n)/79)`
-/

namespace A181013.P3508266538347979808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330297 n : ℚ) / 79⌋

end

end A181013.P3508266538347979808

/-! ## A181013.P292585227556287946

`A278014(a(n-1)+n)` with `a(0)=0`
-/

namespace A181013.P292585227556287946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A278014 (a (n - 1) + (n : ℤ)).toNat

end

end A181013.P292585227556287946

/-!
# A181014: Number of nX(n+3) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181014, there is no canonical definition to state claims against.
-/

/-! ## A181014.P5134409695432233420

`A181011(A268581(n)+2)`
-/

namespace A181014.P5134409695432233420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A268581 n + 2).toNat

end

end A181014.P5134409695432233420

/-! ## A181014.P3418714560850956003

`A181011(A054000(n+2)+1)`
-/

namespace A181014.P3418714560850956003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A054000 (n + 2) + 1).toNat

end

end A181014.P3418714560850956003

/-! ## A181014.P12622775747546816355

`A181011(A001105(n+2)-1)`
-/

namespace A181014.P12622775747546816355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A001105 (n + 2) - 1).toNat

end

end A181014.P12622775747546816355

/-! ## A181014.P2484337928719670491

`A181011(2*A002522(n+2))`
-/

namespace A181014.P2484337928719670491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (2 * A002522 (n + 2)).toNat

end

end A181014.P2484337928719670491

/-! ## A181014.P8334895381964357991

`A181011(A097063(2*(n+2))+1)`
-/

namespace A181014.P8334895381964357991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A097063 (2 * (n + 2)) + 1).toNat

end

end A181014.P8334895381964357991

/-!
# A181015: Number of nX(n+4) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181015, there is no canonical definition to state claims against.
-/

/-! ## A181015.P11641626716074132289

`A181011(A090288(n+1)+1)`
-/

namespace A181015.P11641626716074132289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A090288 (n + 1) + 1).toNat

end

end A181015.P11641626716074132289

/-! ## A181015.P14857966835531189366

`A181011(A001844(n+2)-2)`
-/

namespace A181015.P14857966835531189366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A001844 (n + 2) - 2).toNat

end

end A181015.P14857966835531189366

/-! ## A181015.P6864026925458455236

`A181011(A074148(2*(n+2))-1)`
-/

namespace A181015.P6864026925458455236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A074148 (2 * (n + 2)) - 1).toNat

end

end A181015.P6864026925458455236

/-! ## A181015.P425971700534191503

`A181011(A194274(2*(n+2))-1)`
-/

namespace A181015.P425971700534191503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A194274 (2 * (n + 2)) - 1).toNat

end

end A181015.P425971700534191503

/-! ## A181015.P14880180744993435563

`A181011(A000124(2*(n+2))+n)`
-/

namespace A181015.P14880180744993435563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A181015.P14880180744993435563

/-!
# A181016: Number of nX(n+5) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181016, there is no canonical definition to state claims against.
-/

/-! ## A181016.P858114410569549169

`A181011(A268581(n+1)+1)`
-/

namespace A181016.P858114410569549169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A268581 (n + 1) + 1).toNat

end

end A181016.P858114410569549169

/-! ## A181016.P6675071711115809175

`A181011(A014105(n+3)-n)`
-/

namespace A181016.P6675071711115809175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A014105 (n + 3) - (n : ℤ)).toNat

end

end A181016.P6675071711115809175

/-! ## A181016.P18115516788922287456

`A181011(A005843((n+3)²-1))`
-/

namespace A181016.P18115516788922287456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A005843 ((n + 3) ^ 2 - 1)).toNat

end

end A181016.P18115516788922287456

/-! ## A181016.P12992163179173521400

`A181011(A055999(2*n+3)+1-n)`
-/

namespace A181016.P12992163179173521400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A055999 (2 * n + 3) + 1 - (n : ℤ)).toNat

end

end A181016.P12992163179173521400

/-! ## A181016.P18189785943408087609

`A181011(A005581(n+4)-A005581(n))`
-/

namespace A181016.P18189785943408087609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A005581 (n + 4) - A005581 n).toNat

end

end A181016.P18189785943408087609

/-!
# A181017: Number of nX(n+6) binary matrices with rows and columns each in strictly increasing order as binary numbers and every 0 adjacent to a 1 and every 1 adjacent to a 0.

The programs for A181017, there is no canonical definition to state claims against.
-/

/-! ## A181017.P17685128830480997352

`A181011(A090288(n+2))`
-/

namespace A181017.P17685128830480997352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A090288 (n + 2)).toNat

end

end A181017.P17685128830480997352

/-! ## A181017.P8354431763035380613

`A181011(A014105(n+3)+n+1)`
-/

namespace A181017.P8354431763035380613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A014105 (n + 3) + (n + 1 : ℤ)).toNat

end

end A181017.P8354431763035380613

/-! ## A181017.P11242556184781869192

`A181011(A051890(n)+A044446(n+1))`
-/

namespace A181017.P11242556184781869192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A051890 n + A044446 (n + 1)).toNat

end

end A181017.P11242556184781869192

/-! ## A181017.P14636229123872942429

`A181011(4*A000124(n+3))`
-/

namespace A181017.P14636229123872942429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (4 * A000124 (n + 3)).toNat

end

end A181017.P14636229123872942429

/-! ## A181017.P14529304472082562049

`A181011(A048268(n+3)-A005349(n+1))`
-/

namespace A181017.P14529304472082562049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181011 (A048268 (n + 3) - A005349 (n + 1)).toNat

end

end A181017.P14529304472082562049

/-!
# A181018: Maximum number of 1's in an n X n binary matrix with no three 1's adjacent in a line along a row, column or diagonally.

The programs for A181018, there is no canonical definition to state claims against.
-/

/-! ## A181018.P13589101728807201830

`A181019(∑[4*n]+1)`
-/

namespace A181018.P13589101728807201830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181018.P13589101728807201830

/-! ## A181018.P2578178834044850424

`and(-1, A181019(A001844(n)))`
-/

namespace A181018.P2578178834044850424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A181019 (A001844 n).toNat)

end

end A181018.P2578178834044850424

/-! ## A181018.P8413285917050728021

`A181019(∑[A008574(n)])+char[36]`
-/

namespace A181018.P8413285917050728021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A181018.P8413285917050728021

/-! ## A181018.P8638573667868341816

`record[A003982(n)*A181019(n+1)]`
-/

namespace A181018.P8638573667868341816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A181019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181018.P8638573667868341816

/-! ## A181018.P14636359723844197061

`A181019(A001844(n))%A042658(n)`
-/

namespace A181018.P14636359723844197061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181019 (A001844 n).toNat) (A042658 n)

end

end A181018.P14636359723844197061

/-!
# A181019: T(n,k) = maximum number of 1s in an n X k binary matrix with no three 1s adjacent in a line along a row, column or diagonally.

The programs for A181019, there is no canonical definition to state claims against.
-/

/-! ## A181019.P7762296603592880028

`A128998(A291439(n+1)+1)`
-/

namespace A181019.P7762296603592880028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A291439 (n + 1) + 1).toNat

end

end A181019.P7762296603592880028

/-! ## A181019.P8827513920737719693

`A128998(A296320(n+1)+1)`
-/

namespace A181019.P8827513920737719693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A296320 (n + 1) + 1).toNat

end

end A181019.P8827513920737719693

/-! ## A181019.P11274086203709569096

`A081604(A196544(n+1)+n)`
-/

namespace A181019.P11274086203709569096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A196544 (n + 1) + (n : ℤ)).toNat

end

end A181019.P11274086203709569096

/-! ## A181019.P928693064097486768

`A304689(A176200(n)*A256890(n))`
-/

namespace A181019.P928693064097486768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304689 (A176200 n * A256890 n).toNat

end

end A181019.P928693064097486768

/-! ## A181019.P17893439885481560074

`A304689(lcm(A176200(n), A256890(n)))`
-/

namespace A181019.P17893439885481560074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304689 (Int.lcm (A176200 n) (A256890 n))

end

end A181019.P17893439885481560074

/-!
# A181020: Maximum number of 1s in an n X (n+1) binary matrix with no three 1s adjacent in a line along a row, column or diagonally.

The programs for A181020, there is no canonical definition to state claims against.
-/

/-! ## A181020.P17699479596346668756

`round(∑[sqrt((n+1)²+2)])`
-/

namespace A181020.P17699479596346668756
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1) ^ 2 + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181020.P17699479596346668756

/-! ## A181020.P17269139466756020907

`comp[∑[n²%9]]+∑[n]`
-/

namespace A181020.P17269139466756020907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A181020.P17269139466756020907

/-! ## A181020.P8814607755562002126

`∑[char[lcm(3, n²)]+n+1]`
-/

namespace A181020.P8814607755562002126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181020.P8814607755562002126

/-! ## A181020.P18269471266931676299

`comp[C(n, 2)+n²]+∑[n]`
-/

namespace A181020.P18269471266931676299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A181020.P18269471266931676299

/-! ## A181020.P937132012856439063

`∑[char[C(n, 3)-1]+n+1]`
-/

namespace A181020.P937132012856439063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181020.P937132012856439063

/-!
# A181021: Maximum number of 1s in an nX(n+2) binary matrix with no three 1s adjacent in a line along a row, column or diagonally.

The programs for A181021, there is no canonical definition to state claims against.
-/

/-! ## A181021.P4599804368079090882

`A181019(∑[4*(n+1)])`
-/

namespace A181021.P4599804368079090882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181021.P4599804368079090882

/-! ## A181021.P13009134149278777734

`∑[A106036(3*n+1)+n]`
-/

namespace A181021.P13009134149278777734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 (3 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181021.P13009134149278777734

/-! ## A181021.P11768028492101957540

`A073900(2*(n+1))+C(n, 2)`
-/

namespace A181021.P11768028492101957540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (2 * (n + 1)) + (Nat.choose n 2 : ℤ)

end

end A181021.P11768028492101957540

/-! ## A181021.P2330587284695059852

`∑[A083047(n)+char[(n+1)²]+char[n²]]`
-/

namespace A181021.P2330587284695059852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 n + (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181021.P2330587284695059852

/-! ## A181021.P15530166524021155897

`∑[A191737(n+1)+char[(n+1)²]+char[n²]]`
-/

namespace A181021.P15530166524021155897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191737 (n + 1) + (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181021.P15530166524021155897

/-!
# A181022: Maximum number of 1s in an nX(n+3) binary matrix with no three 1s adjacent in a line along a row, column or diagonally.

The programs for A181022, there is no canonical definition to state claims against.
-/

/-! ## A181022.P10498794516143717465

`A181019((n+1)²+(n+3)²)`
-/

namespace A181022.P10498794516143717465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A181022.P10498794516143717465

/-! ## A181022.P13546187515720153484

`A130727(n)+A122221(n+2)`
-/

namespace A181022.P13546187515720153484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130727 n + A122221 (n + 2)

end

end A181022.P13546187515720153484

/-! ## A181022.P8879674681735775792

`record[A181019(record[A225949(n+2)])]`
-/

namespace A181022.P8879674681735775792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181019 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181022.P8879674681735775792

/-! ## A181022.P10573239445161488858

`A301957(A139608(n))+∑[n+2]`
-/

namespace A181022.P10573239445161488858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (A139608 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A181022.P10573239445161488858

/-! ## A181022.P9313433166743571751

`∑[A000700(n)*A008443(n)+2]`
-/

namespace A181022.P9313433166743571751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n * A008443 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181022.P9313433166743571751

/-!
# A181024: T(n,k)=Maximum number of 1s in an nXk binary matrix with no four 1s adjacent in a line along a row, column or diagonally.

The programs for A181024, there is no canonical definition to state claims against.
-/

/-! ## A181024.P13907571621508771348

`A054725(A189161(n+1))`
-/

namespace A181024.P13907571621508771348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A189161 (n + 1)).toNat

end

end A181024.P13907571621508771348

/-! ## A181024.P12902093988751572290

`A054725(A189343(n+1))`
-/

namespace A181024.P12902093988751572290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A189343 (n + 1)).toNat

end

end A181024.P12902093988751572290

/-! ## A181024.P11052641330829307759

`A054725(A189779(n+1))`
-/

namespace A181024.P11052641330829307759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A189779 (n + 1)).toNat

end

end A181024.P11052641330829307759

/-! ## A181024.P12886680298766348063

`A054725(A189905(n+1))`
-/

namespace A181024.P12886680298766348063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A189905 (n + 1)).toNat

end

end A181024.P12886680298766348063

/-! ## A181024.P9553700016225904463

`A054725(A267735(n+1))`
-/

namespace A181024.P9553700016225904463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A267735 (n + 1)).toNat

end

end A181024.P9553700016225904463

/-!
# A181028: Number of n X n binary matrices that are completed draws in n-in-a-row tic-tac-toe, with 0 going first.

The programs for A181028, there is no canonical definition to state claims against.
-/

/-! ## A181028.P3315752219960958196

`A181029(∑[4*n]+1)`
-/

namespace A181028.P3315752219960958196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181028.P3315752219960958196

/-! ## A181028.P524057484942382817

`∑{d}[A001844(n), A181029(#)]`
-/

namespace A181028.P524057484942382817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A181029 d

end

end A181028.P524057484942382817

/-! ## A181028.P7776161189201970336

`lcm(A007318(n), A181029(A001844(n)))`
-/

namespace A181028.P7776161189201970336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A181029 (A001844 n).toNat)

end

end A181028.P7776161189201970336

/-!
# A181031: 

The programs for A181031, there is no canonical definition to state claims against.
-/

/-! ## A181031.P15011403656007843058

`A089980(n)+A010815(A145022(n+1))`
-/

namespace A181031.P15011403656007843058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 n + A010815 (A145022 (n + 1)).toNat

end

end A181031.P15011403656007843058

/-! ## A181031.P16408965122703096374

`A213718(A099594(n))`
-/

namespace A181031.P16408965122703096374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213718 (A099594 n).toNat

end

end A181031.P16408965122703096374

/-! ## A181031.P5240747433322323358

`A196155(A384764(n))`
-/

namespace A181031.P5240747433322323358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A384764 n).toNat

end

end A181031.P5240747433322323358

/-! ## A181031.P4019007224035335425

`A196155(A385862(n))`
-/

namespace A181031.P4019007224035335425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A385862 n).toNat

end

end A181031.P4019007224035335425

/-! ## A181031.P14158717153093219171

`A316841(A395150(n))`
-/

namespace A181031.P14158717153093219171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (A395150 n).toNat

end

end A181031.P14158717153093219171

/-!
# A181032: Number of nX(n+1) binary matrices with no initial bit string in any row or column divisible by 4.

The programs for A181032, there is no canonical definition to state claims against.
-/

/-! ## A181032.P8305063270607656124

`A089980(2*(n+1)²)`
-/

namespace A181032.P8305063270607656124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (2 * (n + 1) ^ 2)

end

end A181032.P8305063270607656124

/-! ## A181032.P131950595344214770

`record[gcd(A080233(n), A089934(n+1))]`
-/

namespace A181032.P131950595344214770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080233 n) (A089934 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181032.P131950595344214770

/-!
# A181033: Number of nX(n+2) binary matrices with no initial bit string in any row or column divisible by 4.

The programs for A181033, there is no canonical definition to state claims against.
-/

/-! ## A181033.P9336293332951181968

`A089980(A001844(n+1))`
-/

namespace A181033.P9336293332951181968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A001844 (n + 1)).toNat

end

end A181033.P9336293332951181968

/-! ## A181033.P15541984841413162835

`A089980(A099776(n+1))`
-/

namespace A181033.P15541984841413162835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A099776 (n + 1)).toNat

end

end A181033.P15541984841413162835

/-! ## A181033.P13032577057212129463

`A089980(A132209(n+1))`
-/

namespace A181033.P13032577057212129463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A132209 (n + 1)).toNat

end

end A181033.P13032577057212129463

/-!
# A181034: Number of n X (n+3) binary matrices with no initial bit string in any row or column divisible by 4.

The programs for A181034, there is no canonical definition to state claims against.
-/

/-! ## A181034.P14771985659635189941

`A089980(A054000(n+2))`
-/

namespace A181034.P14771985659635189941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A054000 (n + 2)).toNat

end

end A181034.P14771985659635189941

/-!
# A181035: Number of nX(n+4) binary matrices with no initial bit string in any row or column divisible by 4.

The programs for A181035, there is no canonical definition to state claims against.
-/

/-! ## A181035.P15979205163464608869

`A089980(A090288(n+1))`
-/

namespace A181035.P15979205163464608869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A090288 (n + 1)).toNat

end

end A181035.P15979205163464608869

/-!
# A181036: Number of n X n binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181036, there is no canonical definition to state claims against.
-/

/-! ## A181036.P6010207085581058696

`A181039(∑[4*n]+1)`
-/

namespace A181036.P6010207085581058696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A181036.P6010207085581058696

/-! ## A181036.P4730644645487838693

`record[A181039(A265225(n)+1)]`
-/

namespace A181036.P4730644645487838693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A265225 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181036.P4730644645487838693

/-! ## A181036.P16389702852784403715

`or(A000007(n), A181039(A001844(n)))`
-/

namespace A181036.P16389702852784403715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181039 (A001844 n).toNat)

end

end A181036.P16389702852784403715

/-! ## A181036.P15645012804343080864

`A112316(n)!*A181039(A001844(n))`
-/

namespace A181036.P15645012804343080864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A112316 n).toNat : ℤ) * A181039 (A001844 n).toNat

end

end A181036.P15645012804343080864

/-! ## A181036.P15270235468109153580

`or(A169768(n+4), A181039(A001844(n)))`
-/

namespace A181036.P15270235468109153580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A169768 (n + 4)) (A181039 (A001844 n).toNat)

end

end A181036.P15270235468109153580

/-!
# A181037: Number of nX3 binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181037, there is no canonical definition to state claims against.
-/

/-! ## A181037.P18198436009050730337

`A181039(∑[n+2]+4)`
-/

namespace A181037.P18198436009050730337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A181037.P18198436009050730337

/-! ## A181037.P5402770560952488987

`A014998(n)*A181039(A167614(n+1))`
-/

namespace A181037.P5402770560952488987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A181039 (A167614 (n + 1)).toNat

end

end A181037.P5402770560952488987

/-! ## A181037.P15425125557666799985

`A181039(A167614(n+1))%A010904(n)`
-/

namespace A181037.P15425125557666799985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181039 (A167614 (n + 1)).toNat) (A010904 n)

end

end A181037.P15425125557666799985

/-! ## A181037.P17308141490359107410

`or(A000007(n), A181039(A167614(n+1)))`
-/

namespace A181037.P17308141490359107410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A181039 (A167614 (n + 1)).toNat)

end

end A181037.P17308141490359107410

/-! ## A181037.P15609860111329433900

`A000045(((-1)^n)²)*A181039(A167614(n+1))`
-/

namespace A181037.P15609860111329433900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A181039 (A167614 (n + 1)).toNat

end

end A181037.P15609860111329433900

/-!
# A181038: Number of nX4 binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181038, there is no canonical definition to state claims against.
-/

/-! ## A181038.P13126001235174243887

`A181039(A374004(n+1))`
-/

namespace A181038.P13126001235174243887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A374004 (n + 1)).toNat

end

end A181038.P13126001235174243887

/-! ## A181038.P5212120529566927420

`A181039(A141214(n)+7)`
-/

namespace A181038.P5212120529566927420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A141214 n + 7).toNat

end

end A181038.P5212120529566927420

/-! ## A181038.P6898247746551560987

`A181039(A055999(n)+10)`
-/

namespace A181038.P6898247746551560987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A055999 n + 10).toNat

end

end A181038.P6898247746551560987

/-! ## A181038.P3098242972857528300

`A181039(A167614(n+2)+1)`
-/

namespace A181038.P3098242972857528300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A167614 (n + 2) + 1).toNat

end

end A181038.P3098242972857528300

/-! ## A181038.P10427378440580502694

`A181039(A167499(n+2)-1)`
-/

namespace A181038.P10427378440580502694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A167499 (n + 2) - 1).toNat

end

end A181038.P10427378440580502694

/-!
# A181039: T(n,k)=Number of nXk binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181039, there is no canonical definition to state claims against.
-/

/-! ## A181039.P14055125971682965000

`A301801(A215297(n+1))`
-/

namespace A181039.P14055125971682965000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301801 (A215297 (n + 1)).toNat

end

end A181039.P14055125971682965000

/-! ## A181039.P6170106689543619300

`A047701(A220614(n+1))`
-/

namespace A181039.P6170106689543619300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047701 (A220614 (n + 1)).toNat

end

end A181039.P6170106689543619300

/-!
# A181040: Number of nX(n+1) binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181040, there is no canonical definition to state claims against.
-/

/-! ## A181040.P4454785449054402675

`A181039(2*(n+1)²)`
-/

namespace A181040.P4454785449054402675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (2 * (n + 1) ^ 2)

end

end A181040.P4454785449054402675

/-! ## A181040.P1088008673941198618

`record[A181039(A093353(n+1))]`
-/

namespace A181040.P1088008673941198618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A093353 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181040.P1088008673941198618

/-! ## A181040.P15246751726154945134

`record[A181039(A265225(n)-n)]`
-/

namespace A181040.P15246751726154945134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A265225 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181040.P15246751726154945134

/-! ## A181040.P9104004881355190187

`record[A181039(∑[A062828(n+1)])]`
-/

namespace A181040.P9104004881355190187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181040.P9104004881355190187

/-! ## A181040.P286190019758508583

`record[A181039(2*A008833(n+1))]`
-/

namespace A181040.P286190019758508583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (2 * A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181040.P286190019758508583

/-!
# A181041: Number of nX(n+2) binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181041, there is no canonical definition to state claims against.
-/

/-! ## A181041.P15105493308463289078

`A181039(∑[4*(n+1)])`
-/

namespace A181041.P15105493308463289078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A181041.P15105493308463289078

/-! ## A181041.P12638264768588598970

`record[A181039(A265225(n))]`
-/

namespace A181041.P12638264768588598970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181041.P12638264768588598970

/-! ## A181041.P376200939365740078

`record[A181039(A156678(n+1))]`
-/

namespace A181041.P376200939365740078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A156678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181041.P376200939365740078

/-! ## A181041.P7439887030126259193

`record[A181039(A008574(∑[char[∑[n]]]²-n))]`
-/

namespace A181041.P7439887030126259193
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A008574 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181041.P7439887030126259193

/-! ## A181041.P14178529344270339223

`record[A181039(A093353(n+1)-n)]`
-/

namespace A181041.P14178529344270339223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A093353 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181041.P14178529344270339223

/-!
# A181042: Number of nX(n+3) binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181042, there is no canonical definition to state claims against.
-/

/-! ## A181042.P7043346657301569879

`A181039((n+1)²+(n+3)²)`
-/

namespace A181042.P7043346657301569879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A181042.P7043346657301569879

/-! ## A181042.P7497225396666829067

`record[A181039(n+1)/A207537(2*n+3)]`
-/

namespace A181042.P7497225396666829067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181039 (n + 1) : ℚ) / (A207537 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181042.P7497225396666829067

/-! ## A181042.P9173289894885299445

`A181039(A056220(n+2))/∑{digits}[n, dr(10^#)]`
-/

namespace A181042.P9173289894885299445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181039 (A056220 (n + 2)).toNat : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum : ℕ) : ℚ)

end

end A181042.P9173289894885299445

/-!
# A181043: Number of n X (n+4) binary matrices with no initial bit string in any row or column divisible by 6.

The programs for A181043, there is no canonical definition to state claims against.
-/

/-! ## A181043.P213711688339240148

`A181039(A004767(∑[n+2]))`
-/

namespace A181043.P213711688339240148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A004767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A181043.P213711688339240148

/-! ## A181043.P16875484297223562626

`A181039(A090288(n+1)+1)`
-/

namespace A181043.P16875484297223562626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A090288 (n + 1) + 1).toNat

end

end A181043.P16875484297223562626

/-! ## A181043.P1873091100348938362

`A181039(A139570(n+1)+3)`
-/

namespace A181043.P1873091100348938362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A139570 (n + 1) + 3).toNat

end

end A181043.P1873091100348938362

/-! ## A181043.P4276885025249734585

`record[A181039(A156678(n+1)-1)]`
-/

namespace A181043.P4276885025249734585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A156678 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181043.P4276885025249734585

/-! ## A181043.P12662756125197947248

`A181039(A000217(2*(n+2))+n+1)`
-/

namespace A181043.P12662756125197947248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181039 (A000217 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A181043.P12662756125197947248

/-!
# A181044: 

The programs for A181044, there is no canonical definition to state claims against.
-/

/-! ## A181044.P9372440688113836393

`2*(n+1)*a(n-1)^(n+1)` with `a(0)=1`
-/

namespace A181044.P9372440688113836393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 1) * a (n - 1) ^ (n + 1))

end

end A181044.P9372440688113836393

/-!
# A181047: Number of length-n sequences A over {1,2,3} with the property that all of r(A), r(r(A)), etc. are over {1,2,3}, where r is the sequence obtained by taking the run lengths in A.

The programs for A181047, there is no canonical definition to state claims against.
-/

/-! ## A181047.P14813495883741543125

`record[A007425(∑[a(n-1)+24])]` with `a(0)=1, a(1)=1, a(2)=20`
-/

namespace A181047.P14813495883741543125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 20] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181047.P14813495883741543125

/-! ## A181047.P8965763130374476637

`record[A007425(A023610(n))]`
-/

namespace A181047.P8965763130374476637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A023610 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181047.P8965763130374476637

/-!
# A181052: The sequence of numbers where the n-th term is (Pi^n - e^n) rounded down to the nearest integer, where Pi is the ratio of a circle's circumference to its diameter (A000796) and e is Euler's constant (A001113).

The programs for A181052, the canonical program `A181052.P16832486051710899021` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181052 has offset 0).

The definition of A181052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181052.P16832486051710899021

`floor(π^n-e^n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181052

/-- `floor(π^n-e^n)` -/
def P16832486051710899021.Spec : Prop :=
  ∀ n, P16832486051710899021.a n = A181052 n

theorem P16832486051710899021.correct : P16832486051710899021.Spec := by
  intro n
  simp only [A181052]

end A181052

/-! ## A181052.P5462045326490175727

`ceil(π^n-exp(n)-A057427(n))`
-/

namespace A181052.P5462045326490175727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n - Real.exp (n : ℝ) - (A057427 n : ℝ)⌉

end

end A181052.P5462045326490175727

namespace A181052

/-- `ceil(π^n-exp(n)-A057427(n))` -/
def P5462045326490175727.Spec : Prop :=
  ∀ n, P5462045326490175727.a n = A181052 n

end A181052

/-! ## A181052.P15497148287668989762

`ceil(π^n-exp(n)-A178334(n))`
-/

namespace A181052.P15497148287668989762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n - Real.exp (n : ℝ) - (A178334 n : ℝ)⌉

end

end A181052.P15497148287668989762

namespace A181052

/-- `ceil(π^n-exp(n)-A178334(n))` -/
def P15497148287668989762.Spec : Prop :=
  ∀ n, P15497148287668989762.a n = A181052 n

end A181052

/-! ## A181052.P1561665194333062240

`ceil(π^n-exp(n)-A019431(2*n))`
-/

namespace A181052.P1561665194333062240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n - Real.exp (n : ℝ) - (A019431 (2 * n) : ℝ)⌉

end

end A181052.P1561665194333062240

namespace A181052

/-- `ceil(π^n-exp(n)-A019431(2*n))` -/
def P1561665194333062240.Spec : Prop :=
  ∀ n, P1561665194333062240.a n = A181052 n

end A181052

/-!
# A181053: Numbers n such that Sum_{k=1..n} (-1)^(n-k) *tau(k) is prime.

The programs for A181053, there is no canonical definition to state claims against.
-/

/-! ## A181053.P14294733618866345674

`A005843(A245863(n)+∑[char[n²]]²+n)`
-/

namespace A181053.P14294733618866345674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A245863 (n + 10) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n : ℕ) : ℤ)).toNat

end

end A181053.P14294733618866345674

/-! ## A181053.P1613253463783414014

`eq[p?[A081604(n)], A094683(n)]`
-/

namespace A181053.P1613253463783414014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A181053.P1613253463783414014

/-! ## A181053.P12100474887061801936

`record[A328514(n+4)-A060828(n)]`
-/

namespace A181053.P12100474887061801936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328514 (n + 4) - A060828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181053.P12100474887061801936

/-! ## A181053.P9535698007059448621

`lt[A298445(n+5), A058026(n+1)]`
-/

namespace A181053.P9535698007059448621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298445 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181053.P9535698007059448621

/-! ## A181053.P9246035562037565049

`lt[A040057(A326077(n)), A040057(n)]`
-/

namespace A181053.P9246035562037565049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 (A326077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A181053.P9246035562037565049

/-!
# A181055: Numbers n such that sum_{k=1..n} (-1)^(n-k) *bigomega(k) is prime.

The programs for A181055, there is no canonical definition to state claims against.
-/

/-! ## A181055.P15621459156692321351

`∑[A058339(A289045(∏{p}[n+1, #]))]`
-/

namespace A181055.P15621459156692321351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058339 (A289045 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181055.P15621459156692321351

/-! ## A181055.P1656453510221853512

`eq[A266605(A266627(3*n+2)), A266614(2*n)]`
-/

namespace A181055.P1656453510221853512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A266627 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266614 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A181055.P1656453510221853512

/-! ## A181055.P6766192884315125528

`lt[n%2, cos(A177083(n+1))]`
-/

namespace A181055.P6766192884315125528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A177083 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A181055.P6766192884315125528

/-! ## A181055.P18442783076337653496

`filter[A390940(n+2), A338354(#)]`
-/

namespace A181055.P18442783076337653496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A338354 (f1 j).toNat = 1) n)

end

end A181055.P18442783076337653496

/-! ## A181055.P2044168682687574363

`∑[A355034(∑[A208743(n+5)])]`
-/

namespace A181055.P2044168682687574363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208743 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355034 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181055.P2044168682687574363

/-!
# A181056: a(n) = prime(phi(Fibonacci(n))).

The programs for A181056, the canonical program `A181056.P13558356157106021504` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181056 has offset 1).

The definition of A181056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181056.P13558356157106021504

`A000040(A065449(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A181056

/-- `A000040(A065449(n+1))` -/
def P13558356157106021504.Spec : Prop :=
  ∀ n, P13558356157106021504.a n = A181056 (n + 1)

theorem P13558356157106021504.correct : P13558356157106021504.Spec := by
  intro n
  simp only [A181056, Nat.add_sub_cancel]

end A181056

/-! ## A181056.P6550316202802242144

`A008578(A065449(n+1)+1)`
-/

namespace A181056.P6550316202802242144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065449 (n + 1) + 1).toNat

end

end A181056.P6550316202802242144

namespace A181056

/-- `A008578(A065449(n+1)+1)` -/
def P6550316202802242144.Spec : Prop :=
  ∀ n, P6550316202802242144.a n = A181056 (n + 1)

end A181056

/-! ## A181056.P2304498049817351940

`A000040(A000010(A000045(n+1)))`
-/

namespace A181056.P2304498049817351940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (A000045 (n + 1)).toNat).toNat

end

end A181056.P2304498049817351940

namespace A181056

/-- `A000040(A000010(A000045(n+1)))` -/
def P2304498049817351940.Spec : Prop :=
  ∀ n, P2304498049817351940.a n = A181056 (n + 1)

end A181056

/-! ## A181056.P11561416294817089319

`A000040(A000010(A264800(n+1)))`
-/

namespace A181056.P11561416294817089319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (A264800 (n + 1)).toNat).toNat

end

end A181056.P11561416294817089319

namespace A181056

/-- `A000040(A000010(A264800(n+1)))` -/
def P11561416294817089319.Spec : Prop :=
  ∀ n, P11561416294817089319.a n = A181056 (n + 1)

end A181056

/-! ## A181056.P9449125055544742921

`A000040(A000010(∑[A000045(abs(1-n))]))`
-/

namespace A181056.P9449125055544742921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A181056.P9449125055544742921

namespace A181056

/-- `A000040(A000010(∑[A000045(abs(1-n))]))` -/
def P9449125055544742921.Spec : Prop :=
  ∀ n, P9449125055544742921.a n = A181056 (n + 1)

end A181056

/-!
# A181058: a(n) = prime(Fibonacci(phi(n))), where prime = A000040, Fibonacci = A000045 and phi = A000010.

The programs for A181058, the canonical program `A181058.P12754164257263716526` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181058 has offset 1).

The definition of A181058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181058.P3341612872589088526

`A030427(A000010(n+1))`
-/

namespace A181058.P3341612872589088526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A000010 (n + 1)).toNat

end

end A181058.P3341612872589088526

namespace A181058

/-- `A030427(A000010(n+1))` -/
def P3341612872589088526.Spec : Prop :=
  ∀ n, P3341612872589088526.a n = A181058 (n + 1)

end A181058

/-! ## A181058.P12754164257263716526

`A000040(A065451(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A181058

/-- `A000040(A065451(n+1))` -/
def P12754164257263716526.Spec : Prop :=
  ∀ n, P12754164257263716526.a n = A181058 (n + 1)

theorem P12754164257263716526.correct : P12754164257263716526.Spec := by
  intro n
  simp only [A181058, Nat.add_sub_cancel]

end A181058

/-! ## A181058.P12832997240722314233

`A030427((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A181058.P12832997240722314233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A181058.P12832997240722314233

namespace A181058

/-- `A030427((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P12832997240722314233.Spec : Prop :=
  ∀ n, P12832997240722314233.a n = A181058 (n + 1)

end A181058

/-! ## A181058.P12136782050636252233

`A030427(Δ[A002088(n)])`
-/

namespace A181058.P12136782050636252233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (f1 (n + 1) - f1 n).toNat

end

end A181058.P12136782050636252233

namespace A181058

/-- `A030427(Δ[A002088(n)])` -/
def P12136782050636252233.Spec : Prop :=
  ∀ n, P12136782050636252233.a n = A181058 (n + 1)

end A181058

/-! ## A181058.P8548398035699277609

`A030427(Δ[A005728(n)])`
-/

namespace A181058.P8548398035699277609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (f1 (n + 1) - f1 n).toNat

end

end A181058.P8548398035699277609

namespace A181058

/-- `A030427(Δ[A005728(n)])` -/
def P8548398035699277609.Spec : Prop :=
  ∀ n, P8548398035699277609.a n = A181058 (n + 1)

end A181058

/-! ## A181058.P2097079184077602204

`A030427(A225530(n+1))`
-/

namespace A181058.P2097079184077602204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A225530 (n + 1)).toNat

end

end A181058.P2097079184077602204

namespace A181058

/-- `A030427(A225530(n+1))` -/
def P2097079184077602204.Spec : Prop :=
  ∀ n, P2097079184077602204.a n = A181058 (n + 1)

end A181058

/-! ## A181058.P16499370471484200571

`A030427(A384710(n+1))`
-/

namespace A181058.P16499370471484200571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A384710 (n + 1)).toNat

end

end A181058.P16499370471484200571

namespace A181058

/-- `A030427(A384710(n+1))` -/
def P16499370471484200571.Spec : Prop :=
  ∀ n, P16499370471484200571.a n = A181058 (n + 1)

end A181058

/-!
# A181059: a(n) = floor(sin(n) - cos(n)).

The programs for A181059, the canonical program `A181059.P3477977400071196664` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181059 has offset 0).

The definition of A181059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sin(n)-cos(n))` (program `A181059.P3477977400071196664`, by `A181059.P3477977400071196664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A181059.P3477977400071196664

`floor(sin(n)-cos(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181059

/-- `floor(sin(n)-cos(n))` -/
def P3477977400071196664.Spec : Prop :=
  ∀ n, P3477977400071196664.a n = A181059 n

theorem P3477977400071196664.correct : P3477977400071196664.Spec := by
  intro n
  simp only [A181059]

end A181059

/-!
# A181060: a(n) is the smallest positive multiple of n whose decimal digits are all 0, 1 or 2.

The programs for A181060, there is no canonical definition to state claims against.
-/

/-! ## A181060.P12530710796338514646

`(n+1)*A181061(n+1)`
-/

namespace A181060.P12530710796338514646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181061 (n + 1)

end

end A181060.P12530710796338514646

/-! ## A181060.P12659997470466911951

`A334914(lcm(n+1, A216478(n+1)))`
-/

namespace A181060.P12659997470466911951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334914 (Int.lcm (n + 1 : ℤ) (A216478 (n + 1)))

end

end A181060.P12659997470466911951

/-! ## A181060.P10817635479059347561

`A334914(abs((n+1)*A216482(n+1)))`
-/

namespace A181060.P10817635479059347561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334914 |(n + 1 : ℤ) * A216482 (n + 1)|.toNat

end

end A181060.P10817635479059347561

/-! ## A181060.P1008721113327488066

`A334914(lcm(A000027(n+1), A216482(n+1)))`
-/

namespace A181060.P1008721113327488066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334914 (Int.lcm (A000027 (n + 1)) (A216482 (n + 1)))

end

end A181060.P1008721113327488066

/-!
# A181061: a(n) is the smallest positive number such that the decimal digits of n*a(n) are all 0, 1 or 2.

The programs for A181061, there is no canonical definition to state claims against.
-/

/-! ## A181061.P2415927393151577685

`A181060(C(2, n+2)+n)/(C(2, n+2)+n)`
-/

namespace A181061.P2415927393151577685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (Nat.choose 2 (n + 2) + n) : ℚ) / (Nat.choose 2 (n + 2) + n : ℚ)

end

end A181061.P2415927393151577685

/-! ## A181061.P12182020865567462599

`A181060(A028310(n))/A028310(n)`
-/

namespace A181061.P12182020865567462599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A181061.P12182020865567462599

/-! ## A181061.P10873172083761160028

`A181060(A000038(n)+n)/(A000038(n)+n)`
-/

namespace A181061.P10873172083761160028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (A000038 n + (n : ℤ)).toNat : ℚ) / (A000038 n + (n : ℤ) : ℚ)

end

end A181061.P10873172083761160028

/-! ## A181061.P2395629998648557107

`A181060(A065033(2*n))/A065033(2*n)`
-/

namespace A181061.P2395629998648557107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (A065033 (2 * n)).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A181061.P2395629998648557107

/-! ## A181061.P16849735416470271783

`A181060(A233583(n+1))/A233583(n+1)`
-/

namespace A181061.P16849735416470271783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181060 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A181061.P16849735416470271783

/-!
# A181062: Prime powers minus 1.

The programs for A181062, the canonical program `A181062.P6529548857799504333` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181062 has offset 1).

The definition of A181062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A181062.P6529548857799504333

`A000961(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A181062

/-- `A000961(n+1)-1` -/
def P6529548857799504333.Spec : Prop :=
  ∀ n, P6529548857799504333.a n = A181062 (n + 1)

theorem P6529548857799504333.correct : P6529548857799504333.Spec := by
  intro n
  simp only [A181062, Nat.add_sub_cancel]

end A181062

/-! ## A181062.P14279776343562403004

`sqrt(A056798(n+1))-1`
-/

namespace A181062.P14279776343562403004
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ) - 1

end

end A181062.P14279776343562403004

namespace A181062

/-- `sqrt(A056798(n+1))-1` -/
def P14279776343562403004.Spec : Prop :=
  ∀ n, P14279776343562403004.a n = (A181062 (n + 1) : ℝ)

end A181062

/-! ## A181062.P7183756669813789461

`A138929(n+1)/2-1`
-/

namespace A181062.P7183756669813789461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2 - 1

end

end A181062.P7183756669813789461

namespace A181062

/-- `A138929(n+1)/2-1` -/
def P7183756669813789461.Spec : Prop :=
  ∀ n, P7183756669813789461.a n = (A181062 (n + 1) : ℚ)

end A181062

/-! ## A181062.P16191965950305848385

`A057820(n)+a(n-1)` with `a(0)=0`
-/

namespace A181062.P16191965950305848385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057820 n + a (n - 1)

end

end A181062.P16191965950305848385

namespace A181062

/-- `A057820(n)+a(n-1)` -/
def P16191965950305848385.Spec : Prop :=
  ∀ n, P16191965950305848385.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P17276525386486016249

`A275120(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A181062.P17276525386486016249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A275120 n + a (n - 1)

end

end A181062.P17276525386486016249

namespace A181062

/-- `A275120(n)+a(n-1)` -/
def P17276525386486016249.Spec : Prop :=
  ∀ n, P17276525386486016249.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P2938824949208910683

`∪[A006093(n+1), A249435(n+1)]`
-/

namespace A181062.P2938824949208910683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181062.P2938824949208910683

namespace A181062

/-- `∪[A006093(n+1), A249435(n+1)]` -/
def P2938824949208910683.Spec : Prop :=
  ∀ n, (P2938824949208910683.a n : ℤ) = A181062 (n + 1)

end A181062

/-! ## A181062.P3517077847832142731

`∪[A068499(n+1), A249435(n+1)]`
-/

namespace A181062.P3517077847832142731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A181062.P3517077847832142731

namespace A181062

/-- `∪[A068499(n+1), A249435(n+1)]` -/
def P3517077847832142731.Spec : Prop :=
  ∀ n, (P3517077847832142731.a n : ℤ) = A181062 (n + 1)

end A181062

/-! ## A181062.P10584856019567206479

`A309269(n+1)-A246655(n+1)-1`
-/

namespace A181062.P10584856019567206479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - A246655 (n + 1) - 1

end

end A181062.P10584856019567206479

namespace A181062

/-- `A309269(n+1)-A246655(n+1)-1` -/
def P10584856019567206479.Spec : Prop :=
  ∀ n, P10584856019567206479.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P12689119749488457838

`A008683(A060264(n))+A000961(n+1)`
-/

namespace A181062.P12689119749488457838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060264 n).toNat + A000961 (n + 1)

end

end A181062.P12689119749488457838

namespace A181062

/-- `A008683(A060264(n))+A000961(n+1)` -/
def P12689119749488457838.Spec : Prop :=
  ∀ n, P12689119749488457838.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P12998245268094869737

`A008683(A060395(n))+A000961(n+1)`
-/

namespace A181062.P12998245268094869737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060395 n).toNat + A000961 (n + 1)

end

end A181062.P12998245268094869737

namespace A181062

/-- `A008683(A060395(n))+A000961(n+1)` -/
def P12998245268094869737.Spec : Prop :=
  ∀ n, P12998245268094869737.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P4710822647733265547

`A008683(A060397(n))+A000961(n+1)`
-/

namespace A181062.P4710822647733265547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A060397 n).toNat + A000961 (n + 1)

end

end A181062.P4710822647733265547

namespace A181062

/-- `A008683(A060397(n))+A000961(n+1)` -/
def P4710822647733265547.Spec : Prop :=
  ∀ n, P4710822647733265547.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P13448076738537220886

`A057428(n+1)+A000961(n+1)`
-/

namespace A181062.P13448076738537220886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000961 (n + 1)

end

end A181062.P13448076738537220886

namespace A181062

/-- `A057428(n+1)+A000961(n+1)` -/
def P13448076738537220886.Spec : Prop :=
  ∀ n, P13448076738537220886.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P3974092989820349608

`A153881(n+2)+A000961(n+1)`
-/

namespace A181062.P3974092989820349608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A000961 (n + 1)

end

end A181062.P3974092989820349608

namespace A181062

/-- `A153881(n+2)+A000961(n+1)` -/
def P3974092989820349608.Spec : Prop :=
  ∀ n, P3974092989820349608.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P4862148768782744570

`record[n*(2-A001221(n+1))]`
-/

namespace A181062.P4862148768782744570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A001221 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181062.P4862148768782744570

namespace A181062

/-- `record[n*(2-A001221(n+1))]` -/
def P4862148768782744570.Spec : Prop :=
  ∀ n, P4862148768782744570.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P3345379279872762848

`record[n/a(A001221(n))]/2-1` with `a(0)=2`
-/

namespace A181062.P3345379279872762848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2 - 1

end

end A181062.P3345379279872762848

namespace A181062

/-- `record[n/a(A001221(n))]/2-1` -/
def P3345379279872762848.Spec : Prop :=
  ∀ n, P3345379279872762848.a n = (A181062 (n + 1) : ℚ)

end A181062

/-! ## A181062.P7286982100574037262

`record[gcd(n+1, A020639(n+1)^A001222(n+1))]-1`
-/

namespace A181062.P7286982100574037262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A181062.P7286982100574037262

namespace A181062

/-- `record[gcd(n+1, A020639(n+1)^A001222(n+1))]-1` -/
def P7286982100574037262.Spec : Prop :=
  ∀ n, P7286982100574037262.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P6712650487388936527

`record[A034699(n+1)-1]`
-/

namespace A181062.P6712650487388936527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181062.P6712650487388936527

namespace A181062

/-- `record[A034699(n+1)-1]` -/
def P6712650487388936527.Spec : Prop :=
  ∀ n, P6712650487388936527.a n = A181062 (n + 1)

end A181062

/-! ## A181062.P10957968098970570472

`record[n/A304404(n+1)²²]`
-/

namespace A181062.P10957968098970570472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((A304404 (n + 1) ^ 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181062.P10957968098970570472

namespace A181062

/-- `record[n/A304404(n+1)²²]` -/
def P10957968098970570472.Spec : Prop :=
  ∀ n, P10957968098970570472.a n = (A181062 (n + 1) : ℚ)

end A181062

/-! ## A181062.P91649363142482908

`eq[0, A035321(n+1)]`
-/

namespace A181062.P91649363142482908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181062.P91649363142482908

namespace A181062

/-- `eq[0, A035321(n+1)]` -/
def P91649363142482908.Spec : Prop :=
  ∀ n, (P91649363142482908.a n : ℤ) = A181062 (n + 1)

end A181062

/-! ## A181062.P12438580144741796189

`eq[0, A049087(n+1)]`
-/

namespace A181062.P12438580144741796189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A181062.P12438580144741796189

namespace A181062

/-- `eq[0, A049087(n+1)]` -/
def P12438580144741796189.Spec : Prop :=
  ∀ n, (P12438580144741796189.a n : ℤ) = A181062 (n + 1)

end A181062

/-!
# A181063: Smallest positive integer with a discrete string of exactly n consecutive divisors, or 0 if no such integer exists.

The programs for A181063, there is no canonical definition to state claims against.
-/

/-! ## A181063.P13543066668185323407

`A058312(n+1)*A228572(A120832(n+1))`
-/

namespace A181063.P13543066668185323407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) * A228572 (A120832 (n + 1)).toNat

end

end A181063.P13543066668185323407

/-! ## A181063.P15910960596923919227

`A072181(n+1)*A131821(A071158(3*n+4))`
-/

namespace A181063.P15910960596923919227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072181 (n + 1) * A131821 (A071158 (3 * n + 4)).toNat

end

end A181063.P15910960596923919227

/-!
# A181065: a(n)=(F(n)-sumofdigits(F(n)))/9, where F(n) = A000045(n).

The programs for A181065, the canonical program `A181065.P819305362319414895` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181065 has offset 0).

The definition of A181065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181065.P819305362319414895

`(A000045(n)-∑{digits}[A000045(n), #])/9`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A181065

/-- `(A000045(n)-∑{digits}[A000045(n), #])/9` -/
def P819305362319414895.Spec : Prop :=
  ∀ n, P819305362319414895.a n = (A181065 n : ℚ)

end A181065

/-! ## A181065.P8448334918751197171

`A054899(∑[round(ϕ*a(n-1))])` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A181065.P8448334918751197171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181065.P8448334918751197171

namespace A181065

/-- `A054899(∑[round(ϕ*a(n-1))])` -/
def P8448334918751197171.Spec : Prop :=
  ∀ n, P8448334918751197171.a n = A181065 n

end A181065

/-! ## A181065.P12377216908698132602

`A054899(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A181065.P12377216908698132602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A181065.P12377216908698132602

namespace A181065

/-- `A054899(∑[a(n-1)-(1-a(n-2))]-n)` -/
def P12377216908698132602.Spec : Prop :=
  ∀ n, P12377216908698132602.a n = A181065 n

end A181065

/-! ## A181065.P7994337762136376953

`A054899(A000045(n))`
-/

namespace A181065.P7994337762136376953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000045 n).toNat

end

end A181065.P7994337762136376953

namespace A181065

/-- `A054899(A000045(n))` -/
def P7994337762136376953.Spec : Prop :=
  ∀ n, P7994337762136376953.a n = A181065 n

end A181065

/-! ## A181065.P12697524595692679505

`A054899(A104220(n))`
-/

namespace A181065.P12697524595692679505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A104220 n).toNat

end

end A181065.P12697524595692679505

namespace A181065

/-- `A054899(A104220(n))` -/
def P12697524595692679505.Spec : Prop :=
  ∀ n, P12697524595692679505.a n = A181065 n

end A181065

/-!
# A181066: Expansion of g.f.: exp( Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^3 *x^k ] *x^n/n ).

The programs for A181066, there is no canonical definition to state claims against.
-/

/-! ## A181066.P11574658194053894000

`A070098(A340935(n+1)+n+1)`
-/

namespace A181066.P11574658194053894000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A340935 (n + 1) + (n + 1 : ℤ)).toNat

end

end A181066.P11574658194053894000

/-! ## A181066.P12906723806073610894

`A285735(A285719(floor((2*n)^(n/2))))`
-/

namespace A181066.P12906723806073610894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (A285719 ⌊(2 * n : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat).toNat

end

end A181066.P12906723806073610894

/-! ## A181066.P8898958461357506606

`A103221(A217041(n)+A071732(n))`
-/

namespace A181066.P8898958461357506606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A217041 n + A071732 n).toNat

end

end A181066.P8898958461357506606

/-!
# A181067: a(n) = Sum_{k=0..n-1} binomial(n-1,k)^2 * binomial(n,k).

The programs for A181067, there is no canonical definition to state claims against.
-/

/-! ## A181067.P14075027787971241051

`∑[n+1]/(n+1)²*A262407(n+1)`
-/

namespace A181067.P14075027787971241051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A262407 (n + 1) : ℚ)

end

end A181067.P14075027787971241051

/-! ## A181067.P6307747318732361554

`(A197657(n)+A000172(n))/2`
-/

namespace A181067.P6307747318732361554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197657 n + A000172 n : ℚ) / 2

end

end A181067.P6307747318732361554

/-! ## A181067.P12923082632325074468

`(A000172(n)+A141147(n+1)/2)/2`
-/

namespace A181067.P12923082632325074468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000172 n : ℚ) + (A141147 (n + 1) : ℚ) / 2) / 2

end

end A181067.P12923082632325074468

/-! ## A181067.P16683084510310804928

`A262407(n+1)/(6*(n+1))*A031193(n+2)`
-/

namespace A181067.P16683084510310804928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262407 (n + 1) : ℚ) / (6 * (n + 1) : ℚ) * (A031193 (n + 2) : ℚ)

end

end A181067.P16683084510310804928

/-! ## A181067.P18034838629955959449

`(A000172(n)+(A000172(n+1)+A000172(n))/3)/2`
-/

namespace A181067.P18034838629955959449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000172 n : ℚ) + (A000172 (n + 1) + A000172 n : ℚ) / 3) / 2

end

end A181067.P18034838629955959449

/-! ## A181067.P6248275954345127981

`A262407(n+1)/A065475(2*n+1)*A065475(n+1)`
-/

namespace A181067.P6248275954345127981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262407 (n + 1) : ℚ) / (A065475 (2 * n + 1) : ℚ) * (A065475 (n + 1) : ℚ)

end

end A181067.P6248275954345127981

/-! ## A181067.P6652220927527082767

`(A000172(n)+sqrt(A209352(n+1)))/2`
-/

namespace A181067.P6652220927527082767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000172 n : ℝ) + Real.sqrt (A209352 (n + 1) : ℝ)) / 2

end

end A181067.P6652220927527082767

/-!
# A181068: Expansion of g.f.: exp( Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^4 *x^k ] *x^n/n ).

The programs for A181068, there is no canonical definition to state claims against.
-/

/-! ## A181068.P13267378080397908851

`A006368(A001147(n))+A000332(n)`
-/

namespace A181068.P13267378080397908851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A001147 n).toNat + A000332 n

end

end A181068.P13267378080397908851

/-! ## A181068.P3235480471350786452

`A110656(A068766(n))+A002620(n)`
-/

namespace A181068.P3235480471350786452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A068766 n).toNat + A002620 n

end

end A181068.P3235480471350786452

/-!
# A181069: Expansion of l.g.f. Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^4 *x^k ] *x^n/n.

The programs for A181069, there is no canonical definition to state claims against.
-/

/-! ## A181069.P11022321021973200514

`A134025(A058156(n+1)+floor((n/2)²))`
-/

namespace A181069.P11022321021973200514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134025 (A058156 (n + 1) + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A181069.P11022321021973200514

/-!
# A181070: Expansion of G.f.: A(x) = exp( Sum_{n>=1} (Sum_{k=0..n} C(n,k)^(k+1)*x^k)*x^n/n ).

The programs for A181070, there is no canonical definition to state claims against.
-/

/-! ## A181070.P1572818913710899455

`A008612(A182454(n))+A006161(n+1)`
-/

namespace A181070.P1572818913710899455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A182454 n).toNat + A006161 (n + 1)

end

end A181070.P1572818913710899455

/-!
# A181071: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^(k+1) * n/(n-k).

The programs for A181071, there is no canonical definition to state claims against.
-/

/-! ## A181071.P3062254512547771054

`A066839(∏[A062234(n+1)+1])`
-/

namespace A181071.P3062254512547771054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A181071.P3062254512547771054

/-! ## A181071.P14871243460932876380

`or(n!*∑[n/n!], A000005(A347013(n)))`
-/

namespace A181071.P14871243460932876380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (A000005 (A347013 n).toNat)

end

end A181071.P14871243460932876380

/-!
# A181072: Consider 1-D random walk with jumps up to the fourth neighbor, i.e., set of possible jumps is {-4,-3,-2,-1,+1,+2,+3,+4}. Sequence gives number of paths of length n ending at origin.

The programs for A181072, there is no canonical definition to state claims against.
-/

/-! ## A181072.P11522114983545004059

`A090077(A356960(n)-n)`
-/

namespace A181072.P11522114983545004059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A356960 n - (n : ℤ)).toNat

end

end A181072.P11522114983545004059

/-!
# A181073: Permutations of lengths 1,2,3,... arranged lexicographically that are relatively prime to 30.

The programs for A181073, there is no canonical definition to state claims against.
-/

/-! ## A181073.P1159603679093735029

`record[A100050(A030299(n+1))]`
-/

namespace A181073.P1159603679093735029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A030299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181073.P1159603679093735029

/-! ## A181073.P12989046430415273948

`record[A100050(A227073(n+1))]`
-/

namespace A181073.P12989046430415273948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A227073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A181073.P12989046430415273948

/-! ## A181073.P4190291687924224212

`filter[A030299(n+1), A095130(#)]`
-/

namespace A181073.P4190291687924224212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A181073.P4190291687924224212

/-! ## A181073.P17177681814070668948

`filter[A030299(n+1), A162289(#)]`
-/

namespace A181073.P17177681814070668948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A181073.P17177681814070668948

/-! ## A181073.P3985610729502947283

`filter[A227073(n+1), A095130(#)]`
-/

namespace A181073.P3985610729502947283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A181073.P3985610729502947283

/-!
# A181074: Expansion of g.f.: exp( Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^(k+1) *x^k ] *x^n/n ).

The programs for A181074, there is no canonical definition to state claims against.
-/

/-! ## A181074.P2201286772909571472

`A325353(round(sqrt(n^n)))`
-/

namespace A181074.P2201286772909571472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (SequenceMachineLib.roundAway (Real.sqrt (n ^ n : ℝ))).toNat

end

end A181074.P2201286772909571472

/-! ## A181074.P8381549602706347070

`A241314(2^n+1+n)`
-/

namespace A181074.P8381549602706347070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241314 (2 ^ n + 1 + n)

end

end A181074.P8381549602706347070

/-!
# A181075: a(n) = Sum_{k=0..n-1} C(n-1,k)^(k+1) * n/(n-k).

The programs for A181075, there is no canonical definition to state claims against.
-/

/-! ## A181075.P13246678981439104502

`∑[∑[A005185(A062448(n))]]`
-/

namespace A181075.P13246678981439104502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A062448 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181075.P13246678981439104502

/-!
# A181076: G.f.: exp( Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^n *x^k ] *x^n/n ).

The programs for A181076, there is no canonical definition to state claims against.
-/

/-! ## A181076.P9461257198216407374

`A323456(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A181076.P9461257198216407374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A323456 (a (n - 1) ^ 2).toNat

end

end A181076.P9461257198216407374

/-! ## A181076.P11114813394907554602

`A137761(a(n-1)+n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A181076.P11114813394907554602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  A137761 (a (n - 1) + (n : ℤ)).toNat

end

end A181076.P11114813394907554602

/-!
# A181077: a(n) = Sum_{k=0..n-1} C(n-1,k)^(n-k) * n/(n-k).

The programs for A181077, there is no canonical definition to state claims against.
-/

/-! ## A181077.P12932719466461765322

`round(sqrt(sqrt(A219513(2*(n+1)))))`
-/

namespace A181077.P12932719466461765322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A219513 (2 * (n + 1)) : ℝ)))

end

end A181077.P12932719466461765322

/-!
# A181078: Expansion of g.f.: exp( Sum_{n>=1} [ Sum_{k>=0} C(n+k-1,k)^(n+k-1) *x^k ] *x^n/n ).

The programs for A181078, there is no canonical definition to state claims against.
-/

/-! ## A181078.P9626856132684203201

`A270812(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A181078.P9626856132684203201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A270812 (2 * a (n - 1)).toNat

end

end A181078.P9626856132684203201

/-! ## A181078.P11212882949683003134

`xor(a(n-1)+5, A262339(n+1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A181078.P11212882949683003134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  Int.xor (a (n - 1) + 5) (A262339 (n + 1))

end

end A181078.P11212882949683003134

/-!
# A181079: a(n) = Sum_{k=0..n-1} binomial(n-1,k)^(n-1) * n/(n-k).

The programs for A181079, there is no canonical definition to state claims against.
-/

/-! ## A181079.P7466251539959558693

`∑{d}[n+1, #^5]%A220032(∑{d}[n+1, (n+1)*#²])`
-/

namespace A181079.P7466251539959558693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d ^ 5 : ℕ) : ℤ) (A220032 (∑ d ∈ Nat.divisors (f2 n), (n + 1) * d ^ 2))

end

end A181079.P7466251539959558693

/-!
# A181080: Expansion of g.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^(n-k+1) * x^k] * x^n/n ).

The programs for A181080, there is no canonical definition to state claims against.
-/

/-! ## A181080.P7655063361409579991

`A008619(A178089(n)-A046765(n))`
-/

namespace A181080.P7655063361409579991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178089 n - A046765 n).toNat

end

end A181080.P7655063361409579991

/-! ## A181080.P4042134635754416786

`A008619(A178089(n)-A116449(n))`
-/

namespace A181080.P4042134635754416786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178089 n - A116449 n).toNat

end

end A181080.P4042134635754416786

/-! ## A181080.P9020695436668454544

`A008619(A178089(n)-A178072(n))`
-/

namespace A181080.P9020695436668454544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178089 n - A178072 n).toNat

end

end A181080.P9020695436668454544

/-!
# A181081: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^(n-2k*+1) * n/(n-k).

The programs for A181081, there is no canonical definition to state claims against.
-/

/-! ## A181081.P12493156586973809282

`A024612(A362205(n))%A090306(n)`
-/

namespace A181081.P12493156586973809282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024612 (A362205 n).toNat) (A090306 n)

end

end A181081.P12493156586973809282

/-!
# A181082: Expansion of g.f.: exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^(n+k) * x^k] * x^n/n ).

The programs for A181082, there is no canonical definition to state claims against.
-/

/-! ## A181082.P7765547755119028260

`A160697((n-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A181082.P7765547755119028260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160697 (((n : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A181082.P7765547755119028260

/-! ## A181082.P11248958457114622175

`A219642(A120959(n))`
-/

namespace A181082.P11248958457114622175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (A120959 n).toNat

end

end A181082.P11248958457114622175

/-!
# A181083: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^n * n/(n-k).

The programs for A181083, there is no canonical definition to state claims against.
-/

/-! ## A181083.P3714134593623329173

`∑[A047253(A006040(n))]`
-/

namespace A181083.P3714134593623329173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (A006040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181083.P3714134593623329173

/-!
# A181084: Expansion of g.f.: exp( Sum_{n>=1} [Sum_{k=0..n} binomial(n,k)^(n+k+1) * x^k] * x^n/n ).

The programs for A181084, there is no canonical definition to state claims against.
-/

/-! ## A181084.P11575569987864162237

`A002266(or(5, A197867(n+1)))`
-/

namespace A181084.P11575569987864162237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lor 5 (A197867 (n + 1))).toNat

end

end A181084.P11575569987864162237

/-!
# A181085: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)^(n+1) * n/(n-k).

The programs for A181085, there is no canonical definition to state claims against.
-/

/-! ## A181085.P3035302602624426850

`A056655(A073225(n))+A003236(n)`
-/

namespace A181085.P3035302602624426850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056655 (A073225 n).toNat + A003236 n

end

end A181085.P3035302602624426850

/-!
# A181086: Sorted version of A061075.

The programs for A181086, there is no canonical definition to state claims against.
-/

/-! ## A181086.P13165790534830981637

`A089167(A023242(n+1))`
-/

namespace A181086.P13165790534830981637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A023242 (n + 1)).toNat

end

end A181086.P13165790534830981637

/-! ## A181086.P2088300696983130235

`∩[A145032(n+1), A362579(n+1)]`
-/

namespace A181086.P2088300696983130235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181086.P2088300696983130235

/-!
# A181087: Partitions of n in the order of increasing smallest numbers of prime signatures.

The programs for A181087, there is no canonical definition to state claims against.
-/

/-! ## A181087.P17063009758742396632

`A292583(A273670(n)^A292582(n+1))`
-/

namespace A181087.P17063009758742396632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292583 (SequenceMachineLib.roundAway ((A273670 n : ℚ) ^ (A292582 (n + 1) : ℤ))).toNat

end

end A181087.P17063009758742396632

/-! ## A181087.P869623070945991553

`A287576((∑[n+3]+7)*n²+1)+1`
-/

namespace A181087.P869623070945991553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 ((∑ j ∈ Finset.range (n + 1), f1 j + 7) * n ^ 2 + 1) + 1

end

end A181087.P869623070945991553

/-! ## A181087.P4674421335674924292

`A385817(A362399(n+1))`
-/

namespace A181087.P4674421335674924292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385817 (A362399 (n + 1)).toNat

end

end A181087.P4674421335674924292

/-! ## A181087.P13517961917137775854

`A384890(A177867(n+2))`
-/

namespace A181087.P13517961917137775854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A177867 (n + 2)).toNat

end

end A181087.P13517961917137775854

/-! ## A181087.P16537001668119159043

`A390308(A202940(n+2))`
-/

namespace A181087.P16537001668119159043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390308 (A202940 (n + 2)).toNat

end

end A181087.P16537001668119159043

/-!
# A181088: a(n) = A181089(2*n+1,n)/(n+2).

The programs for A181088, there is no canonical definition to state claims against.
-/

/-! ## A181088.P12381241311670779426

`A060821(A195605(n))/(n+2)`
-/

namespace A181088.P12381241311670779426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060821 (A195605 n).toNat : ℚ) / (n + 2 : ℚ)

end

end A181088.P12381241311670779426

/-!
# A181089: Triangle T(n, k) = A060821(n,k) + A060821(n,n-k), read by rows.

The programs for A181089, the canonical program `A181089.P1090113602927549719` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181089 has offset 0).

The definition of A181089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181089.P1090113602927549719

`A060821(n)+A060821(A061579(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A181089

/-- `A060821(n)+A060821(A061579(n))` -/
def P1090113602927549719.Spec : Prop :=
  ∀ n, P1090113602927549719.a n = A181089 n

theorem P1090113602927549719.correct : P1090113602927549719.Spec := by
  intro n
  simp only [A181089]

end A181089

/-! ## A181089.P6735917894072846463

`A060821(n)+A060821(A114327(n)+n)`
-/

namespace A181089.P6735917894072846463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n + A060821 (A114327 n + (n : ℤ)).toNat

end

end A181089.P6735917894072846463

namespace A181089

/-- `A060821(n)+A060821(A114327(n)+n)` -/
def P6735917894072846463.Spec : Prop :=
  ∀ n, P6735917894072846463.a n = A181089 n

end A181089

/-! ## A181089.P10863416331869944335

`A060821(A038722(n+1)-1)+A060821(n)`
-/

namespace A181089.P10863416331869944335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 (A038722 (n + 1) - 1).toNat + A060821 n

end

end A181089.P10863416331869944335

namespace A181089

/-- `A060821(A038722(n+1)-1)+A060821(n)` -/
def P10863416331869944335.Spec : Prop :=
  ∀ n, P10863416331869944335.a n = A181089 n

end A181089

/-!
# A181090: Sum_{d|F(n)} d^3, where F(n) are the Fibonacci numbers.

The programs for A181090, there is no canonical definition to state claims against.
-/

/-! ## A181090.P14644457403182182851

`∑{d}[Δ[round(ϕ*a(n-1))], #^3]` with `a(0)=1`
-/

namespace A181090.P14644457403182182851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A181090.P14644457403182182851

/-! ## A181090.P13992923379703048474

`∑{d}[a(n-1)-ceil(-a(n-2)), #^3]` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A181090.P13992923379703048474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A181090.P13992923379703048474

/-! ## A181090.P17017735769669907580

`∑{d}[a(n-1)-(char[1]-a(n-2)), #^3]` with `a(0)=1, a(1)=1`
-/

namespace A181090.P17017735769669907580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A181090.P17017735769669907580

/-! ## A181090.P17112302222207237102

`∑{d}[A037027(∑[n]), #^3]`
-/

namespace A181090.P17112302222207237102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A181090.P17112302222207237102

/-! ## A181090.P11780496184254957186

`∑{d}[∑[A212804(n)], #^3]`
-/

namespace A181090.P11780496184254957186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A181090.P11780496184254957186

/-!
# A181091: a(n) = Carmichael(F(n)), where F(n) are the Fibonacci numbers.

The programs for A181091, there is no canonical definition to state claims against.
-/

/-! ## A181091.P5639582990631947760

`A011773(A167808(n+1))`
-/

namespace A181091.P5639582990631947760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (A167808 (n + 1)).toNat

end

end A181091.P5639582990631947760

/-! ## A181091.P1543197854609776668

`A000010(A219792(A000045(n+1)))`
-/

namespace A181091.P1543197854609776668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A219792 (A000045 (n + 1)).toNat).toNat

end

end A181091.P1543197854609776668

/-! ## A181091.P7475772038706792128

`A002322(A000045(n+1)/A290104(n+1))`
-/

namespace A181091.P7475772038706792128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (SequenceMachineLib.roundAway ((A000045 (n + 1) : ℚ) / (A290104 (n + 1) : ℚ))).toNat

end

end A181091.P7475772038706792128

/-! ## A181091.P9772729292205018024

`A002322(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A181091.P9772729292205018024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (n + 1) - f1 n).toNat

end

end A181091.P9772729292205018024

/-! ## A181091.P5882510355396512141

`A002322(Δ[floor(ϕ*a(n-1))])` with `a(0)=1, a(1)=3`
-/

namespace A181091.P5882510355396512141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f1 (n + 1) - f1 n).toNat

end

end A181091.P5882510355396512141

/-!
# A181092: a(n) is the sum of n addends nested as follows: floor(sqrt(floor(sqrt(...(n)...)))).

The programs for A181092, the canonical program `A181092.P17294268124269910376` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181092 has offset 1).

The definition of A181092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A181092.P17294268124269910376

`∑[∏{e}[A052409((n+1)²), #]]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A181092

/-- `∑[∏{e}[A052409((n+1)²), #]]` -/
def P17294268124269910376.Spec : Prop :=
  ∀ n, (P17294268124269910376.a n : ℤ) = A181092 (n + 1)

theorem P17294268124269910376.correct : P17294268124269910376.Spec := by
  intro n
  simp only [A181092, Nat.add_sub_cancel]

end A181092

/-! ## A181092.P13504695525876894194

`∑[A227350(A052409((n+1)²))]`
-/

namespace A181092.P13504695525876894194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A052409 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P13504695525876894194

namespace A181092

/-- `∑[A227350(A052409((n+1)²))]` -/
def P13504695525876894194.Spec : Prop :=
  ∀ n, P13504695525876894194.a n = A181092 (n + 1)

end A181092

/-! ## A181092.P7847244690569318078

`∑[A257993(A360794(∏{e}[n+1, #+1]))]`
-/

namespace A181092.P7847244690569318078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A360794 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P7847244690569318078

namespace A181092

/-- `∑[A257993(A360794(∏{e}[n+1, #+1]))]` -/
def P7847244690569318078.Spec : Prop :=
  ∀ n, P7847244690569318078.a n = A181092 (n + 1)

end A181092

/-! ## A181092.P8733543140194465571

`A047263(A000196(n+1))+A002024(A000124(n))`
-/

namespace A181092.P8733543140194465571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A000196 (n + 1)).toNat + A002024 (A000124 n).toNat

end

end A181092.P8733543140194465571

namespace A181092

/-- `A047263(A000196(n+1))+A002024(A000124(n))` -/
def P8733543140194465571.Spec : Prop :=
  ∀ n, P8733543140194465571.a n = A181092 (n + 1)

end A181092

/-! ## A181092.P14146594247793776274

`∑[A333940(A360997(n+1))]`
-/

namespace A181092.P14146594247793776274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333940 (A360997 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P14146594247793776274

namespace A181092

/-- `∑[A333940(A360997(n+1))]` -/
def P14146594247793776274.Spec : Prop :=
  ∀ n, P14146594247793776274.a n = A181092 (n + 1)

end A181092

/-! ## A181092.P18128059204424527774

`∑[∏{e}[A253641((n+1)²), #]]`
-/

namespace A181092.P18128059204424527774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 ((n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P18128059204424527774

namespace A181092

/-- `∑[∏{e}[A253641((n+1)²), #]]` -/
def P18128059204424527774.Spec : Prop :=
  ∀ n, (P18128059204424527774.a n : ℤ) = A181092 (n + 1)

end A181092

/-! ## A181092.P16342595554300006294

`∑[A072411(A253641((n+1)²))]`
-/

namespace A181092.P16342595554300006294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A253641 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181092.P16342595554300006294

namespace A181092

/-- `∑[A072411(A253641((n+1)²))]` -/
def P16342595554300006294.Spec : Prop :=
  ∀ n, P16342595554300006294.a n = A181092 (n + 1)

end A181092

/-! ## A181092.P4725026245056046701

`A047263(A000196(n+1))+A000196((n+1)*(n+1))`
-/

namespace A181092.P4725026245056046701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A000196 (n + 1)).toNat + A000196 ((n + 1) * (n + 1))

end

end A181092.P4725026245056046701

namespace A181092

/-- `A047263(A000196(n+1))+A000196((n+1)*(n+1))` -/
def P4725026245056046701.Spec : Prop :=
  ∀ n, P4725026245056046701.a n = A181092 (n + 1)

end A181092

/-!
# A181093: p*(p+2)/3 where p and p+4 are primes.

The programs for A181093, there is no canonical definition to state claims against.
-/

/-! ## A181093.P15786999611568981449

`floor((A015913(n+1)+1)²/3)`
-/

namespace A181093.P15786999611568981449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A015913 (n + 1) + 1) ^ 2 : ℚ) / 3⌋

end

end A181093.P15786999611568981449

/-! ## A181093.P13770091560999602905

`floor((A087679(n+1)-1)²/3)`
-/

namespace A181093.P13770091560999602905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A087679 (n + 1) - 1) ^ 2 : ℚ) / 3⌋

end

end A181093.P13770091560999602905

/-! ## A181093.P16987287784749837995

`round((A165986(n+1)+2)²/12)`
-/

namespace A181093.P16987287784749837995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A165986 (n + 1) + 2) ^ 2 : ℚ) / 12)

end

end A181093.P16987287784749837995

/-! ## A181093.P11094152945490167154

`A256320(A088762(n+1))`
-/

namespace A181093.P11094152945490167154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 (A088762 (n + 1)).toNat

end

end A181093.P11094152945490167154

/-! ## A181093.P8889005240667172587

`A032765(A015913(n+1))`
-/

namespace A181093.P8889005240667172587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A015913 (n + 1)).toNat

end

end A181093.P8889005240667172587

/-! ## A181093.P7900352120803137893

`A032765(A172238(n+2))`
-/

namespace A181093.P7900352120803137893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A172238 (n + 2)).toNat

end

end A181093.P7900352120803137893

/-! ## A181093.P1100728427066263988

`A335583(A165986(n+1))`
-/

namespace A181093.P1100728427066263988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335583 (A165986 (n + 1)).toNat

end

end A181093.P1100728427066263988

/-! ## A181093.P10786249924133793808

`A174709(A167607(n+1))`
-/

namespace A181093.P10786249924133793808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A167607 (n + 1)).toNat

end

end A181093.P10786249924133793808

/-!
# A181094: Permutation of positive integers created from sequence A000040(n) = primes.

The programs for A181094, there is no canonical definition to state claims against.
-/

/-! ## A181094.P2526131589528318674

`A181095(C(2, C(3, n²))+n)`
-/

namespace A181094.P2526131589528318674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A181094.P2526131589528318674

/-! ## A181094.P147256376029799789

`A181095(n+1)+round(cos(4)^n)`
-/

namespace A181094.P147256376029799789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (n + 1) + SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

end

end A181094.P147256376029799789

/-! ## A181094.P9289815673502032656

`A181440(A181095(n+1))`
-/

namespace A181094.P9289815673502032656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A181095 (n + 1)).toNat

end

end A181094.P9289815673502032656

/-! ## A181094.P12138886911420993672

`A181095(A000720(p?[xor(1, n)]))`
-/

namespace A181094.P12138886911420993672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A181094.P12138886911420993672

/-! ## A181094.P8436643150998967415

`A181095(A240352(n)+1+n)`
-/

namespace A181094.P8436643150998967415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A240352 n + 1 + (n : ℤ)).toNat

end

end A181094.P8436643150998967415

/-! ## A181094.P6964195135516256070

`A181095(A240354(n)+1+n)`
-/

namespace A181094.P6964195135516256070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A240354 n + 1 + (n : ℤ)).toNat

end

end A181094.P6964195135516256070

/-! ## A181094.P8346310647955546528

`A181095(A240356(n)+1+n)`
-/

namespace A181094.P8346310647955546528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A240356 n + 1 + (n : ℤ)).toNat

end

end A181094.P8346310647955546528

/-! ## A181094.P4542719364955374570

`A181095(A154955(n+1)+1+n)`
-/

namespace A181094.P4542719364955374570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A181094.P4542719364955374570

/-! ## A181094.P11984718148847470394

`A181095(n+1)+A008683(A007434(n+1))`
-/

namespace A181094.P11984718148847470394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (n + 1) + A008683 (A007434 (n + 1)).toNat

end

end A181094.P11984718148847470394

/-! ## A181094.P8491026293614346863

`A181095(n+1)+A008683(A046678(n+1))`
-/

namespace A181094.P8491026293614346863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (n + 1) + A008683 (A046678 (n + 1)).toNat

end

end A181094.P8491026293614346863

/-!
# A181095: Permutation of positive integers created from sequence A008578(n) = noncomposites.

The programs for A181095, there is no canonical definition to state claims against.
-/

/-! ## A181095.P7915395565155754305

`A181094(n+1)/a(C(2, n+2))` with `a(0)=1, a(1)=2`
-/

namespace A181095.P7915395565155754305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A181094 (n + 1) : ℚ) / a (Nat.choose 2 (n + 2))

end

end A181095.P7915395565155754305

/-! ## A181095.P7180383137545389194

`A181440(A181094(n+1))`
-/

namespace A181095.P7180383137545389194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A181094 (n + 1)).toNat

end

end A181095.P7180383137545389194

/-! ## A181095.P2646028456473719229

`A181094(A240352(n)+1+n)`
-/

namespace A181095.P2646028456473719229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (A240352 n + 1 + (n : ℤ)).toNat

end

end A181095.P2646028456473719229

/-! ## A181095.P12540583650453571568

`A181094(A240354(n)+1+n)`
-/

namespace A181095.P12540583650453571568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (A240354 n + 1 + (n : ℤ)).toNat

end

end A181095.P12540583650453571568

/-! ## A181095.P3933260416078358755

`A181094(A240356(n)+1+n)`
-/

namespace A181095.P3933260416078358755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (A240356 n + 1 + (n : ℤ)).toNat

end

end A181095.P3933260416078358755

/-! ## A181095.P5091823568735783663

`A181094(A154955(n+1)+1+n)`
-/

namespace A181095.P5091823568735783663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A181095.P5091823568735783663

/-! ## A181095.P8347720844011173226

`A181094(n+1)-A008683(A086570(n))`
-/

namespace A181095.P8347720844011173226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (n + 1) - A008683 (A086570 n).toNat

end

end A181095.P8347720844011173226

/-! ## A181095.P15561013280265678073

`A181094(n+1)-A008683(A183226(n))`
-/

namespace A181095.P15561013280265678073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (n + 1) - A008683 (A183226 n).toNat

end

end A181095.P15561013280265678073

/-! ## A181095.P5316711581626086717

`A181094(n+1)-A008683(A270681(n))`
-/

namespace A181095.P5316711581626086717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (n + 1) - A008683 (A270681 n).toNat

end

end A181095.P5316711581626086717

/-! ## A181095.P15105470360567109186

`A181094(n+1)-A008683(A067945(n+1))`
-/

namespace A181095.P15105470360567109186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181094 (n + 1) - A008683 (A067945 (n + 1)).toNat

end

end A181095.P15105470360567109186

/-!
# A181097: Permutation of positive integers created from sequence A002808(n) = composites.

The programs for A181097, there is no canonical definition to state claims against.
-/

/-! ## A181097.P15019183680619738590

`A206798(record[A055646(n+1)%A077168(n+7)])`
-/

namespace A181097.P15019183680619738590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055646 (n + 1)) (A077168 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A181097.P15019183680619738590

/-! ## A181097.P4247889980109911837

`A206798(A077168(n))`
-/

namespace A181097.P4247889980109911837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A077168 n).toNat

end

end A181097.P4247889980109911837

/-! ## A181097.P12433668985394962890

`A206798(A043319(n+1))`
-/

namespace A181097.P12433668985394962890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A043319 (n + 1)).toNat

end

end A181097.P12433668985394962890

/-! ## A181097.P15638834689944171491

`A206798(A044916(n+1))`
-/

namespace A181097.P15638834689944171491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A044916 (n + 1)).toNat

end

end A181097.P15638834689944171491

/-! ## A181097.P12540998430329494839

`A206798(A055646(n+1))`
-/

namespace A181097.P12540998430329494839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A055646 (n + 1)).toNat

end

end A181097.P12540998430329494839

/-!
# A181098: Primefree centuries (i.e., numbers k such that no prime exists between 100*k and 100*k+99).

The programs for A181098, there is no canonical definition to state claims against.
-/

/-! ## A181098.P8126991640825607630

`A136295(n+1)/A036507(A342309(2*n+5))`
-/

namespace A181098.P8126991640825607630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136295 (n + 1) : ℚ) / (A036507 (A342309 (2 * n + 5)).toNat : ℚ)

end

end A181098.P8126991640825607630

/-!
# A181099: Exchange rightmost two ternary digits of n > 1; a(0)=0, a(1)=3.

The programs for A181099, the canonical program `A181099.P14032002865666877848` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A181099 has offset 0).

The definition of A181099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A181099.P14032002865666877848

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=1, a(4)=4, a(5)=7, a(6)=2, a(7)=5, a(8)=8, a(9)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A181099

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P14032002865666877848.Spec : Prop :=
  ∀ n, P14032002865666877848.a n = A181099 n

theorem P14032002865666877848.correct : P14032002865666877848.Spec := by
  intro n
  simp only [A181099]

end A181099

/-! ## A181099.P13961188739273812555

`A130793(n)+n-A130793(A002264(n))`
-/

namespace A181099.P13961188739273812555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130793 n + ((n : ℤ) - A130793 (A002264 n).toNat)

end

end A181099.P13961188739273812555

namespace A181099

/-- `A130793(n)+n-A130793(A002264(n))` -/
def P13961188739273812555.Spec : Prop :=
  ∀ n, P13961188739273812555.a n = A181099 n

end A181099

/-! ## A181099.P11908052013066345730

`A163327(lt[A163327(n), 27])`
-/

namespace A181099.P11908052013066345730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A181099.P11908052013066345730

namespace A181099

/-- `A163327(lt[A163327(n), 27])` -/
def P11908052013066345730.Spec : Prop :=
  ∀ n, P11908052013066345730.a n = A181099 n

end A181099

