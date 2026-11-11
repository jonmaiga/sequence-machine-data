import SequenceMachineLib.Basic
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

/-!
# A044300: Numbers k such that string 5,4 occurs in the base 9 representation of k but not of k-1.

The programs for A044300, there is no canonical definition to state claims against.
-/

/-! ## A044300.P7679294935761949989

`A167964(Δ[n²])+A044680(n+1)`
-/

namespace A044300.P7679294935761949989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A044680 (n + 1)

end

end A044300.P7679294935761949989

/-! ## A044300.P15250356382952543572

`A054977(2*n*(2*(n+1)-12)+31)+A044680(n+1)`
-/

namespace A044300.P15250356382952543572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((2 * n : ℤ) * ((2 * (n + 1) : ℤ) - 12) + 31).toNat + A044680 (n + 1)

end

end A044300.P15250356382952543572

/-! ## A044300.P6241145430534039794

`A044680(1+n)+A040858(A333147(n))`
-/

namespace A044300.P6241145430534039794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044680 (1 + n) + A040858 (A333147 n).toNat

end

end A044300.P6241145430534039794

/-! ## A044300.P15751037506456986903

`A057427(A141556(n+1))+A044680(n+1)`
-/

namespace A044300.P15751037506456986903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A141556 (n + 1)).toNat + A044680 (n + 1)

end

end A044300.P15751037506456986903

/-! ## A044300.P2153691013084729655

`A044680(n+1)+A001222(A348153(n+1))`
-/

namespace A044300.P2153691013084729655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044680 (n + 1) + A001222 (A348153 (n + 1)).toNat

end

end A044300.P2153691013084729655

/-!
# A044301: Numbers n such that string 5,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044301, there is no canonical definition to state claims against.
-/

/-! ## A044301.P14562939722358880833

`A043210(2*(n+1))-9%A042983(n+1)`
-/

namespace A044301.P14562939722358880833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (2 * (n + 1)) - Int.tmod 9 (A042983 (n + 1))

end

end A044301.P14562939722358880833

/-! ## A044301.P9999529952274820023

`A037475(A044178(n+1)^A043537(n+3))`
-/

namespace A044301.P9999529952274820023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A044178 (n + 1) : ℚ) ^ (A043537 (n + 3) : ℤ))).toNat

end

end A044301.P9999529952274820023

/-!
# A044302: Numbers k such that the string 5,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044302, there is no canonical definition to state claims against.
-/

/-! ## A044302.P15350321649777882100

`(5*A044306(n+1))%(A044687(n+1)-A057428(A345560(n+1)))`
-/

namespace A044302.P15350321649777882100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A044306 (n + 1)) (A044687 (n + 1) - A057428 (A345560 (n + 1)).toNat)

end

end A044302.P15350321649777882100

/-! ## A044302.P3052292143992224825

`A112053(A300974(n))+A044683(n+1)`
-/

namespace A044302.P3052292143992224825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A300974 n).toNat + A044683 (n + 1)

end

end A044302.P3052292143992224825

/-! ## A044302.P11194326723680570371

`xor(A005872(A068556(n)), A044683(n+1))`
-/

namespace A044302.P11194326723680570371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005872 (A068556 n).toNat) (A044683 (n + 1))

end

end A044302.P11194326723680570371

/-!
# A044303: Numbers n such that string 5,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044303, there is no canonical definition to state claims against.
-/

/-! ## A044303.P3472802316408200194

`A054977(3*(n+1)²)+A044683(n+1)`
-/

namespace A044303.P3472802316408200194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * (n + 1) ^ 2) + A044683 (n + 1)

end

end A044303.P3472802316408200194

/-! ## A044303.P14542836070741050751

`A044683(n+1)+A001222(A128926(n+1))`
-/

namespace A044303.P14542836070741050751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A001222 (A128926 (n + 1)).toNat

end

end A044303.P14542836070741050751

/-! ## A044303.P8017707252678747729

`A044683(n+1)+A008683(A162409(n+1))`
-/

namespace A044303.P8017707252678747729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A008683 (A162409 (n + 1)).toNat

end

end A044303.P8017707252678747729

/-! ## A044303.P4624509516013069024

`A044683(n+1)+A001222(A237055(n+1))`
-/

namespace A044303.P4624509516013069024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A001222 (A237055 (n + 1)).toNat

end

end A044303.P4624509516013069024

/-! ## A044303.P12102853343899517482

`A044683(n+1)+A001222(A240724(n+1))`
-/

namespace A044303.P12102853343899517482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A001222 (A240724 (n + 1)).toNat

end

end A044303.P12102853343899517482

/-! ## A044303.P11178952281246368656

`A044683(n+1)+A014963(A334015(n+1))`
-/

namespace A044303.P11178952281246368656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A014963 (A334015 (n + 1)).toNat

end

end A044303.P11178952281246368656

/-! ## A044303.P2638324204168136443

`A044683(n+1)+A001511(A044718(2*(n+1)))`
-/

namespace A044303.P2638324204168136443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044683 (n + 1) + A001511 (A044718 (2 * (n + 1))).toNat

end

end A044303.P2638324204168136443

/-!
# A044304: Numbers n such that string 5,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044304, there is no canonical definition to state claims against.
-/

/-! ## A044304.P17715728364791860708

`A002517(A051340(13*13*(n+1))+A044687(n+1))%A044307(n+1)`
-/

namespace A044304.P17715728364791860708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002517 (A051340 (13 * (13 * (n + 1))) + A044687 (n + 1)).toNat) (A044307 (n + 1))

end

end A044304.P17715728364791860708

/-! ## A044304.P16106507025764873760

`A054977(∑[6*n+1])+A044684(n+1)`
-/

namespace A044304.P16106507025764873760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j) + A044684 (n + 1)

end

end A044304.P16106507025764873760

/-! ## A044304.P7834139721903294842

`A051340(A003215(n))+A044684(n+1)`
-/

namespace A044304.P7834139721903294842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A003215 n).toNat + A044684 (n + 1)

end

end A044304.P7834139721903294842

/-! ## A044304.P16424611263669379632

`A044684(n+1)+A001222(A285688(n+1))`
-/

namespace A044304.P16424611263669379632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044684 (n + 1) + A001222 (A285688 (n + 1)).toNat

end

end A044304.P16424611263669379632

/-! ## A044304.P14148378951201614898

`A347523(A206552(n+1))+A044684(n+1)`
-/

namespace A044304.P14148378951201614898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A206552 (n + 1)).toNat + A044684 (n + 1)

end

end A044304.P14148378951201614898

/-! ## A044304.P7401304734828853217

`A044684(n+1)+A000035(A142060(n+5))`
-/

namespace A044304.P7401304734828853217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044684 (n + 1) + A000035 (A142060 (n + 5)).toNat

end

end A044304.P7401304734828853217

/-! ## A044304.P1607928978070280759

`A002517(A044303(n+1))%A081425(A193970(n))`
-/

namespace A044304.P1607928978070280759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002517 (A044303 (n + 1)).toNat) (A081425 (A193970 n).toNat)

end

end A044304.P1607928978070280759

/-! ## A044304.P1971198724666408400

`A001222(A257716(n+1))*A002517(A044303(n+1))`
-/

namespace A044304.P1971198724666408400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257716 (n + 1)).toNat * A002517 (A044303 (n + 1)).toNat

end

end A044304.P1971198724666408400

/-!
# A044305: Numbers n such that string 6,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044305, there is no canonical definition to state claims against.
-/

/-! ## A044305.P6752626159909608104

`A305548(A055048(n+1))+A000007(A270461(n))`
-/

namespace A044305.P6752626159909608104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A000007 (A270461 n).toNat

end

end A044305.P6752626159909608104

/-! ## A044305.P18243114748476475175

`A305548(A055048(n+1))+A000007(A169693(n+1))`
-/

namespace A044305.P18243114748476475175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A000007 (A169693 (n + 1)).toNat

end

end A044305.P18243114748476475175

/-! ## A044305.P2996590088178515688

`A305548(A055048(n+1))+A000038(A053033(n+2))`
-/

namespace A044305.P2996590088178515688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A000038 (A053033 (n + 2)).toNat

end

end A044305.P2996590088178515688

/-! ## A044305.P16486133077824313999

`A305548(A055048(n+1))+A000007(A053033(n+2)+1)`
-/

namespace A044305.P16486133077824313999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A000007 (A053033 (n + 2) + 1).toNat

end

end A044305.P16486133077824313999

/-! ## A044305.P17869946454904790027

`A305548(A055048(n+1)%A096679(n+1))`
-/

namespace A044305.P17869946454904790027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (Int.tmod (A055048 (n + 1)) (A096679 (n + 1))).toNat

end

end A044305.P17869946454904790027

/-! ## A044305.P313174092698864536

`A305548(A055048(n+1))+A000038(A096678(n+1))`
-/

namespace A044305.P313174092698864536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A000038 (A096678 (n + 1)).toNat

end

end A044305.P313174092698864536

/-! ## A044305.P17323414796082386982

`A305548(A055048(n+1))+A005089(A137575(n+1))`
-/

namespace A044305.P17323414796082386982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A055048 (n + 1)).toNat + A005089 (A137575 (n + 1)).toNat

end

end A044305.P17323414796082386982

/-!
# A044306: Numbers n such that string 6,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044306, there is no canonical definition to state claims against.
-/

/-! ## A044306.P5682220341437642501

`A002517(1+A044687(n+1))/3`
-/

namespace A044306.P5682220341437642501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002517 (1 + A044687 (n + 1)).toNat : ℚ) / 3

end

end A044306.P5682220341437642501

/-! ## A044306.P6961730273530853337

`A054977(A000009(n))+A044686(n+1)`
-/

namespace A044306.P6961730273530853337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000009 n).toNat + A044686 (n + 1)

end

end A044306.P6961730273530853337

/-! ## A044306.P8421414662506884736

`A054977(A099608(n))+A044686(n+1)`
-/

namespace A044306.P8421414662506884736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A099608 n).toNat + A044686 (n + 1)

end

end A044306.P8421414662506884736

/-! ## A044306.P7580033047865675123

`A044686(n+1)+A010156(A333147(n))`
-/

namespace A044306.P7580033047865675123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) + A010156 (A333147 n).toNat

end

end A044306.P7580033047865675123

/-! ## A044306.P18899812717070157

`A044686(n+1)+A009195(A059698(n+1))`
-/

namespace A044306.P18899812717070157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) + A009195 (A059698 (n + 1)).toNat

end

end A044306.P18899812717070157

/-! ## A044306.P14523515127875759723

`A044686(n+1)+A001222(A176371(n+1))`
-/

namespace A044306.P14523515127875759723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) + A001222 (A176371 (n + 1)).toNat

end

end A044306.P14523515127875759723

/-! ## A044306.P18249291628062132824

`A044686(n+1)+A001222(A195602(n+1))`
-/

namespace A044306.P18249291628062132824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) + A001222 (A195602 (n + 1)).toNat

end

end A044306.P18249291628062132824

/-! ## A044306.P14830872380092488589

`A044686(n+1)+A001222(A226218(n+1))`
-/

namespace A044306.P14830872380092488589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) + A001222 (A226218 (n + 1)).toNat

end

end A044306.P14830872380092488589

/-! ## A044306.P2342173941210562178

`A044686(n+1)-A033999(A137754(n+1))`
-/

namespace A044306.P2342173941210562178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044686 (n + 1) - A033999 (A137754 (n + 1)).toNat

end

end A044306.P2342173941210562178

/-!
# A044307: Numbers k such that the string 6,2 occurs in the base 9 representation of k but not of k-1.

The programs for A044307, there is no canonical definition to state claims against.
-/

/-! ## A044307.P2065896055341523811

`A044687(n+1)+A132207(n)%3`
-/

namespace A044307.P2065896055341523811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044687 (n + 1) + Int.tmod (A132207 n) 3

end

end A044307.P2065896055341523811

/-! ## A044307.P10540599192967568660

`A060576(A079200(n))+A044687(n+1)`
-/

namespace A044307.P10540599192967568660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A079200 n).toNat + A044687 (n + 1)

end

end A044307.P10540599192967568660

/-! ## A044307.P14142194947618838642

`A044687(1+n)+A038500(A132207(n))`
-/

namespace A044307.P14142194947618838642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044687 (1 + n) + A038500 (A132207 n).toNat

end

end A044307.P14142194947618838642

/-! ## A044307.P433047597898104742

`A054977(A301053(n))+A044687(n+1)`
-/

namespace A044307.P433047597898104742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A301053 n).toNat + A044687 (n + 1)

end

end A044307.P433047597898104742

/-! ## A044307.P789493450052352433

`A060576(A194358(n+1))+A044687(n+1)`
-/

namespace A044307.P789493450052352433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A194358 (n + 1)).toNat + A044687 (n + 1)

end

end A044307.P789493450052352433

/-! ## A044307.P3633541490967564526

`A166486(A090708(n+1))+A044687(n+1)`
-/

namespace A044307.P3633541490967564526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A090708 (n + 1)).toNat + A044687 (n + 1)

end

end A044307.P3633541490967564526

/-! ## A044307.P188191099186681495

`A060576(A005891(n+2))+A044687(n+1)`
-/

namespace A044307.P188191099186681495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A005891 (n + 2)).toNat + A044687 (n + 1)

end

end A044307.P188191099186681495

/-! ## A044307.P14077338186819394166

`A044687(n+1)+A000005(val(A132207(n), 3)+1)`
-/

namespace A044307.P14077338186819394166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044687 (n + 1) + A000005 (SequenceMachineLib.valuation (A132207 n).toNat 3 + 1)

end

end A044307.P14077338186819394166

/-! ## A044307.P12420286749799690773

`A044687(n+1)+A020639(val(A132207(n), 3)+1)`
-/

namespace A044307.P12420286749799690773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044687 (n + 1) + A020639 (SequenceMachineLib.valuation (A132207 n).toNat 3 + 1)

end

end A044307.P12420286749799690773

/-! ## A044307.P3848422728301492123

`A044687(n+1)+A000010(val(A132207(n), 3)+2)`
-/

namespace A044307.P3848422728301492123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044687 (n + 1) + A000010 (SequenceMachineLib.valuation (A132207 n).toNat 3 + 2)

end

end A044307.P3848422728301492123

/-!
# A044308: Numbers k such that the string 6,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044308, there is no canonical definition to state claims against.
-/

/-! ## A044308.P11561764136480093304

`A044688(n+1)+gcd(3, A173138(n+1))`
-/

namespace A044308.P11561764136480093304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044688 (n + 1) + (Int.gcd 3 (A173138 (n + 1)) : ℤ)

end

end A044308.P11561764136480093304

/-! ## A044308.P3149381232646430648

`A054977(∑[2+4*(n+1)+n])+A044688(n+1)`
-/

namespace A044308.P3149381232646430648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + (4 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j) + A044688 (n + 1)

end

end A044308.P3149381232646430648

/-! ## A044308.P2954647583475686090

`A044688(n+1)+A000265(A138882(n+1))`
-/

namespace A044308.P2954647583475686090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044688 (n + 1) + A000265 (A138882 (n + 1)).toNat

end

end A044308.P2954647583475686090

/-! ## A044308.P13204304448785673170

`A044688(n+1)+A043545(A142050(n+1))`
-/

namespace A044308.P13204304448785673170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044688 (n + 1) + A043545 (A142050 (n + 1)).toNat

end

end A044308.P13204304448785673170

/-! ## A044308.P15006581752303561851

`A044688(n+1)+A014963(A187965(n+1))`
-/

namespace A044308.P15006581752303561851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044688 (n + 1) + A014963 (A187965 (n + 1)).toNat

end

end A044308.P15006581752303561851

/-! ## A044308.P3244891741089639827

`A044688(n+1)+A158388(n)^A173138(n+1)`
-/

namespace A044308.P3244891741089639827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044688 (n + 1) : ℚ) + (A158388 n : ℚ) ^ (A173138 (n + 1) : ℤ)

end

end A044308.P3244891741089639827

/-!
# A044309: Numbers k such that string 6,4 occurs in the base 9 representation of n but not of k-1.

The programs for A044309, there is no canonical definition to state claims against.
-/

/-! ## A044309.P12187463867542580190

`A044689(1+n)+A151934(n)!`
-/

namespace A044309.P12187463867542580190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (1 + n) + (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044309.P12187463867542580190

/-! ## A044309.P11835524704765192189

`A044689(1+n)+A151935(n)!`
-/

namespace A044309.P11835524704765192189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (1 + n) + (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044309.P11835524704765192189

/-! ## A044309.P3917535315912384218

`A044689(n+1)+A010685(∑[8*n/gcd(2, n)²])`
-/

namespace A044309.P3917535315912384218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A010685 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044309.P3917535315912384218

/-! ## A044309.P13455035946652448243

`A044689(n+1)+A040326(A005891(n))`
-/

namespace A044309.P13455035946652448243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A040326 (A005891 n).toNat

end

end A044309.P13455035946652448243

/-! ## A044309.P6754721675264257942

`A044689(n+1)-A057428(A003107(n))`
-/

namespace A044309.P6754721675264257942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) - A057428 (A003107 n).toNat

end

end A044309.P6754721675264257942

/-! ## A044309.P4096620134315958531

`A044689(n+1)+A000009(A151934(n)²)`
-/

namespace A044309.P4096620134315958531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A000009 (A151934 n ^ 2).toNat

end

end A044309.P4096620134315958531

/-! ## A044309.P6083664700074786146

`A044689(n+1)+A007318(A151934(n)²)`
-/

namespace A044309.P6083664700074786146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A007318 (A151934 n ^ 2).toNat

end

end A044309.P6083664700074786146

/-! ## A044309.P12622115254721847218

`A044689(n+1)+A001222(A002586(n+1))`
-/

namespace A044309.P12622115254721847218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A001222 (A002586 (n + 1)).toNat

end

end A044309.P12622115254721847218

/-! ## A044309.P10241439279549681943

`A044689(n+1)+A000045(A151935(n)+1)`
-/

namespace A044309.P10241439279549681943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A000045 (A151935 n + 1).toNat

end

end A044309.P10241439279549681943

/-! ## A044309.P1527030998652775757

`A044689(n+1)+A007318(A151934(n)+1)`
-/

namespace A044309.P1527030998652775757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044689 (n + 1) + A007318 (A151934 n + 1).toNat

end

end A044309.P1527030998652775757

/-!
# A044310: Numbers k such that the string 6,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044310, there is no canonical definition to state claims against.
-/

/-! ## A044310.P4693603156324629693

`A044690(n+1)+A010055(A219964(n))`
-/

namespace A044310.P4693603156324629693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044690 (n + 1) + A010055 (A219964 n).toNat

end

end A044310.P4693603156324629693

/-! ## A044310.P8082294684370248767

`A054977(A000232(1+n))+A044690(n+1)`
-/

namespace A044310.P8082294684370248767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000232 (1 + n)).toNat + A044690 (n + 1)

end

end A044310.P8082294684370248767

/-! ## A044310.P17830115796930492623

`A044690(n+1)+A000035(A119265(n+1))`
-/

namespace A044310.P17830115796930492623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044690 (n + 1) + A000035 (A119265 (n + 1)).toNat

end

end A044310.P17830115796930492623

/-! ## A044310.P8097379226202142609

`A054977(A108917(n+1))+A044690(n+1)`
-/

namespace A044310.P8097379226202142609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A108917 (n + 1)).toNat + A044690 (n + 1)

end

end A044310.P8097379226202142609

/-! ## A044310.P6125248444975661383

`A191329(A001567(n+1))+A044690(n+1)`
-/

namespace A044310.P6125248444975661383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A001567 (n + 1)).toNat + A044690 (n + 1)

end

end A044310.P6125248444975661383

/-! ## A044310.P16581411202393224451

`A057427(A220487(n+1))+A044690(n+1)`
-/

namespace A044310.P16581411202393224451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A220487 (n + 1)).toNat + A044690 (n + 1)

end

end A044310.P16581411202393224451

/-! ## A044310.P4176575309262046402

`A160338(A173977(n+1))+A044690(n+1)`
-/

namespace A044310.P4176575309262046402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A173977 (n + 1)).toNat + A044690 (n + 1)

end

end A044310.P4176575309262046402

/-! ## A044310.P16524508126732234857

`A044690(n+1)+A001221(A002496(n+1))`
-/

namespace A044310.P16524508126732234857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044690 (n + 1) + A001221 (A002496 (n + 1)).toNat

end

end A044310.P16524508126732234857

/-!
# A044311: Numbers k such that the string 6,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044311, there is no canonical definition to state claims against.
-/

/-! ## A044311.P6531870975513491774

`A044692(n+1)-A184974(A182700(n))`
-/

namespace A044311.P6531870975513491774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044692 (n + 1) - A184974 (A182700 n).toNat

end

end A044311.P6531870975513491774

/-! ## A044311.P2889506160113018230

`A046951(A000255(n))+A044691(n+1)`
-/

namespace A044311.P2889506160113018230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000255 n).toNat + A044691 (n + 1)

end

end A044311.P2889506160113018230

/-! ## A044311.P1132751121276684232

`A124766(A000079(n))+A044691(n+1)`
-/

namespace A044311.P1132751121276684232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A000079 n).toNat + A044691 (n + 1)

end

end A044311.P1132751121276684232

/-!
# A044312: Numbers n such that string 6,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044312, there is no canonical definition to state claims against.
-/

/-! ## A044312.P12168897403335732356

`A044693(n+1)-A218882(A000041(n))`
-/

namespace A044312.P12168897403335732356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044693 (n + 1) - A218882 (A000041 n).toNat

end

end A044312.P12168897403335732356

/-! ## A044312.P11962612751170195095

`A043213(xor(A005408(n), A172536(n+1)))`
-/

namespace A044312.P11962612751170195095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (Int.xor (A005408 n) (A172536 (n + 1))).toNat

end

end A044312.P11962612751170195095

/-! ## A044312.P10283163590943091376

`A043213(xor(A005408(n), A172551(n+1)))`
-/

namespace A044312.P10283163590943091376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (Int.xor (A005408 n) (A172551 (n + 1))).toNat

end

end A044312.P10283163590943091376

/-! ## A044312.P9571327048063572322

`A044313(n+1)-(A218882(A000041(n))+1)`
-/

namespace A044312.P9571327048063572322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044313 (n + 1) - (A218882 (A000041 n).toNat + 1)

end

end A044312.P9571327048063572322

/-!
# A044313: Numbers k such that the string 6,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044313, there is no canonical definition to state claims against.
-/

/-! ## A044313.P7280600928881004842

`record[A003602(A044674(2+n))]`
-/

namespace A044313.P7280600928881004842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044674 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044313.P7280600928881004842

/-! ## A044313.P8023717458601106041

`A008619(2*A044693(1+n))`
-/

namespace A044313.P8023717458601106041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A044693 (1 + n)).toNat

end

end A044313.P8023717458601106041

/-! ## A044313.P4692342920444425661

`A027656(2*A044693(1+n))`
-/

namespace A044313.P4692342920444425661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A044693 (1 + n)).toNat

end

end A044313.P4692342920444425661

/-! ## A044313.P5628802122963427736

`A028242(2*A044693(n+1))`
-/

namespace A044313.P5628802122963427736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A044693 (n + 1)).toNat

end

end A044313.P5628802122963427736

/-! ## A044313.P6580348167091047653

`A029579(2*A044693(n+1))`
-/

namespace A044313.P6580348167091047653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A044693 (n + 1)).toNat

end

end A044313.P6580348167091047653

/-! ## A044313.P4928835771910024339

`A052938(2*A044693(n+1))`
-/

namespace A044313.P4928835771910024339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A044693 (n + 1)).toNat

end

end A044313.P4928835771910024339

/-! ## A044313.P16587791285176671782

`A080513(2*A044693(n+1))`
-/

namespace A044313.P16587791285176671782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A044693 (n + 1)).toNat

end

end A044313.P16587791285176671782

/-! ## A044313.P2344313488088895384

`A026741(2*(A044693(n+1)+1))`
-/

namespace A044313.P2344313488088895384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * (A044693 (n + 1) + 1)).toNat

end

end A044313.P2344313488088895384

/-! ## A044313.P6777402770712968131

`A044693(n+1)+A001221(A053998(n))`
-/

namespace A044313.P6777402770712968131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044693 (n + 1) + A001221 (A053998 n).toNat

end

end A044313.P6777402770712968131

/-!
# A044314: Numbers n such that string 7,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044314, there is no canonical definition to state claims against.
-/

/-! ## A044314.P9881453388846404507

`∩[A043186(n+1), A376279(n+1)]`
-/

namespace A044314.P9881453388846404507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044314.P9881453388846404507

/-! ## A044314.P5057356072974550602

`A057427(2*(n+2)²)+A044694(n+1)`
-/

namespace A044314.P5057356072974550602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2) ^ 2) + A044694 (n + 1)

end

end A044314.P5057356072974550602

/-! ## A044314.P11899119845579713212

`A044694(1+n)+A000035(A112857(n))`
-/

namespace A044314.P11899119845579713212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044694 (1 + n) + A000035 (A112857 n).toNat

end

end A044314.P11899119845579713212

/-! ## A044314.P1048966808915934341

`A044694(n+1)+A001222(A125766(n+1))`
-/

namespace A044314.P1048966808915934341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044694 (n + 1) + A001222 (A125766 (n + 1)).toNat

end

end A044314.P1048966808915934341

/-! ## A044314.P10567218896240346097

`A044694(n+1)+A001222(A348744(n+1))`
-/

namespace A044314.P10567218896240346097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044694 (n + 1) + A001222 (A348744 (n + 1)).toNat

end

end A044314.P10567218896240346097

/-! ## A044314.P8508149520737072470

`A328771(A030480(n+1))+A044694(n+1)`
-/

namespace A044314.P8508149520737072470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 (A030480 (n + 1)).toNat + A044694 (n + 1)

end

end A044314.P8508149520737072470

/-!
# A044315: Numbers n such that string 7,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044315, there is no canonical definition to state claims against.
-/

/-! ## A044315.P14559709106376576089

`A044695(n+1)+A040001((2*n+3)²)`
-/

namespace A044315.P14559709106376576089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044695 (n + 1) + A040001 ((2 * n + 3) ^ 2)

end

end A044315.P14559709106376576089

/-! ## A044315.P3360711891089779964

`A044695(n+1)+A000034((n+2)*2*n)`
-/

namespace A044315.P3360711891089779964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044695 (n + 1) + A000034 ((n + 2) * (2 * n))

end

end A044315.P3360711891089779964

/-! ## A044315.P14032550996738953406

`A045497(A000132(n))+A044695(n+1)`
-/

namespace A044315.P14032550996738953406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (A000132 n).toNat + A044695 (n + 1)

end

end A044315.P14032550996738953406

/-! ## A044315.P14728605179608615591

`A045497(A009883(n))+A044695(n+1)`
-/

namespace A044315.P14728605179608615591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (A009883 n).toNat + A044695 (n + 1)

end

end A044315.P14728605179608615591

/-! ## A044315.P5631238884616912102

`A045497(A019453(n))+A044695(n+1)`
-/

namespace A044315.P5631238884616912102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (A019453 n).toNat + A044695 (n + 1)

end

end A044315.P5631238884616912102

/-! ## A044315.P10867639256983940148

`A057427(A078812(n))+A044695(n+1)`
-/

namespace A044315.P10867639256983940148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A078812 n).toNat + A044695 (n + 1)

end

end A044315.P10867639256983940148

/-! ## A044315.P7275913219351196557

`A054977(A091277(n+1))+A044695(n+1)`
-/

namespace A044315.P7275913219351196557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A091277 (n + 1)).toNat + A044695 (n + 1)

end

end A044315.P7275913219351196557

/-! ## A044315.P10172616244724433925

`A102863(A102851(n+1))+A044695(n+1)`
-/

namespace A044315.P10172616244724433925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102863 (A102851 (n + 1)).toNat + A044695 (n + 1)

end

end A044315.P10172616244724433925

/-!
# A044316: Numbers n such that string 7,2 occurs in the base 9 representation of n but not of n-1.

The programs for A044316, there is no canonical definition to state claims against.
-/

/-! ## A044316.P17271800177953709615

`A267870(2*n²)+A044696(n+1)`
-/

namespace A044316.P17271800177953709615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (2 * n ^ 2) + A044696 (n + 1)

end

end A044316.P17271800177953709615

/-! ## A044316.P17084124062685162239

`A044696(1+n)+A000034(A001105(n))`
-/

namespace A044316.P17084124062685162239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (1 + n) + A000034 (A001105 n).toNat

end

end A044316.P17084124062685162239

/-! ## A044316.P12062196329071473091

`A044696(1+n)+A000035(A001844(n))`
-/

namespace A044316.P12062196329071473091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (1 + n) + A000035 (A001844 n).toNat

end

end A044316.P12062196329071473091

/-! ## A044316.P3434331463134395533

`A051340(A000384(n))+A044696(n+1)`
-/

namespace A044316.P3434331463134395533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A000384 n).toNat + A044696 (n + 1)

end

end A044316.P3434331463134395533

/-! ## A044316.P13468811092062945774

`A044696(n+1)+A033999(A046092(n))`
-/

namespace A044316.P13468811092062945774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (n + 1) + A033999 (A046092 n).toNat

end

end A044316.P13468811092062945774

/-! ## A044316.P5792735443762025331

`A044696(n+1)-A057428(A005893(n))`
-/

namespace A044316.P5792735443762025331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (n + 1) - A057428 (A005893 n).toNat

end

end A044316.P5792735443762025331

/-! ## A044316.P506215497021982591

`A044696(n+1)-A033999(A058331(n))`
-/

namespace A044316.P506215497021982591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (n + 1) - A033999 (A058331 n).toNat

end

end A044316.P506215497021982591

/-! ## A044316.P2237472173013283049

`A044696(n+1)+A014963(A344883(n+1))`
-/

namespace A044316.P2237472173013283049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (n + 1) + A014963 (A344883 (n + 1)).toNat

end

end A044316.P2237472173013283049

/-! ## A044316.P13471937932091731380

`A044696(n+1)+A001222(A260553(n+1))`
-/

namespace A044316.P13471937932091731380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044696 (n + 1) + A001222 (A260553 (n + 1)).toNat

end

end A044316.P13471937932091731380

/-!
# A044317: Numbers n such that string 7,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044317, there is no canonical definition to state claims against.
-/

/-! ## A044317.P4063607826777969024

`A093178((2*n)^gcd(2, n))+A044697(n+1)`
-/

namespace A044317.P4063607826777969024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 ((2 * n) ^ Nat.gcd 2 n) + A044697 (n + 1)

end

end A044317.P4063607826777969024

/-! ## A044317.P7204570046205904706

`A093178(A013609(n))+A044697(n+1)`
-/

namespace A044317.P7204570046205904706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A013609 n).toNat + A044697 (n + 1)

end

end A044317.P7204570046205904706

/-! ## A044317.P7472582019035537042

`A087049(A123296(n))+A044697(n+1)`
-/

namespace A044317.P7472582019035537042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A123296 n).toNat + A044697 (n + 1)

end

end A044317.P7472582019035537042

/-! ## A044317.P14141054832183650637

`A044697(n+1)+A000035(A163571(n+1))`
-/

namespace A044317.P14141054832183650637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044697 (n + 1) + A000035 (A163571 (n + 1)).toNat

end

end A044317.P14141054832183650637

/-! ## A044317.P6668194527542055180

`A093178(2*A344912(n))+A044697(n+1)`
-/

namespace A044317.P6668194527542055180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * A344912 n).toNat + A044697 (n + 1)

end

end A044317.P6668194527542055180

/-! ## A044317.P4008181197980942098

`A093178(val(A344912(n), 3))+A044697(n+1)`
-/

namespace A044317.P4008181197980942098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.valuation (A344912 n).toNat 3) + A044697 (n + 1)

end

end A044317.P4008181197980942098

/-! ## A044317.P13414595843308304211

`A093178(A007664(n)+1)+A044697(n+1)`
-/

namespace A044317.P13414595843308304211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A007664 n + 1).toNat + A044697 (n + 1)

end

end A044317.P13414595843308304211

/-! ## A044317.P10686942287186306967

`A166486(A090708(n+1))+A044697(n+1)`
-/

namespace A044317.P10686942287186306967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A090708 (n + 1)).toNat + A044697 (n + 1)

end

end A044317.P10686942287186306967

/-!
# A044318: Numbers k such that the string 7,4 occurs in the base 9 representation of k but not of k-1.

The programs for A044318, there is no canonical definition to state claims against.
-/

/-! ## A044318.P10441013642243567888

`A044698(n+1)+(A138300(n)+1)%2`
-/

namespace A044318.P10441013642243567888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (n + 1) + Int.tmod (A138300 n + 1) 2

end

end A044318.P10441013642243567888

/-! ## A044318.P2063105779912308340

`A044698(1+n)+A000034(A138300(n))`
-/

namespace A044318.P2063105779912308340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (1 + n) + A000034 (A138300 n).toNat

end

end A044318.P2063105779912308340

/-! ## A044318.P16904248884987935109

`A309026(A225634(n))+A044698(n+1)`
-/

namespace A044318.P16904248884987935109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 (A225634 n).toNat + A044698 (n + 1)

end

end A044318.P16904248884987935109

/-! ## A044318.P869037602094069955

`A044698(n+1)+A000035(A132197(n+1))`
-/

namespace A044318.P869037602094069955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (n + 1) + A000035 (A132197 (n + 1)).toNat

end

end A044318.P869037602094069955

/-! ## A044318.P17881707918550987566

`A044698(n+1)*A339748(A138300(n)+1)+1`
-/

namespace A044318.P17881707918550987566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (n + 1) * A339748 (A138300 n + 1).toNat + 1

end

end A044318.P17881707918550987566

/-! ## A044318.P17445645109951535962

`A044698(n+1)+(A000007(A138300(n)+1)+1)²`
-/

namespace A044318.P17445645109951535962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (n + 1) + (A000007 (A138300 n + 1).toNat + 1) ^ 2

end

end A044318.P17445645109951535962

/-! ## A044318.P2789581732503728668

`A044698(n+1)+A040001(A004273(n)²)`
-/

namespace A044318.P2789581732503728668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044698 (n + 1) + A040001 (A004273 n ^ 2).toNat

end

end A044318.P2789581732503728668

/-!
# A044319: Numbers n such that string 7,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044319, there is no canonical definition to state claims against.
-/

/-! ## A044319.P3501550331400199268

`A054977(A101425(n))+A044699(n+1)`
-/

namespace A044319.P3501550331400199268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A101425 n).toNat + A044699 (n + 1)

end

end A044319.P3501550331400199268

/-! ## A044319.P12988422549777412557

`A044699(n+1)+A000035(A020621(n+1))`
-/

namespace A044319.P12988422549777412557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044699 (n + 1) + A000035 (A020621 (n + 1)).toNat

end

end A044319.P12988422549777412557

/-! ## A044319.P6801748585614635939

`A054977(A007602(n+1))+A044699(n+1)`
-/

namespace A044319.P6801748585614635939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A007602 (n + 1)).toNat + A044699 (n + 1)

end

end A044319.P6801748585614635939

/-! ## A044319.P825162484775510488

`A054977(A141257(n+1))+A044699(n+1)`
-/

namespace A044319.P825162484775510488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A141257 (n + 1)).toNat + A044699 (n + 1)

end

end A044319.P825162484775510488

/-! ## A044319.P6080657524058325507

`A054977(A167743(n+1))+A044699(n+1)`
-/

namespace A044319.P6080657524058325507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A167743 (n + 1)).toNat + A044699 (n + 1)

end

end A044319.P6080657524058325507

/-! ## A044319.P1960377706744178751

`A286055(p?[A017101(4*n)])+A044699(n+1)`
-/

namespace A044319.P1960377706744178751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A044699 (n + 1)

end

end A044319.P1960377706744178751

/-! ## A044319.P4221281619715066208

`A044699(n+1)+and(1, A132197(n+1))`
-/

namespace A044319.P4221281619715066208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044699 (n + 1) + Int.land 1 (A132197 (n + 1))

end

end A044319.P4221281619715066208

/-! ## A044319.P8282881236862042734

`A320390(A051697(n))+A044699(n+1)`
-/

namespace A044319.P8282881236862042734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (A051697 n).toNat + A044699 (n + 1)

end

end A044319.P8282881236862042734

/-! ## A044319.P11552327519083650925

`A044699(n+1)+A000035(A132197(n+1))`
-/

namespace A044319.P11552327519083650925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044699 (n + 1) + A000035 (A132197 (n + 1)).toNat

end

end A044319.P11552327519083650925

/-!
# A044320: Numbers k such that the string 7,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044320, there is no canonical definition to state claims against.
-/

/-! ## A044320.P3306498203168620694

`A054977(A008804(n))+A044700(n+1)`
-/

namespace A044320.P3306498203168620694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008804 n).toNat + A044700 (n + 1)

end

end A044320.P3306498203168620694

/-! ## A044320.P17411390451496796256

`A134451(A002146(n))+A044700(n+1)`
-/

namespace A044320.P17411390451496796256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A002146 n).toNat + A044700 (n + 1)

end

end A044320.P17411390451496796256

/-! ## A044320.P14862463617489508241

`A293668(A064200(n))+A044700(n+1)`
-/

namespace A044320.P14862463617489508241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (A064200 n).toNat + A044700 (n + 1)

end

end A044320.P14862463617489508241

/-! ## A044320.P11431478228454439492

`A044700(n+1)+A001222(A046123(n+1))`
-/

namespace A044320.P11431478228454439492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044700 (n + 1) + A001222 (A046123 (n + 1)).toNat

end

end A044320.P11431478228454439492

/-! ## A044320.P16514776497136694786

`A054977(A068653(n+1))+A044700(n+1)`
-/

namespace A044320.P16514776497136694786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A068653 (n + 1)).toNat + A044700 (n + 1)

end

end A044320.P16514776497136694786

/-! ## A044320.P6889637052510845144

`A044700(n+1)+A001222(A196670(n+1))`
-/

namespace A044320.P6889637052510845144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044700 (n + 1) + A001222 (A196670 (n + 1)).toNat

end

end A044320.P6889637052510845144

/-! ## A044320.P17227455208579667272

`A160338(A135765(n+1))+A044700(n+1)`
-/

namespace A044320.P17227455208579667272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A135765 (n + 1)).toNat + A044700 (n + 1)

end

end A044320.P17227455208579667272

/-!
# A044321: Numbers k such that the string 7,7 occurs in the base 9 representation of k but not of k-1.

The programs for A044321, there is no canonical definition to state claims against.
-/

/-! ## A044321.P5744496972696269575

`A044703(n+1)-A145945(A049019(n+1))`
-/

namespace A044321.P5744496972696269575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044703 (n + 1) - A145945 (A049019 (n + 1)).toNat

end

end A044321.P5744496972696269575

/-! ## A044321.P4955514855763066866

`A044701(n+1)+A001511(A008384(n))`
-/

namespace A044321.P4955514855763066866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044701 (n + 1) + A001511 (A008384 n).toNat

end

end A044321.P4955514855763066866

/-! ## A044321.P1577646430253758804

`A189222(A071075(n))+A044701(n+1)`
-/

namespace A044321.P1577646430253758804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A071075 n).toNat + A044701 (n + 1)

end

end A044321.P1577646430253758804

/-! ## A044321.P7935440166827703879

`A353627(A194723(n))+A044701(n+1)`
-/

namespace A044321.P7935440166827703879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A194723 n).toNat + A044701 (n + 1)

end

end A044321.P7935440166827703879

/-!
# A044322: Numbers n such that the string 7,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044322, there is no canonical definition to state claims against.
-/

/-! ## A044322.P6548141365372199506

`9*(9*n+8)-A000034(2*(n²+1))`
-/

namespace A044322.P6548141365372199506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (9 * n + 8) : ℤ) - A000034 (2 * (n ^ 2 + 1))

end

end A044322.P6548141365372199506

/-! ## A044322.P6233360862192544576

`A044251(n+1)-A010730(A001844(n))`
-/

namespace A044322.P6233360862192544576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - A010730 (A001844 n).toNat

end

end A044322.P6233360862192544576

/-! ## A044322.P2168275016752232965

`A044251(1+n)-A040020(A016754(n))`
-/

namespace A044322.P2168275016752232965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (1 + n) - A040020 (A016754 n).toNat

end

end A044322.P2168275016752232965

/-! ## A044322.P6083807321918979790

`A044251(n+1)-A006519(A058331(n))-9`
-/

namespace A044322.P6083807321918979790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - A006519 (A058331 n).toNat - 9

end

end A044322.P6083807321918979790

/-! ## A044322.P10735682889495009420

`A043187(2*n+1)-A057427(A302212(n+1))`
-/

namespace A044322.P10735682889495009420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (2 * n + 1) - A057427 (A302212 (n + 1)).toNat

end

end A044322.P10735682889495009420

/-! ## A044322.P2468140579129225630

`A017245(A017245(n))+A010054(A000384(n))`
-/

namespace A044322.P2468140579129225630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A017245 n).toNat + A010054 (A000384 n).toNat

end

end A044322.P2468140579129225630

/-! ## A044322.P2944676151233511944

`A017245(A017245(n))-A057428(A157170(n))`
-/

namespace A044322.P2944676151233511944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (A017245 n).toNat - A057428 (A157170 n).toNat

end

end A044322.P2944676151233511944

/-!
# A044323: Numbers k such that the string 8,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044323, there is no canonical definition to state claims against.
-/

/-! ## A044323.P17956320357151888387

`∩[A043187(n+1), A130843(n+1)]`
-/

namespace A044323.P17956320357151888387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P17956320357151888387

/-! ## A044323.P2419550824198652312

`∩[A043187(n+1), A376279(n+1)]`
-/

namespace A044323.P2419550824198652312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P2419550824198652312

/-! ## A044323.P1515251628082077638

`∩[A353732(A352808(3*(n+1))), A043187(n+1)]`
-/

namespace A044323.P1515251628082077638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A352808 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P1515251628082077638

/-! ## A044323.P18229079073610557913

`∩[A043187(n+1), A366290(n+1)]`
-/

namespace A044323.P18229079073610557913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P18229079073610557913

/-! ## A044323.P548294864776120521

`A044324(n+1)-A322361(A227716(n))`
-/

namespace A044323.P548294864776120521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044324 (n + 1) - A322361 (A227716 n).toNat

end

end A044323.P548294864776120521

/-!
# A044324: Numbers n such that string 8,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044324, there is no canonical definition to state claims against.
-/

/-! ## A044324.P8959767560768654549

`A002517(A044705(n+1)+1)/3`
-/

namespace A044324.P8959767560768654549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002517 (A044705 (n + 1) + 1).toNat : ℚ) / 3

end

end A044324.P8959767560768654549

/-! ## A044324.P718624712469299403

`A054977(A008137(n))+A044704(n+1)`
-/

namespace A044324.P718624712469299403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008137 n).toNat + A044704 (n + 1)

end

end A044324.P718624712469299403

/-! ## A044324.P13263673725600445607

`A054977(A045171(1+n))+A044704(n+1)`
-/

namespace A044324.P13263673725600445607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A045171 (1 + n)).toNat + A044704 (n + 1)

end

end A044324.P13263673725600445607

/-! ## A044324.P18103753788100997199

`A057427(A059845(n)+1)+A044704(n+1)`
-/

namespace A044324.P18103753788100997199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A059845 n + 1).toNat + A044704 (n + 1)

end

end A044324.P18103753788100997199

/-! ## A044324.P12558297670222809782

`A044704(n+1)+A000035(A139892(n+1))`
-/

namespace A044324.P12558297670222809782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044704 (n + 1) + A000035 (A139892 (n + 1)).toNat

end

end A044324.P12558297670222809782

/-! ## A044324.P1076258720347078130

`A054977(Δ[A068653(n+1)])+A044704(n+1)`
-/

namespace A044324.P1076258720347078130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (f1 (n + 1) - f1 n).toNat + A044704 (n + 1)

end

end A044324.P1076258720347078130

/-! ## A044324.P11958882322204585904

`A054977(A068653(n+1))+A044704(n+1)`
-/

namespace A044324.P11958882322204585904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A068653 (n + 1)).toNat + A044704 (n + 1)

end

end A044324.P11958882322204585904

/-! ## A044324.P1371665496638179409

`A044704(n+1)+A001222(A023317(n+1))`
-/

namespace A044324.P1371665496638179409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044704 (n + 1) + A001222 (A023317 (n + 1)).toNat

end

end A044324.P1371665496638179409

/-! ## A044324.P10042147529364583141

`A044704(n+1)+A001222(A068831(n+1))`
-/

namespace A044324.P10042147529364583141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044704 (n + 1) + A001222 (A068831 (n + 1)).toNat

end

end A044324.P10042147529364583141

/-!
# A044325: Numbers k such that the string 8,2 occurs in the base 9 representation of k but not of k-1.

The programs for A044325, there is no canonical definition to state claims against.
-/

/-! ## A044325.P2012110855807382176

`A044705(n+1)+gcd(15, A064129(n+1))`
-/

namespace A044325.P2012110855807382176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044705 (n + 1) + (Int.gcd 15 (A064129 (n + 1)) : ℤ)

end

end A044325.P2012110855807382176

/-! ## A044325.P7405133628168685966

`A044705(n+1)-A057428(A050446(n))`
-/

namespace A044325.P7405133628168685966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044705 (n + 1) - A057428 (A050446 n).toNat

end

end A044325.P7405133628168685966

/-! ## A044325.P5773931399942874451

`A044705(1+n)+A001511(A046609(n+1))`
-/

namespace A044325.P5773931399942874451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044705 (1 + n) + A001511 (A046609 (n + 1)).toNat

end

end A044325.P5773931399942874451

/-! ## A044325.P190797758039037357

`A044705(n+1)+A014963(A216072(n+1))`
-/

namespace A044325.P190797758039037357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044705 (n + 1) + A014963 (A216072 (n + 1)).toNat

end

end A044325.P190797758039037357

/-! ## A044325.P5710995353244333837

`A185014(A331849(n))+A002517(A044324(n+1))`
-/

namespace A044325.P5710995353244333837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A331849 n).toNat + A002517 (A044324 (n + 1)).toNat

end

end A044325.P5710995353244333837

/-! ## A044325.P2201660977431273013

`A002517(A044324(n+1))*A014963(A216072(n+1))`
-/

namespace A044325.P2201660977431273013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044324 (n + 1)).toNat * A014963 (A216072 (n + 1)).toNat

end

end A044325.P2201660977431273013

/-! ## A044325.P10452913063071802291

`A001222(A244768(3*n+1))*A002517(A044324(n+1))`
-/

namespace A044325.P10452913063071802291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A244768 (3 * n + 1)).toNat * A002517 (A044324 (n + 1)).toNat

end

end A044325.P10452913063071802291

/-! ## A044325.P6403656242672791094

`A057428(A036370(n))+A002517(A044324(n+1))+1`
-/

namespace A044325.P6403656242672791094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A036370 n).toNat + (A002517 (A044324 (n + 1)).toNat + 1)

end

end A044325.P6403656242672791094

/-! ## A044325.P11374887717428999912

`A044705(n+1)+A001222(A227246(n+1))`
-/

namespace A044325.P11374887717428999912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044705 (n + 1) + A001222 (A227246 (n + 1)).toNat

end

end A044325.P11374887717428999912

/-!
# A044326: Numbers n such that string 8,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044326, there is no canonical definition to state claims against.
-/

/-! ## A044326.P3558811459318943281

`A044706(1+n)-A057428(A085478(n))`
-/

namespace A044326.P3558811459318943281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044706 (1 + n) - A057428 (A085478 n).toNat

end

end A044326.P3558811459318943281

/-! ## A044326.P2804400210627603872

`A044706(n+1)+abs(A057428(A085478(n)))`
-/

namespace A044326.P2804400210627603872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044706 (n + 1) + |A057428 (A085478 n).toNat|

end

end A044326.P2804400210627603872

/-! ## A044326.P3717991909356759301

`A057427(A005448(n+1))+A044706(n+1)`
-/

namespace A044326.P3717991909356759301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A005448 (n + 1)).toNat + A044706 (n + 1)

end

end A044326.P3717991909356759301

/-! ## A044326.P4592326243481936797

`A044706(n+1)+A001055(A095649(n+1))`
-/

namespace A044326.P4592326243481936797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044706 (n + 1) + A001055 (A095649 (n + 1)).toNat

end

end A044326.P4592326243481936797

/-! ## A044326.P12251075682907726271

`A057427(A219354(n+1))+A044706(n+1)`
-/

namespace A044326.P12251075682907726271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A219354 (n + 1)).toNat + A044706 (n + 1)

end

end A044326.P12251075682907726271

/-! ## A044326.P5668279946011784772

`A057427(A260213(n+1))+A044706(n+1)`
-/

namespace A044326.P5668279946011784772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A260213 (n + 1)).toNat + A044706 (n + 1)

end

end A044326.P5668279946011784772

/-! ## A044326.P2893236638593200263

`A057078(A331428(n+1))+A044706(n+1)`
-/

namespace A044326.P2893236638593200263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A331428 (n + 1)).toNat + A044706 (n + 1)

end

end A044326.P2893236638593200263

/-! ## A044326.P520874325441417374

`A044706(n+1)+A001222(A178984(n+3))`
-/

namespace A044326.P520874325441417374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044706 (n + 1) + A001222 (A178984 (n + 3)).toNat

end

end A044326.P520874325441417374

/-! ## A044326.P17389231387010729633

`(2*A044327(n+1))%(A046094(A019336(n+1))+A044708(n+1))`
-/

namespace A044326.P17389231387010729633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A044327 (n + 1)) (A046094 (A019336 (n + 1)).toNat + A044708 (n + 1))

end

end A044326.P17389231387010729633

/-! ## A044326.P3760551437038010651

`(3*(A046094(A019336(n+1))+A044708(n+1)))%A044329(n+1)`
-/

namespace A044326.P3760551437038010651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (A046094 (A019336 (n + 1)).toNat + A044708 (n + 1))) (A044329 (n + 1))

end

end A044326.P3760551437038010651

/-!
# A044327: Numbers n such that string 8,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044327, there is no canonical definition to state claims against.
-/

/-! ## A044327.P2140838479770758881

`(2*(A044708(n+1)+A000034(A151933(n+1))))%A044329(n+1)`
-/

namespace A044327.P2140838479770758881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A044708 (n + 1) + A000034 (A151933 (n + 1)).toNat)) (A044329 (n + 1))

end

end A044327.P2140838479770758881

/-! ## A044327.P1317721189968094973

`A044707(1+n)+abs(A181432(n+1))`
-/

namespace A044327.P1317721189968094973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044707 (1 + n) + |A181432 (n + 1)|

end

end A044327.P1317721189968094973

/-! ## A044327.P11936173168986645764

`(A044707(n+1)+1)%A183662(n+1)`
-/

namespace A044327.P11936173168986645764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044707 (n + 1) + 1) (A183662 (n + 1))

end

end A044327.P11936173168986645764

/-! ## A044327.P1230614964885585111

`A044707(1+n)-A057428(A270097(n))`
-/

namespace A044327.P1230614964885585111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044707 (1 + n) - A057428 (A270097 n).toNat

end

end A044327.P1230614964885585111

/-! ## A044327.P14652144946100820259

`A044707(n+1)+A001222(A094460(n+1))`
-/

namespace A044327.P14652144946100820259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044707 (n + 1) + A001222 (A094460 (n + 1)).toNat

end

end A044327.P14652144946100820259

/-! ## A044327.P1168928719550549308

`A044707(n+1)+A002293(val(A270097(n), 4))`
-/

namespace A044327.P1168928719550549308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044707 (n + 1) + A002293 (SequenceMachineLib.valuation (A270097 n).toNat 4)

end

end A044327.P1168928719550549308

/-! ## A044327.P4674523206586906554

`(2*(A046094(A019337(n+1))+A044708(n+1)))%A044329(n+1)`
-/

namespace A044327.P4674523206586906554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A046094 (A019337 (n + 1)).toNat + A044708 (n + 1))) (A044329 (n + 1))

end

end A044327.P4674523206586906554

/-! ## A044327.P6930485662263618873

`(2*(A046094(A019345(n+1))+A044708(n+1)))%A044329(n+1)`
-/

namespace A044327.P6930485662263618873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A046094 (A019345 (n + 1)).toNat + A044708 (n + 1))) (A044329 (n + 1))

end

end A044327.P6930485662263618873

/-! ## A044327.P11824653130918812838

`(2*(A046094(A019334(n+1))+A044708(n+1)))%A044329(n+1)`
-/

namespace A044327.P11824653130918812838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A046094 (A019334 (n + 1)).toNat + A044708 (n + 1))) (A044329 (n + 1))

end

end A044327.P11824653130918812838

/-! ## A044327.P15730144545079801589

`(2*(A046094(A019349(n+1))+A044708(n+1)))%A044329(n+1)`
-/

namespace A044327.P15730144545079801589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A046094 (A019349 (n + 1)).toNat + A044708 (n + 1))) (A044329 (n + 1))

end

end A044327.P15730144545079801589

/-!
# A044328: Numbers k such that the string 8,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044328, there is no canonical definition to state claims against.
-/

/-! ## A044328.P8294607898964444313

`A057427(A286240(n))+A044708(n+1)`
-/

namespace A044328.P8294607898964444313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286240 n).toNat + A044708 (n + 1)

end

end A044328.P8294607898964444313

/-! ## A044328.P8954025762824143085

`A044708(n+1)+A000034(A151933(n+1))`
-/

namespace A044328.P8954025762824143085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044708 (n + 1) + A000034 (A151933 (n + 1)).toNat

end

end A044328.P8954025762824143085

/-! ## A044328.P13755179802568079671

`A044708(n+1)-A064179(A206946(n+1))`
-/

namespace A044328.P13755179802568079671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044708 (n + 1) - A064179 (A206946 (n + 1)).toNat

end

end A044328.P13755179802568079671

/-! ## A044328.P13227307493542512845

`A044708(n+1)+A000034(2*A057359(n²))`
-/

namespace A044328.P13227307493542512845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044708 (n + 1) + A000034 (2 * A057359 (n ^ 2)).toNat

end

end A044328.P13227307493542512845

/-! ## A044328.P14285205533304958834

`A046094(A019337(n+1))+A044708(n+1)`
-/

namespace A044328.P14285205533304958834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019337 (n + 1)).toNat + A044708 (n + 1)

end

end A044328.P14285205533304958834

/-! ## A044328.P10274396141450268220

`A046094(A019345(n+1))+A044708(n+1)`
-/

namespace A044328.P10274396141450268220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019345 (n + 1)).toNat + A044708 (n + 1)

end

end A044328.P10274396141450268220

/-! ## A044328.P3428240665220663189

`A046094(A019334(n+1))+A044708(n+1)`
-/

namespace A044328.P3428240665220663189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019334 (n + 1)).toNat + A044708 (n + 1)

end

end A044328.P3428240665220663189

/-! ## A044328.P10454987239849490696

`A046094(A019336(n+1))+A044708(n+1)`
-/

namespace A044328.P10454987239849490696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019336 (n + 1)).toNat + A044708 (n + 1)

end

end A044328.P10454987239849490696

/-! ## A044328.P5169334754969187233

`A046094(A019349(n+1))+A044708(n+1)`
-/

namespace A044328.P5169334754969187233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A019349 (n + 1)).toNat + A044708 (n + 1)

end

end A044328.P5169334754969187233

/-!
# A044329: Numbers n such that string 8,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044329, there is no canonical definition to state claims against.
-/

/-! ## A044329.P14841957545961426039

`A044709(1+n)+A151933(n)!`
-/

namespace A044329.P14841957545961426039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (1 + n) + (Nat.factorial (A151933 n).toNat : ℤ)

end

end A044329.P14841957545961426039

/-! ## A044329.P142450208736389890

`A044709(n+1)+A026492(A347716(n))`
-/

namespace A044329.P142450208736389890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A026492 (A347716 n).toNat

end

end A044329.P142450208736389890

/-! ## A044329.P16439402743067755238

`A044709(n+1)+A000041(A151933(n)²)`
-/

namespace A044329.P16439402743067755238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000041 (A151933 n ^ 2).toNat

end

end A044329.P16439402743067755238

/-! ## A044329.P8909013894651699403

`A044709(n+1)+A000108(A151933(n)²)`
-/

namespace A044329.P8909013894651699403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000108 (A151933 n ^ 2).toNat

end

end A044329.P8909013894651699403

/-! ## A044329.P5367680952895205021

`A044709(n+1)+A000272(A151933(n)²)`
-/

namespace A044329.P5367680952895205021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000272 (A151933 n ^ 2).toNat

end

end A044329.P5367680952895205021

/-! ## A044329.P13153367783068487978

`A044709(n+1)+A000798(A151933(n)²)`
-/

namespace A044329.P13153367783068487978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000798 (A151933 n ^ 2).toNat

end

end A044329.P13153367783068487978

/-! ## A044329.P4811017086586210751

`A044709(n+1)+A007318(A151933(n)²)`
-/

namespace A044329.P4811017086586210751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A007318 (A151933 n ^ 2).toNat

end

end A044329.P4811017086586210751

/-! ## A044329.P17868084560734603013

`A044709(n+1)+A000009(A151933(n)+1)`
-/

namespace A044329.P17868084560734603013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000009 (A151933 n + 1).toNat

end

end A044329.P17868084560734603013

/-! ## A044329.P4279876456661934588

`A044709(n+1)+A000010(A151933(n)+1)`
-/

namespace A044329.P4279876456661934588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000010 (A151933 n + 1).toNat

end

end A044329.P4279876456661934588

/-! ## A044329.P4135868646919754289

`A044709(n+1)+A000045(A151933(n)+1)`
-/

namespace A044329.P4135868646919754289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044709 (n + 1) + A000045 (A151933 n + 1).toNat

end

end A044329.P4135868646919754289

/-!
# A044330: Numbers n such that string 8,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044330, there is no canonical definition to state claims against.
-/

/-! ## A044330.P5577258466583876577

`A044710(1+n)+A035263(A328475(n))`
-/

namespace A044330.P5577258466583876577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044710 (1 + n) + A035263 (A328475 n).toNat

end

end A044330.P5577258466583876577

/-! ## A044330.P14407451573197413013

`A057427(A090801(n+1))+A044710(n+1)`
-/

namespace A044330.P14407451573197413013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A090801 (n + 1)).toNat + A044710 (n + 1)

end

end A044330.P14407451573197413013

/-! ## A044330.P15420059011140840252

`A057427(A193805(n+1))+A044710(n+1)`
-/

namespace A044330.P15420059011140840252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A193805 (n + 1)).toNat + A044710 (n + 1)

end

end A044330.P15420059011140840252

/-! ## A044330.P13363864368856462276

`A057427(A319573(n)+1)+A044710(n+1)`
-/

namespace A044330.P13363864368856462276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A319573 n + 1).toNat + A044710 (n + 1)

end

end A044330.P13363864368856462276

/-! ## A044330.P14696814277568066929

`A057427(A022885(n+1)+n²)+A044710(n+1)`
-/

namespace A044330.P14696814277568066929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A022885 (n + 1) + (n ^ 2 : ℤ)).toNat + A044710 (n + 1)

end

end A044330.P14696814277568066929

/-! ## A044330.P12999610547352949424

`A044710(n+1)%A120090(A017569(n))+1`
-/

namespace A044330.P12999610547352949424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044710 (n + 1)) (A120090 (A017569 n).toNat) + 1

end

end A044330.P12999610547352949424

/-! ## A044330.P16131684562527578886

`A057427(2*A344610(3*n+4)+1)+A044710(n+1)`
-/

namespace A044330.P16131684562527578886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A344610 (3 * n + 4) + 1).toNat + A044710 (n + 1)

end

end A044330.P16131684562527578886

/-! ## A044330.P17252568765492700507

`A057427(abs(1-A385233(n+1)))+A044710(n+1)`
-/

namespace A044330.P17252568765492700507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 |1 - A385233 (n + 1)|.toNat + A044710 (n + 1)

end

end A044330.P17252568765492700507

/-! ## A044330.P15885072003003949060

`1+A044710(and(A336700(n+1), n+1))`
-/

namespace A044330.P15885072003003949060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A044710 (Int.land (A336700 (n + 1)) (n + 1 : ℤ)).toNat

end

end A044330.P15885072003003949060

/-! ## A044330.P16064430787188858577

`A164056(A044451(n+1))+A044710(n+1)`
-/

namespace A044330.P16064430787188858577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 (A044451 (n + 1)).toNat + A044710 (n + 1)

end

end A044330.P16064430787188858577

/-!
# A044331: Numbers k such that the string 8,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044331, there is no canonical definition to state claims against.
-/

/-! ## A044331.P16988437112309771434

`A044251(n+1)-A348037(A002426(n))`
-/

namespace A044331.P16988437112309771434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - A348037 (A002426 n).toNat

end

end A044331.P16988437112309771434

/-! ## A044331.P9455639326130755954

`A044712(n+1)+1-A348037(A002426(n))`
-/

namespace A044331.P9455639326130755954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044712 (n + 1) + (1 - A348037 (A002426 n).toNat)

end

end A044331.P9455639326130755954

/-! ## A044331.P9662444902101343054

`A044712(n+1)+1-A322020(A148432(n))`
-/

namespace A044331.P9662444902101343054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044712 (n + 1) + (1 - A322020 (A148432 n).toNat)

end

end A044331.P9662444902101343054

/-! ## A044331.P1843976654017137998

`A044711(A032555(n+1))+1`
-/

namespace A044331.P1843976654017137998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044711 (A032555 (n + 1)).toNat + 1

end

end A044331.P1843976654017137998

/-! ## A044331.P8457612737924844189

`A044711(n+1)+A000034(A034472(n))`
-/

namespace A044331.P8457612737924844189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044711 (n + 1) + A000034 (A034472 n).toNat

end

end A044331.P8457612737924844189

/-!
# A044332: Numbers k such that the string 0,0 occurs in the base 10 representation of k but not of k-1.

The programs for A044332, the canonical program `A044332.P15477071558649246088` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044332 has offset 1).

The definition of A044332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044332.P15477071558649246088

`filter[A008607(n+1), A011765(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A044332

/-- `filter[A008607(n+1), A011765(#)]` -/
def P15477071558649246088.Spec : Prop :=
  ∀ n, P15477071558649246088.a n = A044332 (n + 1)

theorem P15477071558649246088.correct : P15477071558649246088.Spec := by
  intro n
  simp only [A044332, Nat.add_sub_cancel]

end A044332

/-! ## A044332.P4860089586804049967

`filter[A312890(2*n), A011765(#)]`
-/

namespace A044332.P4860089586804049967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P4860089586804049967

namespace A044332

/-- `filter[A312890(2*n), A011765(#)]` -/
def P4860089586804049967.Spec : Prop :=
  ∀ n, P4860089586804049967.a n = A044332 (n + 1)

end A044332

/-! ## A044332.P13197070361246602788

`filter[A312944(2*n), A011765(#)]`
-/

namespace A044332.P13197070361246602788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P13197070361246602788

namespace A044332

/-- `filter[A312944(2*n), A011765(#)]` -/
def P13197070361246602788.Spec : Prop :=
  ∀ n, P13197070361246602788.a n = A044332 (n + 1)

end A044332

/-! ## A044332.P5250853645771190558

`filter[A313127(2*n), A011765(#)]`
-/

namespace A044332.P5250853645771190558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313127 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P5250853645771190558

namespace A044332

/-- `filter[A313127(2*n), A011765(#)]` -/
def P5250853645771190558.Spec : Prop :=
  ∀ n, P5250853645771190558.a n = A044332 (n + 1)

end A044332

/-!
# A044333: Numbers n such that string 0,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044333, there is no canonical definition to state claims against.
-/

/-! ## A044333.P842388443305389468

`A003485(A044337(n+1))-A044341(n+1)`
-/

namespace A044333.P842388443305389468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044337 (n + 1)).toNat - A044341 (n + 1)

end

end A044333.P842388443305389468

/-! ## A044333.P2089137583565983132

`A003485(A044716(1+n))-A044339(n+1)`
-/

namespace A044333.P2089137583565983132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044716 (1 + n)).toNat - A044339 (n + 1)

end

end A044333.P2089137583565983132

/-! ## A044333.P7373207331898732198

`A004273(A044334(n+1))-A044715(n+1)`
-/

namespace A044333.P7373207331898732198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044334 (n + 1)).toNat - A044715 (n + 1)

end

end A044333.P7373207331898732198

/-! ## A044333.P15696532022907840349

`A004273(A044336(n+1))-A044719(n+1)`
-/

namespace A044333.P15696532022907840349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044336 (n + 1)).toNat - A044719 (n + 1)

end

end A044333.P15696532022907840349

/-! ## A044333.P13596599711777333901

`A005843(A044334(n+1))-A044335(n+1)`
-/

namespace A044333.P13596599711777333901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044334 (n + 1)).toNat - A044335 (n + 1)

end

end A044333.P13596599711777333901

/-! ## A044333.P4766478673694753977

`A005843(A044335(n+1))-A044337(n+1)`
-/

namespace A044333.P4766478673694753977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044335 (n + 1)).toNat - A044337 (n + 1)

end

end A044333.P4766478673694753977

/-! ## A044333.P10095150610142747242

`A005843(A044336(n+1))-A044339(n+1)`
-/

namespace A044333.P10095150610142747242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044336 (n + 1)).toNat - A044339 (n + 1)

end

end A044333.P10095150610142747242

/-! ## A044333.P2200111112456304674

`A005408(A044716(n+1))-A044719(n+1)`
-/

namespace A044333.P2200111112456304674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A044716 (n + 1)).toNat - A044719 (n + 1)

end

end A044333.P2200111112456304674

/-!
# A044334: Numbers n such that string 0,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044334, there is no canonical definition to state claims against.
-/

/-! ## A044334.P15808956285845472839

`A260436(A044714(1+n)+1)`
-/

namespace A044334.P15808956285845472839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A044714 (1 + n) + 1).toNat

end

end A044334.P15808956285845472839

/-! ## A044334.P11128939624383621915

`A057427(A131113(n))+A044714(n+1)`
-/

namespace A044334.P11128939624383621915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A131113 n).toNat + A044714 (n + 1)

end

end A044334.P11128939624383621915

/-! ## A044334.P473442042367603925

`A044714(1+n)+A000034(A044344(n+1))`
-/

namespace A044334.P473442042367603925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (1 + n) + A000034 (A044344 (n + 1)).toNat

end

end A044334.P473442042367603925

/-! ## A044334.P1343713409819406995

`A044714(n+1)+A000034(A044346(n+1))`
-/

namespace A044334.P1343713409819406995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000034 (A044346 (n + 1)).toNat

end

end A044334.P1343713409819406995

/-! ## A044334.P15399992998028901689

`A044714(n+1)+A000034(A044348(n+1))`
-/

namespace A044334.P15399992998028901689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000034 (A044348 (n + 1)).toNat

end

end A044334.P15399992998028901689

/-! ## A044334.P6893111593988228026

`A044714(n+1)+A000034(A044350(n+1))`
-/

namespace A044334.P6893111593988228026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000034 (A044350 (n + 1)).toNat

end

end A044334.P6893111593988228026

/-! ## A044334.P2777720315755868253

`A044714(n+1)+A000034(A044360(n+1))`
-/

namespace A044334.P2777720315755868253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000034 (A044360 (n + 1)).toNat

end

end A044334.P2777720315755868253

/-! ## A044334.P10484635064995830950

`A044714(n+1)+A000035(A044726(n+1))`
-/

namespace A044334.P10484635064995830950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044334.P10484635064995830950

/-! ## A044334.P5850320710855653165

`A044714(n+1)+A000035(A044734(n+1))`
-/

namespace A044334.P5850320710855653165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000035 (A044734 (n + 1)).toNat

end

end A044334.P5850320710855653165

/-! ## A044334.P18356084817240289123

`A044714(n+1)+A000035(A044780(n+1))`
-/

namespace A044334.P18356084817240289123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A000035 (A044780 (n + 1)).toNat

end

end A044334.P18356084817240289123

/-! ## A044334.P6854132292372743894

`A044714(n+1)+A003484(A044728(n+1))`
-/

namespace A044334.P6854132292372743894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044334.P6854132292372743894

/-! ## A044334.P11369401685991836129

`A044714(n+1)+A006519(A044796(n+1))`
-/

namespace A044334.P11369401685991836129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A006519 (A044796 (n + 1)).toNat

end

end A044334.P11369401685991836129

/-! ## A044334.P726482336035097496

`A044714(n+1)+A014707(A044727(n+1))`
-/

namespace A044334.P726482336035097496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A014707 (A044727 (n + 1)).toNat

end

end A044334.P726482336035097496

/-! ## A044334.P15126603917413051560

`A044714(n+1)+A014707(A044731(n+1))`
-/

namespace A044334.P15126603917413051560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A014707 (A044731 (n + 1)).toNat

end

end A044334.P15126603917413051560

/-! ## A044334.P8496506342431390302

`A044714(n+1)+A014707(A044739(n+1))`
-/

namespace A044334.P8496506342431390302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) + A014707 (A044739 (n + 1)).toNat

end

end A044334.P8496506342431390302

/-! ## A044334.P13149778378033557191

`A044714(n+1)-A134824(A044725(n+1))`
-/

namespace A044334.P13149778378033557191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) - A134824 (A044725 (n + 1)).toNat

end

end A044334.P13149778378033557191

/-! ## A044334.P9920307173734614465

`A044714(n+1)-A134824(A044729(n+1))`
-/

namespace A044334.P9920307173734614465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) - A134824 (A044729 (n + 1)).toNat

end

end A044334.P9920307173734614465

/-! ## A044334.P8941627065757686124

`A044714(n+1)-A057428(A131404(n)+A028326(n))`
-/

namespace A044334.P8941627065757686124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044714 (n + 1) - A057428 (A131404 n + A028326 n).toNat

end

end A044334.P8941627065757686124

/-! ## A044334.P7292852804041272212

`A009056(A044714(n+1)-1)`
-/

namespace A044334.P7292852804041272212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A044714 (n + 1) - 1).toNat

end

end A044334.P7292852804041272212

/-! ## A044334.P14103074406926596409

`A055495(A044714(n+1)-2)`
-/

namespace A044334.P14103074406926596409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055495 (A044714 (n + 1) - 2).toNat

end

end A044334.P14103074406926596409

/-!
# A044335: Numbers k such that the string 0,3 occurs in the base 10 representation of k but not of k-1.

The programs for A044335, there is no canonical definition to state claims against.
-/

/-! ## A044335.P8672996762638794007

`2*(A044716(n+1)+A001065(A102854(n)))-A044337(n+1)`
-/

namespace A044335.P8672996762638794007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044716 (n + 1) + A001065 (A102854 n).toNat) - A044337 (n + 1)

end

end A044335.P8672996762638794007

/-! ## A044335.P14128814039670186392

`2*(A057427(A093562(n))+A044716(n+1))-A044337(n+1)`
-/

namespace A044335.P14128814039670186392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057427 (A093562 n).toNat + A044716 (n + 1)) - A044337 (n + 1)

end

end A044335.P14128814039670186392

/-! ## A044335.P12459910580025044713

`2*(A057427(A209518(n))+A044716(n+1))-A044337(n+1)`
-/

namespace A044335.P12459910580025044713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057427 (A209518 n).toNat + A044716 (n + 1)) - A044337 (n + 1)

end

end A044335.P12459910580025044713

/-! ## A044335.P13206344934246789981

`A057427(A014430(n))+A044715(n+1)`
-/

namespace A044335.P13206344934246789981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A014430 n).toNat + A044715 (n + 1)

end

end A044335.P13206344934246789981

/-! ## A044335.P9583819906456826414

`A044715(1+n)+A000035(A131061(n))`
-/

namespace A044335.P9583819906456826414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (1 + n) + A000035 (A131061 n).toNat

end

end A044335.P9583819906456826414

/-! ## A044335.P3573488412610859827

`A044715(1+n)+A000035(A131404(n))`
-/

namespace A044335.P3573488412610859827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (1 + n) + A000035 (A131404 n).toNat

end

end A044335.P3573488412610859827

/-! ## A044335.P557292594607076678

`A057427(A114197(n))+A044715(n+1)`
-/

namespace A044335.P557292594607076678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A114197 n).toNat + A044715 (n + 1)

end

end A044335.P557292594607076678

/-! ## A044335.P13594433613429332463

`A057427(A131404(n))+A044715(n+1)`
-/

namespace A044335.P13594433613429332463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A131404 n).toNat + A044715 (n + 1)

end

end A044335.P13594433613429332463

/-! ## A044335.P338317047234296317

`A057427(A316939(n))+A044715(n+1)`
-/

namespace A044335.P338317047234296317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A316939 n).toNat + A044715 (n + 1)

end

end A044335.P338317047234296317

/-! ## A044335.P10000094264992747617

`A134451(A246314(n))+A044715(n+1)`
-/

namespace A044335.P10000094264992747617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A246314 n).toNat + A044715 (n + 1)

end

end A044335.P10000094264992747617

/-! ## A044335.P14323822520710576742

`A054977(A038563(n+1))+A044715(n+1)`
-/

namespace A044335.P14323822520710576742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A038563 (n + 1)).toNat + A044715 (n + 1)

end

end A044335.P14323822520710576742

/-! ## A044335.P7436127449423101685

`A044715(n+1)-A057428(A093771(n+1))`
-/

namespace A044335.P7436127449423101685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) - A057428 (A093771 (n + 1)).toNat

end

end A044335.P7436127449423101685

/-! ## A044335.P13726685184559044742

`A044715(n+1)-A057428(A183917(n+1))`
-/

namespace A044335.P13726685184559044742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) - A057428 (A183917 (n + 1)).toNat

end

end A044335.P13726685184559044742

/-! ## A044335.P9973040552076832820

`A044715(n+1)+A004070(n)^A094497(n)`
-/

namespace A044335.P9973040552076832820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044715 (n + 1) : ℚ) + (A004070 n : ℚ) ^ (A094497 n : ℤ)

end

end A044335.P9973040552076832820

/-! ## A044335.P11773380908827071127

`A044715(n+1)+A020639(A048671(n+1))^A094497(n)`
-/

namespace A044335.P11773380908827071127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044715 (n + 1) : ℚ) + (A020639 (A048671 (n + 1)).toNat : ℚ) ^ (A094497 n : ℤ)

end

end A044335.P11773380908827071127

/-! ## A044335.P755032242290381488

`A044715(n+1)+A040055(A273851(n))`
-/

namespace A044335.P755032242290381488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) + A040055 (A273851 n).toNat

end

end A044335.P755032242290381488

/-! ## A044335.P3311482689010259328

`A044715(n+1)+A000034(A044344(n+1))`
-/

namespace A044335.P3311482689010259328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) + A000034 (A044344 (n + 1)).toNat

end

end A044335.P3311482689010259328

/-! ## A044335.P11789960618783566084

`A044715(n+1)+A000034(A044348(n+1))`
-/

namespace A044335.P11789960618783566084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) + A000034 (A044348 (n + 1)).toNat

end

end A044335.P11789960618783566084

/-! ## A044335.P1713621715419909366

`A044715(n+1)+A000035(A044726(n+1))`
-/

namespace A044335.P1713621715419909366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044335.P1713621715419909366

/-! ## A044335.P92003187021430847

`A044715(n+1)+A003484(A044728(n+1))`
-/

namespace A044335.P92003187021430847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044715 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044335.P92003187021430847

/-!
# A044336: Numbers n such that string 0,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044336, there is no canonical definition to state claims against.
-/

/-! ## A044336.P11541640873302665603

`2*(A044717(n+1)+A001221(A002385(n+1)))-A044338(n+1)`
-/

namespace A044336.P11541640873302665603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A044717 (n + 1) + A001221 (A002385 (n + 1)).toNat) - A044338 (n + 1)

end

end A044336.P11541640873302665603

/-! ## A044336.P17435308302500132707

`A044716(n+1)+A001065(A102854(n))`
-/

namespace A044336.P17435308302500132707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A001065 (A102854 n).toNat

end

end A044336.P17435308302500132707

/-! ## A044336.P9671133442891574454

`A057427(A093562(n))+A044716(n+1)`
-/

namespace A044336.P9671133442891574454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A093562 n).toNat + A044716 (n + 1)

end

end A044336.P9671133442891574454

/-! ## A044336.P17596844527029105811

`A057427(A209518(n))+A044716(n+1)`
-/

namespace A044336.P17596844527029105811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A209518 n).toNat + A044716 (n + 1)

end

end A044336.P17596844527029105811

/-! ## A044336.P17681631968589993613

`A246064(A144464(n))+A044716(n+1)`
-/

namespace A044336.P17681631968589993613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246064 (A144464 n).toNat + A044716 (n + 1)

end

end A044336.P17681631968589993613

/-! ## A044336.P7794812185832772752

`A044716(n+1)+A000035(A000960(n+1))`
-/

namespace A044336.P7794812185832772752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A000035 (A000960 (n + 1)).toNat

end

end A044336.P7794812185832772752

/-! ## A044336.P15103832835817074706

`A044716(n+1)+A003415(A007529(n+1))`
-/

namespace A044336.P15103832835817074706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A003415 (A007529 (n + 1)).toNat

end

end A044336.P15103832835817074706

/-! ## A044336.P5554120534647929460

`A044716(n+1)+A000120(A056672(n+1))`
-/

namespace A044336.P5554120534647929460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A000120 (A056672 (n + 1)).toNat

end

end A044336.P5554120534647929460

/-! ## A044336.P15462076154141840486

`A108103(A139280(n+1))+A044716(n+1)`
-/

namespace A044336.P15462076154141840486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A139280 (n + 1)).toNat + A044716 (n + 1)

end

end A044336.P15462076154141840486

/-! ## A044336.P4729089397358692995

`A054977(A103450(n))+A044716(n+1)`
-/

namespace A044336.P4729089397358692995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A103450 n).toNat + A044716 (n + 1)

end

end A044336.P4729089397358692995

/-! ## A044336.P1582734317243766599

`A051237(A000124(n))+A044716(n+1)`
-/

namespace A044336.P1582734317243766599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051237 (A000124 n).toNat + A044716 (n + 1)

end

end A044336.P1582734317243766599

/-! ## A044336.P14236265666028501147

`A044716(n+1)+A000034(A044344(n+1))`
-/

namespace A044336.P14236265666028501147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A000034 (A044344 (n + 1)).toNat

end

end A044336.P14236265666028501147

/-! ## A044336.P17046479369204110823

`A044716(n+1)+A000034(A044348(n+1))`
-/

namespace A044336.P17046479369204110823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A000034 (A044348 (n + 1)).toNat

end

end A044336.P17046479369204110823

/-! ## A044336.P343743577603832001

`A044716(n+1)+A000035(A044726(n+1))`
-/

namespace A044336.P343743577603832001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044336.P343743577603832001

/-! ## A044336.P814239489645956128

`A044716(n+1)+A003484(A044728(n+1))`
-/

namespace A044336.P814239489645956128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044336.P814239489645956128

/-! ## A044336.P14588110307716827587

`A073575(A044714(n+1))+A044716(n+1)`
-/

namespace A044336.P14588110307716827587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A044714 (n + 1)).toNat + A044716 (n + 1)

end

end A044336.P14588110307716827587

/-! ## A044336.P12012528194995704733

`A044716(n+1)-A057428(A044727(n+1))`
-/

namespace A044336.P12012528194995704733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) - A057428 (A044727 (n + 1)).toNat

end

end A044336.P12012528194995704733

/-! ## A044336.P8029520507381208244

`A044716(n+1)-A057428(A044730(n+1))`
-/

namespace A044336.P8029520507381208244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044716 (n + 1) - A057428 (A044730 (n + 1)).toNat

end

end A044336.P8029520507381208244

/-! ## A044336.P389349116992168461

`A003816(A044716(n+1))`
-/

namespace A044336.P389349116992168461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A044716 (n + 1)).toNat

end

end A044336.P389349116992168461

/-! ## A044336.P16820683846273464371

`A005843(A044335(n+1))-A044334(n+1)`
-/

namespace A044336.P16820683846273464371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044335 (n + 1)).toNat - A044334 (n + 1)

end

end A044336.P16820683846273464371

/-!
# A044337: Numbers n such that string 0,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044337, there is no canonical definition to state claims against.
-/

/-! ## A044337.P5696927185471727433

`A044717(n+1)+A001221(A002385(n+1))`
-/

namespace A044337.P5696927185471727433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A001221 (A002385 (n + 1)).toNat

end

end A044337.P5696927185471727433

/-! ## A044337.P8597120715408658134

`A044717(n+1)+A003415(A018800(n+1))`
-/

namespace A044337.P8597120715408658134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A003415 (A018800 (n + 1)).toNat

end

end A044337.P8597120715408658134

/-! ## A044337.P1415643446037267032

`A044717(n+1)+A003415(A215417(n+1))`
-/

namespace A044337.P1415643446037267032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A003415 (A215417 (n + 1)).toNat

end

end A044337.P1415643446037267032

/-! ## A044337.P15973313408270796280

`A044717(n+1)+A000034(A006582(n+2))`
-/

namespace A044337.P15973313408270796280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A000034 (A006582 (n + 2)).toNat

end

end A044337.P15973313408270796280

/-! ## A044337.P8826203287125443077

`A057427(A342666(n+5))+A044717(n+1)`
-/

namespace A044337.P8826203287125443077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A342666 (n + 5)).toNat + A044717 (n + 1)

end

end A044337.P8826203287125443077

/-! ## A044337.P18414756965692997903

`A044717(n+1)-A057427(A215417(n+1)+1)+2`
-/

namespace A044337.P18414756965692997903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) - A057427 (A215417 (n + 1) + 1).toNat + 2

end

end A044337.P18414756965692997903

/-! ## A044337.P12743414628233100027

`A044717(A000027(n+1))+A001222(A002385(n+1))`
-/

namespace A044337.P12743414628233100027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (A000027 (n + 1)).toNat + A001222 (A002385 (n + 1)).toNat

end

end A044337.P12743414628233100027

/-! ## A044337.P16491878248516537035

`A054977(A026670(n))+A044717(n+1)`
-/

namespace A044337.P16491878248516537035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A026670 n).toNat + A044717 (n + 1)

end

end A044337.P16491878248516537035

/-! ## A044337.P2719584939898944418

`A044717(n+1)+A003415(A007529(n+1))`
-/

namespace A044337.P2719584939898944418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A003415 (A007529 (n + 1)).toNat

end

end A044337.P2719584939898944418

/-! ## A044337.P4875203273815752566

`A044717(n+1)+A096809(n*A204177(n+1))²`
-/

namespace A044337.P4875203273815752566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A096809 ((n : ℤ) * A204177 (n + 1)).toNat ^ 2

end

end A044337.P4875203273815752566

/-! ## A044337.P1258357837103734771

`A054977(A062767(n+1))+A044717(n+1)`
-/

namespace A044337.P1258357837103734771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A062767 (n + 1)).toNat + A044717 (n + 1)

end

end A044337.P1258357837103734771

/-! ## A044337.P14969667837476779294

`A348496(A181605(n+1))+A044717(n+1)`
-/

namespace A044337.P14969667837476779294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348496 (A181605 (n + 1)).toNat + A044717 (n + 1)

end

end A044337.P14969667837476779294

/-! ## A044337.P12306876554084014982

`(A044717(n+1)+1)%∑[A145536(n+1)]`
-/

namespace A044337.P12306876554084014982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044717 (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044337.P12306876554084014982

/-! ## A044337.P6192105319184667108

`A054977(A160664(n))+A044717(n+1)`
-/

namespace A044337.P6192105319184667108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A160664 n).toNat + A044717 (n + 1)

end

end A044337.P6192105319184667108

/-! ## A044337.P7895273485652758614

`A044717(n+1)+A003484(A044726(n+1))`
-/

namespace A044337.P7895273485652758614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A003484 (A044726 (n + 1)).toNat

end

end A044337.P7895273485652758614

/-! ## A044337.P13057588259857613311

`A044717(n+1)+A003484(A044728(n+1))`
-/

namespace A044337.P13057588259857613311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044337.P13057588259857613311

/-! ## A044337.P8729277957698506391

`A044717(n+1)-A057428(A044727(n+1))`
-/

namespace A044337.P8729277957698506391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) - A057428 (A044727 (n + 1)).toNat

end

end A044337.P8729277957698506391

/-! ## A044337.P7579291700541711696

`A044717(n+1)-A057428(A044730(n+1))`
-/

namespace A044337.P7579291700541711696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) - A057428 (A044730 (n + 1)).toNat

end

end A044337.P7579291700541711696

/-! ## A044337.P1358835231837966454

`A044717(n+1)-A057428(A044731(n+1))`
-/

namespace A044337.P1358835231837966454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) - A057428 (A044731 (n + 1)).toNat

end

end A044337.P1358835231837966454

/-! ## A044337.P1110993260248782345

`A044717(n+1)-A057428(A044732(n+1))`
-/

namespace A044337.P1110993260248782345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044717 (n + 1) - A057428 (A044732 (n + 1)).toNat

end

end A044337.P1110993260248782345

/-!
# A044338: Numbers n such that string 0,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044338, there is no canonical definition to state claims against.
-/

/-! ## A044338.P16153705528300423588

`A044718(1+n)+A003415(A062584(n))`
-/

namespace A044338.P16153705528300423588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (1 + n) + A003415 (A062584 n).toNat

end

end A044338.P16153705528300423588

/-! ## A044338.P8262315985848292399

`A057427(A062584(n))+A044718(n+1)`
-/

namespace A044338.P8262315985848292399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A062584 n).toNat + A044718 (n + 1)

end

end A044338.P8262315985848292399

/-! ## A044338.P15046614645007222495

`A044718(n+1)+A003415(A030291(n+1))`
-/

namespace A044338.P15046614645007222495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A003415 (A030291 (n + 1)).toNat

end

end A044338.P15046614645007222495

/-! ## A044338.P3827863180677234013

`A044718(n+1)+A001221(A059496(n+1))`
-/

namespace A044338.P3827863180677234013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A001221 (A059496 (n + 1)).toNat

end

end A044338.P3827863180677234013

/-! ## A044338.P2942605772842000797

`A057427(A273913(n+1))+A044718(n+1)`
-/

namespace A044338.P2942605772842000797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A273913 (n + 1)).toNat + A044718 (n + 1)

end

end A044338.P2942605772842000797

/-! ## A044338.P6933310053262092174

`A188076(A188078(∑[n+1]+1))+A044718(n+1)`
-/

namespace A044338.P6933310053262092174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188076 (A188078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + A044718 (n + 1)

end

end A044338.P6933310053262092174

/-! ## A044338.P5094462032898375443

`A044718(n+1)+A001222(A002385(n+1))`
-/

namespace A044338.P5094462032898375443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A001222 (A002385 (n + 1)).toNat

end

end A044338.P5094462032898375443

/-! ## A044338.P13979383392880988662

`A057427(A018800(n+1))+A044718(n+1)`
-/

namespace A044338.P13979383392880988662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A018800 (n + 1)).toNat + A044718 (n + 1)

end

end A044338.P13979383392880988662

/-! ## A044338.P9094300792943946752

`A044718(n+1)+A014673(A215417(n+1))`
-/

namespace A044338.P9094300792943946752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A014673 (A215417 (n + 1)).toNat

end

end A044338.P9094300792943946752

/-! ## A044338.P17026046751310881579

`A044718(n+1)+A001511(A240453(n+1))`
-/

namespace A044338.P17026046751310881579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A001511 (A240453 (n + 1)).toNat

end

end A044338.P17026046751310881579

/-! ## A044338.P13508779298295837678

`A044718(n+1)+A000034(A248530(n+1))`
-/

namespace A044338.P13508779298295837678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A000034 (A248530 (n + 1)).toNat

end

end A044338.P13508779298295837678

/-! ## A044338.P4886201992688829699

`A044718(n+1)+A001222(A262282(n+1))`
-/

namespace A044338.P4886201992688829699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A001222 (A262282 (n + 1)).toNat

end

end A044338.P4886201992688829699

/-! ## A044338.P2387680816770172741

`A044718(n+1)+2-A141588(A136019(n+1))`
-/

namespace A044338.P2387680816770172741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + 2 - A141588 (A136019 (n + 1)).toNat

end

end A044338.P2387680816770172741

/-! ## A044338.P10288607067949445694

`A044718(n+1)+A000034(A044344(n+1))`
-/

namespace A044338.P10288607067949445694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A000034 (A044344 (n + 1)).toNat

end

end A044338.P10288607067949445694

/-! ## A044338.P5796738533430767213

`A044718(n+1)+A000034(A044348(n+1))`
-/

namespace A044338.P5796738533430767213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A000034 (A044348 (n + 1)).toNat

end

end A044338.P5796738533430767213

/-! ## A044338.P4243594260898800369

`A044718(n+1)+A000035(A044726(n+1))`
-/

namespace A044338.P4243594260898800369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044338.P4243594260898800369

/-! ## A044338.P99038898407138773

`A044718(n+1)+A001511(A044804(n+1))`
-/

namespace A044338.P99038898407138773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1) + A001511 (A044804 (n + 1)).toNat

end

end A044338.P99038898407138773

/-! ## A044338.P11123809677658561038

`A011760(A044718(n+1))`
-/

namespace A044338.P11123809677658561038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044718 (n + 1)).toNat

end

end A044338.P11123809677658561038

/-!
# A044339: Numbers k such that the string 0,7 occurs in the base 10 representation of k but not of k-1.

The programs for A044339, there is no canonical definition to state claims against.
-/

/-! ## A044339.P2704759757507820753

`A097325(2*n²+1)+A044719(n+1)`
-/

namespace A044339.P2704759757507820753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n ^ 2 + 1) + A044719 (n + 1)

end

end A044339.P2704759757507820753

/-! ## A044339.P1761104654839132065

`A044719(1+n)+A033999(A152749(n))`
-/

namespace A044339.P1761104654839132065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (1 + n) + A033999 (A152749 n).toNat

end

end A044339.P1761104654839132065

/-! ## A044339.P13748114497740598144

`A044719(n+1)+A000035(A005385(n+1))`
-/

namespace A044339.P13748114497740598144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A000035 (A005385 (n + 1)).toNat

end

end A044339.P13748114497740598144

/-! ## A044339.P3476934026002520762

`A044719(n+1)+A000035(A006378(n+1))`
-/

namespace A044339.P3476934026002520762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A000035 (A006378 (n + 1)).toNat

end

end A044339.P3476934026002520762

/-! ## A044339.P15187975388319743101

`A044719(n+1)+A003415(A047936(n+1))`
-/

namespace A044339.P15187975388319743101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A003415 (A047936 (n + 1)).toNat

end

end A044339.P15187975388319743101

/-! ## A044339.P3259380030175696564

`A044719(n+1)+A006519(A078626(n+1))`
-/

namespace A044339.P3259380030175696564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A006519 (A078626 (n + 1)).toNat

end

end A044339.P3259380030175696564

/-! ## A044339.P4213788955356341092

`A057427(A050046(n+1))+A044719(n+1)`
-/

namespace A044339.P4213788955356341092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050046 (n + 1)).toNat + A044719 (n + 1)

end

end A044339.P4213788955356341092

/-! ## A044339.P9326287593543299493

`A044719(n+1)+A003415(A161724(n+1))`
-/

namespace A044339.P9326287593543299493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A003415 (A161724 (n + 1)).toNat

end

end A044339.P9326287593543299493

/-! ## A044339.P344826061990174334

`A283265(A027578(n))+A044719(n+1)`
-/

namespace A044339.P344826061990174334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A027578 n).toNat + A044719 (n + 1)

end

end A044339.P344826061990174334

/-! ## A044339.P5299147889952827121

`A044719(n+1)+A001221(A002385(n+1))`
-/

namespace A044339.P5299147889952827121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A001221 (A002385 (n + 1)).toNat

end

end A044339.P5299147889952827121

/-! ## A044339.P2346416147623792217

`A044719(n+1)+A003415(A007529(n+1))`
-/

namespace A044339.P2346416147623792217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A003415 (A007529 (n + 1)).toNat

end

end A044339.P2346416147623792217

/-! ## A044339.P4896305164772664655

`A044719(n+1)+A094497(n)!`
-/

namespace A044339.P4896305164772664655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + (Nat.factorial (A094497 n).toNat : ℤ)

end

end A044339.P4896305164772664655

/-! ## A044339.P10200761494387029856

`A044719(n+1)+A000035(A044726(n+1))`
-/

namespace A044339.P10200761494387029856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044339.P10200761494387029856

/-! ## A044339.P17307959514051216669

`A044719(n+1)+A003484(A044728(n+1))`
-/

namespace A044339.P17307959514051216669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044719 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044339.P17307959514051216669

/-! ## A044339.P10228945283026621782

`A057427(A044725(n+1))+A044719(n+1)`
-/

namespace A044339.P10228945283026621782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044725 (n + 1)).toNat + A044719 (n + 1)

end

end A044339.P10228945283026621782

/-! ## A044339.P6244737753602184125

`A057427(A044727(n+1))+A044719(n+1)`
-/

namespace A044339.P6244737753602184125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044727 (n + 1)).toNat + A044719 (n + 1)

end

end A044339.P6244737753602184125

/-! ## A044339.P1011016502448825052

`A057427(A044729(n+1))+A044719(n+1)`
-/

namespace A044339.P1011016502448825052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044729 (n + 1)).toNat + A044719 (n + 1)

end

end A044339.P1011016502448825052

/-! ## A044339.P13396080693926201524

`A011760(A044719(n+1))`
-/

namespace A044339.P13396080693926201524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044719 (n + 1)).toNat

end

end A044339.P13396080693926201524

/-! ## A044339.P5665188148777878539

`A005843(A044337(n+1))-A044335(n+1)`
-/

namespace A044339.P5665188148777878539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044337 (n + 1)).toNat - A044335 (n + 1)

end

end A044339.P5665188148777878539

/-!
# A044340: Numbers n such that string 0,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044340, there is no canonical definition to state claims against.
-/

/-! ## A044340.P6670948116489501893

`A044720(n+1)+A011655(A084684(n))`
-/

namespace A044340.P6670948116489501893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A011655 (A084684 n).toNat

end

end A044340.P6670948116489501893

/-! ## A044340.P2947080913615095036

`A057427(A131799(n+1))+A044720(n+1)`
-/

namespace A044340.P2947080913615095036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A131799 (n + 1)).toNat + A044720 (n + 1)

end

end A044340.P2947080913615095036

/-! ## A044340.P12868202505293622316

`A044720(n+1)+A000035(A342666(n+2))`
-/

namespace A044340.P12868202505293622316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A000035 (A342666 (n + 2)).toNat

end

end A044340.P12868202505293622316

/-! ## A044340.P15801515155953343438

`A057427(lt[A096751(n), n])+A044720(n+1)`
-/

namespace A044340.P15801515155953343438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + A044720 (n + 1)

end

end A044340.P15801515155953343438

/-! ## A044340.P3720159859239315238

`A097325(A001844(n))+A044720(n+1)`
-/

namespace A044340.P3720159859239315238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A001844 n).toNat + A044720 (n + 1)

end

end A044340.P3720159859239315238

/-! ## A044340.P15213370558055222250

`A044720(n+1)+A033999(A152749(n))`
-/

namespace A044340.P15213370558055222250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A033999 (A152749 n).toNat

end

end A044340.P15213370558055222250

/-! ## A044340.P5209678792708630055

`A057427(Δ[A002717(n)])+A044720(n+1)`
-/

namespace A044340.P5209678792708630055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (f1 (n + 1) - f1 n).toNat + A044720 (n + 1)

end

end A044340.P5209678792708630055

/-! ## A044340.P9111438439316095800

`A044720(n+1)+A000035(A006378(n+1))`
-/

namespace A044340.P9111438439316095800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A000035 (A006378 (n + 1)).toNat

end

end A044340.P9111438439316095800

/-! ## A044340.P1860310747999926250

`A044720(n+1)-A057428(A084684(n+1))`
-/

namespace A044340.P1860310747999926250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) - A057428 (A084684 (n + 1)).toNat

end

end A044340.P1860310747999926250

/-! ## A044340.P13840096538799707042

`A057427(A190717(n))+A044720(n+1)`
-/

namespace A044340.P13840096538799707042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A190717 n).toNat + A044720 (n + 1)

end

end A044340.P13840096538799707042

/-! ## A044340.P15619052763836569152

`A044720(n+1)-A105812(A242100(2*n+1))`
-/

namespace A044340.P15619052763836569152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) - A105812 (A242100 (2 * n + 1)).toNat

end

end A044340.P15619052763836569152

/-! ## A044340.P10830559491042737989

`A057427(A338988(n))+A044720(n+1)`
-/

namespace A044340.P10830559491042737989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A338988 n).toNat + A044720 (n + 1)

end

end A044340.P10830559491042737989

/-! ## A044340.P836059255985963745

`A044720(n+1)+A001222(A002385(n+1))`
-/

namespace A044340.P836059255985963745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A001222 (A002385 (n + 1)).toNat

end

end A044340.P836059255985963745

/-! ## A044340.P9156142535064875575

`A044720(n+1)+A001222(A083139(n+1))`
-/

namespace A044340.P9156142535064875575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A001222 (A083139 (n + 1)).toNat

end

end A044340.P9156142535064875575

/-! ## A044340.P6800014251775757350

`A044720(n+1)+A003415(A007529(n+1))`
-/

namespace A044340.P6800014251775757350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A003415 (A007529 (n + 1)).toNat

end

end A044340.P6800014251775757350

/-! ## A044340.P7009012031510064585

`A000035(A278484(n))+A044720(n+1)+1`
-/

namespace A044340.P7009012031510064585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278484 n).toNat + (A044720 (n + 1) + 1)

end

end A044340.P7009012031510064585

/-! ## A044340.P10231493909493160888

`(A044720(n+1)+1)*A000035(A000960(n+1))`
-/

namespace A044340.P10231493909493160888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044720 (n + 1) + 1) * A000035 (A000960 (n + 1)).toNat

end

end A044340.P10231493909493160888

/-! ## A044340.P12062512021995967151

`A044720(n+1)+A000035(A044726(n+1))`
-/

namespace A044340.P12062512021995967151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A000035 (A044726 (n + 1)).toNat

end

end A044340.P12062512021995967151

/-! ## A044340.P2433610657381841887

`A044720(n+1)+A000035(A044744(n+1))`
-/

namespace A044340.P2433610657381841887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A000035 (A044744 (n + 1)).toNat

end

end A044340.P2433610657381841887

/-! ## A044340.P445903249193385153

`A044720(n+1)+A003484(A044728(n+1))`
-/

namespace A044340.P445903249193385153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044340.P445903249193385153

/-!
# A044341: Numbers k such that the string 0,9 occurs in the base 10 representation of k but not of k-1.

The programs for A044341, there is no canonical definition to state claims against.
-/

/-! ## A044341.P6929276364613039640

`A057427(A008669(n))+A044721(n+1)`
-/

namespace A044341.P6929276364613039640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008669 n).toNat + A044721 (n + 1)

end

end A044341.P6929276364613039640

/-! ## A044341.P12631560115538527886

`A057427(A205542(n))+A044721(n+1)`
-/

namespace A044341.P12631560115538527886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A205542 n).toNat + A044721 (n + 1)

end

end A044341.P12631560115538527886

/-! ## A044341.P16285361831476059157

`A044721(n+1)+A000188(A059800(n+1))`
-/

namespace A044341.P16285361831476059157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A000188 (A059800 (n + 1)).toNat

end

end A044341.P16285361831476059157

/-! ## A044341.P15950847640213639341

`A057427(A263703(n+1))+A044721(n+1)`
-/

namespace A044341.P15950847640213639341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A263703 (n + 1)).toNat + A044721 (n + 1)

end

end A044341.P15950847640213639341

/-! ## A044341.P13906359144136151503

`A057427(A273421(n+2))+A044721(n+1)`
-/

namespace A044341.P13906359144136151503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A273421 (n + 2)).toNat + A044721 (n + 1)

end

end A044341.P13906359144136151503

/-! ## A044341.P14041037958550342104

`A057427(A014255(n))+A044721(n+1)`
-/

namespace A044341.P14041037958550342104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A014255 n).toNat + A044721 (n + 1)

end

end A044341.P14041037958550342104

/-! ## A044341.P3772123489227839913

`A204988(A228118(n+1))+A044721(n+1)`
-/

namespace A044341.P3772123489227839913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A228118 (n + 1)).toNat + A044721 (n + 1)

end

end A044341.P3772123489227839913

/-! ## A044341.P604091908182729531

`A265575(4*C(n+2, 2))+A044721(n+1)`
-/

namespace A044341.P604091908182729531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (4 * Nat.choose (n + 2) 2) + A044721 (n + 1)

end

end A044341.P604091908182729531

/-! ## A044341.P14483688929228789834

`A044721(n+1)+A001222(A002385(n+1))`
-/

namespace A044341.P14483688929228789834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A001222 (A002385 (n + 1)).toNat

end

end A044341.P14483688929228789834

/-! ## A044341.P4464897389077413681

`A097325(A090288(n+1))+A044721(n+1)`
-/

namespace A044341.P4464897389077413681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A090288 (n + 1)).toNat + A044721 (n + 1)

end

end A044341.P4464897389077413681

/-! ## A044341.P6828268098355117595

`A044721(n+1)-A033999(A215417(n+1))`
-/

namespace A044341.P6828268098355117595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) - A033999 (A215417 (n + 1)).toNat

end

end A044341.P6828268098355117595

/-! ## A044341.P11763208508964328020

`A044721(n+1)+A003415(A007529(n+1))`
-/

namespace A044341.P11763208508964328020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A003415 (A007529 (n + 1)).toNat

end

end A044341.P11763208508964328020

/-! ## A044341.P6884263919509831591

`A339876(A299922(n))+A044721(n+1)`
-/

namespace A044341.P6884263919509831591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339876 (A299922 n).toNat + A044721 (n + 1)

end

end A044341.P6884263919509831591

/-! ## A044341.P5210220372276371574

`A044721(n+1)-A033999(A236068(n+1))`
-/

namespace A044341.P5210220372276371574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) - A033999 (A236068 (n + 1)).toNat

end

end A044341.P5210220372276371574

/-! ## A044341.P7444334873673505498

`A044721(n+1)+A003484(A044726(n+1))`
-/

namespace A044341.P7444334873673505498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A003484 (A044726 (n + 1)).toNat

end

end A044341.P7444334873673505498

/-! ## A044341.P3810625173664314907

`A044721(n+1)+A003484(A044728(n+1))`
-/

namespace A044341.P3810625173664314907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A003484 (A044728 (n + 1)).toNat

end

end A044341.P3810625173664314907

/-! ## A044341.P12007943763689201819

`A011760(A044721(n+1))`
-/

namespace A044341.P12007943763689201819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044721 (n + 1)).toNat

end

end A044341.P12007943763689201819

/-! ## A044341.P4723097827567401333

`A044721(n+1)+A001222(A217047(n+1))`
-/

namespace A044341.P4723097827567401333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044721 (n + 1) + A001222 (A217047 (n + 1)).toNat

end

end A044341.P4723097827567401333

/-!
# A044342: Numbers k such that the string 1,0 occurs in the base 10 representation of k but not of k-1.

The programs for A044342, there is no canonical definition to state claims against.
-/

/-! ## A044342.P17758941065071072856

`∩[A043216(n+1), A293870(n+1)]`
-/

namespace A044342.P17758941065071072856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P17758941065071072856

/-! ## A044342.P17686753260528695074

`∩[A043216(n+1), A396948(n+1)]`
-/

namespace A044342.P17686753260528695074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P17686753260528695074

/-! ## A044342.P18183358918844040918

`∩[A043216(n+1), A008592(n)]`
-/

namespace A044342.P18183358918844040918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P18183358918844040918

/-! ## A044342.P13156084339643089374

`∩[A043216(n+1), A370532(n+1)]`
-/

namespace A044342.P13156084339643089374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P13156084339643089374

/-! ## A044342.P10670429825688483469

`∩[A043216(n+1), A359841(n+1)]`
-/

namespace A044342.P10670429825688483469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10670429825688483469

/-! ## A044342.P13505733036715422024

`∩[A043216(n+1), A352464(n+1)]`
-/

namespace A044342.P13505733036715422024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P13505733036715422024

/-! ## A044342.P668716211092981343

`∩[A043216(n+1), A179819(n+1)]`
-/

namespace A044342.P668716211092981343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P668716211092981343

/-! ## A044342.P6754121677560127577

`∩[A043216(n+1), A186438(n+1)]`
-/

namespace A044342.P6754121677560127577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P6754121677560127577

/-! ## A044342.P9582839900723587484

`∩[A043216(n+1), A083118(n+1)]`
-/

namespace A044342.P9582839900723587484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P9582839900723587484

/-! ## A044342.P4559636303611701195

`∩[A043216(n+1), A401332(n+1)]`
-/

namespace A044342.P4559636303611701195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P4559636303611701195

/-! ## A044342.P188043161121523027

`∩[A043216(n+1), A008587(n)]`
-/

namespace A044342.P188043161121523027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P188043161121523027

/-! ## A044342.P566077146661271569

`∩[A043216(n+1), A008706(n)]`
-/

namespace A044342.P566077146661271569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P566077146661271569

/-! ## A044342.P16068780269002955680

`∩[A043216(n+1), A135042(n)]`
-/

namespace A044342.P16068780269002955680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P16068780269002955680

/-! ## A044342.P12744188432736936257

`∩[A043216(n+1), A146763(n)]`
-/

namespace A044342.P12744188432736936257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P12744188432736936257

/-! ## A044342.P3623430425472974630

`∩[A043216(n+1), A146951(n)]`
-/

namespace A044342.P3623430425472974630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P3623430425472974630

/-! ## A044342.P11753936691825535419

`∩[A043216(n+1), A168101(n)]`
-/

namespace A044342.P11753936691825535419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P11753936691825535419

/-! ## A044342.P10898790224651717968

`∩[A043216(n+1), A235089(n+1)]`
-/

namespace A044342.P10898790224651717968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10898790224651717968

/-! ## A044342.P899794705764361888

`∩[A043216(n+1), A399563(n+1)]`
-/

namespace A044342.P899794705764361888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P899794705764361888

/-! ## A044342.P15225752788043350613

`filter[A043216(n+1), A079998(#)]`
-/

namespace A044342.P15225752788043350613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A044342.P15225752788043350613

/-! ## A044342.P10175608876224781440

`∩[A043216(n+1), A315343(n)]`
-/

namespace A044342.P10175608876224781440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10175608876224781440

/-!
# A044343: Numbers n such that string 1,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044343, there is no canonical definition to state claims against.
-/

/-! ## A044343.P14265262008226229533

`record[A135997(A044365(n+1))]`
-/

namespace A044343.P14265262008226229533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044365 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044343.P14265262008226229533

/-! ## A044343.P3558436396857007110

`A135997(A044365(3*n+1))`
-/

namespace A044343.P3558436396857007110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044365 (3 * n + 1)).toNat

end

end A044343.P3558436396857007110

/-! ## A044343.P2556799993855864418

`A175676(A044365(3*n+1)%A052377(n+1))`
-/

namespace A044343.P2556799993855864418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044365 (3 * n + 1)) (A052377 (n + 1))).toNat

end

end A044343.P2556799993855864418

/-! ## A044343.P5722202092109058943

`A175676(A044365(3*n+1))%A212071(n+4)`
-/

namespace A044343.P5722202092109058943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (A044365 (3 * n + 1)).toNat) (A212071 (n + 4))

end

end A044343.P5722202092109058943

/-! ## A044343.P10548403294625209512

`A175676(A044365(3*n+1))+A175676(A030291(3*n+4))`
-/

namespace A044343.P10548403294625209512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044365 (3 * n + 1)).toNat + A175676 (A030291 (3 * n + 4)).toNat

end

end A044343.P10548403294625209512

/-!
# A044344: Numbers n such that string 1,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044344, there is no canonical definition to state claims against.
-/

/-! ## A044344.P8097801943300195878

`A044349(n+1)+A044725(A077168(n))+1-A044350(n+1)`
-/

namespace A044344.P8097801943300195878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) + (A044725 (A077168 n).toNat + 1) - A044350 (n + 1)

end

end A044344.P8097801943300195878

/-! ## A044344.P11611310558455371876

`A044352(n+1)+A044725(A077168(n))+1-A044353(n+1)`
-/

namespace A044344.P11611310558455371876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + (A044725 (A077168 n).toNat + 1) - A044353 (n + 1)

end

end A044344.P11611310558455371876

/-! ## A044344.P7275683430593186823

`A000035(A230097(2*(n+2)))*A007093(A044147(n+1))`
-/

namespace A044344.P7275683430593186823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A230097 (2 * (n + 2))).toNat * A007093 (A044147 (n + 1)).toNat

end

end A044344.P7275683430593186823

/-!
# A044345: Numbers n such that string 1,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044345, there is no canonical definition to state claims against.
-/

/-! ## A044345.P9992905548598469409

`record[A135997(A044371(n+1))]`
-/

namespace A044345.P9992905548598469409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044345.P9992905548598469409

/-! ## A044345.P10001965396979824200

`A044725(A077168(n))+1`
-/

namespace A044345.P10001965396979824200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (A077168 n).toNat + 1

end

end A044345.P10001965396979824200

/-! ## A044345.P10050226235654001504

`A044725(n+1)+A011655(A000079(n))`
-/

namespace A044345.P10050226235654001504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (n + 1) + A011655 (A000079 n).toNat

end

end A044345.P10050226235654001504

/-! ## A044345.P345052551819645219

`A044725(n+1)+A001222(A033844(n))`
-/

namespace A044345.P345052551819645219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (n + 1) + A001222 (A033844 n).toNat

end

end A044345.P345052551819645219

/-! ## A044345.P11768674240562189264

`A057427(A000051(n))+A044725(n+1)`
-/

namespace A044345.P11768674240562189264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000051 n).toNat + A044725 (n + 1)

end

end A044345.P11768674240562189264

/-!
# A044346: Numbers n such that string 1,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044346, there is no canonical definition to state claims against.
-/

/-! ## A044346.P985999724652025409

`A164020(A044726(n+1))`
-/

namespace A044346.P985999724652025409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044726 (n + 1)).toNat

end

end A044346.P985999724652025409

/-! ## A044346.P9261391484614767198

`A044726(A187829(n+1))+1`
-/

namespace A044346.P9261391484614767198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044726 (A187829 (n + 1)).toNat + 1

end

end A044346.P9261391484614767198

/-! ## A044346.P8992864294495425678

`A044726(n+1)+A028240(n)!`
-/

namespace A044346.P8992864294495425678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044726 (n + 1) + (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044346.P8992864294495425678

/-! ## A044346.P16418424303175012517

`A057427(A011782(n))+A044726(n+1)`
-/

namespace A044346.P16418424303175012517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A011782 n).toNat + A044726 (n + 1)

end

end A044346.P16418424303175012517

/-! ## A044346.P13612242093454346509

`A057427(A049870(n))+A044726(n+1)`
-/

namespace A044346.P13612242093454346509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A049870 n).toNat + A044726 (n + 1)

end

end A044346.P13612242093454346509

/-!
# A044347: Numbers n such that string 1,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044347, there is no canonical definition to state claims against.
-/

/-! ## A044347.P12309877486378336571

`A353627(A003945(n))+A044727(n+1)`
-/

namespace A044347.P12309877486378336571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A003945 n).toNat + A044727 (n + 1)

end

end A044347.P12309877486378336571

/-! ## A044347.P15510529971228547287

`A044727(n+1)-A057428(A000219(n))`
-/

namespace A044347.P15510529971228547287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) - A057428 (A000219 n).toNat

end

end A044347.P15510529971228547287

/-! ## A044347.P11343787088696661604

`A044727(n+1)-A057428(A173723(n))`
-/

namespace A044347.P11343787088696661604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) - A057428 (A173723 (n + 10)).toNat

end

end A044347.P11343787088696661604

/-! ## A044347.P18181858354597666307

`A044727(n+1)+A001055(A080177(n+1))`
-/

namespace A044347.P18181858354597666307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) + A001055 (A080177 (n + 1)).toNat

end

end A044347.P18181858354597666307

/-! ## A044347.P10667243233159347594

`A044727(n+1)+A001055(A112927(n+1))`
-/

namespace A044347.P10667243233159347594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) + A001055 (A112927 (n + 1)).toNat

end

end A044347.P10667243233159347594

/-!
# A044348: Numbers k such that the string 1,6 occurs in the base 10 representation of k but not of k-1.

The programs for A044348, there is no canonical definition to state claims against.
-/

/-! ## A044348.P15012834293461485282

`record[A137241(A044380(n+1))]`
-/

namespace A044348.P15012834293461485282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044348.P15012834293461485282

/-! ## A044348.P12058479920086292832

`A044728(n+1)+A091536(n)!`
-/

namespace A044348.P12058479920086292832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044728 (n + 1) + (Nat.factorial (A091536 n).toNat : ℤ)

end

end A044348.P12058479920086292832

/-! ## A044348.P16031476897063755840

`(A044728(n+1)+1)%A068744(n+2)`
-/

namespace A044348.P16031476897063755840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044728 (n + 1) + 1) (A068744 (n + 2))

end

end A044348.P16031476897063755840

/-! ## A044348.P11080302179009277484

`A044728(n+1)+A005361(A034386(n))`
-/

namespace A044348.P11080302179009277484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044728 (n + 1) + A005361 (A034386 n).toNat

end

end A044348.P11080302179009277484

/-! ## A044348.P11814281153407090210

`A044728(n+1)-A057428(A125244(n+1))`
-/

namespace A044348.P11814281153407090210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044728 (n + 1) - A057428 (A125244 (n + 1)).toNat

end

end A044348.P11814281153407090210

/-!
# A044349: Numbers n such that string 1,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044349, there is no canonical definition to state claims against.
-/

/-! ## A044349.P13167113491887649498

`record[A135997(A044383(n+1))]`
-/

namespace A044349.P13167113491887649498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044349.P13167113491887649498

/-! ## A044349.P5432189353581471470

`A044352(n+1)+A008612(6*A044730(n+1))-A044353(n+1)`
-/

namespace A044349.P5432189353581471470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + A008612 (6 * A044730 (n + 1)).toNat - A044353 (n + 1)

end

end A044349.P5432189353581471470

/-! ## A044349.P15889265027188727598

`A044352(n+1)+A026806(6*A044730(n+1))-A044353(n+1)`
-/

namespace A044349.P15889265027188727598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + A026806 (6 * A044730 (n + 1)).toNat - A044353 (n + 1)

end

end A044349.P15889265027188727598

/-! ## A044349.P15874301332342452449

`A008612(6*A044729(n+1))`
-/

namespace A044349.P15874301332342452449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A044729 (n + 1)).toNat

end

end A044349.P15874301332342452449

/-! ## A044349.P4923190543645607425

`A044729(n+1)+A001221(A228811(n+1))`
-/

namespace A044349.P4923190543645607425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044729 (n + 1) + A001221 (A228811 (n + 1)).toNat

end

end A044349.P4923190543645607425

/-!
# A044350: Numbers n such that string 1,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044350, there is no canonical definition to state claims against.
-/

/-! ## A044350.P18193018896868600608

`record[A137241(A044386(n+1))]`
-/

namespace A044350.P18193018896868600608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044350.P18193018896868600608

/-! ## A044350.P9373962674415192165

`A008612(6*A044730(n+1))`
-/

namespace A044350.P9373962674415192165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A044730 (n + 1)).toNat

end

end A044350.P9373962674415192165

/-! ## A044350.P16107577476607387715

`A026806(6*A044730(n+1))`
-/

namespace A044350.P16107577476607387715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (6 * A044730 (n + 1)).toNat

end

end A044350.P16107577476607387715

/-! ## A044350.P14696164392449597521

`A103221(6*A044730(n+1))`
-/

namespace A044350.P14696164392449597521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A044730 (n + 1)).toNat

end

end A044350.P14696164392449597521

/-! ## A044350.P6176409895553069804

`A044730(n+1)+A072189(n)!`
-/

namespace A044350.P6176409895553069804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044730 (n + 1) + (Nat.factorial (A072189 n).toNat : ℤ)

end

end A044350.P6176409895553069804

/-!
# A044351: Numbers k such that string 1,9 occurs in the base 10 representation of k but not of k-1.

The programs for A044351, there is no canonical definition to state claims against.
-/

/-! ## A044351.P11646700870361590423

`record[A137241(A044389(n+1))]`
-/

namespace A044351.P11646700870361590423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044351.P11646700870361590423

/-! ## A044351.P2274821810876526098

`A044352(n+1)+A121040(n+1)-A110981(2*n+3)!-A044733(n+1)`
-/

namespace A044351.P2274821810876526098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + (A121040 (n + 1) - (Nat.factorial (A110981 (2 * n + 3)).toNat : ℤ)) - A044733 (n + 1)

end

end A044351.P2274821810876526098

/-! ## A044351.P6631256873666290939

`A044731(n+1)+A008833(A249416(n))`
-/

namespace A044351.P6631256873666290939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044731 (n + 1) + A008833 (A249416 n).toNat

end

end A044351.P6631256873666290939

/-! ## A044351.P3116163583753960901

`A044731(n+1)+A003415(A002385(n+1))`
-/

namespace A044351.P3116163583753960901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044731 (n + 1) + A003415 (A002385 (n + 1)).toNat

end

end A044351.P3116163583753960901

/-! ## A044351.P15226604449235865168

`A044731(n+1)+A008835(A131109(n+1))`
-/

namespace A044351.P15226604449235865168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044731 (n + 1) + A008835 (A131109 (n + 1)).toNat

end

end A044351.P15226604449235865168

/-!
# A044352: Numbers n such that string 2,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044352, there is no canonical definition to state claims against.
-/

/-! ## A044352.P5917619729359980389

`filter[A043217(1+n), A011765(#)]`
-/

namespace A044352.P5917619729359980389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044352.P5917619729359980389

/-! ## A044352.P5082256849090830571

`filter[A043217(1+n), A014577(#)]`
-/

namespace A044352.P5082256849090830571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A044352.P5082256849090830571

/-! ## A044352.P18242946781353832699

`filter[A043217(1+n), A106665(#)]`
-/

namespace A044352.P18242946781353832699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A044352.P18242946781353832699

/-! ## A044352.P12774663305545000560

`filter[A043217(n+1), A133872(#)]`
-/

namespace A044352.P12774663305545000560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A044352.P12774663305545000560

/-! ## A044352.P3082764686904702940

`filter[A043217(n+1), A179850(#)]`
-/

namespace A044352.P3082764686904702940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A044352.P3082764686904702940

/-! ## A044352.P15531945536676109912

`filter[A043217(n+1), A232990(#)]`
-/

namespace A044352.P15531945536676109912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044352.P15531945536676109912

/-! ## A044352.P858968038931240602

`filter[A043217(n+1), A262808(#)]`
-/

namespace A044352.P858968038931240602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A044352.P858968038931240602

/-! ## A044352.P7981351897627561223

`filter[A043217(n+1), A305994(#)]`
-/

namespace A044352.P7981351897627561223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A044352.P7981351897627561223

/-! ## A044352.P11435604383615090577

`filter[A043217(n+1), A359379(#)]`
-/

namespace A044352.P11435604383615090577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A044352.P11435604383615090577

/-! ## A044352.P5734195622938854859

`A277618(∩[A043217(n+1), A121040(n+1)])`
-/

namespace A044352.P5734195622938854859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044352.P5734195622938854859

/-!
# A044353: Numbers n such that string 2,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044353, there is no canonical definition to state claims against.
-/

/-! ## A044353.P11505802187219441369

`record[A108738(A044395(n+1))]`
-/

namespace A044353.P11505802187219441369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A044395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P11505802187219441369

/-! ## A044353.P7943612750132314970

`record[A175676(A044395(n+1))%A043222(n+1)]`
-/

namespace A044353.P7943612750132314970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (A044395 (n + 1)).toNat) (A043222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P7943612750132314970

/-! ## A044353.P17223793569186287867

`record[A175676(A044395(n+1)%A044397(n+1))]`
-/

namespace A044353.P17223793569186287867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044395 (n + 1)) (A044397 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P17223793569186287867

/-! ## A044353.P13524862036228791714

`A114567((12*n)²)+A044733(n+1)`
-/

namespace A044353.P13524862036228791714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 ((12 * n) ^ 2) + A044733 (n + 1)

end

end A044353.P13524862036228791714

/-! ## A044353.P4302245252712237

`(A044733(n+1)+1)%A105656(n+1)`
-/

namespace A044353.P4302245252712237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044733 (n + 1) + 1) (A105656 (n + 1))

end

end A044353.P4302245252712237

/-!
# A044354: Numbers n such that string 2,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044354, there is no canonical definition to state claims against.
-/

/-! ## A044354.P3380719380178526531

`record[A135997(A044398(n+1))]`
-/

namespace A044354.P3380719380178526531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044354.P3380719380178526531

/-! ## A044354.P11859530922860128332

`record[A175676(A044398(n+1))+A175676(n+1)]`
-/

namespace A044354.P11859530922860128332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044398 (n + 1)).toNat + A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044354.P11859530922860128332

/-! ## A044354.P11871348322036518881

`or(A000005(A318960(n+3)), A053741(2*n))`
-/

namespace A044354.P11871348322036518881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A318960 (n + 3)).toNat) (A053741 (2 * n))

end

end A044354.P11871348322036518881

/-! ## A044354.P17925659047210835792

`10*10*n+23-A014963(A007318(2*n²))`
-/

namespace A044354.P17925659047210835792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (10 * n) + 23 : ℤ) - A014963 (A007318 (2 * n ^ 2)).toNat

end

end A044354.P17925659047210835792

/-!
# A044355: Numbers n such that string 2,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044355, there is no canonical definition to state claims against.
-/

/-! ## A044355.P7150069102173189511

`record[A135997(A044401(n+1))]`
-/

namespace A044355.P7150069102173189511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044355.P7150069102173189511

/-! ## A044355.P7563754976051697231

`A000035(A230097(2*(n+2)))*A007093(A044155(n+1))`
-/

namespace A044355.P7563754976051697231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A230097 (2 * (n + 2))).toNat * A007093 (A044155 (n + 1)).toNat

end

end A044355.P7563754976051697231

/-! ## A044355.P12047351932661456336

`A007093(A044155(n+1))%A044141(A075091(2*(n+1)))`
-/

namespace A044355.P12047351932661456336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A044155 (n + 1)).toNat) (A044141 (A075091 (2 * (n + 1))).toNat)

end

end A044355.P12047351932661456336

/-!
# A044356: Numbers k such that the string 2,4 occurs in the base 10 representation of k but not of k-1.

The programs for A044356, there is no canonical definition to state claims against.
-/

/-! ## A044356.P14874031028290509230

`record[A137241(A044404(n+1))]`
-/

namespace A044356.P14874031028290509230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044356.P14874031028290509230

/-! ## A044356.P16578275903844521895

`A044736(n+1)+A000688(A051642(n))`
-/

namespace A044356.P16578275903844521895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044736 (n + 1) + A000688 (A051642 n).toNat

end

end A044356.P16578275903844521895

/-! ## A044356.P10624165149507913335

`A167965(A018819(n))+A044736(n+1)`
-/

namespace A044356.P10624165149507913335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A018819 n).toNat + A044736 (n + 1)

end

end A044356.P10624165149507913335

/-! ## A044356.P16841877862662175268

`A044736(n+1)+A001222(A144755(n+1))`
-/

namespace A044356.P16841877862662175268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044736 (n + 1) + A001222 (A144755 (n + 1)).toNat

end

end A044356.P16841877862662175268

/-! ## A044356.P7232002439397585246

`A054977(A327016(2*(n+2)))+A044736(n+1)`
-/

namespace A044356.P7232002439397585246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A327016 (2 * (n + 2))).toNat + A044736 (n + 1)

end

end A044356.P7232002439397585246

/-!
# A044357: Numbers n such that string 2,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044357, there is no canonical definition to state claims against.
-/

/-! ## A044357.P16618315702187366740

`record[A137241(A044407(n+1))]`
-/

namespace A044357.P16618315702187366740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P16618315702187366740

/-! ## A044357.P13883993089169319601

`record[A175676(A044407(n+1))%A044406(n+1)]`
-/

namespace A044357.P13883993089169319601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (A044407 (n + 1)).toNat) (A044406 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P13883993089169319601

/-! ## A044357.P17177861396930864779

`record[A175676(A044407(n+1)%A044408(n+1))]`
-/

namespace A044357.P17177861396930864779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044407 (n + 1)) (A044408 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P17177861396930864779

/-! ## A044357.P433365448156320961

`record[A054977(2*(n+1))*A175676(A044407(n+1))]`
-/

namespace A044357.P433365448156320961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * (n + 1)) * A175676 (A044407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P433365448156320961

/-! ## A044357.P10293840170766398906

`record[A057427(2*n+3)*A175676(A044407(n+1))]`
-/

namespace A044357.P10293840170766398906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * n + 3) * A175676 (A044407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P10293840170766398906

/-!
# A044358: Numbers n such that string 2,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044358, there is no canonical definition to state claims against.
-/

/-! ## A044358.P12807520539983986807

`record[A175676(A044410(n+1))]`
-/

namespace A044358.P12807520539983986807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044358.P12807520539983986807

/-! ## A044358.P12500768241052838081

`A008621(4*A044738(n+1))`
-/

namespace A044358.P12500768241052838081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A044738 (n + 1)).toNat

end

end A044358.P12500768241052838081

/-! ## A044358.P6191765071983646746

`A008624(4*A044738(n+1))`
-/

namespace A044358.P6191765071983646746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A044738 (n + 1)).toNat

end

end A044358.P6191765071983646746

/-! ## A044358.P14500690348616065183

`A110659(4*A044738(n+1))`
-/

namespace A044358.P14500690348616065183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A044738 (n + 1)).toNat

end

end A044358.P14500690348616065183

/-! ## A044358.P15766194150955263072

`A246416(4*A044738(n+1))`
-/

namespace A044358.P15766194150955263072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (4 * A044738 (n + 1)).toNat

end

end A044358.P15766194150955263072

/-!
# A044359: Numbers n such that string 2,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044359, there is no canonical definition to state claims against.
-/

/-! ## A044359.P7704613707761277352

`record[A175676(A044413(n+1))]`
-/

namespace A044359.P7704613707761277352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044359.P7704613707761277352

/-! ## A044359.P8101165920350888274

`A133233(∑[n])+A044739(n+1)`
-/

namespace A044359.P8101165920350888274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (∑ j ∈ Finset.range (n + 1), f1 j) + A044739 (n + 1)

end

end A044359.P8101165920350888274

/-! ## A044359.P11342166948248527835

`A056191(A000070(n))+A044739(n+1)`
-/

namespace A044359.P11342166948248527835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (A000070 n).toNat + A044739 (n + 1)

end

end A044359.P11342166948248527835

/-! ## A044359.P5591010354355700409

`A056191(A020627(n+1))+A044739(n+1)`
-/

namespace A044359.P5591010354355700409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (A020627 (n + 1)).toNat + A044739 (n + 1)

end

end A044359.P5591010354355700409

/-! ## A044359.P1709227441768620247

`A044739(n+1)-A057428(A128320(n))`
-/

namespace A044359.P1709227441768620247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044739 (n + 1) - A057428 (A128320 n).toNat

end

end A044359.P1709227441768620247

/-!
# A044360: Numbers n such that string 2,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044360, there is no canonical definition to state claims against.
-/

/-! ## A044360.P13421602140981592599

`record[A175676(A044416(n+1))]`
-/

namespace A044360.P13421602140981592599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044360.P13421602140981592599

/-! ## A044360.P13434006060638839740

`record[A093803(A044416(n+1)-3)]+1`
-/

namespace A044360.P13434006060638839740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A044416 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A044360.P13434006060638839740

/-! ## A044360.P2674818941718929904

`A253554(3*A044740(n+1))`
-/

namespace A044360.P2674818941718929904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (3 * A044740 (n + 1)).toNat

end

end A044360.P2674818941718929904

/-! ## A044360.P7051572622362695331

`A054977(A027642(n))+A044740(n+1)`
-/

namespace A044360.P7051572622362695331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A027642 n).toNat + A044740 (n + 1)

end

end A044360.P7051572622362695331

/-! ## A044360.P10269758311030295836

`A044740(n+1)+A001222(A020627(n+1))`
-/

namespace A044360.P10269758311030295836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044740 (n + 1) + A001222 (A020627 (n + 1)).toNat

end

end A044360.P10269758311030295836

/-!
# A044361: Numbers n such that string 2,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044361, there is no canonical definition to state claims against.
-/

/-! ## A044361.P7209591048101381894

`record[A175676(A044419(n+1))]`
-/

namespace A044361.P7209591048101381894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044361.P7209591048101381894

/-! ## A044361.P13132438017386525572

`(A044741(n+1)+1)%A105654(n+1)`
-/

namespace A044361.P13132438017386525572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044741 (n + 1) + 1) (A105654 (n + 1))

end

end A044361.P13132438017386525572

/-! ## A044361.P10342920487993513143

`A044741(n+1)+A000035(A022166(n))`
-/

namespace A044361.P10342920487993513143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044741 (n + 1) + A000035 (A022166 n).toNat

end

end A044361.P10342920487993513143

/-! ## A044361.P16562782949870697132

`A057427(A078121(n))+A044741(n+1)`
-/

namespace A044361.P16562782949870697132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A078121 n).toNat + A044741 (n + 1)

end

end A044361.P16562782949870697132

/-! ## A044361.P12633469439490631613

`A089608(A331562(n)²)+A044741(n+1)`
-/

namespace A044361.P12633469439490631613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (A331562 n ^ 2).toNat + A044741 (n + 1)

end

end A044361.P12633469439490631613

/-!
# A044362: Numbers n such that string 3,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044362, there is no canonical definition to state claims against.
-/

/-! ## A044362.P3421031117165455840

`record[2*A260739(A043218(1+n))]`
-/

namespace A044362.P3421031117165455840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260739 (A043218 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044362.P3421031117165455840

/-! ## A044362.P15114243710018432866

`record[A038608(A043218(n+1))]`
-/

namespace A044362.P15114243710018432866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044362.P15114243710018432866

/-! ## A044362.P16162584249684960536

`filter[A043218(1+n), A059841(#)]`
-/

namespace A044362.P16162584249684960536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044362.P16162584249684960536

/-! ## A044362.P17416542408869372436

`filter[A043218(n+1), A135528(#)]`
-/

namespace A044362.P17416542408869372436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044362.P17416542408869372436

/-! ## A044362.P7695845379850549144

`filter[A043218(n+1), A198517(#)]`
-/

namespace A044362.P7695845379850549144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044362.P7695845379850549144

/-! ## A044362.P15730946481735628728

`filter[A043218(n+1), A266591(#)]`
-/

namespace A044362.P15730946481735628728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044362.P15730946481735628728

/-! ## A044362.P16974947499250142106

`filter[A043218(n+1), A267043(#)]`
-/

namespace A044362.P16974947499250142106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044362.P16974947499250142106

/-! ## A044362.P13847261032057116480

`filter[A043218(n+1), A285383(#)]`
-/

namespace A044362.P13847261032057116480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A044362.P13847261032057116480

/-! ## A044362.P16062934157326988520

`filter[A043218(n+1), A285384(#)]`
-/

namespace A044362.P16062934157326988520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A044362.P16062934157326988520

/-!
# A044363: Numbers n such that string 3,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044363, there is no canonical definition to state claims against.
-/

/-! ## A044363.P8953380871250748304

`record[A175676(A044425(n+1))]`
-/

namespace A044363.P8953380871250748304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044363.P8953380871250748304

/-! ## A044363.P16789867711327692388

`A044743(n+1)+A033999(A001504(n))`
-/

namespace A044363.P16789867711327692388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044743 (n + 1) + A033999 (A001504 n).toNat

end

end A044363.P16789867711327692388

/-! ## A044363.P7227353699791334547

`A053186(A002522(3*(n+1)))+A044743(n+1)`
-/

namespace A044363.P7227353699791334547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A002522 (3 * (n + 1))).toNat + A044743 (n + 1)

end

end A044363.P7227353699791334547

/-! ## A044363.P5395585190919756975

`A055396(A033537(2*(n+2)))+A044743(n+1)`
-/

namespace A044363.P5395585190919756975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A033537 (2 * (n + 2))).toNat + A044743 (n + 1)

end

end A044363.P5395585190919756975

/-! ## A044363.P10740622412861324202

`A044743(n+1)+A014963(A044735(3*n+2))`
-/

namespace A044363.P10740622412861324202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044743 (n + 1) + A014963 (A044735 (3 * n + 2)).toNat

end

end A044363.P10740622412861324202

/-!
# A044364: Numbers n such that string 3,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044364, there is no canonical definition to state claims against.
-/

/-! ## A044364.P13651715165872608390

`(A044744(n+1)+1)%A046006(n+1)`
-/

namespace A044364.P13651715165872608390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044744 (n + 1) + 1) (A046006 (n + 1))

end

end A044364.P13651715165872608390

/-! ## A044364.P14529622550760396661

`A044744(n+1)+A000265(A016116(n))`
-/

namespace A044364.P14529622550760396661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044744 (n + 1) + A000265 (A016116 n).toNat

end

end A044364.P14529622550760396661

/-! ## A044364.P17950902409262475524

`A044744(n+1)+A001221(A046006(n+1))`
-/

namespace A044364.P17950902409262475524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044744 (n + 1) + A001221 (A046006 (n + 1)).toNat

end

end A044364.P17950902409262475524

/-! ## A044364.P6147325098209212925

`A160338(A016069(n+1))+A044744(n+1)`
-/

namespace A044364.P6147325098209212925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A016069 (n + 1)).toNat + A044744 (n + 1)

end

end A044364.P6147325098209212925

/-! ## A044364.P6321561251940639936

`A056971(A185284(n+2)²)+A044744(n+1)`
-/

namespace A044364.P6321561251940639936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 (A185284 (n + 2) ^ 2).toNat + A044744 (n + 1)

end

end A044364.P6321561251940639936

/-!
# A044365: Numbers n such that string 3,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044365, there is no canonical definition to state claims against.
-/

/-! ## A044365.P15581794876028255267

`record[A135997(A044431(n+1))]`
-/

namespace A044365.P15581794876028255267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044365.P15581794876028255267

/-! ## A044365.P3259328019724448266

`A028310(A044431(3*n+1))/3`
-/

namespace A044365.P3259328019724448266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A044431 (3 * n + 1)).toNat : ℚ) / 3

end

end A044365.P3259328019724448266

/-! ## A044365.P15712317554145877431

`A043243(2*(n+1))-A043219(A053501(n))`
-/

namespace A044365.P15712317554145877431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (2 * (n + 1)) - A043219 (A053501 n).toNat

end

end A044365.P15712317554145877431

/-! ## A044365.P11988429685612899468

`A007094(A044214(n+1)^A390766(n))`
-/

namespace A044365.P11988429685612899468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A044214 (n + 1) : ℚ) ^ (A390766 n : ℤ))).toNat

end

end A044365.P11988429685612899468

/-!
# A044366: Numbers n such that string 3,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044366, there is no canonical definition to state claims against.
-/

/-! ## A044366.P6548345473582342008

`record[A175676(A044714(n+1)+1)]`
-/

namespace A044366.P6548345473582342008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044714 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044366.P6548345473582342008

/-! ## A044366.P3264268897594252767

`A007094(A044215(n+1))*A268354(A112566(n+1))`
-/

namespace A044366.P3264268897594252767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A044215 (n + 1)).toNat * A268354 (A112566 (n + 1)).toNat

end

end A044366.P3264268897594252767

/-! ## A044366.P5623584483798873488

`A007094(A044215(n+1))%A264687(A020338(n+1))`
-/

namespace A044366.P5623584483798873488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (A044215 (n + 1)).toNat) (A264687 (A020338 (n + 1)).toNat)

end

end A044366.P5623584483798873488

/-! ## A044366.P12047121993546900046

`A000035(A037165(3*n+1))*A007094(A044215(n+1))`
-/

namespace A044366.P12047121993546900046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A037165 (3 * n + 1)).toNat * A007094 (A044215 (n + 1)).toNat

end

end A044366.P12047121993546900046

/-!
# A044367: Numbers n such that string 3,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044367, there is no canonical definition to state claims against.
-/

/-! ## A044367.P4430423982583817442

`A057427(A005496(n))+A044747(n+1)`
-/

namespace A044367.P4430423982583817442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A005496 n).toNat + A044747 (n + 1)

end

end A044367.P4430423982583817442

/-! ## A044367.P14100167970688462162

`A044747(n+1)+A007318(A185284(n))`
-/

namespace A044367.P14100167970688462162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044747 (n + 1) + A007318 (A185284 n).toNat

end

end A044367.P14100167970688462162

/-! ## A044367.P15247936712145487667

`A160338(A067402(n))+A044747(n+1)`
-/

namespace A044367.P15247936712145487667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160338 (A067402 n).toNat + A044747 (n + 1)

end

end A044367.P15247936712145487667

/-! ## A044367.P4178894802593255921

`A057427(A224811(n))+A044747(n+1)`
-/

namespace A044367.P4178894802593255921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A224811 n).toNat + A044747 (n + 1)

end

end A044367.P4178894802593255921

/-! ## A044367.P1726826718782172002

`A044747(n+1)+A001222(A159471(n+1))`
-/

namespace A044367.P1726826718782172002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044747 (n + 1) + A001222 (A159471 (n + 1)).toNat

end

end A044367.P1726826718782172002

/-!
# A044368: Numbers n such that string 3,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044368, there is no canonical definition to state claims against.
-/

/-! ## A044368.P7288050280288118397

`A044748(n+1)+A023533(A000292(n))`
-/

namespace A044368.P7288050280288118397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044748 (n + 1) + A023533 (A000292 n).toNat

end

end A044368.P7288050280288118397

/-! ## A044368.P11578712070697531853

`A089608(A022166(n))+A044748(n+1)`
-/

namespace A044368.P11578712070697531853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (A022166 n).toNat + A044748 (n + 1)

end

end A044368.P11578712070697531853

/-! ## A044368.P879902405209379846

`A172339(A233427(n))+A044748(n+1)`
-/

namespace A044368.P879902405209379846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172339 (A233427 n).toNat + A044748 (n + 1)

end

end A044368.P879902405209379846

/-! ## A044368.P7536597240668564713

`A044748(n+1)+A001511(A158231(n+1))`
-/

namespace A044368.P7536597240668564713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044748 (n + 1) + A001511 (A158231 (n + 1)).toNat

end

end A044368.P7536597240668564713

/-! ## A044368.P8151976416952026138

`A057427(A005496(n))+A044748(n+1)`
-/

namespace A044368.P8151976416952026138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A005496 n).toNat + A044748 (n + 1)

end

end A044368.P8151976416952026138

/-!
# A044369: Numbers n such that string 3,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044369, there is no canonical definition to state claims against.
-/

/-! ## A044369.P13000580061147516334

`A044749(C(n+1, A053164(2*n+1)))+1`
-/

namespace A044369.P13000580061147516334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044749 (Nat.choose (n + 1) (A053164 (2 * n + 1)).toNat) + 1

end

end A044369.P13000580061147516334

/-! ## A044369.P6462424433899672441

`A057427(A000125(n))+A044749(n+1)`
-/

namespace A044369.P6462424433899672441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000125 n).toNat + A044749 (n + 1)

end

end A044369.P6462424433899672441

/-! ## A044369.P9847592712709529698

`A057427(A218509(n))+A044749(n+1)`
-/

namespace A044369.P9847592712709529698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A218509 n).toNat + A044749 (n + 1)

end

end A044369.P9847592712709529698

/-! ## A044369.P6598755640803897433

`A057427(A331562(n))+A044749(n+1)`
-/

namespace A044369.P6598755640803897433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A331562 n).toNat + A044749 (n + 1)

end

end A044369.P6598755640803897433

/-! ## A044369.P17652149601089557245

`A057427(A347574(n))+A044749(n+1)`
-/

namespace A044369.P17652149601089557245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A347574 (n + 28)).toNat + A044749 (n + 1)

end

end A044369.P17652149601089557245

/-!
# A044370: Numbers n such that string 3,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044370, there is no canonical definition to state claims against.
-/

/-! ## A044370.P16914617636127116923

`A044750(n+1)+A008835(A005897(n))`
-/

namespace A044370.P16914617636127116923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044750 (n + 1) + A008835 (A005897 n).toNat

end

end A044370.P16914617636127116923

/-! ## A044370.P6087802508873661520

`A044750(n+1)+A000035(A080859(n))`
-/

namespace A044370.P6087802508873661520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044750 (n + 1) + A000035 (A080859 n).toNat

end

end A044370.P6087802508873661520

/-! ## A044370.P12778345283988593291

`A057427(A054252(n))+A044750(n+1)`
-/

namespace A044370.P12778345283988593291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054252 n).toNat + A044750 (n + 1)

end

end A044370.P12778345283988593291

/-! ## A044370.P9950345868984695098

`A057427(A169808(n))+A044750(n+1)`
-/

namespace A044370.P9950345868984695098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A169808 n).toNat + A044750 (n + 1)

end

end A044370.P9950345868984695098

/-! ## A044370.P15425108671572026677

`A057427(A180906(n+1))+A044750(n+1)`
-/

namespace A044370.P15425108671572026677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A180906 (n + 1)).toNat + A044750 (n + 1)

end

end A044370.P15425108671572026677

/-!
# A044371: Numbers n such that string 3,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044371, there is no canonical definition to state claims against.
-/

/-! ## A044371.P7417024243172680154

`A044751(n+1)+gcd(2, A125873(n+2))`
-/

namespace A044371.P7417024243172680154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044751 (n + 1) + (Int.gcd 2 (A125873 (n + 2)) : ℤ)

end

end A044371.P7417024243172680154

/-! ## A044371.P2670178492969112400

`A044751(n+1)+A001222(A309354(n+1))`
-/

namespace A044371.P2670178492969112400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044751 (n + 1) + A001222 (A309354 (n + 1)).toNat

end

end A044371.P2670178492969112400

/-! ## A044371.P14554409135534837721

`A044751(n+1)+A001511(A125873(n+2))`
-/

namespace A044371.P14554409135534837721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044751 (n + 1) + A001511 (A125873 (n + 2)).toNat

end

end A044371.P14554409135534837721

/-! ## A044371.P8282306100599713841

`A373216(A145023(n+4))+A044751(n+1)`
-/

namespace A044371.P8282306100599713841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (A145023 (n + 4)).toNat + A044751 (n + 1)

end

end A044371.P8282306100599713841

/-! ## A044371.P5447059246732230445

`A046951(A045713(3*n+1))+A044751(n+1)`
-/

namespace A044371.P5447059246732230445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A045713 (3 * n + 1)).toNat + A044751 (n + 1)

end

end A044371.P5447059246732230445

/-!
# A044372: Numbers n such that string 4,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044372, there is no canonical definition to state claims against.
-/

/-! ## A044372.P10830154798731875671

`filter[A043219(n+1), A198517(#)]`
-/

namespace A044372.P10830154798731875671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044372.P10830154798731875671

/-! ## A044372.P17859267224284631945

`filter[A043219(1+n), A232990(#)]`
-/

namespace A044372.P17859267224284631945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044372.P17859267224284631945

/-! ## A044372.P15996049623449302292

`∩[2*A297466(n), A043219(n+1)]`
-/

namespace A044372.P15996049623449302292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297466 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044372.P15996049623449302292

/-! ## A044372.P6263295907569289424

`(A044375(n+1)+(A044373(n+1)-1)%A253054(n+1))%A044756(n+1)`
-/

namespace A044372.P6263295907569289424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044375 (n + 1) + Int.tmod (A044373 (n + 1) - 1) (A253054 (n + 1))) (A044756 (n + 1))

end

end A044372.P6263295907569289424

/-! ## A044372.P12517593864693397667

`A044752(n+1)+gcd(2, A100697(n+1))`
-/

namespace A044372.P12517593864693397667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044752 (n + 1) + (Int.gcd 2 (A100697 (n + 1)) : ℤ)

end

end A044372.P12517593864693397667

/-!
# A044373: Numbers n such that string 4,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044373, there is no canonical definition to state claims against.
-/

/-! ## A044373.P14985774546267780825

`A044753(n+1)+A008966(A006970(n+1))`
-/

namespace A044373.P14985774546267780825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044753 (n + 1) + A008966 (A006970 (n + 1)).toNat

end

end A044373.P14985774546267780825

/-! ## A044373.P10044465716944307782

`A044753(n+1)+A000035(A253054(n+1))`
-/

namespace A044373.P10044465716944307782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044753 (n + 1) + A000035 (A253054 (n + 1)).toNat

end

end A044373.P10044465716944307782

/-! ## A044373.P2177033115084455700

`A044753(n+1)+abs(A008836(A240011(n+5)))`
-/

namespace A044373.P2177033115084455700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044753 (n + 1) + |A008836 (A240011 (n + 5)).toNat|

end

end A044373.P2177033115084455700

/-! ## A044373.P8702487580444432808

`A061347(A044709(3*n+5))+A044753(n+1)`
-/

namespace A044373.P8702487580444432808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A044709 (3 * n + 5)).toNat + A044753 (n + 1)

end

end A044373.P8702487580444432808

/-! ## A044373.P2068510801355096169

`A044753(n+1)+gcd(A008836(n+1), A094598(n+1))`
-/

namespace A044373.P2068510801355096169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044753 (n + 1) + (Int.gcd (A008836 (n + 1)) (A094598 (n + 1)) : ℤ)

end

end A044373.P2068510801355096169

/-!
# A044374: Numbers n such that string 4,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044374, there is no canonical definition to state claims against.
-/

/-! ## A044374.P5174224197651464524

`A044754(n+1)+gcd(3, A345293(n+1))`
-/

namespace A044374.P5174224197651464524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044754 (n + 1) + (Int.gcd 3 (A345293 (n + 1)) : ℤ)

end

end A044374.P5174224197651464524

/-! ## A044374.P12205175737387588349

`A093178(A067804(n))+A044754(n+1)`
-/

namespace A044374.P12205175737387588349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A067804 n).toNat + A044754 (n + 1)

end

end A044374.P12205175737387588349

/-! ## A044374.P2060213561341681859

`A280498(A044375(n+1)+A044373(n+1))`
-/

namespace A044374.P2060213561341681859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A044375 (n + 1) + A044373 (n + 1)).toNat

end

end A044374.P2060213561341681859

/-! ## A044374.P16210750228866020780

`A044754(n+1)+A001222(A345293(n+1))`
-/

namespace A044374.P16210750228866020780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044754 (n + 1) + A001222 (A345293 (n + 1)).toNat

end

end A044374.P16210750228866020780

/-! ## A044374.P7590556525230275174

`A093178(A345293(n+1)-1)+A044754(n+1)`
-/

namespace A044374.P7590556525230275174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A345293 (n + 1) - 1).toNat + A044754 (n + 1)

end

end A044374.P7590556525230275174

/-!
# A044375: Numbers n such that string 4,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044375, there is no canonical definition to state claims against.
-/

/-! ## A044375.P12773581935167197093

`A044755(n+1)+A000035(A145991(n+1))`
-/

namespace A044375.P12773581935167197093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044755 (n + 1) + A000035 (A145991 (n + 1)).toNat

end

end A044375.P12773581935167197093

/-! ## A044375.P652183043585428423

`A044755(n+1)+A001222(A260335(n+1))`
-/

namespace A044375.P652183043585428423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044755 (n + 1) + A001222 (A260335 (n + 1)).toNat

end

end A044375.P652183043585428423

/-! ## A044375.P15969516904048489611

`A057427(A267338(n+1))+A044755(n+1)`
-/

namespace A044375.P15969516904048489611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A267338 (n + 1)).toNat + A044755 (n + 1)

end

end A044375.P15969516904048489611

/-! ## A044375.P5052833674520286834

`A044755(n+1)+A001222(A344282(n+1))`
-/

namespace A044375.P5052833674520286834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044755 (n + 1) + A001222 (A344282 (n + 1)).toNat

end

end A044375.P5052833674520286834

/-! ## A044375.P15873456444680209769

`A056992(A044696(3*n+1))+A044755(n+1)`
-/

namespace A044375.P15873456444680209769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (A044696 (3 * n + 1)).toNat + A044755 (n + 1)

end

end A044375.P15873456444680209769

/-!
# A044376: Numbers n such that string 4,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044376, there is no canonical definition to state claims against.
-/

/-! ## A044376.P7776389627873567596

`A053743(n)-A000189(A282913(n))`
-/

namespace A044376.P7776389627873567596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A000189 (A282913 n).toNat

end

end A044376.P7776389627873567596

/-! ## A044376.P15190539972030646241

`A053743(n)-A332294(A037225(3*n)+1)`
-/

namespace A044376.P15190539972030646241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A332294 (A037225 (3 * n) + 1).toNat

end

end A044376.P15190539972030646241

/-! ## A044376.P17617265192118520072

`A102438(n)-A096501(A236789(n+1))`
-/

namespace A044376.P17617265192118520072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n - A096501 (A236789 (n + 1)).toNat

end

end A044376.P17617265192118520072

/-! ## A044376.P9413026201683378072

`A053743(n)-A109009(A251335(n+1))`
-/

namespace A044376.P9413026201683378072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A109009 (A251335 (n + 1)).toNat

end

end A044376.P9413026201683378072

/-! ## A044376.P11976712642828762056

`Δ[C(10*n, 2)]-A306309(A306282(n+5))`
-/

namespace A044376.P11976712642828762056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A306309 (A306282 (n + 5)).toNat

end

end A044376.P11976712642828762056

/-!
# A044377: Numbers n such that string 4,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044377, there is no canonical definition to state claims against.
-/

/-! ## A044377.P13632955525213351722

`A007094(A044224(n+1)^A043282(n+1))`
-/

namespace A044377.P13632955525213351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A044224 (n + 1) : ℚ) ^ (A043282 (n + 1) : ℤ))).toNat

end

end A044377.P13632955525213351722

/-! ## A044377.P14407133287055063720

`A007093(A044171(n+1))%A044141(A075091(2*(n+1)))`
-/

namespace A044377.P14407133287055063720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A044171 (n + 1)).toNat) (A044141 (A075091 (2 * (n + 1))).toNat)

end

end A044377.P14407133287055063720

/-! ## A044377.P4855396985389342804

`A007095(A044292(A037441(A007094(n+1))))`
-/

namespace A044377.P4855396985389342804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A044292 (A037441 (A007094 (n + 1)).toNat).toNat).toNat

end

end A044377.P4855396985389342804

/-!
# A044378: Numbers n such that string 4,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044378, there is no canonical definition to state claims against.
-/

/-! ## A044378.P15576976308652836320

`A044379(n+1)+A044379(n+1)-A094404(2*n+5)-A044760(n+1)`
-/

namespace A044378.P15576976308652836320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044379 (n + 1) + (A044379 (n + 1) - A094404 (2 * n + 5)) - A044760 (n + 1)

end

end A044378.P15576976308652836320

/-! ## A044378.P2066890703370089159

`A044758(n+1)+abs(A008836(A309010(n)))`
-/

namespace A044378.P2066890703370089159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044758 (n + 1) + |A008836 (A309010 n).toNat|

end

end A044378.P2066890703370089159

/-! ## A044378.P3010269596538796858

`A054977(A121207(n+3))+A044758(n+1)`
-/

namespace A044378.P3010269596538796858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A121207 (n + 3)).toNat + A044758 (n + 1)

end

end A044378.P3010269596538796858

/-! ## A044378.P12571564835688159462

`A044758(n+1)+A001511(A214496(n+3))`
-/

namespace A044378.P12571564835688159462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044758 (n + 1) + A001511 (A214496 (n + 3)).toNat

end

end A044378.P12571564835688159462

/-! ## A044378.P14863042423562724683

`A044758(n+1)+gcd(A008836(n+1), A210000(3*(n+1)))`
-/

namespace A044378.P14863042423562724683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044758 (n + 1) + (Int.gcd (A008836 (n + 1)) (A210000 (3 * (n + 1))) : ℤ)

end

end A044378.P14863042423562724683

/-!
# A044379: Numbers n such that string 4,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044379, there is no canonical definition to state claims against.
-/

/-! ## A044379.P4656422600369824294

`2*(A054977(A028364(n))+A044760(n+1))-A044381(n+1)`
-/

namespace A044379.P4656422600369824294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054977 (A028364 n).toNat + A044760 (n + 1)) - A044381 (n + 1)

end

end A044379.P4656422600369824294

/-! ## A044379.P1600783443284119481

`A044759(n+1)+A088262(n+1)%2`
-/

namespace A044379.P1600783443284119481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044759 (n + 1) + Int.tmod (A088262 (n + 1)) 2

end

end A044379.P1600783443284119481

/-! ## A044379.P16088240617182865391

`A054977(n*(4*(n-1)+3)+3)+A044759(n+1)`
-/

namespace A044379.P16088240617182865391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n : ℤ) * (4 * ((n : ℤ) - 1) + 3) + 3).toNat + A044759 (n + 1)

end

end A044379.P16088240617182865391

/-! ## A044379.P3823858150479557074

`A008284(A033567(n))+A044759(n+1)`
-/

namespace A044379.P3823858150479557074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A033567 n).toNat + A044759 (n + 1)

end

end A044379.P3823858150479557074

/-! ## A044379.P2649461640896269009

`A325632(A181956(n))+A044759(n+1)`
-/

namespace A044379.P2649461640896269009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325632 (A181956 n).toNat + A044759 (n + 1)

end

end A044379.P2649461640896269009

/-! ## A044379.P4355948492059851966

`A044759(n+1)+A001222(A088262(n+1))`
-/

namespace A044379.P4355948492059851966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044759 (n + 1) + A001222 (A088262 (n + 1)).toNat

end

end A044379.P4355948492059851966

/-! ## A044379.P15712667175369972678

`A044759(n+1)+A001222(A088987(n+1))`
-/

namespace A044379.P15712667175369972678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044759 (n + 1) + A001222 (A088987 (n + 1)).toNat

end

end A044379.P15712667175369972678

/-!
# A044380: Numbers n such that string 4,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044380, there is no canonical definition to state claims against.
-/

/-! ## A044380.P9753764991073549889

`A054977(A028364(n))+A044760(n+1)`
-/

namespace A044380.P9753764991073549889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A028364 n).toNat + A044760 (n + 1)

end

end A044380.P9753764991073549889

/-! ## A044380.P926820239026488793

`A044760(1+n)+A001222(A127430(n+1))`
-/

namespace A044380.P926820239026488793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044760 (1 + n) + A001222 (A127430 (n + 1)).toNat

end

end A044380.P926820239026488793

/-! ## A044380.P4182825753796511044

`A044760(n+1)+A001222(A168171(n+1))`
-/

namespace A044380.P4182825753796511044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044760 (n + 1) + A001222 (A168171 (n + 1)).toNat

end

end A044380.P4182825753796511044

/-! ## A044380.P14309255701010845288

`A054977(A131938(n+1))+A044760(n+1)`
-/

namespace A044380.P14309255701010845288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A131938 (n + 1)).toNat + A044760 (n + 1)

end

end A044380.P14309255701010845288

/-! ## A044380.P15290218140186497191

`A044760(n+1)+A001222(A213894(n+1))`
-/

namespace A044380.P15290218140186497191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044760 (n + 1) + A001222 (A213894 (n + 1)).toNat

end

end A044380.P15290218140186497191

/-! ## A044380.P8948343549398029020

`A054977(A182636(n+1))+A044760(n+1)`
-/

namespace A044380.P8948343549398029020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A182636 (n + 1)).toNat + A044760 (n + 1)

end

end A044380.P8948343549398029020

/-! ## A044380.P10311229103502302115

`A044760(n+1)+gcd(A008836(n+1), A182636(n+1))`
-/

namespace A044380.P10311229103502302115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044760 (n + 1) + (Int.gcd (A008836 (n + 1)) (A182636 (n + 1)) : ℤ)

end

end A044380.P10311229103502302115

/-!
# A044381: Numbers n such that string 4,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044381, there is no canonical definition to state claims against.
-/

/-! ## A044381.P11188708329890960278

`A057427(A121207(n))+A044761(n+1)`
-/

namespace A044381.P11188708329890960278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A121207 n).toNat + A044761 (n + 1)

end

end A044381.P11188708329890960278

/-! ## A044381.P465857005573744224

`A057427(A071069(n+1))+A044761(n+1)`
-/

namespace A044381.P465857005573744224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A071069 (n + 1)).toNat + A044761 (n + 1)

end

end A044381.P465857005573744224

/-! ## A044381.P13327575129791691721

`A057427(A084647(n+1))+A044761(n+1)`
-/

namespace A044381.P13327575129791691721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A084647 (n + 1)).toNat + A044761 (n + 1)

end

end A044381.P13327575129791691721

/-! ## A044381.P3544455360098294758

`A044761(n+1)+A001221(A154498(n+1))`
-/

namespace A044381.P3544455360098294758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044761 (n + 1) + A001221 (A154498 (n + 1)).toNat

end

end A044381.P3544455360098294758

/-! ## A044381.P11209211418154884884

`A044761(n+1)+A014963(A317258(n+1))`
-/

namespace A044381.P11209211418154884884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044761 (n + 1) + A014963 (A317258 (n + 1)).toNat

end

end A044381.P11209211418154884884

/-! ## A044381.P15301743314852114170

`A044761(n+1)+A001222(A168171(n+1))`
-/

namespace A044381.P15301743314852114170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044761 (n + 1) + A001222 (A168171 (n + 1)).toNat

end

end A044381.P15301743314852114170

/-!
# A044382: Numbers n such that string 5,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044382, there is no canonical definition to state claims against.
-/

/-! ## A044382.P18162222062891787972

`filter[A043220(1+n), A059841(#)]`
-/

namespace A044382.P18162222062891787972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044382.P18162222062891787972

/-! ## A044382.P16558354178525752850

`filter[A043220(1+n), A135528(#)]`
-/

namespace A044382.P16558354178525752850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044382.P16558354178525752850

/-! ## A044382.P8335727770453381774

`filter[A043220(1+n), A266591(#)]`
-/

namespace A044382.P8335727770453381774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044382.P8335727770453381774

/-! ## A044382.P13352805068731743998

`filter[A043220(n+1), A267043(#)]`
-/

namespace A044382.P13352805068731743998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044382.P13352805068731743998

/-! ## A044382.P12141176115706136381

`∩[A043220(n+1), A313089(n)]`
-/

namespace A044382.P12141176115706136381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044382.P12141176115706136381

/-! ## A044382.P8765996882726222183

`A026741(20*A121025(n+1))`
-/

namespace A044382.P8765996882726222183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (20 * A121025 (n + 1)).toNat

end

end A044382.P8765996882726222183

/-! ## A044382.P12276336437442138897

`A029578(20*A121025(n+1))`
-/

namespace A044382.P12276336437442138897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (20 * A121025 (n + 1)).toNat

end

end A044382.P12276336437442138897

/-! ## A044382.P7825328925454554892

`A059816(20*A121025(n+1))`
-/

namespace A044382.P7825328925454554892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059816 (20 * A121025 (n + 1)).toNat

end

end A044382.P7825328925454554892

/-! ## A044382.P6564893871248973814

`A059816(20*A277592(n+1))`
-/

namespace A044382.P6564893871248973814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059816 (20 * A277592 (n + 1)).toNat

end

end A044382.P6564893871248973814

/-!
# A044383: Numbers n such that string 5,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044383, there is no canonical definition to state claims against.
-/

/-! ## A044383.P17188458515458701070

`A044384(n+1)+A044384(n+1)-A250216(n+1)%2-A044765(n+1)`
-/

namespace A044383.P17188458515458701070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044384 (n + 1) + (A044384 (n + 1) - Int.tmod (A250216 (n + 1)) 2 - A044765 (n + 1))

end

end A044383.P17188458515458701070

/-! ## A044383.P17927319551040565946

`A008619(2*A044763(1+n))`
-/

namespace A044383.P17927319551040565946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A044763 (1 + n)).toNat

end

end A044383.P17927319551040565946

/-! ## A044383.P9659307326156164368

`A027656(2*A044763(n+1))`
-/

namespace A044383.P9659307326156164368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A044763 (n + 1)).toNat

end

end A044383.P9659307326156164368

/-! ## A044383.P2133430920434011106

`A028242(2*A044763(n+1))`
-/

namespace A044383.P2133430920434011106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A044763 (n + 1)).toNat

end

end A044383.P2133430920434011106

/-! ## A044383.P468326693292973613

`A029579(2*A044763(n+1))`
-/

namespace A044383.P468326693292973613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A044763 (n + 1)).toNat

end

end A044383.P468326693292973613

/-! ## A044383.P8912055823045820354

`A052938(2*A044763(n+1))`
-/

namespace A044383.P8912055823045820354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A044763 (n + 1)).toNat

end

end A044383.P8912055823045820354

/-! ## A044383.P8033823857906236770

`A131732(2*A044763(n+1))`
-/

namespace A044383.P8033823857906236770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A044763 (n + 1)).toNat

end

end A044383.P8033823857906236770

/-! ## A044383.P17427750514473025022

`A133622(2*A044763(n+1))`
-/

namespace A044383.P17427750514473025022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (2 * A044763 (n + 1)).toNat

end

end A044383.P17427750514473025022

/-! ## A044383.P16292947650917796756

`A158416(2*A044763(n+1))`
-/

namespace A044383.P16292947650917796756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A044763 (n + 1)).toNat

end

end A044383.P16292947650917796756

/-! ## A044383.P5206581936731543407

`A266285(2*A044763(n+1))`
-/

namespace A044383.P5206581936731543407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (2 * A044763 (n + 1)).toNat

end

end A044383.P5206581936731543407

/-!
# A044384: Numbers n such that string 5,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044384, there is no canonical definition to state claims against.
-/

/-! ## A044384.P12643961850390534660

`A044764(n+1)+A232085(n+1)%2`
-/

namespace A044384.P12643961850390534660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + Int.tmod (A232085 (n + 1)) 2

end

end A044384.P12643961850390534660

/-! ## A044384.P7025818096644950285

`A044764(n+1)+A250216(n+1)%2`
-/

namespace A044384.P7025818096644950285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + Int.tmod (A250216 (n + 1)) 2

end

end A044384.P7025818096644950285

/-! ## A044384.P1474573160408221572

`A044764(n+1)+A001222(A081220(n+1))`
-/

namespace A044384.P1474573160408221572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + A001222 (A081220 (n + 1)).toNat

end

end A044384.P1474573160408221572

/-! ## A044384.P14045032594920952781

`A044764(n+1)+A001222(A090471(n+1))`
-/

namespace A044384.P14045032594920952781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + A001222 (A090471 (n + 1)).toNat

end

end A044384.P14045032594920952781

/-! ## A044384.P2028201784698874285

`A044764(n+1)+A000035(A232085(n+1))`
-/

namespace A044384.P2028201784698874285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + A000035 (A232085 (n + 1)).toNat

end

end A044384.P2028201784698874285

/-! ## A044384.P7349201867473655413

`A044764(n+1)+A001222(A250216(n+1))`
-/

namespace A044384.P7349201867473655413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044764 (n + 1) + A001222 (A250216 (n + 1)).toNat

end

end A044384.P7349201867473655413

/-! ## A044384.P3405075939275181122

`A165022(A154576(n+1))+A044764(n+1)`
-/

namespace A044384.P3405075939275181122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A154576 (n + 1)).toNat + A044764 (n + 1)

end

end A044384.P3405075939275181122

/-! ## A044384.P3729934627251623394

`A008619(2*A044764(n+1))`
-/

namespace A044384.P3729934627251623394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A044764 (n + 1)).toNat

end

end A044384.P3729934627251623394

/-! ## A044384.P15029112805806545045

`A028242(2*A044764(n+1))`
-/

namespace A044384.P15029112805806545045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A044764 (n + 1)).toNat

end

end A044384.P15029112805806545045

/-!
# A044385: Numbers n such that string 5,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044385, there is no canonical definition to state claims against.
-/

/-! ## A044385.P1224456125524273801

`A044765(n+1)+A088630(n)%2`
-/

namespace A044385.P1224456125524273801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + Int.tmod (A088630 n) 2

end

end A044385.P1224456125524273801

/-! ## A044385.P10265692611680332462

`A044765(1+n)+A000035(A088630(n))`
-/

namespace A044385.P10265692611680332462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (1 + n) + A000035 (A088630 n).toNat

end

end A044385.P10265692611680332462

/-! ## A044385.P12749279906091606644

`A057427(A321380(n))+A044765(n+1)`
-/

namespace A044385.P12749279906091606644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A321380 n).toNat + A044765 (n + 1)

end

end A044385.P12749279906091606644

/-! ## A044385.P6434603217208781734

`A044765(n+1)+A001511(A000353(n+1))`
-/

namespace A044385.P6434603217208781734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A001511 (A000353 (n + 1)).toNat

end

end A044385.P6434603217208781734

/-! ## A044385.P10345667641796019477

`A044765(n+1)+A000035(A022005(n+1))`
-/

namespace A044385.P10345667641796019477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A000035 (A022005 (n + 1)).toNat

end

end A044385.P10345667641796019477

/-! ## A044385.P197481106628734239

`A044765(n+1)+A000034(A088630(n)+1)`
-/

namespace A044385.P197481106628734239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A000034 (A088630 n + 1).toNat

end

end A044385.P197481106628734239

/-! ## A044385.P6169843492367524260

`A044765(n+1)+A001222(A124114(n+1))`
-/

namespace A044385.P6169843492367524260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A001222 (A124114 (n + 1)).toNat

end

end A044385.P6169843492367524260

/-! ## A044385.P8554472823738133078

`A044765(n+1)+A001222(A164958(n+1))`
-/

namespace A044385.P8554472823738133078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A001222 (A164958 (n + 1)).toNat

end

end A044385.P8554472823738133078

/-! ## A044385.P16398837945151397248

`A044765(n+1)+A001222(A172039(n+1))`
-/

namespace A044385.P16398837945151397248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A001222 (A172039 (n + 1)).toNat

end

end A044385.P16398837945151397248

/-! ## A044385.P11019577106420739634

`A044765(n+1)+A001222(A174048(n+1))`
-/

namespace A044385.P11019577106420739634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044765 (n + 1) + A001222 (A174048 (n + 1)).toNat

end

end A044385.P11019577106420739634

/-!
# A044386: Numbers n such that string 5,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044386, there is no canonical definition to state claims against.
-/

/-! ## A044386.P4121015867717512609

`A278539(2*A044766(n+1))`
-/

namespace A044386.P4121015867717512609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (2 * A044766 (n + 1)).toNat

end

end A044386.P4121015867717512609

/-! ## A044386.P14305760885397781591

`A044766(n+1)+gcd(2, A279106(n+1))`
-/

namespace A044386.P14305760885397781591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + (Int.gcd 2 (A279106 (n + 1)) : ℤ)

end

end A044386.P14305760885397781591

/-! ## A044386.P15379412124640833687

`A044766(1+n)+A000035(A003215(n))`
-/

namespace A044386.P15379412124640833687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (1 + n) + A000035 (A003215 n).toNat

end

end A044386.P15379412124640833687

/-! ## A044386.P2495397736515096848

`A044766(n+1)+A001511(A003215(n))`
-/

namespace A044386.P2495397736515096848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A001511 (A003215 n).toNat

end

end A044386.P2495397736515096848

/-! ## A044386.P8954876079642693682

`A044766(n+1)+A001222(A092102(n+1))`
-/

namespace A044386.P8954876079642693682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) + A001222 (A092102 (n + 1)).toNat

end

end A044386.P8954876079642693682

/-! ## A044386.P4532217308851531088

`A044766(n+1)-A057428(A044384(n+1)-A250216(n+1)%2)`
-/

namespace A044386.P4532217308851531088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1) - A057428 (A044384 (n + 1) - Int.tmod (A250216 (n + 1)) 2).toNat

end

end A044386.P4532217308851531088

/-!
# A044387: Numbers n such that string 5,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044387, there is no canonical definition to state claims against.
-/

/-! ## A044387.P15091774119338292083

`A044768(n+1)-A333947(A011782(n))`
-/

namespace A044387.P15091774119338292083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044768 (n + 1) - A333947 (A011782 n).toNat

end

end A044387.P15091774119338292083

/-! ## A044387.P14210775680807535481

`A037479(A044301(n+1)^A008406(n+1))`
-/

namespace A044387.P14210775680807535481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.roundAway ((A044301 (n + 1) : ℚ) ^ (A008406 (n + 1) : ℤ))).toNat

end

end A044387.P14210775680807535481

/-! ## A044387.P13246183959088883984

`A007094(A044232(A037442(n+1)))`
-/

namespace A044387.P13246183959088883984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A044232 (A037442 (n + 1)).toNat).toNat

end

end A044387.P13246183959088883984

/-!
# A044388: Numbers n such that string 5,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044388, there is no canonical definition to state claims against.
-/

/-! ## A044388.P15056775272386584642

`record[A044720(n+1)-A044764(A007439(n+1))]`
-/

namespace A044388.P15056775272386584642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) - A044764 (A007439 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044388.P15056775272386584642

/-! ## A044388.P3673636695857351338

`A044389(n+1)-A146927(A146935(n+2))`
-/

namespace A044388.P3673636695857351338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A146927 (A146935 (n + 2)).toNat

end

end A044388.P3673636695857351338

/-! ## A044388.P2801624963293905786

`A044389(n+1)-A103887(A181936(n))`
-/

namespace A044388.P2801624963293905786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A103887 (A181936 n).toNat

end

end A044388.P2801624963293905786

/-!
# A044389: Numbers n such that string 5,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044389, there is no canonical definition to state claims against.
-/

/-! ## A044389.P9753624209266399705

`A044390(n+1)+A044390(n+1)-A151935(n)!-A044771(n+1)`
-/

namespace A044389.P9753624209266399705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044390 (n + 1) + (A044390 (n + 1) - (Nat.factorial (A151935 n).toNat : ℤ)) - A044771 (n + 1)

end

end A044389.P9753624209266399705

/-! ## A044389.P9274381050765123116

`(A044390(n+1)+A044770(n+1)+A151934(n)!)%A044391(n+1)`
-/

namespace A044389.P9274381050765123116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044390 (n + 1) + (A044770 (n + 1) + (Nat.factorial (A151934 n).toNat : ℤ))) (A044391 (n + 1))

end

end A044389.P9274381050765123116

/-! ## A044389.P12732569164835687292

`A057427(A006501(n))+A044769(n+1)`
-/

namespace A044389.P12732569164835687292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A006501 n).toNat + A044769 (n + 1)

end

end A044389.P12732569164835687292

/-! ## A044389.P18114260679111355655

`A057427(A008107(n))+A044769(n+1)`
-/

namespace A044389.P18114260679111355655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008107 n).toNat + A044769 (n + 1)

end

end A044389.P18114260679111355655

/-! ## A044389.P8970068150668654054

`A057427(A008194(n))+A044769(n+1)`
-/

namespace A044389.P8970068150668654054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008194 n).toNat + A044769 (n + 1)

end

end A044389.P8970068150668654054

/-! ## A044389.P15062290351868488631

`A044769(n+1)+A000034(A058198(n+1))`
-/

namespace A044389.P15062290351868488631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044769 (n + 1) + A000034 (A058198 (n + 1)).toNat

end

end A044389.P15062290351868488631

/-! ## A044389.P13352095561198263098

`A057427(A043028(n+1))+A044769(n+1)`
-/

namespace A044389.P13352095561198263098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A043028 (n + 1)).toNat + A044769 (n + 1)

end

end A044389.P13352095561198263098

/-! ## A044389.P8403847728562838423

`A044769(n+1)+A001222(A193934(n+1))`
-/

namespace A044389.P8403847728562838423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044769 (n + 1) + A001222 (A193934 (n + 1)).toNat

end

end A044389.P8403847728562838423

/-! ## A044389.P9376080175151028851

`A044769(n+1)+A001222(A321069(n+1))`
-/

namespace A044389.P9376080175151028851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044769 (n + 1) + A001222 (A321069 (n + 1)).toNat

end

end A044389.P9376080175151028851

/-! ## A044389.P3729556295622027715

`A044769(n+1)+A001222(A238256(n+2))`
-/

namespace A044389.P3729556295622027715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044769 (n + 1) + A001222 (A238256 (n + 2)).toNat

end

end A044389.P3729556295622027715

/-!
# A044390: Numbers n such that string 5,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044390, there is no canonical definition to state claims against.
-/

/-! ## A044390.P16786493679867940901

`A044770(1+n)+A151934(n)!`
-/

namespace A044390.P16786493679867940901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (1 + n) + (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044390.P16786493679867940901

/-! ## A044390.P2448328758908972282

`A044770(1+n)+A151935(n)!`
-/

namespace A044390.P2448328758908972282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (1 + n) + (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044390.P2448328758908972282

/-! ## A044390.P3389568477486988013

`A044770(n+1)+A000793(A151935(n))`
-/

namespace A044390.P3389568477486988013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A000793 (A151935 n).toNat

end

end A044390.P3389568477486988013

/-! ## A044390.P8762131597466964577

`A044770(1+n)+A000108(A151934(n)²)`
-/

namespace A044390.P8762131597466964577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (1 + n) + A000108 (A151934 n ^ 2).toNat

end

end A044390.P8762131597466964577

/-! ## A044390.P12526067020998048365

`A044770(n+1)+A000108(A151935(n)²)`
-/

namespace A044390.P12526067020998048365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A000108 (A151935 n ^ 2).toNat

end

end A044390.P12526067020998048365

/-! ## A044390.P13838421716369889285

`A044770(n+1)+A000110(A151934(n)²)`
-/

namespace A044390.P13838421716369889285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A000110 (A151934 n ^ 2).toNat

end

end A044390.P13838421716369889285

/-! ## A044390.P16544585850153041764

`A044770(n+1)+A000142(A151935(n)²)`
-/

namespace A044390.P16544585850153041764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A000142 (A151935 n ^ 2).toNat

end

end A044390.P16544585850153041764

/-! ## A044390.P8382754340219765230

`A044770(n+1)+A000272(A151935(n)²)`
-/

namespace A044390.P8382754340219765230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A000272 (A151935 n ^ 2).toNat

end

end A044390.P8382754340219765230

/-! ## A044390.P1826007469618004176

`A044770(n+1)+A001147(A151935(n)²)`
-/

namespace A044390.P1826007469618004176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A001147 (A151935 n ^ 2).toNat

end

end A044390.P1826007469618004176

/-! ## A044390.P343401600707860895

`A044770(n+1)+A007318(A151935(n)²)`
-/

namespace A044390.P343401600707860895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044770 (n + 1) + A007318 (A151935 n ^ 2).toNat

end

end A044390.P343401600707860895

/-!
# A044391: Numbers n such that string 5,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044391, there is no canonical definition to state claims against.
-/

/-! ## A044391.P15236001891471242305

`A054977(A008259(n))+A044771(n+1)`
-/

namespace A044391.P15236001891471242305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008259 n).toNat + A044771 (n + 1)

end

end A044391.P15236001891471242305

/-! ## A044391.P3724226733936484955

`A057427(A008205(n))+A044771(n+1)`
-/

namespace A044391.P3724226733936484955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008205 n).toNat + A044771 (n + 1)

end

end A044391.P3724226733936484955

/-! ## A044391.P16543956543474524438

`A054977(A014413(1+n))+A044771(n+1)`
-/

namespace A044391.P16543956543474524438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A014413 (1 + n)).toNat + A044771 (n + 1)

end

end A044391.P16543956543474524438

/-! ## A044391.P14062937299454579116

`A044771(n+1)+A001222(A110028(n+1))`
-/

namespace A044391.P14062937299454579116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044771 (n + 1) + A001222 (A110028 (n + 1)).toNat

end

end A044391.P14062937299454579116

/-! ## A044391.P5475909811181934922

`A054977(A085735(n+1))+A044771(n+1)`
-/

namespace A044391.P5475909811181934922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A085735 (n + 1)).toNat + A044771 (n + 1)

end

end A044391.P5475909811181934922

/-! ## A044391.P5273624335392925646

`A044771(n+1)+A001222(A196924(n+1))`
-/

namespace A044391.P5273624335392925646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044771 (n + 1) + A001222 (A196924 (n + 1)).toNat

end

end A044391.P5273624335392925646

/-! ## A044391.P909617807606537283

`A044771(n+1)+A001222(A245396(n+1))`
-/

namespace A044391.P909617807606537283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044771 (n + 1) + A001222 (A245396 (n + 1)).toNat

end

end A044391.P909617807606537283

/-! ## A044391.P6343761107794427251

`A044771(n+1)+A014963(A343281(n+1))`
-/

namespace A044391.P6343761107794427251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044771 (n + 1) + A014963 (A343281 (n + 1)).toNat

end

end A044391.P6343761107794427251

/-!
# A044392: Numbers n such that string 6,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044392, there is no canonical definition to state claims against.
-/

/-! ## A044392.P3488255852729869427

`∩[A043221(n+1), A310238(n)]`
-/

namespace A044392.P3488255852729869427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044392.P3488255852729869427

/-! ## A044392.P13078151652830190644

`filter[A043221(1+n), A011765(#)]`
-/

namespace A044392.P13078151652830190644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044392.P13078151652830190644

/-! ## A044392.P13518138809656306931

`filter[A043221(1+n), A014577(#)]`
-/

namespace A044392.P13518138809656306931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A044392.P13518138809656306931

/-! ## A044392.P5756276758277536631

`filter[A043221(n+1), A106665(#)]`
-/

namespace A044392.P5756276758277536631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A044392.P5756276758277536631

/-! ## A044392.P16493533974665617177

`filter[A043221(n+1), A133872(#)]`
-/

namespace A044392.P16493533974665617177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A044392.P16493533974665617177

/-! ## A044392.P14885609678697727546

`filter[A043221(n+1), A198517(#)]`
-/

namespace A044392.P14885609678697727546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044392.P14885609678697727546

/-! ## A044392.P3325668200199489826

`filter[A043221(n+1), A232990(#)]`
-/

namespace A044392.P3325668200199489826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044392.P3325668200199489826

/-! ## A044392.P13182381766996675941

`filter[A043221(n+1), A262808(#)]`
-/

namespace A044392.P13182381766996675941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A044392.P13182381766996675941

/-! ## A044392.P8651803324640040764

`filter[A043221(n+1), A305994(#)]`
-/

namespace A044392.P8651803324640040764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A044392.P8651803324640040764

/-! ## A044392.P16448088630234020877

`filter[A043221(n+1), A359379(#)]`
-/

namespace A044392.P16448088630234020877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A044392.P16448088630234020877

/-!
# A044393: Numbers n such that string 6,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044393, there is no canonical definition to state claims against.
-/

/-! ## A044393.P3985466215833751334

`A054977(∑[1+2*T(n-1,k)])+A044773(n+1)` with `a(0)=1`
-/

namespace A044393.P3985466215833751334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + 2 * SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j) + A044773 (n + 1)

end

end A044393.P3985466215833751334

/-! ## A044393.P11547474961689244780

`A054977(A085684(n))+A044773(n+1)`
-/

namespace A044393.P11547474961689244780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A085684 n).toNat + A044773 (n + 1)

end

end A044393.P11547474961689244780

/-! ## A044393.P9706151294919882304

`A044773(1+n)+A014963(A013593(n+1))`
-/

namespace A044393.P9706151294919882304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (1 + n) + A014963 (A013593 (n + 1)).toNat

end

end A044393.P9706151294919882304

/-! ## A044393.P13749885470919382744

`A044773(n+1)+A037291(A014963(n+1))`
-/

namespace A044393.P13749885470919382744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1) + A037291 (A014963 (n + 1)).toNat

end

end A044393.P13749885470919382744

/-! ## A044393.P4937593981233849639

`A044773(n+1)+A037291(A020639(n+1))`
-/

namespace A044393.P4937593981233849639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1) + A037291 (A020639 (n + 1)).toNat

end

end A044393.P4937593981233849639

/-! ## A044393.P1770498587855384865

`A054977(A050025(n+1))+A044773(n+1)`
-/

namespace A044393.P1770498587855384865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A050025 (n + 1)).toNat + A044773 (n + 1)

end

end A044393.P1770498587855384865

/-! ## A044393.P1388470229029750991

`A044773(n+1)+A037291(A099636(n+1))`
-/

namespace A044393.P1388470229029750991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1) + A037291 (A099636 (n + 1)).toNat

end

end A044393.P1388470229029750991

/-! ## A044393.P11912204037517596619

`A044773(n+1)+A001222(A173230(n+1))`
-/

namespace A044393.P11912204037517596619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1) + A001222 (A173230 (n + 1)).toNat

end

end A044393.P11912204037517596619

/-! ## A044393.P9671948918912202239

`A054977(A145605(n+1))+A044773(n+1)`
-/

namespace A044393.P9671948918912202239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A145605 (n + 1)).toNat + A044773 (n + 1)

end

end A044393.P9671948918912202239

/-! ## A044393.P15710924645331348328

`A044773(n+1)+A001222(A327348(n+1))`
-/

namespace A044393.P15710924645331348328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044773 (n + 1) + A001222 (A327348 (n + 1)).toNat

end

end A044393.P15710924645331348328

/-!
# A044394: Numbers n such that string 6,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044394, there is no canonical definition to state claims against.
-/

/-! ## A044394.P3072766636916462662

`A044774(1+n)+A040029(A078724(n))`
-/

namespace A044394.P3072766636916462662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044774 (1 + n) + A040029 (A078724 n).toNat

end

end A044394.P3072766636916462662

/-! ## A044394.P18254833456222545148

`A054977(A301109(n))+A044774(n+1)`
-/

namespace A044394.P18254833456222545148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A301109 n).toNat + A044774 (n + 1)

end

end A044394.P18254833456222545148

/-! ## A044394.P14015392236983481912

`A054977(A002157(n+1))+A044774(n+1)`
-/

namespace A044394.P14015392236983481912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A002157 (n + 1)).toNat + A044774 (n + 1)

end

end A044394.P14015392236983481912

/-! ## A044394.P16815338199289996581

`A044774(n+1)+A005131(A057780(n+1))`
-/

namespace A044394.P16815338199289996581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044774 (n + 1) + A005131 (A057780 (n + 1)).toNat

end

end A044394.P16815338199289996581

/-! ## A044394.P760649362142789846

`A044774(n+1)+A001222(A088213(n+1))`
-/

namespace A044394.P760649362142789846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044774 (n + 1) + A001222 (A088213 (n + 1)).toNat

end

end A044394.P760649362142789846

/-! ## A044394.P9390645468075964431

`A082061(A082077(n+1))+A044774(n+1)`
-/

namespace A044394.P9390645468075964431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A082077 (n + 1)).toNat + A044774 (n + 1)

end

end A044394.P9390645468075964431

/-! ## A044394.P6305973911056575523

`A054977(A302309(n+1))+A044774(n+1)`
-/

namespace A044394.P6305973911056575523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A302309 (n + 1)).toNat + A044774 (n + 1)

end

end A044394.P6305973911056575523

/-! ## A044394.P18433049843071882345

`A057427(A325118(n+1))+A044774(n+1)`
-/

namespace A044394.P18433049843071882345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A325118 (n + 1)).toNat + A044774 (n + 1)

end

end A044394.P18433049843071882345

/-! ## A044394.P2447154351040035670

`A044774(n+1)+A001222(A260553(n+1))`
-/

namespace A044394.P2447154351040035670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044774 (n + 1) + A001222 (A260553 (n + 1)).toNat

end

end A044394.P2447154351040035670

/-! ## A044394.P15535554591646599484

`A008619(2*A044774(n+1))`
-/

namespace A044394.P15535554591646599484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A044774 (n + 1)).toNat

end

end A044394.P15535554591646599484

/-!
# A044395: Numbers n such that string 6,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044395, there is no canonical definition to state claims against.
-/

/-! ## A044395.P4601334922858728427

`A054977(4*∑[n+3])+A044775(n+1)`
-/

namespace A044395.P4601334922858728427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)) + A044775 (n + 1)

end

end A044395.P4601334922858728427

/-! ## A044395.P3432719156132198859

`A044775(n+1)+A023532(p?[(n+1)²%12+20*n])`
-/

namespace A044395.P3432719156132198859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 12 + 20 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044775 (n + 1) + A023532 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A044395.P3432719156132198859

/-! ## A044395.P986663799434877246

`A044775(n+1)+A001222(A087731(n))`
-/

namespace A044395.P986663799434877246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044775 (n + 1) + A001222 (A087731 n).toNat

end

end A044395.P986663799434877246

/-! ## A044395.P10072145904651530212

`A044775(n+1)+A005171(A023551(n+1))`
-/

namespace A044395.P10072145904651530212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044775 (n + 1) + A005171 (A023551 (n + 1)).toNat

end

end A044395.P10072145904651530212

/-! ## A044395.P10004877767697062616

`A044775(n+1)+A000035(A107213(n+1))`
-/

namespace A044395.P10004877767697062616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044775 (n + 1) + A000035 (A107213 (n + 1)).toNat

end

end A044395.P10004877767697062616

/-! ## A044395.P4823117866342616860

`A044775(n+1)+A020500(A200070(n+1))`
-/

namespace A044395.P4823117866342616860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044775 (n + 1) + A020500 (A200070 (n + 1)).toNat

end

end A044395.P4823117866342616860

/-!
# A044396: Numbers n such that string 6,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044396, there is no canonical definition to state claims against.
-/

/-! ## A044396.P3756074634429308244

`A054977((∑{d}[n+3, #-1]-n)²)+A044776(n+1)`
-/

namespace A044396.P3756074634429308244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ)) ^ 2).toNat + A044776 (n + 1)

end

end A044396.P3756074634429308244

/-! ## A044396.P11110175579685232427

`A054977(A008000(n))+A044776(n+1)`
-/

namespace A044396.P11110175579685232427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008000 n).toNat + A044776 (n + 1)

end

end A044396.P11110175579685232427

/-! ## A044396.P3781373891990008272

`A054977(A009891(n))+A044776(n+1)`
-/

namespace A044396.P3781373891990008272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A009891 n).toNat + A044776 (n + 1)

end

end A044396.P3781373891990008272

/-! ## A044396.P7957049671948550730

`A054977(A136218(n))+A044776(n+1)`
-/

namespace A044396.P7957049671948550730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A136218 n).toNat + A044776 (n + 1)

end

end A044396.P7957049671948550730

/-! ## A044396.P3597518288290823568

`A044776(n+1)+A038712(A268581(n))`
-/

namespace A044396.P3597518288290823568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044776 (n + 1) + A038712 (A268581 n).toNat

end

end A044396.P3597518288290823568

/-! ## A044396.P2418397871799369680

`A054977(A035372(n+1))+A044776(n+1)`
-/

namespace A044396.P2418397871799369680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A035372 (n + 1)).toNat + A044776 (n + 1)

end

end A044396.P2418397871799369680

/-! ## A044396.P4293542837425091880

`A054977(A008255(n))+A044776(n+1)`
-/

namespace A044396.P4293542837425091880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A008255 n).toNat + A044776 (n + 1)

end

end A044396.P4293542837425091880

/-! ## A044396.P12861073949680952916

`A060576(A007504(n))+A044776(n+1)`
-/

namespace A044396.P12861073949680952916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A007504 n).toNat + A044776 (n + 1)

end

end A044396.P12861073949680952916

/-! ## A044396.P18182913557735855977

`A044776(n+1)+A001222(A201712(n+1))`
-/

namespace A044396.P18182913557735855977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044776 (n + 1) + A001222 (A201712 (n + 1)).toNat

end

end A044396.P18182913557735855977

/-!
# A044397: Numbers n such that string 6,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044397, there is no canonical definition to state claims against.
-/

/-! ## A044397.P15843664234607455142

`A057427(2*(n+1)²)+A044777(n+1)`
-/

namespace A044397.P15843664234607455142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1) ^ 2) + A044777 (n + 1)

end

end A044397.P15843664234607455142

/-! ## A044397.P7756006955475362175

`A044777(1+n)+A005171(A008459(n))`
-/

namespace A044397.P7756006955475362175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044777 (1 + n) + A005171 (A008459 n).toNat

end

end A044397.P7756006955475362175

/-! ## A044397.P16201722521844139963

`A122431(A014106(n))+A044777(n+1)`
-/

namespace A044397.P16201722521844139963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122431 (A014106 n).toNat + A044777 (n + 1)

end

end A044397.P16201722521844139963

/-! ## A044397.P13828175585936368192

`A044777(n+1)-A057428(A301039(n))`
-/

namespace A044397.P13828175585936368192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044777 (n + 1) - A057428 (A301039 n).toNat

end

end A044397.P13828175585936368192

/-! ## A044397.P9268530706477657497

`A044777(n+1)+A007318(A248580(n+1))`
-/

namespace A044397.P9268530706477657497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044777 (n + 1) + A007318 (A248580 (n + 1)).toNat

end

end A044397.P9268530706477657497

/-! ## A044397.P6549863557753032557

`A054977(A044778(2*(n+1)))+A044777(n+1)`
-/

namespace A044397.P6549863557753032557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A044778 (2 * (n + 1))).toNat + A044777 (n + 1)

end

end A044397.P6549863557753032557

/-!
# A044398: Numbers n such that string 6,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044398, there is no canonical definition to state claims against.
-/

/-! ## A044398.P603207586020992446

`record[Δ[A175676(A044810(n+1)+1)]]`
-/

namespace A044398.P603207586020992446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044810 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044398.P603207586020992446

/-! ## A044398.P7690634111775708290

`A044778(n+1)+A000120(A004171(n))`
-/

namespace A044398.P7690634111775708290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044778 (n + 1) + A000120 (A004171 n).toNat

end

end A044398.P7690634111775708290

/-! ## A044398.P11959431813206096260

`A044778(n+1)+A026492(A052845(n))`
-/

namespace A044398.P11959431813206096260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044778 (n + 1) + A026492 (A052845 n).toNat

end

end A044398.P11959431813206096260

/-!
# A044399: Numbers n such that string 6,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044399, there is no canonical definition to state claims against.
-/

/-! ## A044399.P6082556267702314149

`A233583(A044401(n+1))-A337335(A000082(n+1))`
-/

namespace A044399.P6082556267702314149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044401 (n + 1)).toNat - A337335 (A000082 (n + 1)).toNat

end

end A044399.P6082556267702314149

/-! ## A044399.P13544796413979240465

`A043255(xor(A005408(n), A172536(n+1)))`
-/

namespace A044399.P13544796413979240465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043255 (Int.xor (A005408 n) (A172536 (n + 1))).toNat

end

end A044399.P13544796413979240465

/-! ## A044399.P7507113414172739049

`A043255(xor(A005408(n), A172551(n+1)))`
-/

namespace A044399.P7507113414172739049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043255 (Int.xor (A005408 n) (A172551 (n + 1))).toNat

end

end A044399.P7507113414172739049

