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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A368300: Main diagonal of A365484: the n-th term in the trajectory of n under the A014682 map.

The programs for A368300, there is no canonical definition to state claims against.
-/

/-! ## A368300.P16486518058245020933

`A365484((n+1)²+n²)`
-/

namespace A368300.P16486518058245020933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365484 ((n + 1) ^ 2 + n ^ 2)

end

end A368300.P16486518058245020933

/-!
# A368301: Main diagonal of A365991: the n-th term in the trajectory of n under the A185452 map.

The programs for A368301, there is no canonical definition to state claims against.
-/

/-! ## A368301.P13724518846045903264

`A365991((n+1)²+n²)`
-/

namespace A368301.P13724518846045903264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 ((n + 1) ^ 2 + n ^ 2)

end

end A368301.P13724518846045903264

/-! ## A368301.P14473916360775530175

`abs(A365991(A001844(n))-1)+1`
-/

namespace A368301.P14473916360775530175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A365991 (A001844 n).toNat - 1| + 1

end

end A368301.P14473916360775530175

/-! ## A368301.P12857831916639210424

`A365991(A001844(n))+A007814(2*n+5)`
-/

namespace A368301.P12857831916639210424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + A007814 (2 * n + 5)

end

end A368301.P12857831916639210424

/-! ## A368301.P8840455906058558516

`A365991(A001844(n))+C(2*n, A250120(n))`
-/

namespace A368301.P8840455906058558516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + (Nat.choose (2 * n) (A250120 n).toNat : ℤ)

end

end A368301.P8840455906058558516

/-! ## A368301.P5777488659882411491

`A365991(A001844(n))+and(2*n, A010052(n))`
-/

namespace A368301.P5777488659882411491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + Int.land (2 * n : ℤ) (A010052 n)

end

end A368301.P5777488659882411491

/-! ## A368301.P12105654219747496515

`A365991(A001844(n))+and(2*n, A111900(n))`
-/

namespace A368301.P12105654219747496515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + Int.land (2 * n : ℤ) (A111900 n)

end

end A368301.P12105654219747496515

/-! ## A368301.P1807901939024960872

`A365991(A001844(n))+C(2*n, A038478(n+1))`
-/

namespace A368301.P1807901939024960872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + (Nat.choose (2 * n) (A038478 (n + 1)).toNat : ℤ)

end

end A368301.P1807901939024960872

/-! ## A368301.P3349512403083899033

`A365991(A001844(n))+C(2*n, A180202(n+1))`
-/

namespace A368301.P3349512403083899033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + (Nat.choose (2 * n) (A180202 (n + 1)).toNat : ℤ)

end

end A368301.P3349512403083899033

/-! ## A368301.P9872211728528210640

`A365991(A001844(n))+C(2*n, A000041(n+2))`
-/

namespace A368301.P9872211728528210640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (A001844 n).toNat + (Nat.choose (2 * n) (A000041 (n + 2)).toNat : ℤ)

end

end A368301.P9872211728528210640

/-!
# A368303: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k torus up to horizontal and vertical reflections by a tile that is fixed under 180-degree rotations but not horizontal or vertical reflections.

The programs for A368303, there is no canonical definition to state claims against.
-/

/-! ## A368303.P8888430547611769976

`A003005(A368308(n+1))`
-/

namespace A368303.P8888430547611769976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A368308 (n + 1)).toNat

end

end A368303.P8888430547611769976

/-!
# A368305: Table read by downward antidiagonals: T(n,k) is the number of tilings of the n X k torus up to horizontal reflections by two tiles that are both fixed under horizontal reflection.

The programs for A368305, there is no canonical definition to state claims against.
-/

/-! ## A368305.P11190409793731292581

`A184271(n+1)-A318950(A001597(n+1))`
-/

namespace A368305.P11190409793731292581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (n + 1) - A318950 (A001597 (n + 1)).toNat

end

end A368305.P11190409793731292581

/-! ## A368305.P17080166969283746804

`A184271(n+1)-A348096(A208183(2*n))`
-/

namespace A368305.P17080166969283746804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (n + 1) - A348096 (A208183 (2 * n)).toNat

end

end A368305.P17080166969283746804

/-! ## A368305.P2472034875693257759

`A184271(n+1)-A373483(A000045(2*n+3))`
-/

namespace A368305.P2472034875693257759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (n + 1) - A373483 (A000045 (2 * n + 3)).toNat

end

end A368305.P2472034875693257759

/-! ## A368305.P4002274026621261013

`A184271(n+1)+A121373(A191706(2*n+5))`
-/

namespace A368305.P4002274026621261013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (n + 1) + A121373 (A191706 (2 * n + 5)).toNat

end

end A368305.P4002274026621261013

/-!
# A368308: Table read by antidiagonals: T(n,k) is the number of tilings of the n X k torus up to 180-degree rotation by a tile that is not fixed under 180-degree rotation.

The programs for A368308, there is no canonical definition to state claims against.
-/

/-! ## A368308.P5509775506829069835

`A226066(A368303(n+1))`
-/

namespace A368308.P5509775506829069835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (A368303 (n + 1)).toNat

end

end A368308.P5509775506829069835

/-! ## A368308.P5057075310529954452

`A368306(A286102(n+1))`
-/

namespace A368308.P5057075310529954452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368306 (A286102 (n + 1)).toNat

end

end A368308.P5057075310529954452

/-!
# A368309: Numbers k such that all primes dividing the k-th composite number divide k as well.

The programs for A368309, there is no canonical definition to state claims against.
-/

/-! ## A368309.P1847491257922094608

`lt[A137924(n+1), 2]+1`
-/

namespace A368309.P1847491257922094608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137924 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A368309.P1847491257922094608

/-! ## A368309.P8672680595098543349

`eq[1, A137924(n+3)]+3`
-/

namespace A368309.P8672680595098543349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137924 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A368309.P8672680595098543349

/-! ## A368309.P7476690896510437456

`eq[1, A137924(A028310(n))]`
-/

namespace A368309.P7476690896510437456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137924 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368309.P7476690896510437456

/-!
# A368310: Symmetric array read by antidiagonals: A(n,k) is the number of carryless sums i + j with abs(i) <= n and abs(j) <= k.

The programs for A368310, there is no canonical definition to state claims against.
-/

/-! ## A368310.P10998882137119228865

`A003991(n+1)-A368311(n)`
-/

namespace A368310.P10998882137119228865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A368311 n

end

end A368310.P10998882137119228865

/-! ## A368310.P9910071182168745989

`A003991(n+1)-A033665(A003056(n)%A045912(n))`
-/

namespace A368310.P9910071182168745989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A033665 (Int.tmod (A003056 n) (A045912 n)).toNat

end

end A368310.P9910071182168745989

/-! ## A368310.P7955264627286494132

`A003991(n+1)-val(A172353(n), 9)`
-/

namespace A368310.P7955264627286494132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - (SequenceMachineLib.valuation (A172353 n).toNat 9 : ℤ)

end

end A368310.P7955264627286494132

/-! ## A368310.P3297557877782818040

`A003991(n+1)-val(A189507(n), 11)`
-/

namespace A368310.P3297557877782818040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - (SequenceMachineLib.valuation (A189507 n).toNat 11 : ℤ)

end

end A368310.P3297557877782818040

/-! ## A368310.P14261193168272340924

`A049627(n)+A049615(n)-val(A172353(n), 9)`
-/

namespace A368310.P14261193168272340924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n + A049615 n - (SequenceMachineLib.valuation (A172353 n).toNat 9 : ℤ)

end

end A368310.P14261193168272340924

/-! ## A368310.P15058925960719439519

`A123578(n)+A086460(n)-val(A172353(n), 9)`
-/

namespace A368310.P15058925960719439519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A086460 n - (SequenceMachineLib.valuation (A172353 n).toNat 9 : ℤ)

end

end A368310.P15058925960719439519

/-! ## A368310.P3934198031378321961

`A049627(n)+A049615(n)-val(A189507(n), 11)`
-/

namespace A368310.P3934198031378321961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n + A049615 n - (SequenceMachineLib.valuation (A189507 n).toNat 11 : ℤ)

end

end A368310.P3934198031378321961

/-! ## A368310.P700245867538116479

`A123578(n)+A086460(n)-val(A189507(n), 11)`
-/

namespace A368310.P700245867538116479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A086460 n - (SequenceMachineLib.valuation (A189507 n).toNat 11 : ℤ)

end

end A368310.P700245867538116479

/-! ## A368310.P16795082626086808165

`A141611(n)/A007318(n)-val(A172353(n), 9)`
-/

namespace A368310.P16795082626086808165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A007318 n : ℚ) - (SequenceMachineLib.valuation (A172353 n).toNat 9 : ℚ)

end

end A368310.P16795082626086808165

/-! ## A368310.P1742635637216842698

`A141611(n)/A007318(n)-val(A189507(n), 11)`
-/

namespace A368310.P1742635637216842698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A007318 n : ℚ) - (SequenceMachineLib.valuation (A189507 n).toNat 11 : ℚ)

end

end A368310.P1742635637216842698

/-!
# A368311: Symmetric array read by antidiagonals: A(n,k) is the number of sums with carries i + j with abs(i) <= n and abs(j) <= k.

The programs for A368311, there is no canonical definition to state claims against.
-/

/-! ## A368311.P4367137991069404381

`A003991(n+1)-A368310(n)`
-/

namespace A368311.P4367137991069404381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A368310 n

end

end A368311.P4367137991069404381

/-! ## A368311.P11645871253052229913

`A049627(n)+A049615(n)-A368310(n)`
-/

namespace A368311.P11645871253052229913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n + A049615 n - A368310 n

end

end A368311.P11645871253052229913

/-! ## A368311.P16173507814205624946

`A123578(n)+A086460(n)-A368310(n)`
-/

namespace A368311.P16173507814205624946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n + A086460 n - A368310 n

end

end A368311.P16173507814205624946

/-! ## A368311.P16247027640973528058

`A141611(n)/A007318(n)-A368310(n)`
-/

namespace A368311.P16247027640973528058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A007318 n : ℚ) - (A368310 n : ℚ)

end

end A368311.P16247027640973528058

/-! ## A368311.P17585441393309436548

`A003056(n)+A004247(n)+1-A368310(n)`
-/

namespace A368311.P17585441393309436548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004247 n + 1) - A368310 n

end

end A368311.P17585441393309436548

/-! ## A368311.P13958935404995519368

`A115262(n)-A271916(n+1)-A368310(n)`
-/

namespace A368311.P13958935404995519368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - A271916 (n + 1) - A368310 n

end

end A368311.P13958935404995519368

/-! ## A368311.P600323120769269746

`A366737(gcd(A015958(n+1), A022166(n)))`
-/

namespace A368311.P600323120769269746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366737 (Int.gcd (A015958 (n + 1)) (A022166 n))

end

end A368311.P600323120769269746

/-! ## A368311.P755295660754945009

`A318721(or(9, A108036(n)))`
-/

namespace A368311.P755295660754945009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318721 (Int.lor 9 (A108036 n)).toNat

end

end A368311.P755295660754945009

/-! ## A368311.P14539169150395111717

`val(A376239(A002808(n+1)), 13)`
-/

namespace A368311.P14539169150395111717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A376239 (A002808 (n + 1)).toNat).toNat 13

end

end A368311.P14539169150395111717

/-!
# A368312: Irregular triangle read by rows where row n lists the factor differences of n.

The programs for A368312, there is no canonical definition to state claims against.
-/

/-! ## A368312.P10952379192310405715

`2*A161908(n+1)-A335572(n+1)`
-/

namespace A368312.P10952379192310405715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161908 (n + 1) - A335572 (n + 1)

end

end A368312.P10952379192310405715

/-! ## A368312.P3776490066855046181

`A161908(n+1)-A319135(n+1)`
-/

namespace A368312.P3776490066855046181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (n + 1) - A319135 (n + 1)

end

end A368312.P3776490066855046181

/-! ## A368312.P2980089238334156363

`A335572(n+1)-2*A319135(n+1)`
-/

namespace A368312.P2980089238334156363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335572 (n + 1) - 2 * A319135 (n + 1)

end

end A368312.P2980089238334156363

/-! ## A368312.P881829269165454503

`A161908(n+1)-A340792(n+1)/A161908(n+1)`
-/

namespace A368312.P881829269165454503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161908 (n + 1) : ℚ) - (A340792 (n + 1) : ℚ) / (A161908 (n + 1) : ℚ)

end

end A368312.P881829269165454503

/-! ## A368312.P2873114541718491158

`A340792(n+1)/A319135(n+1)-A319135(n+1)`
-/

namespace A368312.P2873114541718491158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340792 (n + 1) : ℚ) / (A319135 (n + 1) : ℚ) - (A319135 (n + 1) : ℚ)

end

end A368312.P2873114541718491158

/-!
# A368313: Irregular table T(n, k), n > 0, k = 1..A368314(n), read by rows: the n-th row lists the numbers that can be obtained by replacing any positive number without leading zeros, say m, appearing in the binary expansion of n by one of the divisors of m.

The programs for A368313, there is no canonical definition to state claims against.
-/

/-! ## A368313.P10351459817319422770

`or(A069843(A006827(n+1)), A165416(n+1))`
-/

namespace A368313.P10351459817319422770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069843 (A006827 (n + 1)).toNat) (A165416 (n + 1))

end

end A368313.P10351459817319422770

/-! ## A368313.P12231480402533304376

`or(A165416(n+1), A229062(A188195(n+1)))`
-/

namespace A368313.P12231480402533304376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165416 (n + 1)) (A229062 (A188195 (n + 1)).toNat)

end

end A368313.P12231480402533304376

/-! ## A368313.P4010035141577416456

`or(A165416(n+1), A365832(A135091(n)))`
-/

namespace A368313.P4010035141577416456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165416 (n + 1)) (A365832 (A135091 n).toNat)

end

end A368313.P4010035141577416456

/-! ## A368313.P7281660495570486821

`or(A165416(n+1), A285969(A285938(n+1)))`
-/

namespace A368313.P7281660495570486821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165416 (n + 1)) (A285969 (A285938 (n + 1)).toNat)

end

end A368313.P7281660495570486821

/-! ## A368313.P16935235701424414316

`A343023(A022318(n))+A165416(n+1)`
-/

namespace A368313.P16935235701424414316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A022318 n).toNat + A165416 (n + 1)

end

end A368313.P16935235701424414316

/-!
# A368314: a(n) is the number of numbers that can be obtained by replacing any positive number without leading zeros, say m, appearing in the binary expansion of n by one of the divisors of m.

The programs for A368314, there is no canonical definition to state claims against.
-/

/-! ## A368314.P90475610416375223

`Δ[eq[1, A368313(n+1)]]`
-/

namespace A368314.P90475610416375223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368313 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A368314.P90475610416375223

/-! ## A368314.P9873314306657135681

`A124766(n)+A055642(A124743(n+1))`
-/

namespace A368314.P9873314306657135681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A055642 (A124743 (n + 1)).toNat

end

end A368314.P9873314306657135681

/-! ## A368314.P9589907961223713617

`A069010(n)+A055642(A000041(2*n))`
-/

namespace A368314.P9589907961223713617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n + A055642 (A000041 (2 * n)).toNat

end

end A368314.P9589907961223713617

/-! ## A368314.P8321565299955630734

`A369660(A092603(n+1))+A161511(n+1)`
-/

namespace A368314.P8321565299955630734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369660 (A092603 (n + 1)).toNat + A161511 (n + 1)

end

end A368314.P8321565299955630734

/-! ## A368314.P6068862427727653965

`A305079(A030435(n+1))`
-/

namespace A368314.P6068862427727653965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A030435 (n + 1)).toNat

end

end A368314.P6068862427727653965

/-!
# A368317: Expansion of e.g.f. exp(4*x) / (2 - exp(x)).

The programs for A368317, there is no canonical definition to state claims against.
-/

/-! ## A368317.P17707893171615802839

`A292915(A000217(n+4)+n)`
-/

namespace A368317.P17707893171615802839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292915 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A368317.P17707893171615802839

/-!
# A368319: Expansion of e.g.f. exp(2*x) / (3 - 2*exp(x)).

The programs for A368319, there is no canonical definition to state claims against.
-/

/-! ## A368319.P9555739005386534089

`floor(3*A201339(n)/2)`
-/

namespace A368319.P9555739005386534089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A201339 n : ℚ) / 2⌋

end

end A368319.P9555739005386534089

/-! ## A368319.P3597110804710599612

`A047203(A004123(n+1))+A004123(n+1)`
-/

namespace A368319.P3597110804710599612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A004123 (n + 1)).toNat + A004123 (n + 1)

end

end A368319.P3597110804710599612

/-!
# A368320: Expansion of e.g.f. exp(3*x) / (3 - 2*exp(x)).

The programs for A368320, there is no canonical definition to state claims against.
-/

/-! ## A368320.P2834977924960589891

`A102487(A369479(n)+A007913(n+1))`
-/

namespace A368320.P2834977924960589891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (A369479 n + A007913 (n + 1)).toNat

end

end A368320.P2834977924960589891

/-!
# A368321: Expansion of e.g.f. exp(4*x) / (3 - 2*exp(x)).

The programs for A368321, there is no canonical definition to state claims against.
-/

/-! ## A368321.P5431868869900560527

`A047203(A129890(n))+A000142(n)`
-/

namespace A368321.P5431868869900560527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (A129890 n).toNat + A000142 n

end

end A368321.P5431868869900560527

/-!
# A368322: Expansion of e.g.f. exp(2*x) / (4 - 3*exp(x)).

The programs for A368322, there is no canonical definition to state claims against.
-/

/-! ## A368322.P6045018339370403442

`A004773(A201354(n))`
-/

namespace A368322.P6045018339370403442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A201354 n).toNat

end

end A368322.P6045018339370403442

/-!
# A368325: Union of primorials and powers of 2.

The programs for A368325, there is no canonical definition to state claims against.
-/

/-! ## A368325.P10798556868742325252

`∩[A100778(n+1), A070175(n)]`
-/

namespace A368325.P10798556868742325252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P10798556868742325252

/-! ## A368325.P13376683309305683167

`∩[A133808(n+1), A070175(n)]`
-/

namespace A368325.P13376683309305683167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P13376683309305683167

/-! ## A368325.P15683096941985988827

`∩[A317087(n+1), A070175(n)]`
-/

namespace A368325.P15683096941985988827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P15683096941985988827

/-! ## A368325.P13939690621128521069

`∩[A332290(n+1), A332291(n+1)]`
-/

namespace A368325.P13939690621128521069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P13939690621128521069

/-! ## A368325.P8084880158325448595

`∩[A332291(n+1), A332293(n+1)]`
-/

namespace A368325.P8084880158325448595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P8084880158325448595

/-!
# A368328: The number of terms of A054743 that divide n.

The programs for A368328, the canonical program `A368328.P12242505159439986281` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368328 has offset 1).

The definition of A368328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368328.P12242505159439986281

`A368332((n+1)/∏{p}[n+1, #])`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368328

/-- `A368332((n+1)/∏{p}[n+1, #])` -/
def P12242505159439986281.Spec : Prop :=
  ∀ n, P12242505159439986281.a n = A368328 (n + 1)

theorem P12242505159439986281.correct : P12242505159439986281.Spec := by
  intro n
  simp only [A368328, Nat.add_sub_cancel]

end A368328

/-! ## A368328.P4372858797966544960

`A368332(A003557(n+1))`
-/

namespace A368328.P4372858797966544960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (A003557 (n + 1)).toNat

end

end A368328.P4372858797966544960

namespace A368328

/-- `A368332(A003557(n+1))` -/
def P4372858797966544960.Spec : Prop :=
  ∀ n, P4372858797966544960.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P3255718602448881527

`A368332((n+1)/A007947(n+1))`
-/

namespace A368328.P3255718602448881527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A368328.P3255718602448881527

namespace A368328

/-- `A368332((n+1)/A007947(n+1))` -/
def P3255718602448881527.Spec : Prop :=
  ∀ n, P3255718602448881527.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P6705842343589168694

`A000005((n+1)/A377518(n+1))`
-/

namespace A368328.P6705842343589168694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A377518 (n + 1) : ℚ))).toNat

end

end A368328.P6705842343589168694

namespace A368328

/-- `A000005((n+1)/A377518(n+1))` -/
def P6705842343589168694.Spec : Prop :=
  ∀ n, P6705842343589168694.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P6039558382410500154

`A373954(A292380(n+1))+1`
-/

namespace A368328.P6039558382410500154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A292380 (n + 1)).toNat + 1

end

end A368328.P6039558382410500154

namespace A368328

/-- `A373954(A292380(n+1))+1` -/
def P6039558382410500154.Spec : Prop :=
  ∀ n, P6039558382410500154.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P6649512835316034503

`A325195(4*(n+1)/∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A368328.P6649512835316034503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325195 (SequenceMachineLib.roundAway (4 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ)))).toNat

end

end A368328.P6649512835316034503

namespace A368328

/-- `A325195(4*(n+1)/∏{p}[n+1, gcd(n+1, #²)])` -/
def P6649512835316034503.Spec : Prop :=
  ∀ n, P6649512835316034503.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P10573315456640357649

`∏{e}[gcd(n+1, A333627(n)), #]`
-/

namespace A368328.P10573315456640357649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A333627 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A368328.P10573315456640357649

namespace A368328

/-- `∏{e}[gcd(n+1, A333627(n)), #]` -/
def P10573315456640357649.Spec : Prop :=
  ∀ n, (P10573315456640357649.a n : ℤ) = A368328 (n + 1)

end A368328

/-! ## A368328.P14245503231457700417

`val(A109043(A069097(abs(1-n)+2)), 2)`
-/

namespace A368328.P14245503231457700417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109043 (A069097 (|1 - (n : ℤ)| + 2).toNat).toNat).toNat 2

end

end A368328.P14245503231457700417

namespace A368328

/-- `val(A109043(A069097(abs(1-n)+2)), 2)` -/
def P14245503231457700417.Spec : Prop :=
  ∀ n, (P14245503231457700417.a n : ℤ) = A368328 (n + 1)

end A368328

/-! ## A368328.P13172157695632892574

`A265332(A062378(n+1)^A062378(n+2))`
-/

namespace A368328.P13172157695632892574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (SequenceMachineLib.roundAway ((A062378 (n + 1) : ℚ) ^ (A062378 (n + 2) : ℤ))).toNat

end

end A368328.P13172157695632892574

namespace A368328

/-- `A265332(A062378(n+1)^A062378(n+2))` -/
def P13172157695632892574.Spec : Prop :=
  ∀ n, P13172157695632892574.a n = A368328 (n + 1)

end A368328

/-! ## A368328.P4982671369737766814

`A001511(or(A002265(n+2), A097869(n)))`
-/

namespace A368328.P4982671369737766814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A002265 (n + 2)) (A097869 n)).toNat

end

end A368328.P4982671369737766814

namespace A368328

/-- `A001511(or(A002265(n+2), A097869(n)))` -/
def P4982671369737766814.Spec : Prop :=
  ∀ n, P4982671369737766814.a n = A368328 (n + 1)

end A368328

/-!
# A368329: The largest term of A054743 that divide n.

The programs for A368329, there is no canonical definition to state claims against.
-/

/-! ## A368329.P4203506548249836072

`(n+1)/A380088(n+1)`
-/

namespace A368329.P4203506548249836072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A380088 (n + 1) : ℚ)

end

end A368329.P4203506548249836072

/-! ## A368329.P6780351722747332370

`A126988(A380088(n+1)+A000217(n))`
-/

namespace A368329.P6780351722747332370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A380088 (n + 1) + A000217 n).toNat

end

end A368329.P6780351722747332370

/-! ## A368329.P11823865421864006147

`A360540(n+1)^A082858(A360540(n+1))`
-/

namespace A368329.P11823865421864006147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360540 (n + 1) : ℚ) ^ (A082858 (A360540 (n + 1)).toNat : ℤ)

end

end A368329.P11823865421864006147

/-! ## A368329.P10382875595962177171

`A360540(A360540(n+1)+A133081(n+1))`
-/

namespace A368329.P10382875595962177171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (A360540 (n + 1) + A133081 (n + 1)).toNat

end

end A368329.P10382875595962177171

/-! ## A368329.P3404793328470318999

`A360540(n+1)^A089627(A026729(n))`
-/

namespace A368329.P3404793328470318999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360540 (n + 1) : ℚ) ^ (A089627 (A026729 n).toNat : ℤ)

end

end A368329.P3404793328470318999

/-! ## A368329.P6838262449453623985

`A006519(A088828(n+1)*A360540(n+1))`
-/

namespace A368329.P6838262449453623985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A088828 (n + 1) * A360540 (n + 1)).toNat

end

end A368329.P6838262449453623985

/-! ## A368329.P15827417462397503299

`gcd(A001752(n), A335638(A008835(2*(n+1))))`
-/

namespace A368329.P15827417462397503299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001752 n) (A335638 (A008835 (2 * (n + 1))).toNat)

end

end A368329.P15827417462397503299

/-! ## A368329.P4219168511832785739

`A006519(A186646(2*n+3)*A360540(n+1))`
-/

namespace A368329.P4219168511832785739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A186646 (2 * n + 3) * A360540 (n + 1)).toNat

end

end A368329.P4219168511832785739

/-! ## A368329.P9005170177192699857

`gcd(A016116(A003002(3*n)), A360540(n+1))`
-/

namespace A368329.P9005170177192699857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016116 (A003002 (3 * n)).toNat) (A360540 (n + 1))

end

end A368329.P9005170177192699857

/-! ## A368329.P17932446442066243082

`A062379(A171635(n+1))`
-/

namespace A368329.P17932446442066243082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A171635 (n + 1)).toNat

end

end A368329.P17932446442066243082

/-!
# A368330: The number of terms of A054743 that are unitary divisors of n.

The programs for A368330, there is no canonical definition to state claims against.
-/

/-! ## A368330.P11617722375001719288

`A034444(A368329(n+1))`
-/

namespace A368330.P11617722375001719288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A368329 (n + 1)).toNat

end

end A368330.P11617722375001719288

/-!
# A368331: The number of divisors of the largest term of A054743 that divides of n.

The programs for A368331, there is no canonical definition to state claims against.
-/

/-! ## A368331.P4214425732163009218

`A000005(A368329(n+1))`
-/

namespace A368331.P4214425732163009218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368329 (n + 1)).toNat

end

end A368331.P4214425732163009218

/-! ## A368331.P15517073557645668679

`A000005((n+1)/A380088(n+1))`
-/

namespace A368331.P15517073557645668679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A380088 (n + 1) : ℚ))).toNat

end

end A368331.P15517073557645668679

/-! ## A368331.P14158715842456457333

`A366145(A368329(2*n+1-n))`
-/

namespace A368331.P14158715842456457333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (A368329 (2 * n + 1 - n)).toNat

end

end A368331.P14158715842456457333

/-! ## A368331.P12081977079821951708

`A368335(A368329(A368333(n+1)))`
-/

namespace A368331.P12081977079821951708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368335 (A368329 (A368333 (n + 1)).toNat).toNat

end

end A368331.P12081977079821951708

/-! ## A368331.P10524743277544842347

`A001222(lcm(A000040(n+1), A368329(n+1)))`
-/

namespace A368331.P10524743277544842347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A000040 (n + 1)) (A368329 (n + 1)))

end

end A368331.P10524743277544842347

/-! ## A368331.P12906828418487240563

`A368335(A368329(n+1)+A368329(n+1)²)`
-/

namespace A368331.P12906828418487240563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368335 (A368329 (n + 1) + A368329 (n + 1) ^ 2).toNat

end

end A368331.P12906828418487240563

/-! ## A368331.P10238474725833182264

`A331854((2^val(n+1, 2))^val(n+1, 8))`
-/

namespace A368331.P10238474725833182264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 ((2 ^ SequenceMachineLib.valuation (n + 1) 2) ^ SequenceMachineLib.valuation (n + 1) 8)

end

end A368331.P10238474725833182264

/-! ## A368331.P14154177099588728798

`A050361(A171635(n+1))`
-/

namespace A368331.P14154177099588728798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A171635 (n + 1)).toNat

end

end A368331.P14154177099588728798

/-!
# A368332: The number of terms of A054744 that divide n.

The programs for A368332, the canonical program `A368332.P14701013068669053454` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368332 has offset 1).

The definition of A368332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368332.P16183618350795639991

`A000005((n+1)/A327937(n+1))`
-/

namespace A368332.P16183618350795639991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327937 (n + 1) : ℚ))).toNat

end

end A368332.P16183618350795639991

namespace A368332

/-- `A000005((n+1)/A327937(n+1))` -/
def P16183618350795639991.Spec : Prop :=
  ∀ n, P16183618350795639991.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P15514155498701274085

`A358216(n+1)/A358216(A327937(n+1))`
-/

namespace A368332.P15514155498701274085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358216 (n + 1) : ℚ) / (A358216 (A327937 (n + 1)).toNat : ℚ)

end

end A368332.P15514155498701274085

namespace A368332

/-- `A358216(n+1)/A358216(A327937(n+1))` -/
def P15514155498701274085.Spec : Prop :=
  ∀ n, P15514155498701274085.a n = (A368332 (n + 1) : ℚ)

end A368332

/-! ## A368332.P14701013068669053454

`A358216(A368333(n+1))/A327936(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368332

/-- `A358216(A368333(n+1))/A327936(n+1)` -/
def P14701013068669053454.Spec : Prop :=
  ∀ n, P14701013068669053454.a n = (A368332 (n + 1) : ℚ)

end A368332

/-! ## A368332.P3594812615744322010

`A368328(6*(n+1))`
-/

namespace A368332.P3594812615744322010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368328 (6 * (n + 1))

end

end A368332.P3594812615744322010

namespace A368332

/-- `A368328(6*(n+1))` -/
def P3594812615744322010.Spec : Prop :=
  ∀ n, P3594812615744322010.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P7094852382668097521

`A005361(ceil((2*n+1)/∏{p}[2*(n+1), #])*A055211(2*(n+1)))`
-/

namespace A368332.P7094852382668097521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (⌈(2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉ * A055211 (2 * (n + 1))).toNat

end

end A368332.P7094852382668097521

namespace A368332

/-- `A005361(ceil((2*n+1)/∏{p}[2*(n+1), #])*A055211(2*(n+1)))` -/
def P7094852382668097521.Spec : Prop :=
  ∀ n, P7094852382668097521.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P14377121223882493144

`A005361(A003557(2*(n+1))%A059496(n+1))`
-/

namespace A368332.P14377121223882493144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.tmod (A003557 (2 * (n + 1))) (A059496 (n + 1))).toNat

end

end A368332.P14377121223882493144

namespace A368332

/-- `A005361(A003557(2*(n+1))%A059496(n+1))` -/
def P14377121223882493144.Spec : Prop :=
  ∀ n, P14377121223882493144.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P16300086589603555274

`A005361(A003557(2*(n+1)))%A011760(A044718(n+1))`
-/

namespace A368332.P16300086589603555274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005361 (A003557 (2 * (n + 1))).toNat) (A011760 (A044718 (n + 1)).toNat)

end

end A368332.P16300086589603555274

namespace A368332

/-- `A005361(A003557(2*(n+1)))%A011760(A044718(n+1))` -/
def P16300086589603555274.Spec : Prop :=
  ∀ n, P16300086589603555274.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P1365056317558668834

`A005361(A003557(2*(n+1))*A152079(n+1))`
-/

namespace A368332.P1365056317558668834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A003557 (2 * (n + 1)) * A152079 (n + 1)).toNat

end

end A368332.P1365056317558668834

namespace A368332

/-- `A005361(A003557(2*(n+1))*A152079(n+1))` -/
def P1365056317558668834.Spec : Prop :=
  ∀ n, P1365056317558668834.a n = A368332 (n + 1)

end A368332

/-! ## A368332.P4736382289675643912

`A190867(A020337(n+1))`
-/

namespace A368332.P4736382289675643912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (A020337 (n + 1)).toNat

end

end A368332.P4736382289675643912

namespace A368332

/-- `A190867(A020337(n+1))` -/
def P4736382289675643912.Spec : Prop :=
  ∀ n, P4736382289675643912.a n = A368332 (n + 1)

end A368332

/-!
# A368333: The largest term of A054744 that divides n.

The programs for A368333, the canonical program `A368333.P4860013269317907848` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368333 has offset 1).

The definition of A368333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368333.P1154354896694228444

`gcd(n+1, A327939(n+1)²)`
-/

namespace A368333.P1154354896694228444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327939 (n + 1) ^ 2)

end

end A368333.P1154354896694228444

namespace A368333

/-- `gcd(n+1, A327939(n+1)²)` -/
def P1154354896694228444.Spec : Prop :=
  ∀ n, (P1154354896694228444.a n : ℤ) = A368333 (n + 1)

end A368333

/-! ## A368333.P8904701954685281344

`(n+1)/A327938(A377518(n+1))`
-/

namespace A368333.P8904701954685281344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327938 (A377518 (n + 1)).toNat : ℚ)

end

end A368333.P8904701954685281344

namespace A368333

/-- `(n+1)/A327938(A377518(n+1))` -/
def P8904701954685281344.Spec : Prop :=
  ∀ n, P8904701954685281344.a n = (A368333 (n + 1) : ℚ)

end A368333

/-! ## A368333.P14816838815602642827

`lcm(A365635(n+1), A368329(n+1))`
-/

namespace A368333.P14816838815602642827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A365635 (n + 1)) (A368329 (n + 1))

end

end A368333.P14816838815602642827

namespace A368333

/-- `lcm(A365635(n+1), A368329(n+1))` -/
def P14816838815602642827.Spec : Prop :=
  ∀ n, (P14816838815602642827.a n : ℤ) = A368333 (n + 1)

end A368333

/-! ## A368333.P17126477544910623019

`A327938(A368329(n+1))*A327939(n+1)`
-/

namespace A368333.P17126477544910623019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A368329 (n + 1)).toNat * A327939 (n + 1)

end

end A368333.P17126477544910623019

namespace A368333

/-- `A327938(A368329(n+1))*A327939(n+1)` -/
def P17126477544910623019.Spec : Prop :=
  ∀ n, P17126477544910623019.a n = A368333 (n + 1)

end A368333

/-! ## A368333.P4860013269317907848

`gcd(A001014(A342007(n+1)), A184985(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368333

/-- `gcd(A001014(A342007(n+1)), A184985(n+1))` -/
def P4860013269317907848.Spec : Prop :=
  ∀ n, (P4860013269317907848.a n : ℤ) = A368333 (n + 1)

theorem P4860013269317907848.correct : P4860013269317907848.Spec := by
  intro n
  simp only [A368333, Nat.add_sub_cancel]

end A368333

/-! ## A368333.P3993369461832657090

`A098699(A389453(n+1))`
-/

namespace A368333.P3993369461832657090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098699 (A389453 (n + 1)).toNat

end

end A368333.P3993369461832657090

namespace A368333

/-- `A098699(A389453(n+1))` -/
def P3993369461832657090.Spec : Prop :=
  ∀ n, P3993369461832657090.a n = A368333 (n + 1)

end A368333

/-!
# A368334: The number of terms of A054744 that are unitary divisors of n.

The programs for A368334, the canonical program `A368334.P4126870692233895438` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368334 has offset 1).

The definition of A368334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368334.P15691284084478935694

`A034444(A327939(n+1))`
-/

namespace A368334.P15691284084478935694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A327939 (n + 1)).toNat

end

end A368334.P15691284084478935694

namespace A368334

/-- `A034444(A327939(n+1))` -/
def P15691284084478935694.Spec : Prop :=
  ∀ n, P15691284084478935694.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P4126870692233895438

`A034444(A368333(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368334

/-- `A034444(A368333(n+1))` -/
def P4126870692233895438.Spec : Prop :=
  ∀ n, P4126870692233895438.a n = A368334 (n + 1)

theorem P4126870692233895438.correct : P4126870692233895438.Spec := by
  intro n
  simp only [A368334, Nat.add_sub_cancel]

end A368334

/-! ## A368334.P10120363089935656084

`A365632(A365635(n+1))`
-/

namespace A368334.P10120363089935656084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365632 (A365635 (n + 1)).toNat

end

end A368334.P10120363089935656084

namespace A368334

/-- `A365632(A365635(n+1))` -/
def P10120363089935656084.Spec : Prop :=
  ∀ n, P10120363089935656084.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P11408056197273562986

`A365634(A365635(2*n+1-n))`
-/

namespace A368334.P11408056197273562986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365634 (A365635 (2 * n + 1 - n)).toNat

end

end A368334.P11408056197273562986

namespace A368334

/-- `A365634(A365635(2*n+1-n))` -/
def P11408056197273562986.Spec : Prop :=
  ∀ n, P11408056197273562986.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P12902245381742740357

`A368330(6*(n+1))`
-/

namespace A368334.P12902245381742740357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (6 * (n + 1))

end

end A368334.P12902245381742740357

namespace A368334

/-- `A368330(6*(n+1))` -/
def P12902245381742740357.Spec : Prop :=
  ∀ n, P12902245381742740357.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P7369353918776432836

`A034444(A366906(2*(n+1))*A366906(n+1))`
-/

namespace A368334.P7369353918776432836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A366906 (2 * (n + 1)) * A366906 (n + 1)).toNat

end

end A368334.P7369353918776432836

namespace A368334

/-- `A034444(A366906(2*(n+1))*A366906(n+1))` -/
def P7369353918776432836.Spec : Prop :=
  ∀ n, P7369353918776432836.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P2906586525076151302

`A379012(A368333(n+1)²)`
-/

namespace A368334.P2906586525076151302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379012 (A368333 (n + 1) ^ 2).toNat

end

end A368334.P2906586525076151302

namespace A368334

/-- `A379012(A368333(n+1)²)` -/
def P2906586525076151302.Spec : Prop :=
  ∀ n, P2906586525076151302.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P298871781369120557

`A391684(A368333(n+1)²)`
-/

namespace A368334.P298871781369120557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391684 (A368333 (n + 1) ^ 2).toNat

end

end A368334.P298871781369120557

namespace A368334

/-- `A391684(A368333(n+1)²)` -/
def P298871781369120557.Spec : Prop :=
  ∀ n, P298871781369120557.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P4971277692183661432

`A129251(A328618(n+1))+1`
-/

namespace A368334.P4971277692183661432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A328618 (n + 1)).toNat + 1

end

end A368334.P4971277692183661432

namespace A368334

/-- `A129251(A328618(n+1))+1` -/
def P4971277692183661432.Spec : Prop :=
  ∀ n, P4971277692183661432.a n = A368334 (n + 1)

end A368334

/-! ## A368334.P9272989980787957209

`2-and(A208771(n+1), A212793(n+1))`
-/

namespace A368334.P9272989980787957209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land (A208771 (n + 1)) (A212793 (n + 1))

end

end A368334.P9272989980787957209

namespace A368334

/-- `2-and(A208771(n+1), A212793(n+1))` -/
def P9272989980787957209.Spec : Prop :=
  ∀ n, P9272989980787957209.a n = A368334 (n + 1)

end A368334

/-!
# A368335: The number of divisors of the largest term of A054744 that divides of n.

The programs for A368335, the canonical program `A368335.P5775079228993480223` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368335 has offset 1).

The definition of A368335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368335.P5775079228993480223

`A000005(A368333(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368335

/-- `A000005(A368333(n+1))` -/
def P5775079228993480223.Spec : Prop :=
  ∀ n, P5775079228993480223.a n = A368335 (n + 1)

theorem P5775079228993480223.correct : P5775079228993480223.Spec := by
  intro n
  simp only [A368335, Nat.add_sub_cancel]

end A368335

/-! ## A368335.P5169039649727091208

`A183063(2*A368333(n+1))`
-/

namespace A368335.P5169039649727091208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A368333 (n + 1)).toNat

end

end A368335.P5169039649727091208

namespace A368335

/-- `A183063(2*A368333(n+1))` -/
def P5169039649727091208.Spec : Prop :=
  ∀ n, P5169039649727091208.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P10251423455576779866

`A038548(7*A368333(n+1))`
-/

namespace A368335.P10251423455576779866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (7 * A368333 (n + 1)).toNat

end

end A368335.P10251423455576779866

namespace A368335

/-- `A038548(7*A368333(n+1))` -/
def P10251423455576779866.Spec : Prop :=
  ∀ n, P10251423455576779866.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P15804695765566930186

`A038548(A368333(n+1)²)`
-/

namespace A368335.P15804695765566930186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A368333 (n + 1) ^ 2).toNat

end

end A368335.P15804695765566930186

namespace A368335

/-- `A038548(A368333(n+1)²)` -/
def P15804695765566930186.Spec : Prop :=
  ∀ n, P15804695765566930186.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P9620974411059725863

`A285573(lcm(1-and(2, n), A368333(n+1)))`
-/

namespace A368335.P9620974411059725863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (Int.lcm (1 - (Nat.land 2 n : ℤ)) (A368333 (n + 1)))

end

end A368335.P9620974411059725863

namespace A368335

/-- `A285573(lcm(1-and(2, n), A368333(n+1)))` -/
def P9620974411059725863.Spec : Prop :=
  ∀ n, P9620974411059725863.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P692643861650489361

`A285573(A368333(n+1)+A011765(2*n+1))`
-/

namespace A368335.P692643861650489361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (A368333 (n + 1) + A011765 (2 * n + 1)).toNat

end

end A368335.P692643861650489361

namespace A368335

/-- `A285573(A368333(n+1)+A011765(2*n+1))` -/
def P692643861650489361.Spec : Prop :=
  ∀ n, P692643861650489361.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P11530385290770535116

`A001222(A080603(2*(n+1))*A368333(n+1))`
-/

namespace A368335.P11530385290770535116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080603 (2 * (n + 1)) * A368333 (n + 1)).toNat

end

end A368335.P11530385290770535116

namespace A368335

/-- `A001222(A080603(2*(n+1))*A368333(n+1))` -/
def P11530385290770535116.Spec : Prop :=
  ∀ n, P11530385290770535116.a n = A368335 (n + 1)

end A368335

/-! ## A368335.P510242268340468818

`A001222(A000040(2*n+3)*A368333(n+1))`
-/

namespace A368335.P510242268340468818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (2 * n + 3) * A368333 (n + 1)).toNat

end

end A368335.P510242268340468818

namespace A368335

/-- `A001222(A000040(2*n+3)*A368333(n+1))` -/
def P510242268340468818.Spec : Prop :=
  ∀ n, P510242268340468818.a n = A368335 (n + 1)

end A368335

/-!
# A368336: The number of divisors of the largest term of A072873 that divides of n.

The programs for A368336, the canonical program `A368336.P17701727504922251831` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368336 has offset 1).

The definition of A368336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368336.P11611000634287918790

`A000005(A327939(n+1))`
-/

namespace A368336.P11611000634287918790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327939 (n + 1)).toNat

end

end A368336.P11611000634287918790

namespace A368336

/-- `A000005(A327939(n+1))` -/
def P11611000634287918790.Spec : Prop :=
  ∀ n, P11611000634287918790.a n = A368336 (n + 1)

end A368336

/-! ## A368336.P10771941264404975698

`A368335(A327939(2*n+1-n))`
-/

namespace A368336.P10771941264404975698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368335 (A327939 (2 * n + 1 - n)).toNat

end

end A368336.P10771941264404975698

namespace A368336

/-- `A368335(A327939(2*n+1-n))` -/
def P10771941264404975698.Spec : Prop :=
  ∀ n, P10771941264404975698.a n = A368336 (n + 1)

end A368336

/-! ## A368336.P17701727504922251831

`∑{d}[n+1, A327936(#)*A359552((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A368336

/-- `∑{d}[n+1, A327936(#)*A359552((n+1)/#)]` -/
def P17701727504922251831.Spec : Prop :=
  ∀ n, P17701727504922251831.a n = A368336 (n + 1)

theorem P17701727504922251831.correct : P17701727504922251831.Spec := by
  intro n
  simp only [A368336, Nat.add_sub_cancel]

end A368336

/-! ## A368336.P1865362324237129716

`∑{d}[n+1, A358216(#)*A359551((n+1)/#)]`
-/

namespace A368336.P1865362324237129716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358216 d * A359551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368336.P1865362324237129716

namespace A368336

/-- `∑{d}[n+1, A358216(#)*A359551((n+1)/#)]` -/
def P1865362324237129716.Spec : Prop :=
  ∀ n, P1865362324237129716.a n = A368336 (n + 1)

end A368336

/-! ## A368336.P16813976350161837832

`A368335(A368333(A327939(A368333(n+1))))`
-/

namespace A368336.P16813976350161837832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368335 (A368333 (A327939 (A368333 (n + 1)).toNat).toNat).toNat

end

end A368336.P16813976350161837832

namespace A368336

/-- `A368335(A368333(A327939(A368333(n+1))))` -/
def P16813976350161837832.Spec : Prop :=
  ∀ n, P16813976350161837832.a n = A368336 (n + 1)

end A368336

/-! ## A368336.P18302215776697326550

`A185358(A064549(n+1))`
-/

namespace A368336.P18302215776697326550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185358 (A064549 (n + 1)).toNat

end

end A368336.P18302215776697326550

namespace A368336

/-- `A185358(A064549(n+1))` -/
def P18302215776697326550.Spec : Prop :=
  ∀ n, P18302215776697326550.a n = A368336 (n + 1)

end A368336

/-! ## A368336.P1249184908255152318

`A185358(A264389(n+1))`
-/

namespace A368336.P1249184908255152318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185358 (A264389 (n + 1)).toNat

end

end A368336.P1249184908255152318

namespace A368336

/-- `A185358(A264389(n+1))` -/
def P1249184908255152318.Spec : Prop :=
  ∀ n, P1249184908255152318.a n = A368336 (n + 1)

end A368336

/-!
# A368337: Semiprimes that contain only digits 4 and 9.

The programs for A368337, there is no canonical definition to state claims against.
-/

/-! ## A368337.P3421675834846640416

`∩[A107342(n+1), A284973(n+1)]`
-/

namespace A368337.P3421675834846640416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368337.P3421675834846640416

/-! ## A368337.P12985521849340793099

`∩[A036435(n+1), A107342(n+1)]`
-/

namespace A368337.P12985521849340793099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368337.P12985521849340793099

/-! ## A368337.P419228397706183733

`∩[A036435(n+1), A242751(n+1)]`
-/

namespace A368337.P419228397706183733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368337.P419228397706183733

/-! ## A368337.P10600232053368261901

`∩[A242751(n+1), A284973(n+1)]`
-/

namespace A368337.P10600232053368261901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368337.P10600232053368261901

/-! ## A368337.P6442608735934151919

`∩[A107342(n+1), A157908(n+1)]`
-/

namespace A368337.P6442608735934151919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368337.P6442608735934151919

/-!
# A368338: Number T(n,k) of partitions of [n] whose sum of block maxima minus block minima gives k, triangle T(n,k), n>=0, 0<=k<=A002620(n), read by rows.

The programs for A368338, there is no canonical definition to state claims against.
-/

/-! ## A368338.P585028952200475794

`A082860(A117279(n))`
-/

namespace A368338.P585028952200475794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (A117279 n).toNat

end

end A368338.P585028952200475794

/-! ## A368338.P16283669033022406366

`A376238(A302204(n+1))`
-/

namespace A368338.P16283669033022406366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376238 (A302204 (n + 1)).toNat

end

end A368338.P16283669033022406366

/-!
# A368339: Take the solution to Pellian equation x^2 - 8*n*y^2 = 1 with smallest positive y and x >= 0; sequence gives a(n) = y, or 0 if n is twice a positive square. A368340 gives values of x.

The programs for A368339, there is no canonical definition to state claims against.
-/

/-! ## A368339.P2630151813244314309

`A002349(8*(n+1))`
-/

namespace A368339.P2630151813244314309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (8 * (n + 1))

end

end A368339.P2630151813244314309

/-! ## A368339.P12990053493758139625

`sqrt((A368340(n+1)²-1)/(8*(n+1)))`
-/

namespace A368339.P12990053493758139625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A368340 (n + 1) ^ 2 - 1 : ℚ) / (8 * (n + 1) : ℚ) : ℝ)

end

end A368339.P12990053493758139625

/-! ## A368339.P1003346839672451885

`A006703(8*(n+1))`
-/

namespace A368339.P1003346839672451885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006703 (8 * (n + 1))

end

end A368339.P1003346839672451885

/-! ## A368339.P13505425946742796781

`A002349(A022144(n+1))%A007283(n)`
-/

namespace A368339.P13505425946742796781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002349 (A022144 (n + 1)).toNat) (A007283 n)

end

end A368339.P13505425946742796781

/-! ## A368339.P13300164710547787453

`A010054(A054723(n+1))+A002349(A022144(n+1))`
-/

namespace A368339.P13300164710547787453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A054723 (n + 1)).toNat + A002349 (A022144 (n + 1)).toNat

end

end A368339.P13300164710547787453

/-! ## A368339.P502721353003801589

`A010054(A139827(n+1))+A002349(A022144(n+1))`
-/

namespace A368339.P502721353003801589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A139827 (n + 1)).toNat + A002349 (A022144 (n + 1)).toNat

end

end A368339.P502721353003801589

/-!
# A368340: Take the solution to Pellian equation x^2 - 8*n*y^2 = 1 with smallest positive y and x >= 0; sequence gives a(n) = x, or 1 if n is twice a positive square. A368339 gives values of y.

The programs for A368340, there is no canonical definition to state claims against.
-/

/-! ## A368340.P15725252909829456912

`A002350(8*(n+1))`
-/

namespace A368340.P15725252909829456912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (8 * (n + 1))

end

end A368340.P15725252909829456912

/-! ## A368340.P17773123625077219512

`sqrt(8*(n+1)*A368339(n+1)²+1)`
-/

namespace A368340.P17773123625077219512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((8 * (n + 1) : ℤ) * A368339 (n + 1) ^ 2 + 1 : ℝ)

end

end A368340.P17773123625077219512

/-! ## A368340.P3541150143417146131

`A006702(8*(n+1))`
-/

namespace A368340.P3541150143417146131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (8 * (n + 1))

end

end A368340.P3541150143417146131

/-!
# A368341: Fixed points of A368207.

The programs for A368341, there is no canonical definition to state claims against.
-/

/-! ## A368341.P5782503651153433928

`eq[A028310(n), A368207(A028310(n))]`
-/

namespace A368341.P5782503651153433928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368341.P5782503651153433928

/-! ## A368341.P3127606246542427181

`record[A026741(A346705(n)²)]`
-/

namespace A368341.P3127606246542427181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A346705 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368341.P3127606246542427181

/-!
# A368342: Sum of digits of the numbers 0..n-1 in factorial base (A108731).

The programs for A368342, the canonical program `A368342.P15145048510541553360` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368342 has offset 0).

The definition of A368342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368342.P15145048510541553360

`∑[A034968(floor(n²/(n+1)))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A368342

/-- `∑[A034968(floor(n²/(n+1)))]` -/
def P15145048510541553360.Spec : Prop :=
  ∀ n, P15145048510541553360.a n = A368342 n

theorem P15145048510541553360.correct : P15145048510541553360.Spec := by
  intro n
  simp only [A368342]

end A368342

/-! ## A368342.P11733205747773728450

`∑[A034968(n)]-A034968(n)`
-/

namespace A368342.P11733205747773728450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034968 n

end

end A368342.P11733205747773728450

namespace A368342

/-- `∑[A034968(n)]-A034968(n)` -/
def P11733205747773728450.Spec : Prop :=
  ∀ n, P11733205747773728450.a n = A368342 n

end A368342

/-! ## A368342.P175678945504598617

`∑[n-A219651(n)]-(n-A219651(n))`
-/

namespace A368342.P175678945504598617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A219651 n)

end

end A368342.P175678945504598617

namespace A368342

/-- `∑[n-A219651(n)]-(n-A219651(n))` -/
def P175678945504598617.Spec : Prop :=
  ∀ n, P175678945504598617.a n = A368342 n

end A368342

/-! ## A368342.P3681926678642713925

`∑[A276150(A351576(n))]-(n-A219651(n))`
-/

namespace A368342.P3681926678642713925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A351576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A219651 n)

end

end A368342.P3681926678642713925

namespace A368342

/-- `∑[A276150(A351576(n))]-(n-A219651(n))` -/
def P3681926678642713925.Spec : Prop :=
  ∀ n, P3681926678642713925.a n = A368342 n

end A368342

/-! ## A368342.P17449662676411767206

`∑[n-A219651(n)]-A276146(A225901(n))`
-/

namespace A368342.P17449662676411767206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276146 (A225901 n).toNat

end

end A368342.P17449662676411767206

namespace A368342

/-- `∑[n-A219651(n)]-A276146(A225901(n))` -/
def P17449662676411767206.Spec : Prop :=
  ∀ n, P17449662676411767206.a n = A368342 n

end A368342

/-! ## A368342.P8258065193213635749

`∑[n-A219651(n)]-A056239(A275735(n))`
-/

namespace A368342.P8258065193213635749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056239 (A275735 n).toNat

end

end A368342.P8258065193213635749

namespace A368342

/-- `∑[n-A219651(n)]-A056239(A275735(n))` -/
def P8258065193213635749.Spec : Prop :=
  ∀ n, P8258065193213635749.a n = A368342 n

end A368342

/-! ## A368342.P804422629740620553

`∑[n-A219651(n)]-A000120(A277012(n))`
-/

namespace A368342.P804422629740620553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 (A277012 n).toNat

end

end A368342.P804422629740620553

namespace A368342

/-- `∑[n-A219651(n)]-A000120(A277012(n))` -/
def P804422629740620553.Spec : Prop :=
  ∀ n, P804422629740620553.a n = A368342 n

end A368342

/-! ## A368342.P13073751069628055677

`∑[n-A219651(n)]-A001222(A278236(n))`
-/

namespace A368342.P13073751069628055677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A278236 n).toNat

end

end A368342.P13073751069628055677

namespace A368342

/-- `∑[n-A219651(n)]-A001222(A278236(n))` -/
def P13073751069628055677.Spec : Prop :=
  ∀ n, P13073751069628055677.a n = A368342 n

end A368342

/-! ## A368342.P1026146659142777551

`∑[A231713(C(n, 2))]`
-/

namespace A368342.P1026146659142777551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368342.P1026146659142777551

namespace A368342

/-- `∑[A231713(C(n, 2))]` -/
def P1026146659142777551.Spec : Prop :=
  ∀ n, P1026146659142777551.a n = A368342 n

end A368342

/-!
# A368343: Square array T(n,k), n >= 3, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^(n-j) * floor(j/3).

The programs for A368343, there is no canonical definition to state claims against.
-/

/-! ## A368343.P16560113739612475361

`A049419(A036378(n))+A048720(n)`
-/

namespace A368343.P16560113739612475361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A036378 n).toNat + A048720 n

end

end A368343.P16560113739612475361

/-! ## A368343.P9271563622248223947

`A267598(A269336(n+1))+A007318(n)`
-/

namespace A368343.P9271563622248223947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (A269336 (n + 1)).toNat + A007318 n

end

end A368343.P9271563622248223947

/-! ## A368343.P14953583356511489031

`A282905(A294204(n)+A220738(n+1))`
-/

namespace A368343.P14953583356511489031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282905 (A294204 n + A220738 (n + 1)).toNat

end

end A368343.P14953583356511489031

/-! ## A368343.P5528425572308786349

`A275198(n)+A267598(A269336(n+1))`
-/

namespace A368343.P5528425572308786349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275198 n + A267598 (A269336 (n + 1)).toNat

end

end A368343.P5528425572308786349

/-! ## A368343.P4193199980801932293

`A287931(A101616(3*n+1))+A007318(n)`
-/

namespace A368343.P4193199980801932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287931 (A101616 (3 * n + 1)).toNat + A007318 n

end

end A368343.P4193199980801932293

/-!
# A368344: a(n) = Sum_{k=0..n} 3^(n-k) * floor(k/3).

The programs for A368344, the canonical program `A368344.P1204575797105107372` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368344 has offset 0).

The definition of A368344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368344.P8636336297241937268

`a(n-3)+(3^(n-2)-1)/2` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A368344.P8636336297241937268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + ((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1) / 2

end

end A368344.P8636336297241937268

namespace A368344

/-- `a(n-3)+(3^(n-2)-1)/2` -/
def P8636336297241937268.Spec : Prop :=
  ∀ n, P8636336297241937268.a n = (A368344 n : ℚ)

end A368344

/-! ## A368344.P1204575797105107372

`4*a(n-1)-3*a(n-2)+a(n-3)-4*a(n-4)+3*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368344

/-- `4*a(n-1)-3*a(n-2)+a(n-3)-4*a(n-4)+3*a(n-5)` -/
def P1204575797105107372.Spec : Prop :=
  ∀ n, P1204575797105107372.a n = A368344 n

theorem P1204575797105107372.correct : P1204575797105107372.Spec := by
  intro n
  simp only [A368344]

end A368344

/-! ## A368344.P13934735977709795550

`(floor(3^(n+1)/26)-floor((n+1)/3))/2`
-/

namespace A368344.P13934735977709795550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(3 ^ (n + 1) : ℚ) / 26⌋ - ⌊(n + 1 : ℚ) / 3⌋ : ℚ) / 2

end

end A368344.P13934735977709795550

namespace A368344

/-- `(floor(3^(n+1)/26)-floor((n+1)/3))/2` -/
def P13934735977709795550.Spec : Prop :=
  ∀ n, P13934735977709795550.a n = (A368344 n : ℚ)

end A368344

/-! ## A368344.P13867965278948721933

`floor(n/3+3*a(n-1))` with `a(0)=0`
-/

namespace A368344.P13867965278948721933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 3 + (3 * a (n - 1) : ℚ)⌋

end

end A368344.P13867965278948721933

namespace A368344

/-- `floor(n/3+3*a(n-1))` -/
def P13867965278948721933.Spec : Prop :=
  ∀ n, P13867965278948721933.a n = A368344 n

end A368344

/-! ## A368344.P13564182792963813054

`val(2^n, 8)+3*a(n-1)` with `a(0)=0`
-/

namespace A368344.P13564182792963813054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.valuation (2 ^ n) 8 + 3 * a (n - 1)

end

end A368344.P13564182792963813054

namespace A368344

/-- `val(2^n, 8)+3*a(n-1)` -/
def P13564182792963813054.Spec : Prop :=
  ∀ n, (P13564182792963813054.a n : ℤ) = A368344 n

end A368344

/-! ## A368344.P6332851486594462406

`3*a(n-1)-floor((2-n)/3)` with `a(0)=0`
-/

namespace A368344.P6332851486594462406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) - ⌊(2 - (n : ℤ) : ℚ) / 3⌋

end

end A368344.P6332851486594462406

namespace A368344

/-- `3*a(n-1)-floor((2-n)/3)` -/
def P6332851486594462406.Spec : Prop :=
  ∀ n, P6332851486594462406.a n = A368344 n

end A368344

/-! ## A368344.P18120742696288790278

`∑[3*a(n-1)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A368344.P18120742696288790278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A368344.P18120742696288790278

namespace A368344

/-- `∑[3*a(n-1)]+a(n-3)` -/
def P18120742696288790278.Spec : Prop :=
  ∀ n, (P18120742696288790278.a n : ℤ) = A368344 n

end A368344

/-! ## A368344.P11343706100456860391

`floor(a(n-1)+a(n-1)+a(n-1)+n/3)` with `a(0)=0`
-/

namespace A368344.P11343706100456860391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (n : ℚ) / 3))⌋

end

end A368344.P11343706100456860391

namespace A368344

/-- `floor(a(n-1)+a(n-1)+a(n-1)+n/3)` -/
def P11343706100456860391.Spec : Prop :=
  ∀ n, P11343706100456860391.a n = A368344 n

end A368344

/-!
# A368345: a(n) = Sum_{k=0..n} 4^(n-k) * floor(k/3).

The programs for A368345, the canonical program `A368345.P15596673633477586949` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368345 has offset 0).

The definition of A368345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368345.P4526348576304693928

`a(n-3)+(4^(n-2)-1)/3` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A368345.P4526348576304693928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + ((4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1) / 3

end

end A368345.P4526348576304693928

namespace A368345

/-- `a(n-3)+(4^(n-2)-1)/3` -/
def P4526348576304693928.Spec : Prop :=
  ∀ n, P4526348576304693928.a n = (A368345 n : ℚ)

end A368345

/-! ## A368345.P15596673633477586949

`5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368345

/-- `5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` -/
def P15596673633477586949.Spec : Prop :=
  ∀ n, P15596673633477586949.a n = A368345 n

theorem P15596673633477586949.correct : P15596673633477586949.Spec := by
  intro n
  simp only [A368345]

end A368345

/-! ## A368345.P2089002703142299002

`(floor(4^(n+1)/63)-floor((n+1)/3))/3`
-/

namespace A368345.P2089002703142299002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(4 ^ (n + 1) : ℚ) / 63⌋ - ⌊(n + 1 : ℚ) / 3⌋ : ℚ) / 3

end

end A368345.P2089002703142299002

namespace A368345

/-- `(floor(4^(n+1)/63)-floor((n+1)/3))/3` -/
def P2089002703142299002.Spec : Prop :=
  ∀ n, P2089002703142299002.a n = (A368345 n : ℚ)

end A368345

/-! ## A368345.P11712095355685583174

`floor(n/3)+4*a(n-1)` with `a(0)=0`
-/

namespace A368345.P11712095355685583174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 3⌋ + 4 * a (n - 1)

end

end A368345.P11712095355685583174

namespace A368345

/-- `floor(n/3)+4*a(n-1)` -/
def P11712095355685583174.Spec : Prop :=
  ∀ n, P11712095355685583174.a n = A368345 n

end A368345

/-! ## A368345.P5639644685430297562

`4*a(n-1)-floor((2-n)/3)` with `a(0)=0`
-/

namespace A368345.P5639644685430297562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) - ⌊(2 - (n : ℤ) : ℚ) / 3⌋

end

end A368345.P5639644685430297562

namespace A368345

/-- `4*a(n-1)-floor((2-n)/3)` -/
def P5639644685430297562.Spec : Prop :=
  ∀ n, P5639644685430297562.a n = A368345 n

end A368345

/-! ## A368345.P3455174006272134424

`∑[4*a(n-1)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A368345.P3455174006272134424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A368345.P3455174006272134424

namespace A368345

/-- `∑[4*a(n-1)]+a(n-3)` -/
def P3455174006272134424.Spec : Prop :=
  ∀ n, (P3455174006272134424.a n : ℤ) = A368345 n

end A368345

/-! ## A368345.P2219747062609967406

`A141844(n)-A014825(n+1)`
-/

namespace A368345.P2219747062609967406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141844 n - A014825 (n + 1)

end

end A368345.P2219747062609967406

namespace A368345

/-- `A141844(n)-A014825(n+1)` -/
def P2219747062609967406.Spec : Prop :=
  ∀ n, P2219747062609967406.a n = A368345 n

end A368345

/-! ## A368345.P2294526583431171621

`∑[A195904(2*n+1)]-A002450(n+1)`
-/

namespace A368345.P2294526583431171621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195904 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002450 (n + 1)

end

end A368345.P2294526583431171621

namespace A368345

/-- `∑[A195904(2*n+1)]-A002450(n+1)` -/
def P2294526583431171621.Spec : Prop :=
  ∀ n, P2294526583431171621.a n = A368345 n

end A368345

/-!
# A368346: a(n) = Sum_{k=0..n} 2^(n-k) * floor(k/4).

The programs for A368346, the canonical program `A368346.P10125156157257497537` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368346 has offset 0).

The definition of A368346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368346.P17950913415766057870

`a(n-4)+2^(n-3)-1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A368346.P17950913415766057870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (n - 4) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - 1

end

end A368346.P17950913415766057870

namespace A368346

/-- `a(n-4)+2^(n-3)-1` -/
def P17950913415766057870.Spec : Prop :=
  ∀ n, P17950913415766057870.a n = (A368346 n : ℚ)

end A368346

/-! ## A368346.P10125156157257497537

`3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368346

/-- `3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` -/
def P10125156157257497537.Spec : Prop :=
  ∀ n, P10125156157257497537.a n = A368346 n

theorem P10125156157257497537.correct : P10125156157257497537.Spec := by
  intro n
  simp only [A368346]

end A368346

/-! ## A368346.P15699659388058772432

`floor(2^(n+1)/15)-floor((n+1)/4)`
-/

namespace A368346.P15699659388058772432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / 15⌋ - ⌊(n + 1 : ℚ) / 4⌋

end

end A368346.P15699659388058772432

namespace A368346

/-- `floor(2^(n+1)/15)-floor((n+1)/4)` -/
def P15699659388058772432.Spec : Prop :=
  ∀ n, P15699659388058772432.a n = A368346 n

end A368346

/-! ## A368346.P7906333486099307595

`floor(n/4+2*a(n-1))` with `a(0)=0`
-/

namespace A368346.P7906333486099307595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 4 + (2 * a (n - 1) : ℚ)⌋

end

end A368346.P7906333486099307595

namespace A368346

/-- `floor(n/4+2*a(n-1))` -/
def P7906333486099307595.Spec : Prop :=
  ∀ n, P7906333486099307595.a n = A368346 n

end A368346

/-! ## A368346.P11689631035710815175

`floor(a(n-1)+a(n-1)+n/4)` with `a(0)=0`
-/

namespace A368346.P11689631035710815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (n : ℚ) / 4)⌋

end

end A368346.P11689631035710815175

namespace A368346

/-- `floor(a(n-1)+a(n-1)+n/4)` -/
def P11689631035710815175.Spec : Prop :=
  ∀ n, P11689631035710815175.a n = A368346 n

end A368346

/-! ## A368346.P18296341598099674433

`∑[floor(A001045(n)/5)]`
-/

namespace A368346.P18296341598099674433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001045 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368346.P18296341598099674433

namespace A368346

/-- `∑[floor(A001045(n)/5)]` -/
def P18296341598099674433.Spec : Prop :=
  ∀ n, P18296341598099674433.a n = A368346 n

end A368346

/-! ## A368346.P6669556863260290932

`∑[A083593(n)-A000079(n)]`
-/

namespace A368346.P6669556863260290932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083593 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368346.P6669556863260290932

namespace A368346

/-- `∑[A083593(n)-A000079(n)]` -/
def P6669556863260290932.Spec : Prop :=
  ∀ n, P6669556863260290932.a n = A368346 n

end A368346

/-!
# A368349: Number of maximal sets of pairs (t,d) where 2 <= t <= n, d is a proper divisor of t, no t is repeated, and no d is repeated.

The programs for A368349, there is no canonical definition to state claims against.
-/

/-! ## A368349.P6432393378609827157

`eq[n, A085161(A171572(n))]`
-/

namespace A368349.P6432393378609827157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A171572 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368349.P6432393378609827157

/-! ## A368349.P16219243935848908471

`eq[A025877(n), A329619(n+1)]`
-/

namespace A368349.P16219243935848908471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368349.P16219243935848908471

/-! ## A368349.P17699765520239728490

`eq[A025877(n), A331289(n+1)]`
-/

namespace A368349.P17699765520239728490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368349.P17699765520239728490

/-! ## A368349.P5087884190632818818

`eq[A253668(n), A308167(n+1)]`
-/

namespace A368349.P5087884190632818818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A368349.P5087884190632818818

/-! ## A368349.P1307847143885232987

`record[A103493(n)-A103438(n+1)]`
-/

namespace A368349.P1307847143885232987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103493 n - A103438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368349.P1307847143885232987

/-!
# A368352: a(n) is the maximal determinant of an n X n Hankel matrix using the integers 1 to 2*n - 1.

The programs for A368352, there is no canonical definition to state claims against.
-/

/-! ## A368352.P5962347616708126751

`A179051(A379174(n)+A033567(n))`
-/

namespace A368352.P5962347616708126751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (A379174 n + A033567 n).toNat

end

end A368352.P5962347616708126751

/-!
# A368353: a(n) is the minimal determinant of an n X n Hankel matrix using the integers 0 to 2*(n - 1).

The programs for A368353, there is no canonical definition to state claims against.
-/

/-! ## A368353.P7922761482923873923

`A323873(n+1)-A048967(A006040(n))`
-/

namespace A368353.P7922761482923873923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323873 (n + 1) - A048967 (A006040 n).toNat

end

end A368353.P7922761482923873923

/-!
# A368354: a(n) is the maximal determinant of an n X n Hankel matrix using the integers 0 to 2*(n - 1).

The programs for A368354, there is no canonical definition to state claims against.
-/

/-! ## A368354.P5861084772524817439

`A087611(A323118(n))+A002486(n)`
-/

namespace A368354.P5861084772524817439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087611 (A323118 n).toNat + A002486 n

end

end A368354.P5861084772524817439

/-!
# A368355: a(n) is the maximal absolute value of the determinant of an n X n Hankel matrix using the integers 0 to 2*(n - 1).

The programs for A368355, there is no canonical definition to state claims against.
-/

/-! ## A368355.P6051548995086614237

`A358568(n)+char[6]`
-/

namespace A368355.P6051548995086614237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358568 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A368355.P6051548995086614237

/-!
# A368356: Numbers k such that A121805(k) is prime.

The programs for A368356, there is no canonical definition to state claims against.
-/

/-! ## A368356.P1024405628148895813

`eq[2, A000005(A121805(n+1))]+1`
-/

namespace A368356.P1024405628148895813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A121805 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368356.P1024405628148895813

/-!
# A368357: Consider the doubly-infinite permutation P defined on page 87 of Davis et al. (1977); sequence gives the terms starting at and to the right of 1.

The programs for A368357, there is no canonical definition to state claims against.
-/

/-! ## A368357.P4254572865174699295

`A059893(lt[0, n%2-2*a(floor(n/2))])` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A368357.P4254572865174699295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f2 =>
  ((n % 2 : ℕ) : ℤ) - 2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A368357.P4254572865174699295

/-!
# A368358: Consider the doubly-infinite permutation P defined on page 87 of Davis et al. (1977); sequence gives the terms starting at and to the left of 1, in reverse order.

The programs for A368358, there is no canonical definition to state claims against.
-/

/-! ## A368358.P2523349087170639816

`A059893(lt[1-a(floor(n/2)), 1])` with `a(0)=1, a(1)=0`
-/

namespace A368358.P2523349087170639816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - f1 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368358.P2523349087170639816

/-! ## A368358.P17733659123209163457

`A059893(eq[2, 2/a(floor(n/2))])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A368358.P17733659123209163457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  2 / f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A368358.P17733659123209163457

/-! ## A368358.P17757162166015004392

`A059893(A053738(n+1))`
-/

namespace A368358.P17757162166015004392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A053738 (n + 1)).toNat

end

end A368358.P17757162166015004392

/-! ## A368358.P6997043115339569623

`A059893(eq[0, A275973(n+1)])`
-/

namespace A368358.P6997043115339569623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368358.P6997043115339569623

/-! ## A368358.P7590849035291578937

`A059893(lt[A275973(n+1), 1])`
-/

namespace A368358.P7590849035291578937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368358.P7590849035291578937

/-!
# A368360: Comma transform of the even numbers.

The programs for A368360, the canonical program `A368360.P8125097341637287055` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368360 has offset 0).

The definition of A368360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368360.P8125097341637287055

`A367362((n+1)²-n²)-10`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368360

/-- `A367362((n+1)²-n²)-10` -/
def P8125097341637287055.Spec : Prop :=
  ∀ n, P8125097341637287055.a n = A368360 n

theorem P8125097341637287055.correct : P8125097341637287055.Spec := by
  intro n
  simp only [A368360]

end A368360

/-!
# A368361: Comma transform of the odd numbers.

The programs for A368361, there is no canonical definition to state claims against.
-/

/-! ## A368361.P91738583122387101

`or(A353524(A236563(2*n+5)), A367362(2*n+1))`
-/

namespace A368361.P91738583122387101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A353524 (A236563 (2 * n + 5)).toNat) (A367362 (2 * n + 1))

end

end A368361.P91738583122387101

/-!
# A368363: Partial sums of A136107.

The programs for A368363, the canonical program `A368363.P14659399016946543767` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368363 has offset 1).

The definition of A368363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368363.P5453871073159790933

`∑[∑{d}[n+1, #%2]-char[∑[n-1]]]`
-/

namespace A368363.P5453871073159790933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368363.P5453871073159790933

namespace A368363

/-- `∑[∑{d}[n+1, #%2]-char[∑[n-1]]]` -/
def P5453871073159790933.Spec : Prop :=
  ∀ n, P5453871073159790933.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P14659399016946543767

`∑[A136107(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A368363

/-- `∑[A136107(n+1)]` -/
def P14659399016946543767.Spec : Prop :=
  ∀ n, P14659399016946543767.a n = A368363 (n + 1)

theorem P14659399016946543767.correct : P14659399016946543767.Spec := by
  intro n
  simp only [A368363, Nat.add_sub_cancel]

end A368363

/-! ## A368363.P3669997099823895484

`A060831(n)-A238005(n+1)`
-/

namespace A368363.P3669997099823895484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A238005 (n + 1)

end

end A368363.P3669997099823895484

namespace A368363

/-- `A060831(n)-A238005(n+1)` -/
def P3669997099823895484.Spec : Prop :=
  ∀ n, P3669997099823895484.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P12641940657181238509

`A060831(n+1)-A003056(n+1)`
-/

namespace A368363.P12641940657181238509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - A003056 (n + 1)

end

end A368363.P12641940657181238509

namespace A368363

/-- `A060831(n+1)-A003056(n+1)` -/
def P12641940657181238509.Spec : Prop :=
  ∀ n, P12641940657181238509.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P18320989496283155036

`A006463(n+1)-A347737(n+1)`
-/

namespace A368363.P18320989496283155036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) - A347737 (n + 1)

end

end A368363.P18320989496283155036

namespace A368363

/-- `A006463(n+1)-A347737(n+1)` -/
def P18320989496283155036.Spec : Prop :=
  ∀ n, P18320989496283155036.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P13506383922843113546

`A060831(n+1)-Δ[A006463(n+1)]`
-/

namespace A368363.P13506383922843113546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (f1 (n + 1) - f1 n)

end

end A368363.P13506383922843113546

namespace A368363

/-- `A060831(n+1)-Δ[A006463(n+1)]` -/
def P13506383922843113546.Spec : Prop :=
  ∀ n, P13506383922843113546.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P5766791565013767776

`A060831(n)+A347737(n)-A347737(n+1)`
-/

namespace A368363.P5766791565013767776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n + (A347737 n - A347737 (n + 1))

end

end A368363.P5766791565013767776

namespace A368363

/-- `A060831(n)+A347737(n)-A347737(n+1)` -/
def P5766791565013767776.Spec : Prop :=
  ∀ n, P5766791565013767776.a n = A368363 (n + 1)

end A368363

/-! ## A368363.P5176693960987275615

`∑[A001227(2*(n+1))]-A003056(n+1)`
-/

namespace A368363.P5176693960987275615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 (n + 1)

end

end A368363.P5176693960987275615

namespace A368363

/-- `∑[A001227(2*(n+1))]-A003056(n+1)` -/
def P5176693960987275615.Spec : Prop :=
  ∀ n, P5176693960987275615.a n = A368363 (n + 1)

end A368363

/-!
# A368364: a(n) = number of s with n^k-n^2 <= s <= n^k-1, k >= 3, such that a comma sequence in base n with initial term s will not reach n^k.

The programs for A368364, there is no canonical definition to state claims against.
-/

/-! ## A368364.P9619150621933806922

`A368363(n+2)-1`
-/

namespace A368364.P9619150621933806922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368363 (n + 2) - 1

end

end A368364.P9619150621933806922

/-! ## A368364.P7678970360406179123

`∑[A136107(n+2)]-1`
-/

namespace A368364.P7678970360406179123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A368364.P7678970360406179123

/-! ## A368364.P352872414928432050

`A023443(A368363(n+2))`
-/

namespace A368364.P352872414928432050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A368363 (n + 2)).toNat

end

end A368364.P352872414928432050

/-! ## A368364.P1537064993697024790

`∑[A136107(A153152(n+1))]`
-/

namespace A368364.P1537064993697024790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (A153152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368364.P1537064993697024790

/-! ## A368364.P2839237709932169093

`∑[A136107(n+2)%A018211(n)]`
-/

namespace A368364.P2839237709932169093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136107 (n + 2)) (A018211 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368364.P2839237709932169093

/-! ## A368364.P10748083386553909878

`∑[A001227(2*(n+2))]-A259361(2*(n+2))`
-/

namespace A368364.P10748083386553909878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259361 (2 * (n + 2))

end

end A368364.P10748083386553909878

/-!
# A368365: Numbers n whose comma-number is greater than n.

The programs for A368365, there is no canonical definition to state claims against.
-/

/-! ## A368365.P3592206764250806706

`lt[n, A367339(n+1)]+1`
-/

namespace A368365.P3592206764250806706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368365.P3592206764250806706

/-! ## A368365.P3504971056006821829

`lt[n, A367338(n+1)-n]+1`
-/

namespace A368365.P3504971056006821829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368365.P3504971056006821829

/-! ## A368365.P705544415623165349

`lt[A004277(n), A367338(n+1)]+1`
-/

namespace A368365.P705544415623165349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368365.P705544415623165349

/-! ## A368365.P10934535560700923909

`lt[A060747(n), A367338(n+1)]+1`
-/

namespace A368365.P10934535560700923909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A368365.P10934535560700923909

/-! ## A368365.P12133183349795661343

`record[A000027(n+1)%A367339(n+1)]`
-/

namespace A368365.P12133183349795661343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A367339 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368365.P12133183349795661343

/-!
# A368366: AGM transform of positive integers (see Comments for definition).

The programs for A368366, the canonical program `A368366.P6656122928088608787` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368366 has offset 1).

The definition of A368366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368366.P6656122928088608787

`(n+1)^(n+1)*(((n+2)/2)^(n+1)-(n+1)!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368366

/-- `(n+1)^(n+1)*(((n+2)/2)^(n+1)-(n+1)!)` -/
def P6656122928088608787.Spec : Prop :=
  ∀ n, P6656122928088608787.a n = (A368366 (n + 1) : ℚ)

end A368366

/-! ## A368366.P8061541594785051645

`A061718(n+1)-A061711(n+1)`
-/

namespace A368366.P8061541594785051645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061718 (n + 1) - A061711 (n + 1)

end

end A368366.P8061541594785051645

namespace A368366

/-- `A061718(n+1)-A061711(n+1)` -/
def P8061541594785051645.Spec : Prop :=
  ∀ n, P8061541594785051645.a n = A368366 (n + 1)

end A368366

/-! ## A368366.P14403079325897319069

`A369395(n+1)/Δ[A126646(n)]`
-/

namespace A368366.P14403079325897319069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369395 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A368366.P14403079325897319069

namespace A368366

/-- `A369395(n+1)/Δ[A126646(n)]` -/
def P14403079325897319069.Spec : Prop :=
  ∀ n, P14403079325897319069.a n = (A368366 (n + 1) : ℚ)

end A368366

/-! ## A368366.P18352229646490307780

`A369395(n+1)/A000079(n+1)`
-/

namespace A368366.P18352229646490307780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369395 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A368366.P18352229646490307780

namespace A368366

/-- `A369395(n+1)/A000079(n+1)` -/
def P18352229646490307780.Spec : Prop :=
  ∀ n, P18352229646490307780.a n = (A368366 (n + 1) : ℚ)

end A368366

/-! ## A368366.P8365305450854621125

`A369395(n+1)/Δ[A000225(n+1)]`
-/

namespace A368366.P8365305450854621125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369395 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A368366.P8365305450854621125

namespace A368366

/-- `A369395(n+1)/Δ[A000225(n+1)]` -/
def P8365305450854621125.Spec : Prop :=
  ∀ n, P8365305450854621125.a n = (A368366 (n + 1) : ℚ)

end A368366

/-!
# A368368: AGM transform of squares.

The programs for A368368, the canonical program `A368368.P5617024099233789518` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368368 has offset 1).

The definition of A368368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368368.P5617024099233789518

`((n+1)*(n+2)*(2*(n+1)+1)/6)^(n+1)-(n+1)^(n+1)*(n+1)!²`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368368

/-- `((n+1)*(n+2)*(2*(n+1)+1)/6)^(n+1)-(n+1)^(n+1)*(n+1)!²` -/
def P5617024099233789518.Spec : Prop :=
  ∀ n, P5617024099233789518.a n = (A368368 (n + 1) : ℚ)

end A368368

/-!
# A368369: AGM transform of odd numbers.

The programs for A368369, there is no canonical definition to state claims against.
-/

/-! ## A368369.P8728173998304891046

`(A000312(n+1)-A001147(n+1))*A000312(n+1)`
-/

namespace A368369.P8728173998304891046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) - A001147 (n + 1)) * A000312 (n + 1)

end

end A368369.P8728173998304891046

/-!
# A368370: AGM transform of triangular numbers.

The programs for A368370, there is no canonical definition to state claims against.
-/

/-! ## A368370.P6009631527718988611

`((n+1)*(n+2)*(n+3)/6)^(n+1)-(n+1)^(n+1)*(n+1)!*(n+2)!/2^(n+1)`
-/

namespace A368370.P6009631527718988611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℚ) / 6) ^ (n + 1) - ((n + 1) ^ (n + 1) * Nat.factorial (n + 1) * Nat.factorial (n + 2) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A368370.P6009631527718988611

/-!
# A368371: AGM transform of powers of 2.

The programs for A368371, the canonical program `A368371.P13433624941025391782` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368371 has offset 1).

The definition of A368371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368371.P13433624941025391782

`(2^(n+2)-2)^(n+1)-(n+1)^(n+1)*2^((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A368371

/-- `(2^(n+2)-2)^(n+1)-(n+1)^(n+1)*2^((n+1)*(n+2)/2)` -/
def P13433624941025391782.Spec : Prop :=
  ∀ n, P13433624941025391782.a n = (A368371 (n + 1) : ℝ)

end A368371

/-!
# A368372: a(n) = numerator of AM(n)-HM(n), where AM(n) and HM(n) are the arithmetic and harmonic means of the first n positive integers.

The programs for A368372, there is no canonical definition to state claims against.
-/

/-! ## A368372.P14156433167156417720

`A338730(Δ[n²]^n-1)`
-/

namespace A368372.P14156433167156417720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338730 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n - 1).toNat

end

end A368372.P14156433167156417720

/-!
# A368373: a(n) = denominator of AM(n)-HM(n), where AM(n) and HM(n) are the arithmetic and harmonic means of the first n positive integers.

The programs for A368373, the canonical program `A368373.P10681565599172187300` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368373 has offset 1).

The definition of A368373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368373.P10681565599172187300

`gcd(2, n+1)*A175441(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A368373

/-- `gcd(2, n+1)*A175441(n+1)` -/
def P10681565599172187300.Spec : Prop :=
  ∀ n, P10681565599172187300.a n = A368373 (n + 1)

theorem P10681565599172187300.correct : P10681565599172187300.Spec := by
  intro n
  simp only [A368373, Nat.add_sub_cancel]

end A368373

/-! ## A368373.P12260315162574562622

`A000034(n)*A175441(n+1)`
-/

namespace A368373.P12260315162574562622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A175441 (n + 1)

end

end A368373.P12260315162574562622

namespace A368373

/-- `A000034(n)*A175441(n+1)` -/
def P12260315162574562622.Spec : Prop :=
  ∀ n, P12260315162574562622.a n = A368373 (n + 1)

end A368373

/-! ## A368373.P13292005607705756442

`Δ[A001651(n+1)]*A175441(n+1)`
-/

namespace A368373.P13292005607705756442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A175441 (n + 1)

end

end A368373.P13292005607705756442

namespace A368373

/-- `Δ[A001651(n+1)]*A175441(n+1)` -/
def P13292005607705756442.Spec : Prop :=
  ∀ n, P13292005607705756442.a n = A368373 (n + 1)

end A368373

/-! ## A368373.P11185372629013516684

`A130196(A032766(n))*A175441(n+1)`
-/

namespace A368373.P11185372629013516684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A032766 n).toNat * A175441 (n + 1)

end

end A368373.P11185372629013516684

namespace A368373

/-- `A130196(A032766(n))*A175441(n+1)` -/
def P11185372629013516684.Spec : Prop :=
  ∀ n, P11185372629013516684.a n = A368373 (n + 1)

end A368373

/-! ## A368373.P13132673521993075628

`A040774(A092569(3*n+2))*A175441(n+1)`
-/

namespace A368373.P13132673521993075628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040774 (A092569 (3 * n + 2)).toNat * A175441 (n + 1)

end

end A368373.P13132673521993075628

namespace A368373

/-- `A040774(A092569(3*n+2))*A175441(n+1)` -/
def P13132673521993075628.Spec : Prop :=
  ∀ n, P13132673521993075628.a n = A368373 (n + 1)

end A368373

/-!
# A368374: a(n) = smallest k such that AM(k) - GM(k) >= n, where AM(k) and GM(k) are the arithmetic and geometric means of [1,...,k].

The programs for A368374, there is no canonical definition to state claims against.
-/

/-! ## A368374.P2077858836723925596

`A189385(2*n+1)%A309580(A134062(n))`
-/

namespace A368374.P2077858836723925596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189385 (2 * n + 1)) (A309580 (A134062 n).toNat)

end

end A368374.P2077858836723925596

/-! ## A368374.P7556056513019939442

`or(A003622(3*n+1), A284260(A241530(n)))`
-/

namespace A368374.P7556056513019939442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003622 (3 * n + 1)) (A284260 (A241530 n).toNat)

end

end A368374.P7556056513019939442

/-! ## A368374.P4635999662357825236

`A126281(3*n+2)-A049310(A001462(n+3))`
-/

namespace A368374.P4635999662357825236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (3 * n + 2) - A049310 (A001462 (n + 3)).toNat

end

end A368374.P4635999662357825236

/-!
# A368375: Arises from enumeration of a certain class of partial knight's paths on the square grid.

The programs for A368375, there is no canonical definition to state claims against.
-/

/-! ## A368375.P5489110151372714692

`A096587(n²+2)`
-/

namespace A368375.P5489110151372714692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (n ^ 2 + 2)

end

end A368375.P5489110151372714692

/-!
# A368378: Arises from enumeration of a certain class of partial zig-zag knight's paths on the square grid.

The programs for A368378, there is no canonical definition to state claims against.
-/

/-! ## A368378.P8259975796863430081

`Δ[A026008(n)]`
-/

namespace A368378.P8259975796863430081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368378.P8259975796863430081

/-! ## A368378.P10421555000037362133

`Δ[C(n, ceil(n/2))-A037956(n)]`
-/

namespace A368378.P10421555000037362133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat : ℤ) - A037956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368378.P10421555000037362133

/-! ## A368378.P16420929143277742577

`Δ[A009766(∑[∑[n]%(n+1)+1])]`
-/

namespace A368378.P16420929143277742577
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368378.P16420929143277742577

/-! ## A368378.P5014192569629473531

`Δ[A001405(n)-A037956(n)]`
-/

namespace A368378.P5014192569629473531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368378.P5014192569629473531

/-! ## A368378.P15183054094576993995

`Δ[A051920(n)-A037956(n)]`
-/

namespace A368378.P15183054094576993995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - A037956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368378.P15183054094576993995

/-!
# A368379: Arises from enumeration of a certain class of partial zig-zag knight's paths on the square grid.

The programs for A368379, there is no canonical definition to state claims against.
-/

/-! ## A368379.P9088323323423228734

`Δ[A026021(n)-A208355(n)]`
-/

namespace A368379.P9088323323423228734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 n - A208355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368379.P9088323323423228734

/-! ## A368379.P6350709153067912317

`filter[A187497(3*n), A089939(#)]`
-/

namespace A368379.P6350709153067912317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A368379.P6350709153067912317

/-! ## A368379.P6966182165354568452

`filter[A187497(3*n), A103451(#)]`
-/

namespace A368379.P6966182165354568452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A368379.P6966182165354568452

/-! ## A368379.P8803506429356163473

`filter[A187497(3*n), A114000(#)]`
-/

namespace A368379.P8803506429356163473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114000 (f1 j).toNat = 1) n)

end

end A368379.P8803506429356163473

/-! ## A368379.P4900719533477859042

`filter[A187497(3*n), A114213(#)]`
-/

namespace A368379.P4900719533477859042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A368379.P4900719533477859042

/-!
# A368380: Arises from enumeration of a certain class of partial zig-zag knight's paths on the square grid.

The programs for A368380, there is no canonical definition to state claims against.
-/

/-! ## A368380.P14438079465200639649

`Δ[A026034(n)-A026008(n)]`
-/

namespace A368380.P14438079465200639649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026034 n - A026008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368380.P14438079465200639649

/-! ## A368380.P7973370925638637226

`Δ[A037956(n)-A037958(n)]`
-/

namespace A368380.P7973370925638637226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 n - A037958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368380.P7973370925638637226

/-! ## A368380.P14224525861746320348

`Δ[A037956(n)-(A001405(n)-A026034(n))]`
-/

namespace A368380.P14224525861746320348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 n - (A001405 n - A026034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368380.P14224525861746320348

/-! ## A368380.P1299368286193976682

`Δ[A037956(n)-(A210736(n+1)-A026034(n))]`
-/

namespace A368380.P1299368286193976682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 n - (A210736 (n + 1) - A026034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368380.P1299368286193976682

/-!
# A368384: Records in A364054.

The programs for A368384, there is no canonical definition to state claims against.
-/

/-! ## A368384.P9431536997590018180

`record[A364054(n+1)]`
-/

namespace A368384.P9431536997590018180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368384.P9431536997590018180

/-! ## A368384.P17740655565616326943

`A364054(A368385(n+1))`
-/

namespace A368384.P17740655565616326943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364054 (A368385 (n + 1)).toNat

end

end A368384.P17740655565616326943

/-! ## A368384.P10388624792472011923

`record[A006509(n+1)%A349643(n+2)]`
-/

namespace A368384.P10388624792472011923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006509 (n + 1)) (A349643 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368384.P10388624792472011923

/-!
# A368387: a(n) is the denominator of the probability that the free polyomino with binary code A246521(n+1) appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368387, there is no canonical definition to state claims against.
-/

/-! ## A368387.P3559123526658139842

`A368386(n+1)/(A368392(n+1)/A368393(n+1)*A335573(n+2))`
-/

namespace A368387.P3559123526658139842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368386 (n + 1) : ℚ) / ((A368392 (n + 1) : ℚ) / (A368393 (n + 1) : ℚ) * (A335573 (n + 2) : ℚ))

end

end A368387.P3559123526658139842

/-! ## A368387.P1615312489410965464

`A274193(A056835(n))`
-/

namespace A368387.P1615312489410965464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274193 (A056835 n).toNat

end

end A368387.P1615312489410965464

/-! ## A368387.P9975207057545371621

`A057546(A321082(n+2))`
-/

namespace A368387.P9975207057545371621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057546 (A321082 (n + 2)).toNat

end

end A368387.P9975207057545371621

/-! ## A368387.P12750686638579677330

`or(1, A040297(A276840(n)))`
-/

namespace A368387.P12750686638579677330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A040297 (A276840 n).toNat)

end

end A368387.P12750686638579677330

/-! ## A368387.P1266365484884041801

`35%A006552(A000726(n))`
-/

namespace A368387.P1266365484884041801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 35 (A006552 (A000726 n).toNat)

end

end A368387.P1266365484884041801

/-!
# A368388: Numerator of the least probability that a particular free polyomino with n cells appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368388, there is no canonical definition to state claims against.
-/

/-! ## A368388.P18286036155272145083

`A035093(A148507(n))`
-/

namespace A368388.P18286036155272145083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (A148507 n).toNat

end

end A368388.P18286036155272145083

/-! ## A368388.P10488579565165175043

`A035093(A148508(n))`
-/

namespace A368388.P10488579565165175043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (A148508 n).toNat

end

end A368388.P10488579565165175043

/-! ## A368388.P11675941594482072230

`A173239(A063028(n))`
-/

namespace A368388.P11675941594482072230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173239 (A063028 n).toNat

end

end A368388.P11675941594482072230

/-!
# A368389: Denominator of the least probability that a particular free polyomino with n cells appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368389, there is no canonical definition to state claims against.
-/

/-! ## A368389.P3615302460097645709

`A368387(A130866(n+1))`
-/

namespace A368389.P3615302460097645709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368387 (A130866 (n + 1)).toNat

end

end A368389.P3615302460097645709

/-! ## A368389.P15281995235754180786

`A368387(∑[A000105(n+1)])`
-/

namespace A368389.P15281995235754180786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368387 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368389.P15281995235754180786

/-!
# A368391: Denominator of the greatest probability that a particular free polyomino with n cells appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368391, there is no canonical definition to state claims against.
-/

/-! ## A368391.P10117585408138341077

`7*A331781(a(n-1)+6)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A368391.P10117585408138341077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  7 * A331781 (a (n - 1) + 6).toNat

end

end A368391.P10117585408138341077

/-!
# A368394: Numerator of the greatest probability that a particular fixed polyomino with n cells appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368394, there is no canonical definition to state claims against.
-/

/-! ## A368394.P16709958479371255223

`A368392(A066345(n+1))`
-/

namespace A368394.P16709958479371255223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368392 (A066345 (n + 1)).toNat

end

end A368394.P16709958479371255223

/-! ## A368394.P18176503463459606030

`A368392(A361912(n)+A007090(n))`
-/

namespace A368394.P18176503463459606030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368392 (A361912 n + A007090 n).toNat

end

end A368394.P18176503463459606030

/-!
# A368395: Denominator of the greatest probability that a particular fixed polyomino with n cells appears in internal diffusion-limited aggregation on the square lattice.

The programs for A368395, there is no canonical definition to state claims against.
-/

/-! ## A368395.P1684463700330535186

`A368393(A361912(n)+A007090(n))`
-/

namespace A368395.P1684463700330535186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368393 (A361912 n + A007090 n).toNat

end

end A368395.P1684463700330535186

/-!
# A368396: Prime numbers in Narayana's cows sequence A000930.

The programs for A368396, there is no canonical definition to state claims against.
-/

/-! ## A368396.P4061329836048707843

`A000930(A170954(n+1))`
-/

namespace A368396.P4061329836048707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A170954 (n + 1)).toNat

end

end A368396.P4061329836048707843

/-! ## A368396.P17092450986197120267

`gcd(A199804(A170954(n+1)), A235145(n))`
-/

namespace A368396.P17092450986197120267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199804 (A170954 (n + 1)).toNat) (A235145 n)

end

end A368396.P17092450986197120267

/-! ## A368396.P9290986822506156821

`p?[a(n-1)+a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A368396.P9290986822506156821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A368396.P9290986822506156821

/-! ## A368396.P3917819785344464893

`p?[A000930(n)]`
-/

namespace A368396.P3917819785344464893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A368396.P3917819785344464893

