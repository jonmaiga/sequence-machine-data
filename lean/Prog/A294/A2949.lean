import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A294900: Numbers k such that k = sum of nonabundant proper divisors of k (A294888).

The programs for A294900, there is no canonical definition to state claims against.
-/

/-! ## A294900.P7528157942822286374

`filter[A118372(n+1), A286903(#)]`
-/

namespace A294900.P7528157942822286374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286903 (f1 j).toNat = 1) n)

end

end A294900.P7528157942822286374

/-! ## A294900.P15595910944812982016

`eq[A028310(n), A294888(A028310(n))]`
-/

namespace A294900.P15595910944812982016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294900.P15595910944812982016

/-!
# A294901: Number of proper divisors of n that are in A257691.

The programs for A294901, there is no canonical definition to state claims against.
-/

/-! ## A294901.P8529106131992005002

`A294903(n+1)-A294905(n+1)`
-/

namespace A294901.P8529106131992005002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) - A294905 (n + 1)

end

end A294901.P8529106131992005002

/-! ## A294901.P12813917431138583974

`A032741(n+1)-A294902(n+1)`
-/

namespace A294901.P12813917431138583974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294902 (n + 1)

end

end A294901.P12813917431138583974

/-! ## A294901.P14524247303815314609

`A000005(n+1)-(A294902(n+1)+1)`
-/

namespace A294901.P14524247303815314609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294902 (n + 1) + 1)

end

end A294901.P14524247303815314609

/-! ## A294901.P5137647764227558289

`∑{d}[n+1, A157658(#)*A294903((n+1)/#)]`
-/

namespace A294901.P5137647764227558289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294901.P5137647764227558289

/-! ## A294901.P16509758791557170946

`A038040(n+1)/(n+1)-(A294902(n+1)+1)`
-/

namespace A294901.P16509758791557170946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) - (A294902 (n + 1) + 1 : ℚ)

end

end A294901.P16509758791557170946

/-! ## A294901.P1453467279874152851

`∑{d}[n+1, A057427(#-1)*A294905((n+1)/#)]`
-/

namespace A294901.P1453467279874152851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A294905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294901.P1453467279874152851

/-! ## A294901.P6880714295027286557

`A294881(n+1)+A294882(n+1)-A294902(n+1)`
-/

namespace A294901.P6880714295027286557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (n + 1) + (A294882 (n + 1) - A294902 (n + 1))

end

end A294901.P6880714295027286557

/-! ## A294901.P6013374997831768366

`A294891(n+1)+A294892(n+1)-A294902(n+1)`
-/

namespace A294901.P6013374997831768366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + (A294892 (n + 1) - A294902 (n + 1))

end

end A294901.P6013374997831768366

/-! ## A294901.P12094140420942716181

`A294903(n+1)-C(A294903(n+1), A000005(n+1))`
-/

namespace A294901.P12094140420942716181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) - (Nat.choose (A294903 (n + 1)).toNat (A000005 (n + 1)).toNat : ℤ)

end

end A294901.P12094140420942716181

/-! ## A294901.P2088373901760584191

`A294894(n+1)+A294893(n+1)-(A294902(n+1)+1)`
-/

namespace A294901.P2088373901760584191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294894 (n + 1) + A294893 (n + 1) - (A294902 (n + 1) + 1)

end

end A294901.P2088373901760584191

/-! ## A294901.P6560604049616965817

`A324393(n+1)+A324392(n+1)-(A294902(n+1)+1)`
-/

namespace A294901.P6560604049616965817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324393 (n + 1) + A324392 (n + 1) - (A294902 (n + 1) + 1)

end

end A294901.P6560604049616965817

/-! ## A294901.P7367753092077590806

`A353352(n+1)+A353351(n+1)-(A294902(n+1)+1)`
-/

namespace A294901.P7367753092077590806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (n + 1) + A353351 (n + 1) - (A294902 (n + 1) + 1)

end

end A294901.P7367753092077590806

/-! ## A294901.P13596920840767909019

`A294891(n+1)+A294891(A140513(n))`
-/

namespace A294901.P13596920840767909019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + A294891 (A140513 n).toNat

end

end A294901.P13596920840767909019

/-! ## A294901.P427631771503582936

`A294891(n+1)+A057427(n²)`
-/

namespace A294901.P427631771503582936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + A057427 (n ^ 2)

end

end A294901.P427631771503582936

/-!
# A294902: Number of proper divisors of n that are in A175526.

The programs for A294902, there is no canonical definition to state claims against.
-/

/-! ## A294902.P3192607995574418211

`A294904(n+1)+A294905(n+1)-1`
-/

namespace A294902.P3192607995574418211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294904 (n + 1) + A294905 (n + 1) - 1

end

end A294902.P3192607995574418211

/-! ## A294902.P17240835008568475513

`A259361(A294904(n+1)²)`
-/

namespace A294902.P17240835008568475513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A294904 (n + 1) ^ 2).toNat

end

end A294902.P17240835008568475513

/-! ## A294902.P9952309662817037994

`A032741(n+1)-A294901(n+1)`
-/

namespace A294902.P9952309662817037994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294901 (n + 1)

end

end A294902.P9952309662817037994

/-! ## A294902.P11056819723765220870

`Δ[A006218(n)]-(A294901(n+1)+1)`
-/

namespace A294902.P11056819723765220870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A294901 (n + 1) + 1)

end

end A294902.P11056819723765220870

/-! ## A294902.P12005488639744212100

`A000005(n+1)-(A294901(n+1)+1)`
-/

namespace A294902.P12005488639744212100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294901 (n + 1) + 1)

end

end A294902.P12005488639744212100

/-! ## A294902.P11508570029702669270

`∑{d}[n+1, A157658(#)*A294904((n+1)/#)]`
-/

namespace A294902.P11508570029702669270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294902.P11508570029702669270

/-! ## A294902.P2863061360128214739

`A002262(A004273(A294904(n+1)²))`
-/

namespace A294902.P2863061360128214739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A004273 (A294904 (n + 1) ^ 2).toNat).toNat

end

end A294902.P2863061360128214739

/-! ## A294902.P16779819148955513195

`A002265(A014681(4*A294904(n+1)))`
-/

namespace A294902.P16779819148955513195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A014681 (4 * A294904 (n + 1)).toNat).toNat

end

end A294902.P16779819148955513195

/-! ## A294902.P7833560202335534719

`A294891(n+1)+A294892(n+1)-A294901(n+1)`
-/

namespace A294902.P7833560202335534719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + (A294892 (n + 1) - A294901 (n + 1))

end

end A294902.P7833560202335534719

/-! ## A294902.P14615961043321574035

`A294928(n+1)+A294929(n+1)-A294901(n+1)`
-/

namespace A294902.P14615961043321574035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294928 (n + 1) + (A294929 (n + 1) - A294901 (n + 1))

end

end A294902.P14615961043321574035

/-! ## A294902.P11163532628584035442

`A006218(n+1)-A006218(n)-(A294901(n+1)+1)`
-/

namespace A294902.P11163532628584035442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A006218 n - (A294901 (n + 1) + 1)

end

end A294902.P11163532628584035442

/-! ## A294902.P15816115076492609265

`A294894(n+1)+A294893(n+1)-(A294901(n+1)+1)`
-/

namespace A294902.P15816115076492609265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294894 (n + 1) + A294893 (n + 1) - (A294901 (n + 1) + 1)

end

end A294902.P15816115076492609265

/-! ## A294902.P17223340686603181371

`A324393(n+1)+A324392(n+1)-(A294901(n+1)+1)`
-/

namespace A294902.P17223340686603181371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324393 (n + 1) + A324392 (n + 1) - (A294901 (n + 1) + 1)

end

end A294902.P17223340686603181371

/-! ## A294902.P12335735913095115808

`A353352(n+1)+A353351(n+1)-(A294901(n+1)+1)`
-/

namespace A294902.P12335735913095115808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (n + 1) + A353351 (n + 1) - (A294901 (n + 1) + 1)

end

end A294902.P12335735913095115808

/-! ## A294902.P16770196126976455637

`∑{d}[n+1, A138707(A138708(#))]-(A294901(n+1)+1)`
-/

namespace A294902.P16770196126976455637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138707 (A138708 d).toNat - (A294901 (n + 1) + 1)

end

end A294902.P16770196126976455637

/-! ## A294902.P15698485346492160064

`A294904(2^A294904(n+1))`
-/

namespace A294902.P15698485346492160064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294904 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A294904 (n + 1) : ℤ))).toNat

end

end A294902.P15698485346492160064

/-! ## A294902.P78197361191568582

`A294892(n+1)+A057428(n²)`
-/

namespace A294902.P78197361191568582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (n + 1) + A057428 (n ^ 2)

end

end A294902.P78197361191568582

/-! ## A294902.P6101215900728129510

`A294892(n+1)-A057427(n²)`
-/

namespace A294902.P6101215900728129510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (n + 1) - A057427 (n ^ 2)

end

end A294902.P6101215900728129510

/-!
# A294903: Number of divisors of n that are in A257691.

The programs for A294903, there is no canonical definition to state claims against.
-/

/-! ## A294903.P10865315430661331881

`A294901(n+1)+A294905(n+1)`
-/

namespace A294903.P10865315430661331881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + A294905 (n + 1)

end

end A294903.P10865315430661331881

/-! ## A294903.P2708464663584067769

`∑{d}[n+1, A294905(#)]`
-/

namespace A294903.P2708464663584067769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294905 d

end

end A294903.P2708464663584067769

/-! ## A294903.P5970990418767207975

`Δ[A006218(n)]-A294904(n+1)`
-/

namespace A294903.P5970990418767207975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294904 (n + 1)

end

end A294903.P5970990418767207975

/-! ## A294903.P1351523586296080494

`A000005(n+1)-A294904(n+1)`
-/

namespace A294903.P1351523586296080494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294904 (n + 1)

end

end A294903.P1351523586296080494

/-! ## A294903.P3768872916058312232

`A032741(n+1)+1-A294904(n+1)`
-/

namespace A294903.P3768872916058312232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (1 - A294904 (n + 1))

end

end A294903.P3768872916058312232

/-! ## A294903.P2798231975263265099

`A294901(2*(n+1))-char[A005843(n+1)]`
-/

namespace A294903.P2798231975263265099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (2 * (n + 1)) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294903.P2798231975263265099

/-! ## A294903.P1674483284614708518

`A032741(n+1)+A294905(n+1)-A294902(n+1)`
-/

namespace A294903.P1674483284614708518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A294905 (n + 1) - A294902 (n + 1))

end

end A294903.P1674483284614708518

/-! ## A294903.P263592471491202260

`A294893(n+1)+A294894(n+1)-A294904(n+1)`
-/

namespace A294903.P263592471491202260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A294904 (n + 1))

end

end A294903.P263592471491202260

/-! ## A294903.P1881030898645361083

`A056170(A087726(n+1))+1`
-/

namespace A294903.P1881030898645361083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A087726 (n + 1)).toNat + 1

end

end A294903.P1881030898645361083

/-!
# A294904: Number of divisors of n that are in A175526.

The programs for A294904, there is no canonical definition to state claims against.
-/

/-! ## A294904.P14361918024830381895

`1+A294902(n+1)-A294905(n+1)`
-/

namespace A294904.P14361918024830381895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A294902 (n + 1) - A294905 (n + 1))

end

end A294904.P14361918024830381895

/-! ## A294904.P2278924487995210728

`Δ[A006218(n)]-A294903(n+1)`
-/

namespace A294904.P2278924487995210728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294903 (n + 1)

end

end A294904.P2278924487995210728

/-! ## A294904.P4809930384437297780

`Δ[A054519(n)]-A294903(n+1)`
-/

namespace A294904.P4809930384437297780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294903 (n + 1)

end

end A294904.P4809930384437297780

/-! ## A294904.P10792606085105488174

`A000005(n+1)-A294903(n+1)`
-/

namespace A294904.P10792606085105488174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294903 (n + 1)

end

end A294904.P10792606085105488174

/-! ## A294904.P4964500774249041796

`A032741(n+1)+1-A294903(n+1)`
-/

namespace A294904.P4964500774249041796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (1 - A294903 (n + 1))

end

end A294904.P4964500774249041796

/-! ## A294904.P13065254410929971744

`A334954(n+1)-(A294903(n+1)+1)`
-/

namespace A294904.P13065254410929971744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A294903 (n + 1) + 1)

end

end A294904.P13065254410929971744

/-! ## A294904.P1849521110636116242

`A294893(n+1)+A294894(n+1)-A294903(n+1)`
-/

namespace A294904.P1849521110636116242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A294903 (n + 1))

end

end A294904.P1849521110636116242

/-!
# A294905: Characteristic function for A000120-nonabundant numbers: a(n) = 1 if A292257(n) <= A000120(n), and 0 otherwise.

The programs for A294905, there is no canonical definition to state claims against.
-/

/-! ## A294905.P2484564931371080369

`char[A257691(n+1)-1]`
-/

namespace A294905.P2484564931371080369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257691 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294905.P2484564931371080369

/-! ## A294905.P13497290147291014142

`char[lt[A294904(n+1), 1]]`
-/

namespace A294905.P13497290147291014142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294904 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294905.P13497290147291014142

/-! ## A294905.P12171351363226334878

`1-char[A175526(n+1)-1]`
-/

namespace A294905.P12171351363226334878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294905.P12171351363226334878

/-! ## A294905.P14168890193673070393

`A000007(A294904(n+1))`
-/

namespace A294905.P14168890193673070393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A294904 (n + 1)).toNat

end

end A294905.P14168890193673070393

/-! ## A294905.P17897881435212280392

`A000122(lcm(10, A294904(n+1)))`
-/

namespace A294905.P17897881435212280392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lcm 10 (A294904 (n + 1)))

end

end A294905.P17897881435212280392

/-! ## A294905.P4224046381819045112

`A294903(n+1)-A294901(n+1)`
-/

namespace A294905.P4224046381819045112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) - A294901 (n + 1)

end

end A294905.P4224046381819045112

/-! ## A294905.P10614779718463671354

`C(A294903(n+1), A000005(n+1))`
-/

namespace A294905.P10614779718463671354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294903 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A294905.P10614779718463671354

/-! ## A294905.P14650102243183841179

`A262676(ceil(2/(A294904(n+1)+1)))`
-/

namespace A294905.P14650102243183841179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 ⌈2 / (A294904 (n + 1) + 1 : ℚ)⌉.toNat

end

end A294905.P14650102243183841179

/-! ## A294905.P17086981222516308383

`2-A004655(ceil(A294904(n+1)/(n+1)))`
-/

namespace A294905.P17086981222516308383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004655 ⌈(A294904 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A294905.P17086981222516308383

/-! ## A294905.P17987089294974560467

`∑{d}[n+1, A008683(#)*A294903((n+1)/#)]`
-/

namespace A294905.P17987089294974560467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294905.P17987089294974560467

/-! ## A294905.P15978240048037120004

`A008683(A035532(n+1))^A294904(n+1)`
-/

namespace A294905.P15978240048037120004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A035532 (n + 1)).toNat : ℚ) ^ (A294904 (n + 1) : ℤ)

end

end A294905.P15978240048037120004

/-!
# A294909: Numbers k such that (10^k + 47)/3 is prime.

The programs for A294909, there is no canonical definition to state claims against.
-/

/-! ## A294909.P1393832627532917011

`∑[A010251(A009889(3*n))]`
-/

namespace A294909.P1393832627532917011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010251 (A009889 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294909.P1393832627532917011

/-! ## A294909.P7956504313579974909

`record[or(A111825(n), A161710(n))]`
-/

namespace A294909.P7956504313579974909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111825 n) (A161710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294909.P7956504313579974909

/-! ## A294909.P4503046902751156367

`∑[A200370(∑[A081938(n+1)])]`
-/

namespace A294909.P4503046902751156367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294909.P4503046902751156367

/-!
# A294911: Numbers k such that (299*10^k + 1)/3 is prime.

The programs for A294911, there is no canonical definition to state claims against.
-/

/-! ## A294911.P15632281644841937879

`ceil(γ*A126278(n+1))`
-/

namespace A294911.P15632281644841937879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A126278 (n + 1) : ℝ)⌉

end

end A294911.P15632281644841937879

/-! ## A294911.P9330784927458335571

`record[A245195(n)+A175400(n)]`
-/

namespace A294911.P9330784927458335571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245195 n + A175400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294911.P9330784927458335571

/-! ## A294911.P10946399083041374118

`record[and(A112705(n), A194005(n))]`
-/

namespace A294911.P10946399083041374118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112705 n) (A194005 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294911.P10946399083041374118

/-! ## A294911.P1346770325729466895

`filter[A131614(n+1), A188642(#)]`
-/

namespace A294911.P1346770325729466895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A294911.P1346770325729466895

/-! ## A294911.P8333916260156812642

`eq[A074802(n+1), A098925(n)]`
-/

namespace A294911.P8333916260156812642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294911.P8333916260156812642

/-!
# A294912: Numbers n such that 2^(n-1), (2*n-1)*(2^((n-1)/2)), (4*ceiling((3/4)*n)-2), and (2^((n+1)/2) + floor((1/4)*n)*2^(((n+1)/2)+1)) are all congruent to 1 (mod n).

The programs for A294912, there is no canonical definition to state claims against.
-/

/-! ## A294912.P9738682223286836039

`p?[8*n+3]+C(n, 52)`
-/

namespace A294912.P9738682223286836039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.choose n 52

end

end A294912.P9738682223286836039

/-! ## A294912.P7966843290003838054

`p?[8*n+3]+and(64, n)`
-/

namespace A294912.P7966843290003838054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.land 64 n

end

end A294912.P7966843290003838054

/-! ## A294912.P16562385635874473639

`or(floor(n/26), p?[8*n+3])`
-/

namespace A294912.P16562385635874473639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 26⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A294912.P16562385635874473639

/-! ## A294912.P14121208250437674787

`p?[8*n+3]%((8/2)^6)`
-/

namespace A294912.P14121208250437674787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (SequenceMachineLib.roundAway (((8 : ℚ) / 2) ^ 6))

end

end A294912.P14121208250437674787

/-! ## A294912.P13532094261227153750

`p?[floor(n*log(20))+5*n-4]`
-/

namespace A294912.P13532094261227153750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (20 : ℝ)⌋ + ((5 * n : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294912.P13532094261227153750

/-! ## A294912.P6693110160657765228

`filter[A017101(n), A257531(#)]`
-/

namespace A294912.P6693110160657765228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A294912.P6693110160657765228

/-! ## A294912.P8210615930305731866

`filter[A078688(n), A257531(#)]`
-/

namespace A294912.P8210615930305731866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A294912.P8210615930305731866

/-! ## A294912.P3111794766932662153

`filter[A017101(n), A327861(#)]`
-/

namespace A294912.P3111794766932662153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A294912.P3111794766932662153

/-! ## A294912.P2100509105982752107

`filter[A078688(n), A327861(#)]`
-/

namespace A294912.P2100509105982752107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A294912.P2100509105982752107

/-!
# A294916: Numbers k such that (10^k + 191)/3 is prime.

The programs for A294916, there is no canonical definition to state claims against.
-/

/-! ## A294916.P16040173694959270

`A281275(n+1)+A057428(A185133(n))`
-/

namespace A294916.P16040173694959270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281275 (n + 1) + A057428 (A185133 n).toNat

end

end A294916.P16040173694959270

/-! ## A294916.P14134710834632024664

`A334213(n+1)+A165413(A334250(n))`
-/

namespace A294916.P14134710834632024664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334213 (n + 1) + A165413 (A334250 n).toNat

end

end A294916.P14134710834632024664

/-! ## A294916.P7777564615567122271

`A281275(n+1)-A000035(A186244(n))`
-/

namespace A294916.P7777564615567122271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281275 (n + 1) - A000035 (A186244 n).toNat

end

end A294916.P7777564615567122271

/-! ## A294916.P1826807770371309734

`A281275(n+1)-A060576(A148839(n))`
-/

namespace A294916.P1826807770371309734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281275 (n + 1) - A060576 (A148839 n).toNat

end

end A294916.P1826807770371309734

/-! ## A294916.P14650967512881932317

`A069784(A008578(n+1))+A056170(n+1)`
-/

namespace A294916.P14650967512881932317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069784 (A008578 (n + 1)).toNat + A056170 (n + 1)

end

end A294916.P14650967512881932317

/-!
# A294919: Numbers n such that 2^(n-1), (2*n-1)*(2^((n-1)/2)), (4*ceiling((1/4)*n)-2), and (2^((n+1)/2) + floor((3/4)*n)*2^(((n+1)/2)+1)) are all congruent to 1 (mod n).

The programs for A294919, there is no canonical definition to state claims against.
-/

/-! ## A294919.P3067720755891646391

`p?[8*n-3]+C(n, 64)`
-/

namespace A294919.P3067720755891646391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose n 64 : ℤ)

end

end A294919.P3067720755891646391

/-! ## A294919.P1827280444776868099

`gcd(C(n, 64), p?[8*n-3])`
-/

namespace A294919.P1827280444776868099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n 64 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294919.P1827280444776868099

/-! ## A294919.P16507191991307431268

`or(C(n, 64), p?[8*n-3])`
-/

namespace A294919.P16507191991307431268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n 64 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294919.P16507191991307431268

/-! ## A294919.P16337839845473039829

`xor(C(n, 64), p?[8*n-3])`
-/

namespace A294919.P16337839845473039829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n 64 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294919.P16337839845473039829

/-! ## A294919.P675198209762515874

`p?[8*n-3]%(72/2)²`
-/

namespace A294919.P675198209762515874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (SequenceMachineLib.roundAway (((72 : ℚ) / 2) ^ 2))

end

end A294919.P675198209762515874

/-! ## A294919.P9682954992913313758

`p?[8*n-3]-C(n, 64)²`
-/

namespace A294919.P9682954992913313758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose n 64 ^ 2 : ℤ)

end

end A294919.P9682954992913313758

/-! ## A294919.P11498262838736506627

`p?[8*n+5]+floor(n/81)`
-/

namespace A294919.P11498262838736506627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ⌊(n : ℚ) / 81⌋

end

end A294919.P11498262838736506627

/-! ## A294919.P11806739616470488904

`p?[8*n+5-val(n+1, 12)]`
-/

namespace A294919.P11806739616470488904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 5 : ℤ) - (SequenceMachineLib.valuation (n + 1) 12 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294919.P11806739616470488904

/-! ## A294919.P5915578623134644204

`p?[or(8*n+5, A001221(n+1)²)]`
-/

namespace A294919.P5915578623134644204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 * n + 5 : ℤ) (A001221 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A294919.P5915578623134644204

/-!
# A294922: Expansion of 1/(1 + x/(1 + x^3/(1 + x^4/(1 + x^7/(1 + x^11/(1 + ... + x^Lucas(k)/(1 + ...))))))), a continued fraction.

The programs for A294922, there is no canonical definition to state claims against.
-/

/-! ## A294922.P8106317251205865408

`(-1)^n*A000196(A113409(n))`
-/

namespace A294922.P8106317251205865408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000196 (A113409 n).toNat

end

end A294922.P8106317251205865408

/-! ## A294922.P14598236899402441167

`A000196(A113409(n))*A015435(n)`
-/

namespace A294922.P14598236899402441167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A113409 n).toNat * A015435 n

end

end A294922.P14598236899402441167

/-! ## A294922.P4446741325298075142

`A000196(A113409(n))*A033999(n)`
-/

namespace A294922.P4446741325298075142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A113409 n).toNat * A033999 n

end

end A294922.P4446741325298075142

/-! ## A294922.P8156205182364084043

`A000196(A113409(n))*A165326(n+1)`
-/

namespace A294922.P8156205182364084043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A113409 n).toNat * A165326 (n + 1)

end

end A294922.P8156205182364084043

/-!
# A294923: Number n such that the whole sequence of the first n terms of A293700 is a palindrome.

The programs for A294923, there is no canonical definition to state claims against.
-/

/-! ## A294923.P202075081024548207

`record[C(A293701(n+1), n)]`
-/

namespace A294923.P202075081024548207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293701 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294923.P202075081024548207

/-! ## A294923.P10020350206409130843

`record[gcd(n+1, A293704(n+1))]`
-/

namespace A294923.P10020350206409130843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A293704 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294923.P10020350206409130843

/-! ## A294923.P13796087315293549259

`record[gcd(A103517(n), A293701(n+1))]`
-/

namespace A294923.P13796087315293549259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A293701 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294923.P13796087315293549259

/-! ## A294923.P11135226152002629283

`record[and(A293701(n+2), A293704(n+2))]`
-/

namespace A294923.P11135226152002629283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293701 (n + 2)) (A293704 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294923.P11135226152002629283

/-! ## A294923.P2498627192916255131

`eq[n, A293704(n+1)+A094759(n+1)]`
-/

namespace A294923.P2498627192916255131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293704 (n + 1) + A094759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294923.P2498627192916255131

/-!
# A294924: Numbers n such that the whole sequence of the first n terms of A293699 is a palindrome.

The programs for A294924, there is no canonical definition to state claims against.
-/

/-! ## A294924.P2720566002591788065

`record[C(A293702(n+1), n)]`
-/

namespace A294924.P2720566002591788065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293702 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294924.P2720566002591788065

/-!
# A294925: a(n) is the smallest number k with n prime factors such that p + k/p is prime for every prime p | k.

The programs for A294925, there is no canonical definition to state claims against.
-/

/-! ## A294925.P13603206970988956073

`A007947(A136506(n)*A238895(n+1))`
-/

namespace A294925.P13603206970988956073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A136506 n * A238895 (n + 1)).toNat

end

end A294925.P13603206970988956073

/-!
# A294926: Number of proper divisors of n that are deficient (A005100).

The programs for A294926, the canonical program `A294926.P4076781104688311516` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294926 has offset 1).

The definition of A294926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080226, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294926.P4076781104688311516

`A080226(n+1)-A294934(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294926

/-- `A080226(n+1)-A294934(n+1)` -/
def P4076781104688311516.Spec : Prop :=
  ∀ n, P4076781104688311516.a n = A294926 (n + 1)

theorem P4076781104688311516.correct : P4076781104688311516.Spec := by
  intro n
  simp only [A294926, Nat.add_sub_cancel]

end A294926

/-! ## A294926.P13447386724176729684

`A032741(n+1)-A294927(n+1)`
-/

namespace A294926.P13447386724176729684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294927 (n + 1)

end

end A294926.P13447386724176729684

namespace A294926

/-- `A032741(n+1)-A294927(n+1)` -/
def P13447386724176729684.Spec : Prop :=
  ∀ n, P13447386724176729684.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P3897056705946380730

`A000005(n+1)-(A294927(n+1)+1)`
-/

namespace A294926.P3897056705946380730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294927 (n + 1) + 1)

end

end A294926.P3897056705946380730

namespace A294926

/-- `A000005(n+1)-(A294927(n+1)+1)` -/
def P3897056705946380730.Spec : Prop :=
  ∀ n, P3897056705946380730.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P3827314845583799880

`∑{d}[n+1, A294934(#)]-A294934(n+1)`
-/

namespace A294926.P3827314845583799880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294934 d - A294934 (n + 1)

end

end A294926.P3827314845583799880

namespace A294926

/-- `∑{d}[n+1, A294934(#)]-A294934(n+1)` -/
def P3827314845583799880.Spec : Prop :=
  ∀ n, P3827314845583799880.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P6107367337211177910

`A080226(n+1)-char[A005100(n+1)-1]`
-/

namespace A294926.P6107367337211177910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294926.P6107367337211177910

namespace A294926

/-- `A080226(n+1)-char[A005100(n+1)-1]` -/
def P6107367337211177910.Spec : Prop :=
  ∀ n, P6107367337211177910.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P11944667465065701598

`∑{d}[n+1, A080226(#)*A157658((n+1)/#)]`
-/

namespace A294926.P11944667465065701598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080226 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294926.P11944667465065701598

namespace A294926

/-- `∑{d}[n+1, A080226(#)*A157658((n+1)/#)]` -/
def P11944667465065701598.Spec : Prop :=
  ∀ n, P11944667465065701598.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P6990746994238992169

`A294928(n+1)+A294929(n+1)-A294927(n+1)`
-/

namespace A294926.P6990746994238992169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294928 (n + 1) + (A294929 (n + 1) - A294927 (n + 1))

end

end A294926.P6990746994238992169

namespace A294926

/-- `A294928(n+1)+A294929(n+1)-A294927(n+1)` -/
def P6990746994238992169.Spec : Prop :=
  ∀ n, P6990746994238992169.a n = A294926 (n + 1)

end A294926

/-! ## A294926.P3949759870896361818

`A080226(n+1)+A082551(n+1)*A294934(n+1)`
-/

namespace A294926.P3949759870896361818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1) + A082551 (n + 1) * A294934 (n + 1)

end

end A294926.P3949759870896361818

namespace A294926

/-- `A080226(n+1)+A082551(n+1)*A294934(n+1)` -/
def P3949759870896361818.Spec : Prop :=
  ∀ n, P3949759870896361818.a n = A294926 (n + 1)

end A294926

/-!
# A294927: Number of proper divisors of n that are nondeficient (A023196).

The programs for A294927, the canonical program `A294927.P17135175495355119695` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294927 has offset 1).

The definition of A294927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294927.P17135175495355119695

`floor(n*A341620(n+1)/(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294927

/-- `floor(n*A341620(n+1)/(n+1))` -/
def P17135175495355119695.Spec : Prop :=
  ∀ n, P17135175495355119695.a n = A294927 (n + 1)

theorem P17135175495355119695.correct : P17135175495355119695.Spec := by
  intro n
  simp only [A294927, Nat.add_sub_cancel]

end A294927

/-! ## A294927.P13349416072550812886

`A028310(A341620(n+1))-1`
-/

namespace A294927.P13349416072550812886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A341620 (n + 1)).toNat - 1

end

end A294927.P13349416072550812886

namespace A294927

/-- `A028310(A341620(n+1))-1` -/
def P13349416072550812886.Spec : Prop :=
  ∀ n, P13349416072550812886.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P12348611577018693423

`A109004(C(A341620(n+1), 2))`
-/

namespace A294927.P12348611577018693423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (Nat.choose (A341620 (n + 1)).toNat 2)

end

end A294927.P12348611577018693423

namespace A294927

/-- `A109004(C(A341620(n+1), 2))` -/
def P12348611577018693423.Spec : Prop :=
  ∀ n, P12348611577018693423.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P1427425398729552734

`A233583(A341620(n+1)+2)-2`
-/

namespace A294927.P1427425398729552734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A341620 (n + 1) + 2).toNat - 2

end

end A294927.P1427425398729552734

namespace A294927

/-- `A233583(A341620(n+1)+2)-2` -/
def P1427425398729552734.Spec : Prop :=
  ∀ n, P1427425398729552734.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P18152128577820073111

`A032741(n+1)-A294926(n+1)`
-/

namespace A294927.P18152128577820073111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294926 (n + 1)

end

end A294927.P18152128577820073111

namespace A294927

/-- `A032741(n+1)-A294926(n+1)` -/
def P18152128577820073111.Spec : Prop :=
  ∀ n, P18152128577820073111.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P6164572542726578155

`A341620(n+1)-A294936(n+1)`
-/

namespace A294927.P6164572542726578155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A294936 (n + 1)

end

end A294927.P6164572542726578155

namespace A294927

/-- `A341620(n+1)-A294936(n+1)` -/
def P6164572542726578155.Spec : Prop :=
  ∀ n, P6164572542726578155.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P10442828123709141359

`A000005(n+1)-(A294926(n+1)+1)`
-/

namespace A294927.P10442828123709141359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294926 (n + 1) + 1)

end

end A294927.P10442828123709141359

namespace A294927

/-- `A000005(n+1)-(A294926(n+1)+1)` -/
def P10442828123709141359.Spec : Prop :=
  ∀ n, P10442828123709141359.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P15921903935213955441

`(A341620(n+1)-1)*A060862(n+1)`
-/

namespace A294927.P15921903935213955441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341620 (n + 1) - 1) * A060862 (n + 1)

end

end A294927.P15921903935213955441

namespace A294927

/-- `(A341620(n+1)-1)*A060862(n+1)` -/
def P15921903935213955441.Spec : Prop :=
  ∀ n, P15921903935213955441.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P10967369005169282712

`(A341620(n+1)-1)*A210455(n+1)`
-/

namespace A294927.P10967369005169282712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341620 (n + 1) - 1) * A210455 (n + 1)

end

end A294927.P10967369005169282712

namespace A294927

/-- `(A341620(n+1)-1)*A210455(n+1)` -/
def P10967369005169282712.Spec : Prop :=
  ∀ n, P10967369005169282712.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P9574062187921520156

`(A341620(n+1)-1)*A294937(n+1)`
-/

namespace A294927.P9574062187921520156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341620 (n + 1) - 1) * A294937 (n + 1)

end

end A294927.P9574062187921520156

namespace A294927

/-- `(A341620(n+1)-1)*A294937(n+1)` -/
def P9574062187921520156.Spec : Prop :=
  ∀ n, P9574062187921520156.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P4321426636307483455

`A004526(A004273(A341620(n+1)))`
-/

namespace A294927.P4321426636307483455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004273 (A341620 (n + 1)).toNat).toNat

end

end A294927.P4321426636307483455

namespace A294927

/-- `A004526(A004273(A341620(n+1)))` -/
def P4321426636307483455.Spec : Prop :=
  ∀ n, P4321426636307483455.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P7270098343671501376

`A000194(A341620(n+1)²-A341620(n+1))`
-/

namespace A294927.P7270098343671501376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A341620 (n + 1) ^ 2 - A341620 (n + 1)).toNat

end

end A294927.P7270098343671501376

namespace A294927

/-- `A000194(A341620(n+1)²-A341620(n+1))` -/
def P7270098343671501376.Spec : Prop :=
  ∀ n, P7270098343671501376.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P9833807922197038046

`A341620(n+1)-A057427(A341620(n+1)²)`
-/

namespace A294927.P9833807922197038046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A057427 (A341620 (n + 1) ^ 2).toNat

end

end A294927.P9833807922197038046

namespace A294927

/-- `A341620(n+1)-A057427(A341620(n+1)²)` -/
def P9833807922197038046.Spec : Prop :=
  ∀ n, P9833807922197038046.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P2051705115262740552

`A341620(n+1)-A057427(2*A341620(n+1))`
-/

namespace A294927.P2051705115262740552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A057427 (2 * A341620 (n + 1)).toNat

end

end A294927.P2051705115262740552

namespace A294927

/-- `A341620(n+1)-A057427(2*A341620(n+1))` -/
def P2051705115262740552.Spec : Prop :=
  ∀ n, P2051705115262740552.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P3136400601183307432

`A032741(n+1)+A294934(n+1)-A080226(n+1)`
-/

namespace A294927.P3136400601183307432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A294934 (n + 1) - A080226 (n + 1))

end

end A294927.P3136400601183307432

namespace A294927

/-- `A032741(n+1)+A294934(n+1)-A080226(n+1)` -/
def P3136400601183307432.Spec : Prop :=
  ∀ n, P3136400601183307432.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P168685156650248949

`A294928(n+1)+A294929(n+1)-A294926(n+1)`
-/

namespace A294927.P168685156650248949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294928 (n + 1) + (A294929 (n + 1) - A294926 (n + 1))

end

end A294927.P168685156650248949

namespace A294927

/-- `A294928(n+1)+A294929(n+1)-A294926(n+1)` -/
def P168685156650248949.Spec : Prop :=
  ∀ n, P168685156650248949.a n = A294927 (n + 1)

end A294927

/-! ## A294927.P13926308112408675420

`A060143(A341620(n+1)+A060143(A341620(n+1)))`
-/

namespace A294927.P13926308112408675420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A341620 (n + 1) + A060143 (A341620 (n + 1)).toNat).toNat

end

end A294927.P13926308112408675420

namespace A294927

/-- `A060143(A341620(n+1)+A060143(A341620(n+1)))` -/
def P13926308112408675420.Spec : Prop :=
  ∀ n, P13926308112408675420.a n = A294927 (n + 1)

end A294927

/-!
# A294928: Number of proper divisors of n that are nonabundant (A263837).

The programs for A294928, the canonical program `A294928.P2809866523533724411` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294928 has offset 1).

The definition of A294928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294928.P16938725467821819818

`A032741(n+1)-A294929(n+1)`
-/

namespace A294928.P16938725467821819818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294929 (n + 1)

end

end A294928.P16938725467821819818

namespace A294928

/-- `A032741(n+1)-A294929(n+1)` -/
def P16938725467821819818.Spec : Prop :=
  ∀ n, P16938725467821819818.a n = A294928 (n + 1)

end A294928

/-! ## A294928.P4424609463939442208

`A000005(n+1)-(A294929(n+1)+1)`
-/

namespace A294928.P4424609463939442208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294929 (n + 1) + 1)

end

end A294928.P4424609463939442208

namespace A294928

/-- `A000005(n+1)-(A294929(n+1)+1)` -/
def P4424609463939442208.Spec : Prop :=
  ∀ n, P4424609463939442208.a n = A294928 (n + 1)

end A294928

/-! ## A294928.P3220023695307218372

`n-(A294929(n+1)+A049820(n+1))`
-/

namespace A294928.P3220023695307218372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A294929 (n + 1) + A049820 (n + 1))

end

end A294928.P3220023695307218372

namespace A294928

/-- `n-(A294929(n+1)+A049820(n+1))` -/
def P3220023695307218372.Spec : Prop :=
  ∀ n, P3220023695307218372.a n = A294928 (n + 1)

end A294928

/-! ## A294928.P2809866523533724411

`∑{d}[n+1, A057427(#-1)*A294935((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294928

/-- `∑{d}[n+1, A057427(#-1)*A294935((n+1)/#)]` -/
def P2809866523533724411.Spec : Prop :=
  ∀ n, P2809866523533724411.a n = A294928 (n + 1)

theorem P2809866523533724411.correct : P2809866523533724411.Spec := by
  intro n
  simp only [A294928, Nat.add_sub_cancel]

end A294928

/-! ## A294928.P6018105497408347986

`A004526(A086369(n+1))-A294929(n+1)`
-/

namespace A294928.P6018105497408347986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086369 (n + 1)).toNat - A294929 (n + 1)

end

end A294928.P6018105497408347986

namespace A294928

/-- `A004526(A086369(n+1))-A294929(n+1)` -/
def P6018105497408347986.Spec : Prop :=
  ∀ n, P6018105497408347986.a n = A294928 (n + 1)

end A294928

/-! ## A294928.P9947869636330238033

`A294901(n+1)+A294902(n+1)-A294929(n+1)`
-/

namespace A294928.P9947869636330238033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + (A294902 (n + 1) - A294929 (n + 1))

end

end A294928.P9947869636330238033

namespace A294928

/-- `A294901(n+1)+A294902(n+1)-A294929(n+1)` -/
def P9947869636330238033.Spec : Prop :=
  ∀ n, P9947869636330238033.a n = A294928 (n + 1)

end A294928

/-! ## A294928.P17149049434537953068

`A294926(n+1)+A294927(n+1)-A294929(n+1)`
-/

namespace A294928.P17149049434537953068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (n + 1) + (A294927 (n + 1) - A294929 (n + 1))

end

end A294928.P17149049434537953068

namespace A294928

/-- `A294926(n+1)+A294927(n+1)-A294929(n+1)` -/
def P17149049434537953068.Spec : Prop :=
  ∀ n, P17149049434537953068.a n = A294928 (n + 1)

end A294928

/-!
# A294929: Number of proper divisors of n that are abundant (A005101).

The programs for A294929, the canonical program `A294929.P2023919567513394110` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294929 has offset 1).

The definition of A294929 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294929.P2023919567513394110

`A080224(n+1)-A294937(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294929

/-- `A080224(n+1)-A294937(n+1)` -/
def P2023919567513394110.Spec : Prop :=
  ∀ n, P2023919567513394110.a n = A294929 (n + 1)

theorem P2023919567513394110.correct : P2023919567513394110.Spec := by
  intro n
  simp only [A294929, Nat.add_sub_cancel]

end A294929

/-! ## A294929.P3513413457146123259

`A028310(A080224(n+1))-1`
-/

namespace A294929.P3513413457146123259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A080224 (n + 1)).toNat - 1

end

end A294929.P3513413457146123259

namespace A294929

/-- `A028310(A080224(n+1))-1` -/
def P3513413457146123259.Spec : Prop :=
  ∀ n, P3513413457146123259.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P6440893390375860242

`A233583(A080224(n+1)+2)-2`
-/

namespace A294929.P6440893390375860242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A080224 (n + 1) + 2).toNat - 2

end

end A294929.P6440893390375860242

namespace A294929

/-- `A233583(A080224(n+1)+2)-2` -/
def P6440893390375860242.Spec : Prop :=
  ∀ n, P6440893390375860242.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P15524350428468080187

`A032741(n+1)-A294928(n+1)`
-/

namespace A294929.P15524350428468080187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294928 (n + 1)

end

end A294929.P15524350428468080187

namespace A294929

/-- `A032741(n+1)-A294928(n+1)` -/
def P15524350428468080187.Spec : Prop :=
  ∀ n, P15524350428468080187.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P9980635463382730530

`A000005(n+1)-(A294928(n+1)+1)`
-/

namespace A294929.P9980635463382730530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294928 (n + 1) + 1)

end

end A294929.P9980635463382730530

namespace A294929

/-- `A000005(n+1)-(A294928(n+1)+1)` -/
def P9980635463382730530.Spec : Prop :=
  ∀ n, P9980635463382730530.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P10486856016243154998

`A000196(A080224(n+1)²-A080224(n+1))`
-/

namespace A294929.P10486856016243154998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A080224 (n + 1) ^ 2 - A080224 (n + 1)).toNat

end

end A294929.P10486856016243154998

namespace A294929

/-- `A000196(A080224(n+1)²-A080224(n+1))` -/
def P10486856016243154998.Spec : Prop :=
  ∀ n, P10486856016243154998.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P13333637882064353014

`A080224(n+1)-A323022(A080224(n+1)+1)`
-/

namespace A294929.P13333637882064353014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) - A323022 (A080224 (n + 1) + 1).toNat

end

end A294929.P13333637882064353014

namespace A294929

/-- `A080224(n+1)-A323022(A080224(n+1)+1)` -/
def P13333637882064353014.Spec : Prop :=
  ∀ n, P13333637882064353014.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P16305916969843039639

`A000196((A080224(n+1)-1)*A080224(n+1))`
-/

namespace A294929.P16305916969843039639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A080224 (n + 1) - 1) * A080224 (n + 1)).toNat

end

end A294929.P16305916969843039639

namespace A294929

/-- `A000196((A080224(n+1)-1)*A080224(n+1))` -/
def P16305916969843039639.Spec : Prop :=
  ∀ n, P16305916969843039639.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P17338915326349949645

`A294901(n+1)+A294902(n+1)-A294928(n+1)`
-/

namespace A294929.P17338915326349949645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + (A294902 (n + 1) - A294928 (n + 1))

end

end A294929.P17338915326349949645

namespace A294929

/-- `A294901(n+1)+A294902(n+1)-A294928(n+1)` -/
def P17338915326349949645.Spec : Prop :=
  ∀ n, P17338915326349949645.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P10561882053820891054

`A294926(n+1)+A294927(n+1)-A294928(n+1)`
-/

namespace A294929.P10561882053820891054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (n + 1) + (A294927 (n + 1) - A294928 (n + 1))

end

end A294929.P10561882053820891054

namespace A294929

/-- `A294926(n+1)+A294927(n+1)-A294928(n+1)` -/
def P10561882053820891054.Spec : Prop :=
  ∀ n, P10561882053820891054.a n = A294929 (n + 1)

end A294929

/-! ## A294929.P10658603481626538262

`A080224(n+1)-A060862(n+1)*A082551(n+1)`
-/

namespace A294929.P10658603481626538262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) - A060862 (n + 1) * A082551 (n + 1)

end

end A294929.P10658603481626538262

namespace A294929

/-- `A080224(n+1)-A060862(n+1)*A082551(n+1)` -/
def P10658603481626538262.Spec : Prop :=
  ∀ n, P10658603481626538262.a n = A294929 (n + 1)

end A294929

/-!
# A294930: Characteristic function for A091191, primitive abundant numbers: abundant numbers (A005101) having no abundant proper divisor.

The programs for A294930, the canonical program `A294930.P12845745568245124402` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294930 has offset 1).

The definition of A294930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294930.P17382882264393361311

`char[A091191(n+1)-1]`
-/

namespace A294930.P17382882264393361311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294930.P17382882264393361311

namespace A294930

/-- `char[A091191(n+1)-1]` -/
def P17382882264393361311.Spec : Prop :=
  ∀ n, (P17382882264393361311.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P6622718319849199780

`char[A091196(n+1)-1]`
-/

namespace A294930.P6622718319849199780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294930.P6622718319849199780

namespace A294930

/-- `char[A091196(n+1)-1]` -/
def P6622718319849199780.Spec : Prop :=
  ∀ n, (P6622718319849199780.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P4311924383553633599

`char[eq[1, A080224(n+1)]]`
-/

namespace A294930.P4311924383553633599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294930.P4311924383553633599

namespace A294930

/-- `char[eq[1, A080224(n+1)]]` -/
def P4311924383553633599.Spec : Prop :=
  ∀ n, (P4311924383553633599.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P12845745568245124402

`A245552(A080224(n+1)²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294930

/-- `A245552(A080224(n+1)²)` -/
def P12845745568245124402.Spec : Prop :=
  ∀ n, P12845745568245124402.a n = A294930 (n + 1)

theorem P12845745568245124402.correct : P12845745568245124402.Spec := by
  intro n
  simp only [A294930, Nat.add_sub_cancel]

end A294930

/-! ## A294930.P6105636714214779967

`char[A023443(A091191(n+1))]`
-/

namespace A294930.P6105636714214779967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A091191 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294930.P6105636714214779967

namespace A294930

/-- `char[A023443(A091191(n+1))]` -/
def P6105636714214779967.Spec : Prop :=
  ∀ n, (P6105636714214779967.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P5182119793756433897

`A154272(A080224(n+1)+2)`
-/

namespace A294930.P5182119793756433897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A080224 (n + 1) + 2).toNat

end

end A294930.P5182119793756433897

namespace A294930

/-- `A154272(A080224(n+1)+2)` -/
def P5182119793756433897.Spec : Prop :=
  ∀ n, P5182119793756433897.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P7658098560637198345

`A022559(C(2, A080224(n+1)))`
-/

namespace A294930.P7658098560637198345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (Nat.choose 2 (A080224 (n + 1)).toNat)

end

end A294930.P7658098560637198345

namespace A294930

/-- `A022559(C(2, A080224(n+1)))` -/
def P7658098560637198345.Spec : Prop :=
  ∀ n, P7658098560637198345.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P18169115480705054159

`A047967(C(2, A080224(n+1)))`
-/

namespace A294930.P18169115480705054159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (Nat.choose 2 (A080224 (n + 1)).toNat)

end

end A294930.P18169115480705054159

namespace A294930

/-- `A047967(C(2, A080224(n+1)))` -/
def P18169115480705054159.Spec : Prop :=
  ∀ n, P18169115480705054159.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P2845616860043622652

`A239239(C(2, A080224(n+1)))`
-/

namespace A294930.P2845616860043622652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 (Nat.choose 2 (A080224 (n + 1)).toNat)

end

end A294930.P2845616860043622652

namespace A294930

/-- `A239239(C(2, A080224(n+1)))` -/
def P2845616860043622652.Spec : Prop :=
  ∀ n, P2845616860043622652.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P17764333365969829445

`A275491(C(2, A080224(n+1)))`
-/

namespace A294930.P17764333365969829445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275491 (Nat.choose 2 (A080224 (n + 1)).toNat)

end

end A294930.P17764333365969829445

namespace A294930

/-- `A275491(C(2, A080224(n+1)))` -/
def P17764333365969829445.Spec : Prop :=
  ∀ n, P17764333365969829445.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P3792941821454999146

`∑{d}[A080224(n+1), A008683(#)]`
-/

namespace A294930.P3792941821454999146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A294930.P3792941821454999146

namespace A294930

/-- `∑{d}[A080224(n+1), A008683(#)]` -/
def P3792941821454999146.Spec : Prop :=
  ∀ n, P3792941821454999146.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P8647260464310591124

`A000007((1-A080224(n+1))²)`
-/

namespace A294930.P8647260464310591124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A080224 (n + 1)) ^ 2).toNat

end

end A294930.P8647260464310591124

namespace A294930

/-- `A000007((1-A080224(n+1))²)` -/
def P8647260464310591124.Spec : Prop :=
  ∀ n, P8647260464310591124.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P6670165936035301649

`A286852((1-A080224(n+1))²)`
-/

namespace A294930.P6670165936035301649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 ((1 - A080224 (n + 1)) ^ 2).toNat

end

end A294930.P6670165936035301649

namespace A294930

/-- `A286852((1-A080224(n+1))²)` -/
def P6670165936035301649.Spec : Prop :=
  ∀ n, P6670165936035301649.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P10171172757624776143

`C(A294890(n+1), A294889(n+1)+1)`
-/

namespace A294930.P10171172757624776143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294890 (n + 1)).toNat (A294889 (n + 1) + 1).toNat

end

end A294930.P10171172757624776143

namespace A294930

/-- `C(A294890(n+1), A294889(n+1)+1)` -/
def P10171172757624776143.Spec : Prop :=
  ∀ n, (P10171172757624776143.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P11677683536241341470

`∑{d}[n+1, A008683(#)*A294890((n+1)/#)]`
-/

namespace A294930.P11677683536241341470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294890 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294930.P11677683536241341470

namespace A294930

/-- `∑{d}[n+1, A008683(#)*A294890((n+1)/#)]` -/
def P11677683536241341470.Spec : Prop :=
  ∀ n, P11677683536241341470.a n = A294930 (n + 1)

end A294930

/-! ## A294930.P15982389430377794448

`val(A016777(n), A016777(n+1-A080224(n+1)))`
-/

namespace A294930.P15982389430377794448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016777 n).toNat (A016777 ((n + 1 : ℤ) - A080224 (n + 1)).toNat).toNat

end

end A294930.P15982389430377794448

namespace A294930

/-- `val(A016777(n), A016777(n+1-A080224(n+1)))` -/
def P15982389430377794448.Spec : Prop :=
  ∀ n, (P15982389430377794448.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P1849237749045538018

`val(A084663(n+2), A084663(A080224(n+1)+n+1))`
-/

namespace A294930.P1849237749045538018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A084663 (n + 2)).toNat (A084663 (A080224 (n + 1) + (n : ℤ) + 1).toNat).toNat

end

end A294930.P1849237749045538018

namespace A294930

/-- `val(A084663(n+2), A084663(A080224(n+1)+n+1))` -/
def P1849237749045538018.Spec : Prop :=
  ∀ n, (P1849237749045538018.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P3456526628521873532

`C(A294890(n+1), A037988(A294889(n+1)))`
-/

namespace A294930.P3456526628521873532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294890 (n + 1)).toNat (A037988 (A294889 (n + 1)).toNat).toNat

end

end A294930.P3456526628521873532

namespace A294930

/-- `C(A294890(n+1), A037988(A294889(n+1)))` -/
def P3456526628521873532.Spec : Prop :=
  ∀ n, (P3456526628521873532.a n : ℤ) = A294930 (n + 1)

end A294930

/-! ## A294930.P4246833360437120814

`A286852(2^A080224(n+1))`
-/

namespace A294930.P4246833360437120814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A080224 (n + 1) : ℤ))).toNat

end

end A294930.P4246833360437120814

namespace A294930

/-- `A286852(2^A080224(n+1))` -/
def P4246833360437120814.Spec : Prop :=
  ∀ n, P4246833360437120814.a n = A294930 (n + 1)

end A294930

/-!
# A294931: Multiplicative with a(p^e) = A019565(A289813(e)).

The programs for A294931, there is no canonical definition to state claims against.
-/

/-! ## A294931.P16650235008290801469

`A004736(A294933(n+1))`
-/

namespace A294931.P16650235008290801469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A294933 (n + 1)).toNat

end

end A294931.P16650235008290801469

/-! ## A294931.P5110951625017042496

`A057555(2*A294933(n+1))`
-/

namespace A294931.P5110951625017042496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A294933 (n + 1)).toNat

end

end A294931.P5110951625017042496

/-! ## A294931.P6571121295437255666

`∏{e}[n+1, A019565(A289813(#))]`
-/

namespace A294931.P6571121295437255666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A019565 (A289813 (Nat.factorization (f1 n) p)).toNat

end

end A294931.P6571121295437255666

/-! ## A294931.P10875021265956377083

`∏{e}[A046523(n+1), A007913(A101278(#))]`
-/

namespace A294931.P10875021265956377083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007913 (A101278 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A294931.P10875021265956377083

/-! ## A294931.P805036347561034137

`∏{e}[A105119(n+1), A007913(A101278(#))]`
-/

namespace A294931.P805036347561034137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007913 (A101278 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A294931.P805036347561034137

/-! ## A294931.P13004815723332999373

`∏{e}[A225891(n+1), A007913(A101278(#))]`
-/

namespace A294931.P13004815723332999373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007913 (A101278 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A294931.P13004815723332999373

/-! ## A294931.P12528617656379206173

`∏{e}[A137734(A028387(n)), A289815(#)]`
-/

namespace A294931.P12528617656379206173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A289815 (Nat.factorization (f1 n).natAbs p)

end

end A294931.P12528617656379206173

/-! ## A294931.P339472173719199780

`∏{e}[n+1, A167413(A016742(#))*A167413(#)]`
-/

namespace A294931.P339472173719199780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A167413 (A016742 (Nat.factorization (f1 n) p)).toNat * A167413 (Nat.factorization (f1 n) p)

end

end A294931.P339472173719199780

/-!
# A294932: Multiplicative with a(p^e) = A019565(A289814(e)).

The programs for A294932, there is no canonical definition to state claims against.
-/

/-! ## A294932.P14075192847471472306

`∏{e}[n+1, A289816(#)]`
-/

namespace A294932.P14075192847471472306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A289816 (Nat.factorization (f1 n) p)

end

end A294932.P14075192847471472306

/-! ## A294932.P16693461443380469495

`A002260(A294933(n+1))`
-/

namespace A294932.P16693461443380469495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A294933 (n + 1)).toNat

end

end A294932.P16693461443380469495

/-! ## A294932.P10163293316471586172

`∏{e}[n+1, A275732(A289814(#))]`
-/

namespace A294932.P10163293316471586172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A275732 (A289814 (Nat.factorization (f1 n) p)).toNat

end

end A294932.P10163293316471586172

/-! ## A294932.P5334083268812696107

`A057555(2*A294933(n+1)-1)`
-/

namespace A294932.P5334083268812696107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A294933 (n + 1) - 1).toNat

end

end A294932.P5334083268812696107

/-! ## A294932.P16014456987151504609

`∏{e}[n+1, A033809(A033809(#²)+#)]`
-/

namespace A294932.P16014456987151504609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A033809 (A033809 (Nat.factorization (f1 n) p ^ 2) + (Nat.factorization (f1 n) p : ℤ)).toNat

end

end A294932.P16014456987151504609

/-! ## A294932.P6320642590264103663

`gcd(A032797(A112624(n+1)), A112624(n+1))`
-/

namespace A294932.P6320642590264103663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032797 (A112624 (n + 1)).toNat) (A112624 (n + 1))

end

end A294932.P6320642590264103663

/-! ## A294932.P11093080453954908876

`∏{e}[n+1, A001221(A000032(A000032(#))+2)]`
-/

namespace A294932.P11093080453954908876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (A000032 (A000032 (Nat.factorization (f1 n) p)).toNat + 2).toNat

end

end A294932.P11093080453954908876

/-! ## A294932.P7635911283860099473

`∏{e}[A331580(n+1), A156267(#)]`
-/

namespace A294932.P7635911283860099473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A156267 (Nat.factorization (f1 n).natAbs p)

end

end A294932.P7635911283860099473

/-! ## A294932.P14407180150480606761

`A168533(A066060(n+1))`
-/

namespace A294932.P14407180150480606761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168533 (A066060 (n + 1)).toNat

end

end A294932.P14407180150480606761

/-! ## A294932.P15160640268227939078

`A109870(A256688(n+1))`
-/

namespace A294932.P15160640268227939078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109870 (A256688 (n + 1)).toNat

end

end A294932.P15160640268227939078

/-!
# A294933: Compound filter related to base-3 expansion of the exponents in prime factorization of n: a(n) = P(A294932(n), A294931(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A294933, there is no canonical definition to state claims against.
-/

/-! ## A294933.P11260034177522271814

`1/2*(2+(A294932(n+1)+A294931(n+1))²-A294932(n+1)-3*A294931(n+1))`
-/

namespace A294933.P11260034177522271814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + ((A294932 (n + 1) + A294931 (n + 1)) ^ 2 - A294932 (n + 1)) - 3 * A294931 (n + 1) : ℚ)

end

end A294933.P11260034177522271814

/-! ## A294933.P16511602207530443601

`A115320(A046523(n+1)+1)`
-/

namespace A294933.P16511602207530443601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115320 (A046523 (n + 1) + 1).toNat

end

end A294933.P16511602207530443601

/-! ## A294933.P4267498788655269412

`A115320(A071364(n+1)+1)`
-/

namespace A294933.P4267498788655269412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115320 (A071364 (n + 1) + 1).toNat

end

end A294933.P4267498788655269412

/-! ## A294933.P2460448631598182245

`A015996(n+1)%A053834(A274906(n+1))`
-/

namespace A294933.P2460448631598182245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015996 (n + 1)) (A053834 (A274906 (n + 1)).toNat)

end

end A294933.P2460448631598182245

/-!
# A294934: Characteristic function for deficient numbers (A005100): a(n) = 1 if A001065(n) < n, 0 otherwise.

The programs for A294934, the canonical program `A294934.P6887900065844113771` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294934 has offset 1).

The definition of A294934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294934.P10076586354595761288

`1-A294936(n+1)`
-/

namespace A294934.P10076586354595761288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294936 (n + 1)

end

end A294934.P10076586354595761288

namespace A294934

/-- `1-A294936(n+1)` -/
def P10076586354595761288.Spec : Prop :=
  ∀ n, P10076586354595761288.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P6887900065844113771

`1-floor(∑{d}[n+1, 1/(2*#)])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294934

/-- `1-floor(∑{d}[n+1, 1/(2*#)])` -/
def P6887900065844113771.Spec : Prop :=
  ∀ n, P6887900065844113771.a n = A294934 (n + 1)

theorem P6887900065844113771.correct : P6887900065844113771.Spec := by
  intro n
  simp only [A294934, Nat.add_sub_cancel]

end A294934

/-! ## A294934.P2868811145271040558

`round((n+1)/(∑{d}[n+1, #]+1))`
-/

namespace A294934.P2868811145271040558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℚ))

end

end A294934.P2868811145271040558

namespace A294934

/-- `round((n+1)/(∑{d}[n+1, #]+1))` -/
def P2868811145271040558.Spec : Prop :=
  ∀ n, P2868811145271040558.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P16584620450483905273

`floor((2*n+1)/∑{d}[n+1, #])`
-/

namespace A294934.P16584620450483905273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A294934.P16584620450483905273

namespace A294934

/-- `floor((2*n+1)/∑{d}[n+1, #])` -/
def P16584620450483905273.Spec : Prop :=
  ∀ n, P16584620450483905273.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P6252647802415423017

`char[lt[∑{d}[n+1, #]-Δ[n²], 1]]`
-/

namespace A294934.P6252647802415423017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f5 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294934.P6252647802415423017

namespace A294934

/-- `char[lt[∑{d}[n+1, #]-Δ[n²], 1]]` -/
def P6252647802415423017.Spec : Prop :=
  ∀ n, (P6252647802415423017.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P12088561060233284516

`2-ceil(∑{d}[n+1, #/(2*n+1)])`
-/

namespace A294934.P12088561060233284516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A294934.P12088561060233284516

namespace A294934

/-- `2-ceil(∑{d}[n+1, #/(2*n+1)])` -/
def P12088561060233284516.Spec : Prop :=
  ∀ n, P12088561060233284516.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P2342596620629490922

`ceil((2*n+1)/∑{d}[n+1, -#])²`
-/

namespace A294934.P2342596620629490922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) : ℤ) : ℚ)⌉ ^ 2

end

end A294934.P2342596620629490922

namespace A294934

/-- `ceil((2*n+1)/∑{d}[n+1, -#])²` -/
def P2342596620629490922.Spec : Prop :=
  ∀ n, P2342596620629490922.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P16112250409249833663

`(floor(log2(∑{d}[n+1, #]/(n+1)))-1)²`
-/

namespace A294934.P16112250409249833663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.logb 2 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)⌋ - 1) ^ 2

end

end A294934.P16112250409249833663

namespace A294934

/-- `(floor(log2(∑{d}[n+1, #]/(n+1)))-1)²` -/
def P16112250409249833663.Spec : Prop :=
  ∀ n, P16112250409249833663.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P16164445089403854556

`char[A005100(n+1)-1]`
-/

namespace A294934.P16164445089403854556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294934.P16164445089403854556

namespace A294934

/-- `char[A005100(n+1)-1]` -/
def P16164445089403854556.Spec : Prop :=
  ∀ n, (P16164445089403854556.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P2911858222196553992

`char[lt[A341620(n+1), 1]]`
-/

namespace A294934.P2911858222196553992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294934.P2911858222196553992

namespace A294934

/-- `char[lt[A341620(n+1), 1]]` -/
def P2911858222196553992.Spec : Prop :=
  ∀ n, (P2911858222196553992.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P17746554606081108221

`round(acot(exp(A060862(n+1))))`
-/

namespace A294934.P17746554606081108221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Real.exp (A060862 (n + 1) : ℝ)))

end

end A294934.P17746554606081108221

namespace A294934

/-- `round(acot(exp(A060862(n+1))))` -/
def P17746554606081108221.Spec : Prop :=
  ∀ n, P17746554606081108221.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P6113063779021631196

`C(2, A378604(n+1)+1)`
-/

namespace A294934.P6113063779021631196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A378604 (n + 1) + 1).toNat

end

end A294934.P6113063779021631196

namespace A294934

/-- `C(2, A378604(n+1)+1)` -/
def P6113063779021631196.Spec : Prop :=
  ∀ n, (P6113063779021631196.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P12259612114569352654

`and(2, A082551(n+1))/2`
-/

namespace A294934.P12259612114569352654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A082551 (n + 1)) : ℚ) / 2

end

end A294934.P12259612114569352654

namespace A294934

/-- `and(2, A082551(n+1))/2` -/
def P12259612114569352654.Spec : Prop :=
  ∀ n, P12259612114569352654.a n = (A294934 (n + 1) : ℚ)

end A294934

/-! ## A294934.P4733934598846067366

`C(A125746(n+1), n+1)`
-/

namespace A294934.P4733934598846067366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A125746 (n + 1)).toNat (n + 1)

end

end A294934.P4733934598846067366

namespace A294934

/-- `C(A125746(n+1), n+1)` -/
def P4733934598846067366.Spec : Prop :=
  ∀ n, (P4733934598846067366.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P10586083063253663249

`C(A387717(n+1), n+1)`
-/

namespace A294934.P10586083063253663249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A387717 (n + 1)).toNat (n + 1)

end

end A294934.P10586083063253663249

namespace A294934

/-- `C(A387717(n+1), n+1)` -/
def P10586083063253663249.Spec : Prop :=
  ∀ n, (P10586083063253663249.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P6661051743959118098

`char[comp[A023196(n+1)-1]]`
-/

namespace A294934.P6661051743959118098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294934.P6661051743959118098

namespace A294934

/-- `char[comp[A023196(n+1)-1]]` -/
def P6661051743959118098.Spec : Prop :=
  ∀ n, (P6661051743959118098.a n : ℤ) = A294934 (n + 1)

end A294934

/-! ## A294934.P17792395304644923807

`floor(Δ[n²]/A000203(n+1))`
-/

namespace A294934.P17792395304644923807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A294934.P17792395304644923807

namespace A294934

/-- `floor(Δ[n²]/A000203(n+1))` -/
def P17792395304644923807.Spec : Prop :=
  ∀ n, P17792395304644923807.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P13289134239006466440

`1-A001222(floor(∑{d}[n+1, 1/#]))`
-/

namespace A294934.P13289134239006466440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)⌋.toNat

end

end A294934.P13289134239006466440

namespace A294934

/-- `1-A001222(floor(∑{d}[n+1, 1/#]))` -/
def P13289134239006466440.Spec : Prop :=
  ∀ n, P13289134239006466440.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P6640396927747879954

`floor((2*n+1)*1/A000203(C(n+1, n)))`
-/

namespace A294934.P6640396927747879954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * (1 / (A000203 (Nat.choose (n + 1) n) : ℚ))⌋

end

end A294934.P6640396927747879954

namespace A294934

/-- `floor((2*n+1)*1/A000203(C(n+1, n)))` -/
def P6640396927747879954.Spec : Prop :=
  ∀ n, P6640396927747879954.a n = A294934 (n + 1)

end A294934

/-! ## A294934.P1152147940181128331

`and(1, floor((2*n+1)/A000203(2*n+1-n)))`
-/

namespace A294934.P1152147940181128331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(2 * n + 1 : ℚ) / (A000203 (2 * n + 1 - n) : ℚ)⌋

end

end A294934.P1152147940181128331

namespace A294934

/-- `and(1, floor((2*n+1)/A000203(2*n+1-n)))` -/
def P1152147940181128331.Spec : Prop :=
  ∀ n, P1152147940181128331.a n = A294934 (n + 1)

end A294934

/-!
# A294935: Characteristic function for nonabundant numbers (A263837): a(n) = 1 if A001065(n) <= n, 0 otherwise.

The programs for A294935, the canonical program `A294935.P4767353041558056281` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294935 has offset 1).

The definition of A294935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294935.P16224516195511684951

`1-A294937(n+1)`
-/

namespace A294935.P16224516195511684951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294937 (n + 1)

end

end A294935.P16224516195511684951

namespace A294935

/-- `1-A294937(n+1)` -/
def P16224516195511684951.Spec : Prop :=
  ∀ n, P16224516195511684951.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P4767353041558056281

`round(1/∑{d}[n+1, 1/#])`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294935

/-- `round(1/∑{d}[n+1, 1/#])` -/
def P4767353041558056281.Spec : Prop :=
  ∀ n, P4767353041558056281.a n = A294935 (n + 1)

theorem P4767353041558056281.correct : P4767353041558056281.Spec := by
  intro n
  simp only [A294935, Nat.add_sub_cancel]

end A294935

/-! ## A294935.P15080903469654982695

`char[lt[∑{d}[n+1, #]-Δ[n²], 2]]`
-/

namespace A294935.P15080903469654982695
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f5 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294935.P15080903469654982695

namespace A294935

/-- `char[lt[∑{d}[n+1, #]-Δ[n²], 2]]` -/
def P15080903469654982695.Spec : Prop :=
  ∀ n, (P15080903469654982695.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P5688208781638514103

`C(2, A187795(n+1))`
-/

namespace A294935.P5688208781638514103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A187795 (n + 1)).toNat

end

end A294935.P5688208781638514103

namespace A294935

/-- `C(2, A187795(n+1))` -/
def P5688208781638514103.Spec : Prop :=
  ∀ n, (P5688208781638514103.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P16200308487693397920

`abs(1-A060862(n+1))`
-/

namespace A294935.P16200308487693397920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A060862 (n + 1)|

end

end A294935.P16200308487693397920

namespace A294935

/-- `abs(1-A060862(n+1))` -/
def P16200308487693397920.Spec : Prop :=
  ∀ n, P16200308487693397920.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P8398259837416618930

`char[eq[0, A080224(n+1)]]`
-/

namespace A294935.P8398259837416618930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294935.P8398259837416618930

namespace A294935

/-- `char[eq[0, A080224(n+1)]]` -/
def P8398259837416618930.Spec : Prop :=
  ∀ n, (P8398259837416618930.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P7618892629695315502

`C(2, A294890(n+1)+2)`
-/

namespace A294935.P7618892629695315502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A294890 (n + 1) + 2).toNat

end

end A294935.P7618892629695315502

namespace A294935

/-- `C(2, A294890(n+1)+2)` -/
def P7618892629695315502.Spec : Prop :=
  ∀ n, (P7618892629695315502.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P1499400719877541169

`C(n+1, A378647(n+1))`
-/

namespace A294935.P1499400719877541169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A378647 (n + 1)).toNat

end

end A294935.P1499400719877541169

namespace A294935

/-- `C(n+1, A378647(n+1))` -/
def P1499400719877541169.Spec : Prop :=
  ∀ n, (P1499400719877541169.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P5879395884272308620

`C(A378665(n+1), n+1)`
-/

namespace A294935.P5879395884272308620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A378665 (n + 1)).toNat (n + 1)

end

end A294935.P5879395884272308620

namespace A294935

/-- `C(A378665(n+1), n+1)` -/
def P5879395884272308620.Spec : Prop :=
  ∀ n, (P5879395884272308620.a n : ℤ) = A294935 (n + 1)

end A294935

/-! ## A294935.P14359678612339542984

`ceil(sin(1-A082551(n+1)))`
-/

namespace A294935.P14359678612339542984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (1 - A082551 (n + 1) : ℝ)⌉

end

end A294935.P14359678612339542984

namespace A294935

/-- `ceil(sin(1-A082551(n+1)))` -/
def P14359678612339542984.Spec : Prop :=
  ∀ n, P14359678612339542984.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P2131892920963447714

`ceil(acot(A033879(n+1)+1))`
-/

namespace A294935.P2131892920963447714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A033879 (n + 1) + 1 : ℝ)⌉

end

end A294935.P2131892920963447714

namespace A294935

/-- `ceil(acot(A033879(n+1)+1))` -/
def P2131892920963447714.Spec : Prop :=
  ∀ n, P2131892920963447714.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P4841853845460130916

`ceil(acot(1-A033880(n+1)))`
-/

namespace A294935.P4841853845460130916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (1 - A033880 (n + 1) : ℝ)⌉

end

end A294935.P4841853845460130916

namespace A294935

/-- `ceil(acot(1-A033880(n+1)))` -/
def P4841853845460130916.Spec : Prop :=
  ∀ n, P4841853845460130916.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P9292750178475900465

`round((n+1)/A000203(n+1))`
-/

namespace A294935.P9292750178475900465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000203 (n + 1) : ℚ))

end

end A294935.P9292750178475900465

namespace A294935

/-- `round((n+1)/A000203(n+1))` -/
def P9292750178475900465.Spec : Prop :=
  ∀ n, P9292750178475900465.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P5567312424336956192

`A000007(A080224(n+1))`
-/

namespace A294935.P5567312424336956192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A080224 (n + 1)).toNat

end

end A294935.P5567312424336956192

namespace A294935

/-- `A000007(A080224(n+1))` -/
def P5567312424336956192.Spec : Prop :=
  ∀ n, P5567312424336956192.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P4943218809651886675

`A014100(A073348(n+1))`
-/

namespace A294935.P4943218809651886675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014100 (A073348 (n + 1)).toNat

end

end A294935.P4943218809651886675

namespace A294935

/-- `A014100(A073348(n+1))` -/
def P4943218809651886675.Spec : Prop :=
  ∀ n, P4943218809651886675.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P14978307461215949647

`A000007(A089371(n+1))`
-/

namespace A294935.P14978307461215949647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A089371 (n + 1)).toNat

end

end A294935.P14978307461215949647

namespace A294935

/-- `A000007(A089371(n+1))` -/
def P14978307461215949647.Spec : Prop :=
  ∀ n, P14978307461215949647.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P15618057604037708097

`A000007(A294890(n+1))`
-/

namespace A294935.P15618057604037708097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A294890 (n + 1)).toNat

end

end A294935.P15618057604037708097

namespace A294935

/-- `A000007(A294890(n+1))` -/
def P15618057604037708097.Spec : Prop :=
  ∀ n, P15618057604037708097.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P2390439196762249958

`A000007(A341508(n+1))`
-/

namespace A294935.P2390439196762249958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A341508 (n + 1)).toNat

end

end A294935.P2390439196762249958

namespace A294935

/-- `A000007(A341508(n+1))` -/
def P2390439196762249958.Spec : Prop :=
  ∀ n, P2390439196762249958.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P2119914756089157951

`A286852(A080224(n+1)²)`
-/

namespace A294935.P2119914756089157951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A080224 (n + 1) ^ 2).toNat

end

end A294935.P2119914756089157951

namespace A294935

/-- `A286852(A080224(n+1)²)` -/
def P2119914756089157951.Spec : Prop :=
  ∀ n, P2119914756089157951.a n = A294935 (n + 1)

end A294935

/-! ## A294935.P14605217993391473569

`A036987(2*A080224(n+1))`
-/

namespace A294935.P14605217993391473569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * A080224 (n + 1)).toNat

end

end A294935.P14605217993391473569

namespace A294935

/-- `A036987(2*A080224(n+1))` -/
def P14605217993391473569.Spec : Prop :=
  ∀ n, P14605217993391473569.a n = A294935 (n + 1)

end A294935

/-!
# A294936: Characteristic function for nondeficient numbers (A023196): a(n) = 1 if A001065(n) >= n, 0 otherwise.

The programs for A294936, the canonical program `A294936.P10769920400480544505` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294936 has offset 1).

The definition of A294936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294934, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294936.P10769920400480544505

`1-A294934(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294936

/-- `1-A294934(n+1)` -/
def P10769920400480544505.Spec : Prop :=
  ∀ n, P10769920400480544505.a n = A294936 (n + 1)

theorem P10769920400480544505.correct : P10769920400480544505.Spec := by
  intro n
  simp only [A294936, Nat.add_sub_cancel]

end A294936

/-! ## A294936.P13996615914099103422

`floor(∑{d}[n+1, 1/(2*#)])`
-/

namespace A294936.P13996615914099103422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (2 * d : ℚ)⌋

end

end A294936.P13996615914099103422

namespace A294936

/-- `floor(∑{d}[n+1, 1/(2*#)])` -/
def P13996615914099103422.Spec : Prop :=
  ∀ n, P13996615914099103422.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P16235879741526182016

`floor(∑{d}[n+1, 1/#]/2)`
-/

namespace A294936.P16235879741526182016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)) / 2⌋

end

end A294936.P16235879741526182016

namespace A294936

/-- `floor(∑{d}[n+1, 1/#]/2)` -/
def P16235879741526182016.Spec : Prop :=
  ∀ n, P16235879741526182016.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P1617870465958561451

`round(∑{d}[n+1, 1/(4*#)])`
-/

namespace A294936.P1617870465958561451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), 1 / (4 * d : ℚ))

end

end A294936.P1617870465958561451

namespace A294936

/-- `round(∑{d}[n+1, 1/(4*#)])` -/
def P1617870465958561451.Spec : Prop :=
  ∀ n, P1617870465958561451.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P2555167887947490763

`round(∑{d}[n+1, 1/#]/4)`
-/

namespace A294936.P2555167887947490763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)) / 4)

end

end A294936.P2555167887947490763

namespace A294936

/-- `round(∑{d}[n+1, 1/#]/4)` -/
def P2555167887947490763.Spec : Prop :=
  ∀ n, P2555167887947490763.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P6849508436384325721

`char[lt[2*n+1, ∑{d}[n+1, #]]]`
-/

namespace A294936.P6849508436384325721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294936.P6849508436384325721

namespace A294936

/-- `char[lt[2*n+1, ∑{d}[n+1, #]]]` -/
def P6849508436384325721.Spec : Prop :=
  ∀ n, (P6849508436384325721.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P14004981985628175967

`ceil(∑{d}[n+1, #/(2*n+1)])-1`
-/

namespace A294936.P14004981985628175967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (2 * n + 1 : ℚ)⌉ - 1

end

end A294936.P14004981985628175967

namespace A294936

/-- `ceil(∑{d}[n+1, #/(2*n+1)])-1` -/
def P14004981985628175967.Spec : Prop :=
  ∀ n, P14004981985628175967.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P5082153091863912164

`C((2*n+1)%∑{d}[n+1, #], 2*n+1)`
-/

namespace A294936.P5082153091863912164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n + 1) % (∑ d ∈ Nat.divisors (f1 n), d)) (2 * n + 1)

end

end A294936.P5082153091863912164

namespace A294936

/-- `C((2*n+1)%∑{d}[n+1, #], 2*n+1)` -/
def P5082153091863912164.Spec : Prop :=
  ∀ n, (P5082153091863912164.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P16404343327304638

`floor(sqrt(A060862(n+1)))`
-/

namespace A294936.P16404343327304638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A060862 (n + 1))

end

end A294936.P16404343327304638

namespace A294936

/-- `floor(sqrt(A060862(n+1)))` -/
def P16404343327304638.Spec : Prop :=
  ∀ n, P16404343327304638.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P1446874752897107269

`char[A023196(n+1)-1]`
-/

namespace A294936.P1446874752897107269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294936.P1446874752897107269

namespace A294936

/-- `char[A023196(n+1)-1]` -/
def P1446874752897107269.Spec : Prop :=
  ∀ n, (P1446874752897107269.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P7299775908039181219

`char[lt[n, A001065(n+1)]]`
-/

namespace A294936.P7299775908039181219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294936.P7299775908039181219

namespace A294936

/-- `char[lt[n, A001065(n+1)]]` -/
def P7299775908039181219.Spec : Prop :=
  ∀ n, (P7299775908039181219.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P6746258487626288903

`ceil(acot(acot(A082551(n+1))))`
-/

namespace A294936.P6746258487626288903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (A082551 (n + 1) : ℝ))⌉

end

end A294936.P6746258487626288903

namespace A294936

/-- `ceil(acot(acot(A082551(n+1))))` -/
def P6746258487626288903.Spec : Prop :=
  ∀ n, P6746258487626288903.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P1356024754942802308

`(n+2)%A387718(n+1)`
-/

namespace A294936.P1356024754942802308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A387718 (n + 1))

end

end A294936.P1356024754942802308

namespace A294936

/-- `(n+2)%A387718(n+1)` -/
def P1356024754942802308.Spec : Prop :=
  ∀ n, P1356024754942802308.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P3680004551271573461

`val(n+1, A254572(n+1))`
-/

namespace A294936.P3680004551271573461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A254572 (n + 1)).toNat

end

end A294936.P3680004551271573461

namespace A294936

/-- `val(n+1, A254572(n+1))` -/
def P3680004551271573461.Spec : Prop :=
  ∀ n, (P3680004551271573461.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P9843848572254992826

`ceil(acot(A033880(n+1))/2)`
-/

namespace A294936.P9843848572254992826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A033880 (n + 1) : ℝ) / 2⌉

end

end A294936.P9843848572254992826

namespace A294936

/-- `ceil(acot(A033880(n+1))/2)` -/
def P9843848572254992826.Spec : Prop :=
  ∀ n, P9843848572254992826.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P11577083762537451842

`C(n, C(A125746(n+1), n))`
-/

namespace A294936.P11577083762537451842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A125746 (n + 1)).toNat n)

end

end A294936.P11577083762537451842

namespace A294936

/-- `C(n, C(A125746(n+1), n))` -/
def P11577083762537451842.Spec : Prop :=
  ∀ n, (P11577083762537451842.a n : ℤ) = A294936 (n + 1)

end A294936

/-! ## A294936.P10919702649044419564

`A001221(floor(∑{d}[n+1, 1/#]))`
-/

namespace A294936.P10919702649044419564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)⌋.toNat

end

end A294936.P10919702649044419564

namespace A294936

/-- `A001221(floor(∑{d}[n+1, 1/#]))` -/
def P10919702649044419564.Spec : Prop :=
  ∀ n, P10919702649044419564.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P16734625965026481110

`A001222(floor(∑{d}[n+1, 1/#]))`
-/

namespace A294936.P16734625965026481110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)⌋.toNat

end

end A294936.P16734625965026481110

namespace A294936

/-- `A001222(floor(∑{d}[n+1, 1/#]))` -/
def P16734625965026481110.Spec : Prop :=
  ∀ n, P16734625965026481110.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P3706740738413904192

`floor(log2(A000203(n+1)/(n+1)))`
-/

namespace A294936.P3706740738413904192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A000203 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A294936.P3706740738413904192

namespace A294936

/-- `floor(log2(A000203(n+1)/(n+1)))` -/
def P3706740738413904192.Spec : Prop :=
  ∀ n, P3706740738413904192.a n = A294936 (n + 1)

end A294936

/-! ## A294936.P4665641238200197597

`A057427(A341620(n+1))`
-/

namespace A294936.P4665641238200197597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A341620 (n + 1)).toNat

end

end A294936.P4665641238200197597

namespace A294936

/-- `A057427(A341620(n+1))` -/
def P4665641238200197597.Spec : Prop :=
  ∀ n, P4665641238200197597.a n = A294936 (n + 1)

end A294936

/-!
# A294937: Characteristic function for abundant numbers (A005101): a(n) = 1 if A001065(n) > n, 0 otherwise.

The programs for A294937, the canonical program `A294937.P16064831210993750001` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294937 has offset 1).

The definition of A294937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294937.P16064831210993750001

`1-A294935(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294937

/-- `1-A294935(n+1)` -/
def P16064831210993750001.Spec : Prop :=
  ∀ n, P16064831210993750001.a n = A294937 (n + 1)

theorem P16064831210993750001.correct : P16064831210993750001.Spec := by
  intro n
  simp only [A294937, Nat.add_sub_cancel]

end A294937

/-! ## A294937.P10275086438446411102

`1-round(1/∑{d}[n+1, 1/#])`
-/

namespace A294937.P10275086438446411102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)))

end

end A294937.P10275086438446411102

namespace A294937

/-- `1-round(1/∑{d}[n+1, 1/#])` -/
def P10275086438446411102.Spec : Prop :=
  ∀ n, P10275086438446411102.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P13880855056916803426

`round(∑{d}[n+1, #/(4*(n+2))])`
-/

namespace A294937.P13880855056916803426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (4 * (n + 2) : ℚ))

end

end A294937.P13880855056916803426

namespace A294937

/-- `round(∑{d}[n+1, #/(4*(n+2))])` -/
def P13880855056916803426.Spec : Prop :=
  ∀ n, P13880855056916803426.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P11003303545786235683

`round(∑{d}[n+1, #/4]/(n+2))`
-/

namespace A294937.P11003303545786235683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 4) / (n + 2 : ℚ))

end

end A294937.P11003303545786235683

namespace A294937

/-- `round(∑{d}[n+1, #/4]/(n+2))` -/
def P11003303545786235683.Spec : Prop :=
  ∀ n, P11003303545786235683.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P14519804980432654258

`char[lt[1, ∑{d}[n+1, #]-Δ[n²]]]`
-/

namespace A294937.P14519804980432654258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ) - ((f5 (n + 1) : ℤ) - (f5 n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294937.P14519804980432654258

namespace A294937

/-- `char[lt[1, ∑{d}[n+1, #]-Δ[n²]]]` -/
def P14519804980432654258.Spec : Prop :=
  ∀ n, (P14519804980432654258.a n : ℤ) = A294937 (n + 1)

end A294937

/-! ## A294937.P5130241699614946532

`A060862(n+1)%2`
-/

namespace A294937.P5130241699614946532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060862 (n + 1)) 2

end

end A294937.P5130241699614946532

namespace A294937

/-- `A060862(n+1)%2` -/
def P5130241699614946532.Spec : Prop :=
  ∀ n, P5130241699614946532.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P9890171314732046197

`ceil(sin(A082551(n+1)))`
-/

namespace A294937.P9890171314732046197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A082551 (n + 1) : ℝ)⌉

end

end A294937.P9890171314732046197

namespace A294937

/-- `ceil(sin(A082551(n+1)))` -/
def P9890171314732046197.Spec : Prop :=
  ∀ n, P9890171314732046197.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P9501849657070926284

`char[A005101(n+1)-1]`
-/

namespace A294937.P9501849657070926284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294937.P9501849657070926284

namespace A294937

/-- `char[A005101(n+1)-1]` -/
def P9501849657070926284.Spec : Prop :=
  ∀ n, (P9501849657070926284.a n : ℤ) = A294937 (n + 1)

end A294937

/-! ## A294937.P15159410139364593595

`char[lt[0, A080224(n+1)]]`
-/

namespace A294937.P15159410139364593595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A294937.P15159410139364593595

namespace A294937

/-- `char[lt[0, A080224(n+1)]]` -/
def P15159410139364593595.Spec : Prop :=
  ∀ n, (P15159410139364593595.a n : ℤ) = A294937 (n + 1)

end A294937

/-! ## A294937.P7800838139887251177

`∏{d}[A341621(n+1), log(#)]`
-/

namespace A294937.P7800838139887251177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A294937.P7800838139887251177

namespace A294937

/-- `∏{d}[A341621(n+1), log(#)]` -/
def P7800838139887251177.Spec : Prop :=
  ∀ n, P7800838139887251177.a n = (A294937 (n + 1) : ℝ)

end A294937

/-! ## A294937.P93210004946831069

`1-C(2, A187795(n+1))`
-/

namespace A294937.P93210004946831069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A187795 (n + 1)).toNat : ℤ)

end

end A294937.P93210004946831069

namespace A294937

/-- `1-C(2, A187795(n+1))` -/
def P93210004946831069.Spec : Prop :=
  ∀ n, P93210004946831069.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P11766643892501424828

`(n+2)%A378660(n+1)`
-/

namespace A294937.P11766643892501424828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A378660 (n + 1))

end

end A294937.P11766643892501424828

namespace A294937

/-- `(n+2)%A378660(n+1)` -/
def P11766643892501424828.Spec : Prop :=
  ∀ n, P11766643892501424828.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P1924242808720808404

`val(n+1, A064162(n+1))`
-/

namespace A294937.P1924242808720808404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A064162 (n + 1)).toNat

end

end A294937.P1924242808720808404

namespace A294937

/-- `val(n+1, A064162(n+1))` -/
def P1924242808720808404.Spec : Prop :=
  ∀ n, (P1924242808720808404.a n : ℤ) = A294937 (n + 1)

end A294937

/-! ## A294937.P17397193633778105572

`ceil(acot(A033880(n+1)-1))`
-/

namespace A294937.P17397193633778105572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A033880 (n + 1) - 1 : ℝ)⌉

end

end A294937.P17397193633778105572

namespace A294937

/-- `ceil(acot(A033880(n+1)-1))` -/
def P17397193633778105572.Spec : Prop :=
  ∀ n, P17397193633778105572.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P8670399489411514777

`C(n, C(A378665(n+1), n))`
-/

namespace A294937.P8670399489411514777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A378665 (n + 1)).toNat n)

end

end A294937.P8670399489411514777

namespace A294937

/-- `C(n, C(A378665(n+1), n))` -/
def P8670399489411514777.Spec : Prop :=
  ∀ n, (P8670399489411514777.a n : ℤ) = A294937 (n + 1)

end A294937

/-! ## A294937.P7831685735008302314

`1-round((n+1)/A000203(n+1))`
-/

namespace A294937.P7831685735008302314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000203 (n + 1) : ℚ))

end

end A294937.P7831685735008302314

namespace A294937

/-- `1-round((n+1)/A000203(n+1))` -/
def P7831685735008302314.Spec : Prop :=
  ∀ n, P7831685735008302314.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P12956716493653461184

`floor(A000203(C(n+1, n))/(2*(n+2)))`
-/

namespace A294937.P12956716493653461184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (Nat.choose (n + 1) n) : ℚ) / (2 * (n + 2) : ℚ)⌋

end

end A294937.P12956716493653461184

namespace A294937

/-- `floor(A000203(C(n+1, n))/(2*(n+2)))` -/
def P12956716493653461184.Spec : Prop :=
  ∀ n, P12956716493653461184.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P4627348670150986970

`floor(A000203(2*n+1-n)/(2*(n+2)))`
-/

namespace A294937.P4627348670150986970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (2 * n + 1 - n) : ℚ) / (2 * (n + 2) : ℚ)⌋

end

end A294937.P4627348670150986970

namespace A294937

/-- `floor(A000203(2*n+1-n)/(2*(n+2)))` -/
def P4627348670150986970.Spec : Prop :=
  ∀ n, P4627348670150986970.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P18161712791759661878

`A089309(A089371(n+1)²)`
-/

namespace A294937.P18161712791759661878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A089371 (n + 1) ^ 2).toNat

end

end A294937.P18161712791759661878

namespace A294937

/-- `A089309(A089371(n+1)²)` -/
def P18161712791759661878.Spec : Prop :=
  ∀ n, P18161712791759661878.a n = A294937 (n + 1)

end A294937

/-! ## A294937.P9028903343269551755

`A323022(A080224(n+1)+1)`
-/

namespace A294937.P9028903343269551755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A080224 (n + 1) + 1).toNat

end

end A294937.P9028903343269551755

namespace A294937

/-- `A323022(A080224(n+1)+1)` -/
def P9028903343269551755.Spec : Prop :=
  ∀ n, P9028903343269551755.a n = A294937 (n + 1)

end A294937

/-!
# A294939: Numbers k such that (8*10^k + 13)/3 is prime.

The programs for A294939, there is no canonical definition to state claims against.
-/

/-! ## A294939.P1091619137725541150

`record[and(A098978(n+2), A099006(n+1))]`
-/

namespace A294939.P1091619137725541150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098978 (n + 2)) (A099006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294939.P1091619137725541150

/-! ## A294939.P2269508924225330804

`eq[A099375(A344635(n)), A344651(n)]`
-/

namespace A294939.P2269508924225330804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A344635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294939.P2269508924225330804

/-!
# A294940: Numbers k such that (14*10^k + 229)/9 is prime.

The programs for A294940, there is no canonical definition to state claims against.
-/

/-! ## A294940.P13826362671334949782

`A325363(A037403(n+1))`
-/

namespace A294940.P13826362671334949782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A037403 (n + 1)).toNat

end

end A294940.P13826362671334949782

/-! ## A294940.P5620782765610770438

`A325363(A037439(n+1))`
-/

namespace A294940.P5620782765610770438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A037439 (n + 1)).toNat

end

end A294940.P5620782765610770438

/-! ## A294940.P5770844831096832505

`∩[A228939(n+1), A048308(n)]`
-/

namespace A294940.P5770844831096832505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294940.P5770844831096832505

/-!
# A294944: Numbers k such that (76*10^k + 113)/9 is prime.

The programs for A294944, there is no canonical definition to state claims against.
-/

/-! ## A294944.P7098424090758404896

`A101881(eq[1, A179009(n)])`
-/

namespace A294944.P7098424090758404896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294944.P7098424090758404896

/-! ## A294944.P9888664026630306109

`A101881(lt[A179009(n), 2])`
-/

namespace A294944.P9888664026630306109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A294944.P9888664026630306109

/-! ## A294944.P5693838183189087223

`A004773(ceil(sqrt(A239661(n+1))))`
-/

namespace A294944.P5693838183189087223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 ⌈Real.sqrt (A239661 (n + 1) : ℝ)⌉.toNat

end

end A294944.P5693838183189087223

/-! ## A294944.P13767337460090042578

`∩[A023745(n+1), A396000(n+1)]`
-/

namespace A294944.P13767337460090042578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294944.P13767337460090042578

/-! ## A294944.P665839108420878073

`lt[A221351(n+2), char[A023745(n+2)]]`
-/

namespace A294944.P665839108420878073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221351 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294944.P665839108420878073

/-!
# A294946: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of exp(Sum_{j>0} sigma_k(j)*x^j/j) in powers of x.

The programs for A294946, there is no canonical definition to state claims against.
-/

/-! ## A294946.P16252808511760783275

`A065708(A293796(n))`
-/

namespace A294946.P16252808511760783275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A293796 n).toNat

end

end A294946.P16252808511760783275

/-! ## A294946.P7854706147789372296

`A004438(A293796(n)-A037860(n+1))`
-/

namespace A294946.P7854706147789372296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A293796 n - A037860 (n + 1)).toNat

end

end A294946.P7854706147789372296

/-! ## A294946.P4020629905165289703

`A133137(A293796(n)-A037860(n+1))`
-/

namespace A294946.P4020629905165289703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A293796 n - A037860 (n + 1)).toNat

end

end A294946.P4020629905165289703

/-! ## A294946.P6234127634695315092

`A004438(xor(A037860(n+1), A293796(n)))`
-/

namespace A294946.P6234127634695315092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (Int.xor (A037860 (n + 1)) (A293796 n)).toNat

end

end A294946.P6234127634695315092

/-! ## A294946.P3406755446429850924

`A133137(xor(A037860(n+1), A293796(n)))`
-/

namespace A294946.P3406755446429850924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (Int.xor (A037860 (n + 1)) (A293796 n)).toNat

end

end A294946.P3406755446429850924

/-!
# A294947: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of exp(-Sum_{j>0} sigma_k(j)*x^j/j) in powers of x.

The programs for A294947, there is no canonical definition to state claims against.
-/

/-! ## A294947.P9318782636654444482

`A294587(n)*A322356(A213246(n+3))`
-/

namespace A294947.P9318782636654444482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 n * A322356 (A213246 (n + 3)).toNat

end

end A294947.P9318782636654444482

/-! ## A294947.P16324963359047140041

`A161974(A139526(n+2))-A203647(n+1)`
-/

namespace A294947.P16324963359047140041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161974 (A139526 (n + 2)).toNat - A203647 (n + 1)

end

end A294947.P16324963359047140041

/-! ## A294947.P16350417956437065011

`A162641(A214513(3*n+4))-A221683(n+1)`
-/

namespace A294947.P16350417956437065011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A214513 (3 * n + 4)).toNat - A221683 (n + 1)

end

end A294947.P16350417956437065011

/-!
# A294948: Expansion of Product_{n>=1} (1 - n^n*x^n)^(1/n).

The programs for A294948, there is no canonical definition to state claims against.
-/

/-! ## A294948.P12724596122862322061

`A294947(∑[n]+n)`
-/

namespace A294948.P12724596122862322061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294947 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A294948.P12724596122862322061

/-! ## A294948.P12099643375540545843

`A294947(n*(n+3)/2)+n-∑{digits}[n, #]`
-/

namespace A294948.P12099643375540545843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294947 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A294948.P12099643375540545843

/-! ## A294948.P12994601240830124830

`and(-1, A294947(A000096(n)))`
-/

namespace A294948.P12994601240830124830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A294947 (A000096 n).toNat)

end

end A294948.P12994601240830124830

/-! ## A294948.P10698303915164123837

`A295884(n+1)+A294947(n*(n+3)/2)`
-/

namespace A294948.P10698303915164123837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1) + A294947 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat

end

end A294948.P10698303915164123837

/-! ## A294948.P4298983330469169643

`A294947(A000096(n))+A025439(n)`
-/

namespace A294948.P4298983330469169643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294947 (A000096 n).toNat + A025439 n

end

end A294948.P4298983330469169643

/-!
# A294950: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1-j^(k*j)*x^j)^j in powers of x.

The programs for A294950, there is no canonical definition to state claims against.
-/

/-! ## A294950.P15479503472424241106

`A294609(n)-A011734(A156953(n))`
-/

namespace A294950.P15479503472424241106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n - A011734 (A156953 n).toNat

end

end A294950.P15479503472424241106

/-! ## A294950.P12976600555367961134

`A294609(n)-A133010(A135722(n))`
-/

namespace A294950.P12976600555367961134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n - A133010 (A135722 n).toNat

end

end A294950.P12976600555367961134

/-! ## A294950.P1850163777070072746

`A294609(n)-A185036(A122890(n))`
-/

namespace A294950.P1850163777070072746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n - A185036 (A122890 n).toNat

end

end A294950.P1850163777070072746

/-! ## A294950.P6296786228028370421

`A294609(n)-A016346(∑[A005378(n)])`
-/

namespace A294950.P6296786228028370421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n - A016346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294950.P6296786228028370421

/-! ## A294950.P1814592818598988526

`A294609(n)-A024155(A000204(n+1))`
-/

namespace A294950.P1814592818598988526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 n - A024155 (A000204 (n + 1)).toNat

end

end A294950.P1814592818598988526

/-!
# A294951: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(-Sum_{j>=1} sigma_k(j) * x^j).

The programs for A294951, there is no canonical definition to state claims against.
-/

/-! ## A294951.P12629245590826712625

`2*A358401(A193856(n))-1`
-/

namespace A294951.P12629245590826712625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358401 (A193856 n).toNat - 1

end

end A294951.P12629245590826712625

/-! ## A294951.P15249831952057265422

`1-A001222(A308674(n+1)²)`
-/

namespace A294951.P15249831952057265422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (A308674 (n + 1) ^ 2).toNat

end

end A294951.P15249831952057265422

/-! ## A294951.P6106243782727915110

`2*A343633(A194540(n+1))-1`
-/

namespace A294951.P6106243782727915110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343633 (A194540 (n + 1)).toNat - 1

end

end A294951.P6106243782727915110

/-!
# A294953: Expansion of Product_{k>=1} (1 - k^(2*k)*x^k)^k.

The programs for A294953, there is no canonical definition to state claims against.
-/

/-! ## A294953.P11907774261397058475

`A294808(∑[n+3])`
-/

namespace A294953.P11907774261397058475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294953.P11907774261397058475

/-! ## A294953.P9523522567746216383

`A294808(A141214(n))+A011734(n)`
-/

namespace A294953.P9523522567746216383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (A141214 n).toNat + A011734 n

end

end A294953.P9523522567746216383

/-! ## A294953.P12992767829059666904

`A294808(A141214(n))+A025439(n)`
-/

namespace A294953.P12992767829059666904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (A141214 n).toNat + A025439 n

end

end A294953.P12992767829059666904

/-! ## A294953.P17589877351562749167

`A294808(A141214(n))+A185037(n)`
-/

namespace A294953.P17589877351562749167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (A141214 n).toNat + A185037 n

end

end A294953.P17589877351562749167

/-! ## A294953.P6419805497548218645

`A020639(gcd(n, n+1))*A294808(A141214(n))`
-/

namespace A294953.P6419805497548218645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A294808 (A141214 n).toNat

end

end A294953.P6419805497548218645

/-!
# A294954: Expansion of Product_{k>=1} 1/(1 - k^(2*k)*x^k)^k.

The programs for A294954, there is no canonical definition to state claims against.
-/

/-! ## A294954.P7631835515083357575

`A294950(∑[n+3])`
-/

namespace A294954.P7631835515083357575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294954.P7631835515083357575

/-! ## A294954.P4433525696471159272

`A294950(A141214(n))+A011734(n)`
-/

namespace A294954.P4433525696471159272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A141214 n).toNat + A011734 n

end

end A294954.P4433525696471159272

/-! ## A294954.P3168025958004788171

`A294950(A141214(n))+A025439(n)`
-/

namespace A294954.P3168025958004788171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A141214 n).toNat + A025439 n

end

end A294954.P3168025958004788171

/-! ## A294954.P12032791029976706950

`A294950(A141214(n))+A185037(n)`
-/

namespace A294954.P12032791029976706950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A141214 n).toNat + A185037 n

end

end A294954.P12032791029976706950

/-! ## A294954.P15137787074650392166

`A294950(A141214(n))+A008683(4*(n+5))`
-/

namespace A294954.P15137787074650392166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A141214 n).toNat + A008683 (4 * (n + 5))

end

end A294954.P15137787074650392166

/-!
# A294955: a(n) = Sum_{d|n} d^(2*n+2).

The programs for A294955, there is no canonical definition to state claims against.
-/

/-! ## A294955.P17988001961366310477

`record[∑{d}[n-1, (#^n)²]]`
-/

namespace A294955.P17988001961366310477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294955.P17988001961366310477

/-! ## A294955.P18305199571409129200

`∑{d}[n+1, (#^(n+2))²]`
-/

namespace A294955.P18305199571409129200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ (n + 2)) ^ 2

end

end A294955.P18305199571409129200

/-! ## A294955.P13024549141625430782

`A109974(A064226(n+1))`
-/

namespace A294955.P13024549141625430782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A064226 (n + 1)).toNat

end

end A294955.P13024549141625430782

/-! ## A294955.P6496582431811626082

`A308504(A054000(n+2)+1)`
-/

namespace A294955.P6496582431811626082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (A054000 (n + 2) + 1).toNat

end

end A294955.P6496582431811626082

/-! ## A294955.P4642750171764140670

`A308504(eq[A027642(n), A114327(n)])`
-/

namespace A294955.P4642750171764140670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294955.P4642750171764140670

/-!
# A294956: a(n) = Sum_{d|n} d^(d + n/d).

The programs for A294956, there is no canonical definition to state claims against.
-/

/-! ## A294956.P1317029722051666822

`∑{d}[n+1, #^(#+(n+1)/#)]`
-/

namespace A294956.P1317029722051666822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((d : ℚ) + (n + 1 : ℚ) / (d : ℚ) : ℝ)

end

end A294956.P1317029722051666822

/-!
# A294957: Expansion of Product_{k>=1} 1/(1 - k*x^k)^(k^(k-1)).

The programs for A294957, there is no canonical definition to state claims against.
-/

/-! ## A294957.P14941066345642820963

`A272676(A137341(n)/round(sqrt(n²+1)))`
-/

namespace A294957.P14941066345642820963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272676 (SequenceMachineLib.roundAway ((A137341 n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ))).toNat

end

end A294957.P14941066345642820963

/-! ## A294957.P3759818445931539174

`A037804(A023880(n))+A023880(n)`
-/

namespace A294957.P3759818445931539174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (A023880 n).toNat + A023880 n

end

end A294957.P3759818445931539174

/-!
# A294958: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*((k-2)^2+k)/2).

The programs for A294958, there is no canonical definition to state claims against.
-/

/-! ## A294958.P2592771169193219848

`A238823(n+1)-record[A122283(2*n+1)]`
-/

namespace A294958.P2592771169193219848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238823 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294958.P2592771169193219848

/-! ## A294958.P13438958694139834689

`A130446(A008670(n²))`
-/

namespace A294958.P13438958694139834689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A008670 (n ^ 2)).toNat

end

end A294958.P13438958694139834689

/-! ## A294958.P1470432188047299386

`A126257(A072850(n+1)+n-1)`
-/

namespace A294958.P1470432188047299386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A072850 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A294958.P1470432188047299386

/-!
# A294959: Expansion of Product_{k>=1} (1 + x^k)^(k*((k-2)^2+k)/2).

The programs for A294959, there is no canonical definition to state claims against.
-/

/-! ## A294959.P5992269855781155517

`A097064(n)+Δ[A169988(3*(n+1))]`
-/

namespace A294959.P5992269855781155517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169988 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 n + (f1 (n + 1) - f1 n)

end

end A294959.P5992269855781155517

/-! ## A294959.P1411044178475870709

`Δ[A216265(A275183(n+4)+3^(n+1)+1)]`
-/

namespace A294959.P1411044178475870709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216265 (A275183 (n + 4) + (3 ^ (n + 1) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294959.P1411044178475870709

/-! ## A294959.P7485432638943783741

`A243283(A001519(n)*A273225(n))`
-/

namespace A294959.P7485432638943783741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A001519 n * A273225 n).toNat

end

end A294959.P7485432638943783741

/-!
# A294960: Snowflake (or E-toothpick) sequence of the second kind (see Comments lines for definition).

The programs for A294960, there is no canonical definition to state claims against.
-/

/-! ## A294960.P9314665817764975804

`A294961(n)+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A294960.P9314665817764975804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A294961 n + a (n - 1)

end

end A294960.P9314665817764975804

/-! ## A294960.P3536540776832956362

`∑[A294961(A028310(n))]-2`
-/

namespace A294960.P3536540776832956362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294961 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A294960.P3536540776832956362

/-! ## A294960.P17607261025094186208

`∪[A141255(3*n+1), ∑[A294961(n+1)]]`
-/

namespace A294960.P17607261025094186208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294960.P17607261025094186208

/-! ## A294960.P17095511287774948552

`∑[A057427(n)*A294961(A028310(n))]`
-/

namespace A294960.P17095511287774948552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A294961 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294960.P17095511287774948552

/-! ## A294960.P2527997974493474023

`∑[A178334(n)*A294961(A028310(n))]`
-/

namespace A294960.P2527997974493474023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A294961 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294960.P2527997974493474023

/-!
# A294961: a(n) is the number of E-toothpicks added at n-th stage in the structure of the snowflake cellular automaton of A294960.

The programs for A294961, there is no canonical definition to state claims against.
-/

/-! ## A294961.P564333626865855560

`Δ[A294960(n)]`
-/

namespace A294961.P564333626865855560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294961.P564333626865855560

/-! ## A294961.P13407385345861741700

`A294960(n+1)-A294960(n)`
-/

namespace A294961.P13407385345861741700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294960 (n + 1) - A294960 n

end

end A294961.P13407385345861741700

/-! ## A294961.P7059307045355943762

`record[A294960(A123108(n))]-A294960(n)`
-/

namespace A294961.P7059307045355943762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294960 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A294960 n

end

end A294961.P7059307045355943762

/-!
# A294962: a(n) is the total number of elements after n-th stage of a hybrid (and finite) cellular automaton formed by toothpicks, D-toothpicks and T-toothpicks on the infinite square grid (see Comments lines for precise definition).

The programs for A294962, there is no canonical definition to state claims against.
-/

/-! ## A294962.P2335475784722515457

`∑[A294963(round(sqrt(n²+1)))]-1`
-/

namespace A294962.P2335475784722515457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294962.P2335475784722515457

/-! ## A294962.P6075247304566728583

`record[and(A058281(n), A125766(n+1))]`
-/

namespace A294962.P6075247304566728583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058281 n) (A125766 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294962.P6075247304566728583

/-!
# A294970: Numerators of the partial sums for the Catalan constant A006752: Sum_{k=0..n} ((-1)^k)/(2*k+1)^2, n >= 0.

The programs for A294970, there is no canonical definition to state claims against.
-/

/-! ## A294970.P8477389132334349890

`A275286(n)/A001818(n+1)*A294971(n)`
-/

namespace A294970.P8477389132334349890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275286 n : ℚ) / (A001818 (n + 1) : ℚ) * (A294971 n : ℚ)

end

end A294970.P8477389132334349890

/-! ## A294970.P6915794517460417022

`A275286(n)/A073842(A001147(n+1)/A025547(n+1))`
-/

namespace A294970.P6915794517460417022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275286 n : ℚ) / (A073842 (SequenceMachineLib.roundAway ((A001147 (n + 1) : ℚ) / (A025547 (n + 1) : ℚ))).toNat : ℚ)

end

end A294970.P6915794517460417022

/-!
# A294971: Denominators of the partial sums for the Catalan constant A006752: Sum_{k=0..n} ((-1)^k)/(2*k+1)^2, n >= 0.

The programs for A294971, there is no canonical definition to state claims against.
-/

/-! ## A294971.P6669202064403409501

`A001818(n+1)/A275286(n)*A294970(n)`
-/

namespace A294971.P6669202064403409501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001818 (n + 1) : ℚ) / (A275286 n : ℚ) * (A294970 n : ℚ)

end

end A294971.P6669202064403409501

/-! ## A294971.P16709914708988207954

`gcd(A025547(n+1), A173789(n+1))²`
-/

namespace A294971.P16709914708988207954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025547 (n + 1)) (A173789 (n + 1)) ^ 2

end

end A294971.P16709914708988207954

/-! ## A294971.P14953117992373710330

`sqrt(∏[A014963(2*n+1)]^5/A025547(n+1))`
-/

namespace A294971.P14953117992373710330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((∏ j ∈ Finset.range (n + 1), f1 j) ^ 5 : ℤ) : ℚ) / (A025547 (n + 1) : ℚ) : ℝ)

end

end A294971.P14953117992373710330

/-! ## A294971.P7264554014778508014

`lcm(A110026(n+1), A110026(n))²`
-/

namespace A294971.P7264554014778508014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110026 (n + 1)) (A110026 n) ^ 2

end

end A294971.P7264554014778508014

/-! ## A294971.P1519645443329278628

`A355567(∑[n+2])²`
-/

namespace A294971.P1519645443329278628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355567 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A294971.P1519645443329278628

/-!
# A294972: Numerators of continued fraction convergents to sqrt(7)/2.

The programs for A294972, there is no canonical definition to state claims against.
-/

/-! ## A294972.P17236980979168906924

`(4*A041044(n+2))%A041045(n+2)`
-/

namespace A294972.P17236980979168906924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A041044 (n + 2)) (A041045 (n + 2))

end

end A294972.P17236980979168906924

/-!
# A294973: Denominators of the continued fraction convergents to sqrt(7)/2.

The programs for A294973, there is no canonical definition to state claims against.
-/

/-! ## A294973.P5126861107212448708

`A041045(n+2)%(A041044(n+2)%A041045(n+2))`
-/

namespace A294973.P5126861107212448708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041045 (n + 2)) (Int.tmod (A041044 (n + 2)) (A041045 (n + 2)))

end

end A294973.P5126861107212448708

/-! ## A294973.P9586390679079402466

`(16*A041045(n+2))%A041044(n+2)`
-/

namespace A294973.P9586390679079402466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (16 * A041045 (n + 2)) (A041044 (n + 2))

end

end A294973.P9586390679079402466

/-!
# A294975: a(n) = (1/(24*n)) * Sum_{d|n} A008683(n/d) * (A288840(d) - A288877(d)).

The programs for A294975, there is no canonical definition to state claims against.
-/

/-! ## A294975.P4964152894308620643

`A289396(n+1)-2*A289394(n+1)`
-/

namespace A294975.P4964152894308620643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289396 (n + 1) - 2 * A289394 (n + 1)

end

end A294975.P4964152894308620643

/-!
# A294977: Square array T(n, k) read by antidiagonals, n > 0 and k > 0: T(n, k) is the smallest positive integer that, when written in binary, contains both binary n and binary k as substrings.

The programs for A294977, there is no canonical definition to state claims against.
-/

/-! ## A294977.P8113064361151506411

`A003990(n+1)/A003989(A174451(n))`
-/

namespace A294977.P8113064361151506411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003989 (A174451 n).toNat : ℚ)

end

end A294977.P8113064361151506411

/-! ## A294977.P16197145546220450961

`A091256(n+1)/A003989(A174451(n))`
-/

namespace A294977.P16197145546220450961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091256 (n + 1) : ℚ) / (A003989 (A174451 n).toNat : ℚ)

end

end A294977.P16197145546220450961

/-! ## A294977.P9476276052899075630

`A003990(n+1)/A124766(A176427(n))`
-/

namespace A294977.P9476276052899075630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A124766 (A176427 n).toNat : ℚ)

end

end A294977.P9476276052899075630

/-! ## A294977.P482216653197530324

`A003990(n+1)/A043283(A296548(n))`
-/

namespace A294977.P482216653197530324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A043283 (A296548 n).toNat : ℚ)

end

end A294977.P482216653197530324

/-! ## A294977.P16733691674286776418

`A091256(n+1)/A124766(A176427(n))`
-/

namespace A294977.P16733691674286776418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091256 (n + 1) : ℚ) / (A124766 (A176427 n).toNat : ℚ)

end

end A294977.P16733691674286776418

/-!
# A294980: a(n) is the total number of elements after n-th stage in a hybrid cellular automaton formed by Y-toothpicks and V-toothpicks (see Comments lines for precise definition).

The programs for A294980, there is no canonical definition to state claims against.
-/

/-! ## A294980.P8104672061871738662

`A330006(∑[and(2, n)!]+1)-2`
-/

namespace A294980.P8104672061871738662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330006 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 2

end

end A294980.P8104672061871738662

/-! ## A294980.P8252652561854355078

`∑[6*gcd(a(n-1)+3, A024325(n+1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A294980.P8252652561854355078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  6 * Int.gcd (f1 (n - 1) + 3 : ℤ) (A024325 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294980.P8252652561854355078

/-! ## A294980.P1837739984199683313

`eq[A353364(n+1), A363158(n+1)]`
-/

namespace A294980.P1837739984199683313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294980.P1837739984199683313

/-! ## A294980.P15852862964294717439

`record[A135286(n+1)%A000217(A002260(n+1))]`
-/

namespace A294980.P15852862964294717439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135286 (n + 1)) (A000217 (A002260 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294980.P15852862964294717439

/-! ## A294980.P152394305991218506

`lt[A309891(n+1)+A227835(n), A051064(n+5)]`
-/

namespace A294980.P152394305991218506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (n + 1) + A227835 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294980.P152394305991218506

/-!
# A294982: Number of compositions (ordered partitions) of 1 into exactly 3n+1 powers of 1/(n+1).

The programs for A294982, there is no canonical definition to state claims against.
-/

/-! ## A294982.P2958439817357784124

`A294746(∑[n+3]+6)`
-/

namespace A294982.P2958439817357784124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A294982.P2958439817357784124

/-! ## A294982.P14769019265124170746

`record[A010054(n)*A294746(n+3)]`
-/

namespace A294982.P14769019265124170746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A294746 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294982.P14769019265124170746

/-! ## A294982.P7322234535352038163

`A018843(n)!*A294746(A167614(n+2))`
-/

namespace A294982.P7322234535352038163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A018843 n).toNat : ℤ) * A294746 (A167614 (n + 2)).toNat

end

end A294982.P7322234535352038163

/-!
# A294983: Number of compositions (ordered partitions) of 1 into exactly 4n+1 powers of 1/(n+1).

The programs for A294983, there is no canonical definition to state claims against.
-/

/-! ## A294983.P18140003657468230041

`A294746(eq[4, A002262(n)])`
-/

namespace A294983.P18140003657468230041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294983.P18140003657468230041

/-! ## A294983.P12458513407814859787

`A294746(eq[16, A059268(n)])`
-/

namespace A294983.P12458513407814859787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294983.P12458513407814859787

/-! ## A294983.P8782830685952722561

`A294746(A167614(n+3)+1)`
-/

namespace A294983.P8782830685952722561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (A167614 (n + 3) + 1).toNat

end

end A294983.P8782830685952722561

/-! ## A294983.P12599338592493794720

`A294746(eq[2, A294775(n)]+1)`
-/

namespace A294983.P12599338592493794720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A294983.P12599338592493794720

/-! ## A294983.P6988301727497598785

`A294746(eq[4, A144328(n+1)])`
-/

namespace A294983.P6988301727497598785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294983.P6988301727497598785

/-!
# A294984: Number of compositions (ordered partitions) of 1 into exactly 5n+1 powers of 1/(n+1).

The programs for A294984, there is no canonical definition to state claims against.
-/

/-! ## A294984.P15849128238123293945

`A294746(eq[6, A002260(n+1)])`
-/

namespace A294984.P15849128238123293945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294984.P15849128238123293945

/-!
# A294985: 

The programs for A294985, there is no canonical definition to state claims against.
-/

/-! ## A294985.P11856003508199224515

`A294746(A133263(n+6)+4)`
-/

namespace A294985.P11856003508199224515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (A133263 (n + 6) + 4).toNat

end

end A294985.P11856003508199224515

/-!
# A294991: Let S be the sequence of integer sets defined by the following rules: S(0) = {0}, S(1) = {1} and for any k > 0, S(2*k) = {2*k} U S(k) and S(2*k+1) = {2*k+1} U S(k) U S(k+1) (where X U Y denotes the union of the sets X and Y); a(n) = the number of elements of S(n).

The programs for A294991, there is no canonical definition to state claims against.
-/

/-! ## A294991.P3563548864585327469

`A300118(A000005(ceil(2^(n-1))))`
-/

namespace A294991.P3563548864585327469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A294991.P3563548864585327469

/-! ## A294991.P1861225391856299465

`A300118(C(A084938(n), n)+n)`
-/

namespace A294991.P1861225391856299465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (Nat.choose (A084938 n).toNat n + n)

end

end A294991.P1861225391856299465

/-! ## A294991.P16921033213040044251

`A366991(A079102(n))`
-/

namespace A294991.P16921033213040044251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366991 (A079102 n).toNat

end

end A294991.P16921033213040044251

/-! ## A294991.P2288452077104752541

`A366991(A375966(n))`
-/

namespace A294991.P2288452077104752541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366991 (A375966 n).toNat

end

end A294991.P2288452077104752541

/-! ## A294991.P5166978484875223327

`A300118(A238690(ceil(2^(n-1))))`
-/

namespace A294991.P5166978484875223327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300118 (A238690 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A294991.P5166978484875223327

/-!
# A294993: Numbers n > 1 such that all of 2^(n-1), 3^(n-1), 5^(n-1), (2*n-1)*(2^((n-1)/2)), 4*ceiling((3/4)*n)-2, and (2^((n+1)/2) + floor(n/4)*2^((n+3)/2)) are congruent to 1 (mod n).

The programs for A294993, there is no canonical definition to state claims against.
-/

/-! ## A294993.P9847919824434879414

`p?[8*n+11]`
-/

namespace A294993.P9847919824434879414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A294993.P9847919824434879414

/-! ## A294993.P2882754723208534746

`or(1, p?[a(n-1)+8])` with `a(0)=11`
-/

namespace A294993.P2882754723208534746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A294993.P2882754723208534746

/-! ## A294993.P8931039461320521095

`∏{d}[p?[a(n-1)+8], #]` with `a(0)=11`
-/

namespace A294993.P8931039461320521095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A294993.P8931039461320521095

/-! ## A294993.P10626215022947583376

`∑{p}[p?[a(n-1)+8], #]` with `a(0)=11`
-/

namespace A294993.P10626215022947583376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A294993.P10626215022947583376

/-! ## A294993.P3700840615245495957

`∏{p}[p?[a(n-1)+8], #]` with `a(0)=11`
-/

namespace A294993.P3700840615245495957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A294993.P3700840615245495957

/-! ## A294993.P15872227193580962593

`A007520(n+2)`
-/

namespace A294993.P15872227193580962593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 2)

end

end A294993.P15872227193580962593

/-! ## A294993.P14706376344075305565

`A045339(n+3)`
-/

namespace A294993.P14706376344075305565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 3)

end

end A294993.P14706376344075305565

/-! ## A294993.P5982024486645822973

`or(1, p?[A004769(n)])`
-/

namespace A294993.P5982024486645822973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294993.P5982024486645822973

/-! ## A294993.P18278982795645772582

`A186298(n+2)+2`
-/

namespace A294993.P18278982795645772582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186298 (n + 2) + 2

end

end A294993.P18278982795645772582

/-! ## A294993.P8677462020740809408

`A157115(A016825(n+1))`
-/

namespace A294993.P8677462020740809408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157115 (A016825 (n + 1)).toNat

end

end A294993.P8677462020740809408

/-!
# A294996: Numbers m such that the largest digit of m^3 is 6.

The programs for A294996, there is no canonical definition to state claims against.
-/

/-! ## A294996.P4308893750899714721

`root(A295021(n+1), 3)`
-/

namespace A294996.P4308893750899714721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295021 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A294996.P4308893750899714721

/-! ## A294996.P2496234560772466821

`A295021(A000027(n+1))^(1/3)`
-/

namespace A294996.P2496234560772466821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295021 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A294996.P2496234560772466821

/-! ## A294996.P17166745807188152041

`A295021(A020725(n+1)-1)^(1/3)`
-/

namespace A294996.P17166745807188152041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295021 (A020725 (n + 1) - 1).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A294996.P17166745807188152041

/-! ## A294996.P7027914226228881622

`(A295021(n+1)^(1/3))%A295019(n+1)`
-/

namespace A294996.P7027914226228881622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A295021 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))) (A295019 (n + 1))

end

end A294996.P7027914226228881622

/-! ## A294996.P3084204379204106531

`(A295021(n+1)%A295025(n+1))^(1/3)`
-/

namespace A294996.P3084204379204106531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A295021 (n + 1)) (A295025 (n + 1)) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A294996.P3084204379204106531

/-! ## A294996.P9404690018026750994

`eq[6, A032553(n)%10]`
-/

namespace A294996.P9404690018026750994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294996.P9404690018026750994

/-!
# A294997: Numbers k such that the largest digit of k^3 is 7.

The programs for A294997, there is no canonical definition to state claims against.
-/

/-! ## A294997.P1652100384922743429

`root(A295022(n+1), 3)`
-/

namespace A294997.P1652100384922743429
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295022 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A294997.P1652100384922743429

/-! ## A294997.P11696664578028365038

`A295022(n+1)^((10*n+5)/(A128468(n)-2))`
-/

namespace A294997.P11696664578028365038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295022 (n + 1) : ℝ) ^ ((10 * n + 5 : ℚ) / (A128468 n - 2 : ℚ) : ℝ)

end

end A294997.P11696664578028365038

/-! ## A294997.P6831262499484182664

`A295022(n+1)^(A076839(5*n+6)/3)`
-/

namespace A294997.P6831262499484182664
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295022 (n + 1) : ℝ) ^ ((A076839 (5 * n + 6) : ℚ) / 3 : ℝ)

end

end A294997.P6831262499484182664

/-! ## A294997.P17229805929862983708

`eq[2, A032553(n)%5]`
-/

namespace A294997.P17229805929862983708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294997.P17229805929862983708

/-!
# A294998: Numbers n such that the largest digit of n^3 is 8.

The programs for A294998, there is no canonical definition to state claims against.
-/

/-! ## A294998.P2562285035066983157

`root(A295023(n+1), 3)`
-/

namespace A294998.P2562285035066983157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295023 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A294998.P2562285035066983157

/-! ## A294998.P17190557816397709914

`eq[8, A032553(n)%10]`
-/

namespace A294998.P17190557816397709914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294998.P17190557816397709914

/-! ## A294998.P7395989263300987341

`eq[2*char[1], A269249(n)^A269248(n)]`
-/

namespace A294998.P7395989263300987341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269249 n : ℚ) ^ (A269248 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f3 j) n

end

end A294998.P7395989263300987341

/-! ## A294998.P1545428465692283629

`lt[A269249(n), A269248(n)²/A098393(n+1)]`
-/

namespace A294998.P1545428465692283629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269248 n ^ 2 : ℚ) / (A098393 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A294998.P1545428465692283629

/-! ## A294998.P8247325619557651947

`eq[0, A269249(n)^A269248(n)]%A000041(n+7)`
-/

namespace A294998.P8247325619557651947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269249 n : ℚ) ^ (A269248 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n : ℤ) (A000041 (n + 7))

end

end A294998.P8247325619557651947

/-!
# A294999: Numbers n such that the largest digit of n^3 is 9.

The programs for A294999, the canonical program `A294999.P3238631849629284729` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294999 has offset 1).

The definition of A294999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294999.P14297039731066885104

`A295024(n+1)^(1/3)`
-/

namespace A294999.P14297039731066885104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295024 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A294999.P14297039731066885104

namespace A294999

/-- `A295024(n+1)^(1/3)` -/
def P14297039731066885104.Spec : Prop :=
  ∀ n, P14297039731066885104.a n = (A294999 (n + 1) : ℝ)

end A294999

/-! ## A294999.P3238631849629284729

`lt[0, ∑{digits}[n^3, C(#, 9)]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294999

/-- `lt[0, ∑{digits}[n^3, C(#, 9)]]` -/
def P3238631849629284729.Spec : Prop :=
  ∀ n, (P3238631849629284729.a n : ℤ) = A294999 (n + 1)

theorem P3238631849629284729.correct : P3238631849629284729.Spec := by
  intro n
  simp only [A294999, Nat.add_sub_cancel]

end A294999

/-! ## A294999.P7269219073485821279

`lt[0, A269249(n)]`
-/

namespace A294999.P7269219073485821279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294999.P7269219073485821279

namespace A294999

/-- `lt[0, A269249(n)]` -/
def P7269219073485821279.Spec : Prop :=
  ∀ n, (P7269219073485821279.a n : ℤ) = A294999 (n + 1)

end A294999

/-! ## A294999.P16361693360556277159

`lt[8, A032553(n)%10]`
-/

namespace A294999.P16361693360556277159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294999.P16361693360556277159

namespace A294999

/-- `lt[8, A032553(n)%10]` -/
def P16361693360556277159.Spec : Prop :=
  ∀ n, (P16361693360556277159.a n : ℤ) = A294999 (n + 1)

end A294999

/-! ## A294999.P4588055559597519701

`eq[0, A000038(n)^A269249(n)]`
-/

namespace A294999.P4588055559597519701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A269249 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A294999.P4588055559597519701

namespace A294999

/-- `eq[0, A000038(n)^A269249(n)]` -/
def P4588055559597519701.Spec : Prop :=
  ∀ n, (P4588055559597519701.a n : ℤ) = A294999 (n + 1)

end A294999

/-! ## A294999.P11469239954363787953

`eq[1, gcd(A128468(n), A269249(n))]`
-/

namespace A294999.P11469239954363787953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128468 n) (A269249 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294999.P11469239954363787953

namespace A294999

/-- `eq[1, gcd(A128468(n), A269249(n))]` -/
def P11469239954363787953.Spec : Prop :=
  ∀ n, (P11469239954363787953.a n : ℤ) = A294999 (n + 1)

end A294999

