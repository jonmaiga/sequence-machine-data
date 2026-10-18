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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A033701: Theta series of lattice A_2 tensor D_3 (dimension 6, det. 432, min. norm 4).

The programs for A033701, there is no canonical definition to state claims against.
-/

/-! ## A033701.P9283049721055836433

`xor(1, n)*A000005(A138451(n+1))`
-/

namespace A033701.P9283049721055836433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) * A000005 (A138451 (n + 1)).toNat

end

end A033701.P9283049721055836433

/-! ## A033701.P9886909340036152237

`A000005(A138451(n+1))*A004442(n)`
-/

namespace A033701.P9886909340036152237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A138451 (n + 1)).toNat * A004442 n

end

end A033701.P9886909340036152237

/-!
# A033702: Number of polygonal numbers which are n-digit repdigits.

The programs for A033702, there is no canonical definition to state claims against.
-/

/-! ## A033702.P8953512234523670255

`Δ[A033703(A028310(n))*A057427(n)]`
-/

namespace A033702.P8953512234523670255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033702.P8953512234523670255

/-! ## A033702.P5918594096959757799

`Δ[A033703(A028310(n))%A016755(n)]`
-/

namespace A033702.P5918594096959757799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033703 (A028310 n).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033702.P5918594096959757799

/-! ## A033702.P5638773249887726930

`Δ[A033703(A028310(n))*A165476(n²)]`
-/

namespace A033702.P5638773249887726930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (A028310 n).toNat * A165476 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033702.P5638773249887726930

/-! ## A033702.P3251928069840361874

`Δ[A033703(A233583(n+1))%A016755(n)]`
-/

namespace A033702.P3251928069840361874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033703 (A233583 (n + 1)).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033702.P3251928069840361874

/-! ## A033702.P11213239121579087663

`Δ[A000040(n+1)%2*A033703(A028310(n))]`
-/

namespace A033702.P11213239121579087663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A033703 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033702.P11213239121579087663

/-! ## A033702.P11079841915916744489

`A033703(n+1)-A033703(A028310(n))*A057427(n)`
-/

namespace A033702.P11079841915916744489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (n + 1) - A033703 (A028310 n).toNat * A057427 n

end

end A033702.P11079841915916744489

/-! ## A033702.P3046832037547948170

`A033710(n+1)+A033708(n+1)`
-/

namespace A033702.P3046832037547948170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033710 (n + 1) + A033708 (n + 1)

end

end A033702.P3046832037547948170

/-!
# A033703: Number of polygonal numbers which are repdigits with <= n digits.

The programs for A033703, there is no canonical definition to state claims against.
-/

/-! ## A033703.P10486769764120935622

`∑[A033702(n+1)]`
-/

namespace A033703.P10486769764120935622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033703.P10486769764120935622

/-! ## A033703.P10558097905144091453

`∑[A033710(n+1)+A033708(n+1)]`
-/

namespace A033703.P10558097905144091453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033710 (n + 1) + A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033703.P10558097905144091453

/-! ## A033703.P11159651651802456274

`A033711(n+1)+∑[A033708(n+1)]`
-/

namespace A033703.P11159651651802456274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033711 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033703.P11159651651802456274

/-! ## A033703.P6415224380192688319

`A033711(n+1)+A033709(n+1)`
-/

namespace A033703.P6415224380192688319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033711 (n + 1) + A033709 (n + 1)

end

end A033703.P6415224380192688319

/-! ## A033703.P11469610250423369844

`A033709(n+1)+∑[A033710(n+1)]`
-/

namespace A033703.P11469610250423369844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033709 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033703.P11469610250423369844

/-!
# A033704: Fancy primitive repdigit polygonal numbers.

The programs for A033704, there is no canonical definition to state claims against.
-/

/-! ## A033704.P8710478100369381476

`record[A033705(n+1)-char[7]]`
-/

namespace A033704.P8710478100369381476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033705 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033704.P8710478100369381476

/-! ## A033704.P1369574430740849753

`record[A033705(floor(lcm(2, n)/4)+1)]`
-/

namespace A033704.P1369574430740849753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033705 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033704.P1369574430740849753

/-! ## A033704.P5986098808001953363

`record[A033705(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A033704.P5986098808001953363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033705 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033704.P5986098808001953363

/-! ## A033704.P10682119164248627797

`record[A033705(A038569(n))]`
-/

namespace A033704.P10682119164248627797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033705 (A038569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033704.P10682119164248627797

/-! ## A033704.P1471930563640932573

`record[A033705(A065648(n))]`
-/

namespace A033704.P1471930563640932573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033705 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033704.P1471930563640932573

/-!
# A033705: Fancy primitive repdigit polygonal numbers (with multiplicity).

The programs for A033705, there is no canonical definition to state claims against.
-/

/-! ## A033705.P13415371540726554265

`A355221(∪[A033651(2*n+3), A033704(n+1)])`
-/

namespace A033705.P13415371540726554265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A033705.P13415371540726554265

/-! ## A033705.P14293748050616978832

`A033704(n+1)/A345000(A033689(n+1))`
-/

namespace A033705.P14293748050616978832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033704 (n + 1) : ℚ) / (A345000 (A033689 (n + 1)).toNat : ℚ)

end

end A033705.P14293748050616978832

/-! ## A033705.P1860900593094111269

`gcd(A033704(n+1), A033704(A038101(n+1)))`
-/

namespace A033705.P1860900593094111269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033704 (n + 1)) (A033704 (A038101 (n + 1)).toNat)

end

end A033705.P1860900593094111269

/-!
# A033708: Number of simple repdigit polyhedral numbers with n digits.

The programs for A033708, there is no canonical definition to state claims against.
-/

/-! ## A033708.P12876889720845518430

`A033702(n+1)-A033710(n+1)`
-/

namespace A033708.P12876889720845518430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - A033710 (n + 1)

end

end A033708.P12876889720845518430

/-! ## A033708.P6829139613670064036

`A033702(n+1)-Δ[A033711(A028310(n))*A057427(n)]`
-/

namespace A033708.P6829139613670064036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033711 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - (f1 (n + 1) - f1 n)

end

end A033708.P6829139613670064036

/-! ## A033708.P11727575689034651457

`A033702(n+1)-Δ[A033711(A028310(n))%A016755(n)]`
-/

namespace A033708.P11727575689034651457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033711 (A028310 n).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - (f1 (n + 1) - f1 n)

end

end A033708.P11727575689034651457

/-! ## A033708.P10426122539214689199

`Δ[A033709(A028310(n))*A057427(n)]`
-/

namespace A033708.P10426122539214689199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033709 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033708.P10426122539214689199

/-! ## A033708.P5993568085262102854

`Δ[A033709(A028310(n))%A016755(n)]`
-/

namespace A033708.P5993568085262102854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033709 (A028310 n).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033708.P5993568085262102854

/-!
# A033709: Number of simple repdigit polyhedral numbers with <=n digits.

The programs for A033709, there is no canonical definition to state claims against.
-/

/-! ## A033709.P1402442232142738755

`∑[A033708(n+1)]`
-/

namespace A033709.P1402442232142738755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033709.P1402442232142738755

/-! ## A033709.P17144776028079875000

`A033703(n+1)-A033711(n+1)`
-/

namespace A033709.P17144776028079875000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (n + 1) - A033711 (n + 1)

end

end A033709.P17144776028079875000

/-! ## A033709.P9105826641533467893

`∑[A033702(n+1)-A033710(n+1)]`
-/

namespace A033709.P9105826641533467893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - A033710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033709.P9105826641533467893

/-! ## A033709.P4049354589651400359

`∑[A033702(n+1)]-A033711(n+1)`
-/

namespace A033709.P4049354589651400359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033711 (n + 1)

end

end A033709.P4049354589651400359

/-! ## A033709.P11995560065016360873

`A033703(n+1)-∑[A033710(n+1)]`
-/

namespace A033709.P11995560065016360873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033709.P11995560065016360873

/-!
# A033710: Number of fancy repdigit polyhedral numbers with n digits.

The programs for A033710, there is no canonical definition to state claims against.
-/

/-! ## A033710.P3298837136917068304

`A033702(n+1)-A033708(n+1)`
-/

namespace A033710.P3298837136917068304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - A033708 (n + 1)

end

end A033710.P3298837136917068304

/-! ## A033710.P6219159593133065861

`A033702(C(n+1, n))%A033708(n+1)`
-/

namespace A033710.P6219159593133065861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033702 (Nat.choose (n + 1) n)) (A033708 (n + 1))

end

end A033710.P6219159593133065861

/-! ## A033710.P2879522963161483461

`Δ[A033711(abs(1-n)+1)*A057427(n)]`
-/

namespace A033710.P2879522963161483461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033711 (|1 - (n : ℤ)| + 1).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033710.P2879522963161483461

/-! ## A033710.P11643892888767151216

`Δ[A033711(abs(1-n)+1)%A016755(n)]`
-/

namespace A033710.P11643892888767151216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033711 (|1 - (n : ℤ)| + 1).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033710.P11643892888767151216

/-! ## A033710.P18119605939192223094

`Δ[A033711(A028310(n))%A016755(n)]%92`
-/

namespace A033710.P18119605939192223094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033711 (A028310 n).toNat) (A016755 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 92

end

end A033710.P18119605939192223094

/-! ## A033710.P1895060375223824380

`A033702(A000027(n+1))%A033708(n+1)`
-/

namespace A033710.P1895060375223824380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033702 (A000027 (n + 1)).toNat) (A033708 (n + 1))

end

end A033710.P1895060375223824380

/-! ## A033710.P12395675494537902122

`A028310(A033702(n+1)%A033708(n+1))`
-/

namespace A033710.P12395675494537902122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A033702 (n + 1)) (A033708 (n + 1))).toNat

end

end A033710.P12395675494537902122

/-! ## A033710.P3517437688314541314

`A033711(n+1)-A033711(A028310(n))*A057427(n)`
-/

namespace A033710.P3517437688314541314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033711 (n + 1) - A033711 (A028310 n).toNat * A057427 n

end

end A033710.P3517437688314541314

/-!
# A033711: Number of fancy repdigit polyhedral numbers with <=n digits.

The programs for A033711, there is no canonical definition to state claims against.
-/

/-! ## A033711.P7718520351311257837

`∑[A033710(n+1)]`
-/

namespace A033711.P7718520351311257837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033711.P7718520351311257837

/-! ## A033711.P16202859720854075052

`∑[A033702(n+1)-A033708(n+1)]`
-/

namespace A033711.P16202859720854075052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033702 (n + 1) - A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033711.P16202859720854075052

/-! ## A033711.P534565415195318841

`A033703(n+1)-∑[A033708(n+1)]`
-/

namespace A033711.P534565415195318841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033711.P534565415195318841

/-! ## A033711.P4050631908540793955

`∑[A033702(C(n+1, n))%A033708(n+1)]`
-/

namespace A033711.P4050631908540793955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033702 (Nat.choose (n + 1) n)) (A033708 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033711.P4050631908540793955

/-! ## A033711.P17449678773050412841

`A033703(C(n+1, n))%(∑[A033708(n+1)]+1)+1`
-/

namespace A033711.P17449678773050412841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033703 (Nat.choose (n + 1) n)) (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A033711.P17449678773050412841

/-! ## A033711.P18262789131517050115

`∑[A033702(A000027(n+1))%A033708(n+1)]`
-/

namespace A033711.P18262789131517050115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033702 (A000027 (n + 1)).toNat) (A033708 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033711.P18262789131517050115

/-! ## A033711.P1846431357685716679

`A033703(n+1)%∑[A033708(A000027(n+1))]`
-/

namespace A033711.P1846431357685716679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033708 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033703 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033711.P1846431357685716679

/-!
# A033713: Number of zeros in numbers 1 to 999..9 (n digits).

The programs for A033713, the canonical program `A033713.P13302592538740534098` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033713 has offset 1).

The definition of A033713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033713.P13302592538740534098

`(n*10^(n+1)-(n+1)*10^n+1)/9`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033713

/-- `(n*10^(n+1)-(n+1)*10^n+1)/9` -/
def P13302592538740534098.Spec : Prop :=
  ∀ n, P13302592538740534098.a n = (A033713 (n + 1) : ℚ)

end A033713

/-! ## A033713.P9577134468340849437

`10*a(n-1)+10^n-1` with `a(0)=0`
-/

namespace A033713.P9577134468340849437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + ((10 ^ n : ℤ) - 1)

end

end A033713.P9577134468340849437

namespace A033713

/-- `10*a(n-1)+10^n-1` -/
def P9577134468340849437.Spec : Prop :=
  ∀ n, P9577134468340849437.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P1809226338878872275

`∑[10*a(n-1)]+10*a(n-1)` with `a(0)=0, a(1)=9`
-/

namespace A033713.P1809226338878872275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A033713.P1809226338878872275

namespace A033713

/-- `∑[10*a(n-1)]+10*a(n-1)` -/
def P1809226338878872275.Spec : Prop :=
  ∀ n, (P1809226338878872275.a n : ℤ) = A033713 (n + 1)

end A033713

/-! ## A033713.P13589519226733524653

`A033714(n+1)-1`
-/

namespace A033713.P13589519226733524653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033714 (n + 1) - 1

end

end A033713.P13589519226733524653

namespace A033713

/-- `A033714(n+1)-1` -/
def P13589519226733524653.Spec : Prop :=
  ∀ n, P13589519226733524653.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P5502077470186964311

`A072290(n)-(n+1)`
-/

namespace A033713.P5502077470186964311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072290 n - (n + 1 : ℤ)

end

end A033713.P5502077470186964311

namespace A033713

/-- `A072290(n)-(n+1)` -/
def P5502077470186964311.Spec : Prop :=
  ∀ n, P5502077470186964311.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P4196786130902223517

`9*A081541(∑[n+1])`
-/

namespace A033713.P4196786130902223517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A081541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033713.P4196786130902223517

namespace A033713

/-- `9*A081541(∑[n+1])` -/
def P4196786130902223517.Spec : Prop :=
  ∀ n, P4196786130902223517.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P14214659320262730006

`n*10^n-A002275(n)`
-/

namespace A033713.P14214659320262730006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 10 ^ n : ℤ) - A002275 n

end

end A033713.P14214659320262730006

namespace A033713

/-- `n*10^n-A002275(n)` -/
def P14214659320262730006.Spec : Prop :=
  ∀ n, P14214659320262730006.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P3174499329753627291

`A053541(n+1)-∑[10^n]`
-/

namespace A033713.P3174499329753627291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033713.P3174499329753627291

namespace A033713

/-- `A053541(n+1)-∑[10^n]` -/
def P3174499329753627291.Spec : Prop :=
  ∀ n, P3174499329753627291.a n = A033713 (n + 1)

end A033713

/-! ## A033713.P14056134655540704007

`A002283(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A033713.P14056134655540704007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002283 n + 10 * a (n - 1)

end

end A033713.P14056134655540704007

namespace A033713

/-- `A002283(n)+10*a(n-1)` -/
def P14056134655540704007.Spec : Prop :=
  ∀ n, P14056134655540704007.a n = A033713 (n + 1)

end A033713

/-!
# A033714: Number of zeros in numbers 0 to 999..9 (n digits).

The programs for A033714, the canonical program `A033714.P7128792622442266428` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033714 has offset 1).

The definition of A033714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033714.P7128792622442266428

`9*10^(n-1)*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033714

/-- `9*10^(n-1)*n+a(n-1)` -/
def P7128792622442266428.Spec : Prop :=
  ∀ n, P7128792622442266428.a n = (A033714 (n + 1) : ℚ)

end A033714

/-! ## A033714.P5186055708585315189

`10^n*(n+1)-1/9*10^(n+1)+10/9`
-/

namespace A033714.P5186055708585315189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n * (n + 1) : ℚ) - (1 : ℚ) / 9 * (10 ^ (n + 1) : ℚ) + (10 : ℚ) / 9

end

end A033714.P5186055708585315189

namespace A033714

/-- `10^n*(n+1)-1/9*10^(n+1)+10/9` -/
def P5186055708585315189.Spec : Prop :=
  ∀ n, P5186055708585315189.a n = (A033714 (n + 1) : ℚ)

end A033714

/-! ## A033714.P6630378888715428499

`∑[Δ[n*10^(n-1)]-and(10^n, -2)]`
-/

namespace A033714.P6630378888715428499
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (Int.land (10 ^ n : ℤ) (-2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033714.P6630378888715428499

namespace A033714

/-- `∑[Δ[n*10^(n-1)]-and(10^n, -2)]` -/
def P6630378888715428499.Spec : Prop :=
  ∀ n, P6630378888715428499.a n = (A033714 (n + 1) : ℚ)

end A033714

/-! ## A033714.P2721260194835429993

`gcd(∑[9*n*10^(n-1)]+1, floor(acot(n)))`
-/

namespace A033714.P2721260194835429993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A033714.P2721260194835429993

namespace A033714

/-- `gcd(∑[9*n*10^(n-1)]+1, floor(acot(n)))` -/
def P2721260194835429993.Spec : Prop :=
  ∀ n, (P2721260194835429993.a n : ℤ) = A033714 (n + 1)

end A033714

/-! ## A033714.P962654651361588629

`(∑[9*n*10^(n-1)]+1)^ceil(abs(sin(n)))`
-/

namespace A033714.P962654651361588629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A033714.P962654651361588629

namespace A033714

/-- `(∑[9*n*10^(n-1)]+1)^ceil(abs(sin(n)))` -/
def P962654651361588629.Spec : Prop :=
  ∀ n, P962654651361588629.a n = (A033714 (n + 1) : ℚ)

end A033714

/-! ## A033714.P13536417541561084993

`(∑[9*n*10^(n-1)]+1)^cosh(floor(acot(n)))`
-/

namespace A033714.P13536417541561084993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℚ) : ℝ) ^ (Real.cosh (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℝ))

end

end A033714.P13536417541561084993

namespace A033714

/-- `(∑[9*n*10^(n-1)]+1)^cosh(floor(acot(n)))` -/
def P13536417541561084993.Spec : Prop :=
  ∀ n, P13536417541561084993.a n = (A033714 (n + 1) : ℝ)

end A033714

/-! ## A033714.P2652205472101987344

`abs(n-A072290(n))`
-/

namespace A033714.P2652205472101987344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A072290 n|

end

end A033714.P2652205472101987344

namespace A033714

/-- `abs(n-A072290(n))` -/
def P2652205472101987344.Spec : Prop :=
  ∀ n, P2652205472101987344.a n = A033714 (n + 1)

end A033714

/-! ## A033714.P4915026736338347626

`abs(A002275(n)-A064748(n))`
-/

namespace A033714.P4915026736338347626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002275 n - A064748 n|

end

end A033714.P4915026736338347626

namespace A033714

/-- `abs(A002275(n)-A064748(n))` -/
def P4915026736338347626.Spec : Prop :=
  ∀ n, P4915026736338347626.a n = A033714 (n + 1)

end A033714

/-! ## A033714.P9882447303068590848

`∑[A081045(n)-A178500(n)]`
-/

namespace A033714.P9882447303068590848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n - A178500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033714.P9882447303068590848

namespace A033714

/-- `∑[A081045(n)-A178500(n)]` -/
def P9882447303068590848.Spec : Prop :=
  ∀ n, P9882447303068590848.a n = A033714 (n + 1)

end A033714

/-!
# A033715: Number of integer solutions (x, y) to the equation x^2 + 2y^2 = n.

The programs for A033715, the canonical program `A033715.P6517919621530533375` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033715 has offset 0).

The definition of A033715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028572, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033715.P2445392310435506878

`(-1)^floor((n+1)/2)*A082564(n)`
-/

namespace A033715.P2445392310435506878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A082564 n : ℚ)

end

end A033715.P2445392310435506878

namespace A033715

/-- `(-1)^floor((n+1)/2)*A082564(n)` -/
def P2445392310435506878.Spec : Prop :=
  ∀ n, P2445392310435506878.a n = (A033715 n : ℚ)

end A033715

/-! ## A033715.P10763014062060200444

`A133692(2*n)`
-/

namespace A033715.P10763014062060200444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

end

end A033715.P10763014062060200444

namespace A033715

/-- `A133692(2*n)` -/
def P10763014062060200444.Spec : Prop :=
  ∀ n, P10763014062060200444.a n = A033715 n

end A033715

/-! ## A033715.P6517919621530533375

`A028572(4*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033715

/-- `A028572(4*n)` -/
def P6517919621530533375.Spec : Prop :=
  ∀ n, P6517919621530533375.a n = A033715 n

theorem P6517919621530533375.correct : P6517919621530533375.Spec := by
  intro n
  simp only [A033715]

end A033715

/-! ## A033715.P16051480922253149641

`A242609(4*n)`
-/

namespace A033715.P16051480922253149641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242609 (4 * n)

end

end A033715.P16051480922253149641

namespace A033715

/-- `A242609(4*n)` -/
def P16051480922253149641.Spec : Prop :=
  ∀ n, P16051480922253149641.a n = A033715 n

end A033715

/-! ## A033715.P15494392374455940489

`A245572(4*n)/3`
-/

namespace A033715.P15494392374455940489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245572 (4 * n) : ℚ) / 3

end

end A033715.P15494392374455940489

namespace A033715

/-- `A245572(4*n)/3` -/
def P15494392374455940489.Spec : Prop :=
  ∀ n, P15494392374455940489.a n = (A033715 n : ℚ)

end A033715

/-! ## A033715.P10659250651216695146

`A139093(8*n)`
-/

namespace A033715.P10659250651216695146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 (8 * n)

end

end A033715.P10659250651216695146

namespace A033715

/-- `A139093(8*n)` -/
def P10659250651216695146.Spec : Prop :=
  ∀ n, P10659250651216695146.a n = A033715 n

end A033715

/-! ## A033715.P5531865276339645879

`A226225(8*n)`
-/

namespace A033715.P5531865276339645879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226225 (8 * n)

end

end A033715.P5531865276339645879

namespace A033715

/-- `A226225(8*n)` -/
def P5531865276339645879.Spec : Prop :=
  ∀ n, P5531865276339645879.a n = A033715 n

end A033715

/-! ## A033715.P8487410420651428457

`A226240(4*n)`
-/

namespace A033715.P8487410420651428457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226240 (4 * n)

end

end A033715.P8487410420651428457

namespace A033715

/-- `A226240(4*n)` -/
def P8487410420651428457.Spec : Prop :=
  ∀ n, P8487410420651428457.a n = A033715 n

end A033715

/-! ## A033715.P10128218372158887976

`abs(A082564(n))`
-/

namespace A033715.P10128218372158887976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082564 n|

end

end A033715.P10128218372158887976

namespace A033715

/-- `abs(A082564(n))` -/
def P10128218372158887976.Spec : Prop :=
  ∀ n, P10128218372158887976.a n = A033715 n

end A033715

/-! ## A033715.P2231001295694712126

`abs(A133692(n))`
-/

namespace A033715.P2231001295694712126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133692 n|

end

end A033715.P2231001295694712126

namespace A033715

/-- `abs(A133692(n))` -/
def P2231001295694712126.Spec : Prop :=
  ∀ n, P2231001295694712126.a n = A033715 n

end A033715

/-! ## A033715.P900310230165266593

`abs(A139093(n))`
-/

namespace A033715.P900310230165266593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139093 n|

end

end A033715.P900310230165266593

namespace A033715

/-- `abs(A139093(n))` -/
def P900310230165266593.Spec : Prop :=
  ∀ n, P900310230165266593.a n = A033715 n

end A033715

/-! ## A033715.P7385678137241284233

`A082564(n)*A087960(n)`
-/

namespace A033715.P7385678137241284233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n * A087960 n

end

end A033715.P7385678137241284233

namespace A033715

/-- `A082564(n)*A087960(n)` -/
def P7385678137241284233.Spec : Prop :=
  ∀ n, P7385678137241284233.a n = A033715 n

end A033715

/-! ## A033715.P12532301555796109324

`gcd(A000038(n), A082564(n))`
-/

namespace A033715.P12532301555796109324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082564 n)

end

end A033715.P12532301555796109324

namespace A033715

/-- `gcd(A000038(n), A082564(n))` -/
def P12532301555796109324.Spec : Prop :=
  ∀ n, (P12532301555796109324.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P7601851579822924247

`gcd(A028572(n), A139093(n))`
-/

namespace A033715.P7601851579822924247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028572 n) (A139093 n)

end

end A033715.P7601851579822924247

namespace A033715

/-- `gcd(A028572(n), A139093(n))` -/
def P7601851579822924247.Spec : Prop :=
  ∀ n, (P7601851579822924247.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P4138998665727316918

`gcd(A226225(n), A245572(n))`
-/

namespace A033715.P4138998665727316918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226225 n) (A245572 n)

end

end A033715.P4138998665727316918

namespace A033715

/-- `gcd(A226225(n), A245572(n))` -/
def P4138998665727316918.Spec : Prop :=
  ∀ n, (P4138998665727316918.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P1797387904211299673

`lcm(A000034(n), A082564(n))`
-/

namespace A033715.P1797387904211299673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A082564 n)

end

end A033715.P1797387904211299673

namespace A033715

/-- `lcm(A000034(n), A082564(n))` -/
def P1797387904211299673.Spec : Prop :=
  ∀ n, (P1797387904211299673.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P5549587422434357015

`lcm(A001285(n), A133692(n))`
-/

namespace A033715.P5549587422434357015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A133692 n)

end

end A033715.P5549587422434357015

namespace A033715

/-- `lcm(A001285(n), A133692(n))` -/
def P5549587422434357015.Spec : Prop :=
  ∀ n, (P5549587422434357015.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P6717708001296057029

`lcm(A003842(n), A139093(n))`
-/

namespace A033715.P6717708001296057029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003842 n) (A139093 n)

end

end A033715.P6717708001296057029

namespace A033715

/-- `lcm(A003842(n), A139093(n))` -/
def P6717708001296057029.Spec : Prop :=
  ∀ n, (P6717708001296057029.a n : ℤ) = A033715 n

end A033715

/-! ## A033715.P12607470873258740445

`A244540(n)+A244540(n)-A004018(n)`
-/

namespace A033715.P12607470873258740445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244540 n + (A244540 n - A004018 n)

end

end A033715.P12607470873258740445

namespace A033715

/-- `A244540(n)+A244540(n)-A004018(n)` -/
def P12607470873258740445.Spec : Prop :=
  ∀ n, P12607470873258740445.a n = A033715 n

end A033715

/-! ## A033715.P15207014744506447515

`A125096(A008574(n))`
-/

namespace A033715.P15207014744506447515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008574 n).toNat

end

end A033715.P15207014744506447515

namespace A033715

/-- `A125096(A008574(n))` -/
def P15207014744506447515.Spec : Prop :=
  ∀ n, P15207014744506447515.a n = A033715 n

end A033715

/-!
# A033716: Number of integer solutions to the equation x^2 + 3y^2 = n.

The programs for A033716, there is no canonical definition to state claims against.
-/

/-! ## A033716.P15167219366719642030

`abs(A115978(n))`
-/

namespace A033716.P15167219366719642030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115978 n|

end

end A033716.P15167219366719642030

/-! ## A033716.P2407395719153940721

`A004016(n)/3^(n%2)`
-/

namespace A033716.P2407395719153940721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A033716.P2407395719153940721

/-! ## A033716.P9924246070160466564

`A033999(n)*A115978(n)`
-/

namespace A033716.P9924246070160466564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115978 n

end

end A033716.P9924246070160466564

/-! ## A033716.P17987289723067372752

`A057079(n)*A097109(n)`
-/

namespace A033716.P17987289723067372752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A097109 n

end

end A033716.P17987289723067372752

/-! ## A033716.P3685518612350922385

`A097109(n)*A132954(n)`
-/

namespace A033716.P3685518612350922385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n * A132954 n

end

end A033716.P3685518612350922385

/-! ## A033716.P5196658083756156320

`A004016(n)/A010684(n)`
-/

namespace A033716.P5196658083756156320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A010684 n : ℚ)

end

end A033716.P5196658083756156320

/-! ## A033716.P3095426510487450862

`A004016(n)/A167817(n)`
-/

namespace A033716.P3095426510487450862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A167817 n : ℚ)

end

end A033716.P3095426510487450862

/-! ## A033716.P6345177586703240491

`A217220(n)/A000034(n)`
-/

namespace A033716.P6345177586703240491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A000034 n : ℚ)

end

end A033716.P6345177586703240491

/-! ## A033716.P17682110063612849904

`A217220(n)/A068073(n)`
-/

namespace A033716.P17682110063612849904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A068073 n : ℚ)

end

end A033716.P17682110063612849904

/-! ## A033716.P52743244590107830

`A217220(n)/A071222(n)`
-/

namespace A033716.P52743244590107830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A071222 n : ℚ)

end

end A033716.P52743244590107830

/-! ## A033716.P8645109730098615405

`A217220(n)/A177002(n)`
-/

namespace A033716.P8645109730098615405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A177002 n : ℚ)

end

end A033716.P8645109730098615405

/-! ## A033716.P6846720634403163633

`gcd(A000038(n), A115978(n))`
-/

namespace A033716.P6846720634403163633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115978 n)

end

end A033716.P6846720634403163633

/-! ## A033716.P8005855269249813483

`gcd(A004016(n), A217220(n))`
-/

namespace A033716.P8005855269249813483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004016 n) (A217220 n)

end

end A033716.P8005855269249813483

/-! ## A033716.P9005604420851067290

`lcm(A000034(n), A115978(n))`
-/

namespace A033716.P9005604420851067290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A115978 n)

end

end A033716.P9005604420851067290

/-! ## A033716.P17395852198783701330

`lcm(A097109(n), A113973(n))`
-/

namespace A033716.P17395852198783701330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097109 n) (A113973 n)

end

end A033716.P17395852198783701330

/-! ## A033716.P1281171388141254696

`lcm(A164273(n), A253625(n))`
-/

namespace A033716.P1281171388141254696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A164273 n) (A253625 n)

end

end A033716.P1281171388141254696

/-! ## A033716.P8902027675190263933

`A004016(n)/A010155(n+1)`
-/

namespace A033716.P8902027675190263933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A010155 (n + 1) : ℚ)

end

end A033716.P8902027675190263933

/-! ## A033716.P2779462413355081248

`A004016(n)/A073575(n+1)`
-/

namespace A033716.P2779462413355081248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A073575 (n + 1) : ℚ)

end

end A033716.P2779462413355081248

/-! ## A033716.P5805387147890577828

`A217220(n)/A053589(n+1)`
-/

namespace A033716.P5805387147890577828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A053589 (n + 1) : ℚ)

end

end A033716.P5805387147890577828

/-! ## A033716.P14769191199303407526

`A217220(n)/A055770(n+1)`
-/

namespace A033716.P14769191199303407526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 n : ℚ) / (A055770 (n + 1) : ℚ)

end

end A033716.P14769191199303407526

/-!
# A033717: Number of integer solutions to the equation x^2 + 2*y^2 + 4*z^2 = n.

The programs for A033717, there is no canonical definition to state claims against.
-/

/-! ## A033717.P8252657840271439675

`A080917(2*n)`
-/

namespace A033717.P8252657840271439675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (2 * n)

end

end A033717.P8252657840271439675

/-! ## A033717.P6909758111875841321

`xor(1, xor(1, A080917(n+n)))`
-/

namespace A033717.P6909758111875841321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A080917 (n + n)))

end

end A033717.P6909758111875841321

/-! ## A033717.P18383330344682168359

`A080917(A005843(n))%(n+3)`
-/

namespace A033717.P18383330344682168359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080917 (A005843 n).toNat) (n + 3 : ℤ)

end

end A033717.P18383330344682168359

/-! ## A033717.P5472719659307462083

`A080917(A005843(n))^A033999(n)^A256406(n+1)`
-/

namespace A033717.P5472719659307462083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080917 (A005843 n).toNat : ℝ) ^ ((A033999 n : ℚ) ^ (A256406 (n + 1) : ℤ) : ℝ)

end

end A033717.P5472719659307462083

/-! ## A033717.P8627536169982204257

`2*A080918(2*n)-A080963(2*n)`
-/

namespace A033717.P8627536169982204257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 (2 * n) - A080963 (2 * n)

end

end A033717.P8627536169982204257

/-! ## A033717.P16554207501586712279

`(A246814(2*n)+A246631(2*n))/2`
-/

namespace A033717.P16554207501586712279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246814 (2 * n) + A246631 (2 * n) : ℚ) / 2

end

end A033717.P16554207501586712279

/-! ## A033717.P10651849297327641696

`A028698(4*n)`
-/

namespace A033717.P10651849297327641696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 (4 * n)

end

end A033717.P10651849297327641696

/-! ## A033717.P11010195012410044817

`A080918(8*n)`
-/

namespace A033717.P11010195012410044817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (8 * n)

end

end A033717.P11010195012410044817

/-!
# A033718: Product theta3(q^d); d | 5.

The programs for A033718, there is no canonical definition to state claims against.
-/

/-! ## A033718.P4881036360561778046

`2*A124233(n)-A028586(n)`
-/

namespace A033718.P4881036360561778046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124233 n - A028586 n

end

end A033718.P4881036360561778046

/-! ## A033718.P18177163944882213974

`A028586(2*n)`
-/

namespace A033718.P18177163944882213974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (2 * n)

end

end A033718.P18177163944882213974

/-! ## A033718.P15623624765831688348

`A321801(A028586(n+n))`
-/

namespace A033718.P15623624765831688348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (A028586 (n + n)).toNat

end

end A033718.P15623624765831688348

/-! ## A033718.P14829388442073503363

`or(A000122(n), A028586(n+n))`
-/

namespace A033718.P14829388442073503363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A028586 (n + n))

end

end A033718.P14829388442073503363

/-! ## A033718.P16021680987222261480

`A028586(n+n)%A033205(n+1)`
-/

namespace A033718.P16021680987222261480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028586 (n + n)) (A033205 (n + 1))

end

end A033718.P16021680987222261480

/-! ## A033718.P16033214704740434561

`A028586(n+n)/A003963(A028586(n)+1)`
-/

namespace A033718.P16033214704740434561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028586 (n + n) : ℚ) / (A003963 (A028586 n + 1).toNat : ℚ)

end

end A033718.P16033214704740434561

/-! ## A033718.P819491346441026708

`A028645(4*4*n)`
-/

namespace A033718.P819491346441026708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (4 * (4 * n))

end

end A033718.P819491346441026708

/-!
# A033719: Coefficients in expansion of theta_3(q) * theta_3(q^7) in powers of q.

The programs for A033719, there is no canonical definition to state claims against.
-/

/-! ## A033719.P3142117545080081992

`A020639(∏{p}[2*n, #])*A110399(A028310(n))`
-/

namespace A033719.P3142117545080081992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A110399 (A028310 n).toNat

end

end A033719.P3142117545080081992

/-! ## A033719.P3270134368798425105

`A000032(C(2, n+2))*A110399(A000007(n)+n)`
-/

namespace A033719.P3270134368798425105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A110399 (A000007 n + (n : ℤ)).toNat

end

end A033719.P3270134368798425105

/-! ## A033719.P14380903062380007214

`A006530(A001316(n))*A110399(A028310(n))`
-/

namespace A033719.P14380903062380007214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A110399 (A028310 n).toNat

end

end A033719.P14380903062380007214

/-! ## A033719.P6656695612574064843

`A020639(A004277(n))*A110399(A028310(n))`
-/

namespace A033719.P6656695612574064843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A110399 (A028310 n).toNat

end

end A033719.P6656695612574064843

/-! ## A033719.P255263939124888679

`A020639(A103517(n))*A110399(A028310(n))`
-/

namespace A033719.P255263939124888679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A110399 (A028310 n).toNat

end

end A033719.P255263939124888679

/-! ## A033719.P18219451254391008426

`A020639(A029935(n+1))*A110399(A028310(n))`
-/

namespace A033719.P18219451254391008426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029935 (n + 1)).toNat * A110399 (A028310 n).toNat

end

end A033719.P18219451254391008426

/-! ## A033719.P4004996659267129572

`A020639(A000010(2*n+1))*A110399(A028310(n))`
-/

namespace A033719.P4004996659267129572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (2 * n + 1)).toNat * A110399 (A028310 n).toNat

end

end A033719.P4004996659267129572

/-! ## A033719.P7762918076761931139

`A020639(A006093(n+1))*A110399(A028310(n))`
-/

namespace A033719.P7762918076761931139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A110399 (A028310 n).toNat

end

end A033719.P7762918076761931139

/-! ## A033719.P7623025098360591480

`A020639(A000040(n+1)-1)*A110399(A028310(n))`
-/

namespace A033719.P7623025098360591480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A110399 (A028310 n).toNat

end

end A033719.P7623025098360591480

/-! ## A033719.P14594323854600206137

`A000005(A050229(n+1))*A110399(A000007(n)+n)`
-/

namespace A033719.P14594323854600206137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050229 (n + 1)).toNat * A110399 (A000007 n + (n : ℤ)).toNat

end

end A033719.P14594323854600206137

/-! ## A033719.P1043319662423567985

`A205974(n)/A324969(n+1)`
-/

namespace A033719.P1043319662423567985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205974 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A033719.P1043319662423567985

/-! ## A033719.P7703958507539857307

`A109041(n)/A205973(n)*A205974(n)`
-/

namespace A033719.P7703958507539857307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 n : ℚ) / (A205973 n : ℚ) * (A205974 n : ℚ)

end

end A033719.P7703958507539857307

/-! ## A033719.P12965582385259150000

`A209454(n)/A215928(n)`
-/

namespace A033719.P12965582385259150000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209454 n : ℚ) / (A215928 n : ℚ)

end

end A033719.P12965582385259150000

/-! ## A033719.P6551565707698014415

`A109041(n)/A209453(n)*A209454(n)`
-/

namespace A033719.P6551565707698014415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 n : ℚ) / (A209453 n : ℚ) * (A209454 n : ℚ)

end

end A033719.P6551565707698014415

/-!
# A033720: Product theta3(q^d); d | 8.

The programs for A033720, there is no canonical definition to state claims against.
-/

/-! ## A033720.P14939075174345504962

`A033728(record[n-A185044(n)])`
-/

namespace A033720.P14939075174345504962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A185044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033728 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033720.P14939075174345504962

/-! ## A033720.P13711955021113472072

`A033744(record[n-A185044(n)])`
-/

namespace A033720.P13711955021113472072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A185044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033744 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033720.P13711955021113472072

/-! ## A033720.P14948137722389873910

`and(A033728(n), A131762(A360194(n+1)))`
-/

namespace A033720.P14948137722389873910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033728 n) (A131762 (A360194 (n + 1)).toNat)

end

end A033720.P14948137722389873910

/-! ## A033720.P16094079114128874114

`and(A033744(n), A131762(A360194(n+1)))`
-/

namespace A033720.P16094079114128874114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033744 n) (A131762 (A360194 (n + 1)).toNat)

end

end A033720.P16094079114128874114

/-! ## A033720.P1097534837324025800

`A033744(n)%A307478(A033744(n))`
-/

namespace A033720.P1097534837324025800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033744 n) (A307478 (A033744 n).toNat)

end

end A033720.P1097534837324025800

/-!
# A033721: Product theta3(q^d); d | 9.

The programs for A033721, there is no canonical definition to state claims against.
-/

/-! ## A033721.P10250627628379028727

`A028702(4*n)`
-/

namespace A033721.P10250627628379028727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (4 * n)

end

end A033721.P10250627628379028727

/-! ## A033721.P15002508335667711803

`C(2, n+2)+A028702(A008574(n))`
-/

namespace A033721.P15002508335667711803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + A028702 (A008574 n).toNat

end

end A033721.P15002508335667711803

/-! ## A033721.P9401399335595363689

`A028702(A008574(n))+A000007(n)`
-/

namespace A033721.P9401399335595363689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008574 n).toNat + A000007 n

end

end A033721.P9401399335595363689

/-! ## A033721.P1344363599448161789

`A028702(A008574(n))+A019590(n+2)`
-/

namespace A033721.P1344363599448161789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008574 n).toNat + A019590 (n + 2)

end

end A033721.P1344363599448161789

/-! ## A033721.P17199267341181748047

`A028702(A008574(n))+A000038(n)/2`
-/

namespace A033721.P17199267341181748047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A008574 n).toNat : ℚ) + (A000038 n : ℚ) / 2

end

end A033721.P17199267341181748047

/-! ## A033721.P14909989088624359429

`A028702(A008574(n))+and(1, A028702(n))`
-/

namespace A033721.P14909989088624359429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008574 n).toNat + Int.land 1 (A028702 n)

end

end A033721.P14909989088624359429

/-! ## A033721.P14623244079593760010

`A028702(A008574(n))+floor(1/A000005(n+1))`
-/

namespace A033721.P14623244079593760010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008574 n).toNat + ⌊1 / (A000005 (n + 1) : ℚ)⌋

end

end A033721.P14623244079593760010

/-! ## A033721.P12038197328858706441

`floor(A028702(A008574(n))+1/A002024(n+1))`
-/

namespace A033721.P12038197328858706441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028702 (A008574 n).toNat : ℚ) + 1 / (A002024 (n + 1) : ℚ)⌋

end

end A033721.P12038197328858706441

/-! ## A033721.P14925748526242152931

`A028702(A008574(n))^(record[A020639(n+2)]%2)`
-/

namespace A033721.P14925748526242152931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A008574 n).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A033721.P14925748526242152931

/-! ## A033721.P6990073901500229843

`A028702(A008574(n))^A001221(A056672(n+1))`
-/

namespace A033721.P6990073901500229843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A008574 n).toNat : ℚ) ^ (A001221 (A056672 (n + 1)).toNat : ℤ)

end

end A033721.P6990073901500229843

/-! ## A033721.P12440052371500154451

`A028702(A008574(n))^A001221(A137688(n))`
-/

namespace A033721.P12440052371500154451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A008574 n).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A033721.P12440052371500154451

/-! ## A033721.P12992597641147920802

`A028702(A008574(n))^A001221(A056673(n+1))`
-/

namespace A033721.P12992597641147920802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A008574 n).toNat : ℚ) ^ (A001221 (A056673 (n + 1)).toNat : ℤ)

end

end A033721.P12992597641147920802

/-!
# A033723: Product theta3(q^d); d | 11.

The programs for A033723, there is no canonical definition to state claims against.
-/

/-! ## A033723.P8979531869315996761

`A000145(n)%A040111(A328029(n+1))`
-/

namespace A033723.P8979531869315996761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000145 n) (A040111 (A328029 (n + 1)).toNat)

end

end A033723.P8979531869315996761

/-! ## A033723.P4295993789291397305

`(∑[A002448(n²)]*A286346(n))%11`
-/

namespace A033723.P4295993789291397305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) * A286346 n) 11

end

end A033723.P4295993789291397305

/-! ## A033723.P14851610939432591158

`A000145(n)%A008453(A014963(A000132(n)))`
-/

namespace A033723.P14851610939432591158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000145 n) (A008453 (A014963 (A000132 n).toNat).toNat)

end

end A033723.P14851610939432591158

/-! ## A033723.P979633722352174295

`A033753(A068129(n+1))+A033753(n)`
-/

namespace A033723.P979633722352174295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033753 (A068129 (n + 1)).toNat + A033753 n

end

end A033723.P979633722352174295

/-! ## A033723.P13816523742321556499

`gcd(A000122(n), A138270(A212389(n)))`
-/

namespace A033723.P13816523742321556499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A138270 (A212389 n).toNat)

end

end A033723.P13816523742321556499

/-!
# A033725: Product theta3(q^d); d | 13.

The programs for A033725, there is no canonical definition to state claims against.
-/

/-! ## A033725.P405854140597476556

`A276286(n)%A040156(n)`
-/

namespace A033725.P405854140597476556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276286 n) (A040156 n)

end

end A033725.P405854140597476556

/-! ## A033725.P14412609875808328421

`A028617(A064680(n))`
-/

namespace A033725.P14412609875808328421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028617 (A064680 n).toNat

end

end A033725.P14412609875808328421

/-! ## A033725.P17931834963011283182

`A028617(2*n)`
-/

namespace A033725.P17931834963011283182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028617 (2 * n)

end

end A033725.P17931834963011283182

/-! ## A033725.P14901185701748390254

`A029578(A028617(n+n)+1)`
-/

namespace A033725.P14901185701748390254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A028617 (n + n) + 1).toNat

end

end A033725.P14901185701748390254

/-! ## A033725.P3867570023553750566

`lcm(A025065(A028617(n)), A028617(n+n))`
-/

namespace A033725.P3867570023553750566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025065 (A028617 n).toNat) (A028617 (n + n))

end

end A033725.P3867570023553750566

/-! ## A033725.P9355301626104628786

`A102037(Δ[A110654(n)])+A028617(n+n)`
-/

namespace A033725.P9355301626104628786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102037 (f1 (n + 1) - f1 n).toNat + A028617 (n + n)

end

end A033725.P9355301626104628786

/-! ## A033725.P8831389611221971682

`A028617(n+n)%∑[A109199(n)]`
-/

namespace A033725.P8831389611221971682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028617 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033725.P8831389611221971682

/-! ## A033725.P15308058589643923647

`A028617(n+n)^A007913((n+1)²)`
-/

namespace A033725.P15308058589643923647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028617 (n + n) : ℚ) ^ (A007913 ((n + 1) ^ 2) : ℤ)

end

end A033725.P15308058589643923647

/-!
# A033728: Product theta3(q^d); d | 16.

The programs for A033728, there is no canonical definition to state claims against.
-/

/-! ## A033728.P11706041860184966289

`lcm(A033744(n), A124778(n))`
-/

namespace A033728.P11706041860184966289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033744 n) (A124778 n)

end

end A033728.P11706041860184966289

/-! ## A033728.P12821798191825365568

`A033744(n)%A036884(n+2)`
-/

namespace A033728.P12821798191825365568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033744 n) (A036884 (n + 2))

end

end A033728.P12821798191825365568

/-! ## A033728.P12859157098030114565

`A033744(floor(log2(A125899(n+1))))`
-/

namespace A033728.P12859157098030114565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033744 (Nat.log 2 (A125899 (n + 1)).toNat)

end

end A033728.P12859157098030114565

/-! ## A033728.P2227133566287253545

`A033744(n)+A351870(2*n)%2`
-/

namespace A033728.P2227133566287253545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033744 n + Int.tmod (A351870 (2 * n)) 2

end

end A033728.P2227133566287253545

/-! ## A033728.P4393906118854107537

`floor(A033744(n)+n/A125899(n+1))`
-/

namespace A033728.P4393906118854107537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033744 n : ℚ) + (n : ℚ) / (A125899 (n + 1) : ℚ)⌋

end

end A033728.P4393906118854107537

/-!
# A033729: Expansion of Product_{d | 17} theta_3(q^d).

The programs for A033729, there is no canonical definition to state claims against.
-/

/-! ## A033729.P6277798191455534488

`A028633(A064680(n))`
-/

namespace A033729.P6277798191455534488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028633 (A064680 n).toNat

end

end A033729.P6277798191455534488

/-! ## A033729.P5655411211557546638

`A028633(2*n)`
-/

namespace A033729.P5655411211557546638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028633 (2 * n)

end

end A033729.P5655411211557546638

/-! ## A033729.P728699809141248926

`A028633(n+n)%A001747(n+1)`
-/

namespace A033729.P728699809141248926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028633 (n + n)) (A001747 (n + 1))

end

end A033729.P728699809141248926

/-! ## A033729.P6911255182308185312

`A028633(A004277(n))+A000007(n)`
-/

namespace A033729.P6911255182308185312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028633 (A004277 n).toNat + A000007 n

end

end A033729.P6911255182308185312

/-! ## A033729.P9478710111911542543

`or(A000122(n), A028633(A005843(n)))`
-/

namespace A033729.P9478710111911542543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A028633 (A005843 n).toNat)

end

end A033729.P9478710111911542543

/-! ## A033729.P15234986876082355228

`lcm(A006519(n+1), A028633(A005843(n)))`
-/

namespace A033729.P15234986876082355228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A028633 (A005843 n).toNat)

end

end A033729.P15234986876082355228

/-! ## A033729.P7411666097090873374

`A036987(A002378(n))+A028633(A004277(n))`
-/

namespace A033729.P7411666097090873374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A002378 n).toNat + A028633 (A004277 n).toNat

end

end A033729.P7411666097090873374

/-! ## A033729.P1125648292438906609

`A028633(n+n)/A332013(∑[n])`
-/

namespace A033729.P1125648292438906609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028633 (n + n) : ℚ) / (A332013 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A033729.P1125648292438906609

/-!
# A033730: Expansion of Product_{d | 18} theta_3(q^d).

The programs for A033730, there is no canonical definition to state claims against.
-/

/-! ## A033730.P17424058966357685300

`A258850(A014374(n))+A033712(n)`
-/

namespace A033730.P17424058966357685300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (A014374 n).toNat + A033712 n

end

end A033730.P17424058966357685300

/-!
# A033731: Expansion of Product_{d | 19} theta_3(q^d).

The programs for A033731, there is no canonical definition to state claims against.
-/

/-! ## A033731.P11001444127915405185

`abs(A319308(n)%38)`
-/

namespace A033731.P11001444127915405185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A319308 n) 38|

end

end A033731.P11001444127915405185

/-! ## A033731.P10060240523300445927

`and(A028641(n), A126305(A132222(n)))`
-/

namespace A033731.P10060240523300445927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028641 n) (A126305 (A132222 n).toNat)

end

end A033731.P10060240523300445927

/-! ## A033731.P13669590582668115234

`and(A028641(n), A344308(A089391(n+2)))`
-/

namespace A033731.P13669590582668115234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028641 n) (A344308 (A089391 (n + 2)).toNat)

end

end A033731.P13669590582668115234

/-! ## A033731.P12405736901505944391

`and(A028641(n), A382685(n+1))`
-/

namespace A033731.P12405736901505944391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028641 n) (A382685 (n + 1))

end

end A033731.P12405736901505944391

/-! ## A033731.P5027505245368330737

`and(A028641(n), A100616(A166590(n+1)))`
-/

namespace A033731.P5027505245368330737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028641 n) (A100616 (A166590 (n + 1)).toNat)

end

end A033731.P5027505245368330737

/-!
# A033734: Expansion of Product_{d | 22} theta_3(q^d).

The programs for A033734, there is no canonical definition to state claims against.
-/

/-! ## A033734.P15983072531530096910

`A033715(n^A036370(n))`
-/

namespace A033734.P15983072531530096910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A036370 n : ℤ))).toNat

end

end A033734.P15983072531530096910

/-! ## A033734.P16393613959282368097

`A033715(n^A067032(n))`
-/

namespace A033734.P16393613959282368097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A067032 n : ℤ))).toNat

end

end A033734.P16393613959282368097

/-! ## A033734.P2907992602088587470

`A033715(n^A067284(n))`
-/

namespace A033734.P2907992602088587470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A067284 n : ℤ))).toNat

end

end A033734.P2907992602088587470

/-! ## A033734.P2611916623217799643

`A033715(n^A274843(n))`
-/

namespace A033734.P2611916623217799643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A274843 n : ℤ))).toNat

end

end A033734.P2611916623217799643

/-! ## A033734.P6017816440447748863

`A033715(n^A164306(n+1))`
-/

namespace A033734.P6017816440447748863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A164306 (n + 1) : ℤ))).toNat

end

end A033734.P6017816440447748863

/-!
# A033735: Expansion of Product_{d | 23} theta_3(q^d).

The programs for A033735, there is no canonical definition to state claims against.
-/

/-! ## A033735.P17574911543404407625

`A000156(n)%23`
-/

namespace A033735.P17574911543404407625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000156 n) 23

end

end A033735.P17574911543404407625

/-! ## A033735.P7918680193627726951

`abs(A319309(n)%23)`
-/

namespace A033735.P7918680193627726951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A319309 n) 23|

end

end A033735.P7918680193627726951

/-! ## A033735.P9862980957220711737

`and(A063045(n+2)-1, A028959(n))`
-/

namespace A033735.P9862980957220711737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063045 (n + 2) - 1) (A028959 n)

end

end A033735.P9862980957220711737

/-! ## A033735.P4024455022136883790

`A028959(n)%A337132(A253561(n+2))`
-/

namespace A033735.P4024455022136883790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028959 n) (A337132 (A253561 (n + 2)).toNat)

end

end A033735.P4024455022136883790

/-! ## A033735.P2275082289480199404

`A028959(n)%A353701(n+2)`
-/

namespace A033735.P2275082289480199404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028959 n) (A353701 (n + 2))

end

end A033735.P2275082289480199404

/-!
# A033736: Expansion of Product_{d | 24} theta_3(q^d).

The programs for A033736, there is no canonical definition to state claims against.
-/

/-! ## A033736.P10680608220331199319

`A033760(n)-A139352(A184955(n))`
-/

namespace A033736.P10680608220331199319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033760 n - A139352 (A184955 n).toNat

end

end A033736.P10680608220331199319

/-! ## A033736.P6978597172070107169

`A033760(n)-A037856(A184955(n)+1)`
-/

namespace A033736.P6978597172070107169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033760 n - A037856 (A184955 n + 1).toNat

end

end A033736.P6978597172070107169

/-! ## A033736.P451408295069115069

`A018851(A033760(n)²)`
-/

namespace A033736.P451408295069115069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A033760 n ^ 2).toNat

end

end A033736.P451408295069115069

/-! ## A033736.P8565943197002361163

`A033760(n^A254609(n))`
-/

namespace A033736.P8565943197002361163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033760 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A033736.P8565943197002361163

/-! ## A033736.P3634605466495721133

`A033760(n)%∑[A008885(n)]`
-/

namespace A033736.P3634605466495721133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033760 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033736.P3634605466495721133

/-!
# A033737: Expansion of Product_{d | 25} theta_3(q^d).

The programs for A033737, there is no canonical definition to state claims against.
-/

/-! ## A033737.P7661818331280203669

`A028710(4*n)`
-/

namespace A033737.P7661818331280203669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (4 * n)

end

end A033737.P7661818331280203669

/-! ## A033737.P16151542493128002100

`A028710(A008574(n))+A000007(n)`
-/

namespace A033737.P16151542493128002100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A008574 n).toNat + A000007 n

end

end A033737.P16151542493128002100

/-! ## A033737.P2932909752468521018

`gcd(A028710(A008574(n)), A028710(n))`
-/

namespace A033737.P2932909752468521018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028710 (A008574 n).toNat) (A028710 n)

end

end A033737.P2932909752468521018

/-! ## A033737.P6007061564659826301

`A028710(A008574(n))+1-A062157(n)²`
-/

namespace A033737.P6007061564659826301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A008574 n).toNat + (1 - A062157 n ^ 2)

end

end A033737.P6007061564659826301

/-! ## A033737.P16635874798004953081

`A028710(A008574(n))+A061142(n+1)%2`
-/

namespace A033737.P16635874798004953081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A008574 n).toNat + Int.tmod (A061142 (n + 1)) 2

end

end A033737.P16635874798004953081

/-! ## A033737.P1677729801763463671

`A028710(A008574(n))+A000079(n)%2`
-/

namespace A033737.P1677729801763463671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A008574 n).toNat + Int.tmod (A000079 n) 2

end

end A033737.P1677729801763463671

/-! ## A033737.P13016528897185749292

`or(A028710(n), A028710(A152691(n)))`
-/

namespace A033737.P13016528897185749292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028710 n) (A028710 (A152691 n).toNat)

end

end A033737.P13016528897185749292

/-!
# A033738: Expansion of Product_{d | 26} theta_3(q^d).

The programs for A033738, there is no canonical definition to state claims against.
-/

/-! ## A033738.P16765523340232039353

`A033715(A004885(A187829(n+1)))`
-/

namespace A033738.P16765523340232039353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A004885 (A187829 (n + 1)).toNat).toNat

end

end A033738.P16765523340232039353

/-! ## A033738.P8699185097980303282

`A033715(A001316(n)*A004907(n+1))`
-/

namespace A033738.P8699185097980303282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A001316 n * A004907 (n + 1)).toNat

end

end A033738.P8699185097980303282

/-! ## A033738.P4834895718689057614

`A033715(A004907(n+1)*A130321(n))`
-/

namespace A033738.P4834895718689057614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A004907 (n + 1) * A130321 n).toNat

end

end A033738.P4834895718689057614

/-! ## A033738.P5266351085700957524

`gcd(A079204(n+1), A133692(A048308(n)))`
-/

namespace A033738.P5266351085700957524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079204 (n + 1)) (A133692 (A048308 n).toNat)

end

end A033738.P5266351085700957524

/-! ## A033738.P12938644397920555912

`A033715(lcm(A004907(n+1), A130321(n)))`
-/

namespace A033738.P12938644397920555912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (Int.lcm (A004907 (n + 1)) (A130321 n))

end

end A033738.P12938644397920555912

/-!
# A033739: Expansion of Product_{d | 27} theta_3(q^d).

The programs for A033739, there is no canonical definition to state claims against.
-/

/-! ## A033739.P12481929596393789599

`A033721(n^A280865(n))`
-/

namespace A033739.P12481929596393789599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A280865 n : ℤ))).toNat

end

end A033739.P12481929596393789599

/-! ## A033739.P6904739355252629883

`A033721(n^A034522(n+1)!)`
-/

namespace A033739.P6904739355252629883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (n ^ Nat.factorial (A034522 (n + 1)).toNat)

end

end A033739.P6904739355252629883

/-! ## A033739.P16371161189608787573

`A033721(n)^A000079(A185264(n))`
-/

namespace A033739.P16371161189608787573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033721 n : ℚ) ^ (A000079 (A185264 n).toNat : ℤ)

end

end A033739.P16371161189608787573

/-! ## A033739.P13334082491481666811

`A033721(n)*A301491(A280865(n)!!)`
-/

namespace A033739.P13334082491481666811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 n * A301491 (Nat.factorial (Nat.factorial (A280865 n).toNat))

end

end A033739.P13334082491481666811

/-!
# A033740: Expansion of Product_{d | 28} theta_3(q^d).

The programs for A033740, there is no canonical definition to state claims against.
-/

/-! ## A033740.P6855398695488353239

`A320196(n)+A167688(A339724(n+1))`
-/

namespace A033740.P6855398695488353239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320196 n + A167688 (A339724 (n + 1)).toNat

end

end A033740.P6855398695488353239

/-! ## A033740.P15185266225707650165

`A320196(n)+A000122(A001770(2*n+1))`
-/

namespace A033740.P15185266225707650165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320196 n + A000122 (A001770 (2 * n + 1)).toNat

end

end A033740.P15185266225707650165

/-!
# A033741: Expansion of Product_{d | 29} theta_3(q^d).

The programs for A033741, there is no canonical definition to state claims against.
-/

/-! ## A033741.P9422611953297338826

`A033743(lt[A327343(3*n+2), 9])`
-/

namespace A033741.P9422611953297338826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327343 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033743 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033741.P9422611953297338826

/-! ## A033741.P8483889888434622104

`A000122(lt[A130922(n), 30])`
-/

namespace A033741.P8483889888434622104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033741.P8483889888434622104

/-! ## A033741.P12573623853257345948

`A000122(lt[A277616(n), 30])`
-/

namespace A033741.P12573623853257345948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277616 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033741.P12573623853257345948

/-! ## A033741.P1559441764312713736

`A000122(∑[n^A058348(n)])`
-/

namespace A033741.P1559441764312713736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A058348 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A033741.P1559441764312713736

/-! ## A033741.P4316788229372095491

`A000122(lt[A157231(n+1), 9])`
-/

namespace A033741.P4316788229372095491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033741.P4316788229372095491

/-!
# A033743: Expansion of Product_{d | 31} theta_3(q^d).

The programs for A033743, there is no canonical definition to state claims against.
-/

/-! ## A033743.P17072932812571211177

`A033755(A183866(n+1)%A333966(n+1))`
-/

namespace A033743.P17072932812571211177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (Int.tmod (A183866 (n + 1)) (A333966 (n + 1))).toNat

end

end A033743.P17072932812571211177

/-! ## A033743.P7818474934377613259

`A033753(lt[A178057(n+1), A064792(2*(n+2))])`
-/

namespace A033743.P7818474934377613259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033753 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033743.P7818474934377613259

/-! ## A033743.P3179159712645442640

`A000122(lt[∑{d}[n+1, lcm(2, #)/2], 40])`
-/

namespace A033743.P3179159712645442640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.lcm 2 d : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)

end

end A033743.P3179159712645442640

/-! ## A033743.P17220451101254966929

`A000122(lt[A086520(n), 6])`
-/

namespace A033743.P17220451101254966929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033743.P17220451101254966929

/-! ## A033743.P16452973414584312093

`A033755(lt[A086520(n), 6])`
-/

namespace A033743.P16452973414584312093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033743.P16452973414584312093

/-!
# A033745: Expansion of Product_{d | 33} theta_3(q^d).

The programs for A033745, there is no canonical definition to state claims against.
-/

/-! ## A033745.P12802033934893349734

`A033716(n^A040286(n))`
-/

namespace A033745.P12802033934893349734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A040286 n : ℤ))).toNat

end

end A033745.P12802033934893349734

/-! ## A033745.P4755951543545237572

`A033716(n^A063265(n))`
-/

namespace A033745.P4755951543545237572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A063265 n : ℤ))).toNat

end

end A033745.P4755951543545237572

/-! ## A033745.P10015835746861271121

`A033716(n^A068045(n))`
-/

namespace A033745.P10015835746861271121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A068045 n : ℤ))).toNat

end

end A033745.P10015835746861271121

/-! ## A033745.P5309141059227325280

`A033716(n^A131361(n))`
-/

namespace A033745.P5309141059227325280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A131361 n : ℤ))).toNat

end

end A033745.P5309141059227325280

/-! ## A033745.P13853876497174331067

`A033716(n^A175772(n))`
-/

namespace A033745.P13853876497174331067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A175772 n : ℤ))).toNat

end

end A033745.P13853876497174331067

/-!
# A033746: Expansion of Product_{d | 34} theta_3(q^d).

The programs for A033746, there is no canonical definition to state claims against.
-/

/-! ## A033746.P16001606864505909394

`A033715(n^A000115(A297244(n+1)))`
-/

namespace A033746.P16001606864505909394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A000115 (A297244 (n + 1)).toNat : ℤ))).toNat

end

end A033746.P16001606864505909394

/-! ## A033746.P13142705299700640225

`A033715(record[A032634(A251629(n))])`
-/

namespace A033746.P13142705299700640225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A251629 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033746.P13142705299700640225

/-! ## A033746.P8845084611886415063

`A102683(A259669(n))+A033715(n)`
-/

namespace A033746.P8845084611886415063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A259669 n).toNat + A033715 n

end

end A033746.P8845084611886415063

/-! ## A033746.P1728806677596129216

`A324683(A185036(n))+A033750(n)`
-/

namespace A033746.P1728806677596129216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 (A185036 n).toNat + A033750 n

end

end A033746.P1728806677596129216

/-! ## A033746.P4863186216219961256

`C(A033715(n), A000002(A180500(n)))`
-/

namespace A033746.P4863186216219961256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033715 n).toNat (A000002 (A180500 n).toNat).toNat

end

end A033746.P4863186216219961256

/-!
# A033747: Expansion of Product_{d | 35} theta_3(q^d).

The programs for A033747, there is no canonical definition to state claims against.
-/

/-! ## A033747.P17705280096936134297

`and(A086333(2*(n+1)), A086375(A086341(n)))`
-/

namespace A033747.P17705280096936134297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086333 (2 * (n + 1))) (A086375 (A086341 n).toNat)

end

end A033747.P17705280096936134297

/-!
# A033748: Expansion of Product_{d | 36} theta_3(q^d).

The programs for A033748, there is no canonical definition to state claims against.
-/

/-! ## A033748.P3493164687830723132

`A000005(A325396(n+1)*A394864(n))`
-/

namespace A033748.P3493164687830723132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A325396 (n + 1) * A394864 n).toNat

end

end A033748.P3493164687830723132

/-!
# A033749: Expansion of Product_{d | 37} theta_3(q^d).

The programs for A033749, there is no canonical definition to state claims against.
-/

/-! ## A033749.P4437723470777811401

`A033759(A032521(n))^A269518(A005914(n))`
-/

namespace A033749.P4437723470777811401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033759 (A032521 n).toNat : ℚ) ^ (A269518 (A005914 n).toNat : ℤ)

end

end A033749.P4437723470777811401

/-! ## A033749.P3947807506388752380

`A000122(n%Δ[A145047(n+4)])`
-/

namespace A033749.P3947807506388752380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145047 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.tmod (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A033749.P3947807506388752380

/-! ## A033749.P11945643922123099595

`A084888(A034554(n+1))+A000122(n)`
-/

namespace A033749.P11945643922123099595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 (A034554 (n + 1)).toNat + A000122 n

end

end A033749.P11945643922123099595

/-! ## A033749.P13728486223108227542

`A084888(A034554(n+1))+A033759(n)`
-/

namespace A033749.P13728486223108227542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 (A034554 (n + 1)).toNat + A033759 n

end

end A033749.P13728486223108227542

/-! ## A033749.P6047458074116052975

`A371172(A034516(n+1))+A000122(n)`
-/

namespace A033749.P6047458074116052975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371172 (A034516 (n + 1)).toNat + A000122 n

end

end A033749.P6047458074116052975

/-!
# A033750: Expansion of Product_{d | 38} theta_3(q^d).

The programs for A033750, there is no canonical definition to state claims against.
-/

/-! ## A033750.P17583791435943015821

`or(A033715(n), A193238(A288324(n)))`
-/

namespace A033750.P17583791435943015821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033715 n) (A193238 (A288324 n).toNat)

end

end A033750.P17583791435943015821

/-! ## A033750.P1736312344958142683

`A033715(n)+A010894(A242408(n+1))`
-/

namespace A033750.P1736312344958142683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n + A010894 ((A242408 (n + 1)).toNat + 21)

end

end A033750.P1736312344958142683

/-! ## A033750.P8452183978643012991

`A080918(n)+A010894(A242408(n+1))`
-/

namespace A033750.P8452183978643012991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 n + A010894 ((A242408 (n + 1)).toNat + 21)

end

end A033750.P8452183978643012991

/-!
# A033751: Expansion of Product_{d | 39} theta_3(q^d).

The programs for A033751, there is no canonical definition to state claims against.
-/

/-! ## A033751.P2492721148097365767

`or(A033723(A007088(n)), A033725(n))`
-/

namespace A033751.P2492721148097365767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033723 (A007088 n).toNat) (A033725 n)

end

end A033751.P2492721148097365767

/-! ## A033751.P648448772855282672

`A033716(lt[A355771(n+1), A340624(n+1)])`
-/

namespace A033751.P648448772855282672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033751.P648448772855282672

/-! ## A033751.P1242535301706013050

`A033716(n-A288710(A286414(n)))`
-/

namespace A033751.P1242535301706013050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 ((n : ℤ) - A288710 (A286414 n).toNat).toNat

end

end A033751.P1242535301706013050

/-! ## A033751.P2375325952367536916

`A033716(lt[A326528(n), A247451(n+1)])`
-/

namespace A033751.P2375325952367536916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033751.P2375325952367536916

/-! ## A033751.P15436802357733906336

`A033716(lt[A361859(n+1), A245701(3*(n+1))])`
-/

namespace A033751.P15436802357733906336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245701 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033751.P15436802357733906336

/-!
# A033753: Expansion of Product_{d | 41} theta_3(q^d).

The programs for A033753, there is no canonical definition to state claims against.
-/

/-! ## A033753.P647944659639580114

`A033755(lt[A260897(n+5), 40])`
-/

namespace A033753.P647944659639580114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033753.P647944659639580114

/-! ## A033753.P14502244586967865369

`A033755(lt[A033742(n), A033703(n+1)])`
-/

namespace A033753.P14502244586967865369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033753.P14502244586967865369

/-! ## A033753.P5910907738156859136

`A033755(lt[A046772(2*(n+2)), A046813(n)])`
-/

namespace A033753.P5910907738156859136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033755 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033753.P5910907738156859136

/-! ## A033753.P15359075838912929875

`gcd(A033729(A008445(n)), A318985(n))`
-/

namespace A033753.P15359075838912929875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033729 (A008445 n).toNat) (A318985 n)

end

end A033753.P15359075838912929875

/-! ## A033753.P10116658892779262706

`A048272(A076303(n+1))+A000122(n)`
-/

namespace A033753.P10116658892779262706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A076303 (n + 1)).toNat + A000122 n

end

end A033753.P10116658892779262706

/-!
# A033755: Expansion of Product_{d | 43} theta_3(q^d).

The programs for A033755, there is no canonical definition to state claims against.
-/

/-! ## A033755.P4411090576209020755

`and(A005811(A341417(n+1)), A138811(n))`
-/

namespace A033755.P4411090576209020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A341417 (n + 1)).toNat) (A138811 n)

end

end A033755.P4411090576209020755

/-! ## A033755.P373241075092168257

`and(A001221(A225386(n+1)), A138811(n))`
-/

namespace A033755.P373241075092168257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A225386 (n + 1)).toNat) (A138811 n)

end

end A033755.P373241075092168257

/-! ## A033755.P6332815591847321645

`and(A138811(n), A171140(A184401(n+1)))`
-/

namespace A033755.P6332815591847321645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138811 n) (A171140 (A184401 (n + 1)).toNat)

end

end A033755.P6332815591847321645

/-! ## A033755.P4750211460943981196

`and(A109163(n+1), A138811(n))`
-/

namespace A033755.P4750211460943981196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109163 (n + 1)) (A138811 n)

end

end A033755.P4750211460943981196

/-! ## A033755.P12452811316652817157

`and(A138811(n), A351017(n))`
-/

namespace A033755.P12452811316652817157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138811 n) (A351017 n)

end

end A033755.P12452811316652817157

/-!
# A033757: Expansion of Product_{d | 45} theta_3(q^d).

The programs for A033757, there is no canonical definition to state claims against.
-/

/-! ## A033757.P7534194116118038738

`A000005(A076903(n))*A044942(n+1)`
-/

namespace A033757.P7534194116118038738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076903 n).toNat * A044942 (n + 1)

end

end A033757.P7534194116118038738

/-!
# A033758: Expansion of Product_{d | 46} theta_3(q^d).

The programs for A033758, there is no canonical definition to state claims against.
-/

/-! ## A033758.P13733965060263926854

`A033715(lt[A229578(n+1), A353839(n+1)])`
-/

namespace A033758.P13733965060263926854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033758.P13733965060263926854

/-! ## A033758.P5682582332110687638

`A033715(lt[A033756(2*n+3), A250120(n+3)])`
-/

namespace A033758.P5682582332110687638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033756 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033758.P5682582332110687638

/-! ## A033758.P4296128143071591934

`A033715(n)+A004198(A185044(n))`
-/

namespace A033758.P4296128143071591934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n + A004198 (A185044 n).toNat

end

end A033758.P4296128143071591934

/-! ## A033758.P14751810407988804739

`A080918(n)+A004198(A185044(n))`
-/

namespace A033758.P14751810407988804739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 n + A004198 (A185044 n).toNat

end

end A033758.P14751810407988804739

/-! ## A033758.P8364847132796474455

`A309785(A331562(n))+A033715(n)`
-/

namespace A033758.P8364847132796474455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A033715 n

end

end A033758.P8364847132796474455

/-!
# A033759: Expansion of Product_{d | 47} theta_3(q^d).

The programs for A033759, there is no canonical definition to state claims against.
-/

/-! ## A033759.P4672038162841533222

`A000122(lt[xor(1, xor(1, n)+1), 49])`
-/

namespace A033759.P4672038162841533222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033759.P4672038162841533222

/-! ## A033759.P4569357618629306985

`A000122(lt[A321445(n), 13])`
-/

namespace A033759.P4569357618629306985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321445 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033759.P4569357618629306985

/-! ## A033759.P6776260053651953277

`A000122(lt[A130371(n), 48])`
-/

namespace A033759.P6776260053651953277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033759.P6776260053651953277

/-! ## A033759.P15301091335068811103

`A000122(lt[A329455(n), 48])`
-/

namespace A033759.P15301091335068811103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033759.P15301091335068811103

/-!
# A033760: Expansion of Product_{d | 48} theta_3(q^d).

The programs for A033760, there is no canonical definition to state claims against.
-/

/-! ## A033760.P4010410937982387325

`A139352(A184955(n))+A033736(n)`
-/

namespace A033760.P4010410937982387325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A184955 n).toNat + A033736 n

end

end A033760.P4010410937982387325

/-! ## A033760.P12890405950093749038

`A037856(A184955(n)+1)+A033736(n)`
-/

namespace A033760.P12890405950093749038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A184955 n + 1).toNat + A033736 n

end

end A033760.P12890405950093749038

/-!
# A033761: Product t2(q^d); d | 2, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033761, the canonical program `A033761.P11731263425258369509` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033761 has offset 0).

The definition of A033761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033761.P11731263425258369509

`A027414(8*n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033761

/-- `A027414(8*n+3)` -/
def P11731263425258369509.Spec : Prop :=
  ∀ n, P11731263425258369509.a n = A033761 n

theorem P11731263425258369509.correct : P11731263425258369509.Spec := by
  intro n
  simp only [A033761]

end A033761

/-! ## A033761.P15720959925179652185

`A002325(8*n+3)/2`
-/

namespace A033761.P15720959925179652185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (8 * n + 3) : ℚ) / 2

end

end A033761.P15720959925179652185

namespace A033761

/-- `A002325(8*n+3)/2` -/
def P15720959925179652185.Spec : Prop :=
  ∀ n, P15720959925179652185.a n = (A033761 n : ℚ)

end A033761

/-! ## A033761.P9445852404660071323

`A002636(n)-A224326(n)`
-/

namespace A033761.P9445852404660071323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n - A224326 n

end

end A033761.P9445852404660071323

namespace A033761

/-- `A002636(n)-A224326(n)` -/
def P9445852404660071323.Spec : Prop :=
  ∀ n, P9445852404660071323.a n = A033761 n

end A033761

/-! ## A033761.P1796758520691929319

`2*A167618(n)-A008443(n)`
-/

namespace A033761.P1796758520691929319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167618 n - A008443 n

end

end A033761.P1796758520691929319

namespace A033761

/-- `2*A167618(n)-A008443(n)` -/
def P1796758520691929319.Spec : Prop :=
  ∀ n, P1796758520691929319.a n = A033761 n

end A033761

/-! ## A033761.P9186497725058837179

`A216282(8*n+3)`
-/

namespace A033761.P9186497725058837179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (8 * n + 3)

end

end A033761.P9186497725058837179

namespace A033761

/-- `A216282(8*n+3)` -/
def P9186497725058837179.Spec : Prop :=
  ∀ n, P9186497725058837179.a n = A033761 n

end A033761

/-! ## A033761.P9092769663607661363

`A052343(n)+A063993(n)-A224326(n)`
-/

namespace A033761.P9092769663607661363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + (A063993 n - A224326 n)

end

end A033761.P9092769663607661363

namespace A033761

/-- `A052343(n)+A063993(n)-A224326(n)` -/
def P9092769663607661363.Spec : Prop :=
  ∀ n, P9092769663607661363.a n = A033761 n

end A033761

/-! ## A033761.P9578611028976765168

`A113411(4*n+1)/2`
-/

namespace A033761.P9578611028976765168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113411 (4 * n + 1) : ℚ) / 2

end

end A033761.P9578611028976765168

namespace A033761

/-- `A113411(4*n+1)/2` -/
def P9578611028976765168.Spec : Prop :=
  ∀ n, P9578611028976765168.a n = (A033761 n : ℚ)

end A033761

/-! ## A033761.P16610594136989101557

`A026741(A113411(4*n+1))`
-/

namespace A033761.P16610594136989101557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A113411 (4 * n + 1)).toNat

end

end A033761.P16610594136989101557

namespace A033761

/-- `A026741(A113411(4*n+1))` -/
def P16610594136989101557.Spec : Prop :=
  ∀ n, P16610594136989101557.a n = A033761 n

end A033761

/-! ## A033761.P3573822369169550820

`A001281(A113411(3*n+n+1))`
-/

namespace A033761.P3573822369169550820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A113411 (3 * n + (n + 1))).toNat

end

end A033761.P3573822369169550820

namespace A033761

/-- `A001281(A113411(3*n+n+1))` -/
def P3573822369169550820.Spec : Prop :=
  ∀ n, P3573822369169550820.a n = A033761 n

end A033761

/-! ## A033761.P11239348693568652981

`A002636(n)+A010054(n)-A357071(n)`
-/

namespace A033761.P11239348693568652981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n + (A010054 n - A357071 n)

end

end A033761.P11239348693568652981

namespace A033761

/-- `A002636(n)+A010054(n)-A357071(n)` -/
def P11239348693568652981.Spec : Prop :=
  ∀ n, P11239348693568652981.a n = A033761 n

end A033761

/-!
# A033762: Product t2(q^d); d | 3, where t2 = theta2(q) / (2 * q^(1/4)).

The programs for A033762, the canonical program `A033762.P13282187029160693838` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033762 has offset 0).

The definition of A033762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122860, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033762.P9929518304437070044

`A096936(2*n+1)`
-/

namespace A033762.P9929518304437070044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (2 * n + 1)

end

end A033762.P9929518304437070044

namespace A033762

/-- `A096936(2*n+1)` -/
def P9929518304437070044.Spec : Prop :=
  ∀ n, P9929518304437070044.a n = A033762 n

end A033762

/-! ## A033762.P15165943164162023326

`A115979(2*n+1)`
-/

namespace A033762.P15165943164162023326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (2 * n + 1)

end

end A033762.P15165943164162023326

namespace A033762

/-- `A115979(2*n+1)` -/
def P15165943164162023326.Spec : Prop :=
  ∀ n, P15165943164162023326.a n = A033762 n

end A033762

/-! ## A033762.P14303658511819628164

`A002324(2*n+1)`
-/

namespace A033762.P14303658511819628164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * n + 1)

end

end A033762.P14303658511819628164

namespace A033762

/-- `A002324(2*n+1)` -/
def P14303658511819628164.Spec : Prop :=
  ∀ n, P14303658511819628164.a n = A033762 n

end A033762

/-! ## A033762.P8754616417028952758

`A035178(2*n+1)`
-/

namespace A033762.P8754616417028952758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (2 * n + 1)

end

end A033762.P8754616417028952758

namespace A033762

/-- `A035178(2*n+1)` -/
def P8754616417028952758.Spec : Prop :=
  ∀ n, P8754616417028952758.a n = A033762 n

end A033762

/-! ## A033762.P18407691915566111545

`A093829(2*n+1)`
-/

namespace A033762.P18407691915566111545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (2 * n + 1)

end

end A033762.P18407691915566111545

namespace A033762

/-- `A093829(2*n+1)` -/
def P18407691915566111545.Spec : Prop :=
  ∀ n, P18407691915566111545.a n = A033762 n

end A033762

/-! ## A033762.P11294014668324290484

`A112298(2*n+1)`
-/

namespace A033762.P11294014668324290484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (2 * n + 1)

end

end A033762.P11294014668324290484

namespace A033762

/-- `A112298(2*n+1)` -/
def P11294014668324290484.Spec : Prop :=
  ∀ n, P11294014668324290484.a n = A033762 n

end A033762

/-! ## A033762.P2605056070157401937

`A113447(2*n+1)`
-/

namespace A033762.P2605056070157401937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (2 * n + 1)

end

end A033762.P2605056070157401937

namespace A033762

/-- `A113447(2*n+1)` -/
def P2605056070157401937.Spec : Prop :=
  ∀ n, P2605056070157401937.a n = A033762 n

end A033762

/-! ## A033762.P3980171564901494550

`A113661(2*n+1)`
-/

namespace A033762.P3980171564901494550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (2 * n + 1)

end

end A033762.P3980171564901494550

namespace A033762

/-- `A113661(2*n+1)` -/
def P3980171564901494550.Spec : Prop :=
  ∀ n, P3980171564901494550.a n = A033762 n

end A033762

/-! ## A033762.P13282187029160693838

`A122860(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033762

/-- `A122860(2*n+1)` -/
def P13282187029160693838.Spec : Prop :=
  ∀ n, P13282187029160693838.a n = A033762 n

theorem P13282187029160693838.correct : P13282187029160693838.Spec := by
  intro n
  simp only [A033762]

end A033762

/-! ## A033762.P896485336974738589

`A123331(2*n+1)`
-/

namespace A033762.P896485336974738589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (2 * n + 1)

end

end A033762.P896485336974738589

namespace A033762

/-- `A123331(2*n+1)` -/
def P896485336974738589.Spec : Prop :=
  ∀ n, P896485336974738589.a n = A033762 n

end A033762

/-! ## A033762.P16359552298053213189

`A123484(2*n+1)`
-/

namespace A033762.P16359552298053213189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123484 (2 * n + 1)

end

end A033762.P16359552298053213189

namespace A033762

/-- `A123484(2*n+1)` -/
def P16359552298053213189.Spec : Prop :=
  ∀ n, P16359552298053213189.a n = A033762 n

end A033762

/-! ## A033762.P9117584038482157337

`A136748(2*n+1)`
-/

namespace A033762.P9117584038482157337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (2 * n + 1)

end

end A033762.P9117584038482157337

namespace A033762

/-- `A136748(2*n+1)` -/
def P9117584038482157337.Spec : Prop :=
  ∀ n, P9117584038482157337.a n = A033762 n

end A033762

/-! ## A033762.P4911865463951426450

`A137608(2*n+1)`
-/

namespace A033762.P4911865463951426450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137608 (2 * n + 1)

end

end A033762.P4911865463951426450

namespace A033762

/-- `A137608(2*n+1)` -/
def P4911865463951426450.Spec : Prop :=
  ∀ n, P4911865463951426450.a n = A033762 n

end A033762

/-! ## A033762.P16343199165466265349

`A113974(2*n+1)`
-/

namespace A033762.P16343199165466265349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113974 (2 * n + 1)

end

end A033762.P16343199165466265349

namespace A033762

/-- `A113974(2*n+1)` -/
def P16343199165466265349.Spec : Prop :=
  ∀ n, P16343199165466265349.a n = A033762 n

end A033762

/-! ## A033762.P12398412230777504225

`∑{d}[2*n+1, 3-#%6]/2`
-/

namespace A033762.P12398412230777504225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (3 - ((d % 6 : ℕ) : ℤ)) : ℤ) : ℚ) / 2

end

end A033762.P12398412230777504225

namespace A033762

/-- `∑{d}[2*n+1, 3-#%6]/2` -/
def P12398412230777504225.Spec : Prop :=
  ∀ n, P12398412230777504225.a n = (A033762 n : ℚ)

end A033762

/-! ## A033762.P2918184439140910167

`abs(A129449(n))`
-/

namespace A033762.P2918184439140910167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129449 n|

end

end A033762.P2918184439140910167

namespace A033762

/-- `abs(A129449(n))` -/
def P2918184439140910167.Spec : Prop :=
  ∀ n, P2918184439140910167.a n = A033762 n

end A033762

/-! ## A033762.P11972375588144268244

`abs(A262780(n))`
-/

namespace A033762.P11972375588144268244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262780 n|

end

end A033762.P11972375588144268244

namespace A033762

/-- `abs(A262780(n))` -/
def P11972375588144268244.Spec : Prop :=
  ∀ n, P11972375588144268244.a n = A033762 n

end A033762

/-! ## A033762.P3859951278001500435

`A005881(n)/2`
-/

namespace A033762.P3859951278001500435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 n : ℚ) / 2

end

end A033762.P3859951278001500435

namespace A033762

/-- `A005881(n)/2` -/
def P3859951278001500435.Spec : Prop :=
  ∀ n, P3859951278001500435.a n = (A033762 n : ℚ)

end A033762

/-! ## A033762.P798304822711399113

`A033716(Δ[n²])/2`
-/

namespace A033762.P798304822711399113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A033762.P798304822711399113

namespace A033762

/-- `A033716(Δ[n²])/2` -/
def P798304822711399113.Spec : Prop :=
  ∀ n, P798304822711399113.a n = (A033762 n : ℚ)

end A033762

/-! ## A033762.P1341339995870410488

`A217220(2*n+1)/4`
-/

namespace A033762.P1341339995870410488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 (2 * n + 1) : ℚ) / 4

end

end A033762.P1341339995870410488

namespace A033762

/-- `A217220(2*n+1)/4` -/
def P1341339995870410488.Spec : Prop :=
  ∀ n, P1341339995870410488.a n = (A033762 n : ℚ)

end A033762

/-!
# A033763: Product t2(q^d); d | 4, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033763, there is no canonical definition to state claims against.
-/

/-! ## A033763.P990641605929124703

`A213624(Δ[n²])/2`
-/

namespace A033763.P990641605929124703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213624 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A033763.P990641605929124703

/-! ## A033763.P13931250062063592685

`abs(A246833(2*n+1)/2)`
-/

namespace A033763.P13931250062063592685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246833 (2 * n + 1) : ℚ) / 2|

end

end A033763.P13931250062063592685

/-! ## A033763.P15126453845269448924

`gcd(A246833(2*n+1)/2, A000038(n))`
-/

namespace A033763.P15126453845269448924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A246833 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A033763.P15126453845269448924

/-! ## A033763.P13680171180292109622

`A246833(2*n+1)/(A000038(n+1)-2)`
-/

namespace A033763.P13680171180292109622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246833 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A033763.P13680171180292109622

/-! ## A033763.P8937514336141081482

`lcm(A000034(n+1), A246833(2*n+1))/2`
-/

namespace A033763.P8937514336141081482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A246833 (2 * n + 1)) : ℚ) / 2

end

end A033763.P8937514336141081482

/-! ## A033763.P2845785362020061757

`A246833(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A033763.P2845785362020061757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246833 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A033763.P2845785362020061757

/-! ## A033763.P17537504554664169518

`A246833(2*n+1)/A000034(2*n+1)-A246833(2*n+1)`
-/

namespace A033763.P17537504554664169518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246833 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A246833 (2 * n + 1) : ℚ)

end

end A033763.P17537504554664169518

/-! ## A033763.P2742271431740418721

`A275471(A125169(n))`
-/

namespace A033763.P2742271431740418721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275471 (A125169 n).toNat

end

end A033763.P2742271431740418721

/-! ## A033763.P6765353034705480061

`A000164(2*A004771(n))`
-/

namespace A033763.P6765353034705480061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * A004771 n).toNat

end

end A033763.P6765353034705480061

/-! ## A033763.P10905375568093810550

`A025427(2*A004771(n))`
-/

namespace A033763.P10905375568093810550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (2 * A004771 n).toNat

end

end A033763.P10905375568093810550

/-! ## A033763.P4564495486263342801

`A000164(A008598(n+1)-2)`
-/

namespace A033763.P4564495486263342801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A008598 (n + 1) - 2).toNat

end

end A033763.P4564495486263342801

/-! ## A033763.P9777549235516696040

`A025442(A017113(2*n+1)+2)`
-/

namespace A033763.P9777549235516696040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A017113 (2 * n + 1) + 2).toNat

end

end A033763.P9777549235516696040

/-! ## A033763.P15167333440459356013

`A005794(A017137(2*n+1))/2`
-/

namespace A033763.P15167333440459356013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005794 (A017137 (2 * n + 1)).toNat : ℚ) / 2

end

end A033763.P15167333440459356013

/-! ## A033763.P14398032691666841605

`A000164(A004771(n)+A004771(n))`
-/

namespace A033763.P14398032691666841605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A004771 n + A004771 n).toNat

end

end A033763.P14398032691666841605

/-! ## A033763.P2914200086480902197

`A000164(A017101(n+1)+A017101(n))`
-/

namespace A033763.P2914200086480902197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A017101 (n + 1) + A017101 n).toNat

end

end A033763.P2914200086480902197

/-! ## A033763.P7233742672328450350

`A025436(A017101(n+1)+A017101(n))`
-/

namespace A033763.P7233742672328450350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (A017101 (n + 1) + A017101 n).toNat

end

end A033763.P7233742672328450350

/-! ## A033763.P4704461698632658375

`A025442(A017101(n+1)+A017101(n))`
-/

namespace A033763.P4704461698632658375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A017101 (n + 1) + A017101 n).toNat

end

end A033763.P4704461698632658375

/-! ## A033763.P2326267084974523131

`A000164(eq[A000164(2*n), A246631(n+1)])`
-/

namespace A033763.P2326267084974523131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033763.P2326267084974523131

/-! ## A033763.P15637492440295589701

`A000164(eq[A000164(2*n), A014452(2*n+1)])`
-/

namespace A033763.P15637492440295589701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033763.P15637492440295589701

/-! ## A033763.P9509818928228722935

`A000164(A157330(n+1))`
-/

namespace A033763.P9509818928228722935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A157330 (n + 1)).toNat

end

end A033763.P9509818928228722935

/-!
# A033764: Product t2(q^d); d | 5, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033764, the canonical program `A033764.P8466703853470809905` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033764 has offset 0).

The definition of A033764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033764.P9725936141408808768

`A129390(Δ[n²])/2`
-/

namespace A033764.P9725936141408808768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129390 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A033764.P9725936141408808768

namespace A033764

/-- `A129390(Δ[n²])/2` -/
def P9725936141408808768.Spec : Prop :=
  ∀ n, P9725936141408808768.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P9177291107431049641

`abs(A129391(2*n+1)/2)`
-/

namespace A033764.P9177291107431049641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A129391 (2 * n + 1) : ℚ) / 2|

end

end A033764.P9177291107431049641

namespace A033764

/-- `abs(A129391(2*n+1)/2)` -/
def P9177291107431049641.Spec : Prop :=
  ∀ n, P9177291107431049641.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P14772390949811411608

`-A129391(n+1+n)/2`
-/

namespace A033764.P14772390949811411608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A129391 (n + 1 + n) : ℚ) / 2)

end

end A033764.P14772390949811411608

namespace A033764

/-- `-A129391(n+1+n)/2` -/
def P14772390949811411608.Spec : Prop :=
  ∀ n, P14772390949811411608.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P8466703853470809905

`A110654(A129390(Δ[n²]))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A033764

/-- `A110654(A129390(Δ[n²]))` -/
def P8466703853470809905.Spec : Prop :=
  ∀ n, P8466703853470809905.a n = A033764 n

theorem P8466703853470809905.correct : P8466703853470809905.Spec := by
  intro n
  simp only [A033764]

end A033764

/-! ## A033764.P11602586816317295690

`A025480(A129390(2*n+1))`
-/

namespace A033764.P11602586816317295690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A129390 (2 * n + 1)).toNat

end

end A033764.P11602586816317295690

namespace A033764

/-- `A025480(A129390(2*n+1))` -/
def P11602586816317295690.Spec : Prop :=
  ∀ n, P11602586816317295690.a n = A033764 n

end A033764

/-! ## A033764.P4961940136634081401

`gcd(A000038(n), A129391(2*n+1))/2`
-/

namespace A033764.P4961940136634081401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A129391 (2 * n + 1)) : ℚ) / 2

end

end A033764.P4961940136634081401

namespace A033764

/-- `gcd(A000038(n), A129391(2*n+1))/2` -/
def P4961940136634081401.Spec : Prop :=
  ∀ n, P4961940136634081401.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P4508840659582923196

`A129391(2*n+1)/(A000038(n+1)-2)`
-/

namespace A033764.P4508840659582923196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129391 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A033764.P4508840659582923196

namespace A033764

/-- `A129391(2*n+1)/(A000038(n+1)-2)` -/
def P4508840659582923196.Spec : Prop :=
  ∀ n, P4508840659582923196.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P2731988666253743305

`lcm(A000034(n+1), A129391(2*n+1))/2`
-/

namespace A033764.P2731988666253743305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A129391 (2 * n + 1)) : ℚ) / 2

end

end A033764.P2731988666253743305

namespace A033764

/-- `lcm(A000034(n+1), A129391(2*n+1))/2` -/
def P2731988666253743305.Spec : Prop :=
  ∀ n, P2731988666253743305.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P3449839793918610391

`A129391(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A033764.P3449839793918610391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129391 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A033764.P3449839793918610391

namespace A033764

/-- `A129391(2*n+1)/(A033999(2*n+1)-1)` -/
def P3449839793918610391.Spec : Prop :=
  ∀ n, P3449839793918610391.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P17196315994090937384

`A129391(2*n+1)/A000034(2*n+1)-A129391(2*n+1)`
-/

namespace A033764.P17196315994090937384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129391 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A129391 (2 * n + 1) : ℚ)

end

end A033764.P17196315994090937384

namespace A033764

/-- `A129391(2*n+1)/A000034(2*n+1)-A129391(2*n+1)` -/
def P17196315994090937384.Spec : Prop :=
  ∀ n, P17196315994090937384.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P7110093901553039706

`A035170(4*n+3)/2`
-/

namespace A033764.P7110093901553039706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035170 (4 * n + 3) : ℚ) / 2

end

end A033764.P7110093901553039706

namespace A033764

/-- `A035170(4*n+3)/2` -/
def P7110093901553039706.Spec : Prop :=
  ∀ n, P7110093901553039706.a n = (A033764 n : ℚ)

end A033764

/-! ## A033764.P17085104860730502504

`A216279(A017137(n))`
-/

namespace A033764.P17085104860730502504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216279 (A017137 n).toNat

end

end A033764.P17085104860730502504

namespace A033764

/-- `A216279(A017137(n))` -/
def P17085104860730502504.Spec : Prop :=
  ∀ n, P17085104860730502504.a n = A033764 n

end A033764

/-! ## A033764.P6583219154710520941

`A001221(A129390(2*n+1)!)`
-/

namespace A033764.P6583219154710520941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A129390 (2 * n + 1)).toNat)

end

end A033764.P6583219154710520941

namespace A033764

/-- `A001221(A129390(2*n+1)!)` -/
def P6583219154710520941.Spec : Prop :=
  ∀ n, P6583219154710520941.a n = A033764 n

end A033764

/-!
# A033767: Product t2(q^d); d | 8, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033767, there is no canonical definition to state claims against.
-/

/-! ## A033767.P2256852672093539733

`A033775(n)-A036586(A147187(n+1))`
-/

namespace A033767.P2256852672093539733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033775 n - A036586 (A147187 (n + 1)).toNat

end

end A033767.P2256852672093539733

/-! ## A033767.P5064700026916817502

`A033791(n)-A036586(A147187(n+1))`
-/

namespace A033767.P5064700026916817502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033791 n - A036586 (A147187 (n + 1)).toNat

end

end A033767.P5064700026916817502

/-! ## A033767.P1257158586021172183

`A033775(n)-A058343(A146607(n+1))`
-/

namespace A033767.P1257158586021172183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033775 n - A058343 (A146607 (n + 1)).toNat

end

end A033767.P1257158586021172183

/-! ## A033767.P14798203400510417483

`A033791(n)-A058343(A146607(n+1))`
-/

namespace A033767.P14798203400510417483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033791 n - A058343 (A146607 (n + 1)).toNat

end

end A033767.P14798203400510417483

/-! ## A033767.P16010887864550599819

`A033775(n)-A010051(A022177(n))`
-/

namespace A033767.P16010887864550599819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033775 n - A010051 (A022177 n).toNat

end

end A033767.P16010887864550599819

/-!
# A033768: Product t2(q^d); d | 9, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033768, there is no canonical definition to state claims against.
-/

/-! ## A033768.P1724085656555646759

`(n+1)%3/2*A224823(n+1)`
-/

namespace A033768.P1724085656555646759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℚ) / 2 * (A224823 (n + 1) : ℚ)

end

end A033768.P1724085656555646759

/-! ## A033768.P11661363679543897613

`A033721(8*n+13)/16`
-/

namespace A033768.P11661363679543897613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033721 (8 * n + 13) : ℚ) / 16

end

end A033768.P11661363679543897613

/-! ## A033768.P3000761446906715377

`A028702(A168056(6*n+9))/8`
-/

namespace A033768.P3000761446906715377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028702 (A168056 (6 * n + 9)).toNat : ℚ) / 8

end

end A033768.P3000761446906715377

/-! ## A033768.P3672005011918991980

`A033786(n)-A025466(A032368(n+1))`
-/

namespace A033768.P3672005011918991980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033786 n - A025466 (A032368 (n + 1)).toNat

end

end A033768.P3672005011918991980

/-! ## A033768.P9916200363932030452

`A033786(n)-A267034(A305473(n+1))`
-/

namespace A033768.P9916200363932030452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033786 n - A267034 (A305473 (n + 1)).toNat

end

end A033768.P9916200363932030452

/-!
# A033769: Product t2(q^d); d | 10, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033769, there is no canonical definition to state claims against.
-/

/-! ## A033769.P13830316124137128086

`or(A063251(3*(n+1)), A328311(A184725(n+1)))`
-/

namespace A033769.P13830316124137128086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063251 (3 * (n + 1))) (A328311 (A184725 (n + 1)).toNat)

end

end A033769.P13830316124137128086

/-!
# A033770: Product t2(q^d); d | 11, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033770, there is no canonical definition to state claims against.
-/

/-! ## A033770.P11566115561568095369

`A014787(n)%11`
-/

namespace A033770.P11566115561568095369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014787 n) 11

end

end A033770.P11566115561568095369

/-! ## A033770.P17313663385995697703

`A028953(2*n+3)/2`
-/

namespace A033770.P17313663385995697703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (2 * n + 3) : ℚ) / 2

end

end A033770.P17313663385995697703

/-! ## A033770.P12873124432727976303

`A014682(A028953(2*n+3))`
-/

namespace A033770.P12873124432727976303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028953 (2 * n + 3)).toNat

end

end A033770.P12873124432727976303

/-! ## A033770.P8707501197771645228

`A078898(A028953(n+n+3))`
-/

namespace A033770.P8707501197771645228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A028953 (n + n + 3)).toNat

end

end A033770.P8707501197771645228

/-! ## A033770.P3473355509042223582

`A004526(A028953(2*n+3)+1)`
-/

namespace A033770.P3473355509042223582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028953 (2 * n + 3) + 1).toNat

end

end A033770.P3473355509042223582

/-! ## A033770.P8731975486281419660

`A028242(A028953(2*n+3)+1)`
-/

namespace A033770.P8731975486281419660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A028953 (2 * n + 3) + 1).toNat

end

end A033770.P8731975486281419660

/-!
# A033772: Product t2(q^d); d | 13, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033772, there is no canonical definition to state claims against.
-/

/-! ## A033772.P3713477167111905951

`A033725(8*n+14)/4`
-/

namespace A033772.P3713477167111905951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033725 (8 * n + 14) : ℚ) / 4

end

end A033772.P3713477167111905951

/-! ## A033772.P8193853909585560918

`A331385((A033725(8*n+14)+1)²)`
-/

namespace A033772.P8193853909585560918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331385 ((A033725 (8 * n + 14) + 1) ^ 2).toNat

end

end A033772.P8193853909585560918

/-! ## A033772.P12482816349137878413

`A006927(3*A033725(8*n+14))`
-/

namespace A033772.P12482816349137878413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 (3 * A033725 (8 * n + 14)).toNat

end

end A033772.P12482816349137878413

/-! ## A033772.P7374459152963710720

`A000120(C(C(A033725(8*n+14), 3), 3))`
-/

namespace A033772.P7374459152963710720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (Nat.choose (A033725 (8 * n + 14)).toNat 3) 3)

end

end A033772.P7374459152963710720

/-! ## A033772.P1423622880983700428

`A344654(A033725(8*n+14))^A000290(n)`
-/

namespace A033772.P1423622880983700428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344654 (A033725 (8 * n + 14)).toNat : ℚ) ^ (A000290 n : ℤ)

end

end A033772.P1423622880983700428

/-!
# A033774: Product t2(q^d); d | 15, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033774, there is no canonical definition to state claims against.
-/

/-! ## A033774.P12795722899079221202

`A230103(A082894(n+1))`
-/

namespace A033774.P12795722899079221202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 (A082894 (n + 1)).toNat

end

end A033774.P12795722899079221202

/-! ## A033774.P611106754972800292

`A230103((n+1)*A065482(n+1))`
-/

namespace A033774.P611106754972800292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 ((n + 1 : ℤ) * A065482 (n + 1)).toNat

end

end A033774.P611106754972800292

/-! ## A033774.P17750528220092794152

`A326413(A139827(n+1)+A060058(n))`
-/

namespace A033774.P17750528220092794152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326413 (A139827 (n + 1) + A060058 n).toNat

end

end A033774.P17750528220092794152

/-!
# A033775: Product t2(q^d); d | 16, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033775, there is no canonical definition to state claims against.
-/

/-! ## A033775.P16627921614805167081

`gcd(A033791(n), A036484(n))`
-/

namespace A033775.P16627921614805167081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033791 n) (A036484 n)

end

end A033775.P16627921614805167081

/-! ## A033775.P11485685307132762583

`and(A033791(n), A179612(n+1))`
-/

namespace A033775.P11485685307132762583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033791 n) (A179612 (n + 1))

end

end A033775.P11485685307132762583

/-! ## A033775.P15050212069924022753

`A098108((8*n)²)+A033791(n)`
-/

namespace A033775.P15050212069924022753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((8 * n) ^ 2) + A033791 n

end

end A033775.P15050212069924022753

/-! ## A033775.P12347076444904826400

`A033791(n)%∑[A363130(2*n+3)]`
-/

namespace A033775.P12347076444904826400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363130 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033791 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033775.P12347076444904826400

/-! ## A033775.P7557935735459977232

`A033791(n)^A322064(A033743(n))`
-/

namespace A033775.P7557935735459977232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033791 n : ℚ) ^ (A322064 (A033743 n).toNat : ℤ)

end

end A033775.P7557935735459977232

/-!
# A033776: Product t2(q^d); d | 17, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033776, there is no canonical definition to state claims against.
-/

/-! ## A033776.P5515994754057963431

`A195995(A063007(n))%2`
-/

namespace A033776.P5515994754057963431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195995 (A063007 n).toNat) 2

end

end A033776.P5515994754057963431

/-! ## A033776.P10349473908111555180

`A091834(A347570(n+1))%2`
-/

namespace A033776.P10349473908111555180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091834 (A347570 (n + 1)).toNat) 2

end

end A033776.P10349473908111555180

/-! ## A033776.P15652453431442865520

`and(A033999(n)², A091834(A347570(n+1)))`
-/

namespace A033776.P15652453431442865520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n ^ 2) (A091834 (A347570 (n + 1)).toNat)

end

end A033776.P15652453431442865520

/-! ## A033776.P3868982739435499964

`and(A151933(n)!, A091834(A347570(n+1)))`
-/

namespace A033776.P3868982739435499964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A151933 n).toNat : ℤ) (A091834 (A347570 (n + 1)).toNat)

end

end A033776.P3868982739435499964

/-! ## A033776.P8102996487150322586

`A179020(A208515(n+1)%A178995(n+1))`
-/

namespace A033776.P8102996487150322586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 (Int.tmod (A208515 (n + 1)) (A178995 (n + 1))).toNat

end

end A033776.P8102996487150322586

/-!
# A033778: Product t2(q^d); d | 19, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033778, there is no canonical definition to state claims against.
-/

/-! ## A033778.P8701359770199332817

`A014806(n)%19`
-/

namespace A033778.P8701359770199332817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014806 n) 19

end

end A033778.P8701359770199332817

/-! ## A033778.P12911233430947958728

`A288220(lcm(A002260(n+1), A099594(n)))`
-/

namespace A033778.P12911233430947958728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288220 (Int.lcm (A002260 (n + 1)) (A099594 n))

end

end A033778.P12911233430947958728

/-! ## A033778.P11552338869760103060

`A005089(A051890(n)+17)+A000035(A166350(n+1))`
-/

namespace A033778.P11552338869760103060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A051890 n + 17).toNat + A000035 (A166350 (n + 1)).toNat

end

end A033778.P11552338869760103060

/-! ## A033778.P18437181444654945807

`A025456(A110117(n+1))^A034373(n+1)`
-/

namespace A033778.P18437181444654945807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025456 (A110117 (n + 1)).toNat : ℚ) ^ (A034373 (n + 1) : ℤ)

end

end A033778.P18437181444654945807

/-! ## A033778.P17548664105646244957

`A170967(A327844(n+1)-A170967(n))`
-/

namespace A033778.P17548664105646244957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170967 (A327844 (n + 1) - A170967 n).toNat

end

end A033778.P17548664105646244957

/-!
# A033780: Product t2(q^d); d | 21, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033780, there is no canonical definition to state claims against.
-/

/-! ## A033780.P18085577089146135684

`A191400(A064324(n+1)+1)`
-/

namespace A033780.P18085577089146135684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191400 (A064324 (n + 1) + 1).toNat

end

end A033780.P18085577089146135684

/-! ## A033780.P10230791994987072949

`A062756(xor(4, A282421(n)))`
-/

namespace A033780.P10230791994987072949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.xor 4 (A282421 n)).toNat

end

end A033780.P10230791994987072949

/-! ## A033780.P17552389163506997658

`A353315(A056513(n+1))+A010054(n)`
-/

namespace A033780.P17552389163506997658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353315 (A056513 (n + 1)).toNat + A010054 n

end

end A033780.P17552389163506997658

/-! ## A033780.P5901153084030127240

`A084114(A244124(n)+A092538(n+1))`
-/

namespace A033780.P5901153084030127240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084114 (A244124 n + A092538 (n + 1)).toNat

end

end A033780.P5901153084030127240

/-! ## A033780.P8217262023776076569

`A255361(A316641(3*n+5)+A112467(n))`
-/

namespace A033780.P8217262023776076569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (A316641 (3 * n + 5) + A112467 n).toNat

end

end A033780.P8217262023776076569

/-!
# A033782: Product t2(q^d); d | 23, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033782, there is no canonical definition to state claims against.
-/

/-! ## A033782.P15542704643472938013

`A014809(n)%23`
-/

namespace A033782.P15542704643472938013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014809 n) 23

end

end A033782.P15542704643472938013

/-! ## A033782.P6799402437638591586

`and(A077618(A002327(n+1)), A253183(2*n+6))`
-/

namespace A033782.P6799402437638591586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077618 (A002327 (n + 1)).toNat) (A253183 (2 * n + 6))

end

end A033782.P6799402437638591586

/-! ## A033782.P10664346657775553910

`and(A019425(A068336(n+1)), A253183(2*n+6))`
-/

namespace A033782.P10664346657775553910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019425 (A068336 (n + 1)).toNat) (A253183 (2 * n + 6))

end

end A033782.P10664346657775553910

/-! ## A033782.P11863419802667629367

`A000035(A253183(2*(n+3))^3)`
-/

namespace A033782.P11863419802667629367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A253183 (2 * (n + 3)) ^ 3).toNat

end

end A033782.P11863419802667629367

/-! ## A033782.P1016336369640338348

`and(A057427(A130399(n+1)), A253183(2*n+6))`
-/

namespace A033782.P1016336369640338348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (A130399 (n + 1)).toNat) (A253183 (2 * n + 6))

end

end A033782.P1016336369640338348

/-! ## A033782.P16377886388787983349

`A048671(A253183(2*(n+3))+∑[4*n])%2`
-/

namespace A033782.P16377886388787983349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048671 (A253183 (2 * (n + 3)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat) 2

end

end A033782.P16377886388787983349

/-! ## A033782.P1034401009258539912

`and(A019425(A005899(n)), A253183(2*n+6))`
-/

namespace A033782.P1034401009258539912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019425 (A005899 n).toNat) (A253183 (2 * n + 6))

end

end A033782.P1034401009258539912

/-! ## A033782.P16632250767341549987

`and(A057427(A331801(n+1)), A253183(2*n+6))`
-/

namespace A033782.P16632250767341549987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 (A331801 (n + 1)).toNat) (A253183 (2 * n + 6))

end

end A033782.P16632250767341549987

/-! ## A033782.P10973105368534309821

`and(A095346(A049200(n+1)), A253183(2*(n+3)))`
-/

namespace A033782.P10973105368534309821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095346 (A049200 (n + 1)).toNat) (A253183 (2 * (n + 3)))

end

end A033782.P10973105368534309821

/-!
# A033783: Product t2(q^d); d | 24, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033783, there is no canonical definition to state claims against.
-/

/-! ## A033783.P7065736135742453822

`A033807(n)-A010051(A022177(n))`
-/

namespace A033783.P7065736135742453822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n - A010051 (A022177 n).toNat

end

end A033783.P7065736135742453822

/-! ## A033783.P18169707017765798848

`A033807(n)-A044941(A000079(n))`
-/

namespace A033783.P18169707017765798848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n - A044941 (A000079 n).toNat

end

end A033783.P18169707017765798848

/-! ## A033783.P12277880727861696348

`A033807(n)-A185284(A048312(n))`
-/

namespace A033783.P12277880727861696348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n - A185284 (A048312 n).toNat

end

end A033783.P12277880727861696348

/-! ## A033783.P13893388917331423302

`A033807(n)-A033800(A118394(n)+1)`
-/

namespace A033783.P13893388917331423302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n - A033800 (A118394 n + 1).toNat

end

end A033783.P13893388917331423302

/-! ## A033783.P18386839709468697385

`A033807(n)-A000007(A342952(n+1))`
-/

namespace A033783.P18386839709468697385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033807 n - A000007 (A342952 (n + 1)).toNat

end

end A033783.P18386839709468697385

/-!
# A033784: Product t2(q^d); d | 25, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033784, there is no canonical definition to state claims against.
-/

/-! ## A033784.P8205164537515804300

`A006337(A114806(n))*A033764(n)`
-/

namespace A033784.P8205164537515804300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A114806 n).toNat * A033764 n

end

end A033784.P8205164537515804300

/-! ## A033784.P4425982651480919595

`lcm(A033764(n), A167383(A167383(3*(n+1))))`
-/

namespace A033784.P4425982651480919595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033764 n) (A167383 (A167383 (3 * (n + 1))).toNat)

end

end A033784.P4425982651480919595

/-! ## A033784.P12053496243295944815

`lcm(A030203(A151722(n)), A033764(n))`
-/

namespace A033784.P12053496243295944815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030203 (A151722 n).toNat) (A033764 n)

end

end A033784.P12053496243295944815

/-!
# A033785: Product t2(q^d); d | 26, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033785, there is no canonical definition to state claims against.
-/

/-! ## A033785.P15790816021116604817

`A033761(lt[(n²+n)/2, A215631(2*n+3)])`
-/

namespace A033785.P15790816021116604817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A033785.P15790816021116604817

/-! ## A033785.P8485696377025776314

`A044940(A077854(n))+A033761(n)`
-/

namespace A033785.P8485696377025776314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A077854 n).toNat + A033761 n

end

end A033785.P8485696377025776314

/-! ## A033785.P1808069118517098387

`gcd(A010816(A112150(n)), A128256(n+1))`
-/

namespace A033785.P1808069118517098387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 (A112150 n).toNat) (A128256 (n + 1))

end

end A033785.P1808069118517098387

/-!
# A033786: Product t2(q^d); d | 27, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033786, there is no canonical definition to state claims against.
-/

/-! ## A033786.P9947836589149464181

`A033768(n)+A025466(A032368(n+1))`
-/

namespace A033786.P9947836589149464181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 n + A025466 (A032368 (n + 1)).toNat

end

end A033786.P9947836589149464181

/-! ## A033786.P14088284371838395601

`A025466(A032368(n+1))+A033721(8*n+13)/16`
-/

namespace A033786.P14088284371838395601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025466 (A032368 (n + 1)).toNat : ℚ) + (A033721 (8 * n + 13) : ℚ) / 16

end

end A033786.P14088284371838395601

/-! ## A033786.P2095433496327176136

`A025466(A032368(n+1))+(n+1)%3/2*A224823(n+1)`
-/

namespace A033786.P2095433496327176136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025466 (A032368 (n + 1)).toNat : ℚ) + (((n + 1) % 3 : ℕ) : ℚ) / 2 * (A224823 (n + 1) : ℚ)

end

end A033786.P2095433496327176136

/-! ## A033786.P8056786812793241235

`A025466(A032368(n+1))+A028702(A168056(6*n+9))/8`
-/

namespace A033786.P8056786812793241235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025466 (A032368 (n + 1)).toNat : ℚ) + (A028702 (A168056 (6 * n + 9)).toNat : ℚ) / 8

end

end A033786.P8056786812793241235

/-! ## A033786.P4742496050019234633

`A267034(A305473(n+1))+A033768(n)`
-/

namespace A033786.P4742496050019234633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A305473 (n + 1)).toNat + A033768 n

end

end A033786.P4742496050019234633

/-!
# A033788: Product t2(q^d); d | 29, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033788, there is no canonical definition to state claims against.
-/

/-! ## A033788.P15875249610540679904

`A121262(lcm(A112367(n), A120101(n)))`
-/

namespace A033788.P15875249610540679904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.lcm (A112367 n) (A120101 n))

end

end A033788.P15875249610540679904

/-! ## A033788.P9344049760145093999

`A141738(A244606(n+1)+A059268(n))`
-/

namespace A033788.P9344049760145093999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141738 (A244606 (n + 1) + A059268 n).toNat

end

end A033788.P9344049760145093999

/-! ## A033788.P11179574501221731649

`A000035(A244606(n+1)^A002262(n))`
-/

namespace A033788.P11179574501221731649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A244606 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A033788.P11179574501221731649

/-! ## A033788.P4213166816049418616

`A000007(lcm(A057731(n+1), A115346(n)))`
-/

namespace A033788.P4213166816049418616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm (A057731 (n + 1)) (A115346 n))

end

end A033788.P4213166816049418616

/-! ## A033788.P13508197043452998826

`C(∑[A185284(n+4)], A099173(n))`
-/

namespace A033788.P13508197043452998826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A099173 n).toNat

end

end A033788.P13508197043452998826

/-!
# A033790: Product t2(q^d); d | 31, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033790, there is no canonical definition to state claims against.
-/

/-! ## A033790.P16926923622105071879

`val(A004433(A193722(n)), 10)`
-/

namespace A033790.P16926923622105071879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004433 (A193722 n).toNat).toNat 10

end

end A033790.P16926923622105071879

/-! ## A033790.P10260001285650850851

`val(A043570(A201552(n+1)), 5)`
-/

namespace A033790.P10260001285650850851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043570 (A201552 (n + 1)).toNat).toNat 5

end

end A033790.P10260001285650850851

/-! ## A033790.P17764628712872405528

`A010060(A034553(n+1)+A010054(n))`
-/

namespace A033790.P17764628712872405528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A034553 (n + 1) + A010054 n).toNat

end

end A033790.P17764628712872405528

/-! ## A033790.P5557153949403179280

`A341040(A327622(n)+A185284(n))`
-/

namespace A033790.P5557153949403179280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341040 (A327622 n + A185284 n).toNat

end

end A033790.P5557153949403179280

/-! ## A033790.P10825263143815657326

`A140820(A118357(n))`
-/

namespace A033790.P10825263143815657326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140820 (A118357 n).toNat

end

end A033790.P10825263143815657326

/-!
# A033791: Product t2(q^d); d | 32, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033791, there is no canonical definition to state claims against.
-/

/-! ## A033791.P13584663440037951393

`or(A010054(A033754(3*n)), A033775(n))`
-/

namespace A033791.P13584663440037951393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A033754 (3 * n)).toNat) (A033775 n)

end

end A033791.P13584663440037951393

/-!
# A033792: Product t2(q^d); d | 33, where t2(q) = theta2(q)/(2*q^(1/4)).

The programs for A033792, there is no canonical definition to state claims against.
-/

/-! ## A033792.P11641076965301132550

`A231855(A050036(n+1))%3`
-/

namespace A033792.P11641076965301132550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231855 (A050036 (n + 1)).toNat) 3

end

end A033792.P11641076965301132550

/-! ## A033792.P6655136610059708913

`A088689(or((n+1)*Δ[n^3], A049820(n+1)))`
-/

namespace A033792.P6655136610059708913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (Int.lor ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A049820 (n + 1))).toNat

end

end A033792.P6655136610059708913

/-! ## A033792.P5122185378761204064

`A157218(A187829(n+1))+∑{d}[2*n+1, 3-#%6]/2`
-/

namespace A033792.P5122185378761204064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157218 (A187829 (n + 1)).toNat : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), (3 - ((d % 6 : ℕ) : ℤ)) : ℤ) : ℚ) / 2

end

end A033792.P5122185378761204064

/-! ## A033792.P4218036578663918225

`A157218(A187829(n+1))+A033762(n)`
-/

namespace A033792.P4218036578663918225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157218 (A187829 (n + 1)).toNat + A033762 n

end

end A033792.P4218036578663918225

/-! ## A033792.P15503343657134599387

`A356682(A128461(n+1)+A102726(n+1))`
-/

namespace A033792.P15503343657134599387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356682 (A128461 (n + 1) + A102726 (n + 1)).toNat

end

end A033792.P15503343657134599387

/-!
# A033793: Product t2(q^d); d | 34, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033793, there is no canonical definition to state claims against.
-/

/-! ## A033793.P7424834276116255571

`A033761(n)+∑[A025465(A336662(n))]`
-/

namespace A033793.P7424834276116255571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A336662 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033793.P7424834276116255571

/-! ## A033793.P17723372560134252976

`A033797(lt[A033756(n), 23])`
-/

namespace A033793.P17723372560134252976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033756 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033797 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033793.P17723372560134252976

/-! ## A033793.P4831657467976482314

`A033761(xor(n, A322281(n)))`
-/

namespace A033793.P4831657467976482314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (Int.xor (n : ℤ) (A322281 n)).toNat

end

end A033793.P4831657467976482314

/-! ## A033793.P13495289103833205292

`A033761(n)+∑[A025465(A000073(n))]`
-/

namespace A033793.P13495289103833205292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A000073 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033793.P13495289103833205292

/-! ## A033793.P12145607060743676886

`A033761(n)+1-A033761(A322281(n))`
-/

namespace A033793.P12145607060743676886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 n + (1 - A033761 (A322281 n).toNat)

end

end A033793.P12145607060743676886

/-!
# A033794: Product t2(q^d); d | 35, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033794, there is no canonical definition to state claims against.
-/

/-! ## A033794.P740679470060597672

`A008617(A191386(n))%3`
-/

namespace A033794.P740679470060597672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008617 (A191386 n).toNat) 3

end

end A033794.P740679470060597672

/-! ## A033794.P13370955727219373489

`A178809(A118870(n))%3`
-/

namespace A033794.P13370955727219373489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178809 ((A118870 n).toNat + 2)) 3

end

end A033794.P13370955727219373489

/-! ## A033794.P11024698836051817389

`A000161(A022142(n)-A051023(n))`
-/

namespace A033794.P11024698836051817389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A022142 n - A051023 n).toNat

end

end A033794.P11024698836051817389

/-! ## A033794.P17448522532411244208

`A025435(A022142(n)-A051023(n))`
-/

namespace A033794.P17448522532411244208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A022142 n - A051023 n).toNat

end

end A033794.P17448522532411244208

/-! ## A033794.P15402242284284128500

`A287234(A192798(n+1)+A064547(n+1))`
-/

namespace A033794.P15402242284284128500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A192798 (n + 1) + A064547 (n + 1)).toNat

end

end A033794.P15402242284284128500

/-!
# A033796: Product t2(q^d); d | 37, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033796, there is no canonical definition to state claims against.
-/

/-! ## A033796.P14207405567690882325

`A033806(A080036(n))^p?[A053256(n)]`
-/

namespace A033796.P14207405567690882325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053256 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033806 (A080036 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A033796.P14207405567690882325

/-! ## A033796.P8674087961626606896

`A033806(A080036(n))^p?[A112221(n)]`
-/

namespace A033796.P8674087961626606896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112221 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033806 (A080036 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A033796.P8674087961626606896

/-! ## A033796.P14396735300875783848

`A033806(A080036(n))^A031142(n+1)`
-/

namespace A033796.P14396735300875783848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033806 (A080036 n).toNat : ℚ) ^ (A031142 (n + 1) : ℤ)

end

end A033796.P14396735300875783848

/-! ## A033796.P14631477771590711242

`A121373(A134971(n+1))+A033806(A080036(n))`
-/

namespace A033796.P14631477771590711242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A134971 (n + 1)).toNat + A033806 (A080036 n).toNat

end

end A033796.P14631477771590711242

/-! ## A033796.P12305381766159109353

`A100910(A100913(n+1)%A193722(n))`
-/

namespace A033796.P12305381766159109353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (Int.tmod (A100913 (n + 1)) (A193722 n)).toNat

end

end A033796.P12305381766159109353

/-!
# A033797: Product t2(q^d); d | 38, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033797, there is no canonical definition to state claims against.
-/

/-! ## A033797.P17530327603114190470

`A333224(A184945(n))+A033761(n)`
-/

namespace A033797.P17530327603114190470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A184945 n).toNat + A033761 n

end

end A033797.P17530327603114190470

/-! ## A033797.P6175387754892888830

`A033761(lt[A033754(n), 96])`
-/

namespace A033797.P6175387754892888830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033754 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  96

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033797.P6175387754892888830

/-! ## A033797.P675550309520228289

`A151774(A275064(n))+A033761(n)`
-/

namespace A033797.P675550309520228289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 (A275064 n).toNat + A033761 n

end

end A033797.P675550309520228289

/-! ## A033797.P15705433738900753550

`A151774(A275064(n))+A033805(n)`
-/

namespace A033797.P15705433738900753550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 (A275064 n).toNat + A033805 n

end

end A033797.P15705433738900753550

/-! ## A033797.P10255930620747299441

`A033761(lt[A066181(n+1), A151910(3*n+1)])`
-/

namespace A033797.P10255930620747299441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151910 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033797.P10255930620747299441

/-!
# A033798: Product t2(q^d); d | 39, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033798, there is no canonical definition to state claims against.
-/

/-! ## A033798.P3866591380977815743

`A057163(A107401(n+1))%3`
-/

namespace A033798.P3866591380977815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057163 (A107401 (n + 1)).toNat) 3

end

end A033798.P3866591380977815743

/-! ## A033798.P17035157176723971982

`A276404(A011782(n))+A033762(n)`
-/

namespace A033798.P17035157176723971982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A011782 n).toNat + A033762 n

end

end A033798.P17035157176723971982

/-! ## A033798.P10776598961288188392

`A144198(A134816(n+1))+A033762(n)`
-/

namespace A033798.P10776598961288188392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144198 (A134816 (n + 1)).toNat + A033762 n

end

end A033798.P10776598961288188392

/-! ## A033798.P16615474602095248246

`A321090(A189696(n+1)*A189703(n+1))`
-/

namespace A033798.P16615474602095248246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A189696 (n + 1) * A189703 (n + 1)).toNat

end

end A033798.P16615474602095248246

/-! ## A033798.P4367199239922665668

`and(A003602(A178961(n+1)+1), A305875(n+2))`
-/

namespace A033798.P4367199239922665668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003602 (A178961 (n + 1) + 1).toNat) (A305875 (n + 2))

end

end A033798.P4367199239922665668

