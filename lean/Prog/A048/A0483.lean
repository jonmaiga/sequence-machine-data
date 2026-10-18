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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B008.C000
import Seq.B008.C001
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
# A048300: Numbers whose base-3 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048300, there is no canonical definition to state claims against.
-/

/-! ## A048300.P15616394932826421961

`eq[0, A124763(A060585(n))]`
-/

namespace A048300.P15616394932826421961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048300.P15616394932826421961

/-! ## A048300.P432029024689239382

`eq[A057427(n), A124768(A060585(n))]`
-/

namespace A048300.P432029024689239382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048300.P432029024689239382

/-! ## A048300.P11232675268689065846

`eq[A011589(n)², A124768(A060585(n))]`
-/

namespace A048300.P11232675268689065846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048300.P11232675268689065846

/-! ## A048300.P7796317800928009187

`eq[A057428(n)², A124768(A060585(n))]`
-/

namespace A048300.P7796317800928009187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048300.P7796317800928009187

/-! ## A048300.P1665095382834914775

`eq[A134824(n)², A124768(A060585(n))]`
-/

namespace A048300.P1665095382834914775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048300.P1665095382834914775

/-!
# A048301: Numbers whose base-4 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048301, there is no canonical definition to state claims against.
-/

/-! ## A048301.P17791754370846594544

`record[A289813(A048306(n))]`
-/

namespace A048301.P17791754370846594544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048306 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048301.P17791754370846594544

/-! ## A048301.P7716772316065678248

`record[A292371(A048313(n))]`
-/

namespace A048301.P7716772316065678248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A048313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048301.P7716772316065678248

/-! ## A048301.P7661319643995397906

`record[A292372(A048313(n))]%A044917(n+1)²`
-/

namespace A048301.P7661319643995397906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A044917 (n + 1) ^ 2)

end

end A048301.P7661319643995397906

/-! ## A048301.P1159146210462870687

`record[A059905(A048313(n+2))]`
-/

namespace A048301.P1159146210462870687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A048313 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048301.P1159146210462870687

/-! ## A048301.P12401543956112088300

`lt[A257844(A001318(n)), A317245(n)]`
-/

namespace A048301.P12401543956112088300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A001318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048301.P12401543956112088300

/-!
# A048302: Numbers whose base-5 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048302, there is no canonical definition to state claims against.
-/

/-! ## A048302.P13841500216537100929

`lt[A213217(A098488(2*n)), 12]`
-/

namespace A048302.P13841500216537100929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A098488 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048302.P13841500216537100929

/-! ## A048302.P15860974813017924967

`lt[A255594(A102489(2*n+1)), 19]`
-/

namespace A048302.P15860974813017924967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 (A102489 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048302.P15860974813017924967

/-! ## A048302.P5208273011500592289

`lt[A165032(n), A052813(A047764(n+1))]`
-/

namespace A048302.P5208273011500592289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052813 (A047764 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048302.P5208273011500592289

/-! ## A048302.P8530519658293510342

`eq[A010879(2*n), A010879(A177895(2*n))]`
-/

namespace A048302.P8530519658293510342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A177895 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048302.P8530519658293510342

/-! ## A048302.P11270487631084880257

`lt[A165032(n), A032742(A320631(n+2))]`
-/

namespace A048302.P11270487631084880257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A320631 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048302.P11270487631084880257

/-!
# A048303: Numbers whose base-6 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048303, there is no canonical definition to state claims against.
-/

/-! ## A048303.P10380342864785191638

`lt[A059169(n+1), A040193(A226293(n+1))]`
-/

namespace A048303.P10380342864785191638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040193 (A226293 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048303.P10380342864785191638

/-! ## A048303.P18442739073442616484

`xor(A048317(n), A185284((n+1)*3^(n%2)))`
-/

namespace A048303.P18442739073442616484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048317 n) (A185284 ((n + 1) * 3 ^ (n % 2)))

end

end A048303.P18442739073442616484

/-! ## A048303.P3711657389434035938

`eq[A053616(A010893(n)), A165052(n)]`
-/

namespace A048303.P3711657389434035938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A010893 (n + 13)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048303.P3711657389434035938

/-! ## A048303.P16103350705937280194

`lt[A165051(n), A135680(A351005(n))]`
-/

namespace A048303.P16103350705937280194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135680 (A351005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048303.P16103350705937280194

/-! ## A048303.P15202931057711097354

`A029953(n+1)-A235145(A005043(n))`
-/

namespace A048303.P15202931057711097354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1) - A235145 (A005043 n).toNat

end

end A048303.P15202931057711097354

/-!
# A048304: Numbers whose base-7 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048304, there is no canonical definition to state claims against.
-/

/-! ## A048304.P10108737548946759574

`record[and(A265519(n), A325152(n+1))]`
-/

namespace A048304.P10108737548946759574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265519 n) (A325152 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048304.P10108737548946759574

/-! ## A048304.P5421166777557015134

`eq[A043559(n), A178334(A007318(n))]`
-/

namespace A048304.P5421166777557015134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048304.P5421166777557015134

/-! ## A048304.P5295448977038352869

`eq[A030597(A267089(n)), A043559(n)]`
-/

namespace A048304.P5295448977038352869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030597 (A267089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048304.P5295448977038352869

/-! ## A048304.P17670638162090145530

`A029954(n+1)-A107846(A096855(n))`
-/

namespace A048304.P17670638162090145530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1) - A107846 (A096855 n).toNat

end

end A048304.P17670638162090145530

/-! ## A048304.P10210303102266841282

`eq[n, A089867(A265552(n))]`
-/

namespace A048304.P10210303102266841282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A265552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048304.P10210303102266841282

/-!
# A048305: Numbers whose base-8 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048305, there is no canonical definition to state claims against.
-/

/-! ## A048305.P16743609408155808092

`record[A265539(n)-A151949(n+2)]`
-/

namespace A048305.P16743609408155808092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 n - A151949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048305.P16743609408155808092

/-! ## A048305.P11526954482499383006

`eq[n, A265554(n)]-A297248(n+1)`
-/

namespace A048305.P11526954482499383006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A297248 (n + 1)

end

end A048305.P11526954482499383006

/-! ## A048305.P5228057909547008308

`eq[A051344(A026799(n)), A165091(n)]`
-/

namespace A048305.P5228057909547008308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A026799 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048305.P5228057909547008308

/-! ## A048305.P14725332084896739976

`eq[A055957(n), A165090(A265554(n))]`
-/

namespace A048305.P14725332084896739976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 (A265554 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048305.P14725332084896739976

/-! ## A048305.P1515274931216324648

`A029803(n+1)-A168184(A184955(n))`
-/

namespace A048305.P1515274931216324648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1) - A168184 (A184955 n).toNat

end

end A048305.P1515274931216324648

/-!
# A048306: Numbers whose base-9 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048306, there is no canonical definition to state claims against.
-/

/-! ## A048306.P18240184078885734514

`eq[A093882(n), A343609(n)]`
-/

namespace A048306.P18240184078885734514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048306.P18240184078885734514

/-! ## A048306.P10359848568038348246

`eq[A002264(A002264(n)), A093882(n)]`
-/

namespace A048306.P10359848568038348246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048306.P10359848568038348246

/-! ## A048306.P4347236760359774366

`lt[A165110(n), A293994(A281245(n))]`
-/

namespace A048306.P4347236760359774366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293994 (A281245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048306.P4347236760359774366

/-! ## A048306.P9002975061955370460

`A029955(n+1)-A014028(A247572(n+2))`
-/

namespace A048306.P9002975061955370460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1) - A014028 (A247572 (n + 2)).toNat

end

end A048306.P9002975061955370460

/-! ## A048306.P16922935105995218293

`A029955(n+1)-A096268(A368393(n+3))`
-/

namespace A048306.P16922935105995218293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1) - A096268 (A368393 (n + 3)).toNat

end

end A048306.P16922935105995218293

/-!
# A048307: Numbers whose decimal expansions, read from left to right, have run lengths that strictly increase.

The programs for A048307, there is no canonical definition to state claims against.
-/

/-! ## A048307.P18165106677347103160

`lt[A265525(A038724(n)), 10]`
-/

namespace A048307.P18165106677347103160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A038724 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048307.P18165106677347103160

/-! ## A048307.P3662585800809761971

`lt[A095058(A139337(n)), 4]`
-/

namespace A048307.P3662585800809761971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095058 (A139337 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048307.P3662585800809761971

/-! ## A048307.P5753678572373340231

`lt[A139337(n), A083136(A332550(n))]`
-/

namespace A048307.P5753678572373340231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048307.P5753678572373340231

/-! ## A048307.P356218790832440349

`lt[A054899(n), A136414(A139337(n))]`
-/

namespace A048307.P356218790832440349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136414 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048307.P356218790832440349

/-! ## A048307.P13927546543735708617

`lt[A045918(n), A134864(A358062(n+1))]`
-/

namespace A048307.P13927546543735708617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134864 (A358062 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048307.P13927546543735708617

/-!
# A048308: Numbers whose base-11 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048308, there is no canonical definition to state claims against.
-/

/-! ## A048308.P6510052588482475601

`A029956(n+1)-A247223(A005729(n+1))`
-/

namespace A048308.P6510052588482475601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1) - A247223 (A005729 (n + 1)).toNat

end

end A048308.P6510052588482475601

/-! ## A048308.P9977173808847483110

`A029956(n+1)-A277161(A333421(n+1))`
-/

namespace A048308.P9977173808847483110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1) - A277161 (A333421 (n + 1)).toNat

end

end A048308.P9977173808847483110

/-! ## A048308.P7027030535187148754

`eq[A178334(n)!, A043563(n)]`
-/

namespace A048308.P7027030535187148754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048308.P7027030535187148754

/-! ## A048308.P3979483655285263205

`A029956(n+1)-A068933(A025747(n))`
-/

namespace A048308.P3979483655285263205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1) - A068933 (A025747 n).toNat

end

end A048308.P3979483655285263205

/-! ## A048308.P7267741618185196047

`A029956(n+1)-A335520(A104446(n))`
-/

namespace A048308.P7267741618185196047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1) - A335520 (A104446 n).toNat

end

end A048308.P7267741618185196047

/-!
# A048309: Numbers whose base-12 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048309, there is no canonical definition to state claims against.
-/

/-! ## A048309.P12150503723583287438

`A029957(n+1)-A102683(A029943(n+1))`
-/

namespace A048309.P12150503723583287438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1) - A102683 (A029943 (n + 1)).toNat

end

end A048309.P12150503723583287438

/-! ## A048309.P9005576288708715907

`A029957(n+1)-A185284(A219606(n+1))`
-/

namespace A048309.P9005576288708715907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1) - A185284 (A219606 (n + 1)).toNat

end

end A048309.P9005576288708715907

/-! ## A048309.P16983429228726163344

`A029957(n+1)-A321936(A270061(n))`
-/

namespace A048309.P16983429228726163344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1) - A321936 (A270061 n).toNat

end

end A048309.P16983429228726163344

/-! ## A048309.P10691688336730975553

`A240465(A066824(2*n+3))+A029957(n+1)`
-/

namespace A048309.P10691688336730975553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A066824 (2 * n + 3)).toNat + A029957 (n + 1)

end

end A048309.P10691688336730975553

/-!
# A048310: Numbers whose base-13 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048310, there is no canonical definition to state claims against.
-/

/-! ## A048310.P13689615622544393526

`∪[(n+1)^A179959(n)!, A008596(n)]`
-/

namespace A048310.P13689615622544393526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.factorial (A179959 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048310.P13689615622544393526

/-! ## A048310.P5450060449652067526

`A044962(A028310(n))%A228992(n+1)`
-/

namespace A048310.P5450060449652067526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044962 (A028310 n).toNat) (A228992 (n + 1))

end

end A048310.P5450060449652067526

/-! ## A048310.P2184098922655110788

`A048337(n)-A185284(A026797(n+1)+2)`
-/

namespace A048310.P2184098922655110788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 n - A185284 (A026797 (n + 1) + 2).toNat

end

end A048310.P2184098922655110788

/-!
# A048311: Numbers whose base-14 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048311, there is no canonical definition to state claims against.
-/

/-! ## A048311.P8619047505288421800

`A044825(round(sqrt(n²+1)))%A302915(n+1)`
-/

namespace A048311.P8619047505288421800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044825 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A302915 (n + 1))

end

end A048311.P8619047505288421800

/-! ## A048311.P5131981877969287521

`A044963(round(sqrt(n²+1)))%A302915(n+1)`
-/

namespace A048311.P5131981877969287521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A302915 (n + 1))

end

end A048311.P5131981877969287521

/-! ## A048311.P12024564524660265985

`A044825(A028310(n))%A262031(n)`
-/

namespace A048311.P12024564524660265985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044825 (A028310 n).toNat) (A262031 n)

end

end A048311.P12024564524660265985

/-! ## A048311.P10431996469114819178

`A044963(A028310(n))%A268042(n)`
-/

namespace A048311.P10431996469114819178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044963 (A028310 n).toNat) (A268042 n)

end

end A048311.P10431996469114819178

/-! ## A048311.P14020024890336052882

`A029959(n+1)-A185284(A029053(n))`
-/

namespace A048311.P14020024890336052882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1) - A185284 (A029053 n).toNat

end

end A048311.P14020024890336052882

/-!
# A048312: Numbers whose base-15 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048312, there is no canonical definition to state claims against.
-/

/-! ## A048312.P18081315158821899466

`A055965(A210709(n))+A048326(n)`
-/

namespace A048312.P18081315158821899466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 (A210709 n).toNat + A048326 n

end

end A048312.P18081315158821899466

/-! ## A048312.P9180677151784238566

`A029960(n+1)-A025430(A210709(n))`
-/

namespace A048312.P9180677151784238566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1) - A025430 (A210709 n).toNat

end

end A048312.P9180677151784238566

/-!
# A048313: Numbers whose base-16 expansions, read from left to right, have run lengths that strictly increase.

The programs for A048313, there is no canonical definition to state claims against.
-/

/-! ## A048313.P14160759011479334361

`∪[A044917(n+2), A044965(A151660(n)+n)%(2^n)]`
-/

namespace A048313.P14160759011479334361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044965 (A151660 n + (n : ℤ)).toNat) (2 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048313.P14160759011479334361

/-! ## A048313.P14178785103214864716

`∪[A048340(n), A044965(A151660(n)+n)%(2^n)]`
-/

namespace A048313.P14178785103214864716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044965 (A151660 n + (n : ℤ)).toNat) (2 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048313.P14178785103214864716

/-! ## A048313.P8994197202439344657

`A044965(A151660(n)+n)%(2^n)`
-/

namespace A048313.P8994197202439344657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044965 (A151660 n + (n : ℤ)).toNat) (2 ^ n : ℤ)

end

end A048313.P8994197202439344657

/-! ## A048313.P6979649197376278287

`A029730(n+1)-A000045(C(2*(n+1), 64))`
-/

namespace A048313.P6979649197376278287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1) - A000045 (Nat.choose (2 * (n + 1)) 64)

end

end A048313.P6979649197376278287

/-! ## A048313.P12936200967034319809

`A029730(n+1)-A185284(A322058(n))`
-/

namespace A048313.P12936200967034319809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1) - A185284 (A322058 n).toNat

end

end A048313.P12936200967034319809

/-!
# A048314: Numbers whose base-3 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048314, there is no canonical definition to state claims against.
-/

/-! ## A048314.P520591253537876981

`eq[0, A124764(A060585(n))]`
-/

namespace A048314.P520591253537876981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A060585 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048314.P520591253537876981

/-!
# A048315: Numbers whose base-4 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048315, there is no canonical definition to state claims against.
-/

/-! ## A048315.P7181682702215414108

`record[A289813(A048320(n))]`
-/

namespace A048315.P7181682702215414108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A048320 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048315.P7181682702215414108

/-! ## A048315.P11127951594925761496

`record[A292371(A048327(n))]`
-/

namespace A048315.P11127951594925761496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A048327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048315.P11127951594925761496

/-! ## A048315.P16536057962455926578

`record[A292372(A048327(n+1))]`
-/

namespace A048315.P16536057962455926578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048315.P16536057962455926578

/-! ## A048315.P2301787619651021518

`eq[0, A055965(A048703(n))]`
-/

namespace A048315.P2301787619651021518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 (A048703 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048315.P2301787619651021518

/-! ## A048315.P18296946000048889492

`lt[A006042(A006042(n)), A329606(n+1)]`
-/

namespace A048315.P18296946000048889492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A006042 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048315.P18296946000048889492

/-!
# A048316: Numbers whose base-5 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048316, there is no canonical definition to state claims against.
-/

/-! ## A048316.P16366564164806998824

`record[A030105(A255591(n))-A265517(n)]`
-/

namespace A048316.P16366564164806998824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A255591 n).toNat - A265517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048316.P16366564164806998824

/-! ## A048316.P9550660152612734112

`A255590(A029952(n+1)%A158661(n))`
-/

namespace A048316.P9550660152612734112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (Int.tmod (A029952 (n + 1)) (A158661 n)).toNat

end

end A048316.P9550660152612734112

/-! ## A048316.P4704893231798273199

`A255590(A029952(n+1))+A121373(A244764(n+1))`
-/

namespace A048316.P4704893231798273199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (A029952 (n + 1)).toNat + A121373 (A244764 (n + 1)).toNat

end

end A048316.P4704893231798273199

/-! ## A048316.P245221764177661743

`A255590(A029952(n+1))^A271949(2*A243822(n+1))`
-/

namespace A048316.P245221764177661743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255590 (A029952 (n + 1)).toNat : ℚ) ^ (A271949 (2 * A243822 (n + 1)).toNat : ℤ)

end

end A048316.P245221764177661743

/-! ## A048316.P1156132020414885739

`A255590(A029952(n+1))%A002982(n+1)`
-/

namespace A048316.P1156132020414885739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255590 (A029952 (n + 1)).toNat) (A002982 (n + 1))

end

end A048316.P1156132020414885739

/-!
# A048317: Numbers whose base-6 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048317, there is no canonical definition to state claims against.
-/

/-! ## A048317.P14069009672671103854

`A255591(A029953(n+1))%A228939(n+7)`
-/

namespace A048317.P14069009672671103854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255591 (A029953 (n + 1)).toNat) (A228939 (n + 7))

end

end A048317.P14069009672671103854

/-! ## A048317.P14174155044618717217

`A255591(A029953(n+1)%A275248(n+1))`
-/

namespace A048317.P14174155044618717217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (Int.tmod (A029953 (n + 1)) (A275248 (n + 1))).toNat

end

end A048317.P14174155044618717217

/-! ## A048317.P8029198523111880554

`A255591(A029953(n+1))+A045840(A255591(n)²)`
-/

namespace A048317.P8029198523111880554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A029953 (n + 1)).toNat + A045840 (A255591 n ^ 2).toNat

end

end A048317.P8029198523111880554

/-! ## A048317.P10616618793957735997

`eq[A255691(n), A265535(n)]`
-/

namespace A048317.P10616618793957735997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048317.P10616618793957735997

/-!
# A048318: Numbers whose base-7 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048318, there is no canonical definition to state claims against.
-/

/-! ## A048318.P12689277513401646833

`A255592(A029954(n+1))%A152606(n+1)`
-/

namespace A048318.P12689277513401646833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255592 (A029954 (n + 1)).toNat) (A152606 (n + 1))

end

end A048318.P12689277513401646833

/-! ## A048318.P9622061292762567809

`A255592(A029954(n+1)^A178489(2*(n+1)))`
-/

namespace A048318.P9622061292762567809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255592 (SequenceMachineLib.roundAway ((A029954 (n + 1) : ℚ) ^ (A178489 (2 * (n + 1)) : ℤ))).toNat

end

end A048318.P9622061292762567809

/-! ## A048318.P734643729045188856

`A255592(C(A029954(n+1), A178489(2*(n+1))))`
-/

namespace A048318.P734643729045188856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255592 (Nat.choose (A029954 (n + 1)).toNat (A178489 (2 * (n + 1))).toNat)

end

end A048318.P734643729045188856

/-! ## A048318.P15704368389474391975

`record[A255693(n+1)-A057427(A124460(n))]`
-/

namespace A048318.P15704368389474391975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255693 (n + 1) - A057427 (A124460 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048318.P15704368389474391975

/-! ## A048318.P1915282193418991080

`eq[A255692(n), A265537(n)]`
-/

namespace A048318.P1915282193418991080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048318.P1915282193418991080

/-!
# A048319: Numbers whose base-8 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048319, there is no canonical definition to state claims against.
-/

/-! ## A048319.P3729451678728703515

`A255593(A029803(n+1))+A000007(A335465(n))`
-/

namespace A048319.P3729451678728703515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (A029803 (n + 1)).toNat + A000007 (A335465 n).toNat

end

end A048319.P3729451678728703515

/-! ## A048319.P6440461404761293123

`A255593(A029803(n+1))%A278040(A016754(n))`
-/

namespace A048319.P6440461404761293123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255593 (A029803 (n + 1)).toNat) (A278040 (A016754 n).toNat)

end

end A048319.P6440461404761293123

/-! ## A048319.P5104204967935363871

`A285125(A366656(n))+A255593(A029803(n+1))`
-/

namespace A048319.P5104204967935363871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A366656 n).toNat + A255593 (A029803 (n + 1)).toNat

end

end A048319.P5104204967935363871

/-! ## A048319.P6288621124749006755

`A285125(A257791(n+1))+A255593(A029803(n+1))`
-/

namespace A048319.P6288621124749006755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A257791 (n + 1)).toNat + A255593 (A029803 (n + 1)).toNat

end

end A048319.P6288621124749006755

/-! ## A048319.P6757936218505105314

`A293903(A128445(n))+A255593(A029803(n+1))`
-/

namespace A048319.P6757936218505105314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (A128445 n).toNat + A255593 (A029803 (n + 1)).toNat

end

end A048319.P6757936218505105314

/-! ## A048319.P1919718534091141845

`A255593(A029803(n+1)%A219327(n+2))`
-/

namespace A048319.P1919718534091141845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (Int.tmod (A029803 (n + 1)) (A219327 (n + 2))).toNat

end

end A048319.P1919718534091141845

/-! ## A048319.P16299502698637955924

`A255593(A029803(n+1))+A000122(A090866(n+1))`
-/

namespace A048319.P16299502698637955924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (A029803 (n + 1)).toNat + A000122 (A090866 (n + 1)).toNat

end

end A048319.P16299502698637955924

/-! ## A048319.P9596073333315620461

`A255593(A029803(n+1))+A102673(A231922(n))`
-/

namespace A048319.P9596073333315620461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (A029803 (n + 1)).toNat + A102673 (A231922 n).toNat

end

end A048319.P9596073333315620461

/-!
# A048320: Numbers whose base-9 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048320, there is no canonical definition to state claims against.
-/

/-! ## A048320.P14539121451196377845

`A255594(∪[A014778(n+1), A029955(n+1)])`
-/

namespace A048320.P14539121451196377845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A048320.P14539121451196377845

/-! ## A048320.P7453303810643139255

`A255594(A029955(n+1))%A014778(2*n+5)`
-/

namespace A048320.P7453303810643139255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255594 (A029955 (n + 1)).toNat) (A014778 (2 * n + 5))

end

end A048320.P7453303810643139255

/-! ## A048320.P12718687761187111173

`record[A259361(A004086(n)²)]`
-/

namespace A048320.P12718687761187111173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A004086 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048320.P12718687761187111173

/-! ## A048320.P16510558137522449204

`record[A259361(A076641(n)²)]`
-/

namespace A048320.P16510558137522449204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A076641 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048320.P16510558137522449204

/-! ## A048320.P2922732047504103254

`record[A004086(n)-A057427(A000290(n))]`
-/

namespace A048320.P2922732047504103254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A057427 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048320.P2922732047504103254

/-!
# A048321: Reading a(n) expansion from left to right, run lengths strictly decrease.

The programs for A048321, there is no canonical definition to state claims against.
-/

/-! ## A048321.P10216667742495395895

`eq[A043562(n), A090996(A139337(n))]`
-/

namespace A048321.P10216667742495395895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048321.P10216667742495395895

/-! ## A048321.P7009723987040526952

`A059995(record[A321538(n)])`
-/

namespace A048321.P7009723987040526952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048321.P7009723987040526952

/-! ## A048321.P4760609674267194174

`A059995(eq[n, A321538(n)])`
-/

namespace A048321.P4760609674267194174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048321.P4760609674267194174

/-! ## A048321.P9828915903064324253

`A059995(11*A032945(n+1))`
-/

namespace A048321.P9828915903064324253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A032945 (n + 1)).toNat

end

end A048321.P9828915903064324253

/-!
# A048322: Numbers whose base-11 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048322, there is no canonical definition to state claims against.
-/

/-! ## A048322.P17683520134594972014

`record[A259361(n²)-A055963(n)]`
-/

namespace A048322.P17683520134594972014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) - A055963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048322.P17683520134594972014

/-! ## A048322.P11161314977571888923

`∪[record[A121578(n+1)], A048308(n)]`
-/

namespace A048322.P11161314977571888923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A048322.P11161314977571888923

/-! ## A048322.P934333927071473323

`∪[A029956(n+1), record[A121578(n+1)]]`
-/

namespace A048322.P934333927071473323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048322.P934333927071473323

/-! ## A048322.P14494572107449900149

`eq[A090620(n), A297234(n+1)]`
-/

namespace A048322.P14494572107449900149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048322.P14494572107449900149

/-! ## A048322.P12853610419226689513

`record[A056961(A355249(n+3))-1]`
-/

namespace A048322.P12853610419226689513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (A355249 (n + 3)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048322.P12853610419226689513

/-!
# A048323: Numbers whose base-12 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048323, there is no canonical definition to state claims against.
-/

/-! ## A048323.P10741118465685220844

`A048336(n)-A102683(A058343(n))`
-/

namespace A048323.P10741118465685220844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n - A102683 (A058343 n).toNat

end

end A048323.P10741118465685220844

/-! ## A048323.P14544081357078211574

`A048336(n)-A321936(A270061(n))`
-/

namespace A048323.P14544081357078211574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n - A321936 (A270061 n).toNat

end

end A048323.P14544081357078211574

/-! ## A048323.P16286881720290794756

`A048336(n)-A340988(A274843(n))`
-/

namespace A048323.P16286881720290794756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n - A340988 ((A274843 n).toNat + 91)

end

end A048323.P16286881720290794756

/-! ## A048323.P12745714409617933674

`A048336(n)-A185284(A108864(n+1))`
-/

namespace A048323.P12745714409617933674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n - A185284 (A108864 (n + 1)).toNat

end

end A048323.P12745714409617933674

/-! ## A048323.P482674436392180680

`eq[A132270(A008619(n)), A297237(n+1)]`
-/

namespace A048323.P482674436392180680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A008619 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048323.P482674436392180680

/-!
# A048324: Numbers whose base-13 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048324, there is no canonical definition to state claims against.
-/

/-! ## A048324.P2489113393786574095

`eq[floor(n/15), A297240(n+1)]`
-/

namespace A048324.P2489113393786574095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 15⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048324.P2489113393786574095

/-! ## A048324.P5066794027627022510

`A048337(n)-A185284(A026797(n+1))`
-/

namespace A048324.P5066794027627022510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 n - A185284 (A026797 (n + 1)).toNat

end

end A048324.P5066794027627022510

/-! ## A048324.P15061005260209923964

`A048337(n)-A010052(A298720(n+1))`
-/

namespace A048324.P15061005260209923964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 n - A010052 (A298720 (n + 1)).toNat

end

end A048324.P15061005260209923964

/-! ## A048324.P11108273419697753083

`A048337(n)+A014436(A048344(n+3))`
-/

namespace A048324.P11108273419697753083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 n + A014436 (A048344 (n + 3)).toNat

end

end A048324.P11108273419697753083

/-!
# A048325: Numbers whose base-14 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048325, there is no canonical definition to state claims against.
-/

/-! ## A048325.P1050670159417898002

`lt[A003602(A043320(n+1)), 8]`
-/

namespace A048325.P1050670159417898002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A043320 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048325.P1050670159417898002

/-! ## A048325.P12594169656399023749

`eq[A054900(n), A297243(n+1)]`
-/

namespace A048325.P12594169656399023749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048325.P12594169656399023749

/-! ## A048325.P15679305805256024140

`eq[and(15, A217558(n)), A297243(n+1)]`
-/

namespace A048325.P15679305805256024140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A217558 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048325.P15679305805256024140

/-! ## A048325.P14351810124574405932

`A048338(n)-A185284(A029053(n))`
-/

namespace A048325.P14351810124574405932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 n - A185284 (A029053 n).toNat

end

end A048325.P14351810124574405932

/-! ## A048325.P48850441187303556

`eq[A002265(A002265(n)), A297243(n+1)]`
-/

namespace A048325.P48850441187303556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048325.P48850441187303556

/-!
# A048326: Numbers whose base-15 expansions, read from left to right, have run lengths that strictly decrease.

The programs for A048326, there is no canonical definition to state claims against.
-/

/-! ## A048326.P2870600876953509422

`record[A056962(A002260(n+1))-1]`
-/

namespace A048326.P2870600876953509422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A002260 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048326.P2870600876953509422

/-! ## A048326.P6229479795818054890

`record[A056962(A195663(n))-1]`
-/

namespace A048326.P6229479795818054890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A195663 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048326.P6229479795818054890

/-! ## A048326.P9213582712601768247

`record[A259361(n²)-A055965(n)]`
-/

namespace A048326.P9213582712601768247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) - A055965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048326.P9213582712601768247

/-! ## A048326.P7057503624900836369

`record[A057428(n)+A196199(n²)+A055964(n)]`
-/

namespace A048326.P7057503624900836369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A196199 (n ^ 2) + A055964 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048326.P7057503624900836369

/-!
# A048327: Reading base-16 expansion from left to right, run lengths strictly decrease.

The programs for A048327, there is no canonical definition to state claims against.
-/

/-! ## A048327.P13525751100428886179

`lt[(n+1)/gcd(17, n), 17]`
-/

namespace A048327.P13525751100428886179
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 17 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A048327.P13525751100428886179

/-! ## A048327.P14297458189255314788

`(n-15*floor((n-1)/15))*(16^floor((n+14)/15)-1)/15-A185284(A322058(n))`
-/

namespace A048327.P14297458189255314788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 15 * ⌊((n : ℤ) - 1 : ℚ) / 15⌋ : ℚ) * (((16 : ℚ) ^ (⌊(n + 14 : ℚ) / 15⌋ : ℤ) - 1) / 15) - (A185284 (A322058 n).toNat : ℚ)

end

end A048327.P14297458189255314788

/-! ## A048327.P11098214651309680704

`(n-15*floor((n-1)/15))*(16^floor((n+14)/15)-1)/15-A054899(A302931(n+1))`
-/

namespace A048327.P11098214651309680704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 15 * ⌊((n : ℤ) - 1 : ℚ) / 15⌋ : ℚ) * (((16 : ℚ) ^ (⌊(n + 14 : ℚ) / 15⌋ : ℤ) - 1) / 15) - (A054899 (A302931 (n + 1)).toNat : ℚ)

end

end A048327.P11098214651309680704

/-! ## A048327.P13604920012066205224

`xor(A048340(n), A185284(A322058(n)))`
-/

namespace A048327.P13604920012066205224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048340 n) (A185284 (A322058 n).toNat)

end

end A048327.P13604920012066205224

/-! ## A048327.P3839571713265061369

`A048340(n)-A031286(A302931(n+1))`
-/

namespace A048327.P3839571713265061369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048340 n - A031286 (A302931 (n + 1)).toNat

end

end A048327.P3839571713265061369

/-!
# A048328: Numbers that are repdigits in base 3.

The programs for A048328, the canonical program `A048328.P17401006693703148193` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048328 has offset 0).

The definition of A048328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048328.P11569817718878821651

`floor(∑[3^floor(n/2)/2])`
-/

namespace A048328.P11569817718878821651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A048328.P11569817718878821651

namespace A048328

/-- `floor(∑[3^floor(n/2)/2])` -/
def P11569817718878821651.Spec : Prop :=
  ∀ n, P11569817718878821651.a n = A048328 n

end A048328

/-! ## A048328.P6403901368146351338

`ogf((x+2x^2)/(1-4x^2+3x^4))`
-/

namespace A048328.P6403901368146351338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -4, 0, 3] n

end

end A048328.P6403901368146351338

namespace A048328

/-- `ogf((x+2x^2)/(1-4x^2+3x^4))` -/
def P6403901368146351338.Spec : Prop :=
  ∀ n, P6403901368146351338.a n = A048328 n

end A048328

/-! ## A048328.P17401006693703148193

`gcd(2, n)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048328

/-- `gcd(2, n)+3*a(n-2)` -/
def P17401006693703148193.Spec : Prop :=
  ∀ n, (P17401006693703148193.a n : ℤ) = A048328 n

theorem P17401006693703148193.correct : P17401006693703148193.Spec := by
  intro n
  simp only [A048328]

end A048328

/-! ## A048328.P2714549949179216781

`∑[(-1)^n+3*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A048328.P2714549949179216781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (-1) ^ n + 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048328.P2714549949179216781

namespace A048328

/-- `∑[(-1)^n+3*a(n-2)]` -/
def P2714549949179216781.Spec : Prop :=
  ∀ n, P2714549949179216781.a n = A048328 n

end A048328

/-! ## A048328.P4377181572660844255

`3*a(n-2)+2-n%2` with `a(0)=0, a(1)=1`
-/

namespace A048328.P4377181572660844255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A048328.P4377181572660844255

namespace A048328

/-- `3*a(n-2)+2-n%2` -/
def P4377181572660844255.Spec : Prop :=
  ∀ n, P4377181572660844255.a n = A048328 n

end A048328

/-! ## A048328.P10681072011509898869

`3*a(n-2)-(a(n-1)%3-3)` with `a(0)=0, a(1)=1`
-/

namespace A048328.P10681072011509898869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) - (Int.tmod (a (n - 1)) 3 - 3)

end

end A048328.P10681072011509898869

namespace A048328

/-- `3*a(n-2)-(a(n-1)%3-3)` -/
def P10681072011509898869.Spec : Prop :=
  ∀ n, P10681072011509898869.a n = A048328 n

end A048328

/-! ## A048328.P4285997051594298350

`∑[A182522(n)-a(n-1)]` with `a(0)=0`
-/

namespace A048328.P4285997051594298350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A182522 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048328.P4285997051594298350

namespace A048328

/-- `∑[A182522(n)-a(n-1)]` -/
def P4285997051594298350.Spec : Prop :=
  ∀ n, P4285997051594298350.a n = A048328 n

end A048328

/-! ## A048328.P10009881648900103327

`∑[A038754(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A048328.P10009881648900103327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A038754 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048328.P10009881648900103327

namespace A048328

/-- `∑[A038754(n-1)-a(n-1)]` -/
def P10009881648900103327.Spec : Prop :=
  ∀ n, P10009881648900103327.a n = A048328 n

end A048328

/-! ## A048328.P16119510126067648074

`A040001(n+1)+A232801(n+1)-2`
-/

namespace A048328.P16119510126067648074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) + (A232801 (n + 1) - 2)

end

end A048328.P16119510126067648074

namespace A048328

/-- `A040001(n+1)+A232801(n+1)-2` -/
def P16119510126067648074.Spec : Prop :=
  ∀ n, P16119510126067648074.a n = A048328 n

end A048328

/-! ## A048328.P9604205989908295412

`A134451(n+1)+A232801(n+1)-2`
-/

namespace A048328.P9604205989908295412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) + (A232801 (n + 1) - 2)

end

end A048328.P9604205989908295412

namespace A048328

/-- `A134451(n+1)+A232801(n+1)-2` -/
def P9604205989908295412.Spec : Prop :=
  ∀ n, P9604205989908295412.a n = A048328 n

end A048328

/-! ## A048328.P236317198423073241

`∑[3*a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A048328.P236317198423073241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A048328.P236317198423073241

namespace A048328

/-- `∑[3*a(n-2)]-a(n-1)` -/
def P236317198423073241.Spec : Prop :=
  ∀ n, P236317198423073241.a n = A048328 n

end A048328

/-! ## A048328.P16040049453330506296

`A181655(n)-A182522(n)`
-/

namespace A048328.P16040049453330506296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 n - A182522 n

end

end A048328.P16040049453330506296

namespace A048328

/-- `A181655(n)-A182522(n)` -/
def P16040049453330506296.Spec : Prop :=
  ∀ n, P16040049453330506296.a n = A048328 n

end A048328

/-! ## A048328.P18231650008477528611

`∪[A003462(n), A024023(n)]`
-/

namespace A048328.P18231650008477528611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048328.P18231650008477528611

namespace A048328

/-- `∪[A003462(n), A024023(n)]` -/
def P18231650008477528611.Spec : Prop :=
  ∀ n, (P18231650008477528611.a n : ℤ) = A048328 n

end A048328

/-! ## A048328.P18150460130523474101

`∪[A003462(n), A103453(n)]`
-/

namespace A048328.P18150460130523474101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048328.P18150460130523474101

namespace A048328

/-- `∪[A003462(n), A103453(n)]` -/
def P18150460130523474101.Spec : Prop :=
  ∀ n, (P18150460130523474101.a n : ℤ) = A048328 n

end A048328

/-! ## A048328.P14824892652773211573

`(A056449(n)-1)/A000034(n)`
-/

namespace A048328.P14824892652773211573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056449 n - 1 : ℚ) / (A000034 n : ℚ)

end

end A048328.P14824892652773211573

namespace A048328

/-- `(A056449(n)-1)/A000034(n)` -/
def P14824892652773211573.Spec : Prop :=
  ∀ n, P14824892652773211573.a n = (A048328 n : ℚ)

end A048328

/-! ## A048328.P1822943922411328548

`(A108411(n+1)-1)/A040001(n+1)`
-/

namespace A048328.P1822943922411328548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108411 (n + 1) - 1 : ℚ) / (A040001 (n + 1) : ℚ)

end

end A048328.P1822943922411328548

namespace A048328

/-- `(A108411(n+1)-1)/A040001(n+1)` -/
def P1822943922411328548.Spec : Prop :=
  ∀ n, P1822943922411328548.a n = (A048328 n : ℚ)

end A048328

/-! ## A048328.P670059442200656184

`round(A038754(n+1)/2)-1`
-/

namespace A048328.P670059442200656184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038754 (n + 1) : ℚ) / 2) - 1

end

end A048328.P670059442200656184

namespace A048328

/-- `round(A038754(n+1)/2)-1` -/
def P670059442200656184.Spec : Prop :=
  ∀ n, P670059442200656184.a n = A048328 n

end A048328

/-! ## A048328.P14573471817477375430

`A038754(n+1)-(A232801(n+1)+1)`
-/

namespace A048328.P14573471817477375430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 1) - (A232801 (n + 1) + 1)

end

end A048328.P14573471817477375430

namespace A048328

/-- `A038754(n+1)-(A232801(n+1)+1)` -/
def P14573471817477375430.Spec : Prop :=
  ∀ n, P14573471817477375430.a n = A048328 n

end A048328

/-! ## A048328.P18300025556846974323

`(A038754(n+1)-A000034(n+1))/2`
-/

namespace A048328.P18300025556846974323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 (n + 1) - A000034 (n + 1) : ℚ) / 2

end

end A048328.P18300025556846974323

namespace A048328

/-- `(A038754(n+1)-A000034(n+1))/2` -/
def P18300025556846974323.Spec : Prop :=
  ∀ n, P18300025556846974323.a n = (A048328 n : ℚ)

end A048328

/-!
# A048329: Numbers that are repdigits in base 4.

The programs for A048329, the canonical program `A048329.P8244295135444855626` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048329 has offset 0).

The definition of A048329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048329.P8244295135444855626

`5*a(n-3)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048329

/-- `5*a(n-3)-4*a(n-6)` -/
def P8244295135444855626.Spec : Prop :=
  ∀ n, P8244295135444855626.a n = A048329 n

theorem P8244295135444855626.correct : P8244295135444855626.Spec := by
  intro n
  simp only [A048329]

end A048329

/-! ## A048329.P13163252144950386980

`∑[A136324(∑[n²%3])]`
-/

namespace A048329.P13163252144950386980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048329.P13163252144950386980

namespace A048329

/-- `∑[A136324(∑[n²%3])]` -/
def P13163252144950386980.Spec : Prop :=
  ∀ n, P13163252144950386980.a n = A048329 n

end A048329

/-! ## A048329.P10230239604860756541

`∑[A136324(n-floor(n/3))]`
-/

namespace A048329.P10230239604860756541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 ((n : ℤ) - ⌊(n : ℚ) / 3⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048329.P10230239604860756541

namespace A048329

/-- `∑[A136324(n-floor(n/3))]` -/
def P10230239604860756541.Spec : Prop :=
  ∀ n, P10230239604860756541.a n = A048329 n

end A048329

/-! ## A048329.P10581468105381932389

`round(∑[4^round(n/3)]/3)`
-/

namespace A048329.P10581468105381932389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A048329.P10581468105381932389

namespace A048329

/-- `round(∑[4^round(n/3)]/3)` -/
def P10581468105381932389.Spec : Prop :=
  ∀ n, P10581468105381932389.a n = A048329 n

end A048329

/-! ## A048329.P9145512452781841809

`floor(A180516(n+3)/3)`
-/

namespace A048329.P9145512452781841809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180516 (n + 3) : ℚ) / 3⌋

end

end A048329.P9145512452781841809

namespace A048329

/-- `floor(A180516(n+3)/3)` -/
def P9145512452781841809.Spec : Prop :=
  ∀ n, P9145512452781841809.a n = A048329 n

end A048329

/-! ## A048329.P17226750225955918795

`record[floor(A052955(n)/3)/A179054(n+1)]`
-/

namespace A048329.P17226750225955918795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A052955 n : ℚ) / 3⌋ : ℚ) / (A179054 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048329.P17226750225955918795

namespace A048329

/-- `record[floor(A052955(n)/3)/A179054(n+1)]` -/
def P17226750225955918795.Spec : Prop :=
  ∀ n, P17226750225955918795.a n = (A048329 n : ℚ)

end A048329

/-! ## A048329.P13353692483899945110

`record[A278755(n)%A287744(n)]`
-/

namespace A048329.P13353692483899945110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278755 n) (A287744 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048329.P13353692483899945110

namespace A048329

/-- `record[A278755(n)%A287744(n)]` -/
def P13353692483899945110.Spec : Prop :=
  ∀ n, P13353692483899945110.a n = A048329 n

end A048329

/-! ## A048329.P17320691005631225839

`record[A002450(A002260(n+1))*A114327(n)]`
-/

namespace A048329.P17320691005631225839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A002260 (n + 1)).toNat * A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048329.P17320691005631225839

namespace A048329

/-- `record[A002450(A002260(n+1))*A114327(n)]` -/
def P17320691005631225839.Spec : Prop :=
  ∀ n, P17320691005631225839.a n = A048329 n

end A048329

/-! ## A048329.P12991430102067022130

`∩[A023746(n+1), A023760(n+1)]`
-/

namespace A048329.P12991430102067022130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048329.P12991430102067022130

namespace A048329

/-- `∩[A023746(n+1), A023760(n+1)]` -/
def P12991430102067022130.Spec : Prop :=
  ∀ n, (P12991430102067022130.a n : ℤ) = A048329 n

end A048329

/-!
# A048330: Numbers that are repdigits in base 5.

The programs for A048330, the canonical program `A048330.P12052110425305804256` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048330 has offset 0).

The definition of A048330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048330.P12052110425305804256

`6*a(n-4)-5*a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=12, a(7)=18`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048330

/-- `6*a(n-4)-5*a(n-8)` -/
def P12052110425305804256.Spec : Prop :=
  ∀ n, P12052110425305804256.a n = A048330 n

theorem P12052110425305804256.correct : P12052110425305804256.Spec := by
  intro n
  simp only [A048330]

end A048330

/-! ## A048330.P14138512736594960640

`round(∑[5^round(n/4)]/4)`
-/

namespace A048330.P14138512736594960640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 4)

end

end A048330.P14138512736594960640

namespace A048330

/-- `round(∑[5^round(n/4)]/4)` -/
def P14138512736594960640.Spec : Prop :=
  ∀ n, P14138512736594960640.a n = A048330 n

end A048330

/-! ## A048330.P6596371451575795551

`floor(A181287(n+4)/4)`
-/

namespace A048330.P6596371451575795551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181287 (n + 4) : ℚ) / 4⌋

end

end A048330.P6596371451575795551

namespace A048330

/-- `floor(A181287(n+4)/4)` -/
def P6596371451575795551.Spec : Prop :=
  ∀ n, P6596371451575795551.a n = A048330 n

end A048330

/-! ## A048330.P1001920218777418961

`record[A023747(n+2)-(A023747(n+1)+1)]`
-/

namespace A048330.P1001920218777418961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 2) - (A023747 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048330.P1001920218777418961

namespace A048330

/-- `record[A023747(n+2)-(A023747(n+1)+1)]` -/
def P1001920218777418961.Spec : Prop :=
  ∀ n, P1001920218777418961.a n = A048330 n

end A048330

/-! ## A048330.P3135106091342777972

`∩[A023747(n+1), A023761(n+1)]`
-/

namespace A048330.P3135106091342777972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048330.P3135106091342777972

namespace A048330

/-- `∩[A023747(n+1), A023761(n+1)]` -/
def P3135106091342777972.Spec : Prop :=
  ∀ n, (P3135106091342777972.a n : ℤ) = A048330 n

end A048330

/-!
# A048331: Numbers that are repdigits in base 6.

The programs for A048331, the canonical program `A048331.P13582580304007175991` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048331 has offset 0).

The definition of A048331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048331.P13582580304007175991

`7*a(n-5)-6*a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7, a(7)=14, a(8)=21, a(9)=28`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048331

/-- `7*a(n-5)-6*a(n-10)` -/
def P13582580304007175991.Spec : Prop :=
  ∀ n, P13582580304007175991.a n = A048331 n

theorem P13582580304007175991.correct : P13582580304007175991.Spec := by
  intro n
  simp only [A048331]

end A048331

/-! ## A048331.P13268079387853885191

`floor(A181288(n+5)/5)`
-/

namespace A048331.P13268079387853885191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181288 (n + 5) : ℚ) / 5⌋

end

end A048331.P13268079387853885191

namespace A048331

/-- `floor(A181288(n+5)/5)` -/
def P13268079387853885191.Spec : Prop :=
  ∀ n, P13268079387853885191.a n = A048331 n

end A048331

/-! ## A048331.P276187871896889289

`∩[A023748(n+1), A023762(n+1)]`
-/

namespace A048331.P276187871896889289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048331.P276187871896889289

namespace A048331

/-- `∩[A023748(n+1), A023762(n+1)]` -/
def P276187871896889289.Spec : Prop :=
  ∀ n, (P276187871896889289.a n : ℤ) = A048331 n

end A048331

/-! ## A048331.P3083040015193373825

`∩[A048303(n), A048317(n)]`
-/

namespace A048331.P3083040015193373825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048331.P3083040015193373825

namespace A048331

/-- `∩[A048303(n), A048317(n)]` -/
def P3083040015193373825.Spec : Prop :=
  ∀ n, (P3083040015193373825.a n : ℤ) = A048331 n

end A048331

/-! ## A048331.P1010848310939888245

`∩[A023748(n+1), A029953(n+1)]`
-/

namespace A048331.P1010848310939888245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048331.P1010848310939888245

namespace A048331

/-- `∩[A023748(n+1), A029953(n+1)]` -/
def P1010848310939888245.Spec : Prop :=
  ∀ n, (P1010848310939888245.a n : ℤ) = A048331 n

end A048331

/-!
# A048332: Numbers that are repdigits in base 7.

The programs for A048332, the canonical program `A048332.P9001297808932519707` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048332 has offset 0).

The definition of A048332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048332.P9001297808932519707

`(n-6*floor((n-1)/6))*(7^floor((n+5)/6)-1)/6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048332

/-- `(n-6*floor((n-1)/6))*(7^floor((n+5)/6)-1)/6` -/
def P9001297808932519707.Spec : Prop :=
  ∀ n, P9001297808932519707.a n = (A048332 n : ℚ)

end A048332

/-! ## A048332.P10388746766550330555

`floor(A181303(n+6)/6)`
-/

namespace A048332.P10388746766550330555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181303 (n + 6) : ℚ) / 6⌋

end

end A048332.P10388746766550330555

namespace A048332

/-- `floor(A181303(n+6)/6)` -/
def P10388746766550330555.Spec : Prop :=
  ∀ n, P10388746766550330555.a n = A048332 n

end A048332

/-! ## A048332.P7305221762123022630

`∩[A023749(n+1), A023763(n+1)]`
-/

namespace A048332.P7305221762123022630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048332.P7305221762123022630

namespace A048332

/-- `∩[A023749(n+1), A023763(n+1)]` -/
def P7305221762123022630.Spec : Prop :=
  ∀ n, (P7305221762123022630.a n : ℤ) = A048332 n

end A048332

/-! ## A048332.P14193793515884396027

`∩[A023749(n+1), A029954(n+1)]`
-/

namespace A048332.P14193793515884396027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048332.P14193793515884396027

namespace A048332

/-- `∩[A023749(n+1), A029954(n+1)]` -/
def P14193793515884396027.Spec : Prop :=
  ∀ n, (P14193793515884396027.a n : ℤ) = A048332 n

end A048332

/-! ## A048332.P11273140175367920106

`∩[A023763(n+1), A029954(n+1)]`
-/

namespace A048332.P11273140175367920106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048332.P11273140175367920106

namespace A048332

/-- `∩[A023763(n+1), A029954(n+1)]` -/
def P11273140175367920106.Spec : Prop :=
  ∀ n, (P11273140175367920106.a n : ℤ) = A048332 n

end A048332

/-! ## A048332.P122606607445758564

`∩[A048304(n), A048318(n)]`
-/

namespace A048332.P122606607445758564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048332.P122606607445758564

namespace A048332

/-- `∩[A048304(n), A048318(n)]` -/
def P122606607445758564.Spec : Prop :=
  ∀ n, (P122606607445758564.a n : ℤ) = A048332 n

end A048332

/-!
# A048333: Numbers that are repdigits in base 8.

The programs for A048333, the canonical program `A048333.P5126713152485106955` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048333 has offset 0).

The definition of A048333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048333.P5126713152485106955

`floor(A165804(n+7)/7)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048333

/-- `floor(A165804(n+7)/7)` -/
def P5126713152485106955.Spec : Prop :=
  ∀ n, P5126713152485106955.a n = A048333 n

theorem P5126713152485106955.correct : P5126713152485106955.Spec := by
  intro n
  simp only [A048333]

end A048333

/-! ## A048333.P1464403331701345304

`∩[A048305(n), A048319(n)]`
-/

namespace A048333.P1464403331701345304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048333.P1464403331701345304

namespace A048333

/-- `∩[A048305(n), A048319(n)]` -/
def P1464403331701345304.Spec : Prop :=
  ∀ n, (P1464403331701345304.a n : ℤ) = A048333 n

end A048333

/-! ## A048333.P3950572909897358572

`∩[A023750(n+1), A029803(n+1)]`
-/

namespace A048333.P3950572909897358572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048333.P3950572909897358572

namespace A048333

/-- `∩[A023750(n+1), A029803(n+1)]` -/
def P3950572909897358572.Spec : Prop :=
  ∀ n, (P3950572909897358572.a n : ℤ) = A048333 n

end A048333

/-! ## A048333.P1951440646973197442

`∩[A023750(n+1), A023764(n+1)]`
-/

namespace A048333.P1951440646973197442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048333.P1951440646973197442

namespace A048333

/-- `∩[A023750(n+1), A023764(n+1)]` -/
def P1951440646973197442.Spec : Prop :=
  ∀ n, (P1951440646973197442.a n : ℤ) = A048333 n

end A048333

/-! ## A048333.P492088824648636627

`∩[A023764(n+1), A029803(n+1)]`
-/

namespace A048333.P492088824648636627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048333.P492088824648636627

namespace A048333

/-- `∩[A023764(n+1), A029803(n+1)]` -/
def P492088824648636627.Spec : Prop :=
  ∀ n, (P492088824648636627.a n : ℤ) = A048333 n

end A048333

/-!
# A048334: Numbers that are repdigits in base 9.

The programs for A048334, there is no canonical definition to state claims against.
-/

/-! ## A048334.P16246690177260155199

`∩[A048306(n), A048320(n)]`
-/

namespace A048334.P16246690177260155199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P16246690177260155199

/-! ## A048334.P14326233565798609264

`∩[A023751(n+1), A029955(n+1)]`
-/

namespace A048334.P14326233565798609264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P14326233565798609264

/-! ## A048334.P630348644136116103

`∩[A023751(n+1), A023765(n+1)]`
-/

namespace A048334.P630348644136116103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P630348644136116103

/-! ## A048334.P13513888399715973699

`∩[A023765(n+1), A029955(n+1)]`
-/

namespace A048334.P13513888399715973699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P13513888399715973699

/-! ## A048334.P3818710947868352454

`∩[A029955(n+1), A048306(n)]`
-/

namespace A048334.P3818710947868352454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P3818710947868352454

/-! ## A048334.P12503100341636597049

`∩[A029955(n+1), A048320(n)]`
-/

namespace A048334.P12503100341636597049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048334.P12503100341636597049

/-!
# A048335: a(n) in base 11 is a repdigit.

The programs for A048335, the canonical program `A048335.P3602139383880494383` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048335 has offset 0).

The definition of A048335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048335.P3602139383880494383

`(n-10*floor((n-1)/10))*(11^floor((n+9)/10)-1)/10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048335

/-- `(n-10*floor((n-1)/10))*(11^floor((n+9)/10)-1)/10` -/
def P3602139383880494383.Spec : Prop :=
  ∀ n, P3602139383880494383.a n = (A048335 n : ℚ)

end A048335

/-! ## A048335.P14918589552100297731

`∩[A048308(n), A048322(n)]`
-/

namespace A048335.P14918589552100297731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P14918589552100297731

namespace A048335

/-- `∩[A048308(n), A048322(n)]` -/
def P14918589552100297731.Spec : Prop :=
  ∀ n, (P14918589552100297731.a n : ℤ) = A048335 n

end A048335

/-! ## A048335.P8087186239694892614

`∩[A029956(n+1), A048308(n)]`
-/

namespace A048335.P8087186239694892614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P8087186239694892614

namespace A048335

/-- `∩[A029956(n+1), A048308(n)]` -/
def P8087186239694892614.Spec : Prop :=
  ∀ n, (P8087186239694892614.a n : ℤ) = A048335 n

end A048335

/-! ## A048335.P2297830834515073765

`∩[A023752(n+1), A029956(n+1)]`
-/

namespace A048335.P2297830834515073765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P2297830834515073765

namespace A048335

/-- `∩[A023752(n+1), A029956(n+1)]` -/
def P2297830834515073765.Spec : Prop :=
  ∀ n, (P2297830834515073765.a n : ℤ) = A048335 n

end A048335

/-! ## A048335.P16521751708913180681

`∩[A023752(n+1), A023766(n+1)]`
-/

namespace A048335.P16521751708913180681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P16521751708913180681

namespace A048335

/-- `∩[A023752(n+1), A023766(n+1)]` -/
def P16521751708913180681.Spec : Prop :=
  ∀ n, (P16521751708913180681.a n : ℤ) = A048335 n

end A048335

/-! ## A048335.P6698676875592058055

`∩[A023766(n+1), A029956(n+1)]`
-/

namespace A048335.P6698676875592058055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P6698676875592058055

namespace A048335

/-- `∩[A023766(n+1), A029956(n+1)]` -/
def P6698676875592058055.Spec : Prop :=
  ∀ n, (P6698676875592058055.a n : ℤ) = A048335 n

end A048335

/-! ## A048335.P14994454818219139012

`∩[A029956(n+1), A048322(n)]`
-/

namespace A048335.P14994454818219139012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048322 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048335.P14994454818219139012

namespace A048335

/-- `∩[A029956(n+1), A048322(n)]` -/
def P14994454818219139012.Spec : Prop :=
  ∀ n, (P14994454818219139012.a n : ℤ) = A048335 n

end A048335

/-!
# A048336: a(n) in base 12 is a repdigit.

The programs for A048336, the canonical program `A048336.P6832829871988977052` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048336 has offset 0).

The definition of A048336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048336.P6832829871988977052

`(n-11*floor((n-1)/11))*(12^floor((n+10)/11)-1)/11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048336

/-- `(n-11*floor((n-1)/11))*(12^floor((n+10)/11)-1)/11` -/
def P6832829871988977052.Spec : Prop :=
  ∀ n, P6832829871988977052.a n = (A048336 n : ℚ)

end A048336

/-! ## A048336.P7355185400779067240

`∩[A048309(n), A048323(n)]`
-/

namespace A048336.P7355185400779067240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P7355185400779067240

namespace A048336

/-- `∩[A048309(n), A048323(n)]` -/
def P7355185400779067240.Spec : Prop :=
  ∀ n, (P7355185400779067240.a n : ℤ) = A048336 n

end A048336

/-! ## A048336.P15771220996787297552

`∩[A029957(n+1), A048309(n)]`
-/

namespace A048336.P15771220996787297552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P15771220996787297552

namespace A048336

/-- `∩[A029957(n+1), A048309(n)]` -/
def P15771220996787297552.Spec : Prop :=
  ∀ n, (P15771220996787297552.a n : ℤ) = A048336 n

end A048336

/-! ## A048336.P18357389916749984617

`∩[A023767(n+1), A029957(n+1)]`
-/

namespace A048336.P18357389916749984617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P18357389916749984617

namespace A048336

/-- `∩[A023767(n+1), A029957(n+1)]` -/
def P18357389916749984617.Spec : Prop :=
  ∀ n, (P18357389916749984617.a n : ℤ) = A048336 n

end A048336

/-! ## A048336.P13147281706138038730

`∩[A029957(n+1), A048323(n)]`
-/

namespace A048336.P13147281706138038730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048323 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P13147281706138038730

namespace A048336

/-- `∩[A029957(n+1), A048323(n)]` -/
def P13147281706138038730.Spec : Prop :=
  ∀ n, (P13147281706138038730.a n : ℤ) = A048336 n

end A048336

/-! ## A048336.P16889256450211927360

`∩[A023753(n+1), A023767(n+1)]`
-/

namespace A048336.P16889256450211927360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P16889256450211927360

namespace A048336

/-- `∩[A023753(n+1), A023767(n+1)]` -/
def P16889256450211927360.Spec : Prop :=
  ∀ n, (P16889256450211927360.a n : ℤ) = A048336 n

end A048336

/-! ## A048336.P11283881889183391180

`∩[A023753(n+1), A029957(n+1)]`
-/

namespace A048336.P11283881889183391180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048336.P11283881889183391180

namespace A048336

/-- `∩[A023753(n+1), A029957(n+1)]` -/
def P11283881889183391180.Spec : Prop :=
  ∀ n, (P11283881889183391180.a n : ℤ) = A048336 n

end A048336

/-!
# A048337: a(n) in base 13 is a repdigit.

The programs for A048337, the canonical program `A048337.P16071426838045791301` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048337 has offset 0).

The definition of A048337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048337.P16071426838045791301

`(n-12*floor((n-1)/12))*(13^floor((n+11)/12)-1)/12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048337

/-- `(n-12*floor((n-1)/12))*(13^floor((n+11)/12)-1)/12` -/
def P16071426838045791301.Spec : Prop :=
  ∀ n, P16071426838045791301.a n = (A048337 n : ℚ)

end A048337

/-! ## A048337.P13201250929879777791

`∩[A048310(n), A048324(n)]`
-/

namespace A048337.P13201250929879777791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048324 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P13201250929879777791

namespace A048337

/-- `∩[A048310(n), A048324(n)]` -/
def P13201250929879777791.Spec : Prop :=
  ∀ n, (P13201250929879777791.a n : ℤ) = A048337 n

end A048337

/-! ## A048337.P16569039770326195258

`∩[A029958(n+1), A048310(n)]`
-/

namespace A048337.P16569039770326195258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P16569039770326195258

namespace A048337

/-- `∩[A029958(n+1), A048310(n)]` -/
def P16569039770326195258.Spec : Prop :=
  ∀ n, (P16569039770326195258.a n : ℤ) = A048337 n

end A048337

/-! ## A048337.P11723881816969867807

`∩[A023768(n+1), A029958(n+1)]`
-/

namespace A048337.P11723881816969867807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P11723881816969867807

namespace A048337

/-- `∩[A023768(n+1), A029958(n+1)]` -/
def P11723881816969867807.Spec : Prop :=
  ∀ n, (P11723881816969867807.a n : ℤ) = A048337 n

end A048337

/-! ## A048337.P5503334695699560595

`∩[A029958(n+1), A048324(n)]`
-/

namespace A048337.P5503334695699560595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048324 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P5503334695699560595

namespace A048337

/-- `∩[A029958(n+1), A048324(n)]` -/
def P5503334695699560595.Spec : Prop :=
  ∀ n, (P5503334695699560595.a n : ℤ) = A048337 n

end A048337

/-! ## A048337.P13646750603637112332

`∩[A023754(n+1), A023768(n+1)]`
-/

namespace A048337.P13646750603637112332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P13646750603637112332

namespace A048337

/-- `∩[A023754(n+1), A023768(n+1)]` -/
def P13646750603637112332.Spec : Prop :=
  ∀ n, (P13646750603637112332.a n : ℤ) = A048337 n

end A048337

/-! ## A048337.P12832795071126390197

`∩[A023754(n+1), A029958(n+1)]`
-/

namespace A048337.P12832795071126390197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048337.P12832795071126390197

namespace A048337

/-- `∩[A023754(n+1), A029958(n+1)]` -/
def P12832795071126390197.Spec : Prop :=
  ∀ n, (P12832795071126390197.a n : ℤ) = A048337 n

end A048337

/-!
# A048338: a(n) in base 14 is a repdigit.

The programs for A048338, the canonical program `A048338.P9722529045157860205` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048338 has offset 0).

The definition of A048338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048338.P9722529045157860205

`(n-13*floor((n-1)/13))*(14^floor((n+12)/13)-1)/13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048338

/-- `(n-13*floor((n-1)/13))*(14^floor((n+12)/13)-1)/13` -/
def P9722529045157860205.Spec : Prop :=
  ∀ n, P9722529045157860205.a n = (A048338 n : ℚ)

end A048338

/-! ## A048338.P14046131235334324184

`∩[A048311(n), A048325(n)]`
-/

namespace A048338.P14046131235334324184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P14046131235334324184

namespace A048338

/-- `∩[A048311(n), A048325(n)]` -/
def P14046131235334324184.Spec : Prop :=
  ∀ n, (P14046131235334324184.a n : ℤ) = A048338 n

end A048338

/-! ## A048338.P5807867967197061661

`∩[A029959(n+1), A048311(n)]`
-/

namespace A048338.P5807867967197061661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048311 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P5807867967197061661

namespace A048338

/-- `∩[A029959(n+1), A048311(n)]` -/
def P5807867967197061661.Spec : Prop :=
  ∀ n, (P5807867967197061661.a n : ℤ) = A048338 n

end A048338

/-! ## A048338.P11988749798322378641

`∩[A029959(n+1), A048325(n)]`
-/

namespace A048338.P11988749798322378641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P11988749798322378641

namespace A048338

/-- `∩[A029959(n+1), A048325(n)]` -/
def P11988749798322378641.Spec : Prop :=
  ∀ n, (P11988749798322378641.a n : ℤ) = A048338 n

end A048338

/-! ## A048338.P8687826727866012162

`∩[A023755(n+1), A029959(n+1)]`
-/

namespace A048338.P8687826727866012162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P8687826727866012162

namespace A048338

/-- `∩[A023755(n+1), A029959(n+1)]` -/
def P8687826727866012162.Spec : Prop :=
  ∀ n, (P8687826727866012162.a n : ℤ) = A048338 n

end A048338

/-! ## A048338.P1660652651758330875

`∩[A023755(n+1), A023769(n+1)]`
-/

namespace A048338.P1660652651758330875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P1660652651758330875

namespace A048338

/-- `∩[A023755(n+1), A023769(n+1)]` -/
def P1660652651758330875.Spec : Prop :=
  ∀ n, (P1660652651758330875.a n : ℤ) = A048338 n

end A048338

/-! ## A048338.P16890770447384472877

`∩[A023769(n+1), A029959(n+1)]`
-/

namespace A048338.P16890770447384472877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048338.P16890770447384472877

namespace A048338

/-- `∩[A023769(n+1), A029959(n+1)]` -/
def P16890770447384472877.Spec : Prop :=
  ∀ n, (P16890770447384472877.a n : ℤ) = A048338 n

end A048338

/-!
# A048339: a(n) in base 15 is a repdigit.

The programs for A048339, the canonical program `A048339.P7942497163645935758` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048339 has offset 0).

The definition of A048339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048339.P7942497163645935758

`(n-14*floor((n-1)/14))*(15^floor((n+13)/14)-1)/14`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048339

/-- `(n-14*floor((n-1)/14))*(15^floor((n+13)/14)-1)/14` -/
def P7942497163645935758.Spec : Prop :=
  ∀ n, P7942497163645935758.a n = (A048339 n : ℚ)

end A048339

/-! ## A048339.P14405996845570720912

`∩[A048312(n), A048326(n)]`
-/

namespace A048339.P14405996845570720912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P14405996845570720912

namespace A048339

/-- `∩[A048312(n), A048326(n)]` -/
def P14405996845570720912.Spec : Prop :=
  ∀ n, (P14405996845570720912.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P11794352652119147618

`∩[A029960(n+1), A048326(n)]`
-/

namespace A048339.P11794352652119147618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P11794352652119147618

namespace A048339

/-- `∩[A029960(n+1), A048326(n)]` -/
def P11794352652119147618.Spec : Prop :=
  ∀ n, (P11794352652119147618.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P3567308157511321685

`∩[A029960(n+1), A048312(n)]`
-/

namespace A048339.P3567308157511321685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P3567308157511321685

namespace A048339

/-- `∩[A029960(n+1), A048312(n)]` -/
def P3567308157511321685.Spec : Prop :=
  ∀ n, (P3567308157511321685.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P12162129991530344527

`∩[A023770(n+1), A029960(n+1)]`
-/

namespace A048339.P12162129991530344527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P12162129991530344527

namespace A048339

/-- `∩[A023770(n+1), A029960(n+1)]` -/
def P12162129991530344527.Spec : Prop :=
  ∀ n, (P12162129991530344527.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P6389896910685850118

`∩[A023756(n+1), A023770(n+1)]`
-/

namespace A048339.P6389896910685850118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P6389896910685850118

namespace A048339

/-- `∩[A023756(n+1), A023770(n+1)]` -/
def P6389896910685850118.Spec : Prop :=
  ∀ n, (P6389896910685850118.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P1302771351958264714

`∩[A023756(n+1), A029960(n+1)]`
-/

namespace A048339.P1302771351958264714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048339.P1302771351958264714

namespace A048339

/-- `∩[A023756(n+1), A029960(n+1)]` -/
def P1302771351958264714.Spec : Prop :=
  ∀ n, (P1302771351958264714.a n : ℤ) = A048339 n

end A048339

/-! ## A048339.P16596668958810731360

`record[n/A043567(n)]`
-/

namespace A048339.P16596668958810731360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A043567 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048339.P16596668958810731360

namespace A048339

/-- `record[n/A043567(n)]` -/
def P16596668958810731360.Spec : Prop :=
  ∀ n, P16596668958810731360.a n = (A048339 n : ℚ)

end A048339

/-! ## A048339.P11051658390047030928

`eq[1, A043567(n)]`
-/

namespace A048339.P11051658390047030928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048339.P11051658390047030928

namespace A048339

/-- `eq[1, A043567(n)]` -/
def P11051658390047030928.Spec : Prop :=
  ∀ n, (P11051658390047030928.a n : ℤ) = A048339 n

end A048339

/-!
# A048340: a(n) in base 16 is a repdigit.

The programs for A048340, the canonical program `A048340.P7680277296927564045` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048340 has offset 0).

The definition of A048340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048340.P7680277296927564045

`(n-15*floor((n-1)/15))*(16^floor((n+14)/15)-1)/15`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048340

/-- `(n-15*floor((n-1)/15))*(16^floor((n+14)/15)-1)/15` -/
def P7680277296927564045.Spec : Prop :=
  ∀ n, P7680277296927564045.a n = (A048340 n : ℚ)

end A048340

/-! ## A048340.P11265935763506526346

`∩[A029730(n+1), A048313(n)]`
-/

namespace A048340.P11265935763506526346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P11265935763506526346

namespace A048340

/-- `∩[A029730(n+1), A048313(n)]` -/
def P11265935763506526346.Spec : Prop :=
  ∀ n, (P11265935763506526346.a n : ℤ) = A048340 n

end A048340

/-! ## A048340.P17136398795625484481

`∩[A048313(n), A048327(n)]`
-/

namespace A048340.P17136398795625484481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048327 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P17136398795625484481

namespace A048340

/-- `∩[A048313(n), A048327(n)]` -/
def P17136398795625484481.Spec : Prop :=
  ∀ n, (P17136398795625484481.a n : ℤ) = A048340 n

end A048340

/-! ## A048340.P4103919420064982242

`∩[A023771(n+1), A029730(n+1)]`
-/

namespace A048340.P4103919420064982242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P4103919420064982242

namespace A048340

/-- `∩[A023771(n+1), A029730(n+1)]` -/
def P4103919420064982242.Spec : Prop :=
  ∀ n, (P4103919420064982242.a n : ℤ) = A048340 n

end A048340

/-! ## A048340.P284049532535060610

`∩[A029730(n+1), A048327(n)]`
-/

namespace A048340.P284049532535060610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048327 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P284049532535060610

namespace A048340

/-- `∩[A029730(n+1), A048327(n)]` -/
def P284049532535060610.Spec : Prop :=
  ∀ n, (P284049532535060610.a n : ℤ) = A048340 n

end A048340

/-! ## A048340.P1498900795343879780

`∩[A023757(n+1), A023771(n+1)]`
-/

namespace A048340.P1498900795343879780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P1498900795343879780

namespace A048340

/-- `∩[A023757(n+1), A023771(n+1)]` -/
def P1498900795343879780.Spec : Prop :=
  ∀ n, (P1498900795343879780.a n : ℤ) = A048340 n

end A048340

/-! ## A048340.P8839132684692997426

`∩[A023757(n+1), A029730(n+1)]`
-/

namespace A048340.P8839132684692997426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048340.P8839132684692997426

namespace A048340

/-- `∩[A023757(n+1), A029730(n+1)]` -/
def P8839132684692997426.Spec : Prop :=
  ∀ n, (P8839132684692997426.a n : ℤ) = A048340 n

end A048340

/-!
# A048342: Numbers k such that the concatenation of the numbers 1, 2, ..., k is squarefree.

The programs for A048342, there is no canonical definition to state claims against.
-/

/-! ## A048342.P12208591830266897891

`comp[A050675(n+1)-1]+1`
-/

namespace A048342.P12208591830266897891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050675 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A048342.P12208591830266897891

/-! ## A048342.P14406456659360482843

`eq[char[A050675(n+1)], A151933(n)]`
-/

namespace A048342.P14406456659360482843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A048342.P14406456659360482843

/-! ## A048342.P15679921752551431574

`lt[Δ[A087319(2*n+5)], 18]`
-/

namespace A048342.P15679921752551431574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087319 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A048342.P15679921752551431574

/-! ## A048342.P7151394872026273824

`eq[A040753(n), A375732(n)]`
-/

namespace A048342.P7151394872026273824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048342.P7151394872026273824

/-! ## A048342.P5665353392997889492

`∑[gcd(A281976(n), A350250(3*n+1))]`
-/

namespace A048342.P5665353392997889492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281976 n) (A350250 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048342.P5665353392997889492

/-!
# A048344: a(n) * a(n)_reversed is a palindrome (and a(n) is not palindromic).

The programs for A048344, there is no canonical definition to state claims against.
-/

/-! ## A048344.P8371748958240748707

`∩[A035123(n+1), A062936(n+1)]`
-/

namespace A048344.P8371748958240748707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048344.P8371748958240748707

/-! ## A048344.P2686361664853503177

`∩[A062936(n+1), A140212(n+1)]`
-/

namespace A048344.P2686361664853503177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048344.P2686361664853503177

/-! ## A048344.P15694375070585239970

`∩[A062936(n+1), A065206(n+1)]`
-/

namespace A048344.P15694375070585239970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048344.P15694375070585239970

/-! ## A048344.P11723204681880622753

`∩[A029742(n+1), A062936(n+1)]`
-/

namespace A048344.P11723204681880622753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048344.P11723204681880622753

/-! ## A048344.P10949188698811819925

`A378398(A005179(n+1))+A007089(3*(n+1))`
-/

namespace A048344.P10949188698811819925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378398 (A005179 (n + 1)).toNat + A007089 (3 * (n + 1))

end

end A048344.P10949188698811819925

/-!
# A048345: a(n)^2 is the smallest square containing exactly n 0's.

The programs for A048345, the canonical program `A048345.P4768351451435926752` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048345 has offset 1).

The definition of A048345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048345.P4768351451435926752

`10*a(n-2)` with `a(0)=0, a(1)=10, a(2)=320`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048345

/-- `10*a(n-2)` -/
def P4768351451435926752.Spec : Prop :=
  ∀ n, (P4768351451435926752.a n : ℤ) = A048345 (n + 1)

theorem P4768351451435926752.correct : P4768351451435926752.Spec := by
  intro n
  simp only [A048345, Nat.add_sub_cancel]

end A048345

/-! ## A048345.P5688353671078366115

`sqrt(A036507(n+1))`
-/

namespace A048345.P5688353671078366115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036507 (n + 1) : ℝ)

end

end A048345.P5688353671078366115

namespace A048345

/-- `sqrt(A036507(n+1))` -/
def P5688353671078366115.Spec : Prop :=
  ∀ n, P5688353671078366115.a n = (A048345 (n + 1) : ℝ)

end A048345

/-! ## A048345.P14125154467279671191

`A036507(n+1)^(A057427(3*n+1)/2)`
-/

namespace A048345.P14125154467279671191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036507 (n + 1) : ℝ) ^ ((A057427 (3 * n + 1) : ℚ) / 2 : ℝ)

end

end A048345.P14125154467279671191

namespace A048345

/-- `A036507(n+1)^(A057427(3*n+1)/2)` -/
def P14125154467279671191.Spec : Prop :=
  ∀ n, P14125154467279671191.a n = (A048345 (n + 1) : ℝ)

end A048345

/-! ## A048345.P7621910472491031105

`A036507(n+1)^2^A008683(A020484(n))`
-/

namespace A048345.P7621910472491031105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036507 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A048345.P7621910472491031105

namespace A048345

/-- `A036507(n+1)^2^A008683(A020484(n))` -/
def P7621910472491031105.Spec : Prop :=
  ∀ n, P7621910472491031105.a n = (A048345 (n + 1) : ℝ)

end A048345

/-!
# A048346: a(n)^2 is the smallest square containing exactly n 1's in its decimal notation.

The programs for A048346, there is no canonical definition to state claims against.
-/

/-! ## A048346.P7245039373292362785

`A138468(10^n)+ceil(sin(n)²)`
-/

namespace A048346.P7245039373292362785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138468 (10 ^ n) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A048346.P7245039373292362785

/-!
# A048347: a(n)^2 is the smallest square containing exactly n 2's.

The programs for A048347, there is no canonical definition to state claims against.
-/

/-! ## A048347.P14998725902385719020

`sqrt(A036509(n+1))`
-/

namespace A048347.P14998725902385719020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036509 (n + 1) : ℝ)

end

end A048347.P14998725902385719020

/-! ## A048347.P10424451140467579793

`root(A036509(n+1), p?[A025452(n)])`
-/

namespace A048347.P10424451140467579793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036509 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048347.P10424451140467579793

/-! ## A048347.P9170747686763900206

`root(A036509(n+1), p?[A193238(n)])`
-/

namespace A048347.P9170747686763900206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036509 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048347.P9170747686763900206

/-! ## A048347.P6983481604682185108

`root(A036509(n+1), 2)*A007318(∑[n])`
-/

namespace A048347.P6983481604682185108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036509 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A048347.P6983481604682185108

/-!
# A048348: a(n)^2 is the smallest square containing exactly n 3's.

The programs for A048348, there is no canonical definition to state claims against.
-/

/-! ## A048348.P16871862663044961777

`sqrt(A036510(n+1))`
-/

namespace A048348.P16871862663044961777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036510 (n + 1) : ℝ)

end

end A048348.P16871862663044961777

/-! ## A048348.P4756675753668527842

`root(A036510(n+1), p?[A025452(n)])`
-/

namespace A048348.P4756675753668527842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036510 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048348.P4756675753668527842

/-! ## A048348.P17400728424973722608

`root(A036510(n+1), p?[A048766(n)])`
-/

namespace A048348.P17400728424973722608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036510 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048348.P17400728424973722608

/-! ## A048348.P8527352692178601313

`root(A036510(n+1), 2%A036509(n+1))`
-/

namespace A048348.P8527352692178601313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036510 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A048348.P8527352692178601313

/-! ## A048348.P10512787343447613963

`root(A036510(n+1), A001316(A001316(n)))`
-/

namespace A048348.P10512787343447613963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036510 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A048348.P10512787343447613963

/-!
# A048349: a(n)^2 is the smallest square containing exactly n 4's.

The programs for A048349, there is no canonical definition to state claims against.
-/

/-! ## A048349.P484449638485317848

`sqrt(A036511(n+1))`
-/

namespace A048349.P484449638485317848
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036511 (n + 1) : ℝ)

end

end A048349.P484449638485317848

/-! ## A048349.P16214088063521885680

`root(A036511(n+1), p?[A025452(n)])`
-/

namespace A048349.P16214088063521885680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036511 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048349.P16214088063521885680

/-! ## A048349.P17909553395644929461

`root(A036511(n+1), 2%A036509(n+1))`
-/

namespace A048349.P17909553395644929461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036511 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A048349.P17909553395644929461

/-! ## A048349.P18237286612099418458

`root(A036511(n+1), A306240(A306240(n)))`
-/

namespace A048349.P18237286612099418458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036511 (n + 1) : ℝ) ^ (1 / (A306240 (A306240 n).toNat : ℝ))

end

end A048349.P18237286612099418458

/-! ## A048349.P6839350285880334055

`A036511(n+1)^(A019426(A212595(n))/2)`
-/

namespace A048349.P6839350285880334055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036511 (n + 1) : ℝ) ^ ((A019426 (A212595 (n + 10)).toNat : ℚ) / 2 : ℝ)

end

end A048349.P6839350285880334055

/-!
# A048350: a(n)^2 is the smallest square containing exactly n 5's.

The programs for A048350, there is no canonical definition to state claims against.
-/

/-! ## A048350.P6946548222793644950

`sqrt(A036512(n+1))`
-/

namespace A048350.P6946548222793644950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036512 (n + 1) : ℝ)

end

end A048350.P6946548222793644950

/-! ## A048350.P11585798907264231895

`root(A036512(n+1), p?[A025452(n)])`
-/

namespace A048350.P11585798907264231895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036512 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048350.P11585798907264231895

/-! ## A048350.P12816462956444248140

`root(A036512(n+1), p?[A048766(n)])`
-/

namespace A048350.P12816462956444248140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036512 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048350.P12816462956444248140

/-! ## A048350.P1751003279876539762

`root(A036512(n+1), 2%A055983(n))`
-/

namespace A048350.P1751003279876539762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036512 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A055983 n) : ℝ))

end

end A048350.P1751003279876539762

/-! ## A048350.P2831899943290827960

`root(A036512(n+1), p?[A342846(n+1)])`
-/

namespace A048350.P2831899943290827960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036512 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048350.P2831899943290827960

/-!
# A048351: a(n)^2 is the smallest square containing exactly n 6's.

The programs for A048351, there is no canonical definition to state claims against.
-/

/-! ## A048351.P3714975761528248912

`sqrt(A036513(n+1))`
-/

namespace A048351.P3714975761528248912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036513 (n + 1) : ℝ)

end

end A048351.P3714975761528248912

/-! ## A048351.P5549822475797366641

`root(A036513(n+1), p?[A025452(n)])`
-/

namespace A048351.P5549822475797366641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036513 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048351.P5549822475797366641

/-! ## A048351.P10837422954654777320

`root(A036513(n+1), 2%A055983(n))`
-/

namespace A048351.P10837422954654777320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036513 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A055983 n) : ℝ))

end

end A048351.P10837422954654777320

/-! ## A048351.P14890609349151444205

`root(A036513(n+1), p?[A342846(n+1)])`
-/

namespace A048351.P14890609349151444205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036513 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048351.P14890609349151444205

/-! ## A048351.P18085757349867018156

`root(A036513(n+1), gcd(2, A048345(n+1)))`
-/

namespace A048351.P18085757349867018156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036513 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A048345 (n + 1)) : ℝ))

end

end A048351.P18085757349867018156

/-!
# A048352: a(n)^2 is the smallest square containing exactly n 7's.

The programs for A048352, there is no canonical definition to state claims against.
-/

/-! ## A048352.P1161876845694579722

`sqrt(A036514(n+1))`
-/

namespace A048352.P1161876845694579722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036514 (n + 1) : ℝ)

end

end A048352.P1161876845694579722

/-! ## A048352.P11844520839975477740

`root(A036514(n+1), p?[A025452(n)])`
-/

namespace A048352.P11844520839975477740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036514 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048352.P11844520839975477740

/-! ## A048352.P782006758546041406

`root(A036514(n+1), p?[A048766(n)])`
-/

namespace A048352.P782006758546041406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036514 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048352.P782006758546041406

/-! ## A048352.P11770707103223776626

`root(A036514(n+1), A185284(n)+2)`
-/

namespace A048352.P11770707103223776626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036514 (n + 1) : ℝ) ^ (1 / (A185284 n + 2 : ℝ))

end

end A048352.P11770707103223776626

/-! ## A048352.P16733999925385750603

`root(A036514(n+1), gcd(2, A022093(n)))`
-/

namespace A048352.P16733999925385750603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036514 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A022093 n) : ℝ))

end

end A048352.P16733999925385750603

/-!
# A048353: a(n)^2 is the smallest square containing exactly n 8's.

The programs for A048353, there is no canonical definition to state claims against.
-/

/-! ## A048353.P13507831432077336067

`sqrt(A036515(n+1))`
-/

namespace A048353.P13507831432077336067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036515 (n + 1) : ℝ)

end

end A048353.P13507831432077336067

/-! ## A048353.P12563591385737497771

`root(A036515(n+1), p?[A025452(n)])`
-/

namespace A048353.P12563591385737497771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036515 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048353.P12563591385737497771

/-! ## A048353.P11458294883920691236

`root(A036515(n+1), p?[A035172(n+1)])`
-/

namespace A048353.P11458294883920691236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036515 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048353.P11458294883920691236

/-! ## A048353.P14643197646064646132

`root(A036515(n+1), A290105(n+1)+1)`
-/

namespace A048353.P14643197646064646132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036515 (n + 1) : ℝ) ^ (1 / (A290105 (n + 1) + 1 : ℝ))

end

end A048353.P14643197646064646132

/-! ## A048353.P8911021440080562467

`root(A036515(n+1), 2%A036509(n+1))`
-/

namespace A048353.P8911021440080562467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036515 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A048353.P8911021440080562467

/-!
# A048354: a(n)^2 is the smallest square containing exactly n 9's.

The programs for A048354, there is no canonical definition to state claims against.
-/

/-! ## A048354.P1082849382619909326

`sqrt(A036516(n+1))`
-/

namespace A048354.P1082849382619909326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036516 (n + 1) : ℝ)

end

end A048354.P1082849382619909326

/-! ## A048354.P14345728149225642803

`root(A036516(n+1), p?[A025452(n)])`
-/

namespace A048354.P14345728149225642803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036516 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048354.P14345728149225642803

/-! ## A048354.P6350482068322929701

`root(A036516(n+1), p?[A048766(n)])`
-/

namespace A048354.P6350482068322929701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036516 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048354.P6350482068322929701

/-! ## A048354.P1353335434372493482

`root(A036516(n+1), p?[A037804(n+1)])`
-/

namespace A048354.P1353335434372493482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036516 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A048354.P1353335434372493482

/-! ## A048354.P13773219947449785834

`root(A036516(n+1), 2%A036509(n+1))`
-/

namespace A048354.P13773219947449785834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036516 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A036509 (n + 1)) : ℝ))

end

end A048354.P13773219947449785834

/-!
# A048355: a(n) is the index of the smallest triangular number containing exactly n 0's.

The programs for A048355, there is no canonical definition to state claims against.
-/

/-! ## A048355.P1325480041486477463

`floor(sqrt(2*A036517(n+1)))`
-/

namespace A048355.P1325480041486477463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036517 (n + 1))

end

end A048355.P1325480041486477463

/-! ## A048355.P5191016280168277418

`round(sqrt(2*A036517(2*n-(n-1))))`
-/

namespace A048355.P5191016280168277418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A036517 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ))

end

end A048355.P5191016280168277418

/-! ## A048355.P283943935390163143

`round(sqrt(2*A036517(n+1)))%A035835(n)`
-/

namespace A048355.P283943935390163143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A036517 (n + 1) : ℝ))) (A035835 n)

end

end A048355.P283943935390163143

/-!
# A048356: a(n) is the index of the smallest triangular number containing exactly n 1's.

The programs for A048356, there is no canonical definition to state claims against.
-/

/-! ## A048356.P13759778188873347100

`floor(sqrt(2*A036518(n+1)))`
-/

namespace A048356.P13759778188873347100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036518 (n + 1))

end

end A048356.P13759778188873347100

/-!
# A048357: a(n) is the index of the smallest triangular number containing exactly n 2's.

The programs for A048357, there is no canonical definition to state claims against.
-/

/-! ## A048357.P9591002862659751648

`floor(sqrt(2*A036519(n+1)))`
-/

namespace A048357.P9591002862659751648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036519 (n + 1))

end

end A048357.P9591002862659751648

/-!
# A048358: a(n) is the index of the smallest triangular number containing exactly n 3's.

The programs for A048358, there is no canonical definition to state claims against.
-/

/-! ## A048358.P4561455585745272125

`floor(sqrt(2*A036520(n+1)))`
-/

namespace A048358.P4561455585745272125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036520 (n + 1))

end

end A048358.P4561455585745272125

/-!
# A048359: a(n) is the index of the smallest triangular number containing exactly n 4's.

The programs for A048359, there is no canonical definition to state claims against.
-/

/-! ## A048359.P4645979144151587570

`floor(sqrt(2*A036521(n+1)))`
-/

namespace A048359.P4645979144151587570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036521 (n + 1))

end

end A048359.P4645979144151587570

/-! ## A048359.P5889085892725483615

`ceil(sqrt(2*A036521(n+1))-A010894(n)!)`
-/

namespace A048359.P5889085892725483615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A036521 (n + 1) : ℝ) - (Nat.factorial (A010894 (n + 21)).toNat : ℝ)⌉

end

end A048359.P5889085892725483615

/-!
# A048360: a(n) is the index of the smallest triangular number containing exactly n 5's.

The programs for A048360, there is no canonical definition to state claims against.
-/

/-! ## A048360.P12696691080040934358

`floor(sqrt(2*A036522(n+1)))`
-/

namespace A048360.P12696691080040934358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036522 (n + 1))

end

end A048360.P12696691080040934358

/-!
# A048361: a(n) is the index of the smallest triangular number containing exactly n 6's.

The programs for A048361, there is no canonical definition to state claims against.
-/

/-! ## A048361.P10809332549760012021

`round(sqrt(2*A036523(n+1)))`
-/

namespace A048361.P10809332549760012021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A036523 (n + 1) : ℝ))

end

end A048361.P10809332549760012021

/-!
# A048362: a(n) is the index of the smallest triangular number containing exactly n 7's.

The programs for A048362, there is no canonical definition to state claims against.
-/

/-! ## A048362.P10917931210975867923

`floor(sqrt(2*A036524(n+1)))`
-/

namespace A048362.P10917931210975867923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036524 (n + 1))

end

end A048362.P10917931210975867923

/-!
# A048363: a(n) is the index of the smallest triangular number containing exactly n 8's.

The programs for A048363, there is no canonical definition to state claims against.
-/

/-! ## A048363.P3798217334878228262

`floor(sqrt(2*A036525(n+1)))`
-/

namespace A048363.P3798217334878228262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036525 (n + 1))

end

end A048363.P3798217334878228262

/-!
# A048364: a(n) is the index of the smallest triangular number containing exactly n 9's.

The programs for A048364, there is no canonical definition to state claims against.
-/

/-! ## A048364.P3242969402395892411

`floor(sqrt(2*A036526(n+1)))`
-/

namespace A048364.P3242969402395892411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A036526 (n + 1))

end

end A048364.P3242969402395892411

/-!
# A048365: a(n)^3 is smallest cube containing exactly n 0's.

The programs for A048365, there is no canonical definition to state claims against.
-/

/-! ## A048365.P17585444759602982645

`A036527(n)^(1/3)`
-/

namespace A048365.P17585444759602982645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036527 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A048365.P17585444759602982645

/-!
# A048366: a(n)^3 is smallest cube containing exactly n 1's.

The programs for A048366, there is no canonical definition to state claims against.
-/

/-! ## A048366.P3404635350802400878

`root(A036528(n+1), 3)`
-/

namespace A048366.P3404635350802400878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036528 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048366.P3404635350802400878

/-!
# A048367: a(n)^3 is smallest cube containing exactly n 2's.

The programs for A048367, there is no canonical definition to state claims against.
-/

/-! ## A048367.P7300644714827339148

`root(A036529(n+1), 3)`
-/

namespace A048367.P7300644714827339148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036529 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048367.P7300644714827339148

/-!
# A048368: a(n)^3 is smallest cube containing exactly n 3's.

The programs for A048368, there is no canonical definition to state claims against.
-/

/-! ## A048368.P4665207394873798822

`root(A036530(n+1), 3)`
-/

namespace A048368.P4665207394873798822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036530 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048368.P4665207394873798822

/-!
# A048369: a(n)^3 is smallest cube containing exactly n 4's.

The programs for A048369, there is no canonical definition to state claims against.
-/

/-! ## A048369.P13512723550758220328

`root(A036531(n+1), 3)`
-/

namespace A048369.P13512723550758220328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036531 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048369.P13512723550758220328

/-!
# A048370: a(n)^3 is smallest cube containing exactly n 5's.

The programs for A048370, there is no canonical definition to state claims against.
-/

/-! ## A048370.P479411133185162631

`root(A036532(n+1), 3)`
-/

namespace A048370.P479411133185162631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036532 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048370.P479411133185162631

/-!
# A048371: a(n)^3 is smallest cube containing exactly n 6's.

The programs for A048371, there is no canonical definition to state claims against.
-/

/-! ## A048371.P3291188743077484322

`root(A036533(n+1), 3)`
-/

namespace A048371.P3291188743077484322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036533 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048371.P3291188743077484322

/-!
# A048372: a(n)^3 is smallest cube containing exactly n 7's.

The programs for A048372, there is no canonical definition to state claims against.
-/

/-! ## A048372.P5332959339526495606

`root(A036534(n+1), 3)`
-/

namespace A048372.P5332959339526495606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036534 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048372.P5332959339526495606

/-!
# A048373: a(n)^3 is smallest cube containing exactly n 8's.

The programs for A048373, there is no canonical definition to state claims against.
-/

/-! ## A048373.P9257814911750325326

`root(A036535(n+1), 3)`
-/

namespace A048373.P9257814911750325326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036535 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048373.P9257814911750325326

/-!
# A048374: a(n)^3 is the smallest cube containing exactly n 9's.

The programs for A048374, there is no canonical definition to state claims against.
-/

/-! ## A048374.P3045048697296845326

`root(A036536(n+1), 3)`
-/

namespace A048374.P3045048697296845326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036536 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A048374.P3045048697296845326

/-!
# A048375: Numbers whose square is a concatenation of two nonzero squares.

The programs for A048375, there is no canonical definition to state claims against.
-/

/-! ## A048375.P6901999476879974009

`sqrt(A039686(n+1))`
-/

namespace A048375.P6901999476879974009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A039686 (n + 1) : ℝ)

end

end A048375.P6901999476879974009

/-! ## A048375.P970295497924500615

`root(A039686(n+1), 2%A062124(n))`
-/

namespace A048375.P970295497924500615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A062124 n) : ℝ))

end

end A048375.P970295497924500615

/-! ## A048375.P8403767873754233345

`root(A039686(n+1), gcd(2, A000038(n)))`
-/

namespace A048375.P8403767873754233345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A000038 n) : ℝ))

end

end A048375.P8403767873754233345

/-! ## A048375.P2853523010556117314

`root(A039686(n+1), A016789(n)%3)`
-/

namespace A048375.P2853523010556117314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ (1 / (Int.tmod (A016789 n) 3 : ℝ))

end

end A048375.P2853523010556117314

/-! ## A048375.P10910145777183705755

`root(A039686(n+1), A001316(A001316(n)))`
-/

namespace A048375.P10910145777183705755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A048375.P10910145777183705755

/-! ## A048375.P13756873752531010975

`A039686(n+1)^(A010051(p?[A191933(n+1)])/2)`
-/

namespace A048375.P13756873752531010975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191933 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ ((A010051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2 : ℝ)

end

end A048375.P13756873752531010975

/-! ## A048375.P16669562247740936015

`A039686(n+1)^(A010052(A000290(n))/2)`
-/

namespace A048375.P16669562247740936015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ ((A010052 (A000290 n).toNat : ℚ) / 2 : ℝ)

end

end A048375.P16669562247740936015

/-! ## A048375.P7443125219217999735

`A039686(n+1)^(A010051(A048646(n+1))/2)`
-/

namespace A048375.P7443125219217999735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039686 (n + 1) : ℝ) ^ ((A010051 (A048646 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A048375.P7443125219217999735

/-!
# A048376: Replace each 1 in decimal expansion of n with 1 1's, each 2 with 2 2's, etc. (0 vanishes).

The programs for A048376, there is no canonical definition to state claims against.
-/

/-! ## A048376.P16608409993824276664

`A056967(A044836(n+1))`
-/

namespace A048376.P16608409993824276664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A044836 (n + 1)).toNat

end

end A048376.P16608409993824276664

/-! ## A048376.P5278587368116547093

`A056967(A338754(n+1))`
-/

namespace A048376.P5278587368116547093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A338754 (n + 1)).toNat

end

end A048376.P5278587368116547093

/-!
# A048377: Append d digits d after each digit d in decimal expansion of n.

The programs for A048377, there is no canonical definition to state claims against.
-/

/-! ## A048377.P446942669898521925

`n*∑[10^n]^(a(floor(n/10))+1)` with `a(0)=0`
-/

namespace A048377.P446942669898521925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ (a ⌊(n : ℚ) / 10⌋.toNat + 1)

end

end A048377.P446942669898521925

/-! ## A048377.P14547438601477530807

`lcm(n, ∑[10^n]^(a(floor(n/10))+1))` with `a(0)=0`
-/

namespace A048377.P14547438601477530807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm n ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (a ⌊(n : ℚ) / 10⌋.toNat + 1))

end

end A048377.P14547438601477530807

/-! ## A048377.P13224674730484142754

`n*A099821(2^n)`
-/

namespace A048377.P13224674730484142754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099821 (2 ^ n)

end

end A048377.P13224674730484142754

/-! ## A048377.P15728835641457126586

`n*A127303(Δ[n²])`
-/

namespace A048377.P15728835641457126586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A127303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A048377.P15728835641457126586

/-!
# A048378: Divisible by the concatenation of its first digit-differences (leading zeros allowed).

The programs for A048378, there is no canonical definition to state claims against.
-/

/-! ## A048378.P10273484386386368925

`A052126(89*A338640(n+1))`
-/

namespace A048378.P10273484386386368925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (89 * A338640 (n + 1)).toNat

end

end A048378.P10273484386386368925

/-! ## A048378.P8453354426932781033

`A141760(A152714(n))*A338640(n+1)`
-/

namespace A048378.P8453354426932781033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141760 (A152714 n).toNat * A338640 (n + 1)

end

end A048378.P8453354426932781033

/-! ## A048378.P10896153725722578346

`A338640(n+1)+A000038(A270300(n+1))`
-/

namespace A048378.P10896153725722578346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338640 (n + 1) + A000038 (A270300 (n + 1)).toNat

end

end A048378.P10896153725722578346

/-! ## A048378.P8738019310221309085

`A391503(A005897(n+1))+A338640(n+1)`
-/

namespace A048378.P8738019310221309085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391503 (A005897 (n + 1)).toNat + A338640 (n + 1)

end

end A048378.P8738019310221309085

/-! ## A048378.P11100444385027627817

`A338640(n+1)+A132440(A353389(n+1))`
-/

namespace A048378.P11100444385027627817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338640 (n + 1) + A132440 (A353389 (n + 1)).toNat

end

end A048378.P11100444385027627817

/-!
# A048379: Apply the transformation 0->1->2->3->4->5->6->7->8->9->0 to digits of n.

The programs for A048379, there is no canonical definition to state claims against.
-/

/-! ## A048379.P18437390686155047479

`A055120(A061601(n))`
-/

namespace A048379.P18437390686155047479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A061601 n).toNat

end

end A048379.P18437390686155047479

/-! ## A048379.P2788667584037705487

`A055120(A178914(n)-1)`
-/

namespace A048379.P2788667584037705487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A178914 n - 1).toNat

end

end A048379.P2788667584037705487

/-! ## A048379.P17605659852845880713

`A055120(10^A055642(n)-(n+1))`
-/

namespace A048379.P17605659852845880713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A055642 n : ℤ) - (n + 1 : ℚ))).toNat

end

end A048379.P17605659852845880713

/-! ## A048379.P16276690758474532731

`A055120(A111708(n)/(n+1)-n)`
-/

namespace A048379.P16276690758474532731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (SequenceMachineLib.roundAway ((A111708 n : ℚ) / (n + 1 : ℚ) - (n : ℚ))).toNat

end

end A048379.P16276690758474532731

/-! ## A048379.P11145506890945114120

`A055120(∏{digits}[n, A340085(#+1)+9]-(n+1))`
-/

namespace A048379.P11145506890945114120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A340085 (x + 1) + 9).prod - (n + 1 : ℤ)).toNat

end

end A048379.P11145506890945114120

/-! ## A048379.P4854075572816793768

`A055120(∏{digits}[n, A161114(#+1)+10]-(n+1))`
-/

namespace A048379.P4854075572816793768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A161114 (x + 1) + 10).prod - (n + 1 : ℤ)).toNat

end

end A048379.P4854075572816793768

/-! ## A048379.P5394877721897509957

`A055120(A267193(n)-A056965(n))`
-/

namespace A048379.P5394877721897509957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A267193 n - A056965 n).toNat

end

end A048379.P5394877721897509957

/-! ## A048379.P15512427855864674512

`A055120(A089186(n+1))%A017221(A167831(n))`
-/

namespace A048379.P15512427855864674512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055120 (A089186 (n + 1)).toNat) (A017221 (A167831 n).toNat)

end

end A048379.P15512427855864674512

/-!
# A048380: Digits d in decimal expansion of n replaced with d-th prime (replacing each 0 digit with a 1).

The programs for A048380, there is no canonical definition to state claims against.
-/

/-! ## A048380.P828757545850324331

`A106647(A329147(n))`
-/

namespace A048380.P828757545850324331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 (A329147 n).toNat

end

end A048380.P828757545850324331

/-! ## A048380.P9066221677033894042

`A329147(n)+A014029(n²)`
-/

namespace A048380.P9066221677033894042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n + A014029 (n ^ 2)

end

end A048380.P9066221677033894042

/-! ## A048380.P15328452375064283744

`or(A059841(n²), A329147(n))`
-/

namespace A048380.P15328452375064283744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (n ^ 2)) (A329147 n)

end

end A048380.P15328452375064283744

/-! ## A048380.P5957335635501825323

`A329147(n)+A055641(A056142(n))`
-/

namespace A048380.P5957335635501825323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n + A055641 (A056142 n).toNat

end

end A048380.P5957335635501825323

/-! ## A048380.P2583838567096895563

`A329147(n)+A055641(A056143(n))`
-/

namespace A048380.P2583838567096895563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n + A055641 (A056143 n).toNat

end

end A048380.P2583838567096895563

/-! ## A048380.P13165988472159919911

`A329147(n)+A055641(A181352(n))`
-/

namespace A048380.P13165988472159919911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329147 n + A055641 (A181352 n).toNat

end

end A048380.P13165988472159919911

/-! ## A048380.P1882828389949943424

`or(A000035(A117619(n)), A329147(n))`
-/

namespace A048380.P1882828389949943424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A117619 n).toNat) (A329147 n)

end

end A048380.P1882828389949943424

/-! ## A048380.P11036653269228927290

`xor(A014029(A118759(n)²), A329147(n))`
-/

namespace A048380.P11036653269228927290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014029 (A118759 n ^ 2).toNat) (A329147 n)

end

end A048380.P11036653269228927290

/-! ## A048380.P1473442130502154854

`A329147(n)+A055641(n)^A028326(n)`
-/

namespace A048380.P1473442130502154854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329147 n : ℚ) + (A055641 n : ℚ) ^ (A028326 n : ℤ)

end

end A048380.P1473442130502154854

/-! ## A048380.P2090224742463660749

`or(A055641(n)^A164844(n), A329147(n))`
-/

namespace A048380.P2090224742463660749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A055641 n : ℚ) ^ (A164844 n : ℤ))) (A329147 n)

end

end A048380.P2090224742463660749

/-! ## A048380.P9516827897579174975

`xor(A055641(n)^A078197(n), A329147(n))`
-/

namespace A048380.P9516827897579174975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A055641 n : ℚ) ^ (A078197 n : ℤ))) (A329147 n)

end

end A048380.P9516827897579174975

/-! ## A048380.P12968071776066771964

`A329147(n)+A055641(n)^A011540(n+1)`
-/

namespace A048380.P12968071776066771964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329147 n : ℚ) + (A055641 n : ℚ) ^ (A011540 (n + 1) : ℤ)

end

end A048380.P12968071776066771964

/-! ## A048380.P14959556876121984979

`A329147(n)+A055641(n)^A049102(n+1)`
-/

namespace A048380.P14959556876121984979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329147 n : ℚ) + (A055641 n : ℚ) ^ (A049102 (n + 1) : ℤ)

end

end A048380.P14959556876121984979

/-!
# A048381: Numbers k such that replacing each nonzero digit d with the d-th prime (replacing each 0 digit with a 1) yields a prime.

The programs for A048381, there is no canonical definition to state claims against.
-/

/-! ## A048381.P12788030532829189771

`eq[1, A001222(A048380(n))]`
-/

namespace A048381.P12788030532829189771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048381.P12788030532829189771

/-! ## A048381.P6599783996407037368

`lt[A178503(n+1), A020639(A048380(n))]`
-/

namespace A048381.P6599783996407037368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048381.P6599783996407037368

/-! ## A048381.P14323318610762156106

`eq[A000005(A048380(n)), A020639(2*(n+2))]`
-/

namespace A048381.P14323318610762156106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048381.P14323318610762156106

/-! ## A048381.P17728741358036449491

`lt[A010051(3*(n+1)), A010051(A048380(n))]`
-/

namespace A048381.P17728741358036449491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048381.P17728741358036449491

/-! ## A048381.P9123492525979629941

`eq[A000038(n), A005171(A048380(n))]`
-/

namespace A048381.P9123492525979629941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048381.P9123492525979629941

/-! ## A048381.P17144178049642281433

`eq[A000007(3*n+4), A300228(A048380(n))]`
-/

namespace A048381.P17144178049642281433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300228 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048381.P17144178049642281433

/-! ## A048381.P7438542864991542470

`lt[A239968(A048380(n)), A051801(n)]`
-/

namespace A048381.P7438542864991542470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A048380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048381.P7438542864991542470

/-! ## A048381.P6067751439494944344

`lt[A239968(A048380(n)), A001222(n+1)]`
-/

namespace A048381.P6067751439494944344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A048380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048381.P6067751439494944344

/-! ## A048381.P16112238985988063021

`lt[A239968(A048380(n)), A322996(2*n)]`
-/

namespace A048381.P16112238985988063021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A048380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048381.P16112238985988063021

/-!
# A048382: Primes resulting from procedure described in A048381.

The programs for A048382, there is no canonical definition to state claims against.
-/

/-! ## A048382.P4079932043934150547

`A048380(A048381(n+1))`
-/

namespace A048382.P4079932043934150547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (A048381 (n + 1)).toNat

end

end A048382.P4079932043934150547

/-! ## A048382.P11438359563195253655

`p?[A048380(n)]`
-/

namespace A048382.P11438359563195253655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048382.P11438359563195253655

/-! ## A048382.P10780366831682265204

`filter[A048380(n), A010051(#)]`
-/

namespace A048382.P10780366831682265204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A048382.P10780366831682265204

/-! ## A048382.P17461211954788155928

`filter[A048380(n+1), A380467(#)]`
-/

namespace A048382.P17461211954788155928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A048382.P17461211954788155928

/-! ## A048382.P12091598552659118251

`filter[A048380(n), A323153(#)]`
-/

namespace A048382.P12091598552659118251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A048382.P12091598552659118251

/-! ## A048382.P13641390033843111356

`filter[A048380(n+1), A323152(#)]`
-/

namespace A048382.P13641390033843111356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A048382.P13641390033843111356

/-! ## A048382.P8720319925869772799

`filter[A048380(n+1), A080339(#)]`
-/

namespace A048382.P8720319925869772799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A048382.P8720319925869772799

/-!
# A048384: Squares resulting from procedure described in A048383.

The programs for A048384, there is no canonical definition to state claims against.
-/

/-! ## A048384.P18432484995113907508

`A048380(A048383(n+1))`
-/

namespace A048384.P18432484995113907508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048380 (A048383 (n + 1)).toNat

end

end A048384.P18432484995113907508

/-! ## A048384.P10045424853692592286

`or(A010690(n), A329147(A048383(n+1)))`
-/

namespace A048384.P10045424853692592286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010690 n) (A329147 (A048383 (n + 1)).toNat)

end

end A048384.P10045424853692592286

/-! ## A048384.P1828860717697996698

`or(A274391(n), A329147(A048383(n+1)))`
-/

namespace A048384.P1828860717697996698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A274391 n) (A329147 (A048383 (n + 1)).toNat)

end

end A048384.P1828860717697996698

/-!
# A048386: Numbers n such that replacing digits d in decimal expansion of n with d^2 yields a square.

The programs for A048386, there is no canonical definition to state claims against.
-/

/-! ## A048386.P11455790895466113340

`eq[A018796(A048385(n)), A048385(n)]`
-/

namespace A048386.P11455790895466113340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A048385 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048386.P11455790895466113340

/-! ## A048386.P17248313580048200766

`eq[1, A169695(A048385(n))]`
-/

namespace A048386.P17248313580048200766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048386.P17248313580048200766

/-! ## A048386.P18326829525719359047

`eq[A002828(A048385(n)), A057427(n)]`
-/

namespace A048386.P18326829525719359047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A048385 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048386.P18326829525719359047

/-! ## A048386.P11945785591680675356

`lt[A025426(n), A000122(A048385(n))]`
-/

namespace A048386.P11945785591680675356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048386.P11945785591680675356

/-!
# A048387: Squares resulting from procedure described in A048386.

The programs for A048387, there is no canonical definition to state claims against.
-/

/-! ## A048387.P10121295249874064355

`A048385(A048386(n+1))`
-/

namespace A048387.P10121295249874064355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A048386 (n + 1)).toNat

end

end A048387.P10121295249874064355

/-! ## A048387.P12762420352151834232

`filter[A048385(n), A010052(#)]`
-/

namespace A048387.P12762420352151834232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A048387.P12762420352151834232

/-! ## A048387.P4332538661755615514

`filter[A048385(n), A093709(#)]`
-/

namespace A048387.P4332538661755615514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093709 (f1 j).toNat = 1) n)

end

end A048387.P4332538661755615514

/-! ## A048387.P6030691610701376986

`filter[A048385(n), A195198(#)]`
-/

namespace A048387.P6030691610701376986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A195198 (f1 j).toNat = 1) n)

end

end A048387.P6030691610701376986

/-! ## A048387.P16664443510388205097

`(A267320(A000217(n))%14)²`
-/

namespace A048387.P16664443510388205097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267320 (A000217 n).toNat) 14 ^ 2

end

end A048387.P16664443510388205097

/-!
# A048388: Replacing digits d in decimal expansion of n with d^2 yields a prime.

The programs for A048388, there is no canonical definition to state claims against.
-/

/-! ## A048388.P5203880157933509577

`eq[2, A077462(A048385(n))]`
-/

namespace A048388.P5203880157933509577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048388.P5203880157933509577

/-! ## A048388.P7455776862177225466

`eq[2, A000005(A048385(n+1))]+1`
-/

namespace A048388.P7455776862177225466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048388.P7455776862177225466

/-! ## A048388.P8582521529948075847

`eq[-A010167(n), A107393(A048385(n))]`
-/

namespace A048388.P8582521529948075847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048388.P8582521529948075847

/-! ## A048388.P17129320118351813647

`eq[-A010170(n), A107393(A048385(n))]`
-/

namespace A048388.P17129320118351813647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048388.P17129320118351813647

/-! ## A048388.P3252444144780517397

`eq[A036453(n+1), A256750(A048385(n))]`
-/

namespace A048388.P3252444144780517397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A048385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048388.P3252444144780517397

/-!
# A048389: Primes resulting from procedure described in A048388.

The programs for A048389, there is no canonical definition to state claims against.
-/

/-! ## A048389.P10037083359686309507

`A048385(A048388(n+1))`
-/

namespace A048389.P10037083359686309507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A048388 (n + 1)).toNat

end

end A048389.P10037083359686309507

/-! ## A048389.P1064402746997620719

`p?[A048385(n)]`
-/

namespace A048389.P1064402746997620719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048389.P1064402746997620719

/-! ## A048389.P8062329684034410476

`A048385(eq[1, ∑{e}[A048385(n), #]])`
-/

namespace A048389.P8062329684034410476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A048389.P8062329684034410476

/-! ## A048389.P7606685412070440814

`filter[A048385(n+1), A010051(#)]`
-/

namespace A048389.P7606685412070440814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A048389.P7606685412070440814

/-! ## A048389.P1953047582292762008

`filter[A048385(2*n+1), A379969(#)]`
-/

namespace A048389.P1953047582292762008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A048389.P1953047582292762008

/-! ## A048389.P7377022599690612923

`filter[A048385(n+2), A323152(#)]`
-/

namespace A048389.P7377022599690612923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A048389.P7377022599690612923

/-! ## A048389.P12693850527998815768

`filter[A048385(n+2), A323153(#)]`
-/

namespace A048389.P12693850527998815768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A048389.P12693850527998815768

/-! ## A048389.P15700983241568428759

`filter[A048385(2*n+1), A342460(#)]`
-/

namespace A048389.P15700983241568428759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A048389.P15700983241568428759

/-! ## A048389.P7898142850849438836

`filter[A048385(2*n+1), A353670(#)]`
-/

namespace A048389.P7898142850849438836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A048389.P7898142850849438836

/-! ## A048389.P5775482432944350240

`A048385(eq[2, A256750(A048385(n))])`
-/

namespace A048389.P5775482432944350240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A048385 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048389.P5775482432944350240

/-!
# A048390: Digits d in decimal expansion of n replaced with d^3.

The programs for A048390, there is no canonical definition to state claims against.
-/

/-! ## A048390.P7096975580865959738

`n^gcd(3, A099999(n+1))`
-/

namespace A048390.P7096975580865959738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 3 (A099999 (n + 1))

end

end A048390.P7096975580865959738

/-! ## A048390.P965293541319340201

`n^A064353(3*2^n-2)`
-/

namespace A048390.P965293541319340201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A064353 (3 * 2 ^ n - 2) : ℤ)

end

end A048390.P965293541319340201

/-! ## A048390.P13215356592317160075

`n^A036584(A185293(n))`
-/

namespace A048390.P13215356592317160075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A036584 (A185293 n).toNat : ℤ)

end

end A048390.P13215356592317160075

/-! ## A048390.P3624015739379888712

`n^A120992(A110138(n))`
-/

namespace A048390.P3624015739379888712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A120992 (A110138 n).toNat : ℤ)

end

end A048390.P3624015739379888712

/-! ## A048390.P17884152354361619482

`n^A188645(A064696(n))`
-/

namespace A048390.P17884152354361619482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A188645 (A064696 n).toNat : ℤ)

end

end A048390.P17884152354361619482

/-!
# A048392: Squares resulting from procedure described in A048391.

The programs for A048392, there is no canonical definition to state claims against.
-/

/-! ## A048392.P15955738087715660777

`A048390(A048391(n+1))`
-/

namespace A048392.P15955738087715660777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (A048391 (n + 1)).toNat

end

end A048392.P15955738087715660777

/-! ## A048392.P2491760930237224394

`A048390(record[A048391(gcd(xor(1, n²), ∑[n]))])`
-/

namespace A048392.P2491760930237224394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048391 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048392.P2491760930237224394

/-! ## A048392.P11068692619145443144

`A048390(record[A048391(∏{digits}[n, gcd(#, #!²)])])`
-/

namespace A048392.P11068692619145443144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048391 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048392.P11068692619145443144

/-!
# A048393: Replacing digits d in decimal expansion of n with d^3 yields a prime.

The programs for A048393, there is no canonical definition to state claims against.
-/

/-! ## A048393.P509398259483218915

`p?[A274384(n+1)+n+5]`
-/

namespace A048393.P509398259483218915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (n + 1) + (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048393.P509398259483218915

/-! ## A048393.P11306231686987151628

`p?[A195170(n)+A028950(n)]`
-/

namespace A048393.P11306231686987151628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 n + A028950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048393.P11306231686987151628

/-!
# A048394: Primes resulting from procedure described in A048393.

The programs for A048394, there is no canonical definition to state claims against.
-/

/-! ## A048394.P865821272324184977

`A048390(A048393(n+1))`
-/

namespace A048394.P865821272324184977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (A048393 (n + 1)).toNat

end

end A048394.P865821272324184977

/-! ## A048394.P14903205183884973651

`A048390(record[A048393(gcd(xor(1, n²), ∑[n]))])`
-/

namespace A048394.P14903205183884973651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048393 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048394.P14903205183884973651

/-! ## A048394.P4884006912465717527

`p?[A048390(n)]`
-/

namespace A048394.P4884006912465717527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048394.P4884006912465717527

/-! ## A048394.P18362541919756462468

`A006530(p?[A277047(n+1)])`
-/

namespace A048394.P18362541919756462468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048394.P18362541919756462468

/-!
# A048395: Sum of consecutive nonsquares.

The programs for A048395, the canonical program `A048395.P7031608050998074081` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048395 has offset 0).

The definition of A048395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048395.P7031608050998074081

`n*(1+2*n*(1+n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048395

/-- `n*(1+2*n*(1+n))` -/
def P7031608050998074081.Spec : Prop :=
  ∀ n, (P7031608050998074081.a n : ℤ) = A048395 n

theorem P7031608050998074081.correct : P7031608050998074081.Spec := by
  intro n
  simp only [A048395]

end A048395

/-! ## A048395.P17067186488225059022

`lcm(n, or(1, ∑[4*n]))`
-/

namespace A048395.P17067186488225059022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A048395.P17067186488225059022

namespace A048395

/-- `lcm(n, or(1, ∑[4*n]))` -/
def P17067186488225059022.Spec : Prop :=
  ∀ n, (P17067186488225059022.a n : ℤ) = A048395 n

end A048395

/-! ## A048395.P10467298351215811052

`Δ[C(n², 2)]-n²`
-/

namespace A048395.P10467298351215811052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 2 : ℤ)

end

end A048395.P10467298351215811052

namespace A048395

/-- `Δ[C(n², 2)]-n²` -/
def P10467298351215811052.Spec : Prop :=
  ∀ n, P10467298351215811052.a n = A048395 n

end A048395

/-! ## A048395.P16115428952008809155

`floor(n*xor(3, Δ[n²]²)/2)`
-/

namespace A048395.P16115428952008809155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Int.xor 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2)⌋

end

end A048395.P16115428952008809155

namespace A048395

/-- `floor(n*xor(3, Δ[n²]²)/2)` -/
def P16115428952008809155.Spec : Prop :=
  ∀ n, P16115428952008809155.a n = A048395 n

end A048395

/-! ## A048395.P16188549650198270594

`round(n*xor(3, Δ[n²]²)/2)`
-/

namespace A048395.P16188549650198270594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((Int.xor 3 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℚ) / 2))

end

end A048395.P16188549650198270594

namespace A048395

/-- `round(n*xor(3, Δ[n²]²)/2)` -/
def P16188549650198270594.Spec : Prop :=
  ∀ n, P16188549650198270594.a n = A048395 n

end A048395

/-! ## A048395.P16779904226167123682

`lcm(∑[2*n], Δ[n²])-n²`
-/

namespace A048395.P16779904226167123682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℤ) - (n ^ 2 : ℤ)

end

end A048395.P16779904226167123682

namespace A048395

/-- `lcm(∑[2*n], Δ[n²])-n²` -/
def P16779904226167123682.Spec : Prop :=
  ∀ n, P16779904226167123682.a n = A048395 n

end A048395

/-! ## A048395.P8627545905554719863

`2*n*or(1, ∑[2*n])-n`
-/

namespace A048395.P8627545905554719863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A048395.P8627545905554719863

namespace A048395

/-- `2*n*or(1, ∑[2*n])-n` -/
def P8627545905554719863.Spec : Prop :=
  ∀ n, P8627545905554719863.a n = A048395 n

end A048395

/-! ## A048395.P13224660888391040372

`2*n*xor(1, ∑[2*n])-n`
-/

namespace A048395.P13224660888391040372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A048395.P13224660888391040372

namespace A048395

/-- `2*n*xor(1, ∑[2*n])-n` -/
def P13224660888391040372.Spec : Prop :=
  ∀ n, P13224660888391040372.a n = A048395 n

end A048395

/-! ## A048395.P17464941238185890958

`n-n*∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A048395.P17464941238185890958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048395.P17464941238185890958

namespace A048395

/-- `n-n*∑[a(n-1)-4]` -/
def P17464941238185890958.Spec : Prop :=
  ∀ n, P17464941238185890958.a n = A048395 n

end A048395

/-! ## A048395.P17340344613666352644

`C((n+1)²+n², 2)/(n+1)`
-/

namespace A048395.P17340344613666352644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2 + n ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A048395.P17340344613666352644

namespace A048395

/-- `C((n+1)²+n², 2)/(n+1)` -/
def P17340344613666352644.Spec : Prop :=
  ∀ n, P17340344613666352644.a n = (A048395 n : ℚ)

end A048395

/-! ## A048395.P12526075689868533673

`lcm(n, A001844(n))`
-/

namespace A048395.P12526075689868533673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A001844 n)

end

end A048395.P12526075689868533673

namespace A048395

/-- `lcm(n, A001844(n))` -/
def P12526075689868533673.Spec : Prop :=
  ∀ n, (P12526075689868533673.a n : ℤ) = A048395 n

end A048395

/-! ## A048395.P12386116442344317749

`A055112(n)-n²`
-/

namespace A048395.P12386116442344317749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n - (n ^ 2 : ℤ)

end

end A048395.P12386116442344317749

namespace A048395

/-- `A055112(n)-n²` -/
def P12386116442344317749.Spec : Prop :=
  ∀ n, P12386116442344317749.a n = A048395 n

end A048395

/-! ## A048395.P18402122858754815688

`∑[A033579(n)]+n`
-/

namespace A048395.P18402122858754815688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A048395.P18402122858754815688

namespace A048395

/-- `∑[A033579(n)]+n` -/
def P18402122858754815688.Spec : Prop :=
  ∀ n, P18402122858754815688.a n = A048395 n

end A048395

/-! ## A048395.P6691463015659753800

`A181617(n+1)+n`
-/

namespace A048395.P6691463015659753800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) + (n : ℤ)

end

end A048395.P6691463015659753800

namespace A048395

/-- `A181617(n+1)+n` -/
def P6691463015659753800.Spec : Prop :=
  ∀ n, P6691463015659753800.a n = A048395 n

end A048395

/-! ## A048395.P16626253965933233793

`A155120(n)+2-n`
-/

namespace A048395.P16626253965933233793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155120 n + (2 - (n : ℤ))

end

end A048395.P16626253965933233793

namespace A048395

/-- `A155120(n)+2-n` -/
def P16626253965933233793.Spec : Prop :=
  ∀ n, P16626253965933233793.a n = A048395 n

end A048395

/-! ## A048395.P12910044399857261265

`2*A011379(n)+n`
-/

namespace A048395.P12910044399857261265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011379 n + (n : ℤ)

end

end A048395.P12910044399857261265

namespace A048395

/-- `2*A011379(n)+n` -/
def P12910044399857261265.Spec : Prop :=
  ∀ n, P12910044399857261265.a n = A048395 n

end A048395

/-! ## A048395.P6059843743383763672

`2*A027444(n)-n`
-/

namespace A048395.P6059843743383763672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027444 n - (n : ℤ)

end

end A048395.P6059843743383763672

namespace A048395

/-- `2*A027444(n)-n` -/
def P6059843743383763672.Spec : Prop :=
  ∀ n, P6059843743383763672.a n = A048395 n

end A048395

/-! ## A048395.P1891268252581569897

`(A084367(n)+n)/2`
-/

namespace A048395.P1891268252581569897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084367 n + (n : ℤ) : ℚ) / 2

end

end A048395.P1891268252581569897

namespace A048395

/-- `(A084367(n)+n)/2` -/
def P1891268252581569897.Spec : Prop :=
  ∀ n, P1891268252581569897.a n = (A048395 n : ℚ)

end A048395

/-! ## A048395.P4935409294403120590

`4*A002411(n)+n`
-/

namespace A048395.P4935409294403120590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002411 n + (n : ℤ)

end

end A048395.P4935409294403120590

namespace A048395

/-- `4*A002411(n)+n` -/
def P4935409294403120590.Spec : Prop :=
  ∀ n, P4935409294403120590.a n = A048395 n

end A048395

/-! ## A048395.P2149741998940753541

`n*A046092(n)+n`
-/

namespace A048395.P2149741998940753541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046092 n + (n : ℤ)

end

end A048395.P2149741998940753541

namespace A048395

/-- `n*A046092(n)+n` -/
def P2149741998940753541.Spec : Prop :=
  ∀ n, P2149741998940753541.a n = A048395 n

end A048395

/-!
# A048396: Sums of consecutive noncubes.

The programs for A048396, the canonical program `A048396.P4772092292423368636` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048396 has offset 0).

The definition of A048396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048396.P4772092292423368636

`(6*n^5+15*n^4+18*n^3+12*n²+3*n)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048396

/-- `(6*n^5+15*n^4+18*n^3+12*n²+3*n)/2` -/
def P4772092292423368636.Spec : Prop :=
  ∀ n, P4772092292423368636.a n = (A048396 n : ℚ)

end A048396

/-! ## A048396.P1493059618963272136

`Δ[A085743(n)]+n^3`
-/

namespace A048396.P1493059618963272136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 3 : ℤ)

end

end A048396.P1493059618963272136

namespace A048396

/-- `Δ[A085743(n)]+n^3` -/
def P1493059618963272136.Spec : Prop :=
  ∀ n, P1493059618963272136.a n = A048396 n

end A048396

/-! ## A048396.P17459391236063742298

`A005898(n)*A045943(n)`
-/

namespace A048396.P17459391236063742298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n * A045943 n

end

end A048396.P17459391236063742298

namespace A048396

/-- `A005898(n)*A045943(n)` -/
def P17459391236063742298.Spec : Prop :=
  ∀ n, P17459391236063742298.a n = A048396 n

end A048396

/-! ## A048396.P17192994296596212373

`A016945(n)*A110450(n)`
-/

namespace A048396.P17192994296596212373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A110450 n

end

end A048396.P17192994296596212373

namespace A048396

/-- `A016945(n)*A110450(n)` -/
def P17192994296596212373.Spec : Prop :=
  ∀ n, P17192994296596212373.a n = A048396 n

end A048396

/-! ## A048396.P7459697683756725634

`A000578(n)+Δ[A085743(n)]`
-/

namespace A048396.P7459697683756725634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (f1 (n + 1) - f1 n)

end

end A048396.P7459697683756725634

namespace A048396

/-- `A000578(n)+Δ[A085743(n)]` -/
def P7459697683756725634.Spec : Prop :=
  ∀ n, P7459697683756725634.a n = A048396 n

end A048396

/-! ## A048396.P14487367160194646013

`A085744(n+1)-A071232(n)`
-/

namespace A048396.P14487367160194646013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n + 1) - A071232 n

end

end A048396.P14487367160194646013

namespace A048396

/-- `A085744(n+1)-A071232(n)` -/
def P14487367160194646013.Spec : Prop :=
  ∀ n, P14487367160194646013.a n = A048396 n

end A048396

/-! ## A048396.P4470038840657964702

`(A147656(n)+A081435(n))*A045943(n)`
-/

namespace A048396.P4470038840657964702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147656 n + A081435 n) * A045943 n

end

end A048396.P4470038840657964702

namespace A048396

/-- `(A147656(n)+A081435(n))*A045943(n)` -/
def P4470038840657964702.Spec : Prop :=
  ∀ n, P4470038840657964702.a n = A048396 n

end A048396

/-! ## A048396.P16545845412959822352

`(A081437(n)-A081436(n))*A005898(n)`
-/

namespace A048396.P16545845412959822352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081437 n - A081436 n) * A005898 n

end

end A048396.P16545845412959822352

namespace A048396

/-- `(A081437(n)-A081436(n))*A005898(n)` -/
def P16545845412959822352.Spec : Prop :=
  ∀ n, P16545845412959822352.a n = A048396 n

end A048396

/-! ## A048396.P441773772340725178

`A085744(n+1)-(A085744(n)+A000578(n))`
-/

namespace A048396.P441773772340725178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n + 1) - (A085744 n + A000578 n)

end

end A048396.P441773772340725178

namespace A048396

/-- `A085744(n+1)-(A085744(n)+A000578(n))` -/
def P441773772340725178.Spec : Prop :=
  ∀ n, P441773772340725178.a n = A048396 n

end A048396

/-! ## A048396.P1864928853179622385

`A085744(n+1)+A085744(n)-A001014(n)`
-/

namespace A048396.P1864928853179622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085744 (n + 1) + (A085744 n - A001014 n)

end

end A048396.P1864928853179622385

namespace A048396

/-- `A085744(n+1)+A085744(n)-A001014(n)` -/
def P1864928853179622385.Spec : Prop :=
  ∀ n, P1864928853179622385.a n = A048396 n

end A048396

/-! ## A048396.P15206985572274336196

`(A000578(n+1)+A000578(n))*A045943(n)`
-/

namespace A048396.P15206985572274336196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) + A000578 n) * A045943 n

end

end A048396.P15206985572274336196

namespace A048396

/-- `(A000578(n+1)+A000578(n))*A045943(n)` -/
def P15206985572274336196.Spec : Prop :=
  ∀ n, P15206985572274336196.a n = A048396 n

end A048396

/-! ## A048396.P3669070355188199081

`A005448(n+1)*A005898(n)-A005898(n)`
-/

namespace A048396.P3669070355188199081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1) * A005898 n - A005898 n

end

end A048396.P3669070355188199081

namespace A048396

/-- `A005448(n+1)*A005898(n)-A005898(n)` -/
def P3669070355188199081.Spec : Prop :=
  ∀ n, P3669070355188199081.a n = A048396 n

end A048396

/-! ## A048396.P12334533535353144304

`A071232(n+1)-(A071232(n)+A000578(n+1))`
-/

namespace A048396.P12334533535353144304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071232 (n + 1) - (A071232 n + A000578 (n + 1))

end

end A048396.P12334533535353144304

namespace A048396

/-- `A071232(n+1)-(A071232(n)+A000578(n+1))` -/
def P12334533535353144304.Spec : Prop :=
  ∀ n, P12334533535353144304.a n = A048396 n

end A048396

/-! ## A048396.P12022462728247928730

`A001014(n+1)-(A071232(n+1)+A071232(n))`
-/

namespace A048396.P12022462728247928730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1) - (A071232 (n + 1) + A071232 n)

end

end A048396.P12022462728247928730

namespace A048396

/-- `A001014(n+1)-(A071232(n+1)+A071232(n))` -/
def P12022462728247928730.Spec : Prop :=
  ∀ n, P12022462728247928730.a n = A048396 n

end A048396

/-! ## A048396.P7238531566826609652

`∑[A304726(2*n)-A304726(n)]`
-/

namespace A048396.P7238531566826609652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 (2 * n) - A304726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048396.P7238531566826609652

namespace A048396

/-- `∑[A304726(2*n)-A304726(n)]` -/
def P7238531566826609652.Spec : Prop :=
  ∀ n, P7238531566826609652.a n = A048396 n

end A048396

/-! ## A048396.P889176701883770518

`(2*n+1)*A195319(A000217(n))`
-/

namespace A048396.P889176701883770518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A195319 (A000217 n).toNat

end

end A048396.P889176701883770518

namespace A048396

/-- `(2*n+1)*A195319(A000217(n))` -/
def P889176701883770518.Spec : Prop :=
  ∀ n, P889176701883770518.a n = A048396 n

end A048396

/-! ## A048396.P4384742249031212299

`∑[3*A135705(n²)]`
-/

namespace A048396.P4384742249031212299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A135705 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048396.P4384742249031212299

namespace A048396

/-- `∑[3*A135705(n²)]` -/
def P4384742249031212299.Spec : Prop :=
  ∀ n, P4384742249031212299.a n = A048396 n

end A048396

/-! ## A048396.P6646403998340478898

`(2*n+1)*A045943(A002378(n))`
-/

namespace A048396.P6646403998340478898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A045943 (A002378 n).toNat

end

end A048396.P6646403998340478898

namespace A048396

/-- `(2*n+1)*A045943(A002378(n))` -/
def P6646403998340478898.Spec : Prop :=
  ∀ n, P6646403998340478898.a n = A048396 n

end A048396

/-! ## A048396.P15356571223457627583

`(2*n+1)*A045943(A002620(2*n+1))`
-/

namespace A048396.P15356571223457627583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A045943 (A002620 (2 * n + 1)).toNat

end

end A048396.P15356571223457627583

namespace A048396

/-- `(2*n+1)*A045943(A002620(2*n+1))` -/
def P15356571223457627583.Spec : Prop :=
  ∀ n, P15356571223457627583.a n = A048396 n

end A048396

/-! ## A048396.P13966325142755550009

`(2*n+1)*A045943(A198442(2*n+1))`
-/

namespace A048396.P13966325142755550009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A045943 (A198442 (2 * n + 1)).toNat

end

end A048396.P13966325142755550009

namespace A048396

/-- `(2*n+1)*A045943(A198442(2*n+1))` -/
def P13966325142755550009.Spec : Prop :=
  ∀ n, P13966325142755550009.a n = A048396 n

end A048396

/-!
# A048397: Sum of consecutive non-fourth-powers.

The programs for A048397, the canonical program `A048397.P11995188931553273154` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048397 has offset 0).

The definition of A048397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048397.P3217542835300749249

`(A022524(n)-A008514(n))/2`
-/

namespace A048397.P3217542835300749249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022524 n - A008514 n : ℚ) / 2

end

end A048397.P3217542835300749249

namespace A048397

/-- `(A022524(n)-A008514(n))/2` -/
def P3217542835300749249.Spec : Prop :=
  ∀ n, P3217542835300749249.a n = (A048397 n : ℚ)

end A048397

/-! ## A048397.P11995188931553273154

`(A005898(n)-(n+1))*A008514(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048397

/-- `(A005898(n)-(n+1))*A008514(n)` -/
def P11995188931553273154.Spec : Prop :=
  ∀ n, P11995188931553273154.a n = A048397 n

theorem P11995188931553273154.correct : P11995188931553273154.Spec := by
  intro n
  simp only [A048397]

end A048397

/-! ## A048397.P9122802081956132336

`Δ[A071231(n)]-(n+1)^4`
-/

namespace A048397.P9122802081956132336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 1) ^ 4 : ℤ)

end

end A048397.P9122802081956132336

namespace A048397

/-- `Δ[A071231(n)]-(n+1)^4` -/
def P9122802081956132336.Spec : Prop :=
  ∀ n, P9122802081956132336.a n = A048397 n

end A048397

/-! ## A048397.P7984986851173715788

`Δ[C(A000583(n), 2)]-A000583(n)`
-/

namespace A048397.P7984986851173715788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000583 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000583 n

end

end A048397.P7984986851173715788

namespace A048397

/-- `Δ[C(A000583(n), 2)]-A000583(n)` -/
def P7984986851173715788.Spec : Prop :=
  ∀ n, P7984986851173715788.a n = A048397 n

end A048397

/-! ## A048397.P723571079871096289

`A071231(n+1)-(A071231(n)+A000583(n+1))`
-/

namespace A048397.P723571079871096289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071231 (n + 1) - (A071231 n + A000583 (n + 1))

end

end A048397.P723571079871096289

namespace A048397

/-- `A071231(n+1)-(A071231(n)+A000583(n+1))` -/
def P723571079871096289.Spec : Prop :=
  ∀ n, P723571079871096289.a n = A048397 n

end A048397

/-! ## A048397.P16583017229847333606

`A001016(n+1)-(A071231(n+1)+A071231(n))`
-/

namespace A048397.P16583017229847333606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (n + 1) - (A071231 (n + 1) + A071231 n)

end

end A048397.P16583017229847333606

namespace A048397

/-- `A001016(n+1)-(A071231(n+1)+A071231(n))` -/
def P16583017229847333606.Spec : Prop :=
  ∀ n, P16583017229847333606.a n = A048397 n

end A048397

/-!
# A048398: Primes with consecutive digits that differ exactly by 1.

The programs for A048398, there is no canonical definition to state claims against.
-/

/-! ## A048398.P3906739383700813042

`∩[A033075(n+1), A048413(n+1)]`
-/

namespace A048398.P3906739383700813042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P3906739383700813042

/-! ## A048398.P17189327102197463116

`∩[A033075(n+1), A068148(n+1)]`
-/

namespace A048398.P17189327102197463116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P17189327102197463116

/-! ## A048398.P10276310858809381573

`∩[A032981(n+1), A048413(n+1)]`
-/

namespace A048398.P10276310858809381573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P10276310858809381573

/-! ## A048398.P16777559251931721078

`∩[A048413(n+1), A376425(n+1)]`
-/

namespace A048398.P16777559251931721078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P16777559251931721078

/-! ## A048398.P4855759524507965895

`∩[A030144(n+1), A032981(n+1)]`
-/

namespace A048398.P4855759524507965895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P4855759524507965895

/-! ## A048398.P17903242205682625947

`∩[A030144(n+1), A033075(n+1)]`
-/

namespace A048398.P17903242205682625947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P17903242205682625947

/-! ## A048398.P37037476085961385

`∩[A030144(n+1), A048413(n+1)]`
-/

namespace A048398.P37037476085961385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P37037476085961385

/-! ## A048398.P12253125921886834009

`∩[A048413(n+1), A068148(n+1)]`
-/

namespace A048398.P12253125921886834009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048398.P12253125921886834009

/-!
# A048399: Primes with consecutive digits that differ exactly by 2.

The programs for A048399, there is no canonical definition to state claims against.
-/

/-! ## A048399.P4758713920908184167

`∩[A033088(n+1), A048414(n+1)]`
-/

namespace A048399.P4758713920908184167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048399.P4758713920908184167

/-! ## A048399.P13690348586031053484

`∩[A033088(n+1), A048413(n+1)]`
-/

namespace A048399.P13690348586031053484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048399.P13690348586031053484

/-! ## A048399.P7210386902937831550

`∩[A048413(n+1), A048414(n+1)]`
-/

namespace A048399.P7210386902937831550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048399.P7210386902937831550

/-! ## A048399.P17648103647422372839

`p?[A033088(n+1)]`
-/

namespace A048399.P17648103647422372839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048399.P17648103647422372839

/-! ## A048399.P9303006067061903676

`p?[record[A033088(A133310(n))]]`
-/

namespace A048399.P9303006067061903676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048399.P9303006067061903676

