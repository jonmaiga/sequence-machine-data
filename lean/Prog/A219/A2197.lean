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
import Seq.B000.C018
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A219700: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 4 array.

The programs for A219700, there is no canonical definition to state claims against.
-/

/-! ## A219700.P15978054058844782558

`A219704(∑[n+3]+7)`
-/

namespace A219700.P15978054058844782558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219700.P15978054058844782558

/-! ## A219700.P5270049335721956167

`A219704(A055999(n)+10)+char[18]`
-/

namespace A219700.P5270049335721956167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219700.P5270049335721956167

/-! ## A219700.P15417110369461254209

`A219704(A055999(n)+10)%A000108(n+3)`
-/

namespace A219700.P15417110369461254209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219704 (A055999 n + 10).toNat) (A000108 (n + 3))

end

end A219700.P15417110369461254209

/-! ## A219700.P15382108946028811333

`A007318(C(2, n))*A219704(A055999(n)+10)`
-/

namespace A219700.P15382108946028811333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219704 (A055999 n + 10).toNat

end

end A219700.P15382108946028811333

/-! ## A219700.P4290113130098965305

`A000108(round(n/12))*A219704(A055999(n)+10)`
-/

namespace A219700.P4290113130098965305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) / 12)).toNat * A219704 (A055999 n + 10).toNat

end

end A219700.P4290113130098965305

/-!
# A219701: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX5 array.

The programs for A219701, there is no canonical definition to state claims against.
-/

/-! ## A219701.P15796142681904946449

`A219704(A374005(n+1))`
-/

namespace A219701.P15796142681904946449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A374005 (n + 1)).toNat

end

end A219701.P15796142681904946449

/-! ## A219701.P16851340507530991306

`A219704(A167499(n+3))`
-/

namespace A219701.P16851340507530991306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A167499 (n + 3)).toNat

end

end A219701.P16851340507530991306

/-! ## A219701.P15658512914253365790

`A219704(A155212(n)+13)`
-/

namespace A219701.P15658512914253365790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A155212 n + 13).toNat

end

end A219701.P15658512914253365790

/-! ## A219701.P9158132962075311634

`A219704(A056000(n)+15)`
-/

namespace A219701.P9158132962075311634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A056000 n + 15).toNat

end

end A219701.P9158132962075311634

/-! ## A219701.P2484060780438411452

`A219704(eq[7, A066657(n)])`
-/

namespace A219701.P2484060780438411452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219701.P2484060780438411452

/-!
# A219702: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX6 array.

The programs for A219702, there is no canonical definition to state claims against.
-/

/-! ## A219702.P15899805031644667247

`A219704(A374007(n+1))`
-/

namespace A219702.P15899805031644667247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A374007 (n + 1)).toNat

end

end A219702.P15899805031644667247

/-! ## A219702.P16539719437922925396

`A219704(A166136(n+4))`
-/

namespace A219702.P16539719437922925396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A166136 (n + 4)).toNat

end

end A219702.P16539719437922925396

/-! ## A219702.P10832255939265978731

`A219704(A056115(n)+21)`
-/

namespace A219702.P10832255939265978731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A056115 n + 21).toNat

end

end A219702.P10832255939265978731

/-! ## A219702.P12398889653938651851

`A219704(A167614(n+4)+3)`
-/

namespace A219702.P12398889653938651851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A167614 (n + 4) + 3).toNat

end

end A219702.P12398889653938651851

/-! ## A219702.P131178917190594

`A219704(A000124(n+5)+5)`
-/

namespace A219702.P131178917190594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A000124 (n + 5) + 5).toNat

end

end A219702.P131178917190594

/-!
# A219703: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX7 array.

The programs for A219703, there is no canonical definition to state claims against.
-/

/-! ## A219703.P5235714644069821309

`A219704(A374008(n+1))`
-/

namespace A219703.P5235714644069821309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A374008 (n + 1)).toNat

end

end A219703.P5235714644069821309

/-! ## A219703.P12681846591523819200

`A219704(eq[11, A066657(n)])`
-/

namespace A219703.P12681846591523819200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219703.P12681846591523819200

/-! ## A219703.P12218274982587005926

`A219704(A167499(n+5)+2)`
-/

namespace A219703.P12218274982587005926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A167499 (n + 5) + 2).toNat

end

end A219703.P12218274982587005926

/-! ## A219703.P3509222814444904389

`A219704(A167614(n+5)+4)`
-/

namespace A219703.P3509222814444904389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A167614 (n + 5) + 4).toNat

end

end A219703.P3509222814444904389

/-! ## A219703.P15684837725353478195

`A219704(A133263(n+6)+5)`
-/

namespace A219703.P15684837725353478195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A133263 (n + 6) + 5).toNat

end

end A219703.P15684837725353478195

/-!
# A219704: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nXk array.

The programs for A219704, there is no canonical definition to state claims against.
-/

/-! ## A219704.P3234134879744840158

`A270393(A219502(n+1))%19`
-/

namespace A219704.P3234134879744840158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270393 (A219502 (n + 1)).toNat) 19

end

end A219704.P3234134879744840158

/-! ## A219704.P17395793536668258888

`A003056(A171597(A219816(n+1)))`
-/

namespace A219704.P17395793536668258888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A171597 (A219816 (n + 1)).toNat).toNat

end

end A219704.P17395793536668258888

/-! ## A219704.P7165656707908823254

`A087739(A174126(n)+A005145(n+1))`
-/

namespace A219704.P7165656707908823254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A174126 n + A005145 (n + 1)).toNat

end

end A219704.P7165656707908823254

/-! ## A219704.P16029028941987176907

`A117707(A219816(n+1)+A028930(n))`
-/

namespace A219704.P16029028941987176907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A219816 (n + 1) + A028930 n).toNat

end

end A219704.P16029028941987176907

/-! ## A219704.P8592074598092318482

`A117707(A219816(n+1)+A167865(n))`
-/

namespace A219704.P8592074598092318482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A219816 (n + 1) + A167865 n).toNat

end

end A219704.P8592074598092318482

/-!
# A219706: Total number of nonrecurrent elements in all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A219706, there is no canonical definition to state claims against.
-/

/-! ## A219706.P1416773191082948894

`A228154(∑[n]+1)-A063170(n)`
-/

namespace A219706.P1416773191082948894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228154 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A063170 n

end

end A219706.P1416773191082948894

/-! ## A219706.P1779965550171098601

`(n+1)*A000312(n)-A063170(n)`
-/

namespace A219706.P1779965550171098601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000312 n - A063170 n

end

end A219706.P1779965550171098601

/-! ## A219706.P15651062836646815901

`A225723(A000124(n))-A063170(n)`
-/

namespace A219706.P15651062836646815901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat - A063170 n

end

end A219706.P15651062836646815901

/-! ## A219706.P4083626304259969113

`A225723(A000124(n))+A007778(n)-A089901(n)`
-/

namespace A219706.P4083626304259969113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat + (A007778 n - A089901 n)

end

end A219706.P4083626304259969113

/-! ## A219706.P16589717632318400652

`A225723(A000124(n))-(A304866(n+1)+A190314(n))`
-/

namespace A219706.P16589717632318400652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat - (A304866 (n + 1) + A190314 n)

end

end A219706.P16589717632318400652

/-! ## A219706.P16186273156378460879

`A225723(A000124(n))-(A089901(n)-n*A000312(n))`
-/

namespace A219706.P16186273156378460879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat - (A089901 n - (n : ℤ) * A000312 n)

end

end A219706.P16186273156378460879

/-!
# A219707: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A219707, there is no canonical definition to state claims against.
-/

/-! ## A219707.P14088705222767331960

`A219714(∑[4*n]+1)`
-/

namespace A219707.P14088705222767331960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219707.P14088705222767331960

/-! ## A219707.P4529583463059359275

`record[A219714(Δ[A235355(n)])]`
-/

namespace A219707.P4529583463059359275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219707.P4529583463059359275

/-! ## A219707.P18035697986205165081

`and(-1, A219714(A001844(n)))`
-/

namespace A219707.P18035697986205165081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219714 (A001844 n).toNat)

end

end A219707.P18035697986205165081

/-!
# A219708: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 2 array.

The programs for A219708, there is no canonical definition to state claims against.
-/

/-! ## A219708.P11204805746247716457

`A219714(∑[n+2])`
-/

namespace A219708.P11204805746247716457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219708.P11204805746247716457

/-! ## A219708.P4630545262354026716

`A208615(n)*A219714(A000096(n+1))`
-/

namespace A219708.P4630545262354026716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208615 n * A219714 (A000096 (n + 1)).toNat

end

end A219708.P4630545262354026716

/-! ## A219708.P11650192998394048628

`A219714(A000096(n+1))%A154673(n+1)`
-/

namespace A219708.P11650192998394048628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219714 (A000096 (n + 1)).toNat) (A154673 (n + 1))

end

end A219708.P11650192998394048628

/-! ## A219708.P5701585516232089796

`record[A219714(gcd(n, A321791(n)))]`
-/

namespace A219708.P5701585516232089796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (Int.gcd (n : ℤ) (A321791 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219708.P5701585516232089796

/-! ## A219708.P12631872285498471105

`record[gcd(A219714(n+1), A220234(n))]`
-/

namespace A219708.P12631872285498471105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219714 (n + 1)) (A220234 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219708.P12631872285498471105

/-!
# A219709: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A219709, there is no canonical definition to state claims against.
-/

/-! ## A219709.P5022690678650133725

`A219714(∑[n+3]+1)`
-/

namespace A219709.P5022690678650133725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219709.P5022690678650133725

/-! ## A219709.P12380659111253670317

`record[A219714(A198464(n+1))]`
-/

namespace A219709.P12380659111253670317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219709.P12380659111253670317

/-! ## A219709.P382642251938108869

`A121238(n)²*A219714(A034856(n+2))`
-/

namespace A219709.P382642251938108869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n ^ 2 * A219714 (A034856 (n + 2)).toNat

end

end A219709.P382642251938108869

/-! ## A219709.P5751396226981481620

`A219714(A034856(n+2))+A180834(n+1)`
-/

namespace A219709.P5751396226981481620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A034856 (n + 2)).toNat + A180834 (n + 1)

end

end A219709.P5751396226981481620

/-! ## A219709.P1523524123791152430

`A219714(A034856(n+2))%A138409(n+1)`
-/

namespace A219709.P1523524123791152430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219714 (A034856 (n + 2)).toNat) (A138409 (n + 1))

end

end A219709.P1523524123791152430

/-!
# A219710: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 4 array.

The programs for A219710, there is no canonical definition to state claims against.
-/

/-! ## A219710.P8963849657105614832

`A219714(∑[n+4]+3)`
-/

namespace A219710.P8963849657105614832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219710.P8963849657105614832

/-!
# A219711: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 5 array.

The programs for A219711, there is no canonical definition to state claims against.
-/

/-! ## A219711.P6895496100761441620

`A219714(Δ[A264443(n)])`
-/

namespace A219711.P6895496100761441620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (f1 (n + 1) - f1 n).toNat

end

end A219711.P6895496100761441620

/-! ## A219711.P14612439979581758901

`A219714(A046691(n+3))`
-/

namespace A219711.P14612439979581758901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A046691 (n + 3)).toNat

end

end A219711.P14612439979581758901

/-! ## A219711.P17005032843039188557

`A219714(A056115(n)+11)`
-/

namespace A219711.P17005032843039188557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A056115 n + 11).toNat

end

end A219711.P17005032843039188557

/-! ## A219711.P9210844404438509719

`A219714(eq[2, A092921(n)])`
-/

namespace A219711.P9210844404438509719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219711.P9210844404438509719

/-! ## A219711.P10679579617132712275

`A219714(eq[3, A152157(n)])`
-/

namespace A219711.P10679579617132712275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219711.P10679579617132712275

/-!
# A219712: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX6 array.

The programs for A219712, there is no canonical definition to state claims against.
-/

/-! ## A219712.P4958643517280345930

`A219714(A052905(n+3))`
-/

namespace A219712.P4958643517280345930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A052905 (n + 3)).toNat

end

end A219712.P4958643517280345930

/-! ## A219712.P11488291401976861807

`A219714(A056119(n)+16)`
-/

namespace A219712.P11488291401976861807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A056119 n + 16).toNat

end

end A219712.P11488291401976861807

/-! ## A219712.P1110508989406803278

`A219714(eq[3, A219347(n)])`
-/

namespace A219712.P1110508989406803278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219712.P1110508989406803278

/-! ## A219712.P3962242687273222005

`A219714(eq[3, A274661(n)])`
-/

namespace A219712.P3962242687273222005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219712.P3962242687273222005

/-!
# A219713: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX7 array.

The programs for A219713, there is no canonical definition to state claims against.
-/

/-! ## A219713.P4559853431243228923

`A219714(A055999(n+4))`
-/

namespace A219713.P4559853431243228923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A055999 (n + 4)).toNat

end

end A219713.P4559853431243228923

/-! ## A219713.P18406377168520851812

`A219714(eq[4, A219347(n)])`
-/

namespace A219713.P18406377168520851812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219713.P18406377168520851812

/-! ## A219713.P3030940630357204

`A219714(eq[6, A193592(n)])`
-/

namespace A219713.P3030940630357204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219713.P3030940630357204

/-!
# A219715: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 2 X n array.

The programs for A219715, there is no canonical definition to state claims against.
-/

/-! ## A219715.P14447577596502528249

`A219714(∑[n+1]+2)`
-/

namespace A219715.P14447577596502528249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219715.P14447577596502528249

/-! ## A219715.P11567828296913356396

`record[A219714(n+3)/A155812(n)]`
-/

namespace A219715.P11567828296913356396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219714 (n + 3) : ℚ) / (A155812 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219715.P11567828296913356396

/-!
# A219716: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 3Xn array.

The programs for A219716, there is no canonical definition to state claims against.
-/

/-! ## A219716.P9123443436109660563

`A219714(∑[n+2]+4)`
-/

namespace A219716.P9123443436109660563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219716.P9123443436109660563

/-! ## A219716.P2527055397479323754

`or(char[2], A219714(A167614(n+1)))`
-/

namespace A219716.P2527055397479323754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219714 (A167614 (n + 1)).toNat)

end

end A219716.P2527055397479323754

/-! ## A219716.P7157083575696134707

`A219714(A167614(n+1))+A025437(n)`
-/

namespace A219716.P7157083575696134707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167614 (n + 1)).toNat + A025437 n

end

end A219716.P7157083575696134707

/-! ## A219716.P14285583294649209250

`A219714(A167614(n+1))+A025442(n)`
-/

namespace A219716.P14285583294649209250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167614 (n + 1)).toNat + A025442 n

end

end A219716.P14285583294649209250

/-! ## A219716.P15396506208049900380

`A219714(A167614(n+1))+A067169(n)`
-/

namespace A219716.P15396506208049900380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A219716.P15396506208049900380

/-!
# A219717: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 4Xn array.

The programs for A219717, there is no canonical definition to state claims against.
-/

/-! ## A219717.P12271172777122288111

`A219714(A141214(n)+7)`
-/

namespace A219717.P12271172777122288111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A141214 n + 7).toNat

end

end A219717.P12271172777122288111

/-! ## A219717.P6143211183232573994

`A219714(A052905(n)+9)`
-/

namespace A219717.P6143211183232573994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A052905 n + 9).toNat

end

end A219717.P6143211183232573994

/-! ## A219717.P3131779869237090419

`A219714(A055999(n)+10)`
-/

namespace A219717.P3131779869237090419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A055999 n + 10).toNat

end

end A219717.P3131779869237090419

/-! ## A219717.P3866015247858597499

`A219714(eq[5, A066657(n)])`
-/

namespace A219717.P3866015247858597499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219717.P3866015247858597499

/-! ## A219717.P4014487585315367355

`A219714(A167614(n+2)+1)`
-/

namespace A219717.P4014487585315367355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167614 (n + 2) + 1).toNat

end

end A219717.P4014487585315367355

/-!
# A219718: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 5Xn array.

The programs for A219718, there is no canonical definition to state claims against.
-/

/-! ## A219718.P15418178172495206245

`A219714(A167499(n+3))`
-/

namespace A219718.P15418178172495206245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167499 (n + 3)).toNat

end

end A219718.P15418178172495206245

/-! ## A219718.P14697877740560381616

`A219714(A155212(n)+13)`
-/

namespace A219718.P14697877740560381616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A155212 n + 13).toNat

end

end A219718.P14697877740560381616

/-! ## A219718.P2406157885201889711

`A219714(A056000(n)+15)`
-/

namespace A219718.P2406157885201889711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A056000 n + 15).toNat

end

end A219718.P2406157885201889711

/-! ## A219718.P18063857849527128156

`A219714(eq[7, A066657(n)])`
-/

namespace A219718.P18063857849527128156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219718.P18063857849527128156

/-! ## A219718.P12913769137894868838

`A219714(A166136(n+3)-1)`
-/

namespace A219718.P12913769137894868838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A166136 (n + 3) - 1).toNat

end

end A219718.P12913769137894868838

/-!
# A219719: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 6Xn array.

The programs for A219719, there is no canonical definition to state claims against.
-/

/-! ## A219719.P3069043228994283503

`A219714(A056115(n)+21)`
-/

namespace A219719.P3069043228994283503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A056115 n + 21).toNat

end

end A219719.P3069043228994283503

/-! ## A219719.P1667734919689382324

`A219714(A167499(n+4)+1)`
-/

namespace A219719.P1667734919689382324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167499 (n + 4) + 1).toNat

end

end A219719.P1667734919689382324

/-! ## A219719.P548141625046723429

`A219714(A167614(n+4)+3)`
-/

namespace A219719.P548141625046723429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A167614 (n + 4) + 3).toNat

end

end A219719.P548141625046723429

/-! ## A219719.P17056404207699268064

`A219714(A000217(n+5)+6)`
-/

namespace A219719.P17056404207699268064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A000217 (n + 5) + 6).toNat

end

end A219719.P17056404207699268064

/-!
# A219720: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 7Xn array.

The programs for A219720, there is no canonical definition to state claims against.
-/

/-! ## A219720.P12326031599953463771

`A219714(A056119(n)+28)`
-/

namespace A219720.P12326031599953463771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (A056119 n + 28).toNat

end

end A219720.P12326031599953463771

/-! ## A219720.P6227772802905904722

`A219714(eq[11, A066657(n)])`
-/

namespace A219720.P6227772802905904722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219720.P6227772802905904722

/-! ## A219720.P15693899339654667366

`record[A219714(lt[8, A066657(n)])]`
-/

namespace A219720.P15693899339654667366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219714 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219720.P15693899339654667366

/-!
# A219721: Expansion of (1+7*x+5*x^2+7*x^3+x^4)/(1-x-x^4+x^5).

The programs for A219721, the canonical program `A219721.P12756955811640166151` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219721 has offset 0).

The definition of A219721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+7x+5x^2+7x^3+x^4)/(1-x-x^4+x^5))` (program `A219721.P12756955811640166151`, by `A219721.P12756955811640166151.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219721.P12756955811640166151

`ogf((1+7x+5x^2+7x^3+x^4)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219721

/-- `ogf((1+7x+5x^2+7x^3+x^4)/(1-x-x^4+x^5))` -/
def P12756955811640166151.Spec : Prop :=
  ∀ n, P12756955811640166151.a n = A219721 n

theorem P12756955811640166151.correct : P12756955811640166151.Spec := by
  intro n
  simp only [A219721]

end A219721

/-! ## A219721.P16012062308345691021

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=7, a(2)=5, a(3)=7, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A219721.P16012062308345691021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 5, 7, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219721.P16012062308345691021

namespace A219721

/-- `∑[floor(a(n-4))]` -/
def P16012062308345691021.Spec : Prop :=
  ∀ n, (P16012062308345691021.a n : ℤ) = A219721 n

end A219721

/-! ## A219721.P3893483532117469515

`∑[a(n-4)%8]` with `a(0)=1, a(1)=7, a(2)=5, a(3)=7, a(4)=2`
-/

namespace A219721.P3893483532117469515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 5, 7, 2] fun n f1 =>
  f1 (n - 4) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219721.P3893483532117469515

namespace A219721

/-- `∑[a(n-4)%8]` -/
def P3893483532117469515.Spec : Prop :=
  ∀ n, (P3893483532117469515.a n : ℤ) = A219721 n

end A219721

/-! ## A219721.P10119203384265329808

`or(1, 7*n+3)-comp[4*round(n/3)+n]`
-/

namespace A219721.P10119203384265329808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (7 * n + 3) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A219721.P10119203384265329808

namespace A219721

/-- `or(1, 7*n+3)-comp[4*round(n/3)+n]` -/
def P10119203384265329808.Spec : Prop :=
  ∀ n, P10119203384265329808.a n = A219721 n

end A219721

/-! ## A219721.P17965761575188170788

`∑[xor(1, A176895(n)+2)]-1`
-/

namespace A219721.P17965761575188170788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176895 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219721.P17965761575188170788

namespace A219721

/-- `∑[xor(1, A176895(n)+2)]-1` -/
def P17965761575188170788.Spec : Prop :=
  ∀ n, P17965761575188170788.a n = A219721 n

end A219721

/-! ## A219721.P8623292157351781466

`∑[dr(∑[A147993(n+1)])]+n`
-/

namespace A219721.P8623292157351781466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147993 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219721.P8623292157351781466

namespace A219721

/-- `∑[dr(∑[A147993(n+1)])]+n` -/
def P8623292157351781466.Spec : Prop :=
  ∀ n, (P8623292157351781466.a n : ℤ) = A219721 n

end A219721

/-! ## A219721.P14975022182030577780

`A180713(n)+A056991(n+1)`
-/

namespace A219721.P14975022182030577780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 n + A056991 (n + 1)

end

end A219721.P14975022182030577780

namespace A219721

/-- `A180713(n)+A056991(n+1)` -/
def P14975022182030577780.Spec : Prop :=
  ∀ n, P14975022182030577780.a n = A219721 n

end A219721

/-! ## A219721.P14020846102175150088

`A271324(n)+A047452(n+1)`
-/

namespace A219721.P14020846102175150088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 n + A047452 (n + 1)

end

end A219721.P14020846102175150088

namespace A219721

/-- `A271324(n)+A047452(n+1)` -/
def P14020846102175150088.Spec : Prop :=
  ∀ n, P14020846102175150088.a n = A219721 n

end A219721

/-! ## A219721.P7906511520761184867

`A113803(n+1)-A047362(n+1)`
-/

namespace A219721.P7906511520761184867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) - A047362 (n + 1)

end

end A219721.P7906511520761184867

namespace A219721

/-- `A113803(n+1)-A047362(n+1)` -/
def P7906511520761184867.Spec : Prop :=
  ∀ n, P7906511520761184867.a n = A219721 n

end A219721

/-! ## A219721.P9468748732561259375

`A306771(n+1)-A379211(n+1)`
-/

namespace A219721.P9468748732561259375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306771 (n + 1) - A379211 (n + 1)

end

end A219721.P9468748732561259375

namespace A219721

/-- `A306771(n+1)-A379211(n+1)` -/
def P9468748732561259375.Spec : Prop :=
  ∀ n, P9468748732561259375.a n = A219721 n

end A219721

/-! ## A219721.P10987183020785811573

`2*A047276(n+1)-A047307(n+1)`
-/

namespace A219721.P10987183020785811573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047276 (n + 1) - A047307 (n + 1)

end

end A219721.P10987183020785811573

namespace A219721

/-- `2*A047276(n+1)-A047307(n+1)` -/
def P10987183020785811573.Spec : Prop :=
  ∀ n, P10987183020785811573.a n = A219721 n

end A219721

/-! ## A219721.P5626577285475751732

`7*n+4-A047362(A109613(n)+1)`
-/

namespace A219721.P5626577285475751732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 4 : ℤ) - A047362 (A109613 n + 1).toNat

end

end A219721.P5626577285475751732

namespace A219721

/-- `7*n+4-A047362(A109613(n)+1)` -/
def P5626577285475751732.Spec : Prop :=
  ∀ n, P5626577285475751732.a n = A219721 n

end A219721

/-! ## A219721.P8494578826726668198

`A008585(n-A002265(n))+A007310(n+1)`
-/

namespace A219721.P8494578826726668198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 ((n : ℤ) - A002265 n).toNat + A007310 (n + 1)

end

end A219721.P8494578826726668198

namespace A219721

/-- `A008585(n-A002265(n))+A007310(n+1)` -/
def P8494578826726668198.Spec : Prop :=
  ∀ n, P8494578826726668198.a n = A219721 n

end A219721

/-! ## A219721.P6610548986672964571

`A047322(n+1)+A047336(n+1)+A000035(n)`
-/

namespace A219721.P6610548986672964571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (n + 1) + (A047336 (n + 1) + A000035 n)

end

end A219721.P6610548986672964571

namespace A219721

/-- `A047322(n+1)+A047336(n+1)+A000035(n)` -/
def P6610548986672964571.Spec : Prop :=
  ∀ n, P6610548986672964571.a n = A219721 n

end A219721

/-! ## A219721.P15833408990080839019

`A032766(n+1)+A151972(n+2)-1`
-/

namespace A219721.P15833408990080839019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (A151972 (n + 2) - 1)

end

end A219721.P15833408990080839019

namespace A219721

/-- `A032766(n+1)+A151972(n+2)-1` -/
def P15833408990080839019.Spec : Prop :=
  ∀ n, P15833408990080839019.a n = A219721 n

end A219721

/-! ## A219721.P381185529937222738

`A047336(comp[3*n+1]+1)`
-/

namespace A219721.P381185529937222738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A219721.P381185529937222738

namespace A219721

/-- `A047336(comp[3*n+1]+1)` -/
def P381185529937222738.Spec : Prop :=
  ∀ n, P381185529937222738.a n = A219721 n

end A219721

/-! ## A219721.P9936753335298680672

`A047382(comp[3*n+1]+1)+1`
-/

namespace A219721.P9936753335298680672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A219721.P9936753335298680672

namespace A219721

/-- `A047382(comp[3*n+1]+1)+1` -/
def P9936753335298680672.Spec : Prop :=
  ∀ n, P9936753335298680672.a n = A219721 n

end A219721

/-! ## A219721.P14586485144769294875

`A271324(n)+A047409(2*(n+1))`
-/

namespace A219721.P14586485144769294875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 n + A047409 (2 * (n + 1))

end

end A219721.P14586485144769294875

namespace A219721

/-- `A271324(n)+A047409(2*(n+1))` -/
def P14586485144769294875.Spec : Prop :=
  ∀ n, P14586485144769294875.a n = A219721 n

end A219721

/-! ## A219721.P12720873342758721487

`A047312(2*(n+1))+A047274(n+2)-A047312(n+2)`
-/

namespace A219721.P12720873342758721487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047312 (2 * (n + 1)) + (A047274 (n + 2) - A047312 (n + 2))

end

end A219721.P12720873342758721487

namespace A219721

/-- `A047312(2*(n+1))+A047274(n+2)-A047312(n+2)` -/
def P12720873342758721487.Spec : Prop :=
  ∀ n, P12720873342758721487.a n = A219721 n

end A219721

/-! ## A219721.P16478802176521877553

`A235700(2*(n+1))+A110657(2*n)-A110657(n+1)`
-/

namespace A219721.P16478802176521877553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (2 * (n + 1)) + (A110657 (2 * n) - A110657 (n + 1))

end

end A219721.P16478802176521877553

namespace A219721

/-- `A235700(2*(n+1))+A110657(2*n)-A110657(n+1)` -/
def P16478802176521877553.Spec : Prop :=
  ∀ n, P16478802176521877553.a n = A219721 n

end A219721

/-!
# A219722: Primes expressible as x^3 + 2*y^3 (x, y > 0) in two ways.

The programs for A219722, there is no canonical definition to state claims against.
-/

/-! ## A219722.P10660082839980471968

`p?[A219725(n+1)]`
-/

namespace A219722.P10660082839980471968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219722.P10660082839980471968

/-!
# A219726: Integers of the form x^3 + 2y^3 (x, y > 0).

The programs for A219726, there is no canonical definition to state claims against.
-/

/-! ## A219726.P4081845553529098946

`lt[A025469(n), A025456(n)]`
-/

namespace A219726.P4081845553529098946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219726.P4081845553529098946

/-! ## A219726.P6539152956983808131

`eq[1, gcd(A051344(n), A235319(n+1))]`
-/

namespace A219726.P6539152956983808131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051344 n) (A235319 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219726.P6539152956983808131

/-! ## A219726.P4645050591762033306

`eq[1, A228826(3^A051344(n))]`
-/

namespace A219726.P4645050591762033306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A051344 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219726.P4645050591762033306

/-! ## A219726.P3920208697047654865

`lt[A103840((2-A051344(n))^6+1), 1]`
-/

namespace A219726.P3920208697047654865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 ((2 - A051344 n) ^ 6 + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219726.P3920208697047654865

/-! ## A219726.P16176120045995641441

`eq[A025456(n), A330098(n+1)]`
-/

namespace A219726.P16176120045995641441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219726.P16176120045995641441

/-!
# A219728: Squares of the form x^3 + 2*y^3, with x, y > 0.

The programs for A219728, there is no canonical definition to state claims against.
-/

/-! ## A219728.P11624307623020189512

`∩[A219726(n+1), n²]`
-/

namespace A219728.P11624307623020189512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A219728.P11624307623020189512

/-!
# A219729: Sum_{x <= n} largest divisor of x that is <= sqrt(x).

The programs for A219729, there is no canonical definition to state claims against.
-/

/-! ## A219729.P17305078614706794861

`∑[A033676(n+1)]`
-/

namespace A219729.P17305078614706794861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P17305078614706794861

/-! ## A219729.P16030718083336452976

`∑[A162348(Δ[n²])]`
-/

namespace A219729.P16030718083336452976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P16030718083336452976

/-! ## A219729.P1300427399420973731

`∑[(n+1)/A033677(n+1)]`
-/

namespace A219729.P1300427399420973731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P1300427399420973731

/-! ## A219729.P6708192451705532517

`A219730(n+1)-A161416(n+1)`
-/

namespace A219729.P6708192451705532517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219730 (n + 1) - A161416 (n + 1)

end

end A219729.P6708192451705532517

/-! ## A219729.P7451975899723748932

`∑[A033677(n+1)-A056737(n+1)]`
-/

namespace A219729.P7451975899723748932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A056737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P7451975899723748932

/-! ## A219729.P285216947520541915

`∑[A063655(n+1)-A033677(n+1)]`
-/

namespace A219729.P285216947520541915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P285216947520541915

/-! ## A219729.P16599020874215466397

`∑[A207375(∑[A169695(n)])]`
-/

namespace A219729.P16599020874215466397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P16599020874215466397

/-! ## A219729.P6040807037264418020

`∑[A161906(A094820(n+1))]`
-/

namespace A219729.P6040807037264418020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A094820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P6040807037264418020

/-! ## A219729.P7135459277788846968

`∑[A161906(∑[A038548(n+1)])]`
-/

namespace A219729.P7135459277788846968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P7135459277788846968

/-! ## A219729.P12875234679271813912

`∑[A161906(A091627(n+1)+1)]`
-/

namespace A219729.P12875234679271813912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A091627 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P12875234679271813912

/-! ## A219729.P9041972693259265668

`∑[A161906(A211275(2*(n+1)))]`
-/

namespace A219729.P9041972693259265668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A211275 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P9041972693259265668

/-! ## A219729.P9878955603084579838

`∑[A161906(A161842(n+1)/2)]`
-/

namespace A219729.P9878955603084579838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (SequenceMachineLib.roundAway ((A161842 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P9878955603084579838

/-! ## A219729.P9878191033404596613

`∑[A002034(A072499(n+1))]`
-/

namespace A219729.P9878191033404596613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A072499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219729.P9878191033404596613

/-!
# A219730: Sum_{x <= n} smallest divisor of x that is >= sqrt(x).

The programs for A219730, there is no canonical definition to state claims against.
-/

/-! ## A219730.P5364606761549563404

`∑[A033677(n+1)]`
-/

namespace A219730.P5364606761549563404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P5364606761549563404

/-! ## A219730.P13487382491051972791

`∑[A162348(2*(n+1))]`
-/

namespace A219730.P13487382491051972791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P13487382491051972791

/-! ## A219730.P8447801104684186377

`∑[A248835(n+1)-(n+1)]`
-/

namespace A219730.P8447801104684186377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P8447801104684186377

/-! ## A219730.P13309827041031305487

`∑[(n+1)/A033676(n+1)]`
-/

namespace A219730.P13309827041031305487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P13309827041031305487

/-! ## A219730.P8959781252711316854

`∑[(n+1)/A162348(Δ[n²])]`
-/

namespace A219730.P8959781252711316854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A162348 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P8959781252711316854

/-! ## A219730.P12541189360688847235

`∑[sqrt(A139717(n+1)+n+1)]`
-/

namespace A219730.P12541189360688847235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A139717 (n + 1) + (n + 1 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P12541189360688847235

/-! ## A219730.P8749289899394574708

`A219729(n+1)+A161416(n+1)`
-/

namespace A219730.P8749289899394574708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219729 (n + 1) + A161416 (n + 1)

end

end A219730.P8749289899394574708

/-! ## A219730.P7262118958117080674

`∑[A056737(n+1)+A033676(n+1)]`
-/

namespace A219730.P7262118958117080674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1) + A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P7262118958117080674

/-! ## A219730.P5291344721478136149

`∑[((-1)^A007318(n))²*A033677(Δ[n²]-n)]`
-/

namespace A219730.P5291344721478136149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A033677 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P5291344721478136149

/-! ## A219730.P13775056619254372911

`a(n-1)+A033677(n+1)%A000040(n+1)` with `a(0)=1`
-/

namespace A219730.P13775056619254372911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A033677 (n + 1)) (A000040 (n + 1))

end

end A219730.P13775056619254372911

/-! ## A219730.P9770525877892252318

`a(n-1)+A007318(C(2, n))*A033677(n+1)` with `a(0)=1`
-/

namespace A219730.P9770525877892252318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A033677 (n + 1)

end

end A219730.P9770525877892252318

/-! ## A219730.P9141444555556796907

`∑[A207375(∑[A275437(n)])]`
-/

namespace A219730.P9141444555556796907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P9141444555556796907

/-! ## A219730.P6048879815998368089

`∑[A207375(∑[A169695(n+1)])]`
-/

namespace A219730.P6048879815998368089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P6048879815998368089

/-! ## A219730.P780599425134900415

`∑[A207375(∑[A049240(n+1)+1])]`
-/

namespace A219730.P780599425134900415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P780599425134900415

/-! ## A219730.P5497657826216790290

`∑[A210959(∑[∏{e}[n+1, #+1]])]`
-/

namespace A219730.P5497657826216790290
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P5497657826216790290

/-! ## A219730.P16467825762710306636

`∑[A210959(∑[A000005(n+1)])]`
-/

namespace A219730.P16467825762710306636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P16467825762710306636

/-! ## A219730.P3403628778917466295

`∑[A234575(A033676(n+1)+∑[n])]`
-/

namespace A219730.P3403628778917466295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A033676 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219730.P3403628778917466295

/-!
# A219732: a(n) = (Product_{i=1..n-1} (2^i + 1)) modulo (2^n - 1).

The programs for A219732, there is no canonical definition to state claims against.
-/

/-! ## A219732.P10454784287504193509

`∏[or(1, 2^n)]%∑[2^n]`
-/

namespace A219732.P10454784287504193509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A219732.P10454784287504193509

/-! ## A219732.P9782416841894656624

`∏[2*floor(2^(n-1))+1]%∑[A131577(n+1)]`
-/

namespace A219732.P9782416841894656624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A219732.P9782416841894656624

/-! ## A219732.P14651353696389759555

`∏[A083318(n)]%A126646(n)`
-/

namespace A219732.P14651353696389759555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A126646 n)

end

end A219732.P14651353696389759555

/-! ## A219732.P644007993581776121

`A028362(n+1)%A126646(n)`
-/

namespace A219732.P644007993581776121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028362 (n + 1)) (A126646 n)

end

end A219732.P644007993581776121

/-! ## A219732.P7481743772522536652

`∏[A127904(n+1)]%A000225(n+1)`
-/

namespace A219732.P7481743772522536652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A000225 (n + 1))

end

end A219732.P7481743772522536652

/-!
# A219735: a(n) = (a(n-2) * a(n-1))^2, with a(0) = 1 and a(1) = 2.

The programs for A219735, the canonical program `A219735.P13110841733102147319` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219735 has offset 0).

The definition of A219735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-2)*a(n-1))²` (program `A219735.P13110841733102147319`, by `A219735.P13110841733102147319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219735.P17437023747871234223

`(a(n-1)*a(n-2))²` with `a(0)=1, a(1)=2`
-/

namespace A219735.P17437023747871234223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) * a (n - 2)) ^ 2

end

end A219735.P17437023747871234223

namespace A219735

/-- `(a(n-1)*a(n-2))²` -/
def P17437023747871234223.Spec : Prop :=
  ∀ n, (P17437023747871234223.a n : ℤ) = A219735 n

end A219735

/-! ## A219735.P13110841733102147319

`(a(n-2)*a(n-1))²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219735

/-- `(a(n-2)*a(n-1))²` -/
def P13110841733102147319.Spec : Prop :=
  ∀ n, (P13110841733102147319.a n : ℤ) = A219735 n

theorem P13110841733102147319.correct : P13110841733102147319.Spec := by
  intro n
  simp only [A219735]

end A219735

/-! ## A219735.P3682669933748058939

`(a(n-1)*a(n-2))^(4/2)` with `a(0)=1, a(1)=2`
-/

namespace A219735.P3682669933748058939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) * a (n - 2)) ^ ((4 : ℚ) / 2 : ℝ)

end

end A219735.P3682669933748058939

namespace A219735

/-- `(a(n-1)*a(n-2))^(4/2)` -/
def P3682669933748058939.Spec : Prop :=
  ∀ n, P3682669933748058939.a n = (A219735 n : ℝ)

end A219735

/-! ## A219735.P2406803948530039945

`a(n-1)²/(1/a(n-2))²` with `a(0)=1, a(1)=2`
-/

namespace A219735.P2406803948530039945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 / (1 / a (n - 2)) ^ 2

end

end A219735.P2406803948530039945

namespace A219735

/-- `a(n-1)²/(1/a(n-2))²` -/
def P2406803948530039945.Spec : Prop :=
  ∀ n, P2406803948530039945.a n = (A219735 n : ℚ)

end A219735

/-!
# A219736: The number of 2 X 2 matrices with all eigenvalues real and whose entries are integers with absolute value at most n.

The programs for A219736, there is no canonical definition to state claims against.
-/

/-! ## A219736.P15735926696572626337

`(2*(n+1)+1)^4-A207259(n+1)`
-/

namespace A219736.P15735926696572626337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 1) ^ 4 : ℤ) - A207259 (n + 1)

end

end A219736.P15735926696572626337

/-!
# A219737: Unmatched value maps: number of n X 4 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..1 n X 4 array.

The programs for A219737, there is no canonical definition to state claims against.
-/

/-! ## A219737.P6897215944389094100

`A219741(A141214(n)+7)`
-/

namespace A219737.P6897215944389094100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A141214 n + 7).toNat

end

end A219737.P6897215944389094100

/-! ## A219737.P16794154784047717329

`A219741(A052905(n)+9)`
-/

namespace A219737.P16794154784047717329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A052905 n + 9).toNat

end

end A219737.P16794154784047717329

/-! ## A219737.P1930470857547374012

`A219741(A055999(n)+10)`
-/

namespace A219737.P1930470857547374012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A055999 n + 10).toNat

end

end A219737.P1930470857547374012

/-! ## A219737.P411047491544510485

`A219741(Δ[A006503(n)]+7)`
-/

namespace A219737.P411047491544510485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (f1 (n + 1) - f1 n + 7).toNat

end

end A219737.P411047491544510485

/-! ## A219737.P11962932273852029523

`A219741(A167614(n+2)+1)`
-/

namespace A219737.P11962932273852029523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A167614 (n + 2) + 1).toNat

end

end A219737.P11962932273852029523

/-!
# A219738: Unmatched value maps: number of nX5 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..1 nX5 array.

The programs for A219738, there is no canonical definition to state claims against.
-/

/-! ## A219738.P1782436271210812607

`A219741(A167499(n+3))`
-/

namespace A219738.P1782436271210812607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A167499 (n + 3)).toNat

end

end A219738.P1782436271210812607

/-! ## A219738.P8219705826876827683

`A219741(A155212(n)+13)`
-/

namespace A219738.P8219705826876827683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A155212 n + 13).toNat

end

end A219738.P8219705826876827683

/-! ## A219738.P7638791817080833511

`A219741(A167614(n+3)+2)`
-/

namespace A219738.P7638791817080833511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A167614 (n + 3) + 2).toNat

end

end A219738.P7638791817080833511

/-! ## A219738.P863766384278289789

`A219741(A000217(n+4)+5)`
-/

namespace A219738.P863766384278289789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A000217 (n + 4) + 5).toNat

end

end A219738.P863766384278289789

/-! ## A219738.P16517591867888744386

`A219741(Δ[A008778(n)]+n+11)`
-/

namespace A219738.P16517591867888744386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (f1 (n + 1) - f1 n + (n + 11 : ℤ)).toNat

end

end A219738.P16517591867888744386

/-!
# A219739: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..1 nX6 array.

The programs for A219739, there is no canonical definition to state claims against.
-/

/-! ## A219739.P10468431279016304053

`A226444(A167487(n+8))`
-/

namespace A219739.P10468431279016304053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A167487 (n + 8)).toNat

end

end A219739.P10468431279016304053

/-! ## A219739.P4702144939177979138

`A226444(A055998(n+7)+10)`
-/

namespace A219739.P4702144939177979138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A055998 (n + 7) + 10).toNat

end

end A219739.P4702144939177979138

/-! ## A219739.P16891152937288793525

`A226444(A000096(n+9)-(n+2))`
-/

namespace A219739.P16891152937288793525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A000096 (n + 9) - (n + 2 : ℤ)).toNat

end

end A219739.P16891152937288793525

/-! ## A219739.P2966075819901291061

`A226444(A034856(n+10)-A005843(n+6))`
-/

namespace A219739.P2966075819901291061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (A034856 (n + 10) - A005843 (n + 6)).toNat

end

end A219739.P2966075819901291061

/-! ## A219739.P1523015448626584558

`A219741(Δ[A264443(n)]+10)`
-/

namespace A219739.P1523015448626584558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (f1 (n + 1) - f1 n + 10).toNat

end

end A219739.P1523015448626584558

/-!
# A219740: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..1 nX7 array.

The programs for A219740, there is no canonical definition to state claims against.
-/

/-! ## A219740.P15573027199204013721

`A219741(A167499(n+5)+2)`
-/

namespace A219740.P15573027199204013721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A167499 (n + 5) + 2).toNat

end

end A219740.P15573027199204013721

/-! ## A219740.P12843734093103958118

`A219741(A000124(n+6)+6)`
-/

namespace A219740.P12843734093103958118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A000124 (n + 6) + 6).toNat

end

end A219740.P12843734093103958118

/-! ## A219740.P15385232599455877282

`A219741(A046691(n+4)+11)`
-/

namespace A219740.P15385232599455877282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A046691 (n + 4) + 11).toNat

end

end A219740.P15385232599455877282

/-! ## A219740.P16105126844048541213

`A219741(eq[8, A131818(n+1)])`
-/

namespace A219740.P16105126844048541213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219740.P16105126844048541213

/-! ## A219740.P7916782317192904693

`A219741(A374008(n+1))`
-/

namespace A219740.P7916782317192904693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219741 (A374008 (n + 1)).toNat

end

end A219740.P7916782317192904693

/-!
# A219741: T(n,k) = Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..1 nXk array.

The programs for A219741, there is no canonical definition to state claims against.
-/

/-! ## A219741.P15141545787345678181

`A183322(n+1)+A016341(A168551(n))`
-/

namespace A219741.P15141545787345678181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183322 (n + 1) + A016341 (A168551 n).toNat

end

end A219741.P15141545787345678181

/-! ## A219741.P14460315810920256097

`A295918(n+1)-A121373(A340432(n))`
-/

namespace A219741.P14460315810920256097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (n + 1) - A121373 (A340432 n).toNat

end

end A219741.P14460315810920256097

/-! ## A219741.P1731434780711780256

`A089934(n+1)-A000593(A338029(n+1))`
-/

namespace A219741.P1731434780711780256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (n + 1) - A000593 (A338029 (n + 1)).toNat

end

end A219741.P1731434780711780256

/-! ## A219741.P4417479774946832221

`A295918(n+1)-A121373(A338029(n+1))`
-/

namespace A219741.P4417479774946832221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295918 (n + 1) - A121373 (A338029 (n + 1)).toNat

end

end A219741.P4417479774946832221

/-!
# A219742: Bernoulli denominators with 8 divisors in increasing order (without repetitions).

The programs for A219742, there is no canonical definition to state claims against.
-/

/-! ## A219742.P16758448048608041612

`6*A092307(n+1)`
-/

namespace A219742.P16758448048608041612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A092307 (n + 1)

end

end A219742.P16758448048608041612

/-! ## A219742.P3643509423140981013

`∩[A090801(n+1), A091191(n+1)]`
-/

namespace A219742.P3643509423140981013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P3643509423140981013

/-! ## A219742.P8678865009326619279

`∩[A090801(n+1), A109131(n+1)]`
-/

namespace A219742.P8678865009326619279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P8678865009326619279

/-! ## A219742.P11011480356951609233

`∩[A090801(n+1), A111592(n+1)]`
-/

namespace A219742.P11011480356951609233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P11011480356951609233

/-! ## A219742.P6692374439821656418

`∩[A090801(n+1), A125640(n+1)]`
-/

namespace A219742.P6692374439821656418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P6692374439821656418

/-! ## A219742.P444536882605851893

`∩[A090801(n+1), A138636(n+1)]`
-/

namespace A219742.P444536882605851893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P444536882605851893

/-! ## A219742.P9670289318537900583

`∩[A090801(n+1), A141545(n+1)]`
-/

namespace A219742.P9670289318537900583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P9670289318537900583

/-! ## A219742.P12724154093306079545

`∩[A090801(n+1), A160352(n+1)]`
-/

namespace A219742.P12724154093306079545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P12724154093306079545

/-! ## A219742.P14227544000277399767

`∩[A090801(n+1), A249242(n+1)]`
-/

namespace A219742.P14227544000277399767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P14227544000277399767

/-! ## A219742.P13241137561945345976

`∩[A090801(n+1), A275082(n+1)]`
-/

namespace A219742.P13241137561945345976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P13241137561945345976

/-! ## A219742.P5114452403463316799

`∩[A090801(n+1), A302574(n+1)]`
-/

namespace A219742.P5114452403463316799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P5114452403463316799

/-! ## A219742.P6515426776749904815

`∩[A090801(n+1), A328328(n+1)]`
-/

namespace A219742.P6515426776749904815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P6515426776749904815

/-! ## A219742.P13197661716427741700

`∩[A090801(n+1), A334972(n+1)]`
-/

namespace A219742.P13197661716427741700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P13197661716427741700

/-! ## A219742.P12626930727838926334

`∩[A090801(n+1), A334974(n+1)]`
-/

namespace A219742.P12626930727838926334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P12626930727838926334

/-! ## A219742.P15574701205001456888

`∩[A090801(n+1), A357696(n+1)]`
-/

namespace A219742.P15574701205001456888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P15574701205001456888

/-! ## A219742.P11848453143529002464

`∩[A090801(n+1), A372299(n+1)]`
-/

namespace A219742.P11848453143529002464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P11848453143529002464

/-! ## A219742.P4427110524922344042

`∩[A090801(n+1), A387712(n+1)]`
-/

namespace A219742.P4427110524922344042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219742.P4427110524922344042

/-!
# A219743: Numbers for which the number of distinct base 10 digits is 8.

The programs for A219743, there is no canonical definition to state claims against.
-/

/-! ## A219743.P9563371221542879149

`floor(A116670(2*n+1)/10)`
-/

namespace A219743.P9563371221542879149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116670 (2 * n + 1) : ℚ) / 10⌋

end

end A219743.P9563371221542879149

/-!
# A219747: Number of cubic plane graphs with 2n nodes, minimal face size 3 and maximal face size 6.

The programs for A219747, there is no canonical definition to state claims against.
-/

/-! ## A219747.P14518505649348677005

`A325415(A000045(n+2)-A362464(n+1))`
-/

namespace A219747.P14518505649348677005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325415 (A000045 (n + 2) - A362464 (n + 1)).toNat

end

end A219747.P14518505649348677005

/-!
# A219748: Number of cubic plane graphs with 2n nodes, minimal face size 4 and maximal face size 6.

The programs for A219748, there is no canonical definition to state claims against.
-/

/-! ## A219748.P6143301937158041324

`A121902(A208147(n+1))`
-/

namespace A219748.P6143301937158041324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A208147 (n + 1)).toNat

end

end A219748.P6143301937158041324

/-! ## A219748.P12921219124523547390

`floor(record[A358298(A108617(n))/4])`
-/

namespace A219748.P12921219124523547390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358298 (A108617 n).toNat : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A219748.P12921219124523547390

/-! ## A219748.P454031639753080082

`A056556(A046993(n+2)-A046983(n))`
-/

namespace A219748.P454031639753080082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A046993 (n + 2) - A046983 n).toNat

end

end A219748.P454031639753080082

/-! ## A219748.P6595224383152676106

`A007147(n+1)-A183018(A024563(n+1))`
-/

namespace A219748.P6595224383152676106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007147 (n + 1) - A183018 (A024563 (n + 1)).toNat

end

end A219748.P6595224383152676106

/-!
# A219751: Expansion of x^4*(2-3*x-x^2)/((1+x)*(1-2*x)^2).

The programs for A219751, the canonical program `A219751.P17769990712458853301` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219751 has offset 0).

The definition of A219751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^4-3x^5-x^6)/(1-3x+4x^3))` (program `A219751.P17769990712458853301`, by `A219751.P17769990712458853301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219751.P17769990712458853301

`ogf((2x^4-3x^5-x^6)/(1-3x+4x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219751

/-- `ogf((2x^4-3x^5-x^6)/(1-3x+4x^3))` -/
def P17769990712458853301.Spec : Prop :=
  ∀ n, P17769990712458853301.a n = A219751 n

theorem P17769990712458853301.correct : P17769990712458853301.Spec := by
  intro n
  simp only [A219751]

end A219751

/-! ## A219751.P16252458456241535779

`A219755(n)+A219754(n)`
-/

namespace A219751.P16252458456241535779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219755 n + A219754 n

end

end A219751.P16252458456241535779

namespace A219751

/-- `A219755(n)+A219754(n)` -/
def P16252458456241535779.Spec : Prop :=
  ∀ n, P16252458456241535779.a n = A219751 n

end A219751

/-! ## A219751.P8204189158505001494

`A219755(n)+A280399(round(sqrt((1-n)²+1)))/2`
-/

namespace A219751.P8204189158505001494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219755 n : ℚ) + (A280399 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A219751.P8204189158505001494

namespace A219751

/-- `A219755(n)+A280399(round(sqrt((1-n)²+1)))/2` -/
def P8204189158505001494.Spec : Prop :=
  ∀ n, P8204189158505001494.a n = (A219751 n : ℚ)

end A219751

/-! ## A219751.P15372523282379273392

`A219755(n)+ceil(A280399(n+1-2%(n+1))/2)`
-/

namespace A219751.P15372523282379273392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219755 n + ⌈(A280399 (n + 1 - 2 % (n + 1)) : ℚ) / 2⌉

end

end A219751.P15372523282379273392

namespace A219751

/-- `A219755(n)+ceil(A280399(n+1-2%(n+1))/2)` -/
def P15372523282379273392.Spec : Prop :=
  ∀ n, P15372523282379273392.a n = A219751 n

end A219751

/-! ## A219751.P16723430669256762622

`A219755(n)+ceil(A280399(A004275(n)+1-n)/2)`
-/

namespace A219751.P16723430669256762622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219755 n + ⌈(A280399 (A004275 n + (1 - (n : ℤ))).toNat : ℚ) / 2⌉

end

end A219751.P16723430669256762622

namespace A219751

/-- `A219755(n)+ceil(A280399(A004275(n)+1-n)/2)` -/
def P16723430669256762622.Spec : Prop :=
  ∀ n, P16723430669256762622.a n = A219751 n

end A219751

/-!
# A219752: Expansion of 2*x^4*(1-2*x+x^4)/((1+x)*(1-2*x)^2*(1-x-x^2)).

The programs for A219752, the canonical program `A219752.P9242710783420030097` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219752 has offset 0).

The definition of A219752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x^4-4x^5+2x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))` (program `A219752.P9242710783420030097`, by `A219752.P9242710783420030097.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219752.P17053855845539772798

`2*A219753(n)`
-/

namespace A219752.P17053855845539772798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219753 n

end

end A219752.P17053855845539772798

namespace A219752

/-- `2*A219753(n)` -/
def P17053855845539772798.Spec : Prop :=
  ∀ n, P17053855845539772798.a n = A219752 n

end A219752

/-! ## A219752.P9242710783420030097

`ogf((2x^4-4x^5+2x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219752

/-- `ogf((2x^4-4x^5+2x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))` -/
def P9242710783420030097.Spec : Prop :=
  ∀ n, P9242710783420030097.a n = A219752 n

theorem P9242710783420030097.correct : P9242710783420030097.Spec := by
  intro n
  simp only [A219752]

end A219752

/-! ## A219752.P10519876925996429712

`A219753(A028310(n))+A219753(n)`
-/

namespace A219752.P10519876925996429712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 (A028310 n).toNat + A219753 n

end

end A219752.P10519876925996429712

namespace A219752

/-- `A219753(A028310(n))+A219753(n)` -/
def P10519876925996429712.Spec : Prop :=
  ∀ n, P10519876925996429712.a n = A219752 n

end A219752

/-! ## A219752.P4615337623306823807

`A219753(A233583(n+1))+A219753(n)`
-/

namespace A219752.P4615337623306823807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 (A233583 (n + 1)).toNat + A219753 n

end

end A219752.P4615337623306823807

namespace A219752

/-- `A219753(A233583(n+1))+A219753(n)` -/
def P4615337623306823807.Spec : Prop :=
  ∀ n, P4615337623306823807.a n = A219752 n

end A219752

/-! ## A219752.P125294574593673492

`A219753(A005843(n)/2)+A219753(n)`
-/

namespace A219752.P125294574593673492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A219753 n

end

end A219752.P125294574593673492

namespace A219752

/-- `A219753(A005843(n)/2)+A219753(n)` -/
def P125294574593673492.Spec : Prop :=
  ∀ n, P125294574593673492.a n = A219752 n

end A219752

/-! ## A219752.P6351084910056670351

`A219753(A000007(n)+n)+A219753(n)`
-/

namespace A219752.P6351084910056670351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 (A000007 n + (n : ℤ)).toNat + A219753 n

end

end A219752.P6351084910056670351

namespace A219752

/-- `A219753(A000007(n)+n)+A219753(n)` -/
def P6351084910056670351.Spec : Prop :=
  ∀ n, P6351084910056670351.a n = A219752 n

end A219752

/-! ## A219752.P8344275390556052005

`A219753(A005843(n)-n)+A219753(n)`
-/

namespace A219752.P8344275390556052005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 (A005843 n - (n : ℤ)).toNat + A219753 n

end

end A219752.P8344275390556052005

namespace A219752

/-- `A219753(A005843(n)-n)+A219753(n)` -/
def P8344275390556052005.Spec : Prop :=
  ∀ n, P8344275390556052005.a n = A219752 n

end A219752

/-! ## A219752.P5471457285880806512

`A219753(n)+A219753(n%A000041(n))`
-/

namespace A219752.P5471457285880806512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 n + A219753 (Int.tmod (n : ℤ) (A000041 n)).toNat

end

end A219752.P5471457285880806512

namespace A219752

/-- `A219753(n)+A219753(n%A000041(n))` -/
def P5471457285880806512.Spec : Prop :=
  ∀ n, P5471457285880806512.a n = A219752 n

end A219752

/-! ## A219752.P13314313277434533242

`A219753(n)+A219753(n)%A027038(n)`
-/

namespace A219752.P13314313277434533242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 n + Int.tmod (A219753 n) (A027038 n)

end

end A219752.P13314313277434533242

namespace A219752

/-- `A219753(n)+A219753(n)%A027038(n)` -/
def P13314313277434533242.Spec : Prop :=
  ∀ n, P13314313277434533242.a n = A219752 n

end A219752

/-!
# A219753: Expansion of x^4*(1-2*x+x^4)/((1+x)*(1-2*x)^2*(1-x-x^2)).

The programs for A219753, the canonical program `A219753.P4355936149226435933` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219753 has offset 0).

The definition of A219753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-2x^5+x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))` (program `A219753.P4355936149226435933`, by `A219753.P4355936149226435933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219753.P4355936149226435933

`ogf((x^4-2x^5+x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219753

/-- `ogf((x^4-2x^5+x^8)/(1-4x+2x^2+7x^3-4x^4-4x^5))` -/
def P4355936149226435933.Spec : Prop :=
  ∀ n, P4355936149226435933.a n = A219753 n

theorem P4355936149226435933.correct : P4355936149226435933.Spec := by
  intro n
  simp only [A219753]

end A219753

/-! ## A219753.P6206760192638677706

`A219752(n)/2`
-/

namespace A219753.P6206760192638677706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219752 n : ℚ) / 2

end

end A219753.P6206760192638677706

namespace A219753

/-- `A219752(n)/2` -/
def P6206760192638677706.Spec : Prop :=
  ∀ n, P6206760192638677706.a n = (A219753 n : ℚ)

end A219753

/-! ## A219753.P16047361074875407594

`2^(-1)^A075109(n+1)*A219752(n)`
-/

namespace A219753.P16047361074875407594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((-1 : ℚ) ^ (A075109 (n + 1) : ℤ) : ℝ) * (A219752 n : ℝ)

end

end A219753.P16047361074875407594

namespace A219753

/-- `2^(-1)^A075109(n+1)*A219752(n)` -/
def P16047361074875407594.Spec : Prop :=
  ∀ n, P16047361074875407594.a n = (A219753 n : ℝ)

end A219753

/-! ## A219753.P7646948670722253650

`floor((A219752(n)+1)*2^A008683(A020484(n)))`
-/

namespace A219753.P7646948670722253650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219752 n + 1 : ℚ) * (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)⌋

end

end A219753.P7646948670722253650

namespace A219753

/-- `floor((A219752(n)+1)*2^A008683(A020484(n)))` -/
def P7646948670722253650.Spec : Prop :=
  ∀ n, P7646948670722253650.a n = A219753 n

end A219753

/-! ## A219753.P8341475494105570772

`2^A008683(A002148(n))*A219752(n)`
-/

namespace A219753.P8341475494105570772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A219752 n : ℚ)

end

end A219753.P8341475494105570772

namespace A219753

/-- `2^A008683(A002148(n))*A219752(n)` -/
def P8341475494105570772.Spec : Prop :=
  ∀ n, P8341475494105570772.a n = (A219753 n : ℚ)

end A219753

/-!
# A219754: Expansion of x^4*(1-x-x^2)/((1+x)*(1-2*x)*(1-x-2*x^2)).

The programs for A219754, the canonical program `A219754.P6150118574902133990` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219754 has offset 0).

The definition of A219754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-x^5-x^6)/(1-2x-3x^2+4x^3+4x^4))` (program `A219754.P6150118574902133990`, by `A219754.P6150118574902133990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219754.P6150118574902133990

`ogf((x^4-x^5-x^6)/(1-2x-3x^2+4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219754

/-- `ogf((x^4-x^5-x^6)/(1-2x-3x^2+4x^3+4x^4))` -/
def P6150118574902133990.Spec : Prop :=
  ∀ n, P6150118574902133990.a n = A219754 n

theorem P6150118574902133990.correct : P6150118574902133990.Spec := by
  intro n
  simp only [A219754]

end A219754

/-! ## A219754.P12224575274660932617

`A219751(n)-A219755(n)`
-/

namespace A219754.P12224575274660932617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n - A219755 n

end

end A219754.P12224575274660932617

namespace A219754

/-- `A219751(n)-A219755(n)` -/
def P12224575274660932617.Spec : Prop :=
  ∀ n, P12224575274660932617.a n = A219754 n

end A219754

/-! ## A219754.P2004789756506854497

`A280399(round(sqrt((1-n)²+1)))/2`
-/

namespace A219754.P2004789756506854497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280399 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A219754.P2004789756506854497

namespace A219754

/-- `A280399(round(sqrt((1-n)²+1)))/2` -/
def P2004789756506854497.Spec : Prop :=
  ∀ n, P2004789756506854497.a n = (A219754 n : ℚ)

end A219754

/-! ## A219754.P4288202868112969805

`ceil(A280399(n+1-2%(n+1))/2)`
-/

namespace A219754.P4288202868112969805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280399 (n + 1 - 2 % (n + 1)) : ℚ) / 2⌉

end

end A219754.P4288202868112969805

namespace A219754

/-- `ceil(A280399(n+1-2%(n+1))/2)` -/
def P4288202868112969805.Spec : Prop :=
  ∀ n, P4288202868112969805.a n = A219754 n

end A219754

/-! ## A219754.P8721938462883352884

`ceil(A280399(A004275(n)+1-n)/2)`
-/

namespace A219754.P8721938462883352884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280399 (A004275 n + (1 - (n : ℤ))).toNat : ℚ) / 2⌉

end

end A219754.P8721938462883352884

namespace A219754

/-- `ceil(A280399(A004275(n)+1-n)/2)` -/
def P8721938462883352884.Spec : Prop :=
  ∀ n, P8721938462883352884.a n = A219754 n

end A219754

/-! ## A219754.P8533062877068819100

`ceil(A280399(1-(n-A004275(n)))/2)`
-/

namespace A219754.P8533062877068819100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280399 (1 - ((n : ℤ) - A004275 n)).toNat : ℚ) / 2⌉

end

end A219754.P8533062877068819100

namespace A219754

/-- `ceil(A280399(1-(n-A004275(n)))/2)` -/
def P8533062877068819100.Spec : Prop :=
  ∀ n, P8533062877068819100.a n = A219754 n

end A219754

/-!
# A219755: Expansion of x^4*(1-3*x^2-x^3)/((1+x)*(1-2*x)*(1-x-2*x^2)).

The programs for A219755, the canonical program `A219755.P810050337168283635` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219755 has offset 0).

The definition of A219755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-3x^6-x^7)/(1-2x-3x^2+4x^3+4x^4))` (program `A219755.P810050337168283635`, by `A219755.P810050337168283635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219755.P810050337168283635

`ogf((x^4-3x^6-x^7)/(1-2x-3x^2+4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219755

/-- `ogf((x^4-3x^6-x^7)/(1-2x-3x^2+4x^3+4x^4))` -/
def P810050337168283635.Spec : Prop :=
  ∀ n, P810050337168283635.a n = A219755 n

theorem P810050337168283635.correct : P810050337168283635.Spec := by
  intro n
  simp only [A219755]

end A219755

/-! ## A219755.P8121365144757657737

`A219751(n)-A219754(n)`
-/

namespace A219755.P8121365144757657737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n - A219754 n

end

end A219755.P8121365144757657737

namespace A219755

/-- `A219751(n)-A219754(n)` -/
def P8121365144757657737.Spec : Prop :=
  ∀ n, P8121365144757657737.a n = A219755 n

end A219755

/-! ## A219755.P520503690617818260

`A219751(n)+A219754(n)*A260196(n)`
-/

namespace A219755.P520503690617818260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n + A219754 n * A260196 n

end

end A219755.P520503690617818260

namespace A219755

/-- `A219751(n)+A219754(n)*A260196(n)` -/
def P520503690617818260.Spec : Prop :=
  ∀ n, P520503690617818260.a n = A219755 n

end A219755

/-! ## A219755.P6148242678009258789

`A219751(n)-A280399(round(sqrt((1-n)²+1)))/2`
-/

namespace A219755.P6148242678009258789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219751 n : ℚ) - (A280399 (SequenceMachineLib.roundAway (Real.sqrt ((1 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A219755.P6148242678009258789

namespace A219755

/-- `A219751(n)-A280399(round(sqrt((1-n)²+1)))/2` -/
def P6148242678009258789.Spec : Prop :=
  ∀ n, P6148242678009258789.a n = (A219755 n : ℚ)

end A219755

/-! ## A219755.P13951483605836543419

`A219751(n)-ceil(A280399(n+1-2%(n+1))/2)`
-/

namespace A219755.P13951483605836543419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n - ⌈(A280399 (n + 1 - 2 % (n + 1)) : ℚ) / 2⌉

end

end A219755.P13951483605836543419

namespace A219755

/-- `A219751(n)-ceil(A280399(n+1-2%(n+1))/2)` -/
def P13951483605836543419.Spec : Prop :=
  ∀ n, P13951483605836543419.a n = A219755 n

end A219755

/-! ## A219755.P1158564169449873342

`A219751(n)-ceil(A280399(A004275(n)+1-n)/2)`
-/

namespace A219755.P1158564169449873342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n - ⌈(A280399 (A004275 n + (1 - (n : ℤ))).toNat : ℚ) / 2⌉

end

end A219755.P1158564169449873342

namespace A219755

/-- `A219751(n)-ceil(A280399(A004275(n)+1-n)/2)` -/
def P1158564169449873342.Spec : Prop :=
  ∀ n, P1158564169449873342.a n = A219755 n

end A219755

/-! ## A219755.P383748664535361437

`A219751(n)-ceil(A280399(1-(n-A004275(n)))/2)`
-/

namespace A219755.P383748664535361437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219751 n - ⌈(A280399 (1 - ((n : ℤ) - A004275 n)).toNat : ℚ) / 2⌉

end

end A219755.P383748664535361437

namespace A219755

/-- `A219751(n)-ceil(A280399(1-(n-A004275(n)))/2)` -/
def P383748664535361437.Spec : Prop :=
  ∀ n, P383748664535361437.a n = A219755 n

end A219755

/-!
# A219756: Expansion of x^4*(1-7*x+17*x^2-18*x^3+11*x^4-5*x^5)/((1-x)^2*(1-3*x)^2*(1-3*x+x^2)^2).

The programs for A219756, there is no canonical definition to state claims against.
-/

/-! ## A219756.P865618328094098562

`A326245(n)+A014289(A072863(n))`
-/

namespace A219756.P865618328094098562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 n + A014289 (A072863 n).toNat

end

end A219756.P865618328094098562

/-! ## A219756.P17687682102423815651

`A326245(n)+A025466(A080874(n))`
-/

namespace A219756.P17687682102423815651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 n + A025466 (A080874 n).toNat

end

end A219756.P17687682102423815651

/-! ## A219756.P730490109772656993

`A326249(A014374(n))+A326245(n)`
-/

namespace A219756.P730490109772656993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326249 (A014374 n).toNat + A326245 n

end

end A219756.P730490109772656993

/-! ## A219756.P15881982985069756217

`A326245(n)+A084904(A293607(n))`
-/

namespace A219756.P15881982985069756217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 n + A084904 (A293607 n).toNat

end

end A219756.P15881982985069756217

/-!
# A219757: Expansion of x^4*(2-7*x+6*x^2+x^3-x^4)/((1-x)*(1-2*x)^4*(1-3*x+x^2)).

The programs for A219757, there is no canonical definition to state claims against.
-/

/-! ## A219757.P12045047997515056645

`Δ[A294807(n)-A294802(n)]`
-/

namespace A219757.P12045047997515056645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 n - A294802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219757.P12045047997515056645

/-! ## A219757.P5499602083729224436

`A027870(A067336(n))-A294237(n+1)`
-/

namespace A219757.P5499602083729224436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A067336 n).toNat - A294237 (n + 1)

end

end A219757.P5499602083729224436

/-!
# A219759: Expansion of x^4*(2-12*x+24*x^2-8*x^3-41*x^4+57*x^5-16*x^6)/((1-x)*(1-3*x+x^2)*(1-2*x)^6).

The programs for A219759, there is no canonical definition to state claims against.
-/

/-! ## A219759.P12685662504951840895

`A219837(n)+A025466(A070947(n))`
-/

namespace A219759.P12685662504951840895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219837 n + A025466 (A070947 n).toNat

end

end A219759.P12685662504951840895

/-! ## A219759.P9797219977236598880

`A008647(A293507(n)+A070947(n))`
-/

namespace A219759.P9797219977236598880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A293507 n + A070947 n).toNat

end

end A219759.P9797219977236598880

/-! ## A219759.P2258369131792061733

`A219837(n)+A014375(A219844(n+1))`
-/

namespace A219759.P2258369131792061733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219837 n + A014375 (A219844 (n + 1)).toNat

end

end A219759.P2258369131792061733

/-!
# A219760: Martin Gardner's minimal no-3-in-a-line problem.

The programs for A219760, there is no canonical definition to state claims against.
-/

/-! ## A219760.P16612108249089885686

`A100995(n²*A110165(n)+1)+n+1`
-/

namespace A219760.P16612108249089885686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 ((n ^ 2 : ℤ) * A110165 n + 1).toNat + (n + 1 : ℤ)

end

end A219760.P16612108249089885686

/-! ## A219760.P6706569960294887273

`A018252(∑[A010060(A203074(n))])`
-/

namespace A219760.P6706569960294887273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A203074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219760.P6706569960294887273

/-! ## A219760.P4027819168110024259

`A239002(A020639(A087958(n)))+n+1`
-/

namespace A219760.P4027819168110024259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A020639 (A087958 n).toNat).toNat + (n + 1 : ℤ)

end

end A219760.P4027819168110024259

/-! ## A219760.P15150016005885809164

`A254667(n)+A000034(A199142(n+1))`
-/

namespace A219760.P15150016005885809164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A000034 (A199142 (n + 1)).toNat

end

end A219760.P15150016005885809164

/-! ## A219760.P5655113621675499868

`A001511(A203074(n))*A014684(n+2)`
-/

namespace A219760.P5655113621675499868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A203074 n).toNat * A014684 (n + 2)

end

end A219760.P5655113621675499868

/-!
# A219761: a(1) = 1; for n>1, a(n) = smallest integer > a(n-1) such that a(n)*a(n-i)+1 is prime for all 0 <= i <= n-1.

The programs for A219761, there is no canonical definition to state claims against.
-/

/-! ## A219761.P17742724439492921064

`(round((n-1)/2)+2)*A355648(ceil(2^(n-1)))`
-/

namespace A219761.P17742724439492921064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2) * A355648 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A219761.P17742724439492921064

/-!
# A219763: Binary numbers with curling number 1.

The programs for A219763, there is no canonical definition to state claims against.
-/

/-! ## A219763.P17298247728385896102

`A007088(A219764(n+1))`
-/

namespace A219763.P17298247728385896102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A219764 (n + 1)).toNat

end

end A219763.P17298247728385896102

/-! ## A219763.P16765655744346131834

`A007088(eq[1, A181935(n)])`
-/

namespace A219763.P16765655744346131834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219763.P16765655744346131834

/-! ## A219763.P11012334555752466283

`A007088(lt[A181935(n), 2])`
-/

namespace A219763.P11012334555752466283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219763.P11012334555752466283

/-! ## A219763.P7643063949631574828

`A007088(record[n/A181935(n)])`
-/

namespace A219763.P7643063949631574828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A181935 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A219763.P7643063949631574828

/-! ## A219763.P10246227861598561305

`record[(2-A181935(n))*A007088(n)]`
-/

namespace A219763.P10246227861598561305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A181935 n) * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219763.P10246227861598561305

/-! ## A219763.P1636563941339329222

`A185544(2*A219764(n+1))`
-/

namespace A219763.P1636563941339329222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A219764 (n + 1)).toNat

end

end A219763.P1636563941339329222

/-! ## A219763.P7709384899559357348

`A185544(A219764(n+1)+A219764(n+1))`
-/

namespace A219763.P7709384899559357348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A219764 (n + 1) + A219764 (n + 1)).toNat

end

end A219763.P7709384899559357348

/-!
# A219764: Numbers whose binary expansion has curling number 1.

The programs for A219764, there is no canonical definition to state claims against.
-/

/-! ## A219764.P14943617398926767430

`comp[A219897(n+1)]`
-/

namespace A219764.P14943617398926767430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219764.P14943617398926767430

/-! ## A219764.P14456893878536505971

`eq[1, A181935(n)]`
-/

namespace A219764.P14456893878536505971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219764.P14456893878536505971

/-! ## A219764.P3070745556069238116

`lt[A137605(A181935(n)²), 1]`
-/

namespace A219764.P3070745556069238116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 (A181935 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219764.P3070745556069238116

/-! ## A219764.P11798704536344825479

`lt[A000005(A181935(n)²), 3]`
-/

namespace A219764.P11798704536344825479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181935 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219764.P11798704536344825479

/-! ## A219764.P6378590672891514372

`record[n/A056539(A181935(n)²)]`
-/

namespace A219764.P6378590672891514372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A056539 (A181935 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P6378590672891514372

/-! ## A219764.P3026045824480463022

`record[n/A166458(A181935(n)²)]`
-/

namespace A219764.P3026045824480463022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A166458 (A181935 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P3026045824480463022

/-! ## A219764.P2477290634753717187

`record[n/A306300(A181935(n)²)]`
-/

namespace A219764.P2477290634753717187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A306300 (A181935 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P2477290634753717187

/-! ## A219764.P6383521288077381269

`record[n/A330691(A181935(n)²)]`
-/

namespace A219764.P6383521288077381269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A330691 (A181935 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P6383521288077381269

/-! ## A219764.P791297791981859343

`record[n/A014682(A181935(n)+1)]`
-/

namespace A219764.P791297791981859343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A014682 (A181935 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P791297791981859343

/-! ## A219764.P16890822064872611551

`record[A014682(2*n)/A181935(n)]`
-/

namespace A219764.P16890822064872611551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (2 * n) : ℚ) / (A181935 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P16890822064872611551

/-! ## A219764.P6447098444916088140

`lt[A181935(n)², A157532(n+1)]`
-/

namespace A219764.P6447098444916088140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219764.P6447098444916088140

/-! ## A219764.P15879286806538369397

`record[n*A015854(9*A181935(n))]`
-/

namespace A219764.P15879286806538369397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A015854 (9 * A181935 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P15879286806538369397

/-! ## A219764.P137336317142377184

`record[gcd(n, A014682(A181935(n)-1))]`
-/

namespace A219764.P137336317142377184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014682 (A181935 n - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P137336317142377184

/-! ## A219764.P8790466729187183334

`lt[A181935(n), atan(A181902(n+1))]`
-/

namespace A219764.P8790466729187183334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A181902 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A219764.P8790466729187183334

/-! ## A219764.P9664100476843867323

`record[A056539(A056539(n))/A181935(n)]`
-/

namespace A219764.P9664100476843867323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (A056539 n).toNat : ℚ) / (A181935 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P9664100476843867323

/-! ## A219764.P12177726039251541271

`record[n/A181935(A123108(2*n))]`
-/

namespace A219764.P12177726039251541271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A181935 (A123108 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P12177726039251541271

/-! ## A219764.P14031394744242829630

`record[A056239(n+1)/A181935(A056239(n+1))]`
-/

namespace A219764.P14031394744242829630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) : ℚ) / (A181935 (A056239 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219764.P14031394744242829630

/-!
# A219766: Number of nonsquare simple perfect squared rectangles of order n up to symmetry.

The programs for A219766, there is no canonical definition to state claims against.
-/

/-! ## A219766.P3315029817908909128

`A002839(n+1)-A006983(n+1)`
-/

namespace A219766.P3315029817908909128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) - A006983 (n + 1)

end

end A219766.P3315029817908909128

/-! ## A219766.P10487197115452472428

`A002839(n+1)+1-A178688(n+1)`
-/

namespace A219766.P10487197115452472428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + (1 - A178688 (n + 1))

end

end A219766.P10487197115452472428

/-! ## A219766.P11419584660224283419

`A002839(n+1)-A023443(A178688(n+1))`
-/

namespace A219766.P11419584660224283419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) - A023443 (A178688 (n + 1)).toNat

end

end A219766.P11419584660224283419

/-! ## A219766.P6423474767504635655

`A002839(A031285(n))-(A178688(n+1)-1)`
-/

namespace A219766.P6423474767504635655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (A031285 n).toNat - (A178688 (n + 1) - 1)

end

end A219766.P6423474767504635655

/-! ## A219766.P5992216304728162912

`A002839(n+1)+A181340(n+1)-A181735(n+1)`
-/

namespace A219766.P5992216304728162912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + (A181340 (n + 1) - A181735 (n + 1))

end

end A219766.P5992216304728162912

/-!
# A219767: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X n array.

The programs for A219767, there is no canonical definition to state claims against.
-/

/-! ## A219767.P14849018758602535882

`A219773(∑[4*n]+1)`
-/

namespace A219767.P14849018758602535882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219767.P14849018758602535882

/-! ## A219767.P5792081787672212598

`record[A219773(Δ[A235355(n)])]`
-/

namespace A219767.P5792081787672212598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219767.P5792081787672212598

/-! ## A219767.P463458803070384989

`record[A219773(A330613(n+1))]`
-/

namespace A219767.P463458803070384989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219767.P463458803070384989

/-! ## A219767.P538376568575250340

`A219773(A001844(n))+char[17]`
-/

namespace A219767.P538376568575250340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219767.P538376568575250340

/-! ## A219767.P7542935881322728333

`record[A219773(Δ[A079824(n+1)])]`
-/

namespace A219767.P7542935881322728333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219767.P7542935881322728333

/-!
# A219768: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 3 array.

The programs for A219768, the canonical program `A219768.P10325786432915697705` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219768 has offset 1).

The definition of A219768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219768.P9384596902966686591

`∑[∑[a(n-1)+n+1]]` with `a(0)=3, a(1)=0, a(2)=5, a(3)=7`
-/

namespace A219768.P9384596902966686591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 5, 7] fun n f2 =>
  f2 (n - 1) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219768.P9384596902966686591

namespace A219768

/-- `∑[∑[a(n-1)+n+1]]` -/
def P9384596902966686591.Spec : Prop :=
  ∀ n, (P9384596902966686591.a n : ℤ) = A219768 (n + 1)

end A219768

/-! ## A219768.P10325786432915697705

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=6, a(2)=14, a(3)=29, a(4)=56, a(5)=101`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219768

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10325786432915697705.Spec : Prop :=
  ∀ n, P10325786432915697705.a n = A219768 (n + 1)

theorem P10325786432915697705.correct : P10325786432915697705.Spec := by
  intro n
  simp only [A219768, Nat.add_sub_cancel]

end A219768

/-! ## A219768.P4120314461527796579

`∑[∑[A060577(n)]+n]+2`
-/

namespace A219768.P4120314461527796579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A219768.P4120314461527796579

namespace A219768

/-- `∑[∑[A060577(n)]+n]+2` -/
def P4120314461527796579.Spec : Prop :=
  ∀ n, P4120314461527796579.a n = A219768 (n + 1)

end A219768

/-! ## A219768.P8722067303352651228

`A252814(A028310(n))+A008574(n)`
-/

namespace A219768.P8722067303352651228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252814 (A028310 n).toNat + A008574 n

end

end A219768.P8722067303352651228

namespace A219768

/-- `A252814(A028310(n))+A008574(n)` -/
def P8722067303352651228.Spec : Prop :=
  ∀ n, P8722067303352651228.a n = A219768 (n + 1)

end A219768

/-! ## A219768.P17953057011604307732

`record[A219286(n+1)-∑[A055999(n)]]`
-/

namespace A219768.P17953057011604307732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219286 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219768.P17953057011604307732

namespace A219768

/-- `record[A219286(n+1)-∑[A055999(n)]]` -/
def P17953057011604307732.Spec : Prop :=
  ∀ n, P17953057011604307732.a n = A219768 (n + 1)

end A219768

/-! ## A219768.P11020712923505977315

`A252814(A028310(n))+record[A022998(n+1)]`
-/

namespace A219768.P11020712923505977315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252814 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219768.P11020712923505977315

namespace A219768

/-- `A252814(A028310(n))+record[A022998(n+1)]` -/
def P11020712923505977315.Spec : Prop :=
  ∀ n, P11020712923505977315.a n = A219768 (n + 1)

end A219768

/-!
# A219769: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 4 array.

The programs for A219769, there is no canonical definition to state claims against.
-/

/-! ## A219769.P13550610652064384301

`A219773(∑[n+4]+3)`
-/

namespace A219769.P13550610652064384301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219769.P13550610652064384301

/-! ## A219769.P17909745274221106085

`A219773(A027379(n+2))*A254609(n)`
-/

namespace A219769.P17909745274221106085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A027379 (n + 2)).toNat * A254609 n

end

end A219769.P17909745274221106085

/-! ## A219769.P17784582177381086681

`A219773(A027379(n+2))*A254730(n)`
-/

namespace A219769.P17784582177381086681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A027379 (n + 2)).toNat * A254730 n

end

end A219769.P17784582177381086681

/-! ## A219769.P7037052726520471191

`A219773(A141214(n+1))+A102683(2*n)`
-/

namespace A219769.P7037052726520471191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A141214 (n + 1)).toNat + A102683 (2 * n)

end

end A219769.P7037052726520471191

/-! ## A219769.P17979596554696500437

`A219773(A141214(n+1))%A113627(n+1)`
-/

namespace A219769.P17979596554696500437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219773 (A141214 (n + 1)).toNat) (A113627 (n + 1))

end

end A219769.P17979596554696500437

/-!
# A219770: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX5 array.

The programs for A219770, there is no canonical definition to state claims against.
-/

/-! ## A219770.P15973142500989493323

`A219773(∑[n+5]+6)`
-/

namespace A219770.P15973142500989493323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219770.P15973142500989493323

/-! ## A219770.P9361270460181335454

`A326545(n)+A219773(A060577(n+4))`
-/

namespace A219770.P9361270460181335454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A219773 (A060577 (n + 4)).toNat

end

end A219770.P9361270460181335454

/-!
# A219771: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX6 array.

The programs for A219771, there is no canonical definition to state claims against.
-/

/-! ## A219771.P1136094111030933988

`A219773(A052905(n+3))`
-/

namespace A219771.P1136094111030933988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A052905 (n + 3)).toNat

end

end A219771.P1136094111030933988

/-! ## A219771.P12423708952837709737

`A219773(A056119(n)+16)`
-/

namespace A219771.P12423708952837709737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A056119 n + 16).toNat

end

end A219771.P12423708952837709737

/-! ## A219771.P7546462060205380303

`A219773(eq[3, A219347(n)])`
-/

namespace A219771.P7546462060205380303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219771.P7546462060205380303

/-! ## A219771.P4372748254133173527

`A219773(eq[5, A193592(n)])`
-/

namespace A219771.P4372748254133173527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219771.P4372748254133173527

/-! ## A219771.P17698224037546164469

`A219773(eq[8, A258709(n)])`
-/

namespace A219771.P17698224037546164469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219771.P17698224037546164469

/-!
# A219772: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX7 array.

The programs for A219772, there is no canonical definition to state claims against.
-/

/-! ## A219772.P5427920520406359641

`A219773(A055999(n+4))`
-/

namespace A219772.P5427920520406359641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A055999 (n + 4)).toNat

end

end A219772.P5427920520406359641

/-! ## A219772.P15630581142885141324

`A219773(eq[4, A219347(n)])`
-/

namespace A219772.P15630581142885141324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219772.P15630581142885141324

/-! ## A219772.P10963610561615920988

`A219773(eq[6, A193592(n)])`
-/

namespace A219772.P10963610561615920988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219772.P10963610561615920988

/-! ## A219772.P14028817727842255416

`A219773(A052905(n+4)-1)`
-/

namespace A219772.P14028817727842255416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A052905 (n + 4) - 1).toNat

end

end A219772.P14028817727842255416

/-! ## A219772.P7595703106143098775

`A219773(A056115(n+2)+9)`
-/

namespace A219772.P7595703106143098775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A056115 (n + 2) + 9).toNat

end

end A219772.P7595703106143098775

/-!
# A219773: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nXk array.

The programs for A219773, there is no canonical definition to state claims against.
-/

/-! ## A219773.P2992679823089171481

`A220032((n+1)*A174544(n))`
-/

namespace A219773.P2992679823089171481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220032 ((n + 1 : ℤ) * A174544 n).toNat

end

end A219773.P2992679823089171481

/-! ## A219773.P17013217608258964409

`or(A210322(A210341(n)), A220032(n+1))`
-/

namespace A219773.P17013217608258964409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210322 (A210341 n).toNat) (A220032 (n + 1))

end

end A219773.P17013217608258964409

/-! ## A219773.P10568954291880849436

`or(A220032(n+1), A272615(A174544(n)))`
-/

namespace A219773.P10568954291880849436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220032 (n + 1)) (A272615 (A174544 n).toNat)

end

end A219773.P10568954291880849436

/-! ## A219773.P16232309766935707118

`A282355(A282338(n+1))+A220032(n+1)`
-/

namespace A219773.P16232309766935707118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A282338 (n + 1)).toNat + A220032 (n + 1)

end

end A219773.P16232309766935707118

/-!
# A219774: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 3 X n array.

The programs for A219774, the canonical program `A219774.P15353306060297995815` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219774 has offset 1).

The definition of A219774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219774.P15353306060297995815

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=14, a(3)=33, a(4)=65, a(5)=114, a(6)=189, a(7)=298, a(8)=450`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219774

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15353306060297995815.Spec : Prop :=
  ∀ n, P15353306060297995815.a n = A219774 (n + 1)

theorem P15353306060297995815.correct : P15353306060297995815.Spec := by
  intro n
  simp only [A219774, Nat.add_sub_cancel]

end A219774

/-! ## A219774.P15181353875411060761

`A219773(∑[n+2]+4)`
-/

namespace A219774.P15181353875411060761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219774.P15181353875411060761

namespace A219774

/-- `A219773(∑[n+2]+4)` -/
def P15181353875411060761.Spec : Prop :=
  ∀ n, P15181353875411060761.a n = A219774 (n + 1)

end A219774

/-! ## A219774.P4231620104894034454

`A219773(A167614(n+1))+char[20]`
-/

namespace A219774.P4231620104894034454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219774.P4231620104894034454

namespace A219774

/-- `A219773(A167614(n+1))+char[20]` -/
def P4231620104894034454.Spec : Prop :=
  ∀ n, P4231620104894034454.a n = A219774 (n + 1)

end A219774

/-! ## A219774.P15441979462348153306

`A219773(A167499(n)+n)+char[21]`
-/

namespace A219774.P15441979462348153306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219774.P15441979462348153306

namespace A219774

/-- `A219773(A167499(n)+n)+char[21]` -/
def P15441979462348153306.Spec : Prop :=
  ∀ n, P15441979462348153306.a n = A219774 (n + 1)

end A219774

/-! ## A219774.P4541197800444257958

`A326545(n)+A219773(A167614(n+1))`
-/

namespace A219774.P4541197800444257958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A219773 (A167614 (n + 1)).toNat

end

end A219774.P4541197800444257958

namespace A219774

/-- `A326545(n)+A219773(A167614(n+1))` -/
def P4541197800444257958.Spec : Prop :=
  ∀ n, P4541197800444257958.a n = A219774 (n + 1)

end A219774

/-!
# A219775: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 4Xn array.

The programs for A219775, there is no canonical definition to state claims against.
-/

/-! ## A219775.P1231348197393821198

`A219773(∑[n+3]+7)`
-/

namespace A219775.P1231348197393821198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219775.P1231348197393821198

/-! ## A219775.P13107816193443090112

`A219773(A000096(n+2)+5)+char[17]`
-/

namespace A219775.P13107816193443090112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219775.P13107816193443090112

/-! ## A219775.P4277375171903782812

`or(char[2], A219773(A167614(n+2)+1))`
-/

namespace A219775.P4277375171903782812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219773 (A167614 (n + 2) + 1).toNat)

end

end A219775.P4277375171903782812

/-! ## A219775.P14708207698558330820

`A007318(C(2, n))*A219773(A000096(n+2)+5)`
-/

namespace A219775.P14708207698558330820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A219773 (A000096 (n + 2) + 5).toNat

end

end A219775.P14708207698558330820

/-! ## A219775.P12547772488661786992

`A007318(A007318(2*n))*A219773(A000096(n+2)+5)`
-/

namespace A219775.P12547772488661786992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 (2 * n)).toNat * A219773 (A000096 (n + 2) + 5).toNat

end

end A219775.P12547772488661786992

/-!
# A219776: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 5Xn array.

The programs for A219776, there is no canonical definition to state claims against.
-/

/-! ## A219776.P14855988428143142073

`A219773(A167499(n+3))`
-/

namespace A219776.P14855988428143142073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167499 (n + 3)).toNat

end

end A219776.P14855988428143142073

/-! ## A219776.P4629442804260865352

`A219773(A155212(n)+13)`
-/

namespace A219776.P4629442804260865352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A155212 n + 13).toNat

end

end A219776.P4629442804260865352

/-! ## A219776.P7471285471241227217

`A219773(A056000(n)+15)`
-/

namespace A219776.P7471285471241227217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A056000 n + 15).toNat

end

end A219776.P7471285471241227217

/-! ## A219776.P9806682320871572347

`A219773(eq[7, A066657(n)])`
-/

namespace A219776.P9806682320871572347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219776.P9806682320871572347

/-! ## A219776.P4512696035801901671

`record[A219773(A027379(n)+8)]`
-/

namespace A219776.P4512696035801901671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A027379 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219776.P4512696035801901671

/-!
# A219777: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 6Xn array.

The programs for A219777, there is no canonical definition to state claims against.
-/

/-! ## A219777.P14813758377838921338

`A219773(A166136(n+4))`
-/

namespace A219777.P14813758377838921338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A166136 (n + 4)).toNat

end

end A219777.P14813758377838921338

/-! ## A219777.P9907052271041647369

`A219773(A056115(n)+21)`
-/

namespace A219777.P9907052271041647369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A056115 n + 21).toNat

end

end A219777.P9907052271041647369

/-! ## A219777.P593623355120700398

`A219773(A167499(n+4)+1)`
-/

namespace A219777.P593623355120700398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167499 (n + 4) + 1).toNat

end

end A219777.P593623355120700398

/-! ## A219777.P14759687747018669831

`A219773(A167614(n+4)+3)`
-/

namespace A219777.P14759687747018669831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167614 (n + 4) + 3).toNat

end

end A219777.P14759687747018669831

/-! ## A219777.P8811550646301233588

`A219773(A133263(n+5)+4)`
-/

namespace A219777.P8811550646301233588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A133263 (n + 5) + 4).toNat

end

end A219777.P8811550646301233588

/-!
# A219778: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 7Xn array.

The programs for A219778, there is no canonical definition to state claims against.
-/

/-! ## A219778.P2579287243613026387

`A219773(A056119(n)+28)`
-/

namespace A219778.P2579287243613026387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A056119 n + 28).toNat

end

end A219778.P2579287243613026387

/-! ## A219778.P14109027391258639558

`A219773(eq[11, A066657(n)])`
-/

namespace A219778.P14109027391258639558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219778.P14109027391258639558

/-! ## A219778.P11255641238389543769

`A219773(A167499(n+5)+2)`
-/

namespace A219778.P11255641238389543769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167499 (n + 5) + 2).toNat

end

end A219778.P11255641238389543769

/-! ## A219778.P8812041418503280905

`A219773(A167614(n+5)+4)`
-/

namespace A219778.P8812041418503280905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A167614 (n + 5) + 4).toNat

end

end A219778.P8812041418503280905

/-! ## A219778.P11210360234809397487

`A219773(A000217(n+6)+7)`
-/

namespace A219778.P11210360234809397487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219773 (A000217 (n + 6) + 7).toNat

end

end A219778.P11210360234809397487

/-!
# A219779: 1 = Sum_{n>=0} a(n) * x^n * (1 - (n+1)*x)^3.

The programs for A219779, the canonical program `A219779.P17941574152578123328` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219779 has offset 0).

The definition of A219779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219779.P17941574152578123328

`3*n*a(n-1)-3*(n-1)²*a(n-2)+(n-2)^3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219779

/-- `3*n*a(n-1)-3*(n-1)²*a(n-2)+(n-2)^3*a(n-3)` -/
def P17941574152578123328.Spec : Prop :=
  ∀ n, P17941574152578123328.a n = A219779 n

theorem P17941574152578123328.correct : P17941574152578123328.Spec := by
  intro n
  simp only [A219779]

end A219779

/-!
# A219780: 1 = Sum_{n>=0} a(n) * x^n * (1 - (n+1)*x)^4.

The programs for A219780, there is no canonical definition to state claims against.
-/

/-! ## A219780.P14153444013112540187

`∑[∑[A000062(A060468(n))]]`
-/

namespace A219780.P14153444013112540187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (A060468 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219780.P14153444013112540187

/-!
# A219785: Primes not neighboring an 11-smooth number.

The programs for A219785, there is no canonical definition to state claims against.
-/

/-! ## A219785.P15409418408860000102

`A093922(A025322(n+1)+1)`
-/

namespace A219785.P15409418408860000102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093922 (A025322 (n + 1) + 1).toNat

end

end A219785.P15409418408860000102

/-!
# A219786: Least number such that there are n-1 composite numbers between n+1 and a(n) (both inclusive).

The programs for A219786, there is no canonical definition to state claims against.
-/

/-! ## A219786.P813296512679003719

`A018252(∑[(2%∏{e}[n+2, #+1])!]+1)`
-/

namespace A219786.P813296512679003719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 % (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219786.P813296512679003719

/-! ## A219786.P17732115252166089907

`A141468(A171511(n+3))`
-/

namespace A219786.P17732115252166089907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A171511 (n + 3)).toNat

end

end A219786.P17732115252166089907

/-! ## A219786.P12795912196172487381

`A018252(A171511(n+3)-1)`
-/

namespace A219786.P12795912196172487381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A171511 (n + 3) - 1).toNat

end

end A219786.P12795912196172487381

/-! ## A219786.P18383985522744712675

`A002808(A171511(n+3)-2)`
-/

namespace A219786.P18383985522744712675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A171511 (n + 3) - 2).toNat

end

end A219786.P18383985522744712675

/-! ## A219786.P5931873690516001869

`A002808(A062298(n+2)+n)`
-/

namespace A219786.P5931873690516001869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 (n + 2) + (n : ℤ)).toNat

end

end A219786.P5931873690516001869

/-! ## A219786.P18314829187491764580

`A018252(A086936(n+3)+n)`
-/

namespace A219786.P18314829187491764580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A086936 (n + 3) + (n : ℤ)).toNat

end

end A219786.P18314829187491764580

/-! ## A219786.P4144597280156828239

`A002808(A065855(n+2)+n+1)`
-/

namespace A219786.P4144597280156828239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A065855 (n + 2) + (n + 1 : ℤ)).toNat

end

end A219786.P4144597280156828239

/-! ## A219786.P11353190971009085350

`A018252(A062298(n+2)+n+1)`
-/

namespace A219786.P11353190971009085350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A062298 (n + 2) + (n + 1 : ℤ)).toNat

end

end A219786.P11353190971009085350

/-! ## A219786.P3449038147597142321

`A018252(A065855(n+2)+n+2)`
-/

namespace A219786.P3449038147597142321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A065855 (n + 2) + (n + 2 : ℤ)).toNat

end

end A219786.P3449038147597142321

/-! ## A219786.P6975247786369375891

`A141468(A062298(n+2)+n+2)`
-/

namespace A219786.P6975247786369375891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A062298 (n + 2) + (n + 2 : ℤ)).toNat

end

end A219786.P6975247786369375891

/-!
# A219787: Least number such that in the interval [n+1, a(n)] there are n integers b(i) with i | b(i) for i = 1 to n.

The programs for A219787, there is no canonical definition to state claims against.
-/

/-! ## A219787.P11708610822776754894

`A390246(n+1)+n`
-/

namespace A219787.P11708610822776754894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390246 (n + 1) + (n : ℤ)

end

end A219787.P11708610822776754894

/-!
# A219788: Consider the succession rule (x, y, z) -> (z, y+z, x+y+z). Sequence gives z values starting at (0, 1, 2).

The programs for A219788, the canonical program `A219788.P7710788993451539248` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219788 has offset 1).

The definition of A219788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219788.P7710788993451539248

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A219788

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P7710788993451539248.Spec : Prop :=
  ∀ n, P7710788993451539248.a n = A219788 (n + 1)

theorem P7710788993451539248.correct : P7710788993451539248.Spec := by
  intro n
  simp only [A219788, Nat.add_sub_cancel]

end A219788

/-! ## A219788.P16617136891242986259

`2*A006054(n+2)-A006054(n+1)`
-/

namespace A219788.P16617136891242986259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006054 (n + 2) - A006054 (n + 1)

end

end A219788.P16617136891242986259

namespace A219788

/-- `2*A006054(n+2)-A006054(n+1)` -/
def P16617136891242986259.Spec : Prop :=
  ∀ n, P16617136891242986259.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P4659989372328892103

`ogf((2-x)/(1-2x-x^2+x^3))`
-/

namespace A219788.P4659989372328892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, -1, 1] n

end

end A219788.P4659989372328892103

namespace A219788

/-- `ogf((2-x)/(1-2x-x^2+x^3))` -/
def P4659989372328892103.Spec : Prop :=
  ∀ n, P4659989372328892103.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P15620210994134984914

`Δ[A006356(n)]`
-/

namespace A219788.P15620210994134984914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P15620210994134984914

namespace A219788

/-- `Δ[A006356(n)]` -/
def P15620210994134984914.Spec : Prop :=
  ∀ n, P15620210994134984914.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P12242674536377408012

`Δ[record[A120771(n)]]`
-/

namespace A219788.P12242674536377408012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P12242674536377408012

namespace A219788

/-- `Δ[record[A120771(n)]]` -/
def P12242674536377408012.Spec : Prop :=
  ∀ n, P12242674536377408012.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P15686967992913712246

`Δ[record[A370377(n)]]`
-/

namespace A219788.P15686967992913712246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P15686967992913712246

namespace A219788

/-- `Δ[record[A370377(n)]]` -/
def P15686967992913712246.Spec : Prop :=
  ∀ n, P15686967992913712246.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P16362793975687364576

`Δ[A052949(n+1)]`
-/

namespace A219788.P16362793975687364576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P16362793975687364576

namespace A219788

/-- `Δ[A052949(n+1)]` -/
def P16362793975687364576.Spec : Prop :=
  ∀ n, P16362793975687364576.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P8644364564410106216

`Δ[A077998(n+1)]`
-/

namespace A219788.P8644364564410106216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P8644364564410106216

namespace A219788

/-- `Δ[A077998(n+1)]` -/
def P8644364564410106216.Spec : Prop :=
  ∀ n, P8644364564410106216.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P15780835066345245223

`Δ[A106803(n+2)]`
-/

namespace A219788.P15780835066345245223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P15780835066345245223

namespace A219788

/-- `Δ[A106803(n+2)]` -/
def P15780835066345245223.Spec : Prop :=
  ∀ n, P15780835066345245223.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P5715129529666963777

`Δ[record[A187068(2*n)]]`
-/

namespace A219788.P5715129529666963777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P5715129529666963777

namespace A219788

/-- `Δ[record[A187068(2*n)]]` -/
def P5715129529666963777.Spec : Prop :=
  ∀ n, P5715129529666963777.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P17360580397609664713

`Δ[A038196(2*(n+1))]`
-/

namespace A219788.P17360580397609664713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P17360580397609664713

namespace A219788

/-- `Δ[A038196(2*(n+1))]` -/
def P17360580397609664713.Spec : Prop :=
  ∀ n, P17360580397609664713.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P4697421427035845811

`Δ[A120771(3*(n+1))]`
-/

namespace A219788.P4697421427035845811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P4697421427035845811

namespace A219788

/-- `Δ[A120771(3*(n+1))]` -/
def P4697421427035845811.Spec : Prop :=
  ∀ n, P4697421427035845811.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P11774315462785183190

`Δ[A187070(2*(n+2))]`
-/

namespace A219788.P11774315462785183190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P11774315462785183190

namespace A219788

/-- `Δ[A187070(2*(n+2))]` -/
def P11774315462785183190.Spec : Prop :=
  ∀ n, P11774315462785183190.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P7243601163642784183

`Δ[A187068(2*(n+3))]`
-/

namespace A219788.P7243601163642784183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219788.P7243601163642784183

namespace A219788

/-- `Δ[A187068(2*(n+3))]` -/
def P7243601163642784183.Spec : Prop :=
  ∀ n, P7243601163642784183.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P15646259022465202359

`A106805(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A219788.P15646259022465202359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A106805 (n + 1) - a (n - 1)

end

end A219788.P15646259022465202359

namespace A219788

/-- `A106805(n+1)-a(n-1)` -/
def P15646259022465202359.Spec : Prop :=
  ∀ n, P15646259022465202359.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P12997969441204474784

`A006054(n+3)-a(n-1)` with `a(0)=2`
-/

namespace A219788.P12997969441204474784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006054 (n + 3) - a (n - 1)

end

end A219788.P12997969441204474784

namespace A219788

/-- `A006054(n+3)-a(n-1)` -/
def P12997969441204474784.Spec : Prop :=
  ∀ n, P12997969441204474784.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P11614448290429176021

`A106805(n)+A077998(n)`
-/

namespace A219788.P11614448290429176021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n + A077998 n

end

end A219788.P11614448290429176021

namespace A219788

/-- `A106805(n)+A077998(n)` -/
def P11614448290429176021.Spec : Prop :=
  ∀ n, P11614448290429176021.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P13478191533124908103

`A124400(n+1)+A033999(n)`
-/

namespace A219788.P13478191533124908103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124400 (n + 1) + A033999 n

end

end A219788.P13478191533124908103

namespace A219788

/-- `A124400(n+1)+A033999(n)` -/
def P13478191533124908103.Spec : Prop :=
  ∀ n, P13478191533124908103.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P8039538177365061691

`A106805(n)+A106803(n+1)`
-/

namespace A219788.P8039538177365061691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n + A106803 (n + 1)

end

end A219788.P8039538177365061691

namespace A219788

/-- `A106805(n)+A106803(n+1)` -/
def P8039538177365061691.Spec : Prop :=
  ∀ n, P8039538177365061691.a n = A219788 (n + 1)

end A219788

/-! ## A219788.P5461027765559404931

`A006356(n+1)-A006356(n)`
-/

namespace A219788.P5461027765559404931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 1) - A006356 n

end

end A219788.P5461027765559404931

namespace A219788

/-- `A006356(n+1)-A006356(n)` -/
def P5461027765559404931.Spec : Prop :=
  ∀ n, P5461027765559404931.a n = A219788 (n + 1)

end A219788

/-!
# A219789: Least prime in the form x*y-1 with x > 0, y > 0 and x + y = n > 3.

The programs for A219789, there is no canonical definition to state claims against.
-/

/-! ## A219789.P5861792659207278643

`A347904(∑[n]+1)`
-/

namespace A219789.P5861792659207278643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219789.P5861792659207278643

/-! ## A219789.P531838632529113412

`and(-1, A347904(A000124(n)))`
-/

namespace A219789.P531838632529113412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A347904 (A000124 n).toNat)

end

end A219789.P531838632529113412

/-! ## A219789.P2062595808912932004

`A347904(A000124(n))%A017605(n)`
-/

namespace A219789.P2062595808912932004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347904 (A000124 n).toNat) (A017605 n)

end

end A219789.P2062595808912932004

/-! ## A219789.P14712486658643606916

`A347904(A000124(n))+A085974(n+1)`
-/

namespace A219789.P14712486658643606916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347904 (A000124 n).toNat + A085974 (n + 1)

end

end A219789.P14712486658643606916

/-! ## A219789.P9531361886241898511

`A050921(A050921(n+1)-A268354(n+1))`
-/

namespace A219789.P9531361886241898511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A050921 (n + 1) - A268354 (n + 1)).toNat

end

end A219789.P9531361886241898511

/-!
# A219790: Smallest prime not neighboring a prime(n)-smooth number.

The programs for A219790, there is no canonical definition to state claims against.
-/

/-! ## A219790.P15764729736104823540

`A138152(A111490(2*n+3)-1)`
-/

namespace A219790.P15764729736104823540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138152 (A111490 (2 * n + 3) - 1).toNat

end

end A219790.P15764729736104823540

/-! ## A219790.P10463303968075722059

`A095313(A272668(3*n+4)+A095313(n+1))`
-/

namespace A219790.P10463303968075722059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095313 (A272668 (3 * n + 4) + A095313 (n + 1)).toNat

end

end A219790.P10463303968075722059

/-! ## A219790.P8130283097014372946

`A173135(A066733(n+1)+A173135(n+1)-n)`
-/

namespace A219790.P8130283097014372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (A066733 (n + 1) + (A173135 (n + 1) - (n : ℤ))).toNat

end

end A219790.P8130283097014372946

/-!
# A219791: Number of ways to write n=x+y (0

The programs for A219791, there is no canonical definition to state claims against.
-/

/-! ## A219791.P13241076394028039076

`A081603(∑[A321440(A065186(n+1))]²)`
-/

namespace A219791.P13241076394028039076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 (A065186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A219791.P13241076394028039076

/-!
# A219792: Least k such that phi(k) = lambda(n), or 0 if there is no such k.

The programs for A219792, there is no canonical definition to state claims against.
-/

/-! ## A219792.P5652008507111291282

`A049283(A002322(n+1))`
-/

namespace A219792.P5652008507111291282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A002322 (n + 1)).toNat

end

end A219792.P5652008507111291282

/-! ## A219792.P1544090002887975515

`A049283(A263027(n+1)-1)`
-/

namespace A219792.P1544090002887975515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A263027 (n + 1) - 1).toNat

end

end A219792.P1544090002887975515

/-! ## A219792.P13359901922011939997

`A049283(1-A277127(n+1)+n)`
-/

namespace A219792.P13359901922011939997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (1 - A277127 (n + 1) + (n : ℤ)).toNat

end

end A219792.P13359901922011939997

/-! ## A219792.P8181154419694854526

`A049283(A134198(n+1)-A051903(n+1))`
-/

namespace A219792.P8181154419694854526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A134198 (n + 1) - A051903 (n + 1)).toNat

end

end A219792.P8181154419694854526

/-! ## A219792.P16770409937014957034

`A049283(A000010(n+1)/A034380(n+1))`
-/

namespace A219792.P16770409937014957034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A034380 (n + 1) : ℚ))).toNat

end

end A219792.P16770409937014957034

/-! ## A219792.P7877020572382758133

`A049283(A007434(n+1)/A220345(n+1))`
-/

namespace A219792.P7877020572382758133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / (A220345 (n + 1) : ℚ))).toNat

end

end A219792.P7877020572382758133

/-! ## A219792.P10826345231982395130

`A061026(A002322(n+1))%p?[A155212(n)]`
-/

namespace A219792.P10826345231982395130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061026 (A002322 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A219792.P10826345231982395130

/-! ## A219792.P8157302904046718460

`A135416(A295185(n+3))+A061026(A002322(n+1))`
-/

namespace A219792.P8157302904046718460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A295185 (n + 3)).toNat + A061026 (A002322 (n + 1)).toNat

end

end A219792.P8157302904046718460

/-! ## A219792.P15928800014297480494

`or(A061026(A002322(n+1)), A225181(n))`
-/

namespace A219792.P15928800014297480494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061026 (A002322 (n + 1)).toNat) (A225181 n)

end

end A219792.P15928800014297480494

/-!
# A219793: Least k such that phi(n) = lambda(k), or 0 if there is no such k.

The programs for A219793, there is no canonical definition to state claims against.
-/

/-! ## A219793.P8317600954924047109

`A141162((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A219793.P8317600954924047109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A219793.P8317600954924047109

/-! ## A219793.P18443964634667507529

`A141162(Δ[A002088(n)])`
-/

namespace A219793.P18443964634667507529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (f1 (n + 1) - f1 n).toNat

end

end A219793.P18443964634667507529

/-! ## A219793.P9082955366367931091

`A141162(Δ[A005728(n)])`
-/

namespace A219793.P9082955366367931091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (f1 (n + 1) - f1 n).toNat

end

end A219793.P9082955366367931091

/-! ## A219793.P12699467435092214646

`A141162(A000010(n+1))`
-/

namespace A219793.P12699467435092214646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A000010 (n + 1)).toNat

end

end A219793.P12699467435092214646

/-! ## A219793.P4213899639536965060

`A141162(A349137(Δ[n²]))`
-/

namespace A219793.P4213899639536965060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A219793.P4213899639536965060

/-! ## A219793.P4050428206149422878

`A141162(sqrt(A127473(n+1)))`
-/

namespace A219793.P4050428206149422878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A219793.P4050428206149422878

/-! ## A219793.P16392583569721075884

`A141162(A054523(∑[n]+1))`
-/

namespace A219793.P16392583569721075884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A054523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A219793.P16392583569721075884

/-! ## A219793.P10439217894147865035

`A141162(A109606(n+1)+1)`
-/

namespace A219793.P10439217894147865035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A109606 (n + 1) + 1).toNat

end

end A219793.P10439217894147865035

/-! ## A219793.P11752045049052812314

`A141162(A039649(n+1)-1)`
-/

namespace A219793.P11752045049052812314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A039649 (n + 1) - 1).toNat

end

end A219793.P11752045049052812314

/-! ## A219793.P10625145568860388571

`A141162(A067541(2*n+1))`
-/

namespace A219793.P10625145568860388571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A067541 (2 * n + 1)).toNat

end

end A219793.P10625145568860388571

/-! ## A219793.P1270476964614260913

`A141162(1-A051953(n+1)+n)`
-/

namespace A219793.P1270476964614260913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A219793.P1270476964614260913

/-! ## A219793.P13187940532827965748

`A141162(A002618(n+1)/(n+1))`
-/

namespace A219793.P13187940532827965748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A219793.P13187940532827965748

/-! ## A219793.P14693096789582518230

`A141162(∑{d}[n+1, (n+1)/#*A008683(#)])`
-/

namespace A219793.P14693096789582518230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))).toNat

end

end A219793.P14693096789582518230

/-! ## A219793.P2603668555357369704

`A141162(A002088(n+1)-A002088(n))`
-/

namespace A219793.P2603668555357369704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A002088 (n + 1) - A002088 n).toNat

end

end A219793.P2603668555357369704

/-! ## A219793.P2838840867088889907

`A141162(A005728(n+1)-A005728(n))`
-/

namespace A219793.P2838840867088889907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A005728 (n + 1) - A005728 n).toNat

end

end A219793.P2838840867088889907

/-! ## A219793.P7737853209567670110

`A141162(A007318(gcd(n-3, n-1))*A000010(2*n-(n-1)))`
-/

namespace A219793.P7737853209567670110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141162 (A007318 (Int.gcd ((n : ℤ) - 3) ((n : ℤ) - 1)) * A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A219793.P7737853209567670110

/-!
# A219794: First differences of 5-smooth numbers (A051037).

The programs for A219794, there is no canonical definition to state claims against.
-/

/-! ## A219794.P16254864702642283039

`A051037(n+2)-A051037(n+1)`
-/

namespace A219794.P16254864702642283039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 2) - A051037 (n + 1)

end

end A219794.P16254864702642283039

/-! ## A219794.P12333867225009894366

`Δ[A051037(n+1)]`
-/

namespace A219794.P12333867225009894366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P12333867225009894366

/-! ## A219794.P16980981965666417928

`Δ[A080193(n+1)/5]`
-/

namespace A219794.P16980981965666417928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080193 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P16980981965666417928

/-! ## A219794.P18440696719315980276

`Δ[A143207(n+1)/30]`
-/

namespace A219794.P18440696719315980276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143207 (n + 1) : ℚ) / 30

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P18440696719315980276

/-! ## A219794.P3126779224851794343

`Δ[A108651(n+1)/8]`
-/

namespace A219794.P3126779224851794343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108651 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P3126779224851794343

/-! ## A219794.P3754350385754548916

`Δ[∩[A002473(n+1), A068095(n+1)]]`
-/

namespace A219794.P3754350385754548916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P3754350385754548916

/-! ## A219794.P15475242482624952927

`Δ[lt[A006530(n+1), 6]]`
-/

namespace A219794.P15475242482624952927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P15475242482624952927

/-! ## A219794.P7859124699660315972

`Δ[lt[A061395(n+1)-2, 2]]`
-/

namespace A219794.P7859124699660315972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P7859124699660315972

/-! ## A219794.P17974393555684550581

`A076536(Δ[A108651(n+1)])`
-/

namespace A219794.P17974393555684550581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (f1 (n + 1) - f1 n).toNat

end

end A219794.P17974393555684550581

/-! ## A219794.P1525388542136638070

`Δ[lt[A332881(n+1), 6]]`
-/

namespace A219794.P1525388542136638070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P1525388542136638070

/-! ## A219794.P14683261025936832754

`Δ[lt[A332899(n+1), 4]]`
-/

namespace A219794.P14683261025936832754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P14683261025936832754

/-! ## A219794.P6495301293879727588

`Δ[eq[2, A141256(n)]]`
-/

namespace A219794.P6495301293879727588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219794.P6495301293879727588

/-! ## A219794.P11888229058935882187

`Δ[record[A228732(n+1)]]`
-/

namespace A219794.P11888229058935882187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P11888229058935882187

/-! ## A219794.P2954984445619635351

`Δ[record[A355582(n+1)]]`
-/

namespace A219794.P2954984445619635351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P2954984445619635351

/-! ## A219794.P5575424637927839076

`Δ[A052126(A080193(n+1))]`
-/

namespace A219794.P5575424637927839076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A080193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219794.P5575424637927839076

/-!
# A219795: Sum of the absolute values of the antidiagonals of the triangle A135929(n) companion. See the comment.

The programs for A219795, there is no canonical definition to state claims against.
-/

/-! ## A219795.P13340369682503181677

`A219865(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A219795.P13340369682503181677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A219865 (n - 1) + a (n - 1)

end

end A219795.P13340369682503181677

/-!
# A219796: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A219796, there is no canonical definition to state claims against.
-/

/-! ## A219796.P16189427060493449821

`A219802(∑[4*n]+1)`
-/

namespace A219796.P16189427060493449821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219796.P16189427060493449821

/-!
# A219797: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A219797, there is no canonical definition to state claims against.
-/

/-! ## A219797.P5803627266352741470

`A219802(∑[n+3]+1)`
-/

namespace A219797.P5803627266352741470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219797.P5803627266352741470

/-!
# A219798: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX4 array.

The programs for A219798, there is no canonical definition to state claims against.
-/

/-! ## A219798.P17004152684455781625

`A219802(A141214(n+1))`
-/

namespace A219798.P17004152684455781625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A141214 (n + 1)).toNat

end

end A219798.P17004152684455781625

/-! ## A219798.P16535950525194550422

`A219802(A027379(n+2))`
-/

namespace A219798.P16535950525194550422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A027379 (n + 2)).toNat

end

end A219798.P16535950525194550422

/-! ## A219798.P11427107214644631079

`A219802(A155212(n)+5)`
-/

namespace A219798.P11427107214644631079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A155212 n + 5).toNat

end

end A219798.P11427107214644631079

/-! ## A219798.P10840852014181646118

`A219802(A056000(n)+7)`
-/

namespace A219798.P10840852014181646118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A056000 n + 7).toNat

end

end A219798.P10840852014181646118

/-! ## A219798.P3305535294394904730

`A219802(eq[2, A054123(n)])`
-/

namespace A219798.P3305535294394904730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219798.P3305535294394904730

/-!
# A219799: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX5 array.

The programs for A219799, there is no canonical definition to state claims against.
-/

/-! ## A219799.P7958253463578158281

`A219802(Δ[A264443(n)])`
-/

namespace A219799.P7958253463578158281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (f1 (n + 1) - f1 n).toNat

end

end A219799.P7958253463578158281

/-! ## A219799.P12175960078115837123

`A219802(A046691(n+3))`
-/

namespace A219799.P12175960078115837123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A046691 (n + 3)).toNat

end

end A219799.P12175960078115837123

/-! ## A219799.P3616546930621996580

`A219802(A056115(n)+11)`
-/

namespace A219799.P3616546930621996580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (A056115 n + 11).toNat

end

end A219799.P3616546930621996580

/-! ## A219799.P6935417611750767061

`A219802(eq[2, A092921(n)])`
-/

namespace A219799.P6935417611750767061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219799.P6935417611750767061

